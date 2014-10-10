/*! \file warpnet_example.c
 \brief Example top-level code for using WARPnet to characterize MAC/PHY performance

 @version 18.0_WARPv3_Testing
 @author Chris Hunter & Patrick Murphy

*/

#include "xparameters.h"
#include "warpmac.h"
#include "warpphy.h"
#include "warpnet.h"
#include "warpnet_example.h"
#include "string.h"
#include "stdio.h"

//Lower level includes, for debug/development
#include "util/ofdm_txrx_mimo_regMacros.h"
#include "util/ofdm_agc_mimo_regMacros.h"
#include "warp_hw_ver.h"

///Buffer to hold received packet
Macframe rxFrame;

unsigned char pktBuf_rx;
unsigned char pktBuf_tx;
unsigned char pktBuf_emac_rx;

u32 pktGen_length, pktGen_period;
unsigned char chan;
unsigned char pktFullRate;
unsigned char pktCodeRate;
unsigned char txPower;

unsigned char reportBERviaWarpnet;

unsigned short seqNum;

void processPHYControl(warpnetPHYctrl* phyCtrlStruct);

///Struct for reporting PER via WARPnet
warpnetObservePER perStruct;

///Template Ethernet headers used to construct outgoing WARPnet packets
warpnetEthernetPktHeader txEthPktHeader;
warpnetEthernetPktHeader coprocEthPktHeader;

///Template WARPnet server/group struct, for outgoing WARPnet packets
warpnetControllerGroup groupStruct;

///ID of this node
unsigned short int myID;

///@brief Callback for the reception of data frames from the higher network layer
///
///This function is called by the ethernet MAC drivers
///when a packet is available to send. This function fills
///the Macframe transmit buffer with the packet and sends
///it over the OFDM link.
///@param length Length, in bytes, of received Ethernet frame
///@param payload address of first byte in Ethernet payload.
void dataFromNetworkLayer_callback(Xuint32 length, char* payload)
{

	void* txPktPtr;
	//Buffer for holding a packet-to-xmit
	Macframe txFrame;
	//Set the length field in the header
	txFrame.header.length = length;
	//Set the addresses
	txFrame.header.srcAddr = (unsigned short)myID;
	txFrame.header.destAddr = (unsigned short)((myID+1)%2);
	//Set the modulation scheme for the packet's full-rate symbols
	txFrame.header.fullRate = pktFullRate;
	//Set the payload coding rate
	txFrame.header.codeRate = pktCodeRate;

	//Increment the gloabl sequence number, then copy it to the outgoing header
	seqNum++;
	txFrame.header.seqNum = seqNum;

	//Copy the header over to packet buffer 1
	warpmac_prepPhyForXmit(&txFrame, pktBuf_tx);
	//Send packet buffer pktBuf_tx
	warpmac_startPhyXmit(pktBuf_tx);
	//Wait for it to finish and enable the receiver
	warpmac_finishPhyXmit();

	perStruct.numPkts_tx++;

	if(reportBERviaWarpnet) {
		//Send a copy of the just-transmitted packet to the BER calculating app
		//BER packets are built from:
		// Ethernet header [0:15]
		// MAC/PHY header [0:23] generated above
		// Actual transmitted payload (randomly generated and recorded in the PHY) [0:length-1]
		
		coprocEthPktHeader.pktLength = sizeof(warpnetEthernetPktHeader) + sizeof(phyHeader) + length;
		coprocEthPktHeader.ethType = WARPNET_ETHTYPE_NODE2BER; 
		
		txPktPtr = (void *)warpphy_getBuffAddr(WARPNET_NODE2COPROC_PKTBUFFINDEX);
		memcpy(txPktPtr, &(coprocEthPktHeader), sizeof(warpnetEthernetPktHeader));
		txPktPtr += sizeof(warpnetEthernetPktHeader);
		memcpy(txPktPtr, (void*)&(txFrame.header), sizeof(phyHeader));
		txPktPtr += sizeof(phyHeader);
		
		memcpy(txPktPtr, (void *)(warpphy_getBuffAddr(pktBuf_tx)+sizeof(phyHeader)), length);
		
		warpmac_prepPktToNetwork((void *)warpphy_getBuffAddr(WARPNET_NODE2COPROC_PKTBUFFINDEX), coprocEthPktHeader.pktLength);
		warpmac_startPktToNetwork(coprocEthPktHeader.pktLength);
	}
}

