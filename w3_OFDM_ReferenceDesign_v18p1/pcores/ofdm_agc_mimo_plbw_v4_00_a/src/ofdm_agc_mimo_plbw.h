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

#ifndef __XL_OFDM_AGC_MIMO_PLBW_H__
#define __XL_OFDM_AGC_MIMO_PLBW_H__

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
    uint32_t GRF_A;
    uint32_t GRF_A_n_bits;
    uint32_t GRF_A_bin_pt;
    // uint32_t GRF_A_attr;
    uint32_t GRF_B;
    uint32_t GRF_B_n_bits;
    uint32_t GRF_B_bin_pt;
    // uint32_t GRF_B_attr;
    uint32_t GBB_B;
    uint32_t GBB_B_n_bits;
    uint32_t GBB_B_bin_pt;
    // uint32_t GBB_B_attr;
    uint32_t GBB_A;
    uint32_t GBB_A_n_bits;
    uint32_t GBB_A_bin_pt;
    // uint32_t GBB_A_attr;
    uint32_t Bits_r;
    uint32_t Bits_r_n_bits;
    uint32_t Bits_r_bin_pt;
    // uint32_t Bits_r_attr;
    uint32_t Bits_w;
    uint32_t Bits_w_n_bits;
    uint32_t Bits_w_bin_pt;
    // uint32_t Bits_w_attr;
    uint32_t GBB_init;
    uint32_t GBB_init_n_bits;
    uint32_t GBB_init_bin_pt;
    // uint32_t GBB_init_attr;
    uint32_t ADJ;
    uint32_t ADJ_n_bits;
    uint32_t ADJ_bin_pt;
    // uint32_t ADJ_attr;
    uint32_t DCO_IIR_Coef_FB;
    uint32_t DCO_IIR_Coef_FB_n_bits;
    uint32_t DCO_IIR_Coef_FB_bin_pt;
    // uint32_t DCO_IIR_Coef_FB_attr;
    uint32_t Thresholds;
    uint32_t Thresholds_n_bits;
    uint32_t Thresholds_bin_pt;
    // uint32_t Thresholds_attr;
    uint32_t Timing;
    uint32_t Timing_n_bits;
    uint32_t Timing_bin_pt;
    // uint32_t Timing_attr;
    uint32_t DCO_IIR_Coef_Gain;
    uint32_t DCO_IIR_Coef_Gain_n_bits;
    uint32_t DCO_IIR_Coef_Gain_bin_pt;
    // uint32_t DCO_IIR_Coef_Gain_attr;
    uint32_t AVG_LEN;
    uint32_t AVG_LEN_n_bits;
    uint32_t AVG_LEN_bin_pt;
    // uint32_t AVG_LEN_attr;
    uint32_t AGC_EN;
    uint32_t AGC_EN_n_bits;
    uint32_t AGC_EN_bin_pt;
    // uint32_t AGC_EN_attr;
    uint32_t DCO_Timing;
    uint32_t DCO_Timing_n_bits;
    uint32_t DCO_Timing_bin_pt;
    // uint32_t DCO_Timing_attr;
    uint32_t T_dB;
    uint32_t T_dB_n_bits;
    uint32_t T_dB_bin_pt;
    // uint32_t T_dB_attr;
    uint32_t MRESET_IN;
    uint32_t MRESET_IN_n_bits;
    uint32_t MRESET_IN_bin_pt;
    // uint32_t MRESET_IN_attr;
    uint32_t SRESET_IN;
    uint32_t SRESET_IN_n_bits;
    uint32_t SRESET_IN_bin_pt;
    // uint32_t SRESET_IN_attr;
    // XPS parameters
    Xuint16  DeviceId;
    uint32_t  BaseAddr;
} OFDM_AGC_MIMO_PLBW_Config;

extern OFDM_AGC_MIMO_PLBW_Config OFDM_AGC_MIMO_PLBW_ConfigTable[];

// forward declaration of low-level functions
xc_status_t xc_ofdm_agc_mimo_plbw_create(xc_iface_t **iface, void *config_table);
xc_status_t xc_ofdm_agc_mimo_plbw_release(xc_iface_t **iface) ;
xc_status_t xc_ofdm_agc_mimo_plbw_open(xc_iface_t *iface);
xc_status_t xc_ofdm_agc_mimo_plbw_close(xc_iface_t *iface);
xc_status_t xc_ofdm_agc_mimo_plbw_read(xc_iface_t *iface, xc_r_addr_t addr, uint32_t *value);
xc_status_t xc_ofdm_agc_mimo_plbw_write(xc_iface_t *iface, xc_w_addr_t addr, const uint32_t value);
xc_status_t xc_ofdm_agc_mimo_plbw_getshmem(xc_iface_t *iface, const char *name, void **shmem);

#endif

