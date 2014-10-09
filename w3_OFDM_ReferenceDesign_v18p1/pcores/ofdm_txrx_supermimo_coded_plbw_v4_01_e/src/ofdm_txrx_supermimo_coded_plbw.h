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

#ifndef __XL_OFDM_TXRX_SUPERMIMO_CODED_PLBW_H__
#define __XL_OFDM_TXRX_SUPERMIMO_CODED_PLBW_H__

#include "xbasic_types.h"
#include "xstatus.h"
#include "xcope.h"

typedef struct {
    uint32_t version;
    // Pointers to low-level functions
    xc_status_t (*xc_create)(xc_iface_t **, void *);
    xc_status_t (*xc_release)(xc_iface_t **);
    xc_status_t (*xc_open)(xc_iface_t *);
    xc_status_t (*xc_close)(xc_iface_t *);
    xc_status_t (*xc_read)(xc_iface_t *, xc_r_addr_t, uint32_t *);
    xc_status_t (*xc_write)(xc_iface_t *, xc_w_addr_t, const uint32_t);
    xc_status_t (*xc_get_shmem)(xc_iface_t *, const char *, void **shmem);
    // Optional parameters
    // (empty)
    // Memory map information
    uint32_t midPacketRSSI;
    uint32_t midPacketRSSI_n_bits;
    uint32_t midPacketRSSI_bin_pt;
    // uint32_t midPacketRSSI_attr;
    uint32_t Tx_PktRunning;
    uint32_t Tx_PktRunning_n_bits;
    uint32_t Tx_PktRunning_bin_pt;
    // uint32_t Tx_PktRunning_attr;
    uint32_t Rx_pktDetEventCount;
    uint32_t Rx_pktDetEventCount_n_bits;
    uint32_t Rx_pktDetEventCount_bin_pt;
    // uint32_t Rx_pktDetEventCount_attr;
    uint32_t Rx_coarseCFOest;
    uint32_t Rx_coarseCFOest_n_bits;
    uint32_t Rx_coarseCFOest_bin_pt;
    // uint32_t Rx_coarseCFOest_attr;
    uint32_t Rx_pilotCFOest;
    uint32_t Rx_pilotCFOest_n_bits;
    uint32_t Rx_pilotCFOest_bin_pt;
    // uint32_t Rx_pilotCFOest_attr;
    uint32_t Rx_pktDone_interruptStatus;
    uint32_t Rx_pktDone_interruptStatus_n_bits;
    uint32_t Rx_pktDone_interruptStatus_bin_pt;
    // uint32_t Rx_pktDone_interruptStatus_attr;
    uint32_t Rx_BER_TotalBits;
    uint32_t Rx_BER_TotalBits_n_bits;
    uint32_t Rx_BER_TotalBits_bin_pt;
    // uint32_t Rx_BER_TotalBits_attr;
    uint32_t Rx_BER_Errors;
    uint32_t Rx_BER_Errors_n_bits;
    uint32_t Rx_BER_Errors_bin_pt;
    // uint32_t Rx_BER_Errors_attr;
    uint32_t Rx_Gains;
    uint32_t Rx_Gains_n_bits;
    uint32_t Rx_Gains_bin_pt;
    // uint32_t Rx_Gains_attr;
    uint32_t pktDet_status;
    uint32_t pktDet_status_n_bits;
    uint32_t pktDet_status_bin_pt;
    // uint32_t pktDet_status_attr;
    uint32_t FEC_Config;
    uint32_t FEC_Config_n_bits;
    uint32_t FEC_Config_bin_pt;
    // uint32_t FEC_Config_attr;
    uint32_t Tx_OFDM_SymCounts;
    uint32_t Tx_OFDM_SymCounts_n_bits;
    uint32_t Tx_OFDM_SymCounts_bin_pt;
    // uint32_t Tx_OFDM_SymCounts_attr;
    uint32_t Rx_OFDM_SymbolCounts;
    uint32_t Rx_OFDM_SymbolCounts_n_bits;
    uint32_t Rx_OFDM_SymbolCounts_bin_pt;
    // uint32_t Rx_OFDM_SymbolCounts_attr;
    uint32_t TxRx_Pilots_Values;
    uint32_t TxRx_Pilots_Values_n_bits;
    uint32_t TxRx_Pilots_Values_bin_pt;
    // uint32_t TxRx_Pilots_Values_attr;
    uint32_t TxRx_Pilots_Index;
    uint32_t TxRx_Pilots_Index_n_bits;
    uint32_t TxRx_Pilots_Index_bin_pt;
    // uint32_t TxRx_Pilots_Index_attr;
    uint32_t TxRx_Interrupt_PktBuf_Ctrl;
    uint32_t TxRx_Interrupt_PktBuf_Ctrl_n_bits;
    uint32_t TxRx_Interrupt_PktBuf_Ctrl_bin_pt;
    // uint32_t TxRx_Interrupt_PktBuf_Ctrl_attr;
    uint32_t TxRx_FFT_Scaling;
    uint32_t TxRx_FFT_Scaling_n_bits;
    uint32_t TxRx_FFT_Scaling_bin_pt;
    // uint32_t TxRx_FFT_Scaling_attr;
    uint32_t Tx_Start_Reset_Control;
    uint32_t Tx_Start_Reset_Control_n_bits;
    uint32_t Tx_Start_Reset_Control_bin_pt;
    // uint32_t Tx_Start_Reset_Control_attr;
    uint32_t Tx_ControlBits;
    uint32_t Tx_ControlBits_n_bits;
    uint32_t Tx_ControlBits_bin_pt;
    // uint32_t Tx_ControlBits_attr;
    uint32_t Tx_Delays;
    uint32_t Tx_Delays_n_bits;
    uint32_t Tx_Delays_bin_pt;
    // uint32_t Tx_Delays_attr;
    uint32_t Tx_Scaling;
    uint32_t Tx_Scaling_n_bits;
    uint32_t Tx_Scaling_bin_pt;
    // uint32_t Tx_Scaling_attr;
    uint32_t pktDet_thresholds;
    uint32_t pktDet_thresholds_n_bits;
    uint32_t pktDet_thresholds_bin_pt;
    // uint32_t pktDet_thresholds_attr;
    uint32_t pktDet_durations;
    uint32_t pktDet_durations_n_bits;
    uint32_t pktDet_durations_bin_pt;
    // uint32_t pktDet_durations_attr;
    uint32_t pktDet_autoCorrParams;
    uint32_t pktDet_autoCorrParams_n_bits;
    uint32_t pktDet_autoCorrParams_bin_pt;
    // uint32_t pktDet_autoCorrParams_attr;
    uint32_t pktDet_controlBits;
    uint32_t pktDet_controlBits_n_bits;
    uint32_t pktDet_controlBits_bin_pt;
    // uint32_t pktDet_controlBits_attr;
    uint32_t Rx_AF_TxScaling;
    uint32_t Rx_AF_TxScaling_n_bits;
    uint32_t Rx_AF_TxScaling_bin_pt;
    // uint32_t Rx_AF_TxScaling_attr;
    uint32_t Rx_AF_Blanking;
    uint32_t Rx_AF_Blanking_n_bits;
    uint32_t Rx_AF_Blanking_bin_pt;
    // uint32_t Rx_AF_Blanking_attr;
    uint32_t Rx_PilotCalcParams;
    uint32_t Rx_PilotCalcParams_n_bits;
    uint32_t Rx_PilotCalcParams_bin_pt;
    // uint32_t Rx_PilotCalcParams_attr;
    uint32_t Rx_Constellation_Scaling;
    uint32_t Rx_Constellation_Scaling_n_bits;
    uint32_t Rx_Constellation_Scaling_bin_pt;
    // uint32_t Rx_Constellation_Scaling_attr;
    uint32_t Rx_PktDet_Delay;
    uint32_t Rx_PktDet_Delay_n_bits;
    uint32_t Rx_PktDet_Delay_bin_pt;
    // uint32_t Rx_PktDet_Delay_attr;
    uint32_t Rx_ChanEst_MinMag;
    uint32_t Rx_ChanEst_MinMag_n_bits;
    uint32_t Rx_ChanEst_MinMag_bin_pt;
    // uint32_t Rx_ChanEst_MinMag_attr;
    uint32_t Rx_pktByteNums;
    uint32_t Rx_pktByteNums_n_bits;
    uint32_t Rx_pktByteNums_bin_pt;
    // uint32_t Rx_pktByteNums_attr;
    uint32_t Rx_FixedPktLen;
    uint32_t Rx_FixedPktLen_n_bits;
    uint32_t Rx_FixedPktLen_bin_pt;
    // uint32_t Rx_FixedPktLen_attr;
    uint32_t Rx_PktDet_LongCorr_Thresholds;
    uint32_t Rx_PktDet_LongCorr_Thresholds_n_bits;
    uint32_t Rx_PktDet_LongCorr_Thresholds_bin_pt;
    // uint32_t Rx_PktDet_LongCorr_Thresholds_attr;
    uint32_t Rx_PktDet_LongCorr_Params;
    uint32_t Rx_PktDet_LongCorr_Params_n_bits;
    uint32_t Rx_PktDet_LongCorr_Params_bin_pt;
    // uint32_t Rx_PktDet_LongCorr_Params_attr;
    uint32_t Rx_coarseCFO_correction;
    uint32_t Rx_coarseCFO_correction_n_bits;
    uint32_t Rx_coarseCFO_correction_bin_pt;
    // uint32_t Rx_coarseCFO_correction_attr;
    uint32_t Rx_PreCFO_PilotCalcCorrection;
    uint32_t Rx_PreCFO_PilotCalcCorrection_n_bits;
    uint32_t Rx_PreCFO_PilotCalcCorrection_bin_pt;
    // uint32_t Rx_PreCFO_PilotCalcCorrection_attr;
    uint32_t Rx_PreCFO_Options;
    uint32_t Rx_PreCFO_Options_n_bits;
    uint32_t Rx_PreCFO_Options_bin_pt;
    // uint32_t Rx_PreCFO_Options_attr;
    uint32_t Rx_ControlBits;
    uint32_t Rx_ControlBits_n_bits;
    uint32_t Rx_ControlBits_bin_pt;
    // uint32_t Rx_ControlBits_attr;
    uint32_t TxRx_AutoReply_Action3;
    uint32_t TxRx_AutoReply_Action3_n_bits;
    uint32_t TxRx_AutoReply_Action3_bin_pt;
    // uint32_t TxRx_AutoReply_Action3_attr;
    uint32_t TxRx_AutoReply_Action2;
    uint32_t TxRx_AutoReply_Action2_n_bits;
    uint32_t TxRx_AutoReply_Action2_bin_pt;
    // uint32_t TxRx_AutoReply_Action2_attr;
    uint32_t TxRx_AutoReply_Action1;
    uint32_t TxRx_AutoReply_Action1_n_bits;
    uint32_t TxRx_AutoReply_Action1_bin_pt;
    // uint32_t TxRx_AutoReply_Action1_attr;
    uint32_t TxRx_AutoReply_Action0;
    uint32_t TxRx_AutoReply_Action0_n_bits;
    uint32_t TxRx_AutoReply_Action0_bin_pt;
    // uint32_t TxRx_AutoReply_Action0_attr;
    uint32_t TxRx_AutoReply_Match5;
    uint32_t TxRx_AutoReply_Match5_n_bits;
    uint32_t TxRx_AutoReply_Match5_bin_pt;
    // uint32_t TxRx_AutoReply_Match5_attr;
    uint32_t TxRx_AutoReply_Match4;
    uint32_t TxRx_AutoReply_Match4_n_bits;
    uint32_t TxRx_AutoReply_Match4_bin_pt;
    // uint32_t TxRx_AutoReply_Match4_attr;
    uint32_t TxRx_AutoReply_Match3;
    uint32_t TxRx_AutoReply_Match3_n_bits;
    uint32_t TxRx_AutoReply_Match3_bin_pt;
    // uint32_t TxRx_AutoReply_Match3_attr;
    uint32_t TxRx_AutoReply_Match2;
    uint32_t TxRx_AutoReply_Match2_n_bits;
    uint32_t TxRx_AutoReply_Match2_bin_pt;
    // uint32_t TxRx_AutoReply_Match2_attr;
    uint32_t TxRx_AutoReply_Action5;
    uint32_t TxRx_AutoReply_Action5_n_bits;
    uint32_t TxRx_AutoReply_Action5_bin_pt;
    // uint32_t TxRx_AutoReply_Action5_attr;
    uint32_t TxRx_AutoReply_Action4;
    uint32_t TxRx_AutoReply_Action4_n_bits;
    uint32_t TxRx_AutoReply_Action4_bin_pt;
    // uint32_t TxRx_AutoReply_Action4_attr;
    uint32_t TxRx_AutoReply_Match1;
    uint32_t TxRx_AutoReply_Match1_n_bits;
    uint32_t TxRx_AutoReply_Match1_bin_pt;
    // uint32_t TxRx_AutoReply_Match1_attr;
    uint32_t TxRx_AutoReply_Match0;
    uint32_t TxRx_AutoReply_Match0_n_bits;
    uint32_t TxRx_AutoReply_Match0_bin_pt;
    // uint32_t TxRx_AutoReply_Match0_attr;
    uint32_t TxModulation;
    // uint32_t TxModulation_grant;
    // uint32_t TxModulation_req;
    uint32_t TxModulation_n_bits;
    uint32_t TxModulation_bin_pt;
    uint32_t TxModulation_depth;
    // uint32_t TxModulation_attr;
    uint32_t TxHeaderTranslate;
    // uint32_t TxHeaderTranslate_grant;
    // uint32_t TxHeaderTranslate_req;
    uint32_t TxHeaderTranslate_n_bits;
    uint32_t TxHeaderTranslate_bin_pt;
    uint32_t TxHeaderTranslate_depth;
    // uint32_t TxHeaderTranslate_attr;
    uint32_t ChannelEstimates;
    // uint32_t ChannelEstimates_grant;
    // uint32_t ChannelEstimates_req;
    uint32_t ChannelEstimates_n_bits;
    uint32_t ChannelEstimates_bin_pt;
    uint32_t ChannelEstimates_depth;
    // uint32_t ChannelEstimates_attr;
    uint32_t RxModulation;
    // uint32_t RxModulation_grant;
    // uint32_t RxModulation_req;
    uint32_t RxModulation_n_bits;
    uint32_t RxModulation_bin_pt;
    uint32_t RxModulation_depth;
    // uint32_t RxModulation_attr;
    uint32_t EVM_perSym;
    // uint32_t EVM_perSym_grant;
    // uint32_t EVM_perSym_req;
    uint32_t EVM_perSym_n_bits;
    uint32_t EVM_perSym_bin_pt;
    uint32_t EVM_perSym_depth;
    // uint32_t EVM_perSym_attr;
    uint32_t EVM_perSC;
    // uint32_t EVM_perSC_grant;
    // uint32_t EVM_perSC_req;
    uint32_t EVM_perSC_n_bits;
    uint32_t EVM_perSC_bin_pt;
    uint32_t EVM_perSC_depth;
    // uint32_t EVM_perSC_attr;
    uint32_t PktBufFreqOffsets;
    // uint32_t PktBufFreqOffsets_grant;
    // uint32_t PktBufFreqOffsets_req;
    uint32_t PktBufFreqOffsets_n_bits;
    uint32_t PktBufFreqOffsets_bin_pt;
    uint32_t PktBufFreqOffsets_depth;
    // uint32_t PktBufFreqOffsets_attr;
    // XPS parameters
    Xuint16  DeviceId;
    uint32_t  BaseAddr;
} OFDM_TXRX_SUPERMIMO_CODED_PLBW_Config;

extern OFDM_TXRX_SUPERMIMO_CODED_PLBW_Config OFDM_TXRX_SUPERMIMO_CODED_PLBW_ConfigTable[];

// forward declaration of low-level functions
xc_status_t xc_ofdm_txrx_supermimo_coded_plbw_create(xc_iface_t **iface, void *config_table);
xc_status_t xc_ofdm_txrx_supermimo_coded_plbw_release(xc_iface_t **iface) ;
xc_status_t xc_ofdm_txrx_supermimo_coded_plbw_open(xc_iface_t *iface);
xc_status_t xc_ofdm_txrx_supermimo_coded_plbw_close(xc_iface_t *iface);
xc_status_t xc_ofdm_txrx_supermimo_coded_plbw_read(xc_iface_t *iface, xc_r_addr_t addr, uint32_t *value);
xc_status_t xc_ofdm_txrx_supermimo_coded_plbw_write(xc_iface_t *iface, xc_w_addr_t addr, const uint32_t value);
xc_status_t xc_ofdm_txrx_supermimo_coded_plbw_getshmem(xc_iface_t *iface, const char *name, void **shmem);

#endif