void mgmtFromNetworkLayer_callback(Xuint32 length, char* payload) {
	
	void* rxPktPtr;
	void* txPktPtr;
	
	int i, numRxStructs;
	unsigned char rxSeqNum, theStructID;
	
	//Typed pointers for interpreting received structs
	warpnetEthernetPktHeader* pktHeader;
	warpnetControllerGroup* groupStructCopy;
	warpnetCommand* commandStruct;
	warpnetControl* controlStruct;
	warpnetPHYctrl* phyCtrlStruct;

	warpnetPERreq* perReqPtr;
	
	//Local ACK struct, used to send responses to the server
	warpnetAck ackStruct;
	
	//Interpret the received bytes as an Ethernet packet
	pktHeader = (warpnetEthernetPktHeader*)payload;
	
	if((pktHeader->ethType) != WARPNET_ETHTYPE_SVR2NODE) {
		//Should never happen; all management packets are type WARPNET_ETHTYPE_SVR2NODE
		return;
	}
	
	numRxStructs = pktHeader->numStructs;
	rxSeqNum = pktHeader->seqNum;
	
	//Initialize the rx pointer to the first byte past the Ethernet header
	rxPktPtr = (void*)(payload + sizeof(warpnetEthernetPktHeader));
	
	//Iterate over each pair of warpnetControllerGroup / otherStruct in the server message
	for(i=0; i<numRxStructs; i++) {
		
		if( ( ((int)rxPktPtr) - ((int)payload) ) >= length) {
			xil_printf("Error! Mgmt pktLength too short for numStructs\r\n");
			return;
		}
		
		//Alternate structs (starting with the first) are always warpnetControllerGroup
		groupStructCopy = (warpnetControllerGroup*)rxPktPtr;
		rxPktPtr += sizeof(warpnetControllerGroup);
		
		//Extract the first byte of the actual struct and interpret as the structID
		theStructID = *( (unsigned char *)rxPktPtr );
		//xil_printf("Mgmt Pkt: StructID=0x%x\r\n", theStructID);
		
		switch(theStructID)
		{
			case STRUCTID_COMMAND:
				commandStruct = (warpnetCommand*)rxPktPtr;
				rxPktPtr += sizeof(warpnetCommand);
				
				if((commandStruct->nodeID) == myID) {
					
					//Send an ACK struct back to the server
					ackStruct.structID = STRUCTID_COMMAND_ACK;
					ackStruct.nodeID = myID;
					ackStruct.cmdID = commandStruct->cmdID;
					
					txEthPktHeader.pktLength = sizeof(warpnetEthernetPktHeader) + sizeof(warpnetControllerGroup) + sizeof(warpnetAck);
					txEthPktHeader.numStructs = 1;
					
					//Construct the outgoing Ethernet packet
					txPktPtr = (void *)warpphy_getBuffAddr(WARPNET_NODE2SVR_PKTBUFFINDEX);
					memcpy(txPktPtr, (void *)&(txEthPktHeader), sizeof(warpnetEthernetPktHeader));
					memcpy(txPktPtr+sizeof(warpnetEthernetPktHeader), (void *)groupStructCopy, sizeof(warpnetControllerGroup));
					memcpy(txPktPtr+sizeof(warpnetEthernetPktHeader)+sizeof(warpnetControllerGroup), (void *)&(ackStruct), sizeof(warpnetAck));
					
					//Set the Ethernet packet
					warpmac_prepPktToNetwork(txPktPtr, txEthPktHeader.pktLength);
					warpmac_startPktToNetwork(txEthPktHeader.pktLength);
					
					//Process the received struct
					processCommand(commandStruct);
				}
				break;
				
			case STRUCTID_CONTROL:
				controlStruct = (warpnetControl*)rxPktPtr;
				rxPktPtr += sizeof(warpnetControl);
				
				if((controlStruct->nodeID) == myID) {

					//Send an ACK struct back to the server
					ackStruct.structID = STRUCTID_CONTROL_ACK;
					ackStruct.nodeID = myID;
					
					txEthPktHeader.pktLength = sizeof(warpnetEthernetPktHeader) + sizeof(warpnetControllerGroup) + sizeof(warpnetAck);
					txEthPktHeader.numStructs = 1;
					
					//Construct the outgoing Ethernet packet
					txPktPtr = (void *)warpphy_getBuffAddr(WARPNET_NODE2SVR_PKTBUFFINDEX);
					memcpy(txPktPtr, (void *)&(txEthPktHeader), sizeof(warpnetEthernetPktHeader));
					memcpy(txPktPtr+sizeof(warpnetEthernetPktHeader), (void *)groupStructCopy, sizeof(warpnetControllerGroup));
					memcpy(txPktPtr+sizeof(warpnetEthernetPktHeader)+sizeof(warpnetControllerGroup), (void *)&(ackStruct), sizeof(warpnetAck));
					
					//Set the Ethernet packet
					warpmac_prepPktToNetwork(txPktPtr, txEthPktHeader.pktLength);
					warpmac_startPktToNetwork(txEthPktHeader.pktLength);
					
					//Process the received struct
					processControl(controlStruct);
				}
				break;
			case STRUCTID_OBSERVE_PER_REQ:
				perReqPtr = (warpnetPERreq*)rxPktPtr;
				rxPktPtr += sizeof(warpnetPERreq);
				
				if((perReqPtr->nodeID) == myID) {
					
					//Copy over the request ID to the PER struct (this allows the client to confirm it got the right PER struct reply)
					perStruct.reqNum = (unsigned char)perReqPtr->reqNum;
					
					txEthPktHeader.pktLength = sizeof(warpnetEthernetPktHeader) + sizeof(warpnetControllerGroup) + sizeof(warpnetObservePER);
					txEthPktHeader.numStructs = 1;
					
					//Construct the outgoing Ethernet packet
					txPktPtr = (void *)warpphy_getBuffAddr(WARPNET_NODE2SVR_PKTBUFFINDEX);
					memcpy(txPktPtr, (void *)&(txEthPktHeader), sizeof(warpnetEthernetPktHeader));
					memcpy(txPktPtr+sizeof(warpnetEthernetPktHeader), (void *)groupStructCopy, sizeof(warpnetControllerGroup));
					memcpy(txPktPtr+sizeof(warpnetEthernetPktHeader)+sizeof(warpnetControllerGroup), (void *)&perStruct, sizeof(warpnetObservePER));
					
					//Set the Ethernet packet
					warpmac_prepPktToNetwork(txPktPtr, txEthPktHeader.pktLength);
					warpmac_startPktToNetwork(txEthPktHeader.pktLength);
				}
				break;
			case STRUCTID_PHYCTRL:
				phyCtrlStruct = (warpnetPHYctrl*)rxPktPtr;
				rxPktPtr += sizeof(warpnetPHYctrl);

				if((phyCtrlStruct->nodeID) == myID) {
					//Send an ACK struct back to the server
					ackStruct.structID = STRUCTID_PHYCTRL_ACK;
					ackStruct.nodeID = myID;

					txEthPktHeader.pktLength = sizeof(warpnetEthernetPktHeader) + sizeof(warpnetControllerGroup) + sizeof(warpnetAck);
					txEthPktHeader.numStructs = 1;

					txPktPtr = (void *)warpphy_getBuffAddr(WARPNET_NODE2SVR_PKTBUFFINDEX);
					memcpy(txPktPtr, (void *)&(txEthPktHeader), sizeof(warpnetEthernetPktHeader));
					memcpy(txPktPtr+sizeof(warpnetEthernetPktHeader), (void *)groupStructCopy, sizeof(warpnetControllerGroup));
					memcpy(txPktPtr+sizeof(warpnetEthernetPktHeader)+sizeof(warpnetControllerGroup), (void *)&(ackStruct), sizeof(warpnetAck));

					warpmac_prepPktToNetwork(txPktPtr, txEthPktHeader.pktLength);
					warpmac_startPktToNetwork(txEthPktHeader.pktLength);

					//Process the received struct
					processPHYControl(phyCtrlStruct);
				}
				break;
				
			default:
				//Unrecognized structID; do nothing
				//xil_printf("Unknown structID: 0x%x\r\n", theStructID);
				break;
		}//END switch(theStructID)
	}//END for(0...numStructs-1)
	
	return;
}

