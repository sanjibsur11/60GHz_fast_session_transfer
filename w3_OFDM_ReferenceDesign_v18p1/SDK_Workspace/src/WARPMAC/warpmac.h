/*! \file warpmac.h
\brief Header file for the WARPMAC Framework.

@version 16.1
@author Chris Hunter and Patrick Murphy

This header file contains the macros, function prototypes, and typedefs required for WARPMAC.
*/

/*! \mainpage WARP APIs
* @version Used with Reference Design v16.1
*
* \section change_sec CHANGELOG
* http://warp.rice.edu/trac/wiki/OFDMReferenceDesign/Changelog
*
* \section intro_sec Introduction
*
* This document is the collective API for WARPMAC (the MAC design framework),
* WARPPHY (the PHY driver/interface), the radio controller driver and CSMAMAC (the carrier-sensing random access
* reference design).
*
* \section start_sec Getting Started
*
* Obtain the latest reference design: http://warp.rice.edu/trac/wiki/OFDMReferenceDesign .
* In addition to being in the repository, all the source code for WARPMAC is available in
* the reference design project and is configured to compile "as-is."
*
* \section licence_sec License
* http://warp.rice.edu/license/
*
*/

#ifndef WARPMAC_H
#define WARPMAC_H

#include "xstatus.h"
#include "warpphy.h"
#include "warp_hw_ver.h"

//Define which radios get used below
//RADIOx_ADDR are defined by the radio controller driver
//Address of the first radio
#define FIRST_RADIO RADIO1_ADDR
//Address of the second radio
#define SECOND_RADIO RADIO2_ADDR

//Helper macros for constructing headers
#define htons(A) ((((Xuint16)(A) & 0xff00) >> 8) | (((Xuint16)(A) & 0x00ff) << 8))
#define NODEID_TO_ADDR(theID)	( theID & 0xFFFF )
#define ADDR_TO_NODEID(theAddr)	( theAddr & 0xFFFF )

#define MY_XEM_MAX_FRAME_SIZE 2000

//Masks for supported modulation schemes; equivalent to number of bits per symbol
#define BPSK	1
#define QPSK	2
#define QAM_16	4
#define QAM_64	6

//Constants used for packet headers specifying full-rate modulation per-packet
// This constant fills in an 8-bit field in the header
// Each 4-bit nibble corresponds to an antenna
#define HDR_FULLRATE_BPSK		(BPSK | (BPSK<<4))
#define HDR_FULLRATE_QPSK		(QPSK | (QPSK<<4))
#define HDR_FULLRATE_QAM_16	(QAM_16 | (QAM_16<<4))
#define HDR_FULLRATE_QAM_64	(QAM_64 | (QAM_64<<4))

//2.4 GHz Band
#define GHZ_2 1
//5 GHz Band
#define GHZ_5 0

//Shortcuts for xparameters.h constants
// Device IDs
#define DMA_CTRL_DEVICE_ID		XPAR_DMACENTRAL_0_DEVICE_ID

//Average RSSI threshold for carrier sensing
#define THRESH_CARRIER_SENSE 5000

//Event ID's for callback registration
#define EVENT_UPBUTTON			1
#define EVENT_LEFTBUTTON		2
#define EVENT_RIGHTBUTTON		3
#define EVENT_MIDDLEBUTTON		4
#define EVENT_TIMER				5
#define EVENT_DATAFROMNETWORK	6
#define EVENT_MGMTPKT			7
#define EVENT_PHYGOODHEADER		8
#define EVENT_PHYBADHEADER		9
#define EVENT_UARTRX			10

//The number of bytes in the header must be fixed and known by every node ahead of time
// It also must occupy an integral number of OFDM symbols (i.e. the base-rate symbols)
#define NUM_HEADER_BYTES 24

#define NUM_PAYLOAD_CRC_BYTES	4
//#define NUM_PAYLOAD_TAIL_BYTES	1 //Use for coded PHY
#define NUM_PAYLOAD_TAIL_BYTES	0	//Use for uncoded PHY

//Assign IDs for various timers
#define TIMEOUT_TIMER	0
#define BACKOFF_TIMER	1
#define USER_TIMER_A	2
#define USER_TIMER_B	3
#define USER_TIMER_C	4
#define USER_TIMER_D	5
#define USERIO_TIMER	6
#define PKTGEN_TIMER	7

//Enable polling of timers that are actually used (6-7 are always enabled)
#define POLL_TIMER0
#define POLL_TIMER1
#define POLL_TIMER2
#define POLL_TIMER3
#define POLL_TIMER4
#define POLL_TIMER5

//Number of clock cycles in 1us (X for XMHz PLB hosting the timer core)
#define TIMERCLK_CYCLES_PER_USEC 80
#define TIMERCLK_CYCLES_PER_MSEC (1000*TIMERCLK_CYCLES_PER_USEC)

//Poll the user I/O every 1 msec
#define USERIO_POLLRATE 1000*TIMERCLK_CYCLES_PER_USEC

///Structure contains the header contents of a packet
typedef struct {
	///Physical layer header struct
	phyHeader header;
} Macframe __attribute__((__aligned__(8)));

