///////////////////////////////////////////////////////////////-*-C-*-
//
// Copyright (c) 2010 Xilinx, Inc.  All rights reserved.
//
// Xilinx, Inc.  XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION
// "AS IS" AS  A COURTESY TO YOU.  BY PROVIDING  THIS DESIGN, CODE, OR
// INFORMATION  AS  ONE   POSSIBLE  IMPLEMENTATION  OF  THIS  FEATURE,
// APPLICATION OR  STANDARD, XILINX  IS MAKING NO  REPRESENTATION THAT
// THIS IMPLEMENTATION  IS FREE FROM  ANY CLAIMS OF  INFRINGEMENT, AND
// YOU ARE  RESPONSIBLE FOR OBTAINING  ANY RIGHTS YOU MAY  REQUIRE FOR
// YOUR  IMPLEMENTATION.   XILINX  EXPRESSLY  DISCLAIMS  ANY  WARRANTY
// WHATSOEVER  WITH RESPECT  TO  THE ADEQUACY  OF THE  IMPLEMENTATION,
// INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR REPRESENTATIONS THAT
// THIS IMPLEMENTATION  IS FREE  FROM CLAIMS OF  INFRINGEMENT, IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
// 
//////////////////////////////////////////////////////////////////////

#include "ofdm_txrx_supermimo_coded_plbw.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xcope.h"

