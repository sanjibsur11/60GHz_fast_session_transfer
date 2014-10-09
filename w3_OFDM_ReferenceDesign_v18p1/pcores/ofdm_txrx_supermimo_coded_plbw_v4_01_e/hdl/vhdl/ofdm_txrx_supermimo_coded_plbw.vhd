-------------------------------------------------------------------
-- System Generator version 11.1.00 VHDL source file.
--
-- Copyright(C) 2008 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2007 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity plbaddrpref is
    generic (
        C_BASEADDR : std_logic_vector(31 downto 0) := X"80000000";
        C_HIGHADDR : std_logic_vector(31 downto 0) := X"8000FFFF";
        C_SPLB_DWIDTH         : integer range 32 to 128   := 32;
        C_SPLB_NATIVE_DWIDTH  : integer range 32 to 32    := 32
    );
    port (
        addrpref           : out std_logic_vector(16-1 downto 0);
        sl_rddbus          : out std_logic_vector(0 to C_SPLB_DWIDTH-1);
        plb_wrdbus         : in  std_logic_vector(0 to C_SPLB_DWIDTH-1);
        sgsl_rddbus        : in  std_logic_vector(0 to C_SPLB_NATIVE_DWIDTH-1);
        sgplb_wrdbus       : out std_logic_vector(0 to C_SPLB_NATIVE_DWIDTH-1)
    );
end plbaddrpref;

architecture behavior of plbaddrpref is

signal sl_rddbus_i            : std_logic_vector(0 to C_SPLB_DWIDTH-1);

begin
    addrpref <= C_BASEADDR(32-1 downto 16);

-------------------------------------------------------------------------------
-- Mux/Steer data/be's correctly for connect 32-bit slave to 128-bit plb
-------------------------------------------------------------------------------
GEN_128_TO_32_SLAVE : if C_SPLB_NATIVE_DWIDTH = 32 and C_SPLB_DWIDTH = 128 generate
begin
    -----------------------------------------------------------------------
    -- Map lower rd data to each quarter of the plb slave read bus
    -----------------------------------------------------------------------
    sl_rddbus_i(0 to 31)      <=  sgsl_rddbus(0 to C_SPLB_NATIVE_DWIDTH-1);
    sl_rddbus_i(32 to 63)     <=  sgsl_rddbus(0 to C_SPLB_NATIVE_DWIDTH-1);
    sl_rddbus_i(64 to 95)     <=  sgsl_rddbus(0 to C_SPLB_NATIVE_DWIDTH-1);
    sl_rddbus_i(96 to 127)    <=  sgsl_rddbus(0 to C_SPLB_NATIVE_DWIDTH-1);
end generate GEN_128_TO_32_SLAVE;

-------------------------------------------------------------------------------
-- Mux/Steer data/be's correctly for connect 32-bit slave to 64-bit plb
-------------------------------------------------------------------------------
GEN_64_TO_32_SLAVE : if C_SPLB_NATIVE_DWIDTH = 32 and C_SPLB_DWIDTH = 64 generate
begin
    ---------------------------------------------------------------------------        
    -- Map lower rd data to upper and lower halves of plb slave read bus
    ---------------------------------------------------------------------------        
    sl_rddbus_i(0 to 31)      <=  sgsl_rddbus(0 to C_SPLB_NATIVE_DWIDTH-1);
    sl_rddbus_i(32 to 63)     <=  sgsl_rddbus(0 to C_SPLB_NATIVE_DWIDTH-1);
end generate GEN_64_TO_32_SLAVE;

-------------------------------------------------------------------------------
-- IPIF DWidth = PLB DWidth
-- If IPIF Slave Data width is equal to the PLB Bus Data Width
-- Then BE and Read Data Bus map directly to eachother.
-------------------------------------------------------------------------------
GEN_FOR_EQUAL_SLAVE : if C_SPLB_NATIVE_DWIDTH = C_SPLB_DWIDTH generate
    sl_rddbus_i    <= sgsl_rddbus;
end generate GEN_FOR_EQUAL_SLAVE;

    sl_rddbus       <= sl_rddbus_i;
    sgplb_wrdbus    <= plb_wrdbus(0 to C_SPLB_NATIVE_DWIDTH-1);

