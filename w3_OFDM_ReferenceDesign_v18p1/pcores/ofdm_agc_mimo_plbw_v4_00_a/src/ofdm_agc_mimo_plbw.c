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

#include "ofdm_agc_mimo_plbw.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xcope.h"

inline xc_status_t xc_ofdm_agc_mimo_plbw_create(xc_iface_t **iface, void *config_table)
{
    // set up iface
    *iface = (xc_iface_t *) config_table;

#ifdef XC_DEBUG
    OFDM_AGC_MIMO_PLBW_Config *_config_table = config_table;

    if (_config_table->xc_create == NULL) {
        print("config_table.xc_create == NULL\r\n");
        exit(1);
    }
#endif

    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_ofdm_agc_mimo_plbw_release(xc_iface_t **iface) 
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_ofdm_agc_mimo_plbw_open(xc_iface_t *iface)
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_ofdm_agc_mimo_plbw_close(xc_iface_t *iface)
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_ofdm_agc_mimo_plbw_read(xc_iface_t *iface, xc_r_addr_t addr, uint32_t *value)
{
    *value = Xil_In32((uint32_t *) addr);
    return XC_SUCCESS;
}

inline xc_status_t xc_ofdm_agc_mimo_plbw_write(xc_iface_t *iface, xc_w_addr_t addr, const uint32_t value)
{
    Xil_Out32((uint32_t *) addr, value);
    return XC_SUCCESS;
}

xc_status_t xc_ofdm_agc_mimo_plbw_getshmem(xc_iface_t *iface, const char *name, void **shmem)
{
    OFDM_AGC_MIMO_PLBW_Config *_config_table = (OFDM_AGC_MIMO_PLBW_Config *) iface;

    if (strcmp("GRF_A", name) == 0) {
        *shmem = (void *) & _config_table->GRF_A;
    } else if (strcmp("GRF_B", name) == 0) {
        *shmem = (void *) & _config_table->GRF_B;
    } else if (strcmp("GBB_B", name) == 0) {
        *shmem = (void *) & _config_table->GBB_B;
    } else if (strcmp("GBB_A", name) == 0) {
        *shmem = (void *) & _config_table->GBB_A;
    } else if (strcmp("Bits_r", name) == 0) {
        *shmem = (void *) & _config_table->Bits_r;
    } else if (strcmp("Bits_w", name) == 0) {
        *shmem = (void *) & _config_table->Bits_w;
    } else if (strcmp("GBB_init", name) == 0) {
        *shmem = (void *) & _config_table->GBB_init;
    } else if (strcmp("ADJ", name) == 0) {
        *shmem = (void *) & _config_table->ADJ;
    } else if (strcmp("DCO_IIR_Coef_FB", name) == 0) {
        *shmem = (void *) & _config_table->DCO_IIR_Coef_FB;
    } else if (strcmp("Thresholds", name) == 0) {
        *shmem = (void *) & _config_table->Thresholds;
    } else if (strcmp("Timing", name) == 0) {
        *shmem = (void *) & _config_table->Timing;
    } else if (strcmp("DCO_IIR_Coef_Gain", name) == 0) {
        *shmem = (void *) & _config_table->DCO_IIR_Coef_Gain;
    } else if (strcmp("AVG_LEN", name) == 0) {
        *shmem = (void *) & _config_table->AVG_LEN;
    } else if (strcmp("AGC_EN", name) == 0) {
        *shmem = (void *) & _config_table->AGC_EN;
    } else if (strcmp("DCO_Timing", name) == 0) {
        *shmem = (void *) & _config_table->DCO_Timing;
    } else if (strcmp("T_dB", name) == 0) {
        *shmem = (void *) & _config_table->T_dB;
    } else if (strcmp("MRESET_IN", name) == 0) {
        *shmem = (void *) & _config_table->MRESET_IN;
    } else if (strcmp("SRESET_IN", name) == 0) {
        *shmem = (void *) & _config_table->SRESET_IN;
    }
    else { *shmem = NULL; return XC_FAILURE; }

    return XC_SUCCESS;
}
