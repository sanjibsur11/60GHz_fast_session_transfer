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
    puts "Generating Macros for ofdm_agc_mimo_plbw driver access ... "

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
    sg_lappend config_table addr_config_table "C_MEMMAP_GRF_A"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_A_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_A_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_A_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_GRF_B"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_B_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_B_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_GRF_B_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_GBB_B"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_B_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_B_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_B_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_GBB_A"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_A_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_A_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_A_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_BITS_R"
    sg_lappend config_table xparam_config_table "C_MEMMAP_BITS_R_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_BITS_R_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_BITS_R_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_BITS_W"
    sg_lappend config_table xparam_config_table "C_MEMMAP_BITS_W_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_BITS_W_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_BITS_W_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_GBB_INIT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_INIT_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_INIT_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_GBB_INIT_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_ADJ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_ADJ_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_ADJ_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_ADJ_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_DCO_IIR_COEF_FB"
    sg_lappend config_table xparam_config_table "C_MEMMAP_DCO_IIR_COEF_FB_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_DCO_IIR_COEF_FB_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_DCO_IIR_COEF_FB_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_THRESHOLDS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_THRESHOLDS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_THRESHOLDS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_THRESHOLDS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TIMING"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMING_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TIMING_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TIMING_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_DCO_IIR_COEF_GAIN"
    sg_lappend config_table xparam_config_table "C_MEMMAP_DCO_IIR_COEF_GAIN_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_DCO_IIR_COEF_GAIN_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_DCO_IIR_COEF_GAIN_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_AVG_LEN"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AVG_LEN_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AVG_LEN_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_AVG_LEN_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_AGC_EN"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AGC_EN_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AGC_EN_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_AGC_EN_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_DCO_TIMING"
    sg_lappend config_table xparam_config_table "C_MEMMAP_DCO_TIMING_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_DCO_TIMING_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_DCO_TIMING_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_T_DB"
    sg_lappend config_table xparam_config_table "C_MEMMAP_T_DB_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_T_DB_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_T_DB_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_MRESET_IN"
    sg_lappend config_table xparam_config_table "C_MEMMAP_MRESET_IN_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_MRESET_IN_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_MRESET_IN_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_SRESET_IN"
    sg_lappend config_table xparam_config_table "C_MEMMAP_SRESET_IN_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_SRESET_IN_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_SRESET_IN_ATTR"

    # XPS parameters
    sg_lappend config_table xparam_config_table "DEVICE_ID" "C_BASEADDR"

    # generate xparameters.h
    eval xdefine_include_file $drv_handle "xparameters.h" "OFDM_AGC_MIMO_PLBW" "NUM_INSTANCES" ${xparam_config_table}
    eval sg_xdefine_include_file $drv_handle "xparameters.h" "OFDM_AGC_MIMO_PLBW" ${addr_config_table}
    # generate ofdm_agc_mimo_plbw_g.c
    eval xdefine_config_file $drv_handle "ofdm_agc_mimo_plbw_g.c" "OFDM_AGC_MIMO_PLBW" ${config_table}
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
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_CREATE    xc_ofdm_agc_mimo_plbw_create"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_RELEASE   xc_ofdm_agc_mimo_plbw_release"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_OPEN      xc_ofdm_agc_mimo_plbw_open"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_CLOSE     xc_ofdm_agc_mimo_plbw_close"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_READ      xc_ofdm_agc_mimo_plbw_read"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_WRITE     xc_ofdm_agc_mimo_plbw_write"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_GET_SHMEM xc_ofdm_agc_mimo_plbw_getshmem"

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