void processCommand(warpnetCommand* commandStruct) {
	switch(commandStruct->cmdID) {
		case COMMANDID_STARTTRIAL:
			warpmac_startPacketGeneration(pktGen_length, pktGen_period);
			break;

		case COMMANDID_STOPTRIAL:
			warpmac_stopPacketGeneration();
			break;

		case COMMANDID_RESET_PER:
			perStruct.numPkts_tx = 0;
			perStruct.numPkts_rx_good = 0;
			perStruct.numPkts_rx_goodHdrBadPyld = 0;
			perStruct.numPkts_rx_badHdr = 0;
			break;

		case COMMANDID_ENABLE_BER_TESTING:
			reportBERviaWarpnet = 1;
			break;

		case COMMANDID_DISABLE_BER_TESTING:
			reportBERviaWarpnet = 0;
			break;
			
		default:
			//Unknown command; do nothing
			xil_printf("processCommand: unknown command: 0x%x\r\n", commandStruct->cmdID);
			break;
	}
	
	return;
}

void processControl(warpnetControl* controlStruct) {
	unsigned char newMod, newCode;

	newMod = ((controlStruct->modOrderPayload) & 0xF);
	newCode = ((controlStruct->codeRatePayload) & 0xF);

	pktGen_length = (controlStruct->pktGen_length);
	pktGen_period = (controlStruct->pktGen_period);

	txPower = ((controlStruct->txPower) & 0x3F);
	warpphy_setTxPower(txPower);
	
	chan = controlStruct->channel;

	xil_printf("Ctrl struct: mod=%d, code=%d, hdr=%d, pktLen=%d, pktPeriod=%d, chan=%d\n", newMod, newCode, controlStruct->modOrderHeader, pktGen_length, pktGen_period, chan);

	switch(newMod) {
		case 1: pktFullRate = HDR_FULLRATE_BPSK; break;
		case 2:	pktFullRate = HDR_FULLRATE_QPSK; break;
		case 4:	pktFullRate = HDR_FULLRATE_QAM_16; break;
		case 6:	pktFullRate = HDR_FULLRATE_QAM_64; break;
		default: pktFullRate = HDR_FULLRATE_QPSK; break;
	}
	
	switch(newCode) {
		case HDR_CODE_RATE_12: pktCodeRate = HDR_CODE_RATE_12; break;
		case HDR_CODE_RATE_23: pktCodeRate = HDR_CODE_RATE_23; break;
		case HDR_CODE_RATE_34: pktCodeRate = HDR_CODE_RATE_34; break;
		case HDR_CODE_RATE_NONE: pktCodeRate = HDR_CODE_RATE_NONE; break;
		default: pktCodeRate = HDR_CODE_RATE_NONE; break;
	}
	
	switch(controlStruct->modOrderHeader) {
		case 1: warpmac_setBaseRate(BPSK); break;
		case 2:	warpmac_setBaseRate(QPSK); break;
		default: warpmac_setBaseRate(QPSK); break;
	}
	
	warpphy_setChannel(GHZ_2, chan);
}