inline xc_status_t xc_ofdm_txrx_supermimo_coded_plbw_create(xc_iface_t **iface, void *config_table)
{
    // set up iface
    *iface = (xc_iface_t *) config_table;

#ifdef XC_DEBUG
    OFDM_TXRX_SUPERMIMO_CODED_PLBW_Config *_config_table = config_table;

    if (_config_table->xc_create == NULL) {
        print("config_table.xc_create == NULL\r\n");
        exit(1);
    }
#endif

    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_ofdm_txrx_supermimo_coded_plbw_release(xc_iface_t **iface) 
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_ofdm_txrx_supermimo_coded_plbw_open(xc_iface_t *iface)
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_ofdm_txrx_supermimo_coded_plbw_close(xc_iface_t *iface)
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_ofdm_txrx_supermimo_coded_plbw_read(xc_iface_t *iface, xc_r_addr_t addr, uint32_t *value)
{
    *value = Xil_In32((uint32_t *) addr);
    return XC_SUCCESS;
}

inline xc_status_t xc_ofdm_txrx_supermimo_coded_plbw_write(xc_iface_t *iface, xc_w_addr_t addr, const uint32_t value)
{
    Xil_Out32((uint32_t *) addr, value);
    return XC_SUCCESS;
}

xc_status_t xc_ofdm_txrx_supermimo_coded_plbw_getshmem(xc_iface_t *iface, const char *name, void **shmem)
{
    OFDM_TXRX_SUPERMIMO_CODED_PLBW_Config *_config_table = (OFDM_TXRX_SUPERMIMO_CODED_PLBW_Config *) iface;

    if (strcmp("midPacketRSSI", name) == 0) {
        *shmem = (void *) & _config_table->midPacketRSSI;
    } else if (strcmp("Tx_PktRunning", name) == 0) {
        *shmem = (void *) & _config_table->Tx_PktRunning;
    } else if (strcmp("Rx_pktDetEventCount", name) == 0) {
        *shmem = (void *) & _config_table->Rx_pktDetEventCount;
    } else if (strcmp("Rx_coarseCFOest", name) == 0) {
        *shmem = (void *) & _config_table->Rx_coarseCFOest;
    } else if (strcmp("Rx_pilotCFOest", name) == 0) {
        *shmem = (void *) & _config_table->Rx_pilotCFOest;
    } else if (strcmp("Rx_pktDone_interruptStatus", name) == 0) {
        *shmem = (void *) & _config_table->Rx_pktDone_interruptStatus;
    } else if (strcmp("Rx_BER_TotalBits", name) == 0) {
        *shmem = (void *) & _config_table->Rx_BER_TotalBits;
    } else if (strcmp("Rx_BER_Errors", name) == 0) {
        *shmem = (void *) & _config_table->Rx_BER_Errors;
    } else if (strcmp("Rx_Gains", name) == 0) {
        *shmem = (void *) & _config_table->Rx_Gains;
    } else if (strcmp("pktDet_status", name) == 0) {
        *shmem = (void *) & _config_table->pktDet_status;
    } else if (strcmp("FEC_Config", name) == 0) {
        *shmem = (void *) & _config_table->FEC_Config;
    } else if (strcmp("Tx_OFDM_SymCounts", name) == 0) {
        *shmem = (void *) & _config_table->Tx_OFDM_SymCounts;
    } else if (strcmp("Rx_OFDM_SymbolCounts", name) == 0) {
        *shmem = (void *) & _config_table->Rx_OFDM_SymbolCounts;
    } else if (strcmp("TxRx_Pilots_Values", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_Pilots_Values;
    } else if (strcmp("TxRx_Pilots_Index", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_Pilots_Index;
    } else if (strcmp("TxRx_Interrupt_PktBuf_Ctrl", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_Interrupt_PktBuf_Ctrl;
    } else if (strcmp("TxRx_FFT_Scaling", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_FFT_Scaling;
    } else if (strcmp("Tx_Start_Reset_Control", name) == 0) {
        *shmem = (void *) & _config_table->Tx_Start_Reset_Control;
    } else if (strcmp("Tx_ControlBits", name) == 0) {
        *shmem = (void *) & _config_table->Tx_ControlBits;
    } else if (strcmp("Tx_Delays", name) == 0) {
        *shmem = (void *) & _config_table->Tx_Delays;
    } else if (strcmp("Tx_Scaling", name) == 0) {
        *shmem = (void *) & _config_table->Tx_Scaling;
    } else if (strcmp("pktDet_thresholds", name) == 0) {
        *shmem = (void *) & _config_table->pktDet_thresholds;
    } else if (strcmp("pktDet_durations", name) == 0) {
        *shmem = (void *) & _config_table->pktDet_durations;
    } else if (strcmp("pktDet_autoCorrParams", name) == 0) {
        *shmem = (void *) & _config_table->pktDet_autoCorrParams;
    } else if (strcmp("pktDet_controlBits", name) == 0) {
        *shmem = (void *) & _config_table->pktDet_controlBits;
    } else if (strcmp("Rx_AF_TxScaling", name) == 0) {
        *shmem = (void *) & _config_table->Rx_AF_TxScaling;
    } else if (strcmp("Rx_AF_Blanking", name) == 0) {
        *shmem = (void *) & _config_table->Rx_AF_Blanking;
    } else if (strcmp("Rx_PilotCalcParams", name) == 0) {
        *shmem = (void *) & _config_table->Rx_PilotCalcParams;
    } else if (strcmp("Rx_Constellation_Scaling", name) == 0) {
        *shmem = (void *) & _config_table->Rx_Constellation_Scaling;
    } else if (strcmp("Rx_PktDet_Delay", name) == 0) {
        *shmem = (void *) & _config_table->Rx_PktDet_Delay;
    } else if (strcmp("Rx_ChanEst_MinMag", name) == 0) {
        *shmem = (void *) & _config_table->Rx_ChanEst_MinMag;
    } else if (strcmp("Rx_pktByteNums", name) == 0) {
        *shmem = (void *) & _config_table->Rx_pktByteNums;
    } else if (strcmp("Rx_FixedPktLen", name) == 0) {
        *shmem = (void *) & _config_table->Rx_FixedPktLen;
    } else if (strcmp("Rx_PktDet_LongCorr_Thresholds", name) == 0) {
        *shmem = (void *) & _config_table->Rx_PktDet_LongCorr_Thresholds;
    } else if (strcmp("Rx_PktDet_LongCorr_Params", name) == 0) {
        *shmem = (void *) & _config_table->Rx_PktDet_LongCorr_Params;
    } else if (strcmp("Rx_coarseCFO_correction", name) == 0) {
        *shmem = (void *) & _config_table->Rx_coarseCFO_correction;
    } else if (strcmp("Rx_PreCFO_PilotCalcCorrection", name) == 0) {
        *shmem = (void *) & _config_table->Rx_PreCFO_PilotCalcCorrection;
    } else if (strcmp("Rx_PreCFO_Options", name) == 0) {
        *shmem = (void *) & _config_table->Rx_PreCFO_Options;
    } else if (strcmp("Rx_ControlBits", name) == 0) {
        *shmem = (void *) & _config_table->Rx_ControlBits;
    } else if (strcmp("TxRx_AutoReply_Action3", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_AutoReply_Action3;
    } else if (strcmp("TxRx_AutoReply_Action2", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_AutoReply_Action2;
    } else if (strcmp("TxRx_AutoReply_Action1", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_AutoReply_Action1;
    } else if (strcmp("TxRx_AutoReply_Action0", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_AutoReply_Action0;
    } else if (strcmp("TxRx_AutoReply_Match5", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_AutoReply_Match5;
    } else if (strcmp("TxRx_AutoReply_Match4", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_AutoReply_Match4;
    } else if (strcmp("TxRx_AutoReply_Match3", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_AutoReply_Match3;
    } else if (strcmp("TxRx_AutoReply_Match2", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_AutoReply_Match2;
    } else if (strcmp("TxRx_AutoReply_Action5", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_AutoReply_Action5;
    } else if (strcmp("TxRx_AutoReply_Action4", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_AutoReply_Action4;
    } else if (strcmp("TxRx_AutoReply_Match1", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_AutoReply_Match1;
    } else if (strcmp("TxRx_AutoReply_Match0", name) == 0) {
        *shmem = (void *) & _config_table->TxRx_AutoReply_Match0;
    } else if (strcmp("TxModulation", name) == 0) {
        *shmem = (void *) & _config_table->TxModulation;
    } else if (strcmp("TxHeaderTranslate", name) == 0) {
        *shmem = (void *) & _config_table->TxHeaderTranslate;
    } else if (strcmp("ChannelEstimates", name) == 0) {
        *shmem = (void *) & _config_table->ChannelEstimates;
    } else if (strcmp("RxModulation", name) == 0) {
        *shmem = (void *) & _config_table->RxModulation;
    } else if (strcmp("EVM_perSym", name) == 0) {
        *shmem = (void *) & _config_table->EVM_perSym;
    } else if (strcmp("EVM_perSC", name) == 0) {
        *shmem = (void *) & _config_table->EVM_perSC;
    } else if (strcmp("PktBufFreqOffsets", name) == 0) {
        *shmem = (void *) & _config_table->PktBufFreqOffsets;
    }
    else { *shmem = NULL; return XC_FAILURE; }

    return XC_SUCCESS;
}
