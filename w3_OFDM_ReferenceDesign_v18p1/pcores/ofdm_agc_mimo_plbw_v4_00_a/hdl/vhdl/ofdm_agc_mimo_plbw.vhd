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
        addrpref           : out std_logic_vector(20-1 downto 0);
        sl_rddbus          : out std_logic_vector(0 to C_SPLB_DWIDTH-1);
        plb_wrdbus         : in  std_logic_vector(0 to C_SPLB_DWIDTH-1);
        sgsl_rddbus        : in  std_logic_vector(0 to C_SPLB_NATIVE_DWIDTH-1);
        sgplb_wrdbus       : out std_logic_vector(0 to C_SPLB_NATIVE_DWIDTH-1)
    );
end plbaddrpref;

architecture behavior of plbaddrpref is

signal sl_rddbus_i            : std_logic_vector(0 to C_SPLB_DWIDTH-1);

begin
    addrpref <= C_BASEADDR(32-1 downto 12);

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

entity ofdm_agc_mimo_plbw is
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
    i_in_a: in std_logic_vector(0 to 13); 
    i_in_b: in std_logic_vector(0 to 13); 
    packet_in: in std_logic; 
    plb_abus: in std_logic_vector(0 to 31); 
    plb_pavalid: in std_logic; 
    plb_rnw: in std_logic; 
    plb_wrdbus: in std_logic_vector(0 to C_SPLB_DWIDTH-1); 
    q_in_a: in std_logic_vector(0 to 13); 
    q_in_b: in std_logic_vector(0 to 13); 
    reset_in: in std_logic; 
    rssi_in_a: in std_logic_vector(0 to 9); 
    rssi_in_b: in std_logic_vector(0 to 9); 
    splb_clk: in std_logic; 
    splb_rst: in std_logic; 
    sysgen_clk: in std_logic; 
    done_a: out std_logic; 
    done_b: out std_logic; 
    g_bb_a: out std_logic_vector(0 to 4); 
    g_bb_b: out std_logic_vector(0 to 4); 
    g_rf_a: out std_logic_vector(0 to 1); 
    g_rf_b: out std_logic_vector(0 to 1); 
    i_out_a: out std_logic_vector(0 to 13); 
    i_out_b: out std_logic_vector(0 to 13); 
    q_out_a: out std_logic_vector(0 to 13); 
    q_out_b: out std_logic_vector(0 to 13); 
    rxhp_a: out std_logic; 
    rxhp_b: out std_logic; 
    sl_addrack: out std_logic; 
    sl_rdcomp: out std_logic; 
    sl_rddack: out std_logic; 
    sl_rddbus: out std_logic_vector(0 to C_SPLB_DWIDTH-1); 
    sl_wait: out std_logic; 
    sl_wrcomp: out std_logic; 
    sl_wrdack: out std_logic
  );
end ofdm_agc_mimo_plbw;

architecture structural of ofdm_agc_mimo_plbw is
  signal clk: std_logic;
  signal done_a_x0: std_logic;
  signal done_b_x0: std_logic;
  signal g_bb_a_x0: std_logic_vector(4 downto 0);
  signal g_bb_b_x0: std_logic_vector(4 downto 0);
  signal g_rf_a_x0: std_logic_vector(1 downto 0);
  signal g_rf_b_x0: std_logic_vector(1 downto 0);
  signal i_in_a_x0: std_logic_vector(13 downto 0);
  signal i_in_b_x0: std_logic_vector(13 downto 0);
  signal i_out_a_x0: std_logic_vector(13 downto 0);
  signal i_out_b_x0: std_logic_vector(13 downto 0);
  signal packet_in_x0: std_logic;
  signal plb_abus_x0: std_logic_vector(31 downto 0);
  signal plb_pavalid_x0: std_logic;
  signal plb_rnw_x0: std_logic;
  signal plbaddrpref_addrpref_net: std_logic_vector(19 downto 0);
  signal plbaddrpref_plb_wrdbus_net: std_logic_vector(C_SPLB_DWIDTH-1 downto 0);
  signal plbaddrpref_sgplb_wrdbus_net: std_logic_vector(31 downto 0);
  signal plbaddrpref_sgsl_rddbus_net: std_logic_vector(31 downto 0);
  signal plbaddrpref_sl_rddbus_net: std_logic_vector(C_SPLB_DWIDTH-1 downto 0);
  signal q_in_a_x0: std_logic_vector(13 downto 0);
  signal q_in_b_x0: std_logic_vector(13 downto 0);
  signal q_out_a_x0: std_logic_vector(13 downto 0);
  signal q_out_b_x0: std_logic_vector(13 downto 0);
  signal reset_in_x0: std_logic;
  signal rssi_in_a_x0: std_logic_vector(9 downto 0);
  signal rssi_in_b_x0: std_logic_vector(9 downto 0);
  signal rxhp_a_x0: std_logic;
  signal rxhp_b_x0: std_logic;
  signal sl_addrack_x0: std_logic;
  signal sl_rdcomp_x0: std_logic;
  signal sl_rddack_x0: std_logic;
  signal sl_wait_x0: std_logic;
  signal sl_wrcomp_x0: std_logic;
  signal sl_wrdack_x0: std_logic;
  signal splb_rst_x0: std_logic;
  signal xps_clk: std_logic;