///@brief Callback for the reception of bad wireless headers
///
///@param packet Pointer to received Macframe
void phyRx_badHeader_callback()
{
	u32 gains;
	gains = ofdm_txrx_mimo_ReadReg_Rx_Gains(0);
	warpmac_leftHex( (gains>>5) & 0x3);
	//xil_printf("BH %5d %2d %1d\n", ofdm_txrx_mimo_ReadReg_Rx_PktDet_midPktRSSI_antA(), gains&0x1F, (gains>>5)&0x3);

	perStruct.numPkts_rx_badHdr++;

	warpmac_incrementLEDLow();
}

///@brief Callback for the reception of good wireless headers
///
///This function then polls the PHY to determine if the entire packet passes checksum
///thereby triggering the transmission of the received data over Ethernet.
///@param packet Pointer to received Macframe
int phyRx_goodHeader_callback(Macframe* packet)
{
	u32 gains;
	gains = ofdm_txrx_mimo_ReadReg_Rx_Gains(0);
	warpmac_leftHex( (gains>>5) & 0x3);

	//xil_printf("GH %5d %2d %1d\n", ofdm_txrx_mimo_ReadReg_Rx_PktDet_midPktRSSI_antA(), gains&0x1F, (gains>>5)&0x3);

	void* txPktPtr;

	//Initialize the Rx pkt state variable
	unsigned char state = PHYRXSTATUS_INCOMPLETE;

	if(reportBERviaWarpnet) {
		//Send a copy of the just-received packet to the BER calculating app
		//BER packets are built from:
		// Ethernet header [0:15]
		// MAC/PHY header [0:23] generated above
		// Actual transmitted payload (randomly generated and recorded in the PHY) [0:length-1]
		coprocEthPktHeader.pktLength = sizeof(warpnetEthernetPktHeader) + sizeof(phyHeader) + (packet->header.length);
		coprocEthPktHeader.ethType = WARPNET_ETHTYPE_NODE2BER; 
		
		txPktPtr = (void *)warpphy_getBuffAddr(WARPNET_NODE2COPROC_PKTBUFFINDEX);
		memcpy(txPktPtr, &(coprocEthPktHeader), sizeof(warpnetEthernetPktHeader));
		txPktPtr += sizeof(warpnetEthernetPktHeader);
		memcpy(txPktPtr, (void*)&(packet->header), sizeof(phyHeader));
		txPktPtr += sizeof(phyHeader);
	}
	
	//Poll the PHY; blocks until the PHY declares the payload good or bad
	state = warpmac_finishPhyRecv();

	if(state & PHYRXSTATUS_GOOD)
	{
		//We're in dummy packet mode, so we shouldn't copy the received packet to Etherent
		
		//Toggle the top user LEDs
		warpmac_incrementLEDHigh();
		
		perStruct.numPkts_rx_good++;
	}

	if(state & PHYRXSTATUS_BAD)
	{
		//If the received packet has errors, drop it (i.e. don't send it via Ethernet)

		//Toggle the bottom user LEDs
		warpmac_incrementLEDLow();

		perStruct.numPkts_rx_goodHdrBadPyld++;
	}

	//Send the received packet for BER processing
	if(reportBERviaWarpnet) {
		memcpy(txPktPtr, (void *)(warpphy_getBuffAddr(pktBuf_rx)+sizeof(phyHeader)), packet->header.length);
		
		warpmac_prepPktToNetwork((void *)warpphy_getBuffAddr(WARPNET_NODE2COPROC_PKTBUFFINDEX), coprocEthPktHeader.pktLength);
		warpmac_startPktToNetwork(coprocEthPktHeader.pktLength);
	}

	//Return 0, indicating this function did not clear the PHY status bits; WARPMAC will handle this
	return 0;
}