end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity ofdm_txrx_supermimo_coded_plbw is
  generic (
    C_BASEADDR: std_logic_vector(31 downto 0) := X"80000000";
    C_HIGHADDR: std_logic_vector(31 downto 0) := X"80000FFF";
    C_SPLB_AWIDTH: integer := 0;
    C_SPLB_DWIDTH: integer := 0;
    C_SPLB_MID_WIDTH: integer := 0;
    C_SPLB_NATIVE_DWIDTH: integer := 0;
    C_SPLB_NUM_MASTERS: integer := 0;
    C_SPLB_SUPPORT_BURSTS: integer := 0
  );
  port (
    bram_datain: in std_logic_vector(0 to 63); 
    debug_chipscopetrig1: in std_logic; 
    ext_pktdet: in std_logic; 
    ext_txen: in std_logic; 
    idlefordifs_disable: in std_logic; 
    plb_abus: in std_logic_vector(0 to 31); 
    plb_pavalid: in std_logic; 
    plb_rnw: in std_logic; 
    plb_wrdbus: in std_logic_vector(0 to C_SPLB_DWIDTH-1); 
    rssi_anta: in std_logic_vector(0 to 9); 
    rssi_antb: in std_logic_vector(0 to 9); 
    rx_anta_adci: in std_logic_vector(0 to 13); 
    rx_anta_adcq: in std_logic_vector(0 to 13); 
    rx_anta_agc_done: in std_logic; 
    rx_anta_gainbb: in std_logic_vector(0 to 4); 
    rx_anta_gainrf: in std_logic_vector(0 to 1); 
    rx_antb_adci: in std_logic_vector(0 to 13); 
    rx_antb_adcq: in std_logic_vector(0 to 13); 
    rx_antb_agc_done: in std_logic; 
    rx_antb_gainbb: in std_logic_vector(0 to 4); 
    rx_antb_gainrf: in std_logic_vector(0 to 1); 
    rx_pktdetreset_in: in std_logic; 
    rx_reset: in std_logic; 
    splb_clk: in std_logic; 
    splb_rst: in std_logic; 
    sysgen_clk: in std_logic; 
    tx_anta_i_div1: in std_logic_vector(0 to 15); 
    tx_anta_q_div1: in std_logic_vector(0 to 15); 
    tx_antb_i_div1: in std_logic_vector(0 to 15); 
    tx_antb_q_div1: in std_logic_vector(0 to 15); 
    tx_reset: in std_logic; 
    tx_starttransmit: in std_logic; 
    bram_addr: out std_logic_vector(0 to 31); 
    bram_dout: out std_logic_vector(0 to 63); 
    bram_en: out std_logic; 
    bram_reset: out std_logic; 
    bram_wen: out std_logic_vector(0 to 7); 
    debug_pktdetautocorr: out std_logic; 
    debug_pktdetrssi: out std_logic; 
    idlefordifs: out std_logic; 
    pktdet: out std_logic; 
    radio_rxen: out std_logic; 
    radio_txen: out std_logic; 
    rssi_clk_out: out std_logic; 
    rx_debug_antsel: out std_logic; 
    rx_debug_eq_i: out std_logic_vector(0 to 13); 
    rx_debug_eq_q: out std_logic_vector(0 to 13); 
    rx_debug_evm: out std_logic_vector(0 to 13); 
    rx_debug_payload: out std_logic; 
    rx_debug_phasecorrect: out std_logic_vector(0 to 13); 
    rx_debug_phaseerror: out std_logic_vector(0 to 13); 
    rx_debug_pktdone: out std_logic; 
    rx_int_badheader: out std_logic; 
    rx_int_badpkt: out std_logic; 
    rx_int_goodheader: out std_logic; 
    rx_int_goodpkt: out std_logic; 
    rx_pktdetreset: out std_logic; 
    sl_addrack: out std_logic; 
    sl_rdcomp: out std_logic; 
    sl_rddack: out std_logic; 
    sl_rddbus: out std_logic_vector(0 to C_SPLB_DWIDTH-1); 
    sl_wait: out std_logic; 
    sl_wrcomp: out std_logic; 
    sl_wrdack: out std_logic; 
    tx_anta_dac_i: out std_logic_vector(0 to 15); 
    tx_anta_dac_q: out std_logic_vector(0 to 15); 
    tx_anta_i_div4: out std_logic_vector(0 to 15); 
    tx_anta_q_div4: out std_logic_vector(0 to 15); 
    tx_antb_dac_i: out std_logic_vector(0 to 15); 
    tx_antb_dac_q: out std_logic_vector(0 to 15); 
    tx_antb_i_div4: out std_logic_vector(0 to 15); 
    tx_antb_q_div4: out std_logic_vector(0 to 15); 
    tx_debug_pktrunning: out std_logic; 
    tx_pktdone: out std_logic; 
    tx_pktrunning_d0: out std_logic; 
    tx_pktrunning_d1: out std_logic
  );
