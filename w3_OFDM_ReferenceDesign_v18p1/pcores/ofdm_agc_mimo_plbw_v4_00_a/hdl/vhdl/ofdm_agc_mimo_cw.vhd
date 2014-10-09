
-------------------------------------------------------------------
-- System Generator version 13.4 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------

-------------------------------------------------------------------
-- System Generator version 13.4 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
entity xlclockdriver is
  generic (
    period: integer := 2;
    log_2_period: integer := 0;
    pipeline_regs: integer := 5;
    use_bufg: integer := 0
  );
  port (
    sysclk: in std_logic;
    sysclr: in std_logic;
    sysce: in std_logic;
    clk: out std_logic;
    clr: out std_logic;
    ce: out std_logic;
    ce_logic: out std_logic
  );
end xlclockdriver;
architecture behavior of xlclockdriver is
  component bufg
    port (
      i: in std_logic;
      o: out std_logic
    );
  end component;
  component synth_reg_w_init
    generic (
      width: integer;
      init_index: integer;
      init_value: bit_vector;
      latency: integer
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  function size_of_uint(inp: integer; power_of_2: boolean)
    return integer
  is
    constant inp_vec: std_logic_vector(31 downto 0) :=
      integer_to_std_logic_vector(inp,32, xlUnsigned);
    variable result: integer;
  begin
    result := 32;
    for i in 0 to 31 loop
      if inp_vec(i) = '1' then
        result := i;
      end if;
    end loop;
    if power_of_2 then
      return result;
    else
      return result+1;
    end if;
  end;
  function is_power_of_2(inp: std_logic_vector)
    return boolean
  is
    constant width: integer := inp'length;
    variable vec: std_logic_vector(width - 1 downto 0);
    variable single_bit_set: boolean;
    variable more_than_one_bit_set: boolean;
    variable result: boolean;
  begin
    vec := inp;
    single_bit_set := false;
    more_than_one_bit_set := false;
    -- synopsys translate_off
    if (is_XorU(vec)) then
      return false;
    end if;
     -- synopsys translate_on
    if width > 0 then
      for i in 0 to width - 1 loop
        if vec(i) = '1' then
          if single_bit_set then
            more_than_one_bit_set := true;
          end if;
          single_bit_set := true;
        end if;
      end loop;
    end if;
    if (single_bit_set and not(more_than_one_bit_set)) then
      result := true;
    else
      result := false;
    end if;
    return result;
  end;
  function ce_reg_init_val(index, period : integer)
    return integer
  is
     variable result: integer;
   begin
      result := 0;
      if ((index mod period) = 0) then
          result := 1;
      end if;
      return result;
  end;
  function remaining_pipe_regs(num_pipeline_regs, period : integer)
    return integer
  is
     variable factor, result: integer;
  begin
      factor := (num_pipeline_regs / period);
      result := num_pipeline_regs - (period * factor) + 1;
      return result;
  end;

  function sg_min(L, R: INTEGER) return INTEGER is
  begin
      if L < R then
            return L;
      else
            return R;
      end if;
  end;
  constant max_pipeline_regs : integer := 8;
  constant pipe_regs : integer := 5;
  constant num_pipeline_regs : integer := sg_min(pipeline_regs, max_pipeline_regs);
  constant rem_pipeline_regs : integer := remaining_pipe_regs(num_pipeline_regs,period);
  constant period_floor: integer := max(2, period);
  constant power_of_2_counter: boolean :=
    is_power_of_2(integer_to_std_logic_vector(period_floor,32, xlUnsigned));
  constant cnt_width: integer :=
    size_of_uint(period_floor, power_of_2_counter);
  constant clk_for_ce_pulse_minus1: std_logic_vector(cnt_width - 1 downto 0) :=
    integer_to_std_logic_vector((period_floor - 2),cnt_width, xlUnsigned);
  constant clk_for_ce_pulse_minus2: std_logic_vector(cnt_width - 1 downto 0) :=
    integer_to_std_logic_vector(max(0,period - 3),cnt_width, xlUnsigned);
  constant clk_for_ce_pulse_minus_regs: std_logic_vector(cnt_width - 1 downto 0) :=
    integer_to_std_logic_vector(max(0,period - rem_pipeline_regs),cnt_width, xlUnsigned);
  signal clk_num: unsigned(cnt_width - 1 downto 0) := (others => '0');
  signal ce_vec : std_logic_vector(num_pipeline_regs downto 0);
  attribute MAX_FANOUT : string;
  attribute MAX_FANOUT of ce_vec:signal is "REDUCE";
  signal ce_vec_logic : std_logic_vector(num_pipeline_regs downto 0);
  attribute MAX_FANOUT of ce_vec_logic:signal is "REDUCE";
  signal internal_ce: std_logic_vector(0 downto 0);
  signal internal_ce_logic: std_logic_vector(0 downto 0);
  signal cnt_clr, cnt_clr_dly: std_logic_vector (0 downto 0);
begin
  clk <= sysclk;
  clr <= sysclr;
  cntr_gen: process(sysclk)
  begin
    if sysclk'event and sysclk = '1'  then
      if (sysce = '1') then
        if ((cnt_clr_dly(0) = '1') or (sysclr = '1')) then
          clk_num <= (others => '0');
        else
          clk_num <= clk_num + 1;
        end if;
    end if;
    end if;
  end process;
  clr_gen: process(clk_num, sysclr)
  begin
    if power_of_2_counter then
      cnt_clr(0) <= sysclr;
    else
      if (unsigned_to_std_logic_vector(clk_num) = clk_for_ce_pulse_minus1
          or sysclr = '1') then
        cnt_clr(0) <= '1';
      else
        cnt_clr(0) <= '0';
      end if;
    end if;
  end process;
  clr_reg: synth_reg_w_init
    generic map (
      width => 1,
      init_index => 0,
      init_value => b"0000",
      latency => 1
    )
    port map (
      i => cnt_clr,
      ce => sysce,
      clr => sysclr,
      clk => sysclk,
      o => cnt_clr_dly
    );
  pipelined_ce : if period > 1 generate
      ce_gen: process(clk_num)
      begin
          if unsigned_to_std_logic_vector(clk_num) = clk_for_ce_pulse_minus_regs then
              ce_vec(num_pipeline_regs) <= '1';
          else
              ce_vec(num_pipeline_regs) <= '0';
          end if;
      end process;
      ce_pipeline: for index in num_pipeline_regs downto 1 generate
          ce_reg : synth_reg_w_init
              generic map (
                  width => 1,
                  init_index => ce_reg_init_val(index, period),
                  init_value => b"0000",
                  latency => 1
                  )
              port map (
                  i => ce_vec(index downto index),
                  ce => sysce,
                  clr => sysclr,
                  clk => sysclk,
                  o => ce_vec(index-1 downto index-1)
                  );
      end generate;
      internal_ce <= ce_vec(0 downto 0);
  end generate;
  pipelined_ce_logic: if period > 1 generate
      ce_gen_logic: process(clk_num)
      begin
          if unsigned_to_std_logic_vector(clk_num) = clk_for_ce_pulse_minus_regs then
              ce_vec_logic(num_pipeline_regs) <= '1';
          else
              ce_vec_logic(num_pipeline_regs) <= '0';
          end if;
      end process;
      ce_logic_pipeline: for index in num_pipeline_regs downto 1 generate
          ce_logic_reg : synth_reg_w_init
              generic map (
                  width => 1,
                  init_index => ce_reg_init_val(index, period),
                  init_value => b"0000",
                  latency => 1
                  )
              port map (
                  i => ce_vec_logic(index downto index),
                  ce => sysce,
                  clr => sysclr,
                  clk => sysclk,
                  o => ce_vec_logic(index-1 downto index-1)
                  );
      end generate;
      internal_ce_logic <= ce_vec_logic(0 downto 0);
  end generate;
  use_bufg_true: if period > 1 and use_bufg = 1 generate
    ce_bufg_inst: bufg
      port map (
        i => internal_ce(0),
        o => ce
      );
    ce_bufg_inst_logic: bufg
      port map (
        i => internal_ce_logic(0),
        o => ce_logic
      );
  end generate;
  use_bufg_false: if period > 1 and (use_bufg = 0) generate
    ce <= internal_ce(0);
    ce_logic <= internal_ce_logic(0);
  end generate;
  generate_system_clk: if period = 1 generate
    ce <= sysce;
    ce_logic <= sysce;
  end generate;
end architecture behavior;

-------------------------------------------------------------------
-- System Generator version 13.4 VHDL source file.
--
-- Copyright(C) 2011 by Xilinx, Inc.  All rights reserved.  This
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
-- text at all times.  (c) Copyright 1995-2011 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
entity xland2 is
  port (
    a : in std_logic;
    b : in std_logic;
    dout : out std_logic
    );
end xland2;
architecture behavior of xland2 is
begin
    dout <= a and b;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity default_clock_driver is
  port (
    sysce: in std_logic; 
    sysce_clr: in std_logic; 
    sysclk: in std_logic; 
    ce_1: out std_logic; 
    ce_2: out std_logic; 
    ce_4: out std_logic; 
    clk_1: out std_logic; 
    clk_2: out std_logic; 
    clk_4: out std_logic
  );
end default_clock_driver;

architecture structural of default_clock_driver is
  attribute syn_noprune: boolean;
  attribute syn_noprune of structural : architecture is true;
  attribute optimize_primitives: boolean;
  attribute optimize_primitives of structural : architecture is false;
  attribute dont_touch: boolean;
  attribute dont_touch of structural : architecture is true;

  signal sysce_clr_x0: std_logic;
  signal sysce_x0: std_logic;
  signal sysclk_x0: std_logic;
  signal xlclockdriver_1_ce: std_logic;
  signal xlclockdriver_1_clk: std_logic;
  signal xlclockdriver_2_ce: std_logic;
  signal xlclockdriver_2_clk: std_logic;
  signal xlclockdriver_4_ce: std_logic;
  signal xlclockdriver_4_clk: std_logic;

begin
  sysce_x0 <= sysce;
  sysce_clr_x0 <= sysce_clr;
  sysclk_x0 <= sysclk;
  ce_1 <= xlclockdriver_1_ce;
  ce_2 <= xlclockdriver_2_ce;
  ce_4 <= xlclockdriver_4_ce;
  clk_1 <= xlclockdriver_1_clk;
  clk_2 <= xlclockdriver_2_clk;
  clk_4 <= xlclockdriver_4_clk;

  xlclockdriver_1: entity work.xlclockdriver
    generic map (
      log_2_period => 1,
      period => 1,
      use_bufg => 0
    )
    port map (
      sysce => sysce_x0,
      sysclk => sysclk_x0,
      sysclr => sysce_clr_x0,
      ce => xlclockdriver_1_ce,
      clk => xlclockdriver_1_clk
    );

  xlclockdriver_2: entity work.xlclockdriver
    generic map (
      log_2_period => 2,
      period => 2,
      use_bufg => 0
    )
    port map (
      sysce => sysce_x0,
      sysclk => sysclk_x0,
      sysclr => sysce_clr_x0,
      ce => xlclockdriver_2_ce,
      clk => xlclockdriver_2_clk
    );

  xlclockdriver_4: entity work.xlclockdriver
    generic map (
      log_2_period => 3,
      period => 4,
      use_bufg => 0
    )
    port map (
      sysce => sysce_x0,
      sysclk => sysclk_x0,
      sysclr => sysce_clr_x0,
      ce => xlclockdriver_4_ce,
      clk => xlclockdriver_4_clk
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity plb_clock_driver is
  port (
    sysce: in std_logic; 
    sysce_clr: in std_logic; 
    sysclk: in std_logic; 
    plb_ce_1: out std_logic; 
    plb_clk_1: out std_logic
  );
end plb_clock_driver;

architecture structural of plb_clock_driver is
  attribute syn_noprune: boolean;
  attribute syn_noprune of structural : architecture is true;
  attribute optimize_primitives: boolean;
  attribute optimize_primitives of structural : architecture is false;
  attribute dont_touch: boolean;
  attribute dont_touch of structural : architecture is true;

  signal sysce_clr_x0: std_logic;
  signal sysce_x0: std_logic;
  signal sysclk_x0: std_logic;
  signal xlclockdriver_1_ce: std_logic;
  signal xlclockdriver_1_clk: std_logic;

begin
  sysce_x0 <= sysce;
  sysce_clr_x0 <= sysce_clr;
  sysclk_x0 <= sysclk;
  plb_ce_1 <= xlclockdriver_1_ce;
  plb_clk_1 <= xlclockdriver_1_clk;

  xlclockdriver_1: entity work.xlclockdriver
    generic map (
      log_2_period => 1,
      period => 1,
      use_bufg => 0
    )
    port map (
      sysce => sysce_x0,
      sysclk => sysclk_x0,
      sysclr => sysce_clr_x0,
      ce => xlclockdriver_1_ce,
      clk => xlclockdriver_1_clk
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

entity ofdm_agc_mimo_cw is
  port (
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
    i_in_a: in std_logic_vector(13 downto 0); 
    i_in_b: in std_logic_vector(13 downto 0); 
    packet_in: in std_logic; 
    plb_abus: in std_logic_vector(31 downto 0); 
    plb_pavalid: in std_logic; 
    plb_rnw: in std_logic; 
    plb_wrdbus: in std_logic_vector(31 downto 0); 
    q_in_a: in std_logic_vector(13 downto 0); 
    q_in_b: in std_logic_vector(13 downto 0); 
    reset_in: in std_logic; 
    rssi_in_a: in std_logic_vector(9 downto 0); 
    rssi_in_b: in std_logic_vector(9 downto 0); 
    sg_plb_addrpref: in std_logic_vector(19 downto 0); 
    splb_rst: in std_logic; 
    xps_ce: in std_logic := '1'; 
    xps_clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
    done_a: out std_logic; 
    done_b: out std_logic; 
    g_bb_a: out std_logic_vector(4 downto 0); 
    g_bb_b: out std_logic_vector(4 downto 0); 
    g_rf_a: out std_logic_vector(1 downto 0); 
    g_rf_b: out std_logic_vector(1 downto 0); 
    i_out_a: out std_logic_vector(13 downto 0); 
    i_out_b: out std_logic_vector(13 downto 0); 
    q_out_a: out std_logic_vector(13 downto 0); 
    q_out_b: out std_logic_vector(13 downto 0); 
    rxhp_a: out std_logic; 
    rxhp_b: out std_logic; 
    sl_addrack: out std_logic; 
    sl_rdcomp: out std_logic; 
    sl_rddack: out std_logic; 
    sl_rddbus: out std_logic_vector(31 downto 0); 
    sl_wait: out std_logic; 
    sl_wrcomp: out std_logic; 
    sl_wrdack: out std_logic
  );
end ofdm_agc_mimo_cw;

architecture structural of ofdm_agc_mimo_cw is
  component xlpersistentdff
    port (
      clk: in std_logic; 
      d: in std_logic; 
      q: out std_logic
    );
  end component;
  attribute syn_black_box: boolean;
  attribute syn_black_box of xlpersistentdff: component is true;
  attribute box_type: string;
  attribute box_type of xlpersistentdff: component is "black_box";
  attribute syn_noprune: boolean;
  attribute optimize_primitives: boolean;
  attribute dont_touch: boolean;
  attribute syn_noprune of xlpersistentdff: component is true;
  attribute optimize_primitives of xlpersistentdff: component is false;
  attribute dont_touch of xlpersistentdff: component is true;

  signal ADJ_reg_ce: std_logic;
  signal AGC_EN_reg_ce: std_logic;
  signal AVG_LEN_reg_ce: std_logic;
  signal Bits_r_reg_ce: std_logic;
  signal Bits_w_reg_ce: std_logic;
  signal DCO_IIR_Coef_FB_reg_ce: std_logic;
  signal DCO_IIR_Coef_Gain_reg_ce: std_logic;
  signal DCO_Timing_reg_ce: std_logic;
  signal GBB_A_reg_ce: std_logic;
  signal GBB_B_reg_ce: std_logic;
  signal GBB_init_reg_ce: std_logic;
  signal GRF_A_reg_ce: std_logic;
  signal GRF_B_reg_ce: std_logic;
  signal MRESET_IN_reg_ce: std_logic;
  signal SRESET_IN_reg_ce: std_logic;
  signal T_dB_reg_ce: std_logic;
  signal Thresholds_reg_ce: std_logic;
  signal Timing_reg_ce: std_logic;
  signal ce_1_sg_x40: std_logic;
  attribute MAX_FANOUT: string;
  attribute MAX_FANOUT of ce_1_sg_x40: signal is "REDUCE";
  signal ce_2_sg_x1: std_logic;
  attribute MAX_FANOUT of ce_2_sg_x1: signal is "REDUCE";
  signal ce_4_sg_x25: std_logic;
  attribute MAX_FANOUT of ce_4_sg_x25: signal is "REDUCE";
  signal clkNet: std_logic;
  signal clkNet_x0: std_logic;
  signal clk_1_sg_x40: std_logic;
  signal clk_2_sg_x1: std_logic;
  signal clk_4_sg_x25: std_logic;
  signal constant_op_net_x3: std_logic;
  signal constant_op_net_x4: std_logic;
  signal constant_op_net_x5: std_logic;
  signal constant_op_net_x6: std_logic;
  signal data_in_net: std_logic_vector(9 downto 0);
  signal data_in_x0_net: std_logic_vector(15 downto 0);
  signal data_in_x10_net: std_logic;
  signal data_in_x11_net: std_logic;
  signal data_in_x12_net: std_logic_vector(4 downto 0);
  signal data_in_x13_net: std_logic_vector(4 downto 0);
  signal data_in_x14_net: std_logic_vector(1 downto 0);
  signal data_in_x15_net: std_logic_vector(1 downto 0);
  signal data_in_x1_net: std_logic_vector(15 downto 0);
  signal data_in_x2_net: std_logic_vector(17 downto 0);
  signal data_in_x3_net: std_logic_vector(31 downto 0);
  signal data_in_x4_net: std_logic_vector(31 downto 0);
  signal data_in_x5_net: std_logic_vector(17 downto 0);
  signal data_in_x6_net: std_logic_vector(15 downto 0);
  signal data_in_x7_net: std_logic;
  signal data_in_x8_net: std_logic_vector(31 downto 0);
  signal data_in_x9_net: std_logic_vector(15 downto 0);
  signal data_out_net: std_logic_vector(1 downto 0);
  signal data_out_x0_net: std_logic_vector(1 downto 0);
  signal data_out_x10_net: std_logic_vector(17 downto 0);
  signal data_out_x11_net: std_logic_vector(31 downto 0);
  signal data_out_x12_net: std_logic_vector(31 downto 0);
  signal data_out_x13_net: std_logic_vector(17 downto 0);
  signal data_out_x14_net: std_logic_vector(15 downto 0);
  signal data_out_x15_net: std_logic_vector(15 downto 0);
  signal data_out_x1_net: std_logic_vector(4 downto 0);
  signal data_out_x2_net: std_logic_vector(4 downto 0);
  signal data_out_x3_net: std_logic_vector(9 downto 0);
  signal data_out_x4_net: std_logic;
  signal data_out_x5_net: std_logic;
  signal data_out_x6_net: std_logic_vector(15 downto 0);
  signal data_out_x7_net: std_logic_vector(31 downto 0);
  signal data_out_x8_net: std_logic;
  signal data_out_x9_net: std_logic_vector(15 downto 0);
  signal done_a_net: std_logic;
  signal done_b_net: std_logic;
  signal en_net: std_logic;
  signal en_x0_net: std_logic;
  signal en_x10_net: std_logic;
  signal en_x11_net: std_logic;
  signal en_x16_net: std_logic;
  signal en_x1_net: std_logic;
  signal en_x2_net: std_logic;
  signal en_x3_net: std_logic;
  signal en_x4_net: std_logic;
  signal en_x5_net: std_logic;
  signal en_x6_net: std_logic;
  signal en_x7_net: std_logic;
  signal en_x8_net: std_logic;
  signal en_x9_net: std_logic;
  signal from_register_data_out_net_x4: std_logic_vector(9 downto 0);
  signal from_register_data_out_net_x5: std_logic_vector(9 downto 0);
  signal g_bb_a_net: std_logic_vector(4 downto 0);
  signal g_bb_b_net: std_logic_vector(4 downto 0);
  signal g_rf_a_net: std_logic_vector(1 downto 0);
  signal g_rf_b_net: std_logic_vector(1 downto 0);
  signal i_in_a_net: std_logic_vector(13 downto 0);
  signal i_in_b_net: std_logic_vector(13 downto 0);
  signal i_out_a_net: std_logic_vector(13 downto 0);
  signal i_out_b_net: std_logic_vector(13 downto 0);
  signal packet_in_net: std_logic;
  signal persistentdff_inst_q: std_logic;
  attribute syn_keep: boolean;
  attribute syn_keep of persistentdff_inst_q: signal is true;
  attribute keep: boolean;
  attribute keep of persistentdff_inst_q: signal is true;
  attribute preserve_signal: boolean;
  attribute preserve_signal of persistentdff_inst_q: signal is true;
  signal plb_abus_net: std_logic_vector(31 downto 0);
  signal plb_ce_1_sg_x1: std_logic;
  attribute MAX_FANOUT of plb_ce_1_sg_x1: signal is "REDUCE";
  signal plb_clk_1_sg_x1: std_logic;
  signal plb_pavalid_net: std_logic;
  signal plb_rnw_net: std_logic;
  signal plb_wrdbus_net: std_logic_vector(31 downto 0);
  signal q_in_a_net: std_logic_vector(13 downto 0);
  signal q_in_b_net: std_logic_vector(13 downto 0);
  signal q_out_a_net: std_logic_vector(13 downto 0);
  signal q_out_b_net: std_logic_vector(13 downto 0);
  signal reset_in_net: std_logic;
  signal rssi_in_a_net: std_logic_vector(9 downto 0);
  signal rssi_in_b_net: std_logic_vector(9 downto 0);
  signal rxhp_a_net: std_logic;
  signal rxhp_b_net: std_logic;
  signal sg_plb_addrpref_net: std_logic_vector(19 downto 0);
  signal sl_addrack_net: std_logic;
  signal sl_rdcomp_net: std_logic;
  signal sl_rddack_net: std_logic;
  signal sl_rddbus_net: std_logic_vector(31 downto 0);
  signal sl_wait_net: std_logic;
  signal sl_wrdack_x1: std_logic;
  signal sl_wrdack_x2: std_logic;
  signal splb_rst_net: std_logic;

begin
  clkNet <= clk;
  i_in_a_net <= i_in_a;
  i_in_b_net <= i_in_b;
  packet_in_net <= packet_in;
  plb_abus_net <= plb_abus;
  plb_pavalid_net <= plb_pavalid;
  plb_rnw_net <= plb_rnw;
  plb_wrdbus_net <= plb_wrdbus;
  q_in_a_net <= q_in_a;
  q_in_b_net <= q_in_b;
  reset_in_net <= reset_in;
  rssi_in_a_net <= rssi_in_a;
  rssi_in_b_net <= rssi_in_b;
  sg_plb_addrpref_net <= sg_plb_addrpref;
  splb_rst_net <= splb_rst;
  clkNet_x0 <= xps_clk;
  done_a <= done_a_net;
  done_b <= done_b_net;
  g_bb_a <= g_bb_a_net;
  g_bb_b <= g_bb_b_net;
  g_rf_a <= g_rf_a_net;
  g_rf_b <= g_rf_b_net;
  i_out_a <= i_out_a_net;
  i_out_b <= i_out_b_net;
  q_out_a <= q_out_a_net;
  q_out_b <= q_out_b_net;
  rxhp_a <= rxhp_a_net;
  rxhp_b <= rxhp_b_net;
  sl_addrack <= sl_addrack_net;
  sl_rdcomp <= sl_rdcomp_net;
  sl_rddack <= sl_rddack_net;
  sl_rddbus <= sl_rddbus_net;
  sl_wait <= sl_wait_net;
  sl_wrcomp <= sl_wrdack_x2;
  sl_wrdack <= sl_wrdack_x1;

  ADJ: entity work.synth_reg_w_init
    generic map (
      width => 16,
      init_index => 2,
      init_value => b"0000000000000000",
      latency => 1
    )
    port map (
      ce => ADJ_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x1_net,
      o => data_out_x14_net
    );

  ADJ_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x1_net,
      dout => ADJ_reg_ce
    );

  AGC_EN: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => AGC_EN_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i(0) => data_in_x7_net,
      o(0) => data_out_x8_net
    );

  AGC_EN_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x7_net,
      dout => AGC_EN_reg_ce
    );

  AVG_LEN: entity work.synth_reg_w_init
    generic map (
      width => 16,
      init_index => 2,
      init_value => b"0000000000000000",
      latency => 1
    )
    port map (
      ce => AVG_LEN_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x6_net,
      o => data_out_x9_net
    );

  AVG_LEN_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x6_net,
      dout => AVG_LEN_reg_ce
    );

  Bits_r: entity work.synth_reg_w_init
    generic map (
      width => 10,
      init_index => 2,
      init_value => b"0000000000",
      latency => 1
    )
    port map (
      ce => Bits_r_reg_ce,
      clk => clk_1_sg_x40,
      clr => '0',
      i => from_register_data_out_net_x5,
      o => data_out_x3_net
    );

  Bits_r_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x40,
      b => en_x16_net,
      dout => Bits_r_reg_ce
    );

  Bits_w: entity work.synth_reg_w_init
    generic map (
      width => 10,
      init_index => 2,
      init_value => b"0000000000",
      latency => 1
    )
    port map (
      ce => Bits_w_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_net,
      o => from_register_data_out_net_x4
    );

  Bits_w_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_net,
      dout => Bits_w_reg_ce
    );

  DCO_IIR_Coef_FB: entity work.synth_reg_w_init
    generic map (
      width => 18,
      init_index => 2,
      init_value => b"100000011001100101",
      latency => 1
    )
    port map (
      ce => DCO_IIR_Coef_FB_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x2_net,
      o => data_out_x13_net
    );

  DCO_IIR_Coef_FB_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x2_net,
      dout => DCO_IIR_Coef_FB_reg_ce
    );

  DCO_IIR_Coef_Gain: entity work.synth_reg_w_init
    generic map (
      width => 18,
      init_index => 2,
      init_value => b"011111110011001110",
      latency => 1
    )
    port map (
      ce => DCO_IIR_Coef_Gain_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x5_net,
      o => data_out_x10_net
    );

  DCO_IIR_Coef_Gain_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x5_net,
      dout => DCO_IIR_Coef_Gain_reg_ce
    );

  DCO_Timing: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => DCO_Timing_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x8_net,
      o => data_out_x7_net
    );

  DCO_Timing_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x8_net,
      dout => DCO_Timing_reg_ce
    );

  GBB_A: entity work.synth_reg_w_init
    generic map (
      width => 5,
      init_index => 2,
      init_value => b"00000",
      latency => 1
    )
    port map (
      ce => GBB_A_reg_ce,
      clk => clk_1_sg_x40,
      clr => '0',
      i => data_in_x12_net,
      o => data_out_x2_net
    );

  GBB_A_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x40,
      b => constant_op_net_x3,
      dout => GBB_A_reg_ce
    );

  GBB_B: entity work.synth_reg_w_init
    generic map (
      width => 5,
      init_index => 2,
      init_value => b"00000",
      latency => 1
    )
    port map (
      ce => GBB_B_reg_ce,
      clk => clk_1_sg_x40,
      clr => '0',
      i => data_in_x13_net,
      o => data_out_x1_net
    );

  GBB_B_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x40,
      b => constant_op_net_x4,
      dout => GBB_B_reg_ce
    );

  GBB_init: entity work.synth_reg_w_init
    generic map (
      width => 16,
      init_index => 2,
      init_value => b"0000000000000000",
      latency => 1
    )
    port map (
      ce => GBB_init_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x0_net,
      o => data_out_x15_net
    );

  GBB_init_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x0_net,
      dout => GBB_init_reg_ce
    );

  GRF_A: entity work.synth_reg_w_init
    generic map (
      width => 2,
      init_index => 2,
      init_value => b"00",
      latency => 1
    )
    port map (
      ce => GRF_A_reg_ce,
      clk => clk_1_sg_x40,
      clr => '0',
      i => data_in_x15_net,
      o => data_out_net
    );

  GRF_A_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x40,
      b => constant_op_net_x6,
      dout => GRF_A_reg_ce
    );

  GRF_B: entity work.synth_reg_w_init
    generic map (
      width => 2,
      init_index => 2,
      init_value => b"00",
      latency => 1
    )
    port map (
      ce => GRF_B_reg_ce,
      clk => clk_1_sg_x40,
      clr => '0',
      i => data_in_x14_net,
      o => data_out_x0_net
    );

  GRF_B_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x40,
      b => constant_op_net_x5,
      dout => GRF_B_reg_ce
    );

  MRESET_IN: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => MRESET_IN_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i(0) => data_in_x10_net,
      o(0) => data_out_x5_net
    );

  MRESET_IN_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x10_net,
      dout => MRESET_IN_reg_ce
    );

  SRESET_IN: entity work.synth_reg_w_init
    generic map (
      width => 1,
      init_index => 2,
      init_value => b"0",
      latency => 1
    )
    port map (
      ce => SRESET_IN_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i(0) => data_in_x11_net,
      o(0) => data_out_x4_net
    );

  SRESET_IN_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x11_net,
      dout => SRESET_IN_reg_ce
    );

  T_dB: entity work.synth_reg_w_init
    generic map (
      width => 16,
      init_index => 2,
      init_value => b"0000000000000000",
      latency => 1
    )
    port map (
      ce => T_dB_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x9_net,
      o => data_out_x6_net
    );

  T_dB_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x9_net,
      dout => T_dB_reg_ce
    );

  Thresholds: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => Thresholds_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x3_net,
      o => data_out_x12_net
    );

  Thresholds_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x3_net,
      dout => Thresholds_reg_ce
    );

  Timing: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => Timing_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x4_net,
      o => data_out_x11_net
    );

  Timing_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x4_net,
      dout => Timing_reg_ce
    );

  default_clock_driver_x0: entity work.default_clock_driver
    port map (
      sysce => '1',
      sysce_clr => '0',
      sysclk => clkNet,
      ce_1 => ce_1_sg_x40,
      ce_2 => ce_2_sg_x1,
      ce_4 => ce_4_sg_x25,
      clk_1 => clk_1_sg_x40,
      clk_2 => clk_2_sg_x1,
      clk_4 => clk_4_sg_x25
    );

  ofdm_agc_mimo_x0: entity work.ofdm_agc_mimo
    port map (
      ce_1 => ce_1_sg_x40,
      ce_2 => ce_2_sg_x1,
      ce_4 => ce_4_sg_x25,
      clk_1 => clk_1_sg_x40,
      clk_2 => clk_2_sg_x1,
      clk_4 => clk_4_sg_x25,
      data_out => data_out_net,
      data_out_x0 => data_out_x0_net,
      data_out_x1 => data_out_x1_net,
      data_out_x10 => data_out_x10_net,
      data_out_x11 => data_out_x11_net,
      data_out_x12 => data_out_x12_net,
      data_out_x13 => data_out_x13_net,
      data_out_x14 => data_out_x14_net,
      data_out_x15 => data_out_x15_net,
      data_out_x16 => from_register_data_out_net_x4,
      data_out_x2 => data_out_x2_net,
      data_out_x3 => data_out_x3_net,
      data_out_x4 => data_out_x4_net,
      data_out_x5 => data_out_x5_net,
      data_out_x6 => data_out_x6_net,
      data_out_x7 => data_out_x7_net,
      data_out_x8 => data_out_x8_net,
      data_out_x9 => data_out_x9_net,
      dout => from_register_data_out_net_x4,
      dout_x0 => data_out_x15_net,
      dout_x1 => data_out_x14_net,
      dout_x10 => data_out_x5_net,
      dout_x11 => data_out_x4_net,
      dout_x2 => data_out_x13_net,
      dout_x3 => data_out_x12_net,
      dout_x4 => data_out_x11_net,
      dout_x5 => data_out_x10_net,
      dout_x6 => data_out_x9_net,
      dout_x7 => data_out_x8_net,
      dout_x8 => data_out_x7_net,
      dout_x9 => data_out_x6_net,
      i_in_a => i_in_a_net,
      i_in_b => i_in_b_net,
      packet_in => packet_in_net,
      plb_abus => plb_abus_net,
      plb_ce_1 => plb_ce_1_sg_x1,
      plb_clk_1 => plb_clk_1_sg_x1,
      plb_pavalid => plb_pavalid_net,
      plb_rnw => plb_rnw_net,
      plb_wrdbus => plb_wrdbus_net,
      q_in_a => q_in_a_net,
      q_in_b => q_in_b_net,
      reset_in => reset_in_net,
      rssi_in_a => rssi_in_a_net,
      rssi_in_b => rssi_in_b_net,
      sg_plb_addrpref => sg_plb_addrpref_net,
      splb_rst => splb_rst_net,
      data_in => data_in_net,
      data_in_x0 => data_in_x0_net,
      data_in_x1 => data_in_x1_net,
      data_in_x10 => data_in_x10_net,
      data_in_x11 => data_in_x11_net,
      data_in_x12 => data_in_x12_net,
      data_in_x13 => data_in_x13_net,
      data_in_x14 => data_in_x14_net,
      data_in_x15 => data_in_x15_net,
      data_in_x16 => from_register_data_out_net_x5,
      data_in_x2 => data_in_x2_net,
      data_in_x3 => data_in_x3_net,
      data_in_x4 => data_in_x4_net,
      data_in_x5 => data_in_x5_net,
      data_in_x6 => data_in_x6_net,
      data_in_x7 => data_in_x7_net,
      data_in_x8 => data_in_x8_net,
      data_in_x9 => data_in_x9_net,
      done_a => done_a_net,
      done_b => done_b_net,
      en => en_net,
      en_x0 => en_x0_net,
      en_x1 => en_x1_net,
      en_x10 => en_x10_net,
      en_x11 => en_x11_net,
      en_x12 => constant_op_net_x3,
      en_x13 => constant_op_net_x4,
      en_x14 => constant_op_net_x5,
      en_x15 => constant_op_net_x6,
      en_x16 => en_x16_net,
      en_x2 => en_x2_net,
      en_x3 => en_x3_net,
      en_x4 => en_x4_net,
      en_x5 => en_x5_net,
      en_x6 => en_x6_net,
      en_x7 => en_x7_net,
      en_x8 => en_x8_net,
      en_x9 => en_x9_net,
      g_bb_a => g_bb_a_net,
      g_bb_b => g_bb_b_net,
      g_rf_a => g_rf_a_net,
      g_rf_b => g_rf_b_net,
      i_out_a => i_out_a_net,
      i_out_b => i_out_b_net,
      q_out_a => q_out_a_net,
      q_out_b => q_out_b_net,
      rxhp_a => rxhp_a_net,
      rxhp_b => rxhp_b_net,
      sl_addrack => sl_addrack_net,
      sl_rdcomp => sl_rdcomp_net,
      sl_rddack => sl_rddack_net,
      sl_rddbus => sl_rddbus_net,
      sl_wait => sl_wait_net,
      sl_wrcomp => sl_wrdack_x2,
      sl_wrdack => sl_wrdack_x1
    );

  persistentdff_inst: xlpersistentdff
    port map (
      clk => clkNet,
      d => persistentdff_inst_q,
      q => persistentdff_inst_q
    );

  plb_clock_driver_x0: entity work.plb_clock_driver
    port map (
      sysce => '1',
      sysce_clr => '0',
      sysclk => clkNet_x0,
      plb_ce_1 => plb_ce_1_sg_x1,
      plb_clk_1 => plb_clk_1_sg_x1
    );

end structural;
