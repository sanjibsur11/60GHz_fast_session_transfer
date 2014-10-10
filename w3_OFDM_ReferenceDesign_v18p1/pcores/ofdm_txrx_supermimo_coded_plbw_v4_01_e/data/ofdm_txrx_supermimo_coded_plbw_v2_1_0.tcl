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
    puts "Generating Macros for ofdm_txrx_supermimo_coded_plbw driver access ... "

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
    sg_lappend config_table addr_config_table "C_MEMMAP_MIDPACKETRSSI"
    sg_lappend config_table xparam_config_table "C_MEMMAP_MIDPACKETRSSI_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_MIDPACKETRSSI_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_MIDPACKETRSSI_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TX_PKTRUNNING"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TX_PKTRUNNING_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TX_PKTRUNNING_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TX_PKTRUNNING_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_PKTDETEVENTCOUNT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDETEVENTCOUNT_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDETEVENTCOUNT_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDETEVENTCOUNT_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_COARSECFOEST"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_COARSECFOEST_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_COARSECFOEST_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_COARSECFOEST_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_PILOTCFOEST"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PILOTCFOEST_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PILOTCFOEST_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PILOTCFOEST_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_PKTDONE_INTERRUPTSTATUS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDONE_INTERRUPTSTATUS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDONE_INTERRUPTSTATUS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDONE_INTERRUPTSTATUS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_BER_TOTALBITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_BER_TOTALBITS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_BER_TOTALBITS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_BER_TOTALBITS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_BER_ERRORS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_BER_ERRORS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_BER_ERRORS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_BER_ERRORS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_GAINS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_GAINS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_GAINS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_GAINS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_PKTDET_STATUS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_STATUS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_STATUS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_STATUS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_FEC_CONFIG"
    sg_lappend config_table xparam_config_table "C_MEMMAP_FEC_CONFIG_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_FEC_CONFIG_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_FEC_CONFIG_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TX_OFDM_SYMCOUNTS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TX_OFDM_SYMCOUNTS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TX_OFDM_SYMCOUNTS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TX_OFDM_SYMCOUNTS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_OFDM_SYMBOLCOUNTS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_OFDM_SYMBOLCOUNTS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_OFDM_SYMBOLCOUNTS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_OFDM_SYMBOLCOUNTS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_PILOTS_VALUES"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_PILOTS_VALUES_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_PILOTS_VALUES_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_PILOTS_VALUES_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_PILOTS_INDEX"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_PILOTS_INDEX_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_PILOTS_INDEX_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_PILOTS_INDEX_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_INTERRUPT_PKTBUF_CTRL"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_INTERRUPT_PKTBUF_CTRL_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_INTERRUPT_PKTBUF_CTRL_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_INTERRUPT_PKTBUF_CTRL_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_FFT_SCALING"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_FFT_SCALING_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_FFT_SCALING_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_FFT_SCALING_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TX_START_RESET_CONTROL"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TX_START_RESET_CONTROL_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TX_START_RESET_CONTROL_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TX_START_RESET_CONTROL_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TX_CONTROLBITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TX_CONTROLBITS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TX_CONTROLBITS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TX_CONTROLBITS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TX_DELAYS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TX_DELAYS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TX_DELAYS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TX_DELAYS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TX_SCALING"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TX_SCALING_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TX_SCALING_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TX_SCALING_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_PKTDET_THRESHOLDS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_THRESHOLDS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_THRESHOLDS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_THRESHOLDS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_PKTDET_DURATIONS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_DURATIONS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_DURATIONS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_DURATIONS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_PKTDET_AUTOCORRPARAMS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_AUTOCORRPARAMS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_AUTOCORRPARAMS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_AUTOCORRPARAMS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_PKTDET_CONTROLBITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_CONTROLBITS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_CONTROLBITS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_PKTDET_CONTROLBITS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_AF_TXSCALING"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_AF_TXSCALING_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_AF_TXSCALING_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_AF_TXSCALING_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_AF_BLANKING"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_AF_BLANKING_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_AF_BLANKING_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_AF_BLANKING_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_PILOTCALCPARAMS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PILOTCALCPARAMS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PILOTCALCPARAMS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PILOTCALCPARAMS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_CONSTELLATION_SCALING"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_CONSTELLATION_SCALING_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_CONSTELLATION_SCALING_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_CONSTELLATION_SCALING_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_PKTDET_DELAY"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDET_DELAY_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDET_DELAY_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDET_DELAY_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_CHANEST_MINMAG"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_CHANEST_MINMAG_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_CHANEST_MINMAG_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_CHANEST_MINMAG_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_PKTBYTENUMS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTBYTENUMS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTBYTENUMS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTBYTENUMS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_FIXEDPKTLEN"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_FIXEDPKTLEN_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_FIXEDPKTLEN_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_FIXEDPKTLEN_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_PKTDET_LONGCORR_THRESHOLDS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDET_LONGCORR_THRESHOLDS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDET_LONGCORR_THRESHOLDS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDET_LONGCORR_THRESHOLDS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_PKTDET_LONGCORR_PARAMS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDET_LONGCORR_PARAMS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDET_LONGCORR_PARAMS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PKTDET_LONGCORR_PARAMS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_COARSECFO_CORRECTION"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_COARSECFO_CORRECTION_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_COARSECFO_CORRECTION_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_COARSECFO_CORRECTION_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_PRECFO_PILOTCALCCORRECTION"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PRECFO_PILOTCALCCORRECTION_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PRECFO_PILOTCALCCORRECTION_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PRECFO_PILOTCALCCORRECTION_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_PRECFO_OPTIONS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PRECFO_OPTIONS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PRECFO_OPTIONS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_PRECFO_OPTIONS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RX_CONTROLBITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_CONTROLBITS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RX_CONTROLBITS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RX_CONTROLBITS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION3"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION3_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION3_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION3_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION2"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION2_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION2_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION2_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION1"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION1_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION1_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION1_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION0"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION0_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION0_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION0_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH5"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH5_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH5_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH5_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH4"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH4_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH4_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH4_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH3"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH3_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH3_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH3_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH2"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH2_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH2_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH2_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION5"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION5_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION5_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION5_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION4"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION4_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION4_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_ACTION4_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH1"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH1_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH1_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH1_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH0"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH0_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH0_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXRX_AUTOREPLY_MATCH0_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXMODULATION"
    # sg_lappend config_table addr_config_table "C_MEMMAP_TXMODULATION_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_TXMODULATION_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXMODULATION_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXMODULATION_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXMODULATION_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXMODULATION_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_TXHEADERTRANSLATE"
    # sg_lappend config_table addr_config_table "C_MEMMAP_TXHEADERTRANSLATE_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_TXHEADERTRANSLATE_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXHEADERTRANSLATE_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXHEADERTRANSLATE_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_TXHEADERTRANSLATE_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_TXHEADERTRANSLATE_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_CHANNELESTIMATES"
    # sg_lappend config_table addr_config_table "C_MEMMAP_CHANNELESTIMATES_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_CHANNELESTIMATES_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_CHANNELESTIMATES_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_CHANNELESTIMATES_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_CHANNELESTIMATES_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_CHANNELESTIMATES_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_RXMODULATION"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RXMODULATION_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_RXMODULATION_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RXMODULATION_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RXMODULATION_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_RXMODULATION_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_RXMODULATION_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_EVM_PERSYM"
    # sg_lappend config_table addr_config_table "C_MEMMAP_EVM_PERSYM_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_EVM_PERSYM_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_EVM_PERSYM_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_EVM_PERSYM_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_EVM_PERSYM_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_EVM_PERSYM_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_EVM_PERSC"
    # sg_lappend config_table addr_config_table "C_MEMMAP_EVM_PERSC_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_EVM_PERSC_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_EVM_PERSC_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_EVM_PERSC_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_EVM_PERSC_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_EVM_PERSC_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_PKTBUFFREQOFFSETS"
    # sg_lappend config_table addr_config_table "C_MEMMAP_PKTBUFFREQOFFSETS_GRANT"
    # sg_lappend config_table addr_config_table "C_MEMMAP_PKTBUFFREQOFFSETS_REQ"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTBUFFREQOFFSETS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTBUFFREQOFFSETS_BIN_PT"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PKTBUFFREQOFFSETS_DEPTH"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_PKTBUFFREQOFFSETS_ATTR"

    # XPS parameters
    sg_lappend config_table xparam_config_table "DEVICE_ID" "C_BASEADDR"

    # generate xparameters.h
    eval xdefine_include_file $drv_handle "xparameters.h" "OFDM_TXRX_SUPERMIMO_CODED_PLBW" "NUM_INSTANCES" ${xparam_config_table}
    eval sg_xdefine_include_file $drv_handle "xparameters.h" "OFDM_TXRX_SUPERMIMO_CODED_PLBW" ${addr_config_table}
    # generate ofdm_txrx_supermimo_coded_plbw_g.c
    eval xdefine_config_file $drv_handle "ofdm_txrx_supermimo_coded_plbw_g.c" "OFDM_TXRX_SUPERMIMO_CODED_PLBW" ${config_table}
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
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_CREATE    xc_ofdm_txrx_supermimo_coded_plbw_create"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_RELEASE   xc_ofdm_txrx_supermimo_coded_plbw_release"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_OPEN      xc_ofdm_txrx_supermimo_coded_plbw_open"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_CLOSE     xc_ofdm_txrx_supermimo_coded_plbw_close"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_READ      xc_ofdm_txrx_supermimo_coded_plbw_read"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_WRITE     xc_ofdm_txrx_supermimo_coded_plbw_write"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_GET_SHMEM xc_ofdm_txrx_supermimo_coded_plbw_getshmem"

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