end ofdm_txrx_supermimo_coded_plbw;

architecture structural of ofdm_txrx_supermimo_coded_plbw is
  signal bram_addr_x0: std_logic_vector(31 downto 0);
  signal bram_datain_x0: std_logic_vector(63 downto 0);
  signal bram_dout_x0: std_logic_vector(63 downto 0);
  signal bram_en_x0: std_logic;
  signal bram_reset_x0: std_logic;
  signal bram_wen_x0: std_logic_vector(7 downto 0);
  signal clk: std_logic;
  signal debug_chipscopetrig1_x0: std_logic;
  signal debug_pktdetautocorr_x0: std_logic;
  signal debug_pktdetrssi_x0: std_logic;
  signal ext_pktdet_x0: std_logic;
  signal ext_txen_x0: std_logic;
  signal idlefordifs_disable_x0: std_logic;
  signal idlefordifs_x0: std_logic;
  signal pktdet_x0: std_logic;
  signal plb_abus_x0: std_logic_vector(31 downto 0);
  signal plb_pavalid_x0: std_logic;
  signal plb_rnw_x0: std_logic;
  signal plbaddrpref_addrpref_net: std_logic_vector(15 downto 0);
  signal plbaddrpref_plb_wrdbus_net: std_logic_vector(C_SPLB_DWIDTH-1 downto 0);
  signal plbaddrpref_sgplb_wrdbus_net: std_logic_vector(31 downto 0);
  signal plbaddrpref_sgsl_rddbus_net: std_logic_vector(31 downto 0);
  signal plbaddrpref_sl_rddbus_net: std_logic_vector(C_SPLB_DWIDTH-1 downto 0);
  signal radio_rxen_x0: std_logic;
  signal radio_txen_x0: std_logic;
  signal rssi_anta_x0: std_logic_vector(9 downto 0);
  signal rssi_antb_x0: std_logic_vector(9 downto 0);
  signal rssi_clk_out_x0: std_logic;
  signal rx_anta_adci_x0: std_logic_vector(13 downto 0);
  signal rx_anta_adcq_x0: std_logic_vector(13 downto 0);
  signal rx_anta_agc_done_x0: std_logic;
  signal rx_anta_gainbb_x0: std_logic_vector(4 downto 0);
  signal rx_anta_gainrf_x0: std_logic_vector(1 downto 0);
  signal rx_antb_adci_x0: std_logic_vector(13 downto 0);
  signal rx_antb_adcq_x0: std_logic_vector(13 downto 0);
  signal rx_antb_agc_done_x0: std_logic;
  signal rx_antb_gainbb_x0: std_logic_vector(4 downto 0);
  signal rx_antb_gainrf_x0: std_logic_vector(1 downto 0);
  signal rx_debug_antsel_x0: std_logic;
  signal rx_debug_eq_i_x0: std_logic_vector(13 downto 0);
  signal rx_debug_eq_q_x0: std_logic_vector(13 downto 0);
  signal rx_debug_evm_x0: std_logic_vector(13 downto 0);
  signal rx_debug_payload_x0: std_logic;
  signal rx_debug_phasecorrect_x0: std_logic_vector(13 downto 0);
  signal rx_debug_phaseerror_x0: std_logic_vector(13 downto 0);
  signal rx_debug_pktdone_x0: std_logic;
  signal rx_int_badheader_x0: std_logic;
  signal rx_int_badpkt_x0: std_logic;
  signal rx_int_goodheader_x0: std_logic;
  signal rx_int_goodpkt_x0: std_logic;
  signal rx_pktdetreset_in_x0: std_logic;
  signal rx_pktdetreset_x0: std_logic;
  signal rx_reset_x0: std_logic;
  signal sl_addrack_x0: std_logic;
  signal sl_rdcomp_x0: std_logic;
  signal sl_rddack_x0: std_logic;
  signal sl_wait_x0: std_logic;
  signal sl_wrcomp_x0: std_logic;
  signal sl_wrdack_x0: std_logic;
  signal splb_rst_x0: std_logic;
  signal tx_anta_dac_i_x0: std_logic_vector(15 downto 0);
  signal tx_anta_dac_q_x0: std_logic_vector(15 downto 0);
  signal tx_anta_i_div1_x0: std_logic_vector(15 downto 0);
  signal tx_anta_i_div4_x0: std_logic_vector(15 downto 0);
  signal tx_anta_q_div1_x0: std_logic_vector(15 downto 0);
  signal tx_anta_q_div4_x0: std_logic_vector(15 downto 0);
  signal tx_antb_dac_i_x0: std_logic_vector(15 downto 0);
  signal tx_antb_dac_q_x0: std_logic_vector(15 downto 0);
  signal tx_antb_i_div1_x0: std_logic_vector(15 downto 0);
  signal tx_antb_i_div4_x0: std_logic_vector(15 downto 0);
  signal tx_antb_q_div1_x0: std_logic_vector(15 downto 0);
  signal tx_antb_q_div4_x0: std_logic_vector(15 downto 0);
  signal tx_debug_pktrunning_x0: std_logic;
  signal tx_pktdone_x0: std_logic;
  signal tx_pktrunning_d0_x0: std_logic;
  signal tx_pktrunning_d1_x0: std_logic;
  signal tx_reset_x0: std_logic;
  signal tx_starttransmit_x0: std_logic;
  signal xps_clk: std_logic;

