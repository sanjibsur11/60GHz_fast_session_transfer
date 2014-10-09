##############################################################################
##
## ***************************************************************************
## **                                                                       **
## ** Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.            **
## **                                                                       **
## ** You may copy and modify these files for your own internal use solely  **
## ** with Xilinx programmable logic devices and Xilinx EDK system or       **
## ** create IP modules solely for Xilinx programmable logic devices and    **
## ** Xilinx EDK system. No rights are granted to distribute any files      **
## ** unless they are distributed in Xilinx programmable logic devices.     **
## **                                                                       **
## ***************************************************************************
##
##############################################################################

proc generate {drv_handle} {
    puts "Generating Macros for warp_timer_plbw driver access ... "

    # initialize
    lappend config_table
    lappend addr_config_table
    lappend xparam_config_table

    # hardware version
    lappend config_table "C_XC_VERSION"
    # Low-level function names
    lappend config_table "C_XC_CREATE" "C_XC_RELEASE" "C_XC_OPEN" "C_XC_CLOSE" "C_XC_READ" "C_XC_WRITE" "C_XC_GET_SHMEM"
    # Optional parameters
    # (empty)

    # Memory map information
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMER_STATUS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER_STATUS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER_STATUS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER_STATUS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMER0_SLOTCOUNT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER0_SLOTCOUNT_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER0_SLOTCOUNT_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER0_SLOTCOUNT_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMER_CONTROL"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER_CONTROL_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER_CONTROL_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER_CONTROL_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMER4_SLOTCOUNT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER4_SLOTCOUNT_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER4_SLOTCOUNT_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER4_SLOTCOUNT_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMER6_SLOTCOUNT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER6_SLOTCOUNT_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER6_SLOTCOUNT_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER6_SLOTCOUNT_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMER7_SLOTCOUNT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER7_SLOTCOUNT_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER7_SLOTCOUNT_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER7_SLOTCOUNT_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMER5_SLOTCOUNT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER5_SLOTCOUNT_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER5_SLOTCOUNT_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER5_SLOTCOUNT_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMER2_SLOTCOUNT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER2_SLOTCOUNT_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER2_SLOTCOUNT_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER2_SLOTCOUNT_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMER3_SLOTCOUNT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER3_SLOTCOUNT_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER3_SLOTCOUNT_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER3_SLOTCOUNT_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMERS67_SLOTTIME"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMERS67_SLOTTIME_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMERS67_SLOTTIME_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMERS67_SLOTTIME_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMERS45_SLOTTIME"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMERS45_SLOTTIME_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMERS45_SLOTTIME_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMERS45_SLOTTIME_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMERS23_SLOTTIME"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMERS23_SLOTTIME_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMERS23_SLOTTIME_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMERS23_SLOTTIME_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMERS01_SLOTTIME"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMERS01_SLOTTIME_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMERS01_SLOTTIME_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMERS01_SLOTTIME_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMER1_SLOTCOUNT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER1_SLOTCOUNT_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER1_SLOTCOUNT_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMER1_SLOTCOUNT_ATTR"

    # XPS parameters
    sg_lappend config_table xparam_config_table "DEVICE_ID" "C_BASEADDR"

    # generate xparameters.h
    eval xdefine_include_file $drv_handle "xparameters.h" "WARP_TIMER_PLBW" "NUM_INSTANCES" ${xparam_config_table}
    eval sg_xdefine_include_file $drv_handle "xparameters.h" "WARP_TIMER_PLBW" ${addr_config_table}
    # generate warp_timer_plbw_g.c
    eval xdefine_config_file $drv_handle "warp_timer_plbw_g.c" "WARP_TIMER_PLBW" ${config_table}
}

proc sg_xdefine_include_file {drv_handle file_name drv_string args} {
    # Open include file
    set file_handle [xopen_include_file $file_name]

    # Get all peripherals connected to this driver
    set periphs [xget_periphs $drv_handle] 

    # Print all parameters for all peripherals
    set device_id 0
    foreach periph ${periphs} {
        # base_addr of the peripheral
        set base_addr [xget_param_value ${periph} "C_BASEADDR"]

        puts ${file_handle} ""
        puts ${file_handle} "/* Definitions (address parameters) for peripheral [string toupper [xget_hw_name $periph]] */"
        foreach arg ${args} {
            set value [xget_param_value ${periph} ${arg}]
            if {[llength ${value}] == 0} {
                set value 0
            }
            set value [expr ${base_addr} + ${value}]
            set value_str [xformat_address_string ${value}]
            puts ${file_handle} "#define [xget_name ${periph} ${arg}] ${value_str}"
        }

        puts $file_handle "/* software driver settings for peripheral [string toupper [xget_hw_name $periph]] */"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_VERSION   1"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_CREATE    xc_warp_timer_plbw_create"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_RELEASE   xc_warp_timer_plbw_release"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_OPEN      xc_warp_timer_plbw_open"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_CLOSE     xc_warp_timer_plbw_close"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_READ      xc_warp_timer_plbw_read"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_WRITE     xc_warp_timer_plbw_write"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_GET_SHMEM xc_warp_timer_plbw_getshmem"

        puts $file_handle ""
    }		
    puts $file_handle "\n/******************************************************************/\n"
    close $file_handle
}

proc sg_lappend {required_config_table {extra_config_table ""} args} {
    upvar ${required_config_table} config_table_1
    if {[string length ${extra_config_table}] != 0} {
        upvar ${extra_config_table} config_table_2
    }

    foreach value ${args} {
        eval [list lappend config_table_1 ${value}]
        if {[string length ${extra_config_table}] != 0} {
            lappend config_table_2 ${value}
        }
    }
}
