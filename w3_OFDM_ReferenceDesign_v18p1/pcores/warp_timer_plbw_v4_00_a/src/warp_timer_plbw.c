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

#include "warp_timer_plbw.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xcope.h"

inline xc_status_t xc_warp_timer_plbw_create(xc_iface_t **iface, void *config_table)
{
    // set up iface
    *iface = (xc_iface_t *) config_table;

#ifdef XC_DEBUG
    WARP_TIMER_PLBW_Config *_config_table = config_table;

    if (_config_table->xc_create == NULL) {
        print("config_table.xc_create == NULL\r\n");
        exit(1);
    }
#endif

    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_warp_timer_plbw_release(xc_iface_t **iface) 
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_warp_timer_plbw_open(xc_iface_t *iface)
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_warp_timer_plbw_close(xc_iface_t *iface)
{
    // does nothing
    return XC_SUCCESS;
}

inline xc_status_t xc_warp_timer_plbw_read(xc_iface_t *iface, xc_r_addr_t addr, uint32_t *value)
{
    *value = Xil_In32((uint32_t *) addr);
    return XC_SUCCESS;
}

inline xc_status_t xc_warp_timer_plbw_write(xc_iface_t *iface, xc_w_addr_t addr, const uint32_t value)
{
    Xil_Out32((uint32_t *) addr, value);
    return XC_SUCCESS;
}

xc_status_t xc_warp_timer_plbw_getshmem(xc_iface_t *iface, const char *name, void **shmem)
{
    WARP_TIMER_PLBW_Config *_config_table = (WARP_TIMER_PLBW_Config *) iface;

    if (strcmp("timer_status", name) == 0) {
        *shmem = (void *) & _config_table->timer_status;
    } else if (strcmp("timer0_slotCount", name) == 0) {
        *shmem = (void *) & _config_table->timer0_slotCount;
    } else if (strcmp("timer_control", name) == 0) {
        *shmem = (void *) & _config_table->timer_control;
    } else if (strcmp("timer4_slotCount", name) == 0) {
        *shmem = (void *) & _config_table->timer4_slotCount;
    } else if (strcmp("timer6_slotCount", name) == 0) {
        *shmem = (void *) & _config_table->timer6_slotCount;
    } else if (strcmp("timer7_slotCount", name) == 0) {
        *shmem = (void *) & _config_table->timer7_slotCount;
    } else if (strcmp("timer5_slotCount", name) == 0) {
        *shmem = (void *) & _config_table->timer5_slotCount;
    } else if (strcmp("timer2_slotCount", name) == 0) {
        *shmem = (void *) & _config_table->timer2_slotCount;
    } else if (strcmp("timer3_slotCount", name) == 0) {
        *shmem = (void *) & _config_table->timer3_slotCount;
    } else if (strcmp("timers67_slotTime", name) == 0) {
        *shmem = (void *) & _config_table->timers67_slotTime;
    } else if (strcmp("timers45_slotTime", name) == 0) {
        *shmem = (void *) & _config_table->timers45_slotTime;
    } else if (strcmp("timers23_slotTime", name) == 0) {
        *shmem = (void *) & _config_table->timers23_slotTime;
    } else if (strcmp("timers01_slotTime", name) == 0) {
        *shmem = (void *) & _config_table->timers01_slotTime;
    } else if (strcmp("timer1_slotCount", name) == 0) {
        *shmem = (void *) & _config_table->timer1_slotCount;
    }
    else { *shmem = NULL; return XC_FAILURE; }

    return XC_SUCCESS;
}