///Structure of miscellaneous control bits needed for correct operation of the MAC.
typedef struct {
	///Timeout time of system
	volatile unsigned int timeout;
	///Smallest time interval in system
	volatile unsigned int slotTime;
	///Maximum number of retransmissions before dropping a packet
	volatile unsigned char maxReSend;
	///Maximum contention window index: [0, 2^(maxCW+4)-1]
	volatile unsigned char maxCW;
	///Current contention window index
	volatile unsigned char currentCW;
	///Whether the Emac is currently enabled
	volatile unsigned char enableDataFromNetwork;
	volatile unsigned char pktBuf_phyTx;
	volatile unsigned char pktBuf_phyRx;
	volatile unsigned char pktBuf_emacRx;
	volatile unsigned char dummyPacketMode;

	///Constellation order of the full rate symbols
	volatile unsigned char mod_fullRateA;
	//volatile unsigned char mod_fullRateB;
} Maccontrol;

//Function prototypes
void nullCallback(void* param);
int nullCallback_i(void* param);
void warpmac_init();
inline void warpmac_pollPeripherals();
void warpmac_pollPhy();
inline void warpmac_pollTimer();
inline void warpmac_pollDataSource();
inline void phyRx_goodHeader_handler();
inline void phyRx_badHeader_handler();
void emacRx_handler();
inline void warpmac_waitForDMA();
inline void warpmac_clearTimer(unsigned char theTimer);
inline void warpmac_startTimer(unsigned char theTimer, unsigned char mode);
void warpmac_setTimer(int type);
inline unsigned int randNum(unsigned int N);
inline int warpmac_carrierSense();
inline void warpmac_prepPktToNetwork(void* thePkt, unsigned int length);
inline void warpmac_startPktToNetwork(unsigned int length);
void warpmac_setCallback(int eventID, void(*handler)());
void warpmac_setBaseRate(unsigned char rate);
int warpmac_setAntennaMode(unsigned int txMode, unsigned int rxMode);
void warpmac_prepPhyForXmit(Macframe* packet, unsigned char buffer);
inline void warpmac_startPhyXmit(unsigned char buffer);
void warpmac_finishPhyXmit();
inline void warpmac_setRxBuffers(Macframe* rxFrame, unsigned char phyRxBuff);
inline void warpmac_setPHYTxBuffer(unsigned char txBuff);
inline void warpmac_setEMACRxBuffer(unsigned char emacRxBuff);
int warpmac_decrementRemainingReSend(Macframe* packet);
void warpmac_resetCurrentCW();
inline void warpmac_setMaxResend(unsigned int c);
inline void warpmac_setMaxCW(unsigned int c);
inline void warpmac_setTimeout(unsigned int time);
inline void warpmac_setSlotTime(unsigned int time);
inline int warpmac_inTimeout();
inline int warpmac_inBackoff();
inline void warpmac_setCSMA(char mode);
inline void warpmac_setDebugGPIO(unsigned char val, unsigned char mask);
inline void warpmac_enableDataFromNetwork();
inline void warpmac_disableDataFromNetwork();
inline char warpmac_finishPhyRecv();
void warpmac_uartRecvHandler(void *CallBackRef);
inline void warpmac_setDummyPacketMode(char mode);
void warpmac_startPacketGeneration(unsigned int length, unsigned int interval);
void warpmac_stopPacketGeneration();
int warpmac_getMyId();

void usleep(int d);

inline void printBytes(unsigned char* data, int length);

//**********START***********//
// FPGA Board Specific Code //
//**************************//
void userIO_handler(void *InstancePtr);
void warpmac_incrementLEDLow();
void warpmac_incrementLEDHigh();
void warpmac_leftHex(unsigned char x);
void warpmac_rightHex(unsigned char x);


#ifdef WARP_FPGA_BOARD_V1_2
unsigned char sevenSegmentMap(unsigned char x);

#elif defined WARP_FPGA_BOARD_V2_2
void warpmac_middleHex(unsigned char x);
#endif//ifdef WARP_FPGA_BOARD_V1_2

#ifdef WARP_HW_VER_v3
#include "w3_clock_controller.h"
#include "w3_ad_controller.h"
#include "w3_iic_eeprom.h"
#include "w3_userio.h"
#define RC_BASEADDR XPAR_RADIO_CONTROLLER_0_BASEADDR
#define AD_BASEADDR XPAR_W3_AD_CONTROLLER_0_BASEADDR
#define CLK_BASEADDR XPAR_W3_CLOCK_CONTROLLER_0_BASEADDR
#define EEPROM_BASEADDR XPAR_W3_IIC_EEPROM_0_BASEADDR
#define USERIO_BASEADDR XPAR_W3_USERIO_0_BASEADDR
#endif

#define HTONS(n) (((((unsigned short)(n) & 0xFF)) << 8) | (((unsigned short)(n) & 0xFF00) >> 8))
#define NTOHS(n) (((((unsigned short)(n) & 0xFF)) << 8) | (((unsigned short)(n) & 0xFF00) >> 8))

#define HTONL(n) (((((u32)(n) & 0xFF)) << 24) | \
                  ((((u32)(n) & 0xFF00)) << 8) | \
                  ((((u32)(n) & 0xFF0000)) >> 8) | \
                  ((((u32)(n) & 0xFF000000)) >> 24))

#define NTOHL(n) (((((u32)(n) & 0xFF)) << 24) | \
                  ((((u32)(n) & 0xFF00)) << 8) | \
                  ((((u32)(n) & 0xFF0000)) >> 8) | \
                  ((((u32)(n) & 0xFF000000)) >> 24))

#endif//ifndef WARPMAC_H



