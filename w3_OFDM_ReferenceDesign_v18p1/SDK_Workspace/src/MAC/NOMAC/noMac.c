/*! \file noMac.c
 \brief No Medium Access Control Workshop MAC.

 @version 18.0
 @author Chris Hunter & Patrick Murphy

 The easiest MAC. Forwards all traffic from
 Ethernet to the radio medium and vice versa.
 No address filtering... no retransmissions.
 Medium access is completely dependent on
 the source traffic, so there is no actual
 medium access control. Hence, we have noMac.

 Note to workshop users: any names in quotes
 are names that can be searched for in the
 WARP API.

*/


#include "xparameters.h"
#include "warpmac.h"
#include "warpphy.h"
#include "noMac.h"
#include "stdio.h"
#include "warp_hw_ver.h"

///Macframe struct to represent received wireless packets
Macframe rxFrame;

///Indices of Rx/Tx packet buffers in the PHY
unsigned char pktBufInd_rx;
unsigned char pktBufInd_tx;

///@brief Callback for the reception of data frames from the higher network layer
///
///This function is called by the WARPMAC framework when a new payload is available
/// for wireless transmission. New payloads can either arrive via Ethernet (for
/// externally generated traffic) or via dummy packet mode (for internally generated
/// traffic). Before calling this function, WARPMAC has already copied the payload
/// to the PHY packet buffer previously specified by warpmac_setPHYTxBuffer().
///@param length Length, in bytes, of received Ethernet frame
///@param payload Memory address of first byte in the payload
void dataFromNetworkLayer_callback(Xuint32 length, char* payload)
{

//WORKSHOP PSEUDOCODE:
//1) Instantiate a "Macframe" struct to hold a packet header
//2) Setup the wireless packet header by setting fields in the Macframe.header struct:
//     2.1) length (set to length argument passed to this function)
//     2.2) fullRate (set to HDR_FULLRATE_QPSK or HDR_FULLRATE_QAM_16 for QPSK/16QAM payload modulation)
//     2.3) codeRate (set to HDR_CODE_RATE_12 or HDR_CODE_RATE_34 for 1/2 or 3/4 rate payload coding)
//5) Copy the header over the the PHY Tx buffer using the "warpmac_prepPhyForXmit" function.
//6) Initiate the PHY transmission using the "warpmac_startPhyXmit" function.
//7) Wait for the PHY transmitter to finish and re-enable the receiver by using the "warpmac_finishPhyXmit" function.

//Note: You may be wondering why the act of transmitting is broken up into three function calls (5,6,7 of pseudocode above).
//In this simple exercise, it seems a bit unnecessary. However, the reason for this division will become clear in later labs.

/**********************USER CODE STARTS HERE***************************/
	//Buffer for holding a packet-to-xmit
	Macframe txFrame;

	//Set the length field in the header
	txFrame.header.length = length;

	//Set the modulation scheme for the packet's full-rate symbols
	txFrame.header.fullRate = HDR_FULLRATE_QPSK;
	//txFrame.header.fullRate = HDR_FULLRATE_QAM_16;

	//Set the payload coding rate
	//txFrame.header.codeRate = HDR_CODE_RATE_NONE;
	//txFrame.header.codeRate = HDR_CODE_RATE_12;
	//txFrame.header.codeRate = HDR_CODE_RATE_23;
	txFrame.header.codeRate = HDR_CODE_RATE_34;

	//Copy the header over to packet buffer 1
	warpmac_prepPhyForXmit(&txFrame, pktBufInd_tx);

	//Send packet buffer pktBuf_tx
	warpmac_startPhyXmit(pktBufInd_tx);

	//Wait for it to finish and enable the receiver
	warpmac_finishPhyXmit();
/**********************USER CODE ENDS HERE***************************/
	return;
}

///@brief Callback for the reception of bad wireless headers
void phyRx_badHeader_callback()
{
	//Blink the bottom user LEDs on reception of a bad header
	warpmac_incrementLEDLow();
	
	return;
}

