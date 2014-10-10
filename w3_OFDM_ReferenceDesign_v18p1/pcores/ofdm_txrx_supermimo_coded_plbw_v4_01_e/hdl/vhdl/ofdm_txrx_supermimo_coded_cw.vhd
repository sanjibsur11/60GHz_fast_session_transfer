
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
    ce_8: out std_logic; 
    clk_1: out std_logic; 
    clk_2: out std_logic; 
    clk_4: out std_logic; 
    clk_8: out std_logic
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
  signal xlclockdriver_8_ce: std_logic;
  signal xlclockdriver_8_clk: std_logic;

begin
  sysce_x0 <= sysce;
  sysce_clr_x0 <= sysce_clr;
  sysclk_x0 <= sysclk;
  ce_1 <= xlclockdriver_1_ce;
  ce_2 <= xlclockdriver_2_ce;
  ce_4 <= xlclockdriver_4_ce;
  ce_8 <= xlclockdriver_8_ce;
  clk_1 <= xlclockdriver_1_clk;
  clk_2 <= xlclockdriver_2_clk;
  clk_4 <= xlclockdriver_4_clk;
  clk_8 <= xlclockdriver_8_clk;

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

  xlclockdriver_8: entity work.xlclockdriver
    generic map (
      log_2_period => 4,
      period => 8,
      use_bufg => 0
    )
    port map (
      sysce => sysce_x0,
      sysclk => sysclk_x0,
      sysclr => sysce_clr_x0,
      ce => xlclockdriver_8_ce,
      clk => xlclockdriver_8_clk
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

entity ofdm_txrx_supermimo_coded_cw is
  port (
    bram_datain: in std_logic_vector(63 downto 0); 
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
    debug_chipscopetrig1: in std_logic; 
    ext_pktdet: in std_logic; 
    ext_txen: in std_logic; 
    idlefordifs_disable: in std_logic; 
    plb_abus: in std_logic_vector(31 downto 0); 
    plb_pavalid: in std_logic; 
    plb_rnw: in std_logic; 
    plb_wrdbus: in std_logic_vector(31 downto 0); 
    rssi_anta: in std_logic_vector(9 downto 0); 
    rssi_antb: in std_logic_vector(9 downto 0); 
    rx_anta_adci: in std_logic_vector(13 downto 0); 
    rx_anta_adcq: in std_logic_vector(13 downto 0); 
    rx_anta_agc_done: in std_logic; 
    rx_anta_gainbb: in std_logic_vector(4 downto 0); 
    rx_anta_gainrf: in std_logic_vector(1 downto 0); 
    rx_antb_adci: in std_logic_vector(13 downto 0); 
    rx_antb_adcq: in std_logic_vector(13 downto 0); 
    rx_antb_agc_done: in std_logic; 
    rx_antb_gainbb: in std_logic_vector(4 downto 0); 
    rx_antb_gainrf: in std_logic_vector(1 downto 0); 
    rx_pktdetreset_in: in std_logic; 
    rx_reset: in std_logic; 
    sg_plb_addrpref: in std_logic_vector(15 downto 0); 
    splb_rst: in std_logic; 
    tx_anta_i_div1: in std_logic_vector(15 downto 0); 
    tx_anta_q_div1: in std_logic_vector(15 downto 0); 
    tx_antb_i_div1: in std_logic_vector(15 downto 0); 
    tx_antb_q_div1: in std_logic_vector(15 downto 0); 
    tx_reset: in std_logic; 
    tx_starttransmit: in std_logic; 
    xps_ce: in std_logic := '1'; 
    xps_clk: in std_logic; -- clock period = 10.0 ns (100.0 Mhz)
    bram_addr: out std_logic_vector(31 downto 0); 
    bram_dout: out std_logic_vector(63 downto 0); 
    bram_en: out std_logic; 
    bram_reset: out std_logic; 
    bram_wen: out std_logic_vector(7 downto 0); 
    debug_pktdetautocorr: out std_logic; 
    debug_pktdetrssi: out std_logic; 
    idlefordifs: out std_logic; 
    pktdet: out std_logic; 
    radio_rxen: out std_logic; 
    radio_txen: out std_logic; 
    rssi_clk_out: out std_logic; 
    rx_debug_antsel: out std_logic; 
    rx_debug_eq_i: out std_logic_vector(13 downto 0); 
    rx_debug_eq_q: out std_logic_vector(13 downto 0); 
    rx_debug_evm: out std_logic_vector(13 downto 0); 
    rx_debug_payload: out std_logic; 
    rx_debug_phasecorrect: out std_logic_vector(13 downto 0); 
    rx_debug_phaseerror: out std_logic_vector(13 downto 0); 
    rx_debug_pktdone: out std_logic; 
    rx_int_badheader: out std_logic; 
    rx_int_badpkt: out std_logic; 
    rx_int_goodheader: out std_logic; 
    rx_int_goodpkt: out std_logic; 
    rx_pktdetreset: out std_logic; 
    sl_addrack: out std_logic; 
    sl_rdcomp: out std_logic; 
    sl_rddack: out std_logic; 
    sl_rddbus: out std_logic_vector(31 downto 0); 
    sl_wait: out std_logic; 
    sl_wrcomp: out std_logic; 
    sl_wrdack: out std_logic; 
    tx_anta_dac_i: out std_logic_vector(15 downto 0); 
    tx_anta_dac_q: out std_logic_vector(15 downto 0); 
    tx_anta_i_div4: out std_logic_vector(15 downto 0); 
    tx_anta_q_div4: out std_logic_vector(15 downto 0); 
    tx_antb_dac_i: out std_logic_vector(15 downto 0); 
    tx_antb_dac_q: out std_logic_vector(15 downto 0); 
    tx_antb_i_div4: out std_logic_vector(15 downto 0); 
    tx_antb_q_div4: out std_logic_vector(15 downto 0); 
    tx_debug_pktrunning: out std_logic; 
    tx_pktdone: out std_logic; 
    tx_pktrunning_d0: out std_logic; 
    tx_pktrunning_d1: out std_logic
  );
end ofdm_txrx_supermimo_coded_cw;

architecture structural of ofdm_txrx_supermimo_coded_cw is
  component block_memory_generator_virtex6_6_3_2946513ff8459d63
    port (
      addra: in std_logic_vector(7 downto 0); 
      addrb: in std_logic_vector(7 downto 0); 
      clka: in std_logic; 
      clkb: in std_logic; 
      dina: in std_logic_vector(31 downto 0); 
      dinb: in std_logic_vector(31 downto 0); 
      ena: in std_logic; 
      enb: in std_logic; 
      wea: in std_logic_vector(0 downto 0); 
      web: in std_logic_vector(0 downto 0); 
      douta: out std_logic_vector(31 downto 0); 
      doutb: out std_logic_vector(31 downto 0)
    );
  end component;
  attribute syn_black_box: boolean;
  attribute syn_black_box of block_memory_generator_virtex6_6_3_2946513ff8459d63: component is true;
  attribute box_type: string;
  attribute box_type of block_memory_generator_virtex6_6_3_2946513ff8459d63: component is "black_box";
  attribute syn_noprune: boolean;
  attribute optimize_primitives: boolean;
  attribute dont_touch: boolean;
  attribute syn_noprune of block_memory_generator_virtex6_6_3_2946513ff8459d63: component is true;
  attribute optimize_primitives of block_memory_generator_virtex6_6_3_2946513ff8459d63: component is false;
  attribute dont_touch of block_memory_generator_virtex6_6_3_2946513ff8459d63: component is true;

  component block_memory_generator_virtex6_6_3_29970a1ccea6e03b
    port (
      addra: in std_logic_vector(5 downto 0); 
      addrb: in std_logic_vector(5 downto 0); 
      clka: in std_logic; 
      clkb: in std_logic; 
      dina: in std_logic_vector(31 downto 0); 
      dinb: in std_logic_vector(31 downto 0); 
      ena: in std_logic; 
      enb: in std_logic; 
      wea: in std_logic_vector(0 downto 0); 
      web: in std_logic_vector(0 downto 0); 
      douta: out std_logic_vector(31 downto 0); 
      doutb: out std_logic_vector(31 downto 0)
    );
  end component;
  attribute syn_black_box of block_memory_generator_virtex6_6_3_29970a1ccea6e03b: component is true;
  attribute box_type of block_memory_generator_virtex6_6_3_29970a1ccea6e03b: component is "black_box";
  attribute syn_noprune of block_memory_generator_virtex6_6_3_29970a1ccea6e03b: component is true;
  attribute optimize_primitives of block_memory_generator_virtex6_6_3_29970a1ccea6e03b: component is false;
  attribute dont_touch of block_memory_generator_virtex6_6_3_29970a1ccea6e03b: component is true;

  component block_memory_generator_virtex6_6_3_3f3b21ad7dafdea5
    port (
      addra: in std_logic_vector(4 downto 0); 
      addrb: in std_logic_vector(4 downto 0); 
      clka: in std_logic; 
      clkb: in std_logic; 
      dina: in std_logic_vector(31 downto 0); 
      dinb: in std_logic_vector(31 downto 0); 
      ena: in std_logic; 
      enb: in std_logic; 
      wea: in std_logic_vector(0 downto 0); 
      web: in std_logic_vector(0 downto 0); 
      douta: out std_logic_vector(31 downto 0); 
      doutb: out std_logic_vector(31 downto 0)
    );
  end component;
  attribute syn_black_box of block_memory_generator_virtex6_6_3_3f3b21ad7dafdea5: component is true;
  attribute box_type of block_memory_generator_virtex6_6_3_3f3b21ad7dafdea5: component is "black_box";
  attribute syn_noprune of block_memory_generator_virtex6_6_3_3f3b21ad7dafdea5: component is true;
  attribute optimize_primitives of block_memory_generator_virtex6_6_3_3f3b21ad7dafdea5: component is false;
  attribute dont_touch of block_memory_generator_virtex6_6_3_3f3b21ad7dafdea5: component is true;

  component block_memory_generator_virtex6_6_3_7d0f296add6c1932
    port (
      addra: in std_logic_vector(7 downto 0); 
      addrb: in std_logic_vector(7 downto 0); 
      clka: in std_logic; 
      clkb: in std_logic; 
      dina: in std_logic_vector(31 downto 0); 
      dinb: in std_logic_vector(31 downto 0); 
      ena: in std_logic; 
      enb: in std_logic; 
      wea: in std_logic_vector(0 downto 0); 
      web: in std_logic_vector(0 downto 0); 
      douta: out std_logic_vector(31 downto 0); 
      doutb: out std_logic_vector(31 downto 0)
    );
  end component;
  attribute syn_black_box of block_memory_generator_virtex6_6_3_7d0f296add6c1932: component is true;
  attribute box_type of block_memory_generator_virtex6_6_3_7d0f296add6c1932: component is "black_box";
  attribute syn_noprune of block_memory_generator_virtex6_6_3_7d0f296add6c1932: component is true;
  attribute optimize_primitives of block_memory_generator_virtex6_6_3_7d0f296add6c1932: component is false;
  attribute dont_touch of block_memory_generator_virtex6_6_3_7d0f296add6c1932: component is true;

  component block_memory_generator_virtex6_6_3_83e3bf6fae7ffe3b
    port (
      addra: in std_logic_vector(7 downto 0); 
      addrb: in std_logic_vector(7 downto 0); 
      clka: in std_logic; 
      clkb: in std_logic; 
      dina: in std_logic_vector(3 downto 0); 
      dinb: in std_logic_vector(3 downto 0); 
      ena: in std_logic; 
      enb: in std_logic; 
      wea: in std_logic_vector(0 downto 0); 
      web: in std_logic_vector(0 downto 0); 
      douta: out std_logic_vector(3 downto 0); 
      doutb: out std_logic_vector(3 downto 0)
    );
  end component;
  attribute syn_black_box of block_memory_generator_virtex6_6_3_83e3bf6fae7ffe3b: component is true;
  attribute box_type of block_memory_generator_virtex6_6_3_83e3bf6fae7ffe3b: component is "black_box";
  attribute syn_noprune of block_memory_generator_virtex6_6_3_83e3bf6fae7ffe3b: component is true;
  attribute optimize_primitives of block_memory_generator_virtex6_6_3_83e3bf6fae7ffe3b: component is false;
  attribute dont_touch of block_memory_generator_virtex6_6_3_83e3bf6fae7ffe3b: component is true;

  component block_memory_generator_virtex6_6_3_8aed8dbaea13f2ec
    port (
      addra: in std_logic_vector(9 downto 0); 
      addrb: in std_logic_vector(9 downto 0); 
      clka: in std_logic; 
      clkb: in std_logic; 
      dina: in std_logic_vector(9 downto 0); 
      dinb: in std_logic_vector(9 downto 0); 
      ena: in std_logic; 
      enb: in std_logic; 
      wea: in std_logic_vector(0 downto 0); 
      web: in std_logic_vector(0 downto 0); 
      douta: out std_logic_vector(9 downto 0); 
      doutb: out std_logic_vector(9 downto 0)
    );
  end component;
  attribute syn_black_box of block_memory_generator_virtex6_6_3_8aed8dbaea13f2ec: component is true;
  attribute box_type of block_memory_generator_virtex6_6_3_8aed8dbaea13f2ec: component is "black_box";
  attribute syn_noprune of block_memory_generator_virtex6_6_3_8aed8dbaea13f2ec: component is true;
  attribute optimize_primitives of block_memory_generator_virtex6_6_3_8aed8dbaea13f2ec: component is false;
  attribute dont_touch of block_memory_generator_virtex6_6_3_8aed8dbaea13f2ec: component is true;

  component xlpersistentdff
    port (
      clk: in std_logic; 
      d: in std_logic; 
      q: out std_logic
    );
  end component;
  attribute syn_black_box of xlpersistentdff: component is true;
  attribute box_type of xlpersistentdff: component is "black_box";
  attribute syn_noprune of xlpersistentdff: component is true;
  attribute optimize_primitives of xlpersistentdff: component is false;
  attribute dont_touch of xlpersistentdff: component is true;

  signal FEC_Config_reg_ce: std_logic;
  signal Rx_AF_Blanking_reg_ce: std_logic;
  signal Rx_AF_TxScaling_reg_ce: std_logic;
  signal Rx_BER_Errors_reg_ce: std_logic;
  signal Rx_BER_TotalBits_reg_ce: std_logic;
  signal Rx_ChanEst_MinMag_reg_ce: std_logic;
  signal Rx_Constellation_Scaling_reg_ce: std_logic;
  signal Rx_ControlBits_reg_ce: std_logic;
  signal Rx_FixedPktLen_reg_ce: std_logic;
  signal Rx_Gains_reg_ce: std_logic;
  signal Rx_OFDM_SymbolCounts_reg_ce: std_logic;
  signal Rx_PilotCalcParams_reg_ce: std_logic;
  signal Rx_PktDet_Delay_reg_ce: std_logic;
  signal Rx_PktDet_LongCorr_Params_reg_ce: std_logic;
  signal Rx_PktDet_LongCorr_Thresholds_reg_ce: std_logic;
  signal Rx_PreCFO_Options_reg_ce: std_logic;
  signal Rx_PreCFO_PilotCalcCorrection_reg_ce: std_logic;
  signal Rx_coarseCFO_correction_reg_ce: std_logic;
  signal Rx_coarseCFOest_reg_ce: std_logic;
  signal Rx_pilotCFOest_reg_ce: std_logic;
  signal Rx_pktByteNums_reg_ce: std_logic;
  signal Rx_pktDetEventCount_reg_ce: std_logic;
  signal Rx_pktDone_interruptStatus_reg_ce: std_logic;
  signal TxRx_AutoReply_Action0_reg_ce: std_logic;
  signal TxRx_AutoReply_Action1_reg_ce: std_logic;
  signal TxRx_AutoReply_Action2_reg_ce: std_logic;
  signal TxRx_AutoReply_Action3_reg_ce: std_logic;
  signal TxRx_AutoReply_Action4_reg_ce: std_logic;
  signal TxRx_AutoReply_Action5_reg_ce: std_logic;
  signal TxRx_AutoReply_Match0_reg_ce: std_logic;
  signal TxRx_AutoReply_Match1_reg_ce: std_logic;
  signal TxRx_AutoReply_Match2_reg_ce: std_logic;
  signal TxRx_AutoReply_Match3_reg_ce: std_logic;
  signal TxRx_AutoReply_Match4_reg_ce: std_logic;
  signal TxRx_AutoReply_Match5_reg_ce: std_logic;
  signal TxRx_FFT_Scaling_reg_ce: std_logic;
  signal TxRx_Interrupt_PktBuf_Ctrl_reg_ce: std_logic;
  signal TxRx_Pilots_Index_reg_ce: std_logic;
  signal TxRx_Pilots_Values_reg_ce: std_logic;
  signal Tx_ControlBits_reg_ce: std_logic;
  signal Tx_Delays_reg_ce: std_logic;
  signal Tx_OFDM_SymCounts_reg_ce: std_logic;
  signal Tx_PktRunning_reg_ce: std_logic;
  signal Tx_Scaling_reg_ce: std_logic;
  signal Tx_Start_Reset_Control_reg_ce: std_logic;
  signal addr_net: std_logic_vector(7 downto 0);
  signal addr_x0_net: std_logic_vector(9 downto 0);
  signal addr_x10_net: std_logic_vector(7 downto 0);
  signal addr_x11_net: std_logic_vector(9 downto 0);
  signal addr_x12_net: std_logic_vector(7 downto 0);
  signal addr_x1_net: std_logic_vector(7 downto 0);
  signal addr_x2_net: std_logic_vector(7 downto 0);
  signal addr_x3_net: std_logic_vector(7 downto 0);
  signal addr_x4_net: std_logic_vector(5 downto 0);
  signal addr_x5_net: std_logic_vector(4 downto 0);
  signal addr_x6_net: std_logic_vector(4 downto 0);
  signal addr_x7_net: std_logic_vector(5 downto 0);
  signal addr_x8_net: std_logic_vector(7 downto 0);
  signal addr_x9_net: std_logic_vector(7 downto 0);
  signal bram_addr_net: std_logic_vector(31 downto 0);
  signal bram_datain_net: std_logic_vector(63 downto 0);
  signal bram_dout_net: std_logic_vector(63 downto 0);
  signal bram_en_net: std_logic;
  signal bram_reset_net: std_logic;
  signal bram_wen_net: std_logic_vector(7 downto 0);
  signal ce_1_sg_x359: std_logic;
  attribute MAX_FANOUT: string;
  attribute MAX_FANOUT of ce_1_sg_x359: signal is "REDUCE";
  signal ce_2_sg_x271: std_logic;
  attribute MAX_FANOUT of ce_2_sg_x271: signal is "REDUCE";
  signal ce_4_sg_x223: std_logic;
  attribute MAX_FANOUT of ce_4_sg_x223: signal is "REDUCE";
  signal ce_8_sg_x7: std_logic;
  attribute MAX_FANOUT of ce_8_sg_x7: signal is "REDUCE";
  signal clkNet: std_logic;
  signal clkNet_x0: std_logic;
  signal clk_1_sg_x359: std_logic;
  signal clk_2_sg_x271: std_logic;
  signal clk_4_sg_x223: std_logic;
  signal clk_8_sg_x7: std_logic;
  signal constant_op_net_x15: std_logic;
  signal constant_op_net_x16: std_logic;
  signal data_in_net: std_logic_vector(3 downto 0);
  signal data_in_x0_net: std_logic_vector(9 downto 0);
  signal data_in_x10_net: std_logic_vector(31 downto 0);
  signal data_in_x11_net: std_logic_vector(31 downto 0);
  signal data_in_x12_net: std_logic_vector(31 downto 0);
  signal data_in_x13_net: std_logic_vector(31 downto 0);
  signal data_in_x14_net: std_logic_vector(31 downto 0);
  signal data_in_x15_net: std_logic_vector(31 downto 0);
  signal data_in_x16_net: std_logic_vector(31 downto 0);
  signal data_in_x17_net: std_logic_vector(31 downto 0);
  signal data_in_x18_net: std_logic_vector(31 downto 0);
  signal data_in_x19_net: std_logic_vector(31 downto 0);
  signal data_in_x1_net: std_logic_vector(31 downto 0);
  signal data_in_x20_net: std_logic_vector(31 downto 0);
  signal data_in_x21_net: std_logic_vector(31 downto 0);
  signal data_in_x22_net: std_logic_vector(31 downto 0);
  signal data_in_x23_net: std_logic_vector(31 downto 0);
  signal data_in_x24_net: std_logic_vector(31 downto 0);
  signal data_in_x25_net: std_logic_vector(31 downto 0);
  signal data_in_x26_net: std_logic_vector(31 downto 0);
  signal data_in_x27_net: std_logic_vector(31 downto 0);
  signal data_in_x28_net: std_logic_vector(31 downto 0);
  signal data_in_x29_net: std_logic_vector(31 downto 0);
  signal data_in_x2_net: std_logic_vector(3 downto 0);
  signal data_in_x30_net: std_logic_vector(31 downto 0);
  signal data_in_x31_net: std_logic_vector(31 downto 0);
  signal data_in_x32_net: std_logic_vector(31 downto 0);
  signal data_in_x33_net: std_logic_vector(31 downto 0);
  signal data_in_x34_net: std_logic_vector(31 downto 0);
  signal data_in_x35_net: std_logic_vector(31 downto 0);
  signal data_in_x36_net: std_logic_vector(31 downto 0);
  signal data_in_x37_net: std_logic_vector(31 downto 0);
  signal data_in_x38_net: std_logic_vector(31 downto 0);
  signal data_in_x39_net: std_logic_vector(31 downto 0);
  signal data_in_x3_net: std_logic_vector(31 downto 0);
  signal data_in_x40_net: std_logic_vector(31 downto 0);
  signal data_in_x41_net: std_logic_vector(31 downto 0);
  signal data_in_x42_net: std_logic_vector(31 downto 0);
  signal data_in_x43_net: std_logic_vector(11 downto 0);
  signal data_in_x44_net: std_logic_vector(31 downto 0);
  signal data_in_x45_net: std_logic_vector(31 downto 0);
  signal data_in_x46_net: std_logic_vector(31 downto 0);
  signal data_in_x47_net: std_logic_vector(31 downto 0);
  signal data_in_x48_net: std_logic_vector(31 downto 0);
  signal data_in_x49_net: std_logic_vector(31 downto 0);
  signal data_in_x4_net: std_logic_vector(31 downto 0);
  signal data_in_x50_net: std_logic_vector(31 downto 0);
  signal data_in_x51_net: std_logic_vector(31 downto 0);
  signal data_in_x52_net: std_logic_vector(31 downto 0);
  signal data_in_x53_net: std_logic_vector(31 downto 0);
  signal data_in_x54_net: std_logic_vector(13 downto 0);
  signal data_in_x55_net: std_logic_vector(31 downto 0);
  signal data_in_x56_net: std_logic_vector(31 downto 0);
  signal data_in_x57_net: std_logic_vector(31 downto 0);
  signal data_in_x58_net: std_logic_vector(31 downto 0);
  signal data_in_x59_net: std_logic_vector(3 downto 0);
  signal data_in_x5_net: std_logic_vector(31 downto 0);
  signal data_in_x60_net: std_logic_vector(31 downto 0);
  signal data_in_x61_net: std_logic_vector(31 downto 0);
  signal data_in_x62_net: std_logic_vector(9 downto 0);
  signal data_in_x63_net: std_logic_vector(3 downto 0);
  signal data_in_x6_net: std_logic_vector(31 downto 0);
  signal data_in_x7_net: std_logic_vector(31 downto 0);
  signal data_in_x8_net: std_logic_vector(31 downto 0);
  signal data_in_x9_net: std_logic_vector(31 downto 0);
  signal data_out_net: std_logic_vector(31 downto 0);
  signal data_out_x0_net: std_logic_vector(31 downto 0);
  signal data_out_x10_net: std_logic_vector(9 downto 0);
  signal data_out_x11_net: std_logic_vector(31 downto 0);
  signal data_out_x12_net: std_logic_vector(3 downto 0);
  signal data_out_x13_net: std_logic_vector(31 downto 0);
  signal data_out_x14_net: std_logic_vector(31 downto 0);
  signal data_out_x15_net: std_logic_vector(31 downto 0);
  signal data_out_x16_net: std_logic_vector(31 downto 0);
  signal data_out_x17_net: std_logic_vector(31 downto 0);
  signal data_out_x18_net: std_logic_vector(31 downto 0);
  signal data_out_x19_net: std_logic_vector(31 downto 0);
  signal data_out_x1_net: std_logic_vector(31 downto 0);
  signal data_out_x20_net: std_logic_vector(31 downto 0);
  signal data_out_x21_net: std_logic_vector(31 downto 0);
  signal data_out_x22_net: std_logic_vector(31 downto 0);
  signal data_out_x23_net: std_logic_vector(31 downto 0);
  signal data_out_x24_net: std_logic_vector(31 downto 0);
  signal data_out_x25_net: std_logic_vector(31 downto 0);
  signal data_out_x26_net: std_logic_vector(31 downto 0);
  signal data_out_x27_net: std_logic_vector(31 downto 0);
  signal data_out_x28_net: std_logic_vector(31 downto 0);
  signal data_out_x29_net: std_logic_vector(31 downto 0);
  signal data_out_x2_net: std_logic_vector(31 downto 0);
  signal data_out_x30_net: std_logic_vector(31 downto 0);
  signal data_out_x31_net: std_logic_vector(31 downto 0);
  signal data_out_x32_net: std_logic_vector(31 downto 0);
  signal data_out_x33_net: std_logic_vector(31 downto 0);
  signal data_out_x34_net: std_logic_vector(31 downto 0);
  signal data_out_x35_net: std_logic_vector(31 downto 0);
  signal data_out_x36_net: std_logic_vector(31 downto 0);
  signal data_out_x37_net: std_logic_vector(31 downto 0);
  signal data_out_x38_net: std_logic_vector(31 downto 0);
  signal data_out_x39_net: std_logic_vector(31 downto 0);
  signal data_out_x3_net: std_logic_vector(31 downto 0);
  signal data_out_x40_net: std_logic_vector(31 downto 0);
  signal data_out_x41_net: std_logic_vector(31 downto 0);
  signal data_out_x42_net: std_logic_vector(31 downto 0);
  signal data_out_x43_net: std_logic_vector(31 downto 0);
  signal data_out_x44_net: std_logic_vector(31 downto 0);
  signal data_out_x45_net: std_logic_vector(31 downto 0);
  signal data_out_x46_net: std_logic_vector(31 downto 0);
  signal data_out_x47_net: std_logic_vector(31 downto 0);
  signal data_out_x48_net: std_logic_vector(31 downto 0);
  signal data_out_x49_net: std_logic_vector(31 downto 0);
  signal data_out_x4_net: std_logic_vector(31 downto 0);
  signal data_out_x50_net: std_logic_vector(11 downto 0);
  signal data_out_x51_net: std_logic_vector(31 downto 0);
  signal data_out_x52_net: std_logic_vector(31 downto 0);
  signal data_out_x53_net: std_logic_vector(31 downto 0);
  signal data_out_x54_net: std_logic_vector(31 downto 0);
  signal data_out_x55_net: std_logic_vector(31 downto 0);
  signal data_out_x56_net: std_logic_vector(31 downto 0);
  signal data_out_x57_net: std_logic_vector(31 downto 0);
  signal data_out_x5_net: std_logic_vector(31 downto 0);
  signal data_out_x60_net: std_logic_vector(3 downto 0);
  signal data_out_x62_net: std_logic_vector(9 downto 0);
  signal data_out_x63_net: std_logic_vector(3 downto 0);
  signal data_out_x6_net: std_logic_vector(31 downto 0);
  signal data_out_x7_net: std_logic_vector(31 downto 0);
  signal data_out_x8_net: std_logic_vector(13 downto 0);
  signal data_out_x9_net: std_logic_vector(3 downto 0);
  signal debug_chipscopetrig1_net: std_logic;
  signal debug_pktdetautocorr_net: std_logic;
  signal debug_pktdetrssi_net: std_logic;
  signal en_net: std_logic;
  signal en_x0_net: std_logic;
  signal en_x10_net: std_logic;
  signal en_x11_net: std_logic;
  signal en_x12_net: std_logic;
  signal en_x13_net: std_logic;
  signal en_x14_net: std_logic;
  signal en_x15_net: std_logic;
  signal en_x16_net: std_logic;
  signal en_x17_net: std_logic;
  signal en_x18_net: std_logic;
  signal en_x19_net: std_logic;
  signal en_x1_net: std_logic;
  signal en_x20_net: std_logic;
  signal en_x21_net: std_logic;
  signal en_x22_net: std_logic;
  signal en_x23_net: std_logic;
  signal en_x24_net: std_logic;
  signal en_x25_net: std_logic;
  signal en_x26_net: std_logic;
  signal en_x27_net: std_logic;
  signal en_x28_net: std_logic;
  signal en_x29_net: std_logic;
  signal en_x2_net: std_logic;
  signal en_x30_net: std_logic;
  signal en_x31_net: std_logic;
  signal en_x32_net: std_logic;
  signal en_x33_net: std_logic;
  signal en_x34_net: std_logic;
  signal en_x35_net: std_logic;
  signal en_x36_net: std_logic;
  signal en_x37_net: std_logic;
  signal en_x38_net: std_logic;
  signal en_x39_net: std_logic;
  signal en_x3_net: std_logic;
  signal en_x40_net: std_logic;
  signal en_x43_net: std_logic;
  signal en_x44_net: std_logic;
  signal en_x45_net: std_logic;
  signal en_x46_net: std_logic;
  signal en_x47_net: std_logic;
  signal en_x48_net: std_logic;
  signal en_x49_net: std_logic;
  signal en_x4_net: std_logic;
  signal en_x5_net: std_logic;
  signal en_x6_net: std_logic;
  signal en_x7_net: std_logic;
  signal en_x8_net: std_logic;
  signal en_x9_net: std_logic;
  signal ext_pktdet_net: std_logic;
  signal ext_txen_net: std_logic;
  signal idlefordifs_disable_net: std_logic;
  signal idlefordifs_net: std_logic;
  signal midPacketRSSI_reg_ce: std_logic;
  signal persistentdff_inst_q: std_logic;
  attribute syn_keep: boolean;
  attribute syn_keep of persistentdff_inst_q: signal is true;
  attribute keep: boolean;
  attribute keep of persistentdff_inst_q: signal is true;
  attribute preserve_signal: boolean;
  attribute preserve_signal of persistentdff_inst_q: signal is true;
  signal pktDet_autoCorrParams_reg_ce: std_logic;
  signal pktDet_controlBits_reg_ce: std_logic;
  signal pktDet_durations_reg_ce: std_logic;
  signal pktDet_status_reg_ce: std_logic;
  signal pktDet_thresholds_reg_ce: std_logic;
  signal pktdet_net: std_logic;
  signal plb_abus_net: std_logic_vector(31 downto 0);
  signal plb_ce_1_sg_x1: std_logic;
  attribute MAX_FANOUT of plb_ce_1_sg_x1: signal is "REDUCE";
  signal plb_clk_1_sg_x1: std_logic;
  signal plb_pavalid_net: std_logic;
  signal plb_rnw_net: std_logic;
  signal plb_wrdbus_net: std_logic_vector(31 downto 0);
  signal radio_rxen_net: std_logic;
  signal radio_txen_net: std_logic;
  signal rssi_anta_net: std_logic_vector(9 downto 0);
  signal rssi_antb_net: std_logic_vector(9 downto 0);
  signal rssi_clk_out_net: std_logic;
  signal rx_anta_adci_net: std_logic_vector(13 downto 0);
  signal rx_anta_adcq_net: std_logic_vector(13 downto 0);
  signal rx_anta_agc_done_net: std_logic;
  signal rx_anta_gainbb_net: std_logic_vector(4 downto 0);
  signal rx_anta_gainrf_net: std_logic_vector(1 downto 0);
  signal rx_antb_adci_net: std_logic_vector(13 downto 0);
  signal rx_antb_adcq_net: std_logic_vector(13 downto 0);
  signal rx_antb_agc_done_net: std_logic;
  signal rx_antb_gainbb_net: std_logic_vector(4 downto 0);
  signal rx_antb_gainrf_net: std_logic_vector(1 downto 0);
  signal rx_debug_antsel_net: std_logic;
  signal rx_debug_eq_i_net: std_logic_vector(13 downto 0);
  signal rx_debug_eq_q_net: std_logic_vector(13 downto 0);
  signal rx_debug_evm_net: std_logic_vector(13 downto 0);
  signal rx_debug_payload_net: std_logic;
  signal rx_debug_phasecorrect_net: std_logic_vector(13 downto 0);
  signal rx_debug_phaseerror_net: std_logic_vector(13 downto 0);
  signal rx_debug_pktdone_net: std_logic;
  signal rx_int_badheader_net: std_logic;
  signal rx_int_badpkt_net: std_logic;
  signal rx_int_goodheader_net: std_logic;
  signal rx_int_goodpkt_net: std_logic;
  signal rx_pktdetreset_in_net: std_logic;
  signal rx_pktdetreset_net: std_logic;
  signal rx_reset_net: std_logic;
  signal sg_plb_addrpref_net: std_logic_vector(15 downto 0);
  signal shared_memory_data_out_net: std_logic_vector(31 downto 0);
  signal shared_memory_data_out_net_x0: std_logic_vector(31 downto 0);
  signal shared_memory_data_out_net_x1: std_logic_vector(31 downto 0);
  signal sl_addrack_net: std_logic;
  signal sl_rdcomp_net: std_logic;
  signal sl_rddack_net: std_logic;
  signal sl_rddbus_net: std_logic_vector(31 downto 0);
  signal sl_wait_net: std_logic;
  signal sl_wrdack_x1: std_logic;
  signal sl_wrdack_x2: std_logic;
  signal splb_rst_net: std_logic;
  signal tx_anta_dac_i_net: std_logic_vector(15 downto 0);
  signal tx_anta_dac_q_net: std_logic_vector(15 downto 0);
  signal tx_anta_i_div1_net: std_logic_vector(15 downto 0);
  signal tx_anta_i_div4_net: std_logic_vector(15 downto 0);
  signal tx_anta_q_div1_net: std_logic_vector(15 downto 0);
  signal tx_anta_q_div4_net: std_logic_vector(15 downto 0);
  signal tx_antb_dac_i_net: std_logic_vector(15 downto 0);
  signal tx_antb_dac_q_net: std_logic_vector(15 downto 0);
  signal tx_antb_i_div1_net: std_logic_vector(15 downto 0);
  signal tx_antb_i_div4_net: std_logic_vector(15 downto 0);
  signal tx_antb_q_div1_net: std_logic_vector(15 downto 0);
  signal tx_antb_q_div4_net: std_logic_vector(15 downto 0);
  signal tx_debug_pktrunning_net: std_logic;
  signal tx_pktdone_net: std_logic;
  signal tx_pktrunning_d0_net: std_logic;
  signal tx_pktrunning_d1_net: std_logic;
  signal tx_reset_net: std_logic;
  signal tx_starttransmit_net: std_logic;
  signal we_net: std_logic;
  signal we_x0_net: std_logic;
  signal we_x10_net: std_logic;
  signal we_x11_net: std_logic;
  signal we_x12_net: std_logic;
  signal we_x1_net: std_logic;
  signal we_x2_net: std_logic;
  signal we_x3_net: std_logic;
  signal we_x4_net: std_logic;
  signal we_x5_net: std_logic;
  signal we_x6_net: std_logic;
  signal we_x7_net: std_logic;
  signal we_x8_net: std_logic;
  signal we_x9_net: std_logic;

begin
  bram_datain_net <= bram_datain;
  clkNet <= clk;
  debug_chipscopetrig1_net <= debug_chipscopetrig1;
  ext_pktdet_net <= ext_pktdet;
  ext_txen_net <= ext_txen;
  idlefordifs_disable_net <= idlefordifs_disable;
  plb_abus_net <= plb_abus;
  plb_pavalid_net <= plb_pavalid;
  plb_rnw_net <= plb_rnw;
  plb_wrdbus_net <= plb_wrdbus;
  rssi_anta_net <= rssi_anta;
  rssi_antb_net <= rssi_antb;
  rx_anta_adci_net <= rx_anta_adci;
  rx_anta_adcq_net <= rx_anta_adcq;
  rx_anta_agc_done_net <= rx_anta_agc_done;
  rx_anta_gainbb_net <= rx_anta_gainbb;
  rx_anta_gainrf_net <= rx_anta_gainrf;
  rx_antb_adci_net <= rx_antb_adci;
  rx_antb_adcq_net <= rx_antb_adcq;
  rx_antb_agc_done_net <= rx_antb_agc_done;
  rx_antb_gainbb_net <= rx_antb_gainbb;
  rx_antb_gainrf_net <= rx_antb_gainrf;
  rx_pktdetreset_in_net <= rx_pktdetreset_in;
  rx_reset_net <= rx_reset;
  sg_plb_addrpref_net <= sg_plb_addrpref;
  splb_rst_net <= splb_rst;
  tx_anta_i_div1_net <= tx_anta_i_div1;
  tx_anta_q_div1_net <= tx_anta_q_div1;
  tx_antb_i_div1_net <= tx_antb_i_div1;
  tx_antb_q_div1_net <= tx_antb_q_div1;
  tx_reset_net <= tx_reset;
  tx_starttransmit_net <= tx_starttransmit;
  clkNet_x0 <= xps_clk;
  bram_addr <= bram_addr_net;
  bram_dout <= bram_dout_net;
  bram_en <= bram_en_net;
  bram_reset <= bram_reset_net;
  bram_wen <= bram_wen_net;
  debug_pktdetautocorr <= debug_pktdetautocorr_net;
  debug_pktdetrssi <= debug_pktdetrssi_net;
  idlefordifs <= idlefordifs_net;
  pktdet <= pktdet_net;
  radio_rxen <= radio_rxen_net;
  radio_txen <= radio_txen_net;
  rssi_clk_out <= rssi_clk_out_net;
  rx_debug_antsel <= rx_debug_antsel_net;
  rx_debug_eq_i <= rx_debug_eq_i_net;
  rx_debug_eq_q <= rx_debug_eq_q_net;
  rx_debug_evm <= rx_debug_evm_net;
  rx_debug_payload <= rx_debug_payload_net;
  rx_debug_phasecorrect <= rx_debug_phasecorrect_net;
  rx_debug_phaseerror <= rx_debug_phaseerror_net;
  rx_debug_pktdone <= rx_debug_pktdone_net;
  rx_int_badheader <= rx_int_badheader_net;
  rx_int_badpkt <= rx_int_badpkt_net;
  rx_int_goodheader <= rx_int_goodheader_net;
  rx_int_goodpkt <= rx_int_goodpkt_net;
  rx_pktdetreset <= rx_pktdetreset_net;
  sl_addrack <= sl_addrack_net;
  sl_rdcomp <= sl_rdcomp_net;
  sl_rddack <= sl_rddack_net;
  sl_rddbus <= sl_rddbus_net;
  sl_wait <= sl_wait_net;
  sl_wrcomp <= sl_wrdack_x1;
  sl_wrdack <= sl_wrdack_x2;
  tx_anta_dac_i <= tx_anta_dac_i_net;
  tx_anta_dac_q <= tx_anta_dac_q_net;
  tx_anta_i_div4 <= tx_anta_i_div4_net;
  tx_anta_q_div4 <= tx_anta_q_div4_net;
  tx_antb_dac_i <= tx_antb_dac_i_net;
  tx_antb_dac_q <= tx_antb_dac_q_net;
  tx_antb_i_div4 <= tx_antb_i_div4_net;
  tx_antb_q_div4 <= tx_antb_q_div4_net;
  tx_debug_pktrunning <= tx_debug_pktrunning_net;
  tx_pktdone <= tx_pktdone_net;
  tx_pktrunning_d0 <= tx_pktrunning_d0_net;
  tx_pktrunning_d1 <= tx_pktrunning_d1_net;

  ChannelEstimates: block_memory_generator_virtex6_6_3_7d0f296add6c1932
    port map (
      addra => addr_x10_net,
      addrb => addr_x1_net,
      clka => clk_2_sg_x271,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x60_net,
      dinb => data_in_x1_net,
      ena => ce_2_sg_x271,
      enb => plb_ce_1_sg_x1,
      wea(0) => we_x10_net,
      web(0) => we_x1_net,
      douta => shared_memory_data_out_net_x1,
      doutb => data_out_x11_net
    );

  EVM_perSC: block_memory_generator_virtex6_6_3_29970a1ccea6e03b
    port map (
      addra => addr_x7_net,
      addrb => addr_x4_net,
      clka => clk_2_sg_x271,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x57_net,
      dinb => data_in_x4_net,
      ena => ce_2_sg_x271,
      enb => plb_ce_1_sg_x1,
      wea(0) => we_x7_net,
      web(0) => we_x4_net,
      douta => shared_memory_data_out_net,
      doutb => data_out_x14_net
    );

  EVM_perSym: block_memory_generator_virtex6_6_3_2946513ff8459d63
    port map (
      addra => addr_x8_net,
      addrb => addr_x3_net,
      clka => clk_2_sg_x271,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x58_net,
      dinb => data_in_x3_net,
      ena => ce_2_sg_x271,
      enb => plb_ce_1_sg_x1,
      wea(0) => we_x8_net,
      web(0) => we_x3_net,
      douta => shared_memory_data_out_net_x0,
      doutb => data_out_x13_net
    );

  FEC_Config: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000001000001100011",
      latency => 1
    )
    port map (
      ce => FEC_Config_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x6_net,
      o => data_out_x56_net
    );

  FEC_Config_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_net,
      dout => FEC_Config_reg_ce
    );

  PktBufFreqOffsets: block_memory_generator_virtex6_6_3_3f3b21ad7dafdea5
    port map (
      addra => addr_x6_net,
      addrb => addr_x5_net,
      clka => clk_1_sg_x359,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x56_net,
      dinb => data_in_x5_net,
      ena => ce_1_sg_x359,
      enb => plb_ce_1_sg_x1,
      wea(0) => we_x6_net,
      web(0) => we_x5_net,
      douta => data_out_x57_net,
      doutb => data_out_x15_net
    );

  RxModulation: block_memory_generator_virtex6_6_3_83e3bf6fae7ffe3b
    port map (
      addra => addr_x9_net,
      addrb => addr_x2_net,
      clka => clk_2_sg_x271,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x59_net,
      dinb => data_in_x2_net,
      ena => ce_2_sg_x271,
      enb => plb_ce_1_sg_x1,
      wea(0) => we_x9_net,
      web(0) => we_x2_net,
      douta => data_out_x60_net,
      doutb => data_out_x12_net
    );

  Rx_AF_Blanking: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000001110111110000000110010000",
      latency => 1
    )
    port map (
      ce => Rx_AF_Blanking_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x14_net,
      o => data_out_x40_net
    );

  Rx_AF_Blanking_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x7_net,
      dout => Rx_AF_Blanking_reg_ce
    );

  Rx_AF_TxScaling: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000101110000000",
      latency => 1
    )
    port map (
      ce => Rx_AF_TxScaling_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x13_net,
      o => data_out_x41_net
    );

  Rx_AF_TxScaling_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x6_net,
      dout => Rx_AF_TxScaling_reg_ce
    );

  Rx_BER_Errors: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => Rx_BER_Errors_reg_ce,
      clk => clk_1_sg_x359,
      clr => '0',
      i => data_in_x48_net,
      o => data_out_x6_net
    );

  Rx_BER_Errors_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x359,
      b => constant_op_net_x15,
      dout => Rx_BER_Errors_reg_ce
    );

  Rx_BER_TotalBits: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => Rx_BER_TotalBits_reg_ce,
      clk => clk_1_sg_x359,
      clr => '0',
      i => data_in_x49_net,
      o => data_out_x5_net
    );

  Rx_BER_TotalBits_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x359,
      b => constant_op_net_x16,
      dout => Rx_BER_TotalBits_reg_ce
    );

  Rx_ChanEst_MinMag: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"01000000000000000100000000000000",
      latency => 1
    )
    port map (
      ce => Rx_ChanEst_MinMag_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x19_net,
      o => data_out_x36_net
    );

  Rx_ChanEst_MinMag_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x12_net,
      dout => Rx_ChanEst_MinMag_reg_ce
    );

  Rx_Constellation_Scaling: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00010000000000000001000000000000",
      latency => 1
    )
    port map (
      ce => Rx_Constellation_Scaling_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x16_net,
      o => data_out_x38_net
    );

  Rx_Constellation_Scaling_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x9_net,
      dout => Rx_Constellation_Scaling_reg_ce
    );

  Rx_ControlBits: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000010000010010001010111110110",
      latency => 1
    )
    port map (
      ce => Rx_ControlBits_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x27_net,
      o => data_out_x28_net
    );

  Rx_ControlBits_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x20_net,
      dout => Rx_ControlBits_reg_ce
    );

  Rx_FixedPktLen: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => Rx_FixedPktLen_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x21_net,
      o => data_out_x34_net
    );

  Rx_FixedPktLen_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x14_net,
      dout => Rx_FixedPktLen_reg_ce
    );

  Rx_Gains: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => Rx_Gains_reg_ce,
      clk => clk_1_sg_x359,
      clr => '0',
      i => data_in_x47_net,
      o => data_out_x7_net
    );

  Rx_Gains_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x359,
      b => en_x40_net,
      dout => Rx_Gains_reg_ce
    );

  Rx_OFDM_SymbolCounts: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000001000000000000000010",
      latency => 1
    )
    port map (
      ce => Rx_OFDM_SymbolCounts_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x18_net,
      o => data_out_x54_net
    );

  Rx_OFDM_SymbolCounts_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x11_net,
      dout => Rx_OFDM_SymbolCounts_reg_ce
    );

  Rx_PilotCalcParams: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000001000000000000101001",
      latency => 1
    )
    port map (
      ce => Rx_PilotCalcParams_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x15_net,
      o => data_out_x39_net
    );

  Rx_PilotCalcParams_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x8_net,
      dout => Rx_PilotCalcParams_reg_ce
    );

  Rx_PktDet_Delay: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"01110101000000000000010101011010",
      latency => 1
    )
    port map (
      ce => Rx_PktDet_Delay_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x17_net,
      o => data_out_x37_net
    );

  Rx_PktDet_Delay_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x10_net,
      dout => Rx_PktDet_Delay_reg_ce
    );

  Rx_PktDet_LongCorr_Params: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"11111111000000001111111111110101",
      latency => 1
    )
    port map (
      ce => Rx_PktDet_LongCorr_Params_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x23_net,
      o => data_out_x32_net
    );

  Rx_PktDet_LongCorr_Params_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x16_net,
      dout => Rx_PktDet_LongCorr_Params_reg_ce
    );

  Rx_PktDet_LongCorr_Thresholds: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000001111101000000",
      latency => 1
    )
    port map (
      ce => Rx_PktDet_LongCorr_Thresholds_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x22_net,
      o => data_out_x33_net
    );

  Rx_PktDet_LongCorr_Thresholds_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x15_net,
      dout => Rx_PktDet_LongCorr_Thresholds_reg_ce
    );

  Rx_PreCFO_Options: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000010",
      latency => 1
    )
    port map (
      ce => Rx_PreCFO_Options_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x26_net,
      o => data_out_x29_net
    );

  Rx_PreCFO_Options_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x19_net,
      dout => Rx_PreCFO_Options_reg_ce
    );

  Rx_PreCFO_PilotCalcCorrection: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"10000000001001011010111011100110",
      latency => 1
    )
    port map (
      ce => Rx_PreCFO_PilotCalcCorrection_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x25_net,
      o => data_out_x30_net
    );

  Rx_PreCFO_PilotCalcCorrection_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x18_net,
      dout => Rx_PreCFO_PilotCalcCorrection_reg_ce
    );

  Rx_coarseCFO_correction: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000001111000110011",
      latency => 1
    )
    port map (
      ce => Rx_coarseCFO_correction_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x24_net,
      o => data_out_x31_net
    );

  Rx_coarseCFO_correction_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x17_net,
      dout => Rx_coarseCFO_correction_reg_ce
    );

  Rx_coarseCFOest: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => Rx_coarseCFOest_reg_ce,
      clk => clk_4_sg_x223,
      clr => '0',
      i => data_in_x52_net,
      o => data_out_x2_net
    );

  Rx_coarseCFOest_ce_and2_comp: entity work.xland2
    port map (
      a => ce_4_sg_x223,
      b => en_x45_net,
      dout => Rx_coarseCFOest_reg_ce
    );

  Rx_pilotCFOest: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => Rx_pilotCFOest_reg_ce,
      clk => clk_1_sg_x359,
      clr => '0',
      i => data_in_x51_net,
      o => data_out_x3_net
    );

  Rx_pilotCFOest_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x359,
      b => en_x44_net,
      dout => Rx_pilotCFOest_reg_ce
    );

  Rx_pktByteNums: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000100000001100011000",
      latency => 1
    )
    port map (
      ce => Rx_pktByteNums_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x20_net,
      o => data_out_x35_net
    );

  Rx_pktByteNums_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x13_net,
      dout => Rx_pktByteNums_reg_ce
    );

  Rx_pktDetEventCount: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => Rx_pktDetEventCount_reg_ce,
      clk => clk_1_sg_x359,
      clr => '0',
      i => data_in_x53_net,
      o => data_out_x1_net
    );

  Rx_pktDetEventCount_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x359,
      b => en_x46_net,
      dout => Rx_pktDetEventCount_reg_ce
    );

  Rx_pktDone_interruptStatus: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => Rx_pktDone_interruptStatus_reg_ce,
      clk => clk_1_sg_x359,
      clr => '0',
      i => data_in_x50_net,
      o => data_out_x4_net
    );

  Rx_pktDone_interruptStatus_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x359,
      b => en_x43_net,
      dout => Rx_pktDone_interruptStatus_reg_ce
    );

  TxHeaderTranslate: block_memory_generator_virtex6_6_3_8aed8dbaea13f2ec
    port map (
      addra => addr_x11_net,
      addrb => addr_x0_net,
      clka => clk_2_sg_x271,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x62_net,
      dinb => data_in_x0_net,
      ena => ce_2_sg_x271,
      enb => plb_ce_1_sg_x1,
      wea(0) => we_x11_net,
      web(0) => we_x0_net,
      douta => data_out_x62_net,
      doutb => data_out_x10_net
    );

  TxModulation: block_memory_generator_virtex6_6_3_83e3bf6fae7ffe3b
    port map (
      addra => addr_x12_net,
      addrb => addr_net,
      clka => clk_2_sg_x271,
      clkb => plb_clk_1_sg_x1,
      dina => data_in_x63_net,
      dinb => data_in_net,
      ena => ce_2_sg_x271,
      enb => plb_ce_1_sg_x1,
      wea(0) => we_x12_net,
      web(0) => we_net,
      douta => data_out_x63_net,
      doutb => data_out_x9_net
    );

  TxRx_AutoReply_Action0: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000110100000000000",
      latency => 1
    )
    port map (
      ce => TxRx_AutoReply_Action0_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x32_net,
      o => data_out_x24_net
    );

  TxRx_AutoReply_Action0_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x25_net,
      dout => TxRx_AutoReply_Action0_reg_ce
    );

  TxRx_AutoReply_Action1: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000010100000000000",
      latency => 1
    )
    port map (
      ce => TxRx_AutoReply_Action1_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x31_net,
      o => data_out_x25_net
    );

  TxRx_AutoReply_Action1_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x24_net,
      dout => TxRx_AutoReply_Action1_reg_ce
    );

  TxRx_AutoReply_Action2: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => TxRx_AutoReply_Action2_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x30_net,
      o => data_out_x26_net
    );

  TxRx_AutoReply_Action2_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x23_net,
      dout => TxRx_AutoReply_Action2_reg_ce
    );

  TxRx_AutoReply_Action3: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => TxRx_AutoReply_Action3_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x28_net,
      o => data_out_x27_net
    );

  TxRx_AutoReply_Action3_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x21_net,
      dout => TxRx_AutoReply_Action3_reg_ce
    );

  TxRx_AutoReply_Action4: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => TxRx_AutoReply_Action4_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x38_net,
      o => data_out_x18_net
    );

  TxRx_AutoReply_Action4_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x31_net,
      dout => TxRx_AutoReply_Action4_reg_ce
    );

  TxRx_AutoReply_Action5: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => TxRx_AutoReply_Action5_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x37_net,
      o => data_out_x19_net
    );

  TxRx_AutoReply_Action5_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x30_net,
      dout => TxRx_AutoReply_Action5_reg_ce
    );

  TxRx_AutoReply_Match0: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => TxRx_AutoReply_Match0_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x41_net,
      o => data_out_x16_net
    );

  TxRx_AutoReply_Match0_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x34_net,
      dout => TxRx_AutoReply_Match0_reg_ce
    );

  TxRx_AutoReply_Match1: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => TxRx_AutoReply_Match1_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x39_net,
      o => data_out_x17_net
    );

  TxRx_AutoReply_Match1_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x32_net,
      dout => TxRx_AutoReply_Match1_reg_ce
    );

  TxRx_AutoReply_Match2: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => TxRx_AutoReply_Match2_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x36_net,
      o => data_out_x20_net
    );

  TxRx_AutoReply_Match2_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x29_net,
      dout => TxRx_AutoReply_Match2_reg_ce
    );

  TxRx_AutoReply_Match3: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => TxRx_AutoReply_Match3_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x35_net,
      o => data_out_x21_net
    );

  TxRx_AutoReply_Match3_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x28_net,
      dout => TxRx_AutoReply_Match3_reg_ce
    );

  TxRx_AutoReply_Match4: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => TxRx_AutoReply_Match4_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x34_net,
      o => data_out_x22_net
    );

  TxRx_AutoReply_Match4_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x27_net,
      dout => TxRx_AutoReply_Match4_reg_ce
    );

  TxRx_AutoReply_Match5: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => TxRx_AutoReply_Match5_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x33_net,
      o => data_out_x23_net
    );

  TxRx_AutoReply_Match5_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x26_net,
      dout => TxRx_AutoReply_Match5_reg_ce
    );

  TxRx_FFT_Scaling: entity work.synth_reg_w_init
    generic map (
      width => 12,
      init_index => 2,
      init_value => b"000101011011",
      latency => 1
    )
    port map (
      ce => TxRx_FFT_Scaling_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x43_net,
      o => data_out_x50_net
    );

  TxRx_FFT_Scaling_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x36_net,
      dout => TxRx_FFT_Scaling_reg_ce
    );

  TxRx_Interrupt_PktBuf_Ctrl: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000010000000000000000",
      latency => 1
    )
    port map (
      ce => TxRx_Interrupt_PktBuf_Ctrl_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x42_net,
      o => data_out_x51_net
    );

  TxRx_Interrupt_PktBuf_Ctrl_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x35_net,
      dout => TxRx_Interrupt_PktBuf_Ctrl_reg_ce
    );

  TxRx_Pilots_Index: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00010101001110010010101100000111",
      latency => 1
    )
    port map (
      ce => TxRx_Pilots_Index_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x40_net,
      o => data_out_x52_net
    );

  TxRx_Pilots_Index_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x33_net,
      dout => TxRx_Pilots_Index_reg_ce
    );

  TxRx_Pilots_Values: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"01011010100000101010010101111101",
      latency => 1
    )
    port map (
      ce => TxRx_Pilots_Values_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x29_net,
      o => data_out_x53_net
    );

  TxRx_Pilots_Values_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x22_net,
      dout => TxRx_Pilots_Values_reg_ce
    );

  Tx_ControlBits: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000111000000000111001",
      latency => 1
    )
    port map (
      ce => Tx_ControlBits_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x45_net,
      o => data_out_x48_net
    );

  Tx_ControlBits_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x38_net,
      dout => Tx_ControlBits_reg_ce
    );

  Tx_Delays: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000011110000000110010",
      latency => 1
    )
    port map (
      ce => Tx_Delays_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x46_net,
      o => data_out_x47_net
    );

  Tx_Delays_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x39_net,
      dout => Tx_Delays_reg_ce
    );

  Tx_OFDM_SymCounts: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000010000000010",
      latency => 1
    )
    port map (
      ce => Tx_OFDM_SymCounts_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x7_net,
      o => data_out_x55_net
    );

  Tx_OFDM_SymCounts_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x0_net,
      dout => Tx_OFDM_SymCounts_reg_ce
    );

  Tx_PktRunning: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => Tx_PktRunning_reg_ce,
      clk => clk_1_sg_x359,
      clr => '0',
      i => data_in_x55_net,
      o => data_out_x0_net
    );

  Tx_PktRunning_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x359,
      b => en_x48_net,
      dout => Tx_PktRunning_reg_ce
    );

  Tx_Scaling: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00110000000000000000110000000000",
      latency => 1
    )
    port map (
      ce => Tx_Scaling_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x8_net,
      o => data_out_x46_net
    );

  Tx_Scaling_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x1_net,
      dout => Tx_Scaling_reg_ce
    );

  Tx_Start_Reset_Control: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => Tx_Start_Reset_Control_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x44_net,
      o => data_out_x49_net
    );

  Tx_Start_Reset_Control_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x37_net,
      dout => Tx_Start_Reset_Control_reg_ce
    );

  default_clock_driver_x0: entity work.default_clock_driver
    port map (
      sysce => '1',
      sysce_clr => '0',
      sysclk => clkNet,
      ce_1 => ce_1_sg_x359,
      ce_2 => ce_2_sg_x271,
      ce_4 => ce_4_sg_x223,
      ce_8 => ce_8_sg_x7,
      clk_1 => clk_1_sg_x359,
      clk_2 => clk_2_sg_x271,
      clk_4 => clk_4_sg_x223,
      clk_8 => clk_8_sg_x7
    );

  midPacketRSSI: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000000000000",
      latency => 1
    )
    port map (
      ce => midPacketRSSI_reg_ce,
      clk => clk_4_sg_x223,
      clr => '0',
      i => data_in_x61_net,
      o => data_out_net
    );

  midPacketRSSI_ce_and2_comp: entity work.xland2
    port map (
      a => ce_4_sg_x223,
      b => en_x49_net,
      dout => midPacketRSSI_reg_ce
    );

  ofdm_txrx_supermimo_coded_x0: entity work.ofdm_txrx_supermimo_coded
    port map (
      bram_datain => bram_datain_net,
      ce_1 => ce_1_sg_x359,
      ce_2 => ce_2_sg_x271,
      ce_4 => ce_4_sg_x223,
      ce_8 => ce_8_sg_x7,
      clk_1 => clk_1_sg_x359,
      clk_2 => clk_2_sg_x271,
      clk_4 => clk_4_sg_x223,
      clk_8 => clk_8_sg_x7,
      data_out => data_out_net,
      data_out_x0 => data_out_x0_net,
      data_out_x1 => data_out_x1_net,
      data_out_x10 => data_out_x10_net,
      data_out_x11 => data_out_x11_net,
      data_out_x12 => data_out_x12_net,
      data_out_x13 => data_out_x13_net,
      data_out_x14 => data_out_x14_net,
      data_out_x15 => data_out_x15_net,
      data_out_x16 => data_out_x16_net,
      data_out_x17 => data_out_x17_net,
      data_out_x18 => data_out_x18_net,
      data_out_x19 => data_out_x19_net,
      data_out_x2 => data_out_x2_net,
      data_out_x20 => data_out_x20_net,
      data_out_x21 => data_out_x21_net,
      data_out_x22 => data_out_x22_net,
      data_out_x23 => data_out_x23_net,
      data_out_x24 => data_out_x24_net,
      data_out_x25 => data_out_x25_net,
      data_out_x26 => data_out_x26_net,
      data_out_x27 => data_out_x27_net,
      data_out_x28 => data_out_x28_net,
      data_out_x29 => data_out_x29_net,
      data_out_x3 => data_out_x3_net,
      data_out_x30 => data_out_x30_net,
      data_out_x31 => data_out_x31_net,
      data_out_x32 => data_out_x32_net,
      data_out_x33 => data_out_x33_net,
      data_out_x34 => data_out_x34_net,
      data_out_x35 => data_out_x35_net,
      data_out_x36 => data_out_x36_net,
      data_out_x37 => data_out_x37_net,
      data_out_x38 => data_out_x38_net,
      data_out_x39 => data_out_x39_net,
      data_out_x4 => data_out_x4_net,
      data_out_x40 => data_out_x40_net,
      data_out_x41 => data_out_x41_net,
      data_out_x42 => data_out_x42_net,
      data_out_x43 => data_out_x43_net,
      data_out_x44 => data_out_x44_net,
      data_out_x45 => data_out_x45_net,
      data_out_x46 => data_out_x46_net,
      data_out_x47 => data_out_x47_net,
      data_out_x48 => data_out_x48_net,
      data_out_x49 => data_out_x49_net,
      data_out_x5 => data_out_x5_net,
      data_out_x50 => data_out_x50_net,
      data_out_x51 => data_out_x51_net,
      data_out_x52 => data_out_x52_net,
      data_out_x53 => data_out_x53_net,
      data_out_x54 => data_out_x54_net,
      data_out_x55 => data_out_x55_net,
      data_out_x56 => data_out_x56_net,
      data_out_x57 => data_out_x57_net,
      data_out_x6 => data_out_x6_net,
      data_out_x60 => data_out_x60_net,
      data_out_x62 => data_out_x62_net,
      data_out_x63 => data_out_x63_net,
      data_out_x7 => data_out_x7_net,
      data_out_x8 => data_out_x8_net,
      data_out_x9 => data_out_x9_net,
      debug_chipscopetrig1 => debug_chipscopetrig1_net,
      dout => data_out_x56_net,
      dout_x0 => data_out_x55_net,
      dout_x1 => data_out_x46_net,
      dout_x10 => data_out_x37_net,
      dout_x11 => data_out_x54_net,
      dout_x12 => data_out_x36_net,
      dout_x13 => data_out_x35_net,
      dout_x14 => data_out_x34_net,
      dout_x15 => data_out_x33_net,
      dout_x16 => data_out_x32_net,
      dout_x17 => data_out_x31_net,
      dout_x18 => data_out_x30_net,
      dout_x19 => data_out_x29_net,
      dout_x2 => data_out_x45_net,
      dout_x20 => data_out_x28_net,
      dout_x21 => data_out_x27_net,
      dout_x22 => data_out_x53_net,
      dout_x23 => data_out_x26_net,
      dout_x24 => data_out_x25_net,
      dout_x25 => data_out_x24_net,
      dout_x26 => data_out_x23_net,
      dout_x27 => data_out_x22_net,
      dout_x28 => data_out_x21_net,
      dout_x29 => data_out_x20_net,
      dout_x3 => data_out_x44_net,
      dout_x30 => data_out_x19_net,
      dout_x31 => data_out_x18_net,
      dout_x32 => data_out_x17_net,
      dout_x33 => data_out_x52_net,
      dout_x34 => data_out_x16_net,
      dout_x35 => data_out_x51_net,
      dout_x36 => data_out_x50_net,
      dout_x37 => data_out_x49_net,
      dout_x38 => data_out_x48_net,
      dout_x39 => data_out_x47_net,
      dout_x4 => data_out_x43_net,
      dout_x5 => data_out_x42_net,
      dout_x6 => data_out_x41_net,
      dout_x7 => data_out_x40_net,
      dout_x8 => data_out_x39_net,
      dout_x9 => data_out_x38_net,
      ext_pktdet => ext_pktdet_net,
      ext_txen => ext_txen_net,
      idlefordifs_disable => idlefordifs_disable_net,
      plb_abus => plb_abus_net,
      plb_ce_1 => plb_ce_1_sg_x1,
      plb_clk_1 => plb_clk_1_sg_x1,
      plb_pavalid => plb_pavalid_net,
      plb_rnw => plb_rnw_net,
      plb_wrdbus => plb_wrdbus_net,
      rssi_anta => rssi_anta_net,
      rssi_antb => rssi_antb_net,
      rx_anta_adci => rx_anta_adci_net,
      rx_anta_adcq => rx_anta_adcq_net,
      rx_anta_agc_done => rx_anta_agc_done_net,
      rx_anta_gainbb => rx_anta_gainbb_net,
      rx_anta_gainrf => rx_anta_gainrf_net,
      rx_antb_adci => rx_antb_adci_net,
      rx_antb_adcq => rx_antb_adcq_net,
      rx_antb_agc_done => rx_antb_agc_done_net,
      rx_antb_gainbb => rx_antb_gainbb_net,
      rx_antb_gainrf => rx_antb_gainrf_net,
      rx_pktdetreset_in => rx_pktdetreset_in_net,
      rx_reset => rx_reset_net,
      sg_plb_addrpref => sg_plb_addrpref_net,
      splb_rst => splb_rst_net,
      tx_anta_i_div1 => tx_anta_i_div1_net,
      tx_anta_q_div1 => tx_anta_q_div1_net,
      tx_antb_i_div1 => tx_antb_i_div1_net,
      tx_antb_q_div1 => tx_antb_q_div1_net,
      tx_reset => tx_reset_net,
      tx_starttransmit => tx_starttransmit_net,
      addr => addr_net,
      addr_x0 => addr_x0_net,
      addr_x1 => addr_x1_net,
      addr_x10 => addr_x10_net,
      addr_x11 => addr_x11_net,
      addr_x12 => addr_x12_net,
      addr_x2 => addr_x2_net,
      addr_x3 => addr_x3_net,
      addr_x4 => addr_x4_net,
      addr_x5 => addr_x5_net,
      addr_x6 => addr_x6_net,
      addr_x7 => addr_x7_net,
      addr_x8 => addr_x8_net,
      addr_x9 => addr_x9_net,
      bram_addr => bram_addr_net,
      bram_dout => bram_dout_net,
      bram_en => bram_en_net,
      bram_reset => bram_reset_net,
      bram_wen => bram_wen_net,
      data_in => data_in_net,
      data_in_x0 => data_in_x0_net,
      data_in_x1 => data_in_x1_net,
      data_in_x10 => data_in_x10_net,
      data_in_x11 => data_in_x11_net,
      data_in_x12 => data_in_x12_net,
      data_in_x13 => data_in_x13_net,
      data_in_x14 => data_in_x14_net,
      data_in_x15 => data_in_x15_net,
      data_in_x16 => data_in_x16_net,
      data_in_x17 => data_in_x17_net,
      data_in_x18 => data_in_x18_net,
      data_in_x19 => data_in_x19_net,
      data_in_x2 => data_in_x2_net,
      data_in_x20 => data_in_x20_net,
      data_in_x21 => data_in_x21_net,
      data_in_x22 => data_in_x22_net,
      data_in_x23 => data_in_x23_net,
      data_in_x24 => data_in_x24_net,
      data_in_x25 => data_in_x25_net,
      data_in_x26 => data_in_x26_net,
      data_in_x27 => data_in_x27_net,
      data_in_x28 => data_in_x28_net,
      data_in_x29 => data_in_x29_net,
      data_in_x3 => data_in_x3_net,
      data_in_x30 => data_in_x30_net,
      data_in_x31 => data_in_x31_net,
      data_in_x32 => data_in_x32_net,
      data_in_x33 => data_in_x33_net,
      data_in_x34 => data_in_x34_net,
      data_in_x35 => data_in_x35_net,
      data_in_x36 => data_in_x36_net,
      data_in_x37 => data_in_x37_net,
      data_in_x38 => data_in_x38_net,
      data_in_x39 => data_in_x39_net,
      data_in_x4 => data_in_x4_net,
      data_in_x40 => data_in_x40_net,
      data_in_x41 => data_in_x41_net,
      data_in_x42 => data_in_x42_net,
      data_in_x43 => data_in_x43_net,
      data_in_x44 => data_in_x44_net,
      data_in_x45 => data_in_x45_net,
      data_in_x46 => data_in_x46_net,
      data_in_x47 => data_in_x47_net,
      data_in_x48 => data_in_x48_net,
      data_in_x49 => data_in_x49_net,
      data_in_x5 => data_in_x5_net,
      data_in_x50 => data_in_x50_net,
      data_in_x51 => data_in_x51_net,
      data_in_x52 => data_in_x52_net,
      data_in_x53 => data_in_x53_net,
      data_in_x54 => data_in_x54_net,
      data_in_x55 => data_in_x55_net,
      data_in_x56 => data_in_x56_net,
      data_in_x57 => data_in_x57_net,
      data_in_x58 => data_in_x58_net,
      data_in_x59 => data_in_x59_net,
      data_in_x6 => data_in_x6_net,
      data_in_x60 => data_in_x60_net,
      data_in_x61 => data_in_x61_net,
      data_in_x62 => data_in_x62_net,
      data_in_x63 => data_in_x63_net,
      data_in_x7 => data_in_x7_net,
      data_in_x8 => data_in_x8_net,
      data_in_x9 => data_in_x9_net,
      debug_pktdetautocorr => debug_pktdetautocorr_net,
      debug_pktdetrssi => debug_pktdetrssi_net,
      en => en_net,
      en_x0 => en_x0_net,
      en_x1 => en_x1_net,
      en_x10 => en_x10_net,
      en_x11 => en_x11_net,
      en_x12 => en_x12_net,
      en_x13 => en_x13_net,
      en_x14 => en_x14_net,
      en_x15 => en_x15_net,
      en_x16 => en_x16_net,
      en_x17 => en_x17_net,
      en_x18 => en_x18_net,
      en_x19 => en_x19_net,
      en_x2 => en_x2_net,
      en_x20 => en_x20_net,
      en_x21 => en_x21_net,
      en_x22 => en_x22_net,
      en_x23 => en_x23_net,
      en_x24 => en_x24_net,
      en_x25 => en_x25_net,
      en_x26 => en_x26_net,
      en_x27 => en_x27_net,
      en_x28 => en_x28_net,
      en_x29 => en_x29_net,
      en_x3 => en_x3_net,
      en_x30 => en_x30_net,
      en_x31 => en_x31_net,
      en_x32 => en_x32_net,
      en_x33 => en_x33_net,
      en_x34 => en_x34_net,
      en_x35 => en_x35_net,
      en_x36 => en_x36_net,
      en_x37 => en_x37_net,
      en_x38 => en_x38_net,
      en_x39 => en_x39_net,
      en_x4 => en_x4_net,
      en_x40 => en_x40_net,
      en_x41 => constant_op_net_x15,
      en_x42 => constant_op_net_x16,
      en_x43 => en_x43_net,
      en_x44 => en_x44_net,
      en_x45 => en_x45_net,
      en_x46 => en_x46_net,
      en_x47 => en_x47_net,
      en_x48 => en_x48_net,
      en_x49 => en_x49_net,
      en_x5 => en_x5_net,
      en_x6 => en_x6_net,
      en_x7 => en_x7_net,
      en_x8 => en_x8_net,
      en_x9 => en_x9_net,
      idlefordifs => idlefordifs_net,
      pktdet => pktdet_net,
      radio_rxen => radio_rxen_net,
      radio_txen => radio_txen_net,
      rssi_clk_out => rssi_clk_out_net,
      rx_debug_antsel => rx_debug_antsel_net,
      rx_debug_eq_i => rx_debug_eq_i_net,
      rx_debug_eq_q => rx_debug_eq_q_net,
      rx_debug_evm => rx_debug_evm_net,
      rx_debug_payload => rx_debug_payload_net,
      rx_debug_phasecorrect => rx_debug_phasecorrect_net,
      rx_debug_phaseerror => rx_debug_phaseerror_net,
      rx_debug_pktdone => rx_debug_pktdone_net,
      rx_int_badheader => rx_int_badheader_net,
      rx_int_badpkt => rx_int_badpkt_net,
      rx_int_goodheader => rx_int_goodheader_net,
      rx_int_goodpkt => rx_int_goodpkt_net,
      rx_pktdetreset => rx_pktdetreset_net,
      sl_addrack => sl_addrack_net,
      sl_rdcomp => sl_rdcomp_net,
      sl_rddack => sl_rddack_net,
      sl_rddbus => sl_rddbus_net,
      sl_wait => sl_wait_net,
      sl_wrcomp => sl_wrdack_x1,
      sl_wrdack => sl_wrdack_x2,
      tx_anta_dac_i => tx_anta_dac_i_net,
      tx_anta_dac_q => tx_anta_dac_q_net,
      tx_anta_i_div4 => tx_anta_i_div4_net,
      tx_anta_q_div4 => tx_anta_q_div4_net,
      tx_antb_dac_i => tx_antb_dac_i_net,
      tx_antb_dac_q => tx_antb_dac_q_net,
      tx_antb_i_div4 => tx_antb_i_div4_net,
      tx_antb_q_div4 => tx_antb_q_div4_net,
      tx_debug_pktrunning => tx_debug_pktrunning_net,
      tx_pktdone => tx_pktdone_net,
      tx_pktrunning_d0 => tx_pktrunning_d0_net,
      tx_pktrunning_d1 => tx_pktrunning_d1_net,
      we => we_net,
      we_x0 => we_x0_net,
      we_x1 => we_x1_net,
      we_x10 => we_x10_net,
      we_x11 => we_x11_net,
      we_x12 => we_x12_net,
      we_x2 => we_x2_net,
      we_x3 => we_x3_net,
      we_x4 => we_x4_net,
      we_x5 => we_x5_net,
      we_x6 => we_x6_net,
      we_x7 => we_x7_net,
      we_x8 => we_x8_net,
      we_x9 => we_x9_net
    );

  persistentdff_inst: xlpersistentdff
    port map (
      clk => clkNet,
      d => persistentdff_inst_q,
      q => persistentdff_inst_q
    );

  pktDet_autoCorrParams: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000000101011010",
      latency => 1
    )
    port map (
      ce => pktDet_autoCorrParams_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x11_net,
      o => data_out_x43_net
    );

  pktDet_autoCorrParams_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x4_net,
      dout => pktDet_autoCorrParams_reg_ce
    );

  pktDet_controlBits: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000000000000000000001001111000",
      latency => 1
    )
    port map (
      ce => pktDet_controlBits_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x12_net,
      o => data_out_x42_net
    );

  pktDet_controlBits_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x5_net,
      dout => pktDet_controlBits_reg_ce
    );

  pktDet_durations: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00000110000111110100000000110000",
      latency => 1
    )
    port map (
      ce => pktDet_durations_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x10_net,
      o => data_out_x44_net
    );

  pktDet_durations_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x3_net,
      dout => pktDet_durations_reg_ce
    );

  pktDet_status: entity work.synth_reg_w_init
    generic map (
      width => 14,
      init_index => 2,
      init_value => b"00000000000000",
      latency => 1
    )
    port map (
      ce => pktDet_status_reg_ce,
      clk => clk_1_sg_x359,
      clr => '0',
      i => data_in_x54_net,
      o => data_out_x8_net
    );

  pktDet_status_ce_and2_comp: entity work.xland2
    port map (
      a => ce_1_sg_x359,
      b => en_x47_net,
      dout => pktDet_status_reg_ce
    );

  pktDet_thresholds: entity work.synth_reg_w_init
    generic map (
      width => 32,
      init_index => 2,
      init_value => b"00001011101110000000101110111000",
      latency => 1
    )
    port map (
      ce => pktDet_thresholds_reg_ce,
      clk => plb_clk_1_sg_x1,
      clr => '0',
      i => data_in_x9_net,
      o => data_out_x45_net
    );

  pktDet_thresholds_ce_and2_comp: entity work.xland2
    port map (
      a => plb_ce_1_sg_x1,
      b => en_x2_net,
      dout => pktDet_thresholds_reg_ce
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