///@brief Main function
///
///This function configures MAC parameters, enables the underlying frameworks, and then loops forever.
int main()
{
	xil_printf("\fWARPNET Example v18.0\r\n");


	//Assign Tx/Rx to packet buffers in the PHY
	pktBuf_rx = 1;
	pktBuf_tx = 2;
	pktBuf_emac_rx = 3;
	
	//Set the center frequency
	chan = 3;
	
	//Initialize the sequence number for outgoing packets
	seqNum = 0;
	
	//Set the default full-rate modulation rate
	pktFullRate = HDR_FULLRATE_QPSK;
	pktCodeRate = HDR_CODE_RATE_34;
	
	//Initialize the framework
	// This function sets safe defaults for many parameters in the MAC/PHY frameworks
	// Many of these can be changed with other warpmac_ and warpphy_ calls
	//  or by customizing the warpmac.c/warpphy.c source
	warpmac_init();

	//Read Dip Switch value from FPGA board.
	//This value will be used as an index into the routing table for other nodes
	myID = (unsigned short int)warpmac_getMyId();
	warpmac_rightHex(myID);
	
	//Choose the antnenna mode
	warpphy_setAntennaMode(TX_ANTMODE_SISO_ANTA, RX_ANTMODE_SISO_ANTA);
	//warpphy_setAntennaMode(TX_ANTMODE_ALAMOUTI_ANTA, RX_ANTMODE_ALAMOUTI_ANTA);
	//warpphy_setAntennaMode(TX_ANTMODE_MULTPLX, RX_ANTMODE_MULTPLX);

	//Rx buffer is where the EMAC will DMA Wireless payloads from
	warpmac_setRxBuffers(&rxFrame, pktBuf_rx);

	//Tx buffer is where the EMAC will DMA Ethernet payloads to
	warpmac_setEMACRxBuffer(pktBuf_emac_rx);
	warpmac_setPHYTxBuffer(pktBuf_tx);

	//Connect the various user-level callbacks
	warpmac_setCallback(EVENT_DATAFROMNETWORK, (void *)dataFromNetworkLayer_callback);
	warpmac_setCallback(EVENT_MGMTPKT, (void *)mgmtFromNetworkLayer_callback);
	warpmac_setCallback(EVENT_PHYGOODHEADER, (void *)phyRx_goodHeader_callback);
	warpmac_setCallback(EVENT_PHYBADHEADER, (void *)phyRx_badHeader_callback);

#ifdef WARP_HW_VER_v3
	//Set the OFDM Rx detection thresholds
	warpphy_setCarrierSenseThresh(4000); //Carrier sense thresh (in [0,16368])
	warpphy_setEnergyDetThresh(6500);		//Min RSSI (in [0,16368])
	warpphy_setAutoCorrDetParams(50, 20);	//Min auto-correlation (UFix8_7) and min energy (UFix16_8)
	warpphy_setLongCorrThresh(10000);		//Min cross-correlation (in [0,45e3])

	//Set the default Tx gain (in [0,63])
	warpphy_setTxPower(50);
#else
	//Set the OFDM Rx detection thresholds (copied from OFDM ref des v17 for now)
	warpphy_setCarrierSenseThresh(12000); //Carrier sense thresh (in [0,16368])
	warpphy_setEnergyDetThresh(7000);		//Min RSSI (in [0,16368])
	warpphy_setAutoCorrDetParams(90, 20);	//Min auto-correlation (UFix8_7) and min energy (UFix16_8)
	warpphy_setLongCorrThresh(8000);		//Min cross-correlation (in [0,45e3])

	//Set the default Tx gain (in [0,63])
	warpphy_setTxPower(55);
#endif

	//Set the default center frequency
	warpphy_setChannel(GHZ_2, 11);

	//Enable dummy packet mode; data packets will only be generated locally
	warpmac_setDummyPacketMode(1);

	//Set safe default dummy packet length/intervals; WARPnet will override these per-experiment
	pktGen_length = 1412;
	pktGen_period = 10000;

	//Enable the OFDM Tx random payload generator (so locally generated packets have some non-zero payloads)
	mimo_ofdmTx_setControlBits(mimo_ofdmTx_getOptions() | (TX_RANDOM_PAYLOAD | TX_CAPTURE_RANDOM_PAYLOAD));

	//Listen for new packets to send (either from Ethernet or local dummy packets)
	warpmac_enableDataFromNetwork();
	
	/*** WARPnet Measurement/Control Setup ***/
	//Fill in the server/group struct with sane defaults
	groupStruct.controllerID = 0;
	groupStruct.controllerGrp = 0;
	groupStruct.access = 1;
	groupStruct.reserved0 = 0;
	
	perStruct.structID = STRUCTID_OBSERVE_PER;
	perStruct.nodeID = myID;
	perStruct.reqNum = 0;
	perStruct.reqType = 0;
	perStruct.numPkts_tx = 0;
	perStruct.numPkts_rx_good = 0;
	perStruct.numPkts_rx_goodHdrBadPyld = 0;
	perStruct.numPkts_rx_badHdr = 0;
	
	//Disable reporting of packets for BER testing (WARPnet may enable at runtime)
	reportBERviaWarpnet = 0;

	//Fill in the Ethernet packet header templates
	txEthPktHeader.ethType = WARPNET_ETHTYPE_NODE2SVR;
	txEthPktHeader.srcAddr[0]=0x00;
	txEthPktHeader.srcAddr[1]=0x50;
	txEthPktHeader.srcAddr[2]=0xC2;
	txEthPktHeader.srcAddr[3]=0x63;
	txEthPktHeader.srcAddr[4]=0x3F;
	txEthPktHeader.srcAddr[5]=0x80+myID;
	
	/****************************** NOTE ********************************/
	/* You should fill in the MAC address of your WARPnet server here! */
	/*******************************************************************/
	txEthPktHeader.dstAddr[0]=0xff;
	txEthPktHeader.dstAddr[1]=0xff;
	txEthPktHeader.dstAddr[2]=0xff;
	txEthPktHeader.dstAddr[3]=0xff;
	txEthPktHeader.dstAddr[4]=0xff;
	txEthPktHeader.dstAddr[5]=0xff;
	txEthPktHeader.numStructs = 1;

	coprocEthPktHeader.ethType = WARPNET_ETHTYPE_NODE2BER;
	coprocEthPktHeader.srcAddr[0]=0x00;
	coprocEthPktHeader.srcAddr[1]=0x50;
	coprocEthPktHeader.srcAddr[2]=0xC2;
	coprocEthPktHeader.srcAddr[3]=0x63;
	coprocEthPktHeader.srcAddr[4]=0x3F;
	coprocEthPktHeader.srcAddr[5]=0x80+myID;

	/****************************** NOTE ********************************/
	/* You should fill in the MAC address of your WARPnet server here! */
	/*******************************************************************/
	coprocEthPktHeader.dstAddr[0]=0xff;
	coprocEthPktHeader.dstAddr[1]=0xff;
	coprocEthPktHeader.dstAddr[2]=0xff;
	coprocEthPktHeader.dstAddr[3]=0xff;
	coprocEthPktHeader.dstAddr[4]=0xff;
	coprocEthPktHeader.dstAddr[5]=0xff;
	coprocEthPktHeader.numStructs = 1;
	
	while(1)
	{
		//Poll the timer, PHY and user I/O forever; actual processing will happen via callbacks above
		warpmac_pollPeripherals();
	}

	return 0;
}