begin
  i_in_a_x0 <= i_in_a;
  i_in_b_x0 <= i_in_b;
  packet_in_x0 <= packet_in;
  plb_abus_x0 <= plb_abus;
  plb_pavalid_x0 <= plb_pavalid;
  plb_rnw_x0 <= plb_rnw;
  plbaddrpref_plb_wrdbus_net <= plb_wrdbus;
  q_in_a_x0 <= q_in_a;
  q_in_b_x0 <= q_in_b;
  reset_in_x0 <= reset_in;
  rssi_in_a_x0 <= rssi_in_a;
  rssi_in_b_x0 <= rssi_in_b;
  xps_clk <= splb_clk;
  splb_rst_x0 <= splb_rst;
  clk <= sysgen_clk;
  done_a <= done_a_x0;
  done_b <= done_b_x0;
  g_bb_a <= g_bb_a_x0;
  g_bb_b <= g_bb_b_x0;
  g_rf_a <= g_rf_a_x0;
  g_rf_b <= g_rf_b_x0;
  i_out_a <= i_out_a_x0;
  i_out_b <= i_out_b_x0;
  q_out_a <= q_out_a_x0;
  q_out_b <= q_out_b_x0;
  rxhp_a <= rxhp_a_x0;
  rxhp_b <= rxhp_b_x0;
  sl_addrack <= sl_addrack_x0;
  sl_rdcomp <= sl_rdcomp_x0;
  sl_rddack <= sl_rddack_x0;
  sl_rddbus <= plbaddrpref_sl_rddbus_net;
  sl_wait <= sl_wait_x0;
  sl_wrcomp <= sl_wrcomp_x0;
  sl_wrdack <= sl_wrdack_x0;

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

  sysgen_dut: entity work.ofdm_agc_mimo_cw
    port map (
      clk => clk,
      i_in_a => i_in_a_x0,
      i_in_b => i_in_b_x0,
      packet_in => packet_in_x0,
      plb_abus => plb_abus_x0,
      plb_pavalid => plb_pavalid_x0,
      plb_rnw => plb_rnw_x0,
      plb_wrdbus => plbaddrpref_sgplb_wrdbus_net,
      q_in_a => q_in_a_x0,
      q_in_b => q_in_b_x0,
      reset_in => reset_in_x0,
      rssi_in_a => rssi_in_a_x0,
      rssi_in_b => rssi_in_b_x0,
      sg_plb_addrpref => plbaddrpref_addrpref_net,
      splb_rst => splb_rst_x0,
      xps_clk => xps_clk,
      done_a => done_a_x0,
      done_b => done_b_x0,
      g_bb_a => g_bb_a_x0,
      g_bb_b => g_bb_b_x0,
      g_rf_a => g_rf_a_x0,
      g_rf_b => g_rf_b_x0,
      i_out_a => i_out_a_x0,
      i_out_b => i_out_b_x0,
      q_out_a => q_out_a_x0,
      q_out_b => q_out_b_x0,
      rxhp_a => rxhp_a_x0,
      rxhp_b => rxhp_b_x0,
      sl_addrack => sl_addrack_x0,
      sl_rdcomp => sl_rdcomp_x0,
      sl_rddack => sl_rddack_x0,
      sl_rddbus => plbaddrpref_sgsl_rddbus_net,
      sl_wait => sl_wait_x0,
      sl_wrcomp => sl_wrcomp_x0,
      sl_wrdack => sl_wrdack_x0
    );

end structural;