///@brief Callback for the reception of good wireless headers
///
///The WARPMAC framework calls this function after the PHY receives an error-free wireless header
/// If the packet also has a payload, this function must poll the PHY until the payload status (good/bad)
/// is determined.
///If the payload is error-free, it is transmitted over Ethernet, completing the wired-wireless-wired bridge
///@param packet Pointer to received Macframe
int phyRx_goodHeader_callback(Macframe* packet)
{

	//Initialize the Rx pkt state variable
	unsigned char state = PHYRXSTATUS_INCOMPLETE;

	//Poll the PHY; blocks until the PHY declares the payload good or bad
	state = warpmac_finishPhyRecv();

	if(state & PHYRXSTATUS_GOOD)
	{
		//If the received packet has no errors, send it (minus the wireless header) via Ethernet
		
		//Starts the DMA transfer of the payload into the EMAC
		// warpphy_getBuffAddr(N) returns the physical address of PHY packet buffer N
		warpmac_prepPktToNetwork((void *)warpphy_getBuffAddr(pktBufInd_rx)+NUM_HEADER_BYTES, (packet->header.length));

		//Waits until the DMA transfer is complete, then starts the EMAC
		warpmac_startPktToNetwork(packet->header.length);

		//Toggle the top user LEDs
		warpmac_incrementLEDHigh();
	}

	if(state & PHYRXSTATUS_BAD)
	{
		//If the received packet has errors, drop it (i.e. don't send it via Ethernet)

		//Toggle the bottom user LEDs
		warpmac_incrementLEDLow();
	}

	//Return 0, indicating this function did not clear the PHY status bits; WARPMAC will handle this
	return 0;
}

void rightButton() {
	//The WARPMAC framework will call this fuction when the RIGHT button is pushed
	return;
}

void upButton() {
	//The WARPMAC framework will call this fuction when the UP button is pushed
	return;
}

///@brief Main function
///
///This function configures & initializes WARPMAC, assigns user-level callbacks then loops forever.
int main()
{
	print("\fReference Design v18 NOMAC\r\n");

	//Assign Tx/Rx to packet buffers in the PHY
	pktBufInd_rx = 1;
	pktBufInd_tx = 2;

	//Initialize the framework
	// This function sets safe defaults for many parameters in the MAC/PHY frameworks
	// Many of these can be changed with other warpmac_ and warpphy_ calls
	//  or by customizing the warpmac.c/warpphy.c source
	warpmac_init();

	//Choose the antnenna mode
	warpphy_setAntennaMode(TX_ANTMODE_SISO_ANTA, RX_ANTMODE_SISO_ANTA);
	//warpphy_setAntennaMode(TX_ANTMODE_ALAMOUTI_ANTA, RX_ANTMODE_ALAMOUTI_ANTA);
	//warpphy_setAntennaMode(TX_ANTMODE_MULTPLX, RX_ANTMODE_MULTPLX);

	//Rx buffer is where the PHY will write received payloads,
	// and the EMAC will read packets for transmission via Ethernet
	warpmac_setRxBuffers(&rxFrame, pktBufInd_rx);

	//EMACRxBuffer is where incoming Ethernet packets will be written
	warpmac_setEMACRxBuffer(pktBufInd_tx);

	//PHYTxBuffer is the buffer from which the PHY will read packets for wireless transmission
	warpmac_setPHYTxBuffer(pktBufInd_tx);

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

	warpphy_setChannel(GHZ_2, 11);

	//Assign the user-level callbacks
	warpmac_setCallback(EVENT_DATAFROMNETWORK, (void *)dataFromNetworkLayer_callback);
	warpmac_setCallback(EVENT_PHYGOODHEADER, (void *)phyRx_goodHeader_callback);
	warpmac_setCallback(EVENT_PHYBADHEADER, (void *)phyRx_badHeader_callback);
	warpmac_setCallback(EVENT_RIGHTBUTTON, (void *)rightButton);
	warpmac_setCallback(EVENT_UPBUTTON, (void *)upButton);
	

	//Enable calls to our dataFromnetworkLayer callback (to start receiving Ethernet payloads)
	warpmac_enableDataFromNetwork();

	//Enable dummy packet mode (Ethernet will be ignored, packets will be generated/transmitted locally)
	warpmac_setDummyPacketMode(warpmac_getMyId());
	warpmac_startPacketGeneration(1400, 500000);

	//Poll the timer, PHY and user I/O forever; actual processing will happen via callbacks above
	while(1)
	{
		warpmac_pollPeripherals();
	}

	return 0;
}