begin
  bram_datain_x0 <= bram_datain;
  debug_chipscopetrig1_x0 <= debug_chipscopetrig1;
  ext_pktdet_x0 <= ext_pktdet;
  ext_txen_x0 <= ext_txen;
  idlefordifs_disable_x0 <= idlefordifs_disable;
  plb_abus_x0 <= plb_abus;
  plb_pavalid_x0 <= plb_pavalid;
  plb_rnw_x0 <= plb_rnw;
  plbaddrpref_plb_wrdbus_net <= plb_wrdbus;
  rssi_anta_x0 <= rssi_anta;
  rssi_antb_x0 <= rssi_antb;
  rx_anta_adci_x0 <= rx_anta_adci;
  rx_anta_adcq_x0 <= rx_anta_adcq;
  rx_anta_agc_done_x0 <= rx_anta_agc_done;
  rx_anta_gainbb_x0 <= rx_anta_gainbb;
  rx_anta_gainrf_x0 <= rx_anta_gainrf;
  rx_antb_adci_x0 <= rx_antb_adci;
  rx_antb_adcq_x0 <= rx_antb_adcq;
  rx_antb_agc_done_x0 <= rx_antb_agc_done;
  rx_antb_gainbb_x0 <= rx_antb_gainbb;
  rx_antb_gainrf_x0 <= rx_antb_gainrf;
  rx_pktdetreset_in_x0 <= rx_pktdetreset_in;
  rx_reset_x0 <= rx_reset;
  xps_clk <= splb_clk;
  splb_rst_x0 <= splb_rst;
  clk <= sysgen_clk;
  tx_anta_i_div1_x0 <= tx_anta_i_div1;
  tx_anta_q_div1_x0 <= tx_anta_q_div1;
  tx_antb_i_div1_x0 <= tx_antb_i_div1;
  tx_antb_q_div1_x0 <= tx_antb_q_div1;
  tx_reset_x0 <= tx_reset;
  tx_starttransmit_x0 <= tx_starttransmit;
  bram_addr <= bram_addr_x0;
  bram_dout <= bram_dout_x0;
  bram_en <= bram_en_x0;
  bram_reset <= bram_reset_x0;
  bram_wen <= bram_wen_x0;
  debug_pktdetautocorr <= debug_pktdetautocorr_x0;
  debug_pktdetrssi <= debug_pktdetrssi_x0;
  idlefordifs <= idlefordifs_x0;
  pktdet <= pktdet_x0;
  radio_rxen <= radio_rxen_x0;
  radio_txen <= radio_txen_x0;
  rssi_clk_out <= rssi_clk_out_x0;
  rx_debug_antsel <= rx_debug_antsel_x0;
  rx_debug_eq_i <= rx_debug_eq_i_x0;
  rx_debug_eq_q <= rx_debug_eq_q_x0;
  rx_debug_evm <= rx_debug_evm_x0;
  rx_debug_payload <= rx_debug_payload_x0;
  rx_debug_phasecorrect <= rx_debug_phasecorrect_x0;
  rx_debug_phaseerror <= rx_debug_phaseerror_x0;
  rx_debug_pktdone <= rx_debug_pktdone_x0;
  rx_int_badheader <= rx_int_badheader_x0;
  rx_int_badpkt <= rx_int_badpkt_x0;
  rx_int_goodheader <= rx_int_goodheader_x0;
  rx_int_goodpkt <= rx_int_goodpkt_x0;
  rx_pktdetreset <= rx_pktdetreset_x0;
  sl_addrack <= sl_addrack_x0;
  sl_rdcomp <= sl_rdcomp_x0;
  sl_rddack <= sl_rddack_x0;
  sl_rddbus <= plbaddrpref_sl_rddbus_net;
  sl_wait <= sl_wait_x0;
  sl_wrcomp <= sl_wrcomp_x0;
  sl_wrdack <= sl_wrdack_x0;
  tx_anta_dac_i <= tx_anta_dac_i_x0;
  tx_anta_dac_q <= tx_anta_dac_q_x0;
  tx_anta_i_div4 <= tx_anta_i_div4_x0;
  tx_anta_q_div4 <= tx_anta_q_div4_x0;
  tx_antb_dac_i <= tx_antb_dac_i_x0;
  tx_antb_dac_q <= tx_antb_dac_q_x0;
  tx_antb_i_div4 <= tx_antb_i_div4_x0;
  tx_antb_q_div4 <= tx_antb_q_div4_x0;
  tx_debug_pktrunning <= tx_debug_pktrunning_x0;
  tx_pktdone <= tx_pktdone_x0;
  tx_pktrunning_d0 <= tx_pktrunning_d0_x0;
  tx_pktrunning_d1 <= tx_pktrunning_d1_x0;

  plbaddrpref_x0: entity work.plbaddrpref
    generic map (
      C_BASEADDR => C_BASEADDR,
      C_HIGHADDR => C_HIGHADDR,
      C_SPLB_DWIDTH => C_SPLB_DWIDTH,
      C_SPLB_NATIVE_DWIDTH => C_SPLB_NATIVE_DWIDTH
    )
    port map (
      plb_wrdbus => plbaddrpref_plb_wrdbus_net,
      sgsl_rddbus => plbaddrpref_sgsl_rddbus_net,
      addrpref => plbaddrpref_addrpref_net,
      sgplb_wrdbus => plbaddrpref_sgplb_wrdbus_net,
      sl_rddbus => plbaddrpref_sl_rddbus_net
    );

  sysgen_dut: entity work.ofdm_txrx_supermimo_coded_cw
    port map (
      bram_datain => bram_datain_x0,
      clk => clk,
      debug_chipscopetrig1 => debug_chipscopetrig1_x0,
      ext_pktdet => ext_pktdet_x0,
      ext_txen => ext_txen_x0,
      idlefordifs_disable => idlefordifs_disable_x0,
      plb_abus => plb_abus_x0,
      plb_pavalid => plb_pavalid_x0,
      plb_rnw => plb_rnw_x0,
      plb_wrdbus => plbaddrpref_sgplb_wrdbus_net,
      rssi_anta => rssi_anta_x0,
      rssi_antb => rssi_antb_x0,
      rx_anta_adci => rx_anta_adci_x0,
      rx_anta_adcq => rx_anta_adcq_x0,
      rx_anta_agc_done => rx_anta_agc_done_x0,
      rx_anta_gainbb => rx_anta_gainbb_x0,
      rx_anta_gainrf => rx_anta_gainrf_x0,
      rx_antb_adci => rx_antb_adci_x0,
      rx_antb_adcq => rx_antb_adcq_x0,
      rx_antb_agc_done => rx_antb_agc_done_x0,
      rx_antb_gainbb => rx_antb_gainbb_x0,
      rx_antb_gainrf => rx_antb_gainrf_x0,
      rx_pktdetreset_in => rx_pktdetreset_in_x0,
      rx_reset => rx_reset_x0,
      sg_plb_addrpref => plbaddrpref_addrpref_net,
      splb_rst => splb_rst_x0,
      tx_anta_i_div1 => tx_anta_i_div1_x0,
      tx_anta_q_div1 => tx_anta_q_div1_x0,
      tx_antb_i_div1 => tx_antb_i_div1_x0,
      tx_antb_q_div1 => tx_antb_q_div1_x0,
      tx_reset => tx_reset_x0,
      tx_starttransmit => tx_starttransmit_x0,
      xps_clk => xps_clk,
      bram_addr => bram_addr_x0,
      bram_dout => bram_dout_x0,
      bram_en => bram_en_x0,
      bram_reset => bram_reset_x0,
      bram_wen => bram_wen_x0,
      debug_pktdetautocorr => debug_pktdetautocorr_x0,
      debug_pktdetrssi => debug_pktdetrssi_x0,
      idlefordifs => idlefordifs_x0,
      pktdet => pktdet_x0,
      radio_rxen => radio_rxen_x0,
      radio_txen => radio_txen_x0,
      rssi_clk_out => rssi_clk_out_x0,
      rx_debug_antsel => rx_debug_antsel_x0,
      rx_debug_eq_i => rx_debug_eq_i_x0,
      rx_debug_eq_q => rx_debug_eq_q_x0,
      rx_debug_evm => rx_debug_evm_x0,
      rx_debug_payload => rx_debug_payload_x0,
      rx_debug_phasecorrect => rx_debug_phasecorrect_x0,
      rx_debug_phaseerror => rx_debug_phaseerror_x0,
      rx_debug_pktdone => rx_debug_pktdone_x0,
      rx_int_badheader => rx_int_badheader_x0,
      rx_int_badpkt => rx_int_badpkt_x0,
      rx_int_goodheader => rx_int_goodheader_x0,
      rx_int_goodpkt => rx_int_goodpkt_x0,
      rx_pktdetreset => rx_pktdetreset_x0,
      sl_addrack => sl_addrack_x0,
      sl_rdcomp => sl_rdcomp_x0,
      sl_rddack => sl_rddack_x0,
      sl_rddbus => plbaddrpref_sgsl_rddbus_net,
      sl_wait => sl_wait_x0,
      sl_wrcomp => sl_wrcomp_x0,
      sl_wrdack => sl_wrdack_x0,
      tx_anta_dac_i => tx_anta_dac_i_x0,
      tx_anta_dac_q => tx_anta_dac_q_x0,
      tx_anta_i_div4 => tx_anta_i_div4_x0,
      tx_anta_q_div4 => tx_anta_q_div4_x0,
      tx_antb_dac_i => tx_antb_dac_i_x0,
      tx_antb_dac_q => tx_antb_dac_q_x0,
      tx_antb_i_div4 => tx_antb_i_div4_x0,
      tx_antb_q_div4 => tx_antb_q_div4_x0,
      tx_debug_pktrunning => tx_debug_pktrunning_x0,
      tx_pktdone => tx_pktdone_x0,
      tx_pktrunning_d0 => tx_pktrunning_d0_x0,
      tx_pktrunning_d1 => tx_pktrunning_d1_x0
    );

end structural;