void processPHYControl(warpnetPHYctrl* phyCtrlStruct) {
	//Interpret the PHY control parameters
	//PHYCtrol params:
	//param0: pktDet: AutoCorr corr thresh
	//param1: pktDet: AutoCorr energy thresh
	//param2: pktDet: RSSI thresh
	//param3: Long Corr: Corr thresh
	//param4: AGC: target output power
	//param5: AGC: RSSI thresholds (3 8-bit values)
	//param6: AGC: initial BB gain
	//param7:
	//param8:
	//param9:

	//param0 / param1: (corr thresh as UFix8_7, power thresh as UFix16_8)
	if((phyCtrlStruct->param0) > 0 && (phyCtrlStruct->param1) > 0)
		warpphy_setAutoCorrDetParams(phyCtrlStruct->param0, phyCtrlStruct->param1);

	//param2: RSSI thresh as UFix16_0 (really UFix14_0, since it thresholds sum(RSSI(T-0:T-15))
	if((phyCtrlStruct->param2) > 0)
		warpphy_setEnergyDetThresh(phyCtrlStruct->param2);

	//param3: Min cross-correlation (in [0,45e3])
	if((phyCtrlStruct->param3) > 0)
		warpphy_setLongCorrThresh(phyCtrlStruct->param3);

	//param4: AGC target output power, as Fix8_0
	if((phyCtrlStruct->param4) > 0)
		ofdm_AGC_SetTarget((signed char)(phyCtrlStruct->param4));

	//param5: AGC RSSI-in-dBm thresholds, as 3-byte value (AGC_THRESH_1, AGC_THRESH_2, AGC_THRESH_3)
	//Each byte is UFix8_0 reinterpreted in hardware as Fix8_0 (so -57dB = 0xC7 (dec2hex(256-57)))
	if((phyCtrlStruct->param5) > 0)
		OFDM_AGC_MIMO_WriteReg_Thresholds(0, phyCtrlStruct->param5);

	//param6: AGC RSSI-in-dBm thresholds, as 3-byte value (AGC_THRESH_1, AGC_THRESH_2, AGC_THRESH_3)
	//Each byte is UFix8_0 reinterpreted in hardware as Fix8_0 (so -57dB = 0xC7 (dec2hex(256-57)))
	if((phyCtrlStruct->param6) > 0)
		OFDM_AGC_MIMO_WriteReg_GBB_init(0, (phyCtrlStruct->param6));

	//param7: AGC DCO timing- 4 bytes, each 8-bit counter value threshold: [apply DCO, capt64 capt48, X]
	// default from warphpy.c: 0x463C2C03 (current) or 0x46403003 (old)
	if((phyCtrlStruct->param7) > 0)
		OFDM_AGC_MIMO_WriteReg_DCO_Timing(0, (phyCtrlStruct->param7)); //


	return;
}
