--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_62a43530160d497c.vhd when simulating
-- the core, cntr_11_0_62a43530160d497c. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_62a43530160d497c IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END cntr_11_0_62a43530160d497c;

ARCHITECTURE cntr_11_0_62a43530160d497c_a OF cntr_11_0_62a43530160d497c IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_62a43530160d497c
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_62a43530160d497c USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 16,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_62a43530160d497c
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_62a43530160d497c_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2012 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_b615980e1379bd9b.vhd when simulating
-- the core, cntr_11_0_b615980e1379bd9b. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_b615980e1379bd9b IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END cntr_11_0_b615980e1379bd9b;

ARCHITECTURE cntr_11_0_b615980e1379bd9b_a OF cntr_11_0_b615980e1379bd9b IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_b615980e1379bd9b
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_b615980e1379bd9b USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 32,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_b615980e1379bd9b
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_b615980e1379bd9b_a;

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
package conv_pkg is
    constant simulating : boolean := false
      -- synopsys translate_off
        or true
      -- synopsys translate_on
    ;
    constant xlUnsigned : integer := 1;
    constant xlSigned : integer := 2;
    constant xlFloat : integer := 3;
    constant xlWrap : integer := 1;
    constant xlSaturate : integer := 2;
    constant xlTruncate : integer := 1;
    constant xlRound : integer := 2;
    constant xlRoundBanker : integer := 3;
    constant xlAddMode : integer := 1;
    constant xlSubMode : integer := 2;
    attribute black_box : boolean;
    attribute syn_black_box : boolean;
    attribute fpga_dont_touch: string;
    attribute box_type :  string;
    attribute keep : string;
    attribute syn_keep : boolean;
    function std_logic_vector_to_unsigned(inp : std_logic_vector) return unsigned;
    function unsigned_to_std_logic_vector(inp : unsigned) return std_logic_vector;
    function std_logic_vector_to_signed(inp : std_logic_vector) return signed;
    function signed_to_std_logic_vector(inp : signed) return std_logic_vector;
    function unsigned_to_signed(inp : unsigned) return signed;
    function signed_to_unsigned(inp : signed) return unsigned;
    function pos(inp : std_logic_vector; arith : INTEGER) return boolean;
    function all_same(inp: std_logic_vector) return boolean;
    function all_zeros(inp: std_logic_vector) return boolean;
    function is_point_five(inp: std_logic_vector) return boolean;
    function all_ones(inp: std_logic_vector) return boolean;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector;
    function cast (inp : std_logic_vector; old_bin_pt,
                   new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
        return std_logic_vector;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
        return unsigned;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
        return unsigned;
    function s2s_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function u2s_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function s2u_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2u_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2v_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function s2v_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                    new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function max_signed(width : INTEGER) return std_logic_vector;
    function min_signed(width : INTEGER) return std_logic_vector;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER) return std_logic_vector;
    function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                        old_arith, new_width, new_bin_pt, new_arith : INTEGER)
                        return std_logic_vector;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                          new_width: INTEGER)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width, arith : integer)
        return std_logic_vector;
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;
    function "="(left,right: STRING) return boolean;
    function boolean_to_signed (inp : boolean; width: integer)
        return signed;
    function boolean_to_unsigned (inp : boolean; width: integer)
        return unsigned;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector;
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector;
    function hex_string_to_std_logic_vector (inp : string; width : integer)
        return std_logic_vector;
    function makeZeroBinStr (width : integer) return STRING;
    function and_reduce(inp: std_logic_vector) return std_logic;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean;
    function is_binary_string_undefined (inp : string)
        return boolean;
    function is_XorU(inp : std_logic_vector)
        return boolean;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector;
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector;
    constant display_precision : integer := 20;
    function real_to_string (inp : real) return string;
    function valid_bin_string(inp : string) return boolean;
    function std_logic_vector_to_bin_string(inp : std_logic_vector) return string;
    function std_logic_to_bin_string(inp : std_logic) return string;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string;
    type stdlogic_to_char_t is array(std_logic) of character;
    constant to_char : stdlogic_to_char_t := (
        'U' => 'U',
        'X' => 'X',
        '0' => '0',
        '1' => '1',
        'Z' => 'Z',
        'W' => 'W',
        'L' => 'L',
        'H' => 'H',
        '-' => '-');
    -- synopsys translate_on
end conv_pkg;
package body conv_pkg is
    function std_logic_vector_to_unsigned(inp : std_logic_vector)
        return unsigned
    is
    begin
        return unsigned (inp);
    end;
    function unsigned_to_std_logic_vector(inp : unsigned)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function std_logic_vector_to_signed(inp : std_logic_vector)
        return signed
    is
    begin
        return  signed (inp);
    end;
    function signed_to_std_logic_vector(inp : signed)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function unsigned_to_signed (inp : unsigned)
        return signed
    is
    begin
        return signed(std_logic_vector(inp));
    end;
    function signed_to_unsigned (inp : signed)
        return unsigned
    is
    begin
        return unsigned(std_logic_vector(inp));
    end;
    function pos(inp : std_logic_vector; arith : INTEGER)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            return true;
        else
            if vec(width-1) = '0' then
                return true;
            else
                return false;
            end if;
        end if;
        return true;
    end;
    function max_signed(width : INTEGER)
        return std_logic_vector
    is
        variable ones : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        ones := (others => '1');
        result(width-1) := '0';
        result(width-2 downto 0) := ones;
        return result;
    end;
    function min_signed(width : INTEGER)
        return std_logic_vector
    is
        variable zeros : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        zeros := (others => '0');
        result(width-1) := '1';
        result(width-2 downto 0) := zeros;
        return result;
    end;
    function and_reduce(inp: std_logic_vector) return std_logic
    is
        variable result: std_logic;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := vec(0);
        if width > 1 then
            for i in 1 to width-1 loop
                result := result and vec(i);
            end loop;
        end if;
        return result;
    end;
    function all_same(inp: std_logic_vector) return boolean
    is
        variable result: boolean;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := true;
        if width > 0 then
            for i in 1 to width-1 loop
                if vec(i) /= vec(0) then
                    result := false;
                end if;
            end loop;
        end if;
        return result;
    end;
    function all_zeros(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable zero : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        zero := (others => '0');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(zero)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function is_point_five(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (width > 1) then
           if ((vec(width-1) = '1') and (all_zeros(vec(width-2 downto 0)) = true)) then
               result := true;
           else
               result := false;
           end if;
        else
           if (vec(width-1) = '1') then
               result := true;
           else
               result := false;
           end if;
        end if;
        return result;
    end;
    function all_ones(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable one : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        one := (others => '1');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(one)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function full_precision_num_width(quantization, overflow, old_width,
                                      old_bin_pt, old_arith,
                                      new_width, new_bin_pt, new_arith : INTEGER)
        return integer
    is
        variable result : integer;
    begin
        result := old_width + 2;
        return result;
    end;
    function quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                 old_arith, new_width, new_bin_pt, new_arith
                                 : INTEGER)
        return integer
    is
        variable right_of_dp, left_of_dp, result : integer;
    begin
        right_of_dp := max(new_bin_pt, old_bin_pt);
        left_of_dp := max((new_width - new_bin_pt), (old_width - old_bin_pt));
        result := (old_width + 2) + (new_bin_pt - old_bin_pt);
        return result;
    end;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector
    is
        constant fp_width : integer :=
            full_precision_num_width(quantization, overflow, old_width,
                                     old_bin_pt, old_arith, new_width,
                                     new_bin_pt, new_arith);
        constant fp_bin_pt : integer := old_bin_pt;
        constant fp_arith : integer := old_arith;
        variable full_precision_result : std_logic_vector(fp_width-1 downto 0);
        constant q_width : integer :=
            quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith);
        constant q_bin_pt : integer := new_bin_pt;
        constant q_arith : integer := old_arith;
        variable quantized_result : std_logic_vector(q_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result := (others => '0');
        full_precision_result := cast(inp, old_bin_pt, fp_width, fp_bin_pt,
                                      fp_arith);
        if (quantization = xlRound) then
            quantized_result := round_towards_inf(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        elsif (quantization = xlRoundBanker) then
            quantized_result := round_towards_even(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        else
            quantized_result := trunc(full_precision_result, fp_width, fp_bin_pt,
                                      fp_arith, q_width, q_bin_pt, q_arith);
        end if;
        if (overflow = xlSaturate) then
            result := saturation_arith(quantized_result, q_width, q_bin_pt,
                                       q_arith, new_width, new_bin_pt, new_arith);
        else
             result := wrap_arith(quantized_result, q_width, q_bin_pt, q_arith,
                                  new_width, new_bin_pt, new_arith);
        end if;
        return result;
    end;
    function cast (inp : std_logic_vector; old_bin_pt, new_width,
                   new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        constant left_of_dp : integer := (new_width - new_bin_pt)
                                         - (old_width - old_bin_pt);
        constant right_of_dp : integer := (new_bin_pt - old_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable j   : integer;
    begin
        vec := inp;
        for i in new_width-1 downto 0 loop
            j := i - right_of_dp;
            if ( j > old_width-1) then
                if (new_arith = xlUnsigned) then
                    result(i) := '0';
                else
                    result(i) := vec(old_width-1);
                end if;
            elsif ( j >= 0) then
                result(i) := vec(j);
            else
                result(i) := '0';
            end if;
        end loop;
        return result;
    end;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant q_width : integer := quotient'length;
        constant f_width : integer := fraction'length;
        constant vec_MSB : integer := q_width+f_width-1;
        constant result_MSB : integer := q_width+fraction_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := ( quotient & fraction );
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant inp_width : integer := inp'length;
        constant vec_MSB : integer := inp_width-1;
        constant result_MSB : integer := result_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := inp;
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
      return std_logic_vector
    is
    begin
        return inp(upper downto lower);
    end;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function s2s_cast (inp : signed; old_bin_pt, new_width, new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function s2u_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function u2s_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2u_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2v_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned);
    end;
    function s2v_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned);
    end;
    function boolean_to_signed (inp : boolean; width : integer)
        return signed
    is
        variable result : signed(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_unsigned (inp : boolean; width : integer)
        return unsigned
    is
        variable result : unsigned(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result(0) := inp;
        return result;
    end;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                                new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                result := zero_ext(vec(old_width-1 downto right_of_dp), new_width);
            else
                result := sign_ext(vec(old_width-1 downto right_of_dp), new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                result := zero_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            else
                result := sign_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            end if;
        end if;
        return result;
    end;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (new_arith = xlSigned) then
            if (vec(old_width-1) = '0') then
                one_or_zero(0) := '1';
            end if;
            if (right_of_dp >= 2) and (right_of_dp <= old_width) then
                if (all_zeros(vec(right_of_dp-2 downto 0)) = false) then
                    one_or_zero(0) := '1';
                end if;
            end if;
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                if vec(right_of_dp-1) = '0' then
                    one_or_zero(0) := '0';
                end if;
            else
                one_or_zero(0) := '0';
            end if;
        else
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (right_of_dp >= 1) and (right_of_dp <= old_width) then
            if (is_point_five(vec(right_of_dp-1 downto 0)) = false) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            else
                one_or_zero(0) :=  vec(right_of_dp);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER)
        return std_logic_vector
    is
        constant left_of_dp : integer := (old_width - old_bin_pt) -
                                         (new_width - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable overflow : boolean;
    begin
        vec := inp;
        overflow := true;
        result := (others => '0');
        if (new_width >= old_width) then
            overflow := false;
        end if;
        if ((old_arith = xlSigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if (old_arith = xlSigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    if (vec(new_width-1) = '0') then
                        overflow := false;
                    end if;
                end if;
            end if;
        end if;
        if (old_arith = xlUnsigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    overflow := false;
                end if;
            end if;
        end if;
        if ((old_arith = xlUnsigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if overflow then
            if new_arith = xlSigned then
                if vec(old_width-1) = '0' then
                    result := max_signed(new_width);
                else
                    result := min_signed(new_width);
                end if;
            else
                if ((old_arith = xlSigned) and vec(old_width-1) = '1') then
                    result := (others => '0');
                else
                    result := (others => '1');
                end if;
            end if;
        else
            if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
                if (vec(old_width-1) = '1') then
                    vec := (others => '0');
                end if;
            end if;
            if new_width <= old_width then
                result := vec(new_width-1 downto 0);
            else
                if new_arith = xlUnsigned then
                    result := zero_ext(vec, new_width);
                else
                    result := sign_ext(vec, new_width);
                end if;
            end if;
        end if;
        return result;
    end;
   function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                       old_arith, new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
        variable result_arith : integer;
    begin
        if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
            result_arith := xlSigned;
        end if;
        result := cast(inp, old_bin_pt, new_width, new_bin_pt, result_arith);
        return result;
    end;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER is
    begin
        return max(a_bin_pt, b_bin_pt);
    end;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER is
    begin
        return  max(a_width - a_bin_pt, b_width - b_bin_pt);
    end;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
        constant pad_pos : integer := new_width - orig_width - 1;
    begin
        vec := inp;
        pos := new_width-1;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pad_pos >= 0 then
                for i in pad_pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := vec(old_width-1);
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := '0';
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result(0) := inp;
        for i in new_width-1 downto 1 loop
            result(i) := '0';
        end loop;
        return result;
    end;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            result := zero_ext(vec, new_width);
        else
            result := sign_ext(vec, new_width);
        end if;
        return result;
    end;
    function pad_LSB(inp : std_logic_vector; new_width, arith: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
    begin
        vec := inp;
        pos := new_width-1;
        if (arith = xlUnsigned) then
            result(pos) := '0';
            pos := pos - 1;
        else
            result(pos) := vec(orig_width-1);
            pos := pos - 1;
        end if;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pos >= 0 then
                for i in pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                         new_width: INTEGER)
        return std_logic_vector
    is
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable padded_inp : std_logic_vector((old_width + delta)-1  downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if delta > 0 then
            padded_inp := pad_LSB(vec, old_width+delta);
            result := extend_MSB(padded_inp, new_width, new_arith);
        else
            result := extend_MSB(vec, new_width, new_arith);
        end if;
        return result;
    end;
    function max(L, R: INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;
    function min(L, R: INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;
    function "="(left,right: STRING) return boolean is
    begin
        if (left'length /= right'length) then
            return false;
        else
            test : for i in 1 to left'length loop
                if left(i) /= right(i) then
                    return false;
                end if;
            end loop test;
            return true;
        end if;
    end;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'X' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_binary_string_undefined (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'U' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_XorU(inp : std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 0 to width-1 loop
            if (vec(i) = 'U') or (vec(i) = 'X') then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real
    is
        variable  vec : std_logic_vector(inp'length-1 downto 0);
        variable result, shift_val, undefined_real : real;
        variable neg_num : boolean;
    begin
        vec := inp;
        result := 0.0;
        neg_num := false;
        if vec(inp'length-1) = '1' then
            neg_num := true;
        end if;
        for i in 0 to inp'length-1 loop
            if  vec(i) = 'U' or vec(i) = 'X' then
                return undefined_real;
            end if;
            if arith = xlSigned then
                if neg_num then
                    if vec(i) = '0' then
                        result := result + 2.0**i;
                    end if;
                else
                    if vec(i) = '1' then
                        result := result + 2.0**i;
                    end if;
                end if;
            else
                if vec(i) = '1' then
                    result := result + 2.0**i;
                end if;
            end if;
        end loop;
        if arith = xlSigned then
            if neg_num then
                result := result + 1.0;
                result := result * (-1.0);
            end if;
        end if;
        shift_val := 2.0**(-1*bin_pt);
        result := result * shift_val;
        return result;
    end;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real
    is
        variable result : real := 0.0;
    begin
        if inp = '1' then
            result := 1.0;
        end if;
        if arith = xlSigned then
            assert false
                report "It doesn't make sense to convert a 1 bit number to a signed real.";
        end if;
        return result;
    end;
    -- synopsys translate_on
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
    begin
        if (arith = xlSigned) then
            signed_val := to_signed(inp, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(inp, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer
    is
        constant width : integer := inp'length;
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
        variable result : integer;
    begin
        if (arith = xlSigned) then
            signed_val := std_logic_vector_to_signed(inp);
            result := to_integer(signed_val);
        else
            unsigned_val := std_logic_vector_to_unsigned(inp);
            result := to_integer(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer
    is
    begin
        if inp = '1' then
            return 1;
        else
            return 0;
        end if;
    end;
    function makeZeroBinStr (width : integer) return STRING is
        variable result : string(1 to width+3);
    begin
        result(1) := '0';
        result(2) := 'b';
        for i in 3 to width+2 loop
            result(i) := '0';
        end loop;
        result(width+3) := '.';
        return result;
    end;
    -- synopsys translate_off
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
    begin
        result := (others => '0');
        return result;
    end;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable real_val : real;
        variable int_val : integer;
        variable result : std_logic_vector(width-1 downto 0) := (others => '0');
        variable unsigned_val : unsigned(width-1 downto 0) := (others => '0');
        variable signed_val : signed(width-1 downto 0) := (others => '0');
    begin
        real_val := inp;
        int_val := integer(real_val * 2.0**(bin_pt));
        if (arith = xlSigned) then
            signed_val := to_signed(int_val, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(int_val, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    -- synopsys translate_on
    function valid_bin_string (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
    begin
        vec := inp;
        if (vec(1) = '0' and vec(2) = 'b') then
            return true;
        else
            return false;
        end if;
    end;
    function hex_string_to_std_logic_vector(inp: string; width : integer)
        return std_logic_vector is
        constant strlen       : integer := inp'LENGTH;
        variable result       : std_logic_vector(width-1 downto 0);
        variable bitval       : std_logic_vector((strlen*4)-1 downto 0);
        variable posn         : integer;
        variable ch           : character;
        variable vec          : string(1 to strlen);
    begin
        vec := inp;
        result := (others => '0');
        posn := (strlen*4)-1;
        for i in 1 to strlen loop
            ch := vec(i);
            case ch is
                when '0' => bitval(posn downto posn-3) := "0000";
                when '1' => bitval(posn downto posn-3) := "0001";
                when '2' => bitval(posn downto posn-3) := "0010";
                when '3' => bitval(posn downto posn-3) := "0011";
                when '4' => bitval(posn downto posn-3) := "0100";
                when '5' => bitval(posn downto posn-3) := "0101";
                when '6' => bitval(posn downto posn-3) := "0110";
                when '7' => bitval(posn downto posn-3) := "0111";
                when '8' => bitval(posn downto posn-3) := "1000";
                when '9' => bitval(posn downto posn-3) := "1001";
                when 'A' | 'a' => bitval(posn downto posn-3) := "1010";
                when 'B' | 'b' => bitval(posn downto posn-3) := "1011";
                when 'C' | 'c' => bitval(posn downto posn-3) := "1100";
                when 'D' | 'd' => bitval(posn downto posn-3) := "1101";
                when 'E' | 'e' => bitval(posn downto posn-3) := "1110";
                when 'F' | 'f' => bitval(posn downto posn-3) := "1111";
                when others => bitval(posn downto posn-3) := "XXXX";
                               -- synopsys translate_off
                               ASSERT false
                                   REPORT "Invalid hex value" SEVERITY ERROR;
                               -- synopsys translate_on
            end case;
            posn := posn - 4;
        end loop;
        if (width <= strlen*4) then
            result :=  bitval(width-1 downto 0);
        else
            result((strlen*4)-1 downto 0) := bitval;
        end if;
        return result;
    end;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector
    is
        variable pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(inp'length-1 downto 0);
    begin
        vec := inp;
        pos := inp'length-1;
        result := (others => '0');
        for i in 1 to vec'length loop
            -- synopsys translate_off
            if (pos < 0) and (vec(i) = '0' or vec(i) = '1' or vec(i) = 'X' or vec(i) = 'U')  then
                assert false
                    report "Input string is larger than output std_logic_vector. Truncating output.";
                return result;
            end if;
            -- synopsys translate_on
            if vec(i) = '0' then
                result(pos) := '0';
                pos := pos - 1;
            end if;
            if vec(i) = '1' then
                result(pos) := '1';
                pos := pos - 1;
            end if;
            -- synopsys translate_off
            if (vec(i) = 'X' or vec(i) = 'U') then
                result(pos) := 'U';
                pos := pos - 1;
            end if;
            -- synopsys translate_on
        end loop;
        return result;
    end;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector
    is
        constant str_width : integer := width + 4;
        constant inp_len : integer := inp'length;
        constant num_elements : integer := (inp_len + 1)/str_width;
        constant reverse_index : integer := (num_elements-1) - index;
        variable left_pos : integer;
        variable right_pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := (others => '0');
        if (reverse_index = 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := 1;
            right_pos := width + 3;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        if (reverse_index > 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := (reverse_index * str_width) + 1;
            right_pos := left_pos + width + 2;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        return result;
    end;
   -- synopsys translate_off
    function std_logic_vector_to_bin_string(inp : std_logic_vector)
        return string
    is
        variable vec : std_logic_vector(1 to inp'length);
        variable result : string(vec'range);
    begin
        vec := inp;
        for i in vec'range loop
            result(i) := to_char(vec(i));
        end loop;
        return result;
    end;
    function std_logic_to_bin_string(inp : std_logic)
        return string
    is
        variable result : string(1 to 3);
    begin
        result(1) := '0';
        result(2) := 'b';
        result(3) := to_char(inp);
        return result;
    end;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string
    is
        variable width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable str_pos : integer;
        variable result : string(1 to width+3);
    begin
        vec := inp;
        str_pos := 1;
        result(str_pos) := '0';
        str_pos := 2;
        result(str_pos) := 'b';
        str_pos := 3;
        for i in width-1 downto 0  loop
            if (((width+3) - bin_pt) = str_pos) then
                result(str_pos) := '.';
                str_pos := str_pos + 1;
            end if;
            result(str_pos) := to_char(vec(i));
            str_pos := str_pos + 1;
        end loop;
        if (bin_pt = 0) then
            result(str_pos) := '.';
        end if;
        return result;
    end;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string
    is
        variable result : string(1 to width);
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := real_to_std_logic_vector(inp, width, bin_pt, arith);
        result := std_logic_vector_to_bin_string(vec);
        return result;
    end;
    function real_to_string (inp : real) return string
    is
        variable result : string(1 to display_precision) := (others => ' ');
    begin
        result(real'image(inp)'range) := real'image(inp);
        return result;
    end;
    -- synopsys translate_on
end conv_pkg;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity srl17e is
    generic (width : integer:=16;
             latency : integer :=8);
    port (clk   : in std_logic;
          ce    : in std_logic;
          d     : in std_logic_vector(width-1 downto 0);
          q     : out std_logic_vector(width-1 downto 0));
end srl17e;
architecture structural of srl17e is
    component SRL16E
        port (D   : in STD_ULOGIC;
              CE  : in STD_ULOGIC;
              CLK : in STD_ULOGIC;
              A0  : in STD_ULOGIC;
              A1  : in STD_ULOGIC;
              A2  : in STD_ULOGIC;
              A3  : in STD_ULOGIC;
              Q   : out STD_ULOGIC);
    end component;
    attribute syn_black_box of SRL16E : component is true;
    attribute fpga_dont_touch of SRL16E : component is "true";
    component FDE
        port(
            Q  :        out   STD_ULOGIC;
            D  :        in    STD_ULOGIC;
            C  :        in    STD_ULOGIC;
            CE :        in    STD_ULOGIC);
    end component;
    attribute syn_black_box of FDE : component is true;
    attribute fpga_dont_touch of FDE : component is "true";
    constant a : std_logic_vector(4 downto 0) :=
        integer_to_std_logic_vector(latency-2,5,xlSigned);
    signal d_delayed : std_logic_vector(width-1 downto 0);
    signal srl16_out : std_logic_vector(width-1 downto 0);
begin
    d_delayed <= d after 200 ps;
    reg_array : for i in 0 to width-1 generate
        srl16_used: if latency > 1 generate
            u1 : srl16e port map(clk => clk,
                                 d => d_delayed(i),
                                 q => srl16_out(i),
                                 ce => ce,
                                 a0 => a(0),
                                 a1 => a(1),
                                 a2 => a(2),
                                 a3 => a(3));
        end generate;
        srl16_not_used: if latency <= 1 generate
            srl16_out(i) <= d_delayed(i);
        end generate;
        fde_used: if latency /= 0  generate
            u2 : fde port map(c => clk,
                              d => srl16_out(i),
                              q => q(i),
                              ce => ce);
        end generate;
        fde_not_used: if latency = 0  generate
            q(i) <= srl16_out(i);
        end generate;
    end generate;
 end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg;
architecture structural of synth_reg is
    component srl17e
        generic (width : integer:=16;
                 latency : integer :=8);
        port (clk : in std_logic;
              ce  : in std_logic;
              d   : in std_logic_vector(width-1 downto 0);
              q   : out std_logic_vector(width-1 downto 0));
    end component;
    function calc_num_srl17es (latency : integer)
        return integer
    is
        variable remaining_latency : integer;
        variable result : integer;
    begin
        result := latency / 17;
        remaining_latency := latency - (result * 17);
        if (remaining_latency /= 0) then
            result := result + 1;
        end if;
        return result;
    end;
    constant complete_num_srl17es : integer := latency / 17;
    constant num_srl17es : integer := calc_num_srl17es(latency);
    constant remaining_latency : integer := latency - (complete_num_srl17es * 17);
    type register_array is array (num_srl17es downto 0) of
        std_logic_vector(width-1 downto 0);
    signal z : register_array;
begin
    z(0) <= i;
    complete_ones : if complete_num_srl17es > 0 generate
        srl17e_array: for i in 0 to complete_num_srl17es-1 generate
            delay_comp : srl17e
                generic map (width => width,
                             latency => 17)
                port map (clk => clk,
                          ce  => ce,
                          d       => z(i),
                          q       => z(i+1));
        end generate;
    end generate;
    partial_one : if remaining_latency > 0 generate
        last_srl17e : srl17e
            generic map (width => width,
                         latency => remaining_latency)
            port map (clk => clk,
                      ce  => ce,
                      d   => z(num_srl17es-1),
                      q   => z(num_srl17es));
    end generate;
    o <= z(num_srl17es);
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg_reg;
architecture behav of synth_reg_reg is
  type reg_array_type is array (latency-1 downto 0) of std_logic_vector(width -1 downto 0);
  signal reg_bank : reg_array_type := (others => (others => '0'));
  signal reg_bank_in : reg_array_type := (others => (others => '0'));
  attribute syn_allow_retiming : boolean;
  attribute syn_srlstyle : string;
  attribute syn_allow_retiming of reg_bank : signal is true;
  attribute syn_allow_retiming of reg_bank_in : signal is true;
  attribute syn_srlstyle of reg_bank : signal is "registers";
  attribute syn_srlstyle of reg_bank_in : signal is "registers";
begin
  latency_eq_0: if latency = 0 generate
    o <= i;
  end generate latency_eq_0;
  latency_gt_0: if latency >= 1 generate
    o <= reg_bank(latency-1);
    reg_bank_in(0) <= i;
    loop_gen: for idx in latency-2 downto 0 generate
      reg_bank_in(idx+1) <= reg_bank(idx);
    end generate loop_gen;
    sync_loop: for sync_idx in latency-1 downto 0 generate
      sync_proc: process (clk)
      begin
        if clk'event and clk = '1' then
          if clr = '1' then
            reg_bank_in <= (others => (others => '0'));
          elsif ce = '1'  then
            reg_bank(sync_idx) <= reg_bank_in(sync_idx);
          end if;
        end if;
      end process sync_proc;
    end generate sync_loop;
  end generate latency_gt_0;
end behav;

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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity single_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000"
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end single_reg_w_init;
architecture structural of single_reg_w_init is
  function build_init_const(width: integer;
                            init_index: integer;
                            init_value: bit_vector)
    return std_logic_vector
  is
    variable result: std_logic_vector(width - 1 downto 0);
  begin
    if init_index = 0 then
      result := (others => '0');
    elsif init_index = 1 then
      result := (others => '0');
      result(0) := '1';
    else
      result := to_stdlogicvector(init_value);
    end if;
    return result;
  end;
  component fdre
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      r: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdre: component is true;
  attribute fpga_dont_touch of fdre: component is "true";
  component fdse
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      s: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  constant init_const: std_logic_vector(width - 1 downto 0)
    := build_init_const(width, init_index, init_value);
begin
  fd_prim_array: for index in 0 to width - 1 generate
    bit_is_0: if (init_const(index) = '0') generate
      fdre_comp: fdre
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          r => clr
        );
    end generate;
    bit_is_1: if (init_const(index) = '1') generate
      fdse_comp: fdse
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          s => clr
        );
    end generate;
  end generate;
end architecture structural;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000";
    latency: integer := 1
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end synth_reg_w_init;
architecture structural of synth_reg_w_init is
  component single_reg_w_init
    generic (
      width: integer := 8;
      init_index: integer := 0;
      init_value: bit_vector := b"0000"
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal dly_i: std_logic_vector((latency + 1) * width - 1 downto 0);
  signal dly_clr: std_logic;
begin
  latency_eq_0: if (latency = 0) generate
    o <= i;
  end generate;
  latency_gt_0: if (latency >= 1) generate
    dly_i((latency + 1) * width - 1 downto latency * width) <= i
      after 200 ps;
    dly_clr <= clr after 200 ps;
    fd_array: for index in latency downto 1 generate
       reg_comp: single_reg_w_init
          generic map (
            width => width,
            init_index => init_index,
            init_value => init_value
          )
          port map (
            clk => clk,
            i => dly_i((index + 1) * width - 1 downto index * width),
            o => dly_i(index * width - 1 downto (index - 1) * width),
            ce => ce,
            clr => dly_clr
          );
    end generate;
    o <= dly_i(width - 1 downto 0);
  end generate;
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_963ed6358a is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_963ed6358a;


architecture behavior of constant_963ed6358a is
begin
  op <= "0";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mcode_block_f4d0462e0e is
  port (
    plbrst : in std_logic_vector((1 - 1) downto 0);
    plbabus : in std_logic_vector((32 - 1) downto 0);
    plbpavalid : in std_logic_vector((1 - 1) downto 0);
    plbrnw : in std_logic_vector((1 - 1) downto 0);
    plbwrdbus : in std_logic_vector((32 - 1) downto 0);
    rddata : in std_logic_vector((32 - 1) downto 0);
    addrpref : in std_logic_vector((20 - 1) downto 0);
    wrdbusreg : out std_logic_vector((32 - 1) downto 0);
    addrack : out std_logic_vector((1 - 1) downto 0);
    rdcomp : out std_logic_vector((1 - 1) downto 0);
    wrdack : out std_logic_vector((1 - 1) downto 0);
    bankaddr : out std_logic_vector((2 - 1) downto 0);
    rnwreg : out std_logic_vector((1 - 1) downto 0);
    rddack : out std_logic_vector((1 - 1) downto 0);
    rddbus : out std_logic_vector((32 - 1) downto 0);
    linearaddr : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mcode_block_f4d0462e0e;


architecture behavior of mcode_block_f4d0462e0e is
  signal plbrst_1_110: unsigned((1 - 1) downto 0);
  signal plbabus_1_118: unsigned((32 - 1) downto 0);
  signal plbpavalid_1_127: unsigned((1 - 1) downto 0);
  signal plbrnw_1_139: unsigned((1 - 1) downto 0);
  signal plbwrdbus_1_147: unsigned((32 - 1) downto 0);
  signal rddata_1_158: unsigned((32 - 1) downto 0);
  signal addrpref_1_166: unsigned((20 - 1) downto 0);
  signal plbrstreg_12_24_next: boolean;
  signal plbrstreg_12_24: boolean := false;
  signal plbabusreg_13_25_next: unsigned((32 - 1) downto 0);
  signal plbabusreg_13_25: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal plbpavalidreg_14_28_next: boolean;
  signal plbpavalidreg_14_28: boolean := false;
  signal plbrnwreg_15_24_next: unsigned((1 - 1) downto 0);
  signal plbrnwreg_15_24: unsigned((1 - 1) downto 0) := "0";
  signal plbwrdbusreg_16_27_next: unsigned((32 - 1) downto 0);
  signal plbwrdbusreg_16_27: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal avalidreg_28_23_next: boolean;
  signal avalidreg_28_23: boolean := false;
  signal ps1reg_39_20_next: boolean;
  signal ps1reg_39_20: boolean := false;
  signal psreg_47_19_next: boolean;
  signal psreg_47_19: boolean := false;
  type array_type_rdcompdelay_58_25 is array (0 to (3 - 1)) of unsigned((1 - 1) downto 0);
  signal rdcompdelay_58_25: array_type_rdcompdelay_58_25 := (
    "0",
    "0",
    "0");
  signal rdcompdelay_58_25_front_din: unsigned((1 - 1) downto 0);
  signal rdcompdelay_58_25_back: unsigned((1 - 1) downto 0);
  signal rdcompdelay_58_25_push_front_pop_back_en: std_logic;
  signal rdcompreg_62_23_next: unsigned((1 - 1) downto 0);
  signal rdcompreg_62_23: unsigned((1 - 1) downto 0) := "0";
  signal rddackreg_66_23_next: unsigned((1 - 1) downto 0);
  signal rddackreg_66_23: unsigned((1 - 1) downto 0) := "0";
  signal wrdackreg_70_23_next: unsigned((1 - 1) downto 0);
  signal wrdackreg_70_23: unsigned((1 - 1) downto 0) := "0";
  signal rddbusreg_84_23_next: unsigned((32 - 1) downto 0);
  signal rddbusreg_84_23: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal bankaddr_20_1_slice: unsigned((2 - 1) downto 0);
  signal linearaddr_21_1_slice: unsigned((8 - 1) downto 0);
  signal addrpref_in_32_1_slice: unsigned((20 - 1) downto 0);
  signal rel_33_4: boolean;
  signal ps1_join_33_1: boolean;
  signal ps_42_1_bit: boolean;
  signal bitnot_49_49: boolean;
  signal bitnot_49_73: boolean;
  signal bit_49_49: boolean;
  signal addrack_49_1_convert: unsigned((1 - 1) downto 0);
  signal bit_55_43: unsigned((1 - 1) downto 0);
  signal bitnot_72_35: unsigned((1 - 1) downto 0);
  signal wrdackreg_72_1_bit: unsigned((1 - 1) downto 0);
  signal rdsel_76_1_bit: unsigned((1 - 1) downto 0);
  signal rel_78_4: boolean;
  signal rddbus1_join_78_1: unsigned((32 - 1) downto 0);
  signal plbwrdbusreg_97_1_slice: unsigned((32 - 1) downto 0);
  signal plbrstreg_12_24_next_x_000000: boolean;
  signal plbpavalidreg_14_28_next_x_000000: boolean;
begin
  plbrst_1_110 <= std_logic_vector_to_unsigned(plbrst);
  plbabus_1_118 <= std_logic_vector_to_unsigned(plbabus);
  plbpavalid_1_127 <= std_logic_vector_to_unsigned(plbpavalid);
  plbrnw_1_139 <= std_logic_vector_to_unsigned(plbrnw);
  plbwrdbus_1_147 <= std_logic_vector_to_unsigned(plbwrdbus);
  rddata_1_158 <= std_logic_vector_to_unsigned(rddata);
  addrpref_1_166 <= std_logic_vector_to_unsigned(addrpref);
  proc_plbrstreg_12_24: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbrstreg_12_24 <= plbrstreg_12_24_next;
      end if;
    end if;
  end process proc_plbrstreg_12_24;
  proc_plbabusreg_13_25: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbabusreg_13_25 <= plbabusreg_13_25_next;
      end if;
    end if;
  end process proc_plbabusreg_13_25;
  proc_plbpavalidreg_14_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbpavalidreg_14_28 <= plbpavalidreg_14_28_next;
      end if;
    end if;
  end process proc_plbpavalidreg_14_28;
  proc_plbrnwreg_15_24: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbrnwreg_15_24 <= plbrnwreg_15_24_next;
      end if;
    end if;
  end process proc_plbrnwreg_15_24;
  proc_plbwrdbusreg_16_27: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbwrdbusreg_16_27 <= plbwrdbusreg_16_27_next;
      end if;
    end if;
  end process proc_plbwrdbusreg_16_27;
  proc_avalidreg_28_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        avalidreg_28_23 <= avalidreg_28_23_next;
      end if;
    end if;
  end process proc_avalidreg_28_23;
  proc_ps1reg_39_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        ps1reg_39_20 <= ps1reg_39_20_next;
      end if;
    end if;
  end process proc_ps1reg_39_20;
  proc_psreg_47_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        psreg_47_19 <= psreg_47_19_next;
      end if;
    end if;
  end process proc_psreg_47_19;
  rdcompdelay_58_25_back <= rdcompdelay_58_25(2);
  proc_rdcompdelay_58_25: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (rdcompdelay_58_25_push_front_pop_back_en = '1')) then
        for i in 2 downto 1 loop 
          rdcompdelay_58_25(i) <= rdcompdelay_58_25(i-1);
        end loop;
        rdcompdelay_58_25(0) <= rdcompdelay_58_25_front_din;
      end if;
    end if;
  end process proc_rdcompdelay_58_25;
  proc_rdcompreg_62_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        rdcompreg_62_23 <= rdcompreg_62_23_next;
      end if;
    end if;
  end process proc_rdcompreg_62_23;
  proc_rddackreg_66_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        rddackreg_66_23 <= rddackreg_66_23_next;
      end if;
    end if;
  end process proc_rddackreg_66_23;
  proc_wrdackreg_70_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        wrdackreg_70_23 <= wrdackreg_70_23_next;
      end if;
    end if;
  end process proc_wrdackreg_70_23;
  proc_rddbusreg_84_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        rddbusreg_84_23 <= rddbusreg_84_23_next;
      end if;
    end if;
  end process proc_rddbusreg_84_23;
  bankaddr_20_1_slice <= u2u_slice(plbabusreg_13_25, 11, 10);
  linearaddr_21_1_slice <= u2u_slice(plbabusreg_13_25, 9, 2);
  addrpref_in_32_1_slice <= u2u_slice(plbabusreg_13_25, 31, 12);
  rel_33_4 <= addrpref_in_32_1_slice = addrpref_1_166;
  proc_if_33_1: process (rel_33_4)
  is
  begin
    if rel_33_4 then
      ps1_join_33_1 <= true;
    else 
      ps1_join_33_1 <= false;
    end if;
  end process proc_if_33_1;
  ps_42_1_bit <= ((boolean_to_vector(ps1_join_33_1) and boolean_to_vector(plbpavalidreg_14_28)) = "1");
  bitnot_49_49 <= ((not boolean_to_vector(plbrstreg_12_24)) = "1");
  bitnot_49_73 <= ((not boolean_to_vector(psreg_47_19)) = "1");
  bit_49_49 <= ((boolean_to_vector(bitnot_49_49) and boolean_to_vector(ps_42_1_bit) and boolean_to_vector(bitnot_49_73)) = "1");
  addrack_49_1_convert <= u2u_cast(std_logic_vector_to_unsigned(boolean_to_vector(bit_49_49)), 0, 1, 0);
  bit_55_43 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(addrack_49_1_convert) and unsigned_to_std_logic_vector(plbrnwreg_15_24));
  bitnot_72_35 <= std_logic_vector_to_unsigned(not unsigned_to_std_logic_vector(plbrnwreg_15_24));
  wrdackreg_72_1_bit <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(addrack_49_1_convert) and unsigned_to_std_logic_vector(bitnot_72_35));
  rdsel_76_1_bit <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(rdcompdelay_58_25_back) or unsigned_to_std_logic_vector(rdcompreg_62_23));
  rel_78_4 <= rdsel_76_1_bit = std_logic_vector_to_unsigned("1");
  proc_if_78_1: process (rddata_1_158, rel_78_4)
  is
  begin
    if rel_78_4 then
      rddbus1_join_78_1 <= rddata_1_158;
    else 
      rddbus1_join_78_1 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    end if;
  end process proc_if_78_1;
  plbwrdbusreg_97_1_slice <= u2u_slice(plbwrdbus_1_147, 31, 0);
  plbrstreg_12_24_next_x_000000 <= (plbrst_1_110 /= "0");
  plbrstreg_12_24_next <= plbrstreg_12_24_next_x_000000;
  plbabusreg_13_25_next <= plbabus_1_118;
  plbpavalidreg_14_28_next_x_000000 <= (plbpavalid_1_127 /= "0");
  plbpavalidreg_14_28_next <= plbpavalidreg_14_28_next_x_000000;
  plbrnwreg_15_24_next <= plbrnw_1_139;
  plbwrdbusreg_16_27_next <= plbwrdbusreg_97_1_slice;
  avalidreg_28_23_next <= plbpavalidreg_14_28;
  ps1reg_39_20_next <= ps1_join_33_1;
  psreg_47_19_next <= ps_42_1_bit;
  rdcompdelay_58_25_front_din <= bit_55_43;
  rdcompdelay_58_25_push_front_pop_back_en <= '1';
  rdcompreg_62_23_next <= rdcompdelay_58_25_back;
  rddackreg_66_23_next <= rdcompreg_62_23;
  wrdackreg_70_23_next <= wrdackreg_72_1_bit;
  rddbusreg_84_23_next <= rddbus1_join_78_1;
  wrdbusreg <= unsigned_to_std_logic_vector(plbwrdbusreg_16_27);
  addrack <= unsigned_to_std_logic_vector(addrack_49_1_convert);
  rdcomp <= unsigned_to_std_logic_vector(rdcompreg_62_23);
  wrdack <= unsigned_to_std_logic_vector(wrdackreg_70_23);
  bankaddr <= unsigned_to_std_logic_vector(bankaddr_20_1_slice);
  rnwreg <= unsigned_to_std_logic_vector(plbrnwreg_15_24);
  rddack <= unsigned_to_std_logic_vector(rddackreg_66_23);
  rddbus <= unsigned_to_std_logic_vector(rddbusreg_84_23);
  linearaddr <= unsigned_to_std_logic_vector(linearaddr_21_1_slice);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mcode_block_00214ec15e is
  port (
    wrdbus : in std_logic_vector((32 - 1) downto 0);
    bankaddr : in std_logic_vector((2 - 1) downto 0);
    linearaddr : in std_logic_vector((8 - 1) downto 0);
    rnwreg : in std_logic_vector((1 - 1) downto 0);
    addrack : in std_logic_vector((1 - 1) downto 0);
    sm_timer_status : in std_logic_vector((32 - 1) downto 0);
    sm_timer0_slotcount : in std_logic_vector((32 - 1) downto 0);
    sm_timer_control : in std_logic_vector((32 - 1) downto 0);
    sm_timer4_slotcount : in std_logic_vector((32 - 1) downto 0);
    sm_timer6_slotcount : in std_logic_vector((32 - 1) downto 0);
    sm_timer7_slotcount : in std_logic_vector((32 - 1) downto 0);
    sm_timer5_slotcount : in std_logic_vector((32 - 1) downto 0);
    sm_timer2_slotcount : in std_logic_vector((32 - 1) downto 0);
    sm_timer3_slotcount : in std_logic_vector((32 - 1) downto 0);
    sm_timers67_slottime : in std_logic_vector((32 - 1) downto 0);
    sm_timers45_slottime : in std_logic_vector((32 - 1) downto 0);
    sm_timers23_slottime : in std_logic_vector((32 - 1) downto 0);
    sm_timers01_slottime : in std_logic_vector((32 - 1) downto 0);
    sm_timer1_slotcount : in std_logic_vector((32 - 1) downto 0);
    read_bank_out : out std_logic_vector((32 - 1) downto 0);
    sm_timer0_slotcount_din : out std_logic_vector((32 - 1) downto 0);
    sm_timer0_slotcount_en : out std_logic_vector((1 - 1) downto 0);
    sm_timer_control_din : out std_logic_vector((32 - 1) downto 0);
    sm_timer_control_en : out std_logic_vector((1 - 1) downto 0);
    sm_timer4_slotcount_din : out std_logic_vector((32 - 1) downto 0);
    sm_timer4_slotcount_en : out std_logic_vector((1 - 1) downto 0);
    sm_timer6_slotcount_din : out std_logic_vector((32 - 1) downto 0);
    sm_timer6_slotcount_en : out std_logic_vector((1 - 1) downto 0);
    sm_timer7_slotcount_din : out std_logic_vector((32 - 1) downto 0);
    sm_timer7_slotcount_en : out std_logic_vector((1 - 1) downto 0);
    sm_timer5_slotcount_din : out std_logic_vector((32 - 1) downto 0);
    sm_timer5_slotcount_en : out std_logic_vector((1 - 1) downto 0);
    sm_timer2_slotcount_din : out std_logic_vector((32 - 1) downto 0);
    sm_timer2_slotcount_en : out std_logic_vector((1 - 1) downto 0);
    sm_timer3_slotcount_din : out std_logic_vector((32 - 1) downto 0);
    sm_timer3_slotcount_en : out std_logic_vector((1 - 1) downto 0);
    sm_timers67_slottime_din : out std_logic_vector((32 - 1) downto 0);
    sm_timers67_slottime_en : out std_logic_vector((1 - 1) downto 0);
    sm_timers45_slottime_din : out std_logic_vector((32 - 1) downto 0);
    sm_timers45_slottime_en : out std_logic_vector((1 - 1) downto 0);
    sm_timers23_slottime_din : out std_logic_vector((32 - 1) downto 0);
    sm_timers23_slottime_en : out std_logic_vector((1 - 1) downto 0);
    sm_timers01_slottime_din : out std_logic_vector((32 - 1) downto 0);
    sm_timers01_slottime_en : out std_logic_vector((1 - 1) downto 0);
    sm_timer1_slotcount_din : out std_logic_vector((32 - 1) downto 0);
    sm_timer1_slotcount_en : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mcode_block_00214ec15e;


architecture behavior of mcode_block_00214ec15e is
  signal wrdbus_1_678: unsigned((32 - 1) downto 0);
  signal bankaddr_1_686: unsigned((2 - 1) downto 0);
  signal linearaddr_1_696: unsigned((8 - 1) downto 0);
  signal rnwreg_1_708: unsigned((1 - 1) downto 0);
  signal addrack_1_716: unsigned((1 - 1) downto 0);
  signal sm_timer_status_1_725: unsigned((32 - 1) downto 0);
  signal sm_timer0_slotcount_1_742: unsigned((32 - 1) downto 0);
  signal sm_timer_control_1_763: unsigned((32 - 1) downto 0);
  signal sm_timer4_slotcount_1_781: unsigned((32 - 1) downto 0);
  signal sm_timer6_slotcount_1_802: unsigned((32 - 1) downto 0);
  signal sm_timer7_slotcount_1_823: unsigned((32 - 1) downto 0);
  signal sm_timer5_slotcount_1_844: unsigned((32 - 1) downto 0);
  signal sm_timer2_slotcount_1_865: unsigned((32 - 1) downto 0);
  signal sm_timer3_slotcount_1_886: unsigned((32 - 1) downto 0);
  signal sm_timers67_slottime_1_907: unsigned((32 - 1) downto 0);
  signal sm_timers45_slottime_1_929: unsigned((32 - 1) downto 0);
  signal sm_timers23_slottime_1_951: unsigned((32 - 1) downto 0);
  signal sm_timers01_slottime_1_973: unsigned((32 - 1) downto 0);
  signal sm_timer1_slotcount_1_995: unsigned((32 - 1) downto 0);
  signal reg_bank_out_reg_58_30_next: unsigned((32 - 1) downto 0);
  signal reg_bank_out_reg_58_30: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal read_bank_out_reg_248_31_next: unsigned((32 - 1) downto 0);
  signal read_bank_out_reg_248_31: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal bankaddr_reg_251_26_next: unsigned((2 - 1) downto 0);
  signal bankaddr_reg_251_26: unsigned((2 - 1) downto 0) := "00";
  signal rel_61_4: boolean;
  signal rel_63_8: boolean;
  signal rel_65_8: boolean;
  signal rel_67_8: boolean;
  signal rel_69_8: boolean;
  signal rel_71_8: boolean;
  signal rel_73_8: boolean;
  signal rel_75_8: boolean;
  signal rel_77_8: boolean;
  signal rel_79_8: boolean;
  signal rel_81_8: boolean;
  signal rel_83_8: boolean;
  signal rel_85_8: boolean;
  signal rel_87_8: boolean;
  signal reg_bank_out_reg_join_61_1: unsigned((32 - 1) downto 0);
  signal opcode_99_1_concat: unsigned((12 - 1) downto 0);
  signal rel_120_4: boolean;
  signal sm_timer0_slotcount_en_join_120_1: boolean;
  signal rel_126_4: boolean;
  signal sm_timer_control_en_join_126_1: boolean;
  signal rel_132_4: boolean;
  signal sm_timer4_slotcount_en_join_132_1: boolean;
  signal rel_138_4: boolean;
  signal sm_timer6_slotcount_en_join_138_1: boolean;
  signal rel_144_4: boolean;
  signal sm_timer7_slotcount_en_join_144_1: boolean;
  signal rel_150_4: boolean;
  signal sm_timer5_slotcount_en_join_150_1: boolean;
  signal rel_156_4: boolean;
  signal sm_timer2_slotcount_en_join_156_1: boolean;
  signal rel_162_4: boolean;
  signal sm_timer3_slotcount_en_join_162_1: boolean;
  signal rel_168_4: boolean;
  signal sm_timers67_slottime_en_join_168_1: boolean;
  signal rel_174_4: boolean;
  signal sm_timers45_slottime_en_join_174_1: boolean;
  signal rel_180_4: boolean;
  signal sm_timers23_slottime_en_join_180_1: boolean;
  signal rel_186_4: boolean;
  signal sm_timers01_slottime_en_join_186_1: boolean;
  signal rel_192_4: boolean;
  signal sm_timer1_slotcount_en_join_192_1: boolean;
  signal slice_207_44: unsigned((32 - 1) downto 0);
  signal slice_210_41: unsigned((32 - 1) downto 0);
  signal slice_213_44: unsigned((32 - 1) downto 0);
  signal slice_216_44: unsigned((32 - 1) downto 0);
  signal slice_219_44: unsigned((32 - 1) downto 0);
  signal slice_222_44: unsigned((32 - 1) downto 0);
  signal slice_225_44: unsigned((32 - 1) downto 0);
  signal slice_228_44: unsigned((32 - 1) downto 0);
  signal slice_231_45: unsigned((32 - 1) downto 0);
  signal slice_234_45: unsigned((32 - 1) downto 0);
  signal slice_237_45: unsigned((32 - 1) downto 0);
  signal slice_240_45: unsigned((32 - 1) downto 0);
  signal slice_243_44: unsigned((32 - 1) downto 0);
  signal rel_253_4: boolean;
  signal rel_256_8: boolean;
  signal rel_259_8: boolean;
  signal rel_262_8: boolean;
  signal read_bank_out_reg_join_253_1: unsigned((32 - 1) downto 0);
begin
  wrdbus_1_678 <= std_logic_vector_to_unsigned(wrdbus);
  bankaddr_1_686 <= std_logic_vector_to_unsigned(bankaddr);
  linearaddr_1_696 <= std_logic_vector_to_unsigned(linearaddr);
  rnwreg_1_708 <= std_logic_vector_to_unsigned(rnwreg);
  addrack_1_716 <= std_logic_vector_to_unsigned(addrack);
  sm_timer_status_1_725 <= std_logic_vector_to_unsigned(sm_timer_status);
  sm_timer0_slotcount_1_742 <= std_logic_vector_to_unsigned(sm_timer0_slotcount);
  sm_timer_control_1_763 <= std_logic_vector_to_unsigned(sm_timer_control);
  sm_timer4_slotcount_1_781 <= std_logic_vector_to_unsigned(sm_timer4_slotcount);
  sm_timer6_slotcount_1_802 <= std_logic_vector_to_unsigned(sm_timer6_slotcount);
  sm_timer7_slotcount_1_823 <= std_logic_vector_to_unsigned(sm_timer7_slotcount);
  sm_timer5_slotcount_1_844 <= std_logic_vector_to_unsigned(sm_timer5_slotcount);
  sm_timer2_slotcount_1_865 <= std_logic_vector_to_unsigned(sm_timer2_slotcount);
  sm_timer3_slotcount_1_886 <= std_logic_vector_to_unsigned(sm_timer3_slotcount);
  sm_timers67_slottime_1_907 <= std_logic_vector_to_unsigned(sm_timers67_slottime);
  sm_timers45_slottime_1_929 <= std_logic_vector_to_unsigned(sm_timers45_slottime);
  sm_timers23_slottime_1_951 <= std_logic_vector_to_unsigned(sm_timers23_slottime);
  sm_timers01_slottime_1_973 <= std_logic_vector_to_unsigned(sm_timers01_slottime);
  sm_timer1_slotcount_1_995 <= std_logic_vector_to_unsigned(sm_timer1_slotcount);
  proc_reg_bank_out_reg_58_30: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        reg_bank_out_reg_58_30 <= reg_bank_out_reg_58_30_next;
      end if;
    end if;
  end process proc_reg_bank_out_reg_58_30;
  proc_read_bank_out_reg_248_31: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        read_bank_out_reg_248_31 <= read_bank_out_reg_248_31_next;
      end if;
    end if;
  end process proc_read_bank_out_reg_248_31;
  proc_bankaddr_reg_251_26: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        bankaddr_reg_251_26 <= bankaddr_reg_251_26_next;
      end if;
    end if;
  end process proc_bankaddr_reg_251_26;
  rel_61_4 <= linearaddr_1_696 = std_logic_vector_to_unsigned("00001101");
  rel_63_8 <= linearaddr_1_696 = std_logic_vector_to_unsigned("00000000");
  rel_65_8 <= linearaddr_1_696 = std_logic_vector_to_unsigned("00000001");
  rel_67_8 <= linearaddr_1_696 = std_logic_vector_to_unsigned("00000010");
  rel_69_8 <= linearaddr_1_696 = std_logic_vector_to_unsigned("00000011");
  rel_71_8 <= linearaddr_1_696 = std_logic_vector_to_unsigned("00000100");
  rel_73_8 <= linearaddr_1_696 = std_logic_vector_to_unsigned("00000101");
  rel_75_8 <= linearaddr_1_696 = std_logic_vector_to_unsigned("00000110");
  rel_77_8 <= linearaddr_1_696 = std_logic_vector_to_unsigned("00000111");
  rel_79_8 <= linearaddr_1_696 = std_logic_vector_to_unsigned("00001000");
  rel_81_8 <= linearaddr_1_696 = std_logic_vector_to_unsigned("00001001");
  rel_83_8 <= linearaddr_1_696 = std_logic_vector_to_unsigned("00001010");
  rel_85_8 <= linearaddr_1_696 = std_logic_vector_to_unsigned("00001011");
  rel_87_8 <= linearaddr_1_696 = std_logic_vector_to_unsigned("00001100");
  proc_if_61_1: process (reg_bank_out_reg_58_30, rel_61_4, rel_63_8, rel_65_8, rel_67_8, rel_69_8, rel_71_8, rel_73_8, rel_75_8, rel_77_8, rel_79_8, rel_81_8, rel_83_8, rel_85_8, rel_87_8, sm_timer0_slotcount_1_742, sm_timer1_slotcount_1_995, sm_timer2_slotcount_1_865, sm_timer3_slotcount_1_886, sm_timer4_slotcount_1_781, sm_timer5_slotcount_1_844, sm_timer6_slotcount_1_802, sm_timer7_slotcount_1_823, sm_timer_control_1_763, sm_timer_status_1_725, sm_timers01_slottime_1_973, sm_timers23_slottime_1_951, sm_timers45_slottime_1_929, sm_timers67_slottime_1_907)
  is
  begin
    if rel_61_4 then
      reg_bank_out_reg_join_61_1 <= sm_timer_status_1_725;
    elsif rel_63_8 then
      reg_bank_out_reg_join_61_1 <= sm_timer0_slotcount_1_742;
    elsif rel_65_8 then
      reg_bank_out_reg_join_61_1 <= sm_timer_control_1_763;
    elsif rel_67_8 then
      reg_bank_out_reg_join_61_1 <= sm_timer4_slotcount_1_781;
    elsif rel_69_8 then
      reg_bank_out_reg_join_61_1 <= sm_timer6_slotcount_1_802;
    elsif rel_71_8 then
      reg_bank_out_reg_join_61_1 <= sm_timer7_slotcount_1_823;
    elsif rel_73_8 then
      reg_bank_out_reg_join_61_1 <= sm_timer5_slotcount_1_844;
    elsif rel_75_8 then
      reg_bank_out_reg_join_61_1 <= sm_timer2_slotcount_1_865;
    elsif rel_77_8 then
      reg_bank_out_reg_join_61_1 <= sm_timer3_slotcount_1_886;
    elsif rel_79_8 then
      reg_bank_out_reg_join_61_1 <= sm_timers67_slottime_1_907;
    elsif rel_81_8 then
      reg_bank_out_reg_join_61_1 <= sm_timers45_slottime_1_929;
    elsif rel_83_8 then
      reg_bank_out_reg_join_61_1 <= sm_timers23_slottime_1_951;
    elsif rel_85_8 then
      reg_bank_out_reg_join_61_1 <= sm_timers01_slottime_1_973;
    elsif rel_87_8 then
      reg_bank_out_reg_join_61_1 <= sm_timer1_slotcount_1_995;
    else 
      reg_bank_out_reg_join_61_1 <= reg_bank_out_reg_58_30;
    end if;
  end process proc_if_61_1;
  opcode_99_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(addrack_1_716) & unsigned_to_std_logic_vector(rnwreg_1_708) & unsigned_to_std_logic_vector(bankaddr_1_686) & unsigned_to_std_logic_vector(linearaddr_1_696));
  rel_120_4 <= opcode_99_1_concat = std_logic_vector_to_unsigned("101000000000");
  proc_if_120_1: process (rel_120_4)
  is
  begin
    if rel_120_4 then
      sm_timer0_slotcount_en_join_120_1 <= true;
    else 
      sm_timer0_slotcount_en_join_120_1 <= false;
    end if;
  end process proc_if_120_1;
  rel_126_4 <= opcode_99_1_concat = std_logic_vector_to_unsigned("101000000001");
  proc_if_126_1: process (rel_126_4)
  is
  begin
    if rel_126_4 then
      sm_timer_control_en_join_126_1 <= true;
    else 
      sm_timer_control_en_join_126_1 <= false;
    end if;
  end process proc_if_126_1;
  rel_132_4 <= opcode_99_1_concat = std_logic_vector_to_unsigned("101000000010");
  proc_if_132_1: process (rel_132_4)
  is
  begin
    if rel_132_4 then
      sm_timer4_slotcount_en_join_132_1 <= true;
    else 
      sm_timer4_slotcount_en_join_132_1 <= false;
    end if;
  end process proc_if_132_1;
  rel_138_4 <= opcode_99_1_concat = std_logic_vector_to_unsigned("101000000011");
  proc_if_138_1: process (rel_138_4)
  is
  begin
    if rel_138_4 then
      sm_timer6_slotcount_en_join_138_1 <= true;
    else 
      sm_timer6_slotcount_en_join_138_1 <= false;
    end if;
  end process proc_if_138_1;
  rel_144_4 <= opcode_99_1_concat = std_logic_vector_to_unsigned("101000000100");
  proc_if_144_1: process (rel_144_4)
  is
  begin
    if rel_144_4 then
      sm_timer7_slotcount_en_join_144_1 <= true;
    else 
      sm_timer7_slotcount_en_join_144_1 <= false;
    end if;
  end process proc_if_144_1;
  rel_150_4 <= opcode_99_1_concat = std_logic_vector_to_unsigned("101000000101");
  proc_if_150_1: process (rel_150_4)
  is
  begin
    if rel_150_4 then
      sm_timer5_slotcount_en_join_150_1 <= true;
    else 
      sm_timer5_slotcount_en_join_150_1 <= false;
    end if;
  end process proc_if_150_1;
  rel_156_4 <= opcode_99_1_concat = std_logic_vector_to_unsigned("101000000110");
  proc_if_156_1: process (rel_156_4)
  is
  begin
    if rel_156_4 then
      sm_timer2_slotcount_en_join_156_1 <= true;
    else 
      sm_timer2_slotcount_en_join_156_1 <= false;
    end if;
  end process proc_if_156_1;
  rel_162_4 <= opcode_99_1_concat = std_logic_vector_to_unsigned("101000000111");
  proc_if_162_1: process (rel_162_4)
  is
  begin
    if rel_162_4 then
      sm_timer3_slotcount_en_join_162_1 <= true;
    else 
      sm_timer3_slotcount_en_join_162_1 <= false;
    end if;
  end process proc_if_162_1;
  rel_168_4 <= opcode_99_1_concat = std_logic_vector_to_unsigned("101000001000");
  proc_if_168_1: process (rel_168_4)
  is
  begin
    if rel_168_4 then
      sm_timers67_slottime_en_join_168_1 <= true;
    else 
      sm_timers67_slottime_en_join_168_1 <= false;
    end if;
  end process proc_if_168_1;
  rel_174_4 <= opcode_99_1_concat = std_logic_vector_to_unsigned("101000001001");
  proc_if_174_1: process (rel_174_4)
  is
  begin
    if rel_174_4 then
      sm_timers45_slottime_en_join_174_1 <= true;
    else 
      sm_timers45_slottime_en_join_174_1 <= false;
    end if;
  end process proc_if_174_1;
  rel_180_4 <= opcode_99_1_concat = std_logic_vector_to_unsigned("101000001010");
  proc_if_180_1: process (rel_180_4)
  is
  begin
    if rel_180_4 then
      sm_timers23_slottime_en_join_180_1 <= true;
    else 
      sm_timers23_slottime_en_join_180_1 <= false;
    end if;
  end process proc_if_180_1;
  rel_186_4 <= opcode_99_1_concat = std_logic_vector_to_unsigned("101000001011");
  proc_if_186_1: process (rel_186_4)
  is
  begin
    if rel_186_4 then
      sm_timers01_slottime_en_join_186_1 <= true;
    else 
      sm_timers01_slottime_en_join_186_1 <= false;
    end if;
  end process proc_if_186_1;
  rel_192_4 <= opcode_99_1_concat = std_logic_vector_to_unsigned("101000001100");
  proc_if_192_1: process (rel_192_4)
  is
  begin
    if rel_192_4 then
      sm_timer1_slotcount_en_join_192_1 <= true;
    else 
      sm_timer1_slotcount_en_join_192_1 <= false;
    end if;
  end process proc_if_192_1;
  slice_207_44 <= u2u_slice(wrdbus_1_678, 31, 0);
  slice_210_41 <= u2u_slice(wrdbus_1_678, 31, 0);
  slice_213_44 <= u2u_slice(wrdbus_1_678, 31, 0);
  slice_216_44 <= u2u_slice(wrdbus_1_678, 31, 0);
  slice_219_44 <= u2u_slice(wrdbus_1_678, 31, 0);
  slice_222_44 <= u2u_slice(wrdbus_1_678, 31, 0);
  slice_225_44 <= u2u_slice(wrdbus_1_678, 31, 0);
  slice_228_44 <= u2u_slice(wrdbus_1_678, 31, 0);
  slice_231_45 <= u2u_slice(wrdbus_1_678, 31, 0);
  slice_234_45 <= u2u_slice(wrdbus_1_678, 31, 0);
  slice_237_45 <= u2u_slice(wrdbus_1_678, 31, 0);
  slice_240_45 <= u2u_slice(wrdbus_1_678, 31, 0);
  slice_243_44 <= u2u_slice(wrdbus_1_678, 31, 0);
  rel_253_4 <= bankaddr_reg_251_26 = std_logic_vector_to_unsigned("00");
  rel_256_8 <= bankaddr_reg_251_26 = std_logic_vector_to_unsigned("01");
  rel_259_8 <= bankaddr_reg_251_26 = std_logic_vector_to_unsigned("10");
  rel_262_8 <= bankaddr_reg_251_26 = std_logic_vector_to_unsigned("11");
  proc_if_253_1: process (read_bank_out_reg_248_31, reg_bank_out_reg_58_30, rel_253_4, rel_256_8, rel_259_8, rel_262_8)
  is
  begin
    if rel_253_4 then
      read_bank_out_reg_join_253_1 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    elsif rel_256_8 then
      read_bank_out_reg_join_253_1 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    elsif rel_259_8 then
      read_bank_out_reg_join_253_1 <= reg_bank_out_reg_58_30;
    elsif rel_262_8 then
      read_bank_out_reg_join_253_1 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    else 
      read_bank_out_reg_join_253_1 <= read_bank_out_reg_248_31;
    end if;
  end process proc_if_253_1;
  reg_bank_out_reg_58_30_next <= reg_bank_out_reg_join_61_1;
  read_bank_out_reg_248_31_next <= read_bank_out_reg_join_253_1;
  bankaddr_reg_251_26_next <= bankaddr_1_686;
  read_bank_out <= unsigned_to_std_logic_vector(read_bank_out_reg_248_31);
  sm_timer0_slotcount_din <= unsigned_to_std_logic_vector(slice_207_44);
  sm_timer0_slotcount_en <= boolean_to_vector(sm_timer0_slotcount_en_join_120_1);
  sm_timer_control_din <= unsigned_to_std_logic_vector(slice_210_41);
  sm_timer_control_en <= boolean_to_vector(sm_timer_control_en_join_126_1);
  sm_timer4_slotcount_din <= unsigned_to_std_logic_vector(slice_213_44);
  sm_timer4_slotcount_en <= boolean_to_vector(sm_timer4_slotcount_en_join_132_1);
  sm_timer6_slotcount_din <= unsigned_to_std_logic_vector(slice_216_44);
  sm_timer6_slotcount_en <= boolean_to_vector(sm_timer6_slotcount_en_join_138_1);
  sm_timer7_slotcount_din <= unsigned_to_std_logic_vector(slice_219_44);
  sm_timer7_slotcount_en <= boolean_to_vector(sm_timer7_slotcount_en_join_144_1);
  sm_timer5_slotcount_din <= unsigned_to_std_logic_vector(slice_222_44);
  sm_timer5_slotcount_en <= boolean_to_vector(sm_timer5_slotcount_en_join_150_1);
  sm_timer2_slotcount_din <= unsigned_to_std_logic_vector(slice_225_44);
  sm_timer2_slotcount_en <= boolean_to_vector(sm_timer2_slotcount_en_join_156_1);
  sm_timer3_slotcount_din <= unsigned_to_std_logic_vector(slice_228_44);
  sm_timer3_slotcount_en <= boolean_to_vector(sm_timer3_slotcount_en_join_162_1);
  sm_timers67_slottime_din <= unsigned_to_std_logic_vector(slice_231_45);
  sm_timers67_slottime_en <= boolean_to_vector(sm_timers67_slottime_en_join_168_1);
  sm_timers45_slottime_din <= unsigned_to_std_logic_vector(slice_234_45);
  sm_timers45_slottime_en <= boolean_to_vector(sm_timers45_slottime_en_join_174_1);
  sm_timers23_slottime_din <= unsigned_to_std_logic_vector(slice_237_45);
  sm_timers23_slottime_en <= boolean_to_vector(sm_timers23_slottime_en_join_180_1);
  sm_timers01_slottime_din <= unsigned_to_std_logic_vector(slice_240_45);
  sm_timers01_slottime_en <= boolean_to_vector(sm_timers01_slottime_en_join_186_1);
  sm_timer1_slotcount_din <= unsigned_to_std_logic_vector(slice_243_44);
  sm_timer1_slotcount_en <= boolean_to_vector(sm_timer1_slotcount_en_join_192_1);
end behavior;


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
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlslice is
    generic (
        new_msb      : integer := 9;
        new_lsb      : integer := 1;
        x_width      : integer := 16;
        y_width      : integer := 8);
    port (
        x : in std_logic_vector (x_width-1 downto 0);
        y : out std_logic_vector (y_width-1 downto 0));
end xlslice;
architecture behavior of xlslice is
begin
    y <= x(new_msb downto new_lsb);
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6293007044 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6293007044;


architecture behavior of constant_6293007044 is
begin
  op <= "1";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity concat_6f001c0c54 is
  port (
    in0 : in std_logic_vector((4 - 1) downto 0);
    in1 : in std_logic_vector((4 - 1) downto 0);
    in2 : in std_logic_vector((4 - 1) downto 0);
    in3 : in std_logic_vector((4 - 1) downto 0);
    in4 : in std_logic_vector((4 - 1) downto 0);
    in5 : in std_logic_vector((4 - 1) downto 0);
    in6 : in std_logic_vector((4 - 1) downto 0);
    in7 : in std_logic_vector((4 - 1) downto 0);
    y : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end concat_6f001c0c54;


architecture behavior of concat_6f001c0c54 is
  signal in0_1_23: unsigned((4 - 1) downto 0);
  signal in1_1_27: unsigned((4 - 1) downto 0);
  signal in2_1_31: unsigned((4 - 1) downto 0);
  signal in3_1_35: unsigned((4 - 1) downto 0);
  signal in4_1_39: unsigned((4 - 1) downto 0);
  signal in5_1_43: unsigned((4 - 1) downto 0);
  signal in6_1_47: unsigned((4 - 1) downto 0);
  signal in7_1_51: unsigned((4 - 1) downto 0);
  signal y_2_1_concat: unsigned((32 - 1) downto 0);
begin
  in0_1_23 <= std_logic_vector_to_unsigned(in0);
  in1_1_27 <= std_logic_vector_to_unsigned(in1);
  in2_1_31 <= std_logic_vector_to_unsigned(in2);
  in3_1_35 <= std_logic_vector_to_unsigned(in3);
  in4_1_39 <= std_logic_vector_to_unsigned(in4);
  in5_1_43 <= std_logic_vector_to_unsigned(in5);
  in6_1_47 <= std_logic_vector_to_unsigned(in6);
  in7_1_51 <= std_logic_vector_to_unsigned(in7);
  y_2_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(in0_1_23) & unsigned_to_std_logic_vector(in1_1_27) & unsigned_to_std_logic_vector(in2_1_31) & unsigned_to_std_logic_vector(in3_1_35) & unsigned_to_std_logic_vector(in4_1_39) & unsigned_to_std_logic_vector(in5_1_43) & unsigned_to_std_logic_vector(in6_1_47) & unsigned_to_std_logic_vector(in7_1_51));
  y <= unsigned_to_std_logic_vector(y_2_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_4ad38e8aed is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    d3 : in std_logic_vector((1 - 1) downto 0);
    d4 : in std_logic_vector((1 - 1) downto 0);
    d5 : in std_logic_vector((1 - 1) downto 0);
    d6 : in std_logic_vector((1 - 1) downto 0);
    d7 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_4ad38e8aed;


architecture behavior of logical_4ad38e8aed is
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  signal d2_1_30: std_logic_vector((1 - 1) downto 0);
  signal d3_1_33: std_logic_vector((1 - 1) downto 0);
  signal d4_1_36: std_logic_vector((1 - 1) downto 0);
  signal d5_1_39: std_logic_vector((1 - 1) downto 0);
  signal d6_1_42: std_logic_vector((1 - 1) downto 0);
  signal d7_1_45: std_logic_vector((1 - 1) downto 0);
  signal fully_2_1_bit: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  d4_1_36 <= d4;
  d5_1_39 <= d5;
  d6_1_42 <= d6;
  d7_1_45 <= d7;
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or d4_1_36 or d5_1_39 or d6_1_42 or d7_1_45;
  y <= fully_2_1_bit;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_e5b38cca3b is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_e5b38cca3b;


architecture behavior of inverter_e5b38cca3b is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end behavior;


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
use work.conv_pkg.all;
entity xlregister is
   generic (d_width          : integer := 5;
            init_value       : bit_vector := b"00");
   port (d   : in std_logic_vector (d_width-1 downto 0);
         rst : in std_logic_vector(0 downto 0) := "0";
         en  : in std_logic_vector(0 downto 0) := "1";
         ce  : in std_logic;
         clk : in std_logic;
         q   : out std_logic_vector (d_width-1 downto 0));
end xlregister;
architecture behavior of xlregister is
   component synth_reg_w_init
      generic (width      : integer;
               init_index : integer;
               init_value : bit_vector;
               latency    : integer);
      port (i   : in std_logic_vector(width-1 downto 0);
            ce  : in std_logic;
            clr : in std_logic;
            clk : in std_logic;
            o   : out std_logic_vector(width-1 downto 0));
   end component;
   -- synopsys translate_off
   signal real_d, real_q           : real;
   -- synopsys translate_on
   signal internal_clr             : std_logic;
   signal internal_ce              : std_logic;
begin
   internal_clr <= rst(0) and ce;
   internal_ce  <= en(0) and ce;
   synth_reg_inst : synth_reg_w_init
      generic map (width      => d_width,
                   init_index => 2,
                   init_value => init_value,
                   latency    => 1)
      port map (i   => d,
                ce  => internal_ce,
                clr => internal_clr,
                clk => clk,
                o   => q);
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
use work.conv_pkg.all;
entity xldelay is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer :=  0;
           reset        : integer :=  0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        rst     : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));
end xldelay;
architecture behavior of xldelay is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   signal internal_ce  : std_logic;
begin
   internal_ce  <= ce and en;
   srl_delay: if ((reg_retiming = 0) and (reset = 0)) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;
   reg_delay: if ((reg_retiming = 1) or (reset = 1)) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => rst,
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_80f90b97d0 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_80f90b97d0;


architecture behavior of logical_80f90b97d0 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_37567836aa is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_37567836aa;


architecture behavior of constant_37567836aa is
begin
  op <= "00000000000000000000000000000000";
end behavior;


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
use work.conv_pkg.all;
entity convert_func_call is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        result : out std_logic_vector (dout_width-1 downto 0));
end convert_func_call;
architecture behavior of convert_func_call is
begin
    result <= convert_type(din, din_width, din_bin_pt, din_arith,
                           dout_width, dout_bin_pt, dout_arith,
                           quantization, overflow);
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlconvert is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        en_width     : integer := 1;
        en_bin_pt    : integer := 0;
        en_arith     : integer := xlUnsigned;
        bool_conversion : integer :=0;
        latency      : integer := 0;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        en  : in std_logic_vector (en_width-1 downto 0);
        ce  : in std_logic;
        clr : in std_logic;
        clk : in std_logic;
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlconvert;
architecture behavior of xlconvert is
    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i       : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;
    component convert_func_call
        generic (
            din_width    : integer := 16;
            din_bin_pt   : integer := 4;
            din_arith    : integer := xlUnsigned;
            dout_width   : integer := 8;
            dout_bin_pt  : integer := 2;
            dout_arith   : integer := xlUnsigned;
            quantization : integer := xlTruncate;
            overflow     : integer := xlWrap);
        port (
            din : in std_logic_vector (din_width-1 downto 0);
            result : out std_logic_vector (dout_width-1 downto 0));
    end component;
    -- synopsys translate_off
    -- synopsys translate_on
    signal result : std_logic_vector(dout_width-1 downto 0);
    signal internal_ce : std_logic;
begin
    -- synopsys translate_off
    -- synopsys translate_on
    internal_ce <= ce and en(0);

    bool_conversion_generate : if (bool_conversion = 1)
    generate
      result <= din;
    end generate;
    std_conversion_generate : if (bool_conversion = 0)
    generate
      convert : convert_func_call
        generic map (
          din_width   => din_width,
          din_bin_pt  => din_bin_pt,
          din_arith   => din_arith,
          dout_width  => dout_width,
          dout_bin_pt => dout_bin_pt,
          dout_arith  => dout_arith,
          quantization => quantization,
          overflow     => overflow)
        port map (
          din => din,
          result => result);
    end generate;
    latency_test : if (latency > 0) generate
        reg : synth_reg
            generic map (
              width => dout_width,
              latency => latency
            )
            port map (
              i => result,
              ce => internal_ce,
              clr => clr,
              clk => clk,
              o => dout
            );
    end generate;
    latency0 : if (latency = 0)
    generate
        dout <= result;
    end generate latency0;
end  behavior;

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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlcounter_free is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    load: in std_logic_vector(0 downto 0) := (others => '0');
    din: in std_logic_vector(op_width - 1 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_free ;
architecture behavior of xlcounter_free is
  component cntr_11_0_b615980e1379bd9b
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_b615980e1379bd9b:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_b615980e1379bd9b:
    component is "true";
  attribute box_type of cntr_11_0_b615980e1379bd9b:
    component  is "black_box";
  component cntr_11_0_62a43530160d497c
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_62a43530160d497c:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_62a43530160d497c:
    component is "true";
  attribute box_type of cntr_11_0_62a43530160d497c:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec: std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec: std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
  signal core_sinit: std_logic;
  signal core_ce: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
begin
  core_ce <= ce and en(0);
  core_sinit <= (clr or rst(0)) and ce;
  op <= op_net;
  comp0: if ((core_name0 = "cntr_11_0_b615980e1379bd9b")) generate
    core_instance0: cntr_11_0_b615980e1379bd9b
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_62a43530160d497c")) generate
    core_instance1: cntr_11_0_62a43530160d497c
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_aacf6e1b0e is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_aacf6e1b0e;


architecture behavior of logical_aacf6e1b0e is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_6cb8f0ce02 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_6cb8f0ce02;


architecture behavior of logical_6cb8f0ce02 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27 or d2_1_30;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_954ee29728 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    d2 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_954ee29728;


architecture behavior of logical_954ee29728 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal d2_1_30: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  d2_1_30 <= d2(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27 and d2_1_30;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_112ed141f4 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_112ed141f4;


architecture behavior of mux_112ed141f4 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((1 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((1 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_4575089f62 is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_4575089f62;


architecture behavior of relational_4575089f62 is
  signal a_1_31: unsigned((32 - 1) downto 0);
  signal b_1_34: unsigned((32 - 1) downto 0);
  signal result_20_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_20_3_rel <= a_1_31 <= b_1_34;
  op <= boolean_to_vector(result_20_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_6439922612 is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_6439922612;


architecture behavior of relational_6439922612 is
  signal a_1_31: unsigned((32 - 1) downto 0);
  signal b_1_34: unsigned((32 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_18_3_rel <= a_1_31 > b_1_34;
  op <= boolean_to_vector(result_18_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_9ebf6075aa is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_9ebf6075aa;


architecture behavior of relational_9ebf6075aa is
  signal a_1_31: unsigned((16 - 1) downto 0);
  signal b_1_34: unsigned((16 - 1) downto 0);
  signal result_20_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_20_3_rel <= a_1_31 <= b_1_34;
  op <= boolean_to_vector(result_20_3_rel);
end behavior;


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
use work.conv_pkg.all;
entity xlpassthrough is
    generic (
        din_width    : integer := 16;
        dout_width   : integer := 16
        );
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlpassthrough;
architecture passthrough_arch of xlpassthrough is
begin
  dout <= din;
end passthrough_arch;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_1415beabc9 is
  port (
    a : in std_logic_vector((1 - 1) downto 0);
    b : in std_logic_vector((1 - 1) downto 0);
    c : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((4 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_1415beabc9;


architecture behavior of bitbasher_1415beabc9 is
  signal a_1_26: boolean;
  signal b_1_29: boolean;
  signal c_1_32: boolean;
  signal fullq_5_1_concat: unsigned((4 - 1) downto 0);
begin
  a_1_26 <= ((a) = "1");
  b_1_29 <= ((b) = "1");
  c_1_32 <= ((c) = "1");
  fullq_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(std_logic_vector_to_unsigned("0")) & boolean_to_vector(a_1_26) & boolean_to_vector(b_1_29) & boolean_to_vector(c_1_32));
  q <= unsigned_to_std_logic_vector(fullq_5_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "warp_timer/EDK Processor"

entity edk_processor_entity_cddda35d8e is
  port (
    from_register: in std_logic_vector(31 downto 0); 
    plb_abus: in std_logic_vector(31 downto 0); 
    plb_ce_1: in std_logic; 
    plb_clk_1: in std_logic; 
    plb_pavalid: in std_logic; 
    plb_rnw: in std_logic; 
    plb_wrdbus: in std_logic_vector(31 downto 0); 
    sg_plb_addrpref: in std_logic_vector(19 downto 0); 
    splb_rst: in std_logic; 
    to_register: in std_logic_vector(31 downto 0); 
    to_register1: in std_logic_vector(31 downto 0); 
    to_register10: in std_logic_vector(31 downto 0); 
    to_register11: in std_logic_vector(31 downto 0); 
    to_register12: in std_logic_vector(31 downto 0); 
    to_register2: in std_logic_vector(31 downto 0); 
    to_register3: in std_logic_vector(31 downto 0); 
    to_register4: in std_logic_vector(31 downto 0); 
    to_register5: in std_logic_vector(31 downto 0); 
    to_register6: in std_logic_vector(31 downto 0); 
    to_register7: in std_logic_vector(31 downto 0); 
    to_register8: in std_logic_vector(31 downto 0); 
    to_register9: in std_logic_vector(31 downto 0); 
    constant5_x0: out std_logic; 
    plb_decode_x0: out std_logic; 
    plb_decode_x1: out std_logic; 
    plb_decode_x2: out std_logic; 
    plb_decode_x3: out std_logic; 
    plb_decode_x4: out std_logic_vector(31 downto 0); 
    plb_memmap_x0: out std_logic_vector(31 downto 0); 
    plb_memmap_x1: out std_logic; 
    plb_memmap_x10: out std_logic_vector(31 downto 0); 
    plb_memmap_x11: out std_logic; 
    plb_memmap_x12: out std_logic_vector(31 downto 0); 
    plb_memmap_x13: out std_logic; 
    plb_memmap_x14: out std_logic_vector(31 downto 0); 
    plb_memmap_x15: out std_logic; 
    plb_memmap_x16: out std_logic_vector(31 downto 0); 
    plb_memmap_x17: out std_logic; 
    plb_memmap_x18: out std_logic_vector(31 downto 0); 
    plb_memmap_x19: out std_logic; 
    plb_memmap_x2: out std_logic_vector(31 downto 0); 
    plb_memmap_x20: out std_logic_vector(31 downto 0); 
    plb_memmap_x21: out std_logic; 
    plb_memmap_x22: out std_logic_vector(31 downto 0); 
    plb_memmap_x23: out std_logic; 
    plb_memmap_x24: out std_logic_vector(31 downto 0); 
    plb_memmap_x25: out std_logic; 
    plb_memmap_x3: out std_logic; 
    plb_memmap_x4: out std_logic_vector(31 downto 0); 
    plb_memmap_x5: out std_logic; 
    plb_memmap_x6: out std_logic_vector(31 downto 0); 
    plb_memmap_x7: out std_logic; 
    plb_memmap_x8: out std_logic_vector(31 downto 0); 
    plb_memmap_x9: out std_logic
  );
end edk_processor_entity_cddda35d8e;

architecture structural of edk_processor_entity_cddda35d8e is
  signal bankaddr: std_logic_vector(1 downto 0);
  signal linearaddr: std_logic_vector(7 downto 0);
  signal plb_abus_net_x0: std_logic_vector(31 downto 0);
  signal plb_ce_1_sg_x0: std_logic;
  signal plb_clk_1_sg_x0: std_logic;
  signal plb_pavalid_net_x0: std_logic;
  signal plb_rnw_net_x0: std_logic;
  signal plb_wrdbus_net_x0: std_logic_vector(31 downto 0);
  signal rddata: std_logic_vector(31 downto 0);
  signal rnwreg: std_logic;
  signal sg_plb_addrpref_net_x0: std_logic_vector(19 downto 0);
  signal sl_addrack_x0: std_logic;
  signal sl_rdcomp_x0: std_logic;
  signal sl_rddack_x0: std_logic;
  signal sl_rddbus_x0: std_logic_vector(31 downto 0);
  signal sl_wait_x0: std_logic;
  signal sl_wrdack_x0: std_logic;
  signal splb_rst_net_x0: std_logic;
  signal timer0_slotcount_din_x0: std_logic_vector(31 downto 0);
  signal timer0_slotcount_dout_x0: std_logic_vector(31 downto 0);
  signal timer0_slotcount_en_x0: std_logic;
  signal timer1_slotcount_din_x0: std_logic_vector(31 downto 0);
  signal timer1_slotcount_dout_x0: std_logic_vector(31 downto 0);
  signal timer1_slotcount_en_x0: std_logic;
  signal timer2_slotcount_din_x0: std_logic_vector(31 downto 0);
  signal timer2_slotcount_dout_x0: std_logic_vector(31 downto 0);
  signal timer2_slotcount_en_x0: std_logic;
  signal timer3_slotcount_din_x0: std_logic_vector(31 downto 0);
  signal timer3_slotcount_dout_x0: std_logic_vector(31 downto 0);
  signal timer3_slotcount_en_x0: std_logic;
  signal timer4_slotcount_din_x0: std_logic_vector(31 downto 0);
  signal timer4_slotcount_dout_x0: std_logic_vector(31 downto 0);
  signal timer4_slotcount_en_x0: std_logic;
  signal timer5_slotcount_din_x0: std_logic_vector(31 downto 0);
  signal timer5_slotcount_dout_x0: std_logic_vector(31 downto 0);
  signal timer5_slotcount_en_x0: std_logic;
  signal timer6_slotcount_din_x0: std_logic_vector(31 downto 0);
  signal timer6_slotcount_dout_x0: std_logic_vector(31 downto 0);
  signal timer6_slotcount_en_x0: std_logic;
  signal timer7_slotcount_din_x0: std_logic_vector(31 downto 0);
  signal timer7_slotcount_dout_x0: std_logic_vector(31 downto 0);
  signal timer7_slotcount_en_x0: std_logic;
  signal timer_control_din_x0: std_logic_vector(31 downto 0);
  signal timer_control_dout_x0: std_logic_vector(31 downto 0);
  signal timer_control_en_x0: std_logic;
  signal timer_status_dout_x0: std_logic_vector(31 downto 0);
  signal timers01_slottime_din_x0: std_logic_vector(31 downto 0);
  signal timers01_slottime_dout_x0: std_logic_vector(31 downto 0);
  signal timers01_slottime_en_x0: std_logic;
  signal timers23_slottime_din_x0: std_logic_vector(31 downto 0);
  signal timers23_slottime_dout_x0: std_logic_vector(31 downto 0);
  signal timers23_slottime_en_x0: std_logic;
  signal timers45_slottime_din_x0: std_logic_vector(31 downto 0);
  signal timers45_slottime_dout_x0: std_logic_vector(31 downto 0);
  signal timers45_slottime_en_x0: std_logic;
  signal timers67_slottime_din_x0: std_logic_vector(31 downto 0);
  signal timers67_slottime_dout_x0: std_logic_vector(31 downto 0);
  signal timers67_slottime_en_x0: std_logic;
  signal wrdbusreg: std_logic_vector(31 downto 0);

begin
  timer_status_dout_x0 <= from_register;
  plb_abus_net_x0 <= plb_abus;
  plb_ce_1_sg_x0 <= plb_ce_1;
  plb_clk_1_sg_x0 <= plb_clk_1;
  plb_pavalid_net_x0 <= plb_pavalid;
  plb_rnw_net_x0 <= plb_rnw;
  plb_wrdbus_net_x0 <= plb_wrdbus;
  sg_plb_addrpref_net_x0 <= sg_plb_addrpref;
  splb_rst_net_x0 <= splb_rst;
  timer0_slotcount_dout_x0 <= to_register;
  timer_control_dout_x0 <= to_register1;
  timers23_slottime_dout_x0 <= to_register10;
  timers01_slottime_dout_x0 <= to_register11;
  timer1_slotcount_dout_x0 <= to_register12;
  timer4_slotcount_dout_x0 <= to_register2;
  timer6_slotcount_dout_x0 <= to_register3;
  timer7_slotcount_dout_x0 <= to_register4;
  timer5_slotcount_dout_x0 <= to_register5;
  timer2_slotcount_dout_x0 <= to_register6;
  timer3_slotcount_dout_x0 <= to_register7;
  timers67_slottime_dout_x0 <= to_register8;
  timers45_slottime_dout_x0 <= to_register9;
  constant5_x0 <= sl_wait_x0;
  plb_decode_x0 <= sl_addrack_x0;
  plb_decode_x1 <= sl_rdcomp_x0;
  plb_decode_x2 <= sl_wrdack_x0;
  plb_decode_x3 <= sl_rddack_x0;
  plb_decode_x4 <= sl_rddbus_x0;
  plb_memmap_x0 <= timer0_slotcount_din_x0;
  plb_memmap_x1 <= timer0_slotcount_en_x0;
  plb_memmap_x10 <= timer5_slotcount_din_x0;
  plb_memmap_x11 <= timer5_slotcount_en_x0;
  plb_memmap_x12 <= timer2_slotcount_din_x0;
  plb_memmap_x13 <= timer2_slotcount_en_x0;
  plb_memmap_x14 <= timer3_slotcount_din_x0;
  plb_memmap_x15 <= timer3_slotcount_en_x0;
  plb_memmap_x16 <= timers67_slottime_din_x0;
  plb_memmap_x17 <= timers67_slottime_en_x0;
  plb_memmap_x18 <= timers45_slottime_din_x0;
  plb_memmap_x19 <= timers45_slottime_en_x0;
  plb_memmap_x2 <= timer_control_din_x0;
  plb_memmap_x20 <= timers23_slottime_din_x0;
  plb_memmap_x21 <= timers23_slottime_en_x0;
  plb_memmap_x22 <= timers01_slottime_din_x0;
  plb_memmap_x23 <= timers01_slottime_en_x0;
  plb_memmap_x24 <= timer1_slotcount_din_x0;
  plb_memmap_x25 <= timer1_slotcount_en_x0;
  plb_memmap_x3 <= timer_control_en_x0;
  plb_memmap_x4 <= timer4_slotcount_din_x0;
  plb_memmap_x5 <= timer4_slotcount_en_x0;
  plb_memmap_x6 <= timer6_slotcount_din_x0;
  plb_memmap_x7 <= timer6_slotcount_en_x0;
  plb_memmap_x8 <= timer7_slotcount_din_x0;
  plb_memmap_x9 <= timer7_slotcount_en_x0;

  constant5: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => sl_wait_x0
    );

  plb_decode: entity work.mcode_block_f4d0462e0e
    port map (
      addrpref => sg_plb_addrpref_net_x0,
      ce => plb_ce_1_sg_x0,
      clk => plb_clk_1_sg_x0,
      clr => '0',
      plbabus => plb_abus_net_x0,
      plbpavalid(0) => plb_pavalid_net_x0,
      plbrnw(0) => plb_rnw_net_x0,
      plbrst(0) => splb_rst_net_x0,
      plbwrdbus => plb_wrdbus_net_x0,
      rddata => rddata,
      addrack(0) => sl_addrack_x0,
      bankaddr => bankaddr,
      linearaddr => linearaddr,
      rdcomp(0) => sl_rdcomp_x0,
      rddack(0) => sl_rddack_x0,
      rddbus => sl_rddbus_x0,
      rnwreg(0) => rnwreg,
      wrdack(0) => sl_wrdack_x0,
      wrdbusreg => wrdbusreg
    );

  plb_memmap: entity work.mcode_block_00214ec15e
    port map (
      addrack(0) => sl_addrack_x0,
      bankaddr => bankaddr,
      ce => plb_ce_1_sg_x0,
      clk => plb_clk_1_sg_x0,
      clr => '0',
      linearaddr => linearaddr,
      rnwreg(0) => rnwreg,
      sm_timer0_slotcount => timer0_slotcount_dout_x0,
      sm_timer1_slotcount => timer1_slotcount_dout_x0,
      sm_timer2_slotcount => timer2_slotcount_dout_x0,
      sm_timer3_slotcount => timer3_slotcount_dout_x0,
      sm_timer4_slotcount => timer4_slotcount_dout_x0,
      sm_timer5_slotcount => timer5_slotcount_dout_x0,
      sm_timer6_slotcount => timer6_slotcount_dout_x0,
      sm_timer7_slotcount => timer7_slotcount_dout_x0,
      sm_timer_control => timer_control_dout_x0,
      sm_timer_status => timer_status_dout_x0,
      sm_timers01_slottime => timers01_slottime_dout_x0,
      sm_timers23_slottime => timers23_slottime_dout_x0,
      sm_timers45_slottime => timers45_slottime_dout_x0,
      sm_timers67_slottime => timers67_slottime_dout_x0,
      wrdbus => wrdbusreg,
      read_bank_out => rddata,
      sm_timer0_slotcount_din => timer0_slotcount_din_x0,
      sm_timer0_slotcount_en(0) => timer0_slotcount_en_x0,
      sm_timer1_slotcount_din => timer1_slotcount_din_x0,
      sm_timer1_slotcount_en(0) => timer1_slotcount_en_x0,
      sm_timer2_slotcount_din => timer2_slotcount_din_x0,
      sm_timer2_slotcount_en(0) => timer2_slotcount_en_x0,
      sm_timer3_slotcount_din => timer3_slotcount_din_x0,
      sm_timer3_slotcount_en(0) => timer3_slotcount_en_x0,
      sm_timer4_slotcount_din => timer4_slotcount_din_x0,
      sm_timer4_slotcount_en(0) => timer4_slotcount_en_x0,
      sm_timer5_slotcount_din => timer5_slotcount_din_x0,
      sm_timer5_slotcount_en(0) => timer5_slotcount_en_x0,
      sm_timer6_slotcount_din => timer6_slotcount_din_x0,
      sm_timer6_slotcount_en(0) => timer6_slotcount_en_x0,
      sm_timer7_slotcount_din => timer7_slotcount_din_x0,
      sm_timer7_slotcount_en(0) => timer7_slotcount_en_x0,
      sm_timer_control_din => timer_control_din_x0,
      sm_timer_control_en(0) => timer_control_en_x0,
      sm_timers01_slottime_din => timers01_slottime_din_x0,
      sm_timers01_slottime_en(0) => timers01_slottime_en_x0,
      sm_timers23_slottime_din => timers23_slottime_din_x0,
      sm_timers23_slottime_en(0) => timers23_slottime_en_x0,
      sm_timers45_slottime_din => timers45_slottime_din_x0,
      sm_timers45_slottime_en(0) => timers45_slottime_en_x0,
      sm_timers67_slottime_din => timers67_slottime_din_x0,
      sm_timers67_slottime_en(0) => timers67_slottime_en_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "warp_timer/Registers/Slices & Gotos"

entity \slices___gotos_entity_86536717c4\ is
  port (
    x32b: in std_logic_vector(31 downto 0); 
    timer0_donereset: out std_logic; 
    timer0_mode: out std_logic; 
    timer0_pause: out std_logic; 
    timer0_start: out std_logic; 
    timer1_donereset: out std_logic; 
    timer1_mode: out std_logic; 
    timer1_pause: out std_logic; 
    timer1_start: out std_logic; 
    timer2_donereset: out std_logic; 
    timer2_mode: out std_logic; 
    timer2_pause: out std_logic; 
    timer2_start: out std_logic; 
    timer3_donereset: out std_logic; 
    timer3_mode: out std_logic; 
    timer3_pause: out std_logic; 
    timer3_start: out std_logic; 
    timer4_donereset: out std_logic; 
    timer4_mode: out std_logic; 
    timer4_pause: out std_logic; 
    timer4_start: out std_logic; 
    timer5_donereset: out std_logic; 
    timer5_mode: out std_logic; 
    timer5_pause: out std_logic; 
    timer5_start: out std_logic; 
    timer6_donereset: out std_logic; 
    timer6_mode: out std_logic; 
    timer6_pause: out std_logic; 
    timer6_start: out std_logic; 
    timer7_donereset: out std_logic; 
    timer7_mode: out std_logic; 
    timer7_pause: out std_logic; 
    timer7_start: out std_logic
  );
end \slices___gotos_entity_86536717c4\;

architecture structural of \slices___gotos_entity_86536717c4\ is
  signal from_register8_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice10_y_net_x0: std_logic;
  signal slice11_y_net_x0: std_logic;
  signal slice12_y_net_x0: std_logic;
  signal slice13_y_net_x0: std_logic;
  signal slice14_y_net_x0: std_logic;
  signal slice15_y_net_x0: std_logic;
  signal slice16_y_net_x0: std_logic;
  signal slice17_y_net_x0: std_logic;
  signal slice18_y_net_x0: std_logic;
  signal slice19_y_net_x0: std_logic;
  signal slice1_y_net_x0: std_logic;
  signal slice20_y_net_x0: std_logic;
  signal slice21_y_net_x0: std_logic;
  signal slice22_y_net_x0: std_logic;
  signal slice23_y_net_x0: std_logic;
  signal slice24_y_net_x0: std_logic;
  signal slice25_y_net_x0: std_logic;
  signal slice26_y_net_x0: std_logic;
  signal slice27_y_net_x0: std_logic;
  signal slice28_y_net_x0: std_logic;
  signal slice29_y_net_x0: std_logic;
  signal slice2_y_net_x0: std_logic;
  signal slice30_y_net_x0: std_logic;
  signal slice31_y_net_x0: std_logic;
  signal slice3_y_net_x0: std_logic;
  signal slice4_y_net_x0: std_logic;
  signal slice5_y_net_x0: std_logic;
  signal slice6_y_net_x0: std_logic;
  signal slice7_y_net_x0: std_logic;
  signal slice8_y_net_x0: std_logic;
  signal slice9_y_net_x0: std_logic;
  signal slice_y_net_x0: std_logic;
  signal x4lsb_12_y_net: std_logic_vector(3 downto 0);
  signal x4lsb_16_y_net: std_logic_vector(3 downto 0);
  signal x4lsb_20_y_net: std_logic_vector(3 downto 0);
  signal x4lsb_24_y_net: std_logic_vector(3 downto 0);
  signal x4lsb_28_y_net: std_logic_vector(3 downto 0);
  signal x4lsb_4_y_net: std_logic_vector(3 downto 0);
  signal x4lsb_8_y_net: std_logic_vector(3 downto 0);
  signal x4lsb_y_net: std_logic_vector(3 downto 0);

begin
  from_register8_data_out_net_x0 <= x32b;
  timer0_donereset <= slice2_y_net_x0;
  timer0_mode <= slice1_y_net_x0;
  timer0_pause <= slice6_y_net_x0;
  timer0_start <= slice_y_net_x0;
  timer1_donereset <= slice5_y_net_x0;
  timer1_mode <= slice4_y_net_x0;
  timer1_pause <= slice7_y_net_x0;
  timer1_start <= slice3_y_net_x0;
  timer2_donereset <= slice10_y_net_x0;
  timer2_mode <= slice9_y_net_x0;
  timer2_pause <= slice14_y_net_x0;
  timer2_start <= slice8_y_net_x0;
  timer3_donereset <= slice13_y_net_x0;
  timer3_mode <= slice12_y_net_x0;
  timer3_pause <= slice15_y_net_x0;
  timer3_start <= slice11_y_net_x0;
  timer4_donereset <= slice24_y_net_x0;
  timer4_mode <= slice17_y_net_x0;
  timer4_pause <= slice28_y_net_x0;
  timer4_start <= slice16_y_net_x0;
  timer5_donereset <= slice27_y_net_x0;
  timer5_mode <= slice26_y_net_x0;
  timer5_pause <= slice29_y_net_x0;
  timer5_start <= slice25_y_net_x0;
  timer6_donereset <= slice18_y_net_x0;
  timer6_mode <= slice31_y_net_x0;
  timer6_pause <= slice22_y_net_x0;
  timer6_start <= slice30_y_net_x0;
  timer7_donereset <= slice21_y_net_x0;
  timer7_mode <= slice20_y_net_x0;
  timer7_pause <= slice23_y_net_x0;
  timer7_start <= slice19_y_net_x0;

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_y_net,
      y(0) => slice_y_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_y_net,
      y(0) => slice1_y_net_x0
    );

  slice10: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_8_y_net,
      y(0) => slice10_y_net_x0
    );

  slice11: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_12_y_net,
      y(0) => slice11_y_net_x0
    );

  slice12: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_12_y_net,
      y(0) => slice12_y_net_x0
    );

  slice13: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_12_y_net,
      y(0) => slice13_y_net_x0
    );

  slice14: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_8_y_net,
      y(0) => slice14_y_net_x0
    );

  slice15: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_12_y_net,
      y(0) => slice15_y_net_x0
    );

  slice16: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_16_y_net,
      y(0) => slice16_y_net_x0
    );

  slice17: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_16_y_net,
      y(0) => slice17_y_net_x0
    );

  slice18: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_24_y_net,
      y(0) => slice18_y_net_x0
    );

  slice19: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_28_y_net,
      y(0) => slice19_y_net_x0
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_y_net,
      y(0) => slice2_y_net_x0
    );

  slice20: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_28_y_net,
      y(0) => slice20_y_net_x0
    );

  slice21: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_28_y_net,
      y(0) => slice21_y_net_x0
    );

  slice22: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_24_y_net,
      y(0) => slice22_y_net_x0
    );

  slice23: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_28_y_net,
      y(0) => slice23_y_net_x0
    );

  slice24: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_16_y_net,
      y(0) => slice24_y_net_x0
    );

  slice25: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_20_y_net,
      y(0) => slice25_y_net_x0
    );

  slice26: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_20_y_net,
      y(0) => slice26_y_net_x0
    );

  slice27: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_20_y_net,
      y(0) => slice27_y_net_x0
    );

  slice28: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_16_y_net,
      y(0) => slice28_y_net_x0
    );

  slice29: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_20_y_net,
      y(0) => slice29_y_net_x0
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_4_y_net,
      y(0) => slice3_y_net_x0
    );

  slice30: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_24_y_net,
      y(0) => slice30_y_net_x0
    );

  slice31: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_24_y_net,
      y(0) => slice31_y_net_x0
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_4_y_net,
      y(0) => slice4_y_net_x0
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 3,
      new_msb => 3,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_4_y_net,
      y(0) => slice5_y_net_x0
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_y_net,
      y(0) => slice6_y_net_x0
    );

  slice7: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_4_y_net,
      y(0) => slice7_y_net_x0
    );

  slice8: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 0,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_8_y_net,
      y(0) => slice8_y_net_x0
    );

  slice9: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => x4lsb_8_y_net,
      y(0) => slice9_y_net_x0
    );

  x4lsb: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 3,
      x_width => 32,
      y_width => 4
    )
    port map (
      x => from_register8_data_out_net_x0,
      y => x4lsb_y_net
    );

  x4lsb_12: entity work.xlslice
    generic map (
      new_lsb => 12,
      new_msb => 15,
      x_width => 32,
      y_width => 4
    )
    port map (
      x => from_register8_data_out_net_x0,
      y => x4lsb_12_y_net
    );

  x4lsb_16: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 19,
      x_width => 32,
      y_width => 4
    )
    port map (
      x => from_register8_data_out_net_x0,
      y => x4lsb_16_y_net
    );

  x4lsb_20: entity work.xlslice
    generic map (
      new_lsb => 20,
      new_msb => 23,
      x_width => 32,
      y_width => 4
    )
    port map (
      x => from_register8_data_out_net_x0,
      y => x4lsb_20_y_net
    );

  x4lsb_24: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 27,
      x_width => 32,
      y_width => 4
    )
    port map (
      x => from_register8_data_out_net_x0,
      y => x4lsb_24_y_net
    );

  x4lsb_28: entity work.xlslice
    generic map (
      new_lsb => 28,
      new_msb => 31,
      x_width => 32,
      y_width => 4
    )
    port map (
      x => from_register8_data_out_net_x0,
      y => x4lsb_28_y_net
    );

  x4lsb_4: entity work.xlslice
    generic map (
      new_lsb => 4,
      new_msb => 7,
      x_width => 32,
      y_width => 4
    )
    port map (
      x => from_register8_data_out_net_x0,
      y => x4lsb_4_y_net
    );

  x4lsb_8: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 11,
      x_width => 32,
      y_width => 4
    )
    port map (
      x => from_register8_data_out_net_x0,
      y => x4lsb_8_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "warp_timer/Registers"

entity registers_entity_5e629debe6 is
  port (
    from_register11: in std_logic_vector(31 downto 0); 
    from_register12: in std_logic_vector(31 downto 0); 
    from_register13: in std_logic_vector(31 downto 0); 
    from_register14: in std_logic_vector(31 downto 0); 
    from_register8: in std_logic_vector(31 downto 0); 
    constant5_x0: out std_logic; 
    slices_gotos: out std_logic; 
    slices_gotos_x0: out std_logic; 
    slices_gotos_x1: out std_logic; 
    slices_gotos_x10: out std_logic; 
    slices_gotos_x11: out std_logic; 
    slices_gotos_x12: out std_logic; 
    slices_gotos_x13: out std_logic; 
    slices_gotos_x14: out std_logic; 
    slices_gotos_x15: out std_logic; 
    slices_gotos_x16: out std_logic; 
    slices_gotos_x17: out std_logic; 
    slices_gotos_x18: out std_logic; 
    slices_gotos_x19: out std_logic; 
    slices_gotos_x2: out std_logic; 
    slices_gotos_x20: out std_logic; 
    slices_gotos_x21: out std_logic; 
    slices_gotos_x22: out std_logic; 
    slices_gotos_x23: out std_logic; 
    slices_gotos_x24: out std_logic; 
    slices_gotos_x25: out std_logic; 
    slices_gotos_x26: out std_logic; 
    slices_gotos_x27: out std_logic; 
    slices_gotos_x28: out std_logic; 
    slices_gotos_x29: out std_logic; 
    slices_gotos_x3: out std_logic; 
    slices_gotos_x30: out std_logic; 
    slices_gotos_x4: out std_logic; 
    slices_gotos_x5: out std_logic; 
    slices_gotos_x6: out std_logic; 
    slices_gotos_x7: out std_logic; 
    slices_gotos_x8: out std_logic; 
    slices_gotos_x9: out std_logic; 
    timer0_slottime: out std_logic_vector(15 downto 0); 
    timer1_slottime: out std_logic_vector(15 downto 0); 
    timer2_slottime: out std_logic_vector(15 downto 0); 
    timer3_slottime: out std_logic_vector(15 downto 0); 
    timer4_slottime: out std_logic_vector(15 downto 0); 
    timer5_slottime: out std_logic_vector(15 downto 0); 
    timer6_slottime: out std_logic_vector(15 downto 0); 
    timer7_slottime: out std_logic_vector(15 downto 0)
  );
end registers_entity_5e629debe6;

architecture structural of registers_entity_5e629debe6 is
  signal constant5_op_net_x0: std_logic;
  signal from_register11_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register12_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register13_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register14_data_out_net_x0: std_logic_vector(31 downto 0);
  signal from_register8_data_out_net_x1: std_logic_vector(31 downto 0);
  signal slice10_y_net_x1: std_logic;
  signal slice11_y_net_x1: std_logic;
  signal slice12_y_net_x1: std_logic;
  signal slice13_y_net_x1: std_logic;
  signal slice14_y_net_x1: std_logic;
  signal slice15_y_net_x1: std_logic;
  signal slice16_y_net_x1: std_logic;
  signal slice17_y_net_x1: std_logic;
  signal slice18_y_net_x1: std_logic;
  signal slice19_y_net_x1: std_logic;
  signal slice1_y_net_x1: std_logic;
  signal slice20_y_net_x1: std_logic;
  signal slice21_y_net_x1: std_logic;
  signal slice22_y_net_x1: std_logic;
  signal slice23_y_net_x1: std_logic;
  signal slice24_y_net_x1: std_logic;
  signal slice25_y_net_x1: std_logic;
  signal slice26_y_net_x1: std_logic;
  signal slice27_y_net_x1: std_logic;
  signal slice28_y_net_x1: std_logic;
  signal slice29_y_net_x1: std_logic;
  signal slice2_y_net_x1: std_logic;
  signal slice30_y_net_x1: std_logic;
  signal slice31_y_net_x1: std_logic;
  signal slice3_y_net_x1: std_logic;
  signal slice4_y_net_x1: std_logic;
  signal slice5_y_net_x1: std_logic;
  signal slice6_y_net_x1: std_logic;
  signal slice7_y_net_x1: std_logic;
  signal slice8_y_net_x1: std_logic;
  signal slice9_y_net_x1: std_logic;
  signal slice_y_net_x1: std_logic;
  signal x16lsb1_y_net_x0: std_logic_vector(15 downto 0);
  signal x16lsb2_y_net_x0: std_logic_vector(15 downto 0);
  signal x16lsb3_y_net_x0: std_logic_vector(15 downto 0);
  signal x16lsb_y_net_x0: std_logic_vector(15 downto 0);
  signal x16msb1_y_net_x0: std_logic_vector(15 downto 0);
  signal x16msb2_y_net_x0: std_logic_vector(15 downto 0);
  signal x16msb3_y_net_x0: std_logic_vector(15 downto 0);
  signal x16msb_y_net_x0: std_logic_vector(15 downto 0);

begin
  from_register11_data_out_net_x0 <= from_register11;
  from_register12_data_out_net_x0 <= from_register12;
  from_register13_data_out_net_x0 <= from_register13;
  from_register14_data_out_net_x0 <= from_register14;
  from_register8_data_out_net_x1 <= from_register8;
  constant5_x0 <= constant5_op_net_x0;
  slices_gotos <= slice_y_net_x1;
  slices_gotos_x0 <= slice1_y_net_x1;
  slices_gotos_x1 <= slice10_y_net_x1;
  slices_gotos_x10 <= slice19_y_net_x1;
  slices_gotos_x11 <= slice2_y_net_x1;
  slices_gotos_x12 <= slice20_y_net_x1;
  slices_gotos_x13 <= slice21_y_net_x1;
  slices_gotos_x14 <= slice22_y_net_x1;
  slices_gotos_x15 <= slice23_y_net_x1;
  slices_gotos_x16 <= slice24_y_net_x1;
  slices_gotos_x17 <= slice25_y_net_x1;
  slices_gotos_x18 <= slice26_y_net_x1;
  slices_gotos_x19 <= slice27_y_net_x1;
  slices_gotos_x2 <= slice11_y_net_x1;
  slices_gotos_x20 <= slice28_y_net_x1;
  slices_gotos_x21 <= slice29_y_net_x1;
  slices_gotos_x22 <= slice3_y_net_x1;
  slices_gotos_x23 <= slice30_y_net_x1;
  slices_gotos_x24 <= slice31_y_net_x1;
  slices_gotos_x25 <= slice4_y_net_x1;
  slices_gotos_x26 <= slice5_y_net_x1;
  slices_gotos_x27 <= slice6_y_net_x1;
  slices_gotos_x28 <= slice7_y_net_x1;
  slices_gotos_x29 <= slice8_y_net_x1;
  slices_gotos_x3 <= slice12_y_net_x1;
  slices_gotos_x30 <= slice9_y_net_x1;
  slices_gotos_x4 <= slice13_y_net_x1;
  slices_gotos_x5 <= slice14_y_net_x1;
  slices_gotos_x6 <= slice15_y_net_x1;
  slices_gotos_x7 <= slice16_y_net_x1;
  slices_gotos_x8 <= slice17_y_net_x1;
  slices_gotos_x9 <= slice18_y_net_x1;
  timer0_slottime <= x16lsb_y_net_x0;
  timer1_slottime <= x16msb_y_net_x0;
  timer2_slottime <= x16lsb1_y_net_x0;
  timer3_slottime <= x16msb1_y_net_x0;
  timer4_slottime <= x16lsb2_y_net_x0;
  timer5_slottime <= x16msb2_y_net_x0;
  timer6_slottime <= x16lsb3_y_net_x0;
  timer7_slottime <= x16msb3_y_net_x0;

  constant5: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant5_op_net_x0
    );

  slices_gotos_86536717c4: entity work.\slices___gotos_entity_86536717c4\
    port map (
      x32b => from_register8_data_out_net_x1,
      timer0_donereset => slice2_y_net_x1,
      timer0_mode => slice1_y_net_x1,
      timer0_pause => slice6_y_net_x1,
      timer0_start => slice_y_net_x1,
      timer1_donereset => slice5_y_net_x1,
      timer1_mode => slice4_y_net_x1,
      timer1_pause => slice7_y_net_x1,
      timer1_start => slice3_y_net_x1,
      timer2_donereset => slice10_y_net_x1,
      timer2_mode => slice9_y_net_x1,
      timer2_pause => slice14_y_net_x1,
      timer2_start => slice8_y_net_x1,
      timer3_donereset => slice13_y_net_x1,
      timer3_mode => slice12_y_net_x1,
      timer3_pause => slice15_y_net_x1,
      timer3_start => slice11_y_net_x1,
      timer4_donereset => slice24_y_net_x1,
      timer4_mode => slice17_y_net_x1,
      timer4_pause => slice28_y_net_x1,
      timer4_start => slice16_y_net_x1,
      timer5_donereset => slice27_y_net_x1,
      timer5_mode => slice26_y_net_x1,
      timer5_pause => slice29_y_net_x1,
      timer5_start => slice25_y_net_x1,
      timer6_donereset => slice18_y_net_x1,
      timer6_mode => slice31_y_net_x1,
      timer6_pause => slice22_y_net_x1,
      timer6_start => slice30_y_net_x1,
      timer7_donereset => slice21_y_net_x1,
      timer7_mode => slice20_y_net_x1,
      timer7_pause => slice23_y_net_x1,
      timer7_start => slice19_y_net_x1
    );

  x16lsb: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => from_register11_data_out_net_x0,
      y => x16lsb_y_net_x0
    );

  x16lsb1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => from_register12_data_out_net_x0,
      y => x16lsb1_y_net_x0
    );

  x16lsb2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => from_register13_data_out_net_x0,
      y => x16lsb2_y_net_x0
    );

  x16lsb3: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 15,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => from_register14_data_out_net_x0,
      y => x16lsb3_y_net_x0
    );

  x16msb: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 31,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => from_register11_data_out_net_x0,
      y => x16msb_y_net_x0
    );

  x16msb1: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 31,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => from_register12_data_out_net_x0,
      y => x16msb1_y_net_x0
    );

  x16msb2: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 31,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => from_register13_data_out_net_x0,
      y => x16msb2_y_net_x0
    );

  x16msb3: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 31,
      x_width => 32,
      y_width => 16
    )
    port map (
      x => from_register14_data_out_net_x0,
      y => x16msb3_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "warp_timer/Status Outputs"

entity status_outputs_entity_f4753c328e is
  port (
    t0: in std_logic_vector(3 downto 0); 
    t1: in std_logic_vector(3 downto 0); 
    t2: in std_logic_vector(3 downto 0); 
    t3: in std_logic_vector(3 downto 0); 
    t4: in std_logic_vector(3 downto 0); 
    t5: in std_logic_vector(3 downto 0); 
    t6: in std_logic_vector(3 downto 0); 
    t7: in std_logic_vector(3 downto 0); 
    logical_x0: out std_logic; 
    lsb_1_x0: out std_logic; 
    lsb_2_x0: out std_logic; 
    lsb_3_x0: out std_logic; 
    lsb_4_x0: out std_logic; 
    lsb_5_x0: out std_logic; 
    lsb_6_x0: out std_logic; 
    lsb_7_x0: out std_logic; 
    lsb_8_x0: out std_logic; 
    timers_status: out std_logic_vector(31 downto 0)
  );
end status_outputs_entity_f4753c328e;

architecture structural of status_outputs_entity_f4753c328e is
  signal bitbasher1_q_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher2_q_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher3_q_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher4_q_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher5_q_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher6_q_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher7_q_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher_q_net_x0: std_logic_vector(3 downto 0);
  signal concat13_y_net_x0: std_logic_vector(31 downto 0);
  signal logical_y_net_x0: std_logic;
  signal lsb_1_y_net_x0: std_logic;
  signal lsb_2_y_net_x0: std_logic;
  signal lsb_3_y_net_x0: std_logic;
  signal lsb_4_y_net_x0: std_logic;
  signal lsb_5_y_net_x0: std_logic;
  signal lsb_6_y_net_x0: std_logic;
  signal lsb_7_y_net_x0: std_logic;
  signal lsb_8_y_net_x0: std_logic;

begin
  bitbasher_q_net_x0 <= t0;
  bitbasher1_q_net_x0 <= t1;
  bitbasher2_q_net_x0 <= t2;
  bitbasher3_q_net_x0 <= t3;
  bitbasher4_q_net_x0 <= t4;
  bitbasher5_q_net_x0 <= t5;
  bitbasher6_q_net_x0 <= t6;
  bitbasher7_q_net_x0 <= t7;
  logical_x0 <= logical_y_net_x0;
  lsb_1_x0 <= lsb_1_y_net_x0;
  lsb_2_x0 <= lsb_2_y_net_x0;
  lsb_3_x0 <= lsb_3_y_net_x0;
  lsb_4_x0 <= lsb_4_y_net_x0;
  lsb_5_x0 <= lsb_5_y_net_x0;
  lsb_6_x0 <= lsb_6_y_net_x0;
  lsb_7_x0 <= lsb_7_y_net_x0;
  lsb_8_x0 <= lsb_8_y_net_x0;
  timers_status <= concat13_y_net_x0;

  concat13: entity work.concat_6f001c0c54
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      in0 => bitbasher7_q_net_x0,
      in1 => bitbasher6_q_net_x0,
      in2 => bitbasher5_q_net_x0,
      in3 => bitbasher4_q_net_x0,
      in4 => bitbasher3_q_net_x0,
      in5 => bitbasher2_q_net_x0,
      in6 => bitbasher1_q_net_x0,
      in7 => bitbasher_q_net_x0,
      y => concat13_y_net_x0
    );

  logical: entity work.logical_4ad38e8aed
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => lsb_2_y_net_x0,
      d1(0) => lsb_1_y_net_x0,
      d2(0) => lsb_3_y_net_x0,
      d3(0) => lsb_5_y_net_x0,
      d4(0) => lsb_4_y_net_x0,
      d5(0) => lsb_6_y_net_x0,
      d6(0) => lsb_7_y_net_x0,
      d7(0) => lsb_8_y_net_x0,
      y(0) => logical_y_net_x0
    );

  lsb_1: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => bitbasher1_q_net_x0,
      y(0) => lsb_1_y_net_x0
    );

  lsb_2: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => bitbasher_q_net_x0,
      y(0) => lsb_2_y_net_x0
    );

  lsb_3: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => bitbasher2_q_net_x0,
      y(0) => lsb_3_y_net_x0
    );

  lsb_4: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => bitbasher4_q_net_x0,
      y(0) => lsb_4_y_net_x0
    );

  lsb_5: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => bitbasher3_q_net_x0,
      y(0) => lsb_5_y_net_x0
    );

  lsb_6: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => bitbasher5_q_net_x0,
      y(0) => lsb_6_y_net_x0
    );

  lsb_7: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => bitbasher6_q_net_x0,
      y(0) => lsb_7_y_net_x0
    );

  lsb_8: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 4,
      y_width => 1
    )
    port map (
      x => bitbasher7_q_net_x0,
      y(0) => lsb_8_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "warp_timer/Timer 0/S-R_Latch1"

entity s_r_latch1_entity_85d248c000 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    r: in std_logic; 
    s: in std_logic; 
    q: out std_logic
  );
end s_r_latch1_entity_85d248c000;

architecture structural of s_r_latch1_entity_85d248c000 is
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal inverter_op_net: std_logic;
  signal logical2_y_net_x0: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal register_q_net_x0: std_logic;

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  logical2_y_net_x0 <= r;
  logical3_y_net_x0 <= s;
  q <= register_q_net_x0;

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      ip(0) => register_q_net_x0,
      op(0) => inverter_op_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => logical3_y_net_x0,
      en(0) => inverter_op_net,
      rst(0) => logical2_y_net_x0,
      q(0) => register_q_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "warp_timer/Timer 0/negedge"

entity negedge_entity_2ab0828286 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end negedge_entity_2ab0828286;

architecture structural of negedge_entity_2ab0828286 is
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal delay_q_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal slice6_y_net_x2: std_logic;

begin
  ce_1_sg_x3 <= ce_1;
  clk_1_sg_x3 <= clk_1;
  slice6_y_net_x2 <= in_x0;
  out_x0 <= logical_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d(0) => slice6_y_net_x2,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      ip(0) => slice6_y_net_x2,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => delay_q_net,
      y(0) => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "warp_timer/Timer 0/posedge"

entity posedge_entity_88243ebcb8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    out_x0: out std_logic
  );
end posedge_entity_88243ebcb8;

architecture structural of posedge_entity_88243ebcb8 is
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal delay_q_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net_x1: std_logic;
  signal sim_mux_dout_net_x0: std_logic;

begin
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  sim_mux_dout_net_x0 <= in_x0;
  out_x0 <= logical_y_net_x1;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d(0) => sim_mux_dout_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      ip(0) => delay_q_net,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => sim_mux_dout_net_x0,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "warp_timer/Timer 0"

entity timer_0_entity_40f30504ac is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    done_reset: in std_logic; 
    medium_idle: in std_logic; 
    mode: in std_logic; 
    pause: in std_logic; 
    slotcount: in std_logic_vector(31 downto 0); 
    slottime: in std_logic_vector(15 downto 0); 
    start: in std_logic; 
    done: out std_logic; 
    paused: out std_logic; 
    running: out std_logic
  );
end timer_0_entity_40f30504ac;

architecture structural of timer_0_entity_40f30504ac is
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal constant1_op_net: std_logic;
  signal constant_op_net: std_logic_vector(31 downto 0);
  signal convert1_dout_net: std_logic;
  signal counter1_op_net: std_logic_vector(15 downto 0);
  signal counter_op_net: std_logic_vector(31 downto 0);
  signal delay_q_net: std_logic;
  signal from_register9_data_out_net_x0: std_logic_vector(31 downto 0);
  signal idlefordifs_net_x0: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical2_y_net_x0: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal logical4_y_net_x0: std_logic;
  signal logical5_y_net: std_logic;
  signal logical6_y_net: std_logic;
  signal logical7_y_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal logical_y_net_x2: std_logic;
  signal mux_y_net: std_logic;
  signal register_q_net_x2: std_logic;
  signal register_q_net_x3: std_logic;
  signal register_q_net_x4: std_logic;
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal sim_mux1_dout_net: std_logic;
  signal sim_mux_dout_net_x0: std_logic;
  signal slice1_y_net_x2: std_logic;
  signal slice2_y_net_x4: std_logic;
  signal slice6_y_net_x4: std_logic;
  signal slice_y_net_x2: std_logic;
  signal x16lsb_y_net_x1: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  slice2_y_net_x4 <= done_reset;
  idlefordifs_net_x0 <= medium_idle;
  slice1_y_net_x2 <= mode;
  slice6_y_net_x4 <= pause;
  from_register9_data_out_net_x0 <= slotcount;
  x16lsb_y_net_x1 <= slottime;
  slice_y_net_x2 <= start;
  done <= register_q_net_x4;
  paused <= logical4_y_net_x0;
  running <= register_q_net_x3;

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant_x0: entity work.constant_37567836aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din(0) => mux_y_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_b615980e1379bd9b",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      en(0) => logical6_y_net,
      rst(0) => logical1_y_net,
      op => counter_op_net
    );

  counter1: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_62a43530160d497c",
      op_arith => xlUnsigned,
      op_width => 16
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      en(0) => register_q_net_x3,
      rst(0) => logical5_y_net,
      op => counter1_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d(0) => sim_mux1_dout_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      ip(0) => register_q_net_x3,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      ip(0) => sim_mux1_dout_net,
      op(0) => inverter1_op_net
    );

  logical1: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => logical_y_net_x1,
      y(0) => logical1_y_net
    );

  logical2: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x2,
      d1(0) => relational_op_net,
      y(0) => logical2_y_net_x0
    );

  logical3: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x1,
      d1(0) => logical_y_net_x0,
      y(0) => logical3_y_net_x0
    );

  logical4: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational1_op_net,
      d1(0) => inverter_op_net,
      y(0) => logical4_y_net_x0
    );

  logical5: entity work.logical_6cb8f0ce02
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational2_op_net,
      d1(0) => inverter1_op_net,
      d2(0) => logical_y_net_x1,
      y(0) => logical5_y_net
    );

  logical6: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net_x3,
      d1(0) => relational2_op_net,
      d2(0) => sim_mux1_dout_net,
      y(0) => logical6_y_net
    );

  logical7: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net_x2,
      d1(0) => relational_op_net,
      d2(0) => delay_q_net,
      y(0) => logical7_y_net_x0
    );

  mux: entity work.mux_112ed141f4
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant1_op_net,
      d1(0) => idlefordifs_net_x0,
      sel(0) => slice1_y_net_x2,
      y(0) => mux_y_net
    );

  negedge_2ab0828286: entity work.negedge_entity_2ab0828286
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      in_x0 => slice6_y_net_x4,
      out_x0 => logical_y_net_x0
    );

  posedge2_12662c8286: entity work.posedge_entity_88243ebcb8
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      in_x0 => slice6_y_net_x4,
      out_x0 => logical_y_net_x2
    );

  posedge_88243ebcb8: entity work.posedge_entity_88243ebcb8
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      in_x0 => sim_mux_dout_net_x0,
      out_x0 => logical_y_net_x1
    );

  relational: entity work.relational_4575089f62
    port map (
      a => from_register9_data_out_net_x0,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_6439922612
    port map (
      a => counter_op_net,
      b => constant_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_9ebf6075aa
    port map (
      a => x16lsb_y_net_x1,
      b => counter1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  s_r_latch1_85d248c000: entity work.s_r_latch1_entity_85d248c000
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      r => logical2_y_net_x0,
      s => logical3_y_net_x0,
      q => register_q_net_x3
    );

  s_r_latch2_de5d98b61e: entity work.s_r_latch1_entity_85d248c000
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      r => slice2_y_net_x4,
      s => logical7_y_net_x0,
      q => register_q_net_x4
    );

  s_r_latch3_a7fbd53c54: entity work.s_r_latch1_entity_85d248c000
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      r => slice2_y_net_x4,
      s => logical_y_net_x1,
      q => register_q_net_x2
    );

  sim_mux: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => slice_y_net_x2,
      dout(0) => sim_mux_dout_net_x0
    );

  sim_mux1: entity work.xlpassthrough
    generic map (
      din_width => 1,
      dout_width => 1
    )
    port map (
      din(0) => convert1_dout_net,
      dout(0) => sim_mux1_dout_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "warp_timer"

entity warp_timer is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_out: in std_logic_vector(31 downto 0); 
    data_out_x0: in std_logic_vector(31 downto 0); 
    data_out_x1: in std_logic_vector(31 downto 0); 
    data_out_x10: in std_logic_vector(31 downto 0); 
    data_out_x11: in std_logic_vector(31 downto 0); 
    data_out_x12: in std_logic_vector(31 downto 0); 
    data_out_x2: in std_logic_vector(31 downto 0); 
    data_out_x3: in std_logic_vector(31 downto 0); 
    data_out_x4: in std_logic_vector(31 downto 0); 
    data_out_x5: in std_logic_vector(31 downto 0); 
    data_out_x6: in std_logic_vector(31 downto 0); 
    data_out_x7: in std_logic_vector(31 downto 0); 
    data_out_x8: in std_logic_vector(31 downto 0); 
    data_out_x9: in std_logic_vector(31 downto 0); 
    dout: in std_logic_vector(31 downto 0); 
    dout_x0: in std_logic_vector(31 downto 0); 
    dout_x1: in std_logic_vector(31 downto 0); 
    dout_x10: in std_logic_vector(31 downto 0); 
    dout_x11: in std_logic_vector(31 downto 0); 
    dout_x2: in std_logic_vector(31 downto 0); 
    dout_x3: in std_logic_vector(31 downto 0); 
    dout_x4: in std_logic_vector(31 downto 0); 
    dout_x5: in std_logic_vector(31 downto 0); 
    dout_x6: in std_logic_vector(31 downto 0); 
    dout_x7: in std_logic_vector(31 downto 0); 
    dout_x8: in std_logic_vector(31 downto 0); 
    dout_x9: in std_logic_vector(31 downto 0); 
    idlefordifs: in std_logic; 
    plb_abus: in std_logic_vector(31 downto 0); 
    plb_ce_1: in std_logic; 
    plb_clk_1: in std_logic; 
    plb_pavalid: in std_logic; 
    plb_rnw: in std_logic; 
    plb_wrdbus: in std_logic_vector(31 downto 0); 
    sg_plb_addrpref: in std_logic_vector(19 downto 0); 
    splb_rst: in std_logic; 
    data_in: out std_logic_vector(31 downto 0); 
    data_in_x0: out std_logic_vector(31 downto 0); 
    data_in_x1: out std_logic_vector(31 downto 0); 
    data_in_x10: out std_logic_vector(31 downto 0); 
    data_in_x11: out std_logic_vector(31 downto 0); 
    data_in_x12: out std_logic_vector(31 downto 0); 
    data_in_x2: out std_logic_vector(31 downto 0); 
    data_in_x3: out std_logic_vector(31 downto 0); 
    data_in_x4: out std_logic_vector(31 downto 0); 
    data_in_x5: out std_logic_vector(31 downto 0); 
    data_in_x6: out std_logic_vector(31 downto 0); 
    data_in_x7: out std_logic_vector(31 downto 0); 
    data_in_x8: out std_logic_vector(31 downto 0); 
    data_in_x9: out std_logic_vector(31 downto 0); 
    en: out std_logic; 
    en_x0: out std_logic; 
    en_x1: out std_logic; 
    en_x10: out std_logic; 
    en_x11: out std_logic; 
    en_x12: out std_logic; 
    en_x2: out std_logic; 
    en_x3: out std_logic; 
    en_x4: out std_logic; 
    en_x5: out std_logic; 
    en_x6: out std_logic; 
    en_x7: out std_logic; 
    en_x8: out std_logic; 
    en_x9: out std_logic; 
    sl_addrack: out std_logic; 
    sl_rdcomp: out std_logic; 
    sl_rddack: out std_logic; 
    sl_rddbus: out std_logic_vector(31 downto 0); 
    sl_wait: out std_logic; 
    sl_wrcomp: out std_logic; 
    sl_wrdack: out std_logic; 
    timer0_active: out std_logic; 
    timer1_active: out std_logic; 
    timer2_active: out std_logic; 
    timer3_active: out std_logic; 
    timer4_active: out std_logic; 
    timer5_active: out std_logic; 
    timer6_active: out std_logic; 
    timer7_active: out std_logic; 
    timerexpire: out std_logic
  );
end warp_timer;

architecture structural of warp_timer is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "warp_timer,sysgen_core,{clock_period=10.00000000,clocking=Clock_Enables,sample_periods=1.00000000000 1.00000000000,testbench=0,total_blocks=911,xilinx_adder_subtracter_block=8,xilinx_arithmetic_relational_operator_block=24,xilinx_bit_slice_extractor_block=56,xilinx_bitbasher_block=8,xilinx_bus_concatenator_block=1,xilinx_bus_multiplexer_block=8,xilinx_constant_block_block=18,xilinx_counter_block=16,xilinx_delay_block=32,xilinx_disregard_subsystem_for_generation_block=16,xilinx_edk_processor_block=1,xilinx_gateway_in_block=23,xilinx_gateway_out_block=19,xilinx_inverter_block=64,xilinx_logical_block_block=81,xilinx_mcode_block_block=2,xilinx_register_block=24,xilinx_shared_memory_based_from_register_block=14,xilinx_shared_memory_based_to_register_block=14,xilinx_simulation_multiplexer_block=16,xilinx_system_generator_block=1,xilinx_type_converter_block=8,}";

  signal bitbasher1_q_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher2_q_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher3_q_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher4_q_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher5_q_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher6_q_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher7_q_net_x0: std_logic_vector(3 downto 0);
  signal bitbasher_q_net_x0: std_logic_vector(3 downto 0);
  signal ce_1_sg_x56: std_logic;
  signal clk_1_sg_x56: std_logic;
  signal data_in_net: std_logic_vector(31 downto 0);
  signal data_in_x0_net: std_logic_vector(31 downto 0);
  signal data_in_x10_net: std_logic_vector(31 downto 0);
  signal data_in_x11_net: std_logic_vector(31 downto 0);
  signal data_in_x12_net: std_logic_vector(31 downto 0);
  signal data_in_x1_net: std_logic_vector(31 downto 0);
  signal data_in_x2_net: std_logic_vector(31 downto 0);
  signal data_in_x3_net: std_logic_vector(31 downto 0);
  signal data_in_x4_net: std_logic_vector(31 downto 0);
  signal data_in_x5_net: std_logic_vector(31 downto 0);
  signal data_in_x6_net: std_logic_vector(31 downto 0);
  signal data_in_x7_net: std_logic_vector(31 downto 0);
  signal data_in_x8_net: std_logic_vector(31 downto 0);
  signal data_in_x9_net: std_logic_vector(31 downto 0);
  signal data_out_net: std_logic_vector(31 downto 0);
  signal data_out_x0_net: std_logic_vector(31 downto 0);
  signal data_out_x10_net: std_logic_vector(31 downto 0);
  signal data_out_x11_net: std_logic_vector(31 downto 0);
  signal data_out_x12_net: std_logic_vector(31 downto 0);
  signal data_out_x1_net: std_logic_vector(31 downto 0);
  signal data_out_x2_net: std_logic_vector(31 downto 0);
  signal data_out_x3_net: std_logic_vector(31 downto 0);
  signal data_out_x4_net: std_logic_vector(31 downto 0);
  signal data_out_x5_net: std_logic_vector(31 downto 0);
  signal data_out_x6_net: std_logic_vector(31 downto 0);
  signal data_out_x7_net: std_logic_vector(31 downto 0);
  signal data_out_x8_net: std_logic_vector(31 downto 0);
  signal data_out_x9_net: std_logic_vector(31 downto 0);
  signal dout_net: std_logic_vector(31 downto 0);
  signal dout_x0_net: std_logic_vector(31 downto 0);
  signal dout_x10_net: std_logic_vector(31 downto 0);
  signal dout_x11_net: std_logic_vector(31 downto 0);
  signal dout_x1_net: std_logic_vector(31 downto 0);
  signal dout_x2_net: std_logic_vector(31 downto 0);
  signal dout_x3_net: std_logic_vector(31 downto 0);
  signal dout_x4_net: std_logic_vector(31 downto 0);
  signal dout_x5_net: std_logic_vector(31 downto 0);
  signal dout_x6_net: std_logic_vector(31 downto 0);
  signal dout_x7_net: std_logic_vector(31 downto 0);
  signal dout_x8_net: std_logic_vector(31 downto 0);
  signal dout_x9_net: std_logic_vector(31 downto 0);
  signal en_net: std_logic;
  signal en_x0_net: std_logic;
  signal en_x10_net: std_logic;
  signal en_x11_net: std_logic;
  signal en_x12_net: std_logic;
  signal en_x1_net: std_logic;
  signal en_x2_net: std_logic;
  signal en_x3_net: std_logic;
  signal en_x4_net: std_logic;
  signal en_x5_net: std_logic;
  signal en_x6_net: std_logic;
  signal en_x7_net: std_logic;
  signal en_x8_net: std_logic;
  signal en_x9_net: std_logic;
  signal idlefordifs_net: std_logic;
  signal logical4_y_net_x0: std_logic;
  signal logical4_y_net_x1: std_logic;
  signal logical4_y_net_x2: std_logic;
  signal logical4_y_net_x3: std_logic;
  signal logical4_y_net_x4: std_logic;
  signal logical4_y_net_x5: std_logic;
  signal logical4_y_net_x6: std_logic;
  signal logical4_y_net_x7: std_logic;
  signal plb_abus_net: std_logic_vector(31 downto 0);
  signal plb_ce_1_sg_x1: std_logic;
  signal plb_clk_1_sg_x1: std_logic;
  signal plb_pavalid_net: std_logic;
  signal plb_rnw_net: std_logic;
  signal plb_wrdbus_net: std_logic_vector(31 downto 0);
  signal register_q_net_x10: std_logic;
  signal register_q_net_x11: std_logic;
  signal register_q_net_x12: std_logic;
  signal register_q_net_x13: std_logic;
  signal register_q_net_x14: std_logic;
  signal register_q_net_x15: std_logic;
  signal register_q_net_x16: std_logic;
  signal register_q_net_x17: std_logic;
  signal register_q_net_x18: std_logic;
  signal register_q_net_x3: std_logic;
  signal register_q_net_x4: std_logic;
  signal register_q_net_x5: std_logic;
  signal register_q_net_x6: std_logic;
  signal register_q_net_x7: std_logic;
  signal register_q_net_x8: std_logic;
  signal register_q_net_x9: std_logic;
  signal sg_plb_addrpref_net: std_logic_vector(19 downto 0);
  signal sl_addrack_net: std_logic;
  signal sl_rdcomp_net: std_logic;
  signal sl_rddack_net: std_logic;
  signal sl_rddbus_net: std_logic_vector(31 downto 0);
  signal sl_wait_net: std_logic;
  signal sl_wrdack_x1: std_logic;
  signal slice10_y_net_x4: std_logic;
  signal slice11_y_net_x2: std_logic;
  signal slice12_y_net_x2: std_logic;
  signal slice13_y_net_x4: std_logic;
  signal slice14_y_net_x4: std_logic;
  signal slice15_y_net_x4: std_logic;
  signal slice16_y_net_x2: std_logic;
  signal slice17_y_net_x2: std_logic;
  signal slice18_y_net_x4: std_logic;
  signal slice19_y_net_x2: std_logic;
  signal slice1_y_net_x2: std_logic;
  signal slice20_y_net_x2: std_logic;
  signal slice21_y_net_x4: std_logic;
  signal slice22_y_net_x4: std_logic;
  signal slice23_y_net_x4: std_logic;
  signal slice24_y_net_x4: std_logic;
  signal slice25_y_net_x2: std_logic;
  signal slice26_y_net_x2: std_logic;
  signal slice27_y_net_x4: std_logic;
  signal slice28_y_net_x4: std_logic;
  signal slice29_y_net_x4: std_logic;
  signal slice2_y_net_x4: std_logic;
  signal slice30_y_net_x2: std_logic;
  signal slice31_y_net_x2: std_logic;
  signal slice3_y_net_x2: std_logic;
  signal slice4_y_net_x2: std_logic;
  signal slice5_y_net_x4: std_logic;
  signal slice6_y_net_x4: std_logic;
  signal slice7_y_net_x4: std_logic;
  signal slice8_y_net_x2: std_logic;
  signal slice9_y_net_x2: std_logic;
  signal slice_y_net_x2: std_logic;
  signal splb_rst_net: std_logic;
  signal timer0_active_net: std_logic;
  signal timer1_active_net: std_logic;
  signal timer2_active_net: std_logic;
  signal timer3_active_net: std_logic;
  signal timer4_active_net: std_logic;
  signal timer5_active_net: std_logic;
  signal timer6_active_net: std_logic;
  signal timer7_active_net: std_logic;
  signal timerexpire_net: std_logic;
  signal x16lsb1_y_net_x1: std_logic_vector(15 downto 0);
  signal x16lsb2_y_net_x1: std_logic_vector(15 downto 0);
  signal x16lsb3_y_net_x1: std_logic_vector(15 downto 0);
  signal x16lsb_y_net_x1: std_logic_vector(15 downto 0);
  signal x16msb1_y_net_x1: std_logic_vector(15 downto 0);
  signal x16msb2_y_net_x1: std_logic_vector(15 downto 0);
  signal x16msb3_y_net_x1: std_logic_vector(15 downto 0);
  signal x16msb_y_net_x1: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x56 <= ce_1;
  clk_1_sg_x56 <= clk_1;
  data_out_net <= data_out;
  data_out_x0_net <= data_out_x0;
  data_out_x1_net <= data_out_x1;
  data_out_x10_net <= data_out_x10;
  data_out_x11_net <= data_out_x11;
  data_out_x12_net <= data_out_x12;
  data_out_x2_net <= data_out_x2;
  data_out_x3_net <= data_out_x3;
  data_out_x4_net <= data_out_x4;
  data_out_x5_net <= data_out_x5;
  data_out_x6_net <= data_out_x6;
  data_out_x7_net <= data_out_x7;
  data_out_x8_net <= data_out_x8;
  data_out_x9_net <= data_out_x9;
  dout_net <= dout;
  dout_x0_net <= dout_x0;
  dout_x1_net <= dout_x1;
  dout_x10_net <= dout_x10;
  dout_x11_net <= dout_x11;
  dout_x2_net <= dout_x2;
  dout_x3_net <= dout_x3;
  dout_x4_net <= dout_x4;
  dout_x5_net <= dout_x5;
  dout_x6_net <= dout_x6;
  dout_x7_net <= dout_x7;
  dout_x8_net <= dout_x8;
  dout_x9_net <= dout_x9;
  idlefordifs_net <= idlefordifs;
  plb_abus_net <= plb_abus;
  plb_ce_1_sg_x1 <= plb_ce_1;
  plb_clk_1_sg_x1 <= plb_clk_1;
  plb_pavalid_net <= plb_pavalid;
  plb_rnw_net <= plb_rnw;
  plb_wrdbus_net <= plb_wrdbus;
  sg_plb_addrpref_net <= sg_plb_addrpref;
  splb_rst_net <= splb_rst;
  data_in <= data_in_net;
  data_in_x0 <= data_in_x0_net;
  data_in_x1 <= data_in_x1_net;
  data_in_x10 <= data_in_x10_net;
  data_in_x11 <= data_in_x11_net;
  data_in_x12 <= data_in_x12_net;
  data_in_x2 <= data_in_x2_net;
  data_in_x3 <= data_in_x3_net;
  data_in_x4 <= data_in_x4_net;
  data_in_x5 <= data_in_x5_net;
  data_in_x6 <= data_in_x6_net;
  data_in_x7 <= data_in_x7_net;
  data_in_x8 <= data_in_x8_net;
  data_in_x9 <= data_in_x9_net;
  en <= en_net;
  en_x0 <= en_x0_net;
  en_x1 <= en_x1_net;
  en_x10 <= en_x10_net;
  en_x11 <= en_x11_net;
  en_x12 <= en_x12_net;
  en_x2 <= en_x2_net;
  en_x3 <= en_x3_net;
  en_x4 <= en_x4_net;
  en_x5 <= en_x5_net;
  en_x6 <= en_x6_net;
  en_x7 <= en_x7_net;
  en_x8 <= en_x8_net;
  en_x9 <= en_x9_net;
  sl_addrack <= sl_addrack_net;
  sl_rdcomp <= sl_rdcomp_net;
  sl_rddack <= sl_rddack_net;
  sl_rddbus <= sl_rddbus_net;
  sl_wait <= sl_wait_net;
  sl_wrcomp <= sl_wrdack_x1;
  sl_wrdack <= sl_wrdack_x1;
  timer0_active <= timer0_active_net;
  timer1_active <= timer1_active_net;
  timer2_active <= timer2_active_net;
  timer3_active <= timer3_active_net;
  timer4_active <= timer4_active_net;
  timer5_active <= timer5_active_net;
  timer6_active <= timer6_active_net;
  timer7_active <= timer7_active_net;
  timerexpire <= timerexpire_net;

  bitbasher: entity work.bitbasher_1415beabc9
    port map (
      a(0) => register_q_net_x4,
      b(0) => register_q_net_x3,
      c(0) => logical4_y_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      q => bitbasher_q_net_x0
    );

  bitbasher1: entity work.bitbasher_1415beabc9
    port map (
      a(0) => register_q_net_x6,
      b(0) => register_q_net_x5,
      c(0) => logical4_y_net_x1,
      ce => '0',
      clk => '0',
      clr => '0',
      q => bitbasher1_q_net_x0
    );

  bitbasher2: entity work.bitbasher_1415beabc9
    port map (
      a(0) => register_q_net_x8,
      b(0) => register_q_net_x7,
      c(0) => logical4_y_net_x2,
      ce => '0',
      clk => '0',
      clr => '0',
      q => bitbasher2_q_net_x0
    );

  bitbasher3: entity work.bitbasher_1415beabc9
    port map (
      a(0) => register_q_net_x10,
      b(0) => register_q_net_x9,
      c(0) => logical4_y_net_x3,
      ce => '0',
      clk => '0',
      clr => '0',
      q => bitbasher3_q_net_x0
    );

  bitbasher4: entity work.bitbasher_1415beabc9
    port map (
      a(0) => register_q_net_x12,
      b(0) => register_q_net_x11,
      c(0) => logical4_y_net_x4,
      ce => '0',
      clk => '0',
      clr => '0',
      q => bitbasher4_q_net_x0
    );

  bitbasher5: entity work.bitbasher_1415beabc9
    port map (
      a(0) => register_q_net_x14,
      b(0) => register_q_net_x13,
      c(0) => logical4_y_net_x5,
      ce => '0',
      clk => '0',
      clr => '0',
      q => bitbasher5_q_net_x0
    );

  bitbasher6: entity work.bitbasher_1415beabc9
    port map (
      a(0) => register_q_net_x16,
      b(0) => register_q_net_x15,
      c(0) => logical4_y_net_x6,
      ce => '0',
      clk => '0',
      clr => '0',
      q => bitbasher6_q_net_x0
    );

  bitbasher7: entity work.bitbasher_1415beabc9
    port map (
      a(0) => register_q_net_x18,
      b(0) => register_q_net_x17,
      c(0) => logical4_y_net_x7,
      ce => '0',
      clk => '0',
      clr => '0',
      q => bitbasher7_q_net_x0
    );

  edk_processor_cddda35d8e: entity work.edk_processor_entity_cddda35d8e
    port map (
      from_register => data_out_net,
      plb_abus => plb_abus_net,
      plb_ce_1 => plb_ce_1_sg_x1,
      plb_clk_1 => plb_clk_1_sg_x1,
      plb_pavalid => plb_pavalid_net,
      plb_rnw => plb_rnw_net,
      plb_wrdbus => plb_wrdbus_net,
      sg_plb_addrpref => sg_plb_addrpref_net,
      splb_rst => splb_rst_net,
      to_register => dout_net,
      to_register1 => dout_x0_net,
      to_register10 => dout_x9_net,
      to_register11 => dout_x10_net,
      to_register12 => dout_x11_net,
      to_register2 => dout_x1_net,
      to_register3 => dout_x2_net,
      to_register4 => dout_x3_net,
      to_register5 => dout_x4_net,
      to_register6 => dout_x5_net,
      to_register7 => dout_x6_net,
      to_register8 => dout_x7_net,
      to_register9 => dout_x8_net,
      constant5_x0 => sl_wait_net,
      plb_decode_x0 => sl_addrack_net,
      plb_decode_x1 => sl_rdcomp_net,
      plb_decode_x2 => sl_wrdack_x1,
      plb_decode_x3 => sl_rddack_net,
      plb_decode_x4 => sl_rddbus_net,
      plb_memmap_x0 => data_in_net,
      plb_memmap_x1 => en_net,
      plb_memmap_x10 => data_in_x4_net,
      plb_memmap_x11 => en_x4_net,
      plb_memmap_x12 => data_in_x5_net,
      plb_memmap_x13 => en_x5_net,
      plb_memmap_x14 => data_in_x6_net,
      plb_memmap_x15 => en_x6_net,
      plb_memmap_x16 => data_in_x7_net,
      plb_memmap_x17 => en_x7_net,
      plb_memmap_x18 => data_in_x8_net,
      plb_memmap_x19 => en_x8_net,
      plb_memmap_x2 => data_in_x0_net,
      plb_memmap_x20 => data_in_x9_net,
      plb_memmap_x21 => en_x9_net,
      plb_memmap_x22 => data_in_x10_net,
      plb_memmap_x23 => en_x10_net,
      plb_memmap_x24 => data_in_x11_net,
      plb_memmap_x25 => en_x11_net,
      plb_memmap_x3 => en_x0_net,
      plb_memmap_x4 => data_in_x1_net,
      plb_memmap_x5 => en_x1_net,
      plb_memmap_x6 => data_in_x2_net,
      plb_memmap_x7 => en_x2_net,
      plb_memmap_x8 => data_in_x3_net,
      plb_memmap_x9 => en_x3_net
    );

  registers_5e629debe6: entity work.registers_entity_5e629debe6
    port map (
      from_register11 => data_out_x1_net,
      from_register12 => data_out_x2_net,
      from_register13 => data_out_x3_net,
      from_register14 => data_out_x4_net,
      from_register8 => data_out_x11_net,
      constant5_x0 => en_x12_net,
      slices_gotos => slice_y_net_x2,
      slices_gotos_x0 => slice1_y_net_x2,
      slices_gotos_x1 => slice10_y_net_x4,
      slices_gotos_x10 => slice19_y_net_x2,
      slices_gotos_x11 => slice2_y_net_x4,
      slices_gotos_x12 => slice20_y_net_x2,
      slices_gotos_x13 => slice21_y_net_x4,
      slices_gotos_x14 => slice22_y_net_x4,
      slices_gotos_x15 => slice23_y_net_x4,
      slices_gotos_x16 => slice24_y_net_x4,
      slices_gotos_x17 => slice25_y_net_x2,
      slices_gotos_x18 => slice26_y_net_x2,
      slices_gotos_x19 => slice27_y_net_x4,
      slices_gotos_x2 => slice11_y_net_x2,
      slices_gotos_x20 => slice28_y_net_x4,
      slices_gotos_x21 => slice29_y_net_x4,
      slices_gotos_x22 => slice3_y_net_x2,
      slices_gotos_x23 => slice30_y_net_x2,
      slices_gotos_x24 => slice31_y_net_x2,
      slices_gotos_x25 => slice4_y_net_x2,
      slices_gotos_x26 => slice5_y_net_x4,
      slices_gotos_x27 => slice6_y_net_x4,
      slices_gotos_x28 => slice7_y_net_x4,
      slices_gotos_x29 => slice8_y_net_x2,
      slices_gotos_x3 => slice12_y_net_x2,
      slices_gotos_x30 => slice9_y_net_x2,
      slices_gotos_x4 => slice13_y_net_x4,
      slices_gotos_x5 => slice14_y_net_x4,
      slices_gotos_x6 => slice15_y_net_x4,
      slices_gotos_x7 => slice16_y_net_x2,
      slices_gotos_x8 => slice17_y_net_x2,
      slices_gotos_x9 => slice18_y_net_x4,
      timer0_slottime => x16lsb_y_net_x1,
      timer1_slottime => x16msb_y_net_x1,
      timer2_slottime => x16lsb1_y_net_x1,
      timer3_slottime => x16msb1_y_net_x1,
      timer4_slottime => x16lsb2_y_net_x1,
      timer5_slottime => x16msb2_y_net_x1,
      timer6_slottime => x16lsb3_y_net_x1,
      timer7_slottime => x16msb3_y_net_x1
    );

  status_outputs_f4753c328e: entity work.status_outputs_entity_f4753c328e
    port map (
      t0 => bitbasher_q_net_x0,
      t1 => bitbasher1_q_net_x0,
      t2 => bitbasher2_q_net_x0,
      t3 => bitbasher3_q_net_x0,
      t4 => bitbasher4_q_net_x0,
      t5 => bitbasher5_q_net_x0,
      t6 => bitbasher6_q_net_x0,
      t7 => bitbasher7_q_net_x0,
      logical_x0 => timerexpire_net,
      lsb_1_x0 => timer1_active_net,
      lsb_2_x0 => timer0_active_net,
      lsb_3_x0 => timer2_active_net,
      lsb_4_x0 => timer4_active_net,
      lsb_5_x0 => timer3_active_net,
      lsb_6_x0 => timer5_active_net,
      lsb_7_x0 => timer6_active_net,
      lsb_8_x0 => timer7_active_net,
      timers_status => data_in_x12_net
    );

  timer_0_40f30504ac: entity work.timer_0_entity_40f30504ac
    port map (
      ce_1 => ce_1_sg_x56,
      clk_1 => clk_1_sg_x56,
      done_reset => slice2_y_net_x4,
      medium_idle => idlefordifs_net,
      mode => slice1_y_net_x2,
      pause => slice6_y_net_x4,
      slotcount => data_out_x12_net,
      slottime => x16lsb_y_net_x1,
      start => slice_y_net_x2,
      done => register_q_net_x4,
      paused => logical4_y_net_x0,
      running => register_q_net_x3
    );

  timer_1_4941a8007c: entity work.timer_0_entity_40f30504ac
    port map (
      ce_1 => ce_1_sg_x56,
      clk_1 => clk_1_sg_x56,
      done_reset => slice5_y_net_x4,
      medium_idle => idlefordifs_net,
      mode => slice4_y_net_x2,
      pause => slice7_y_net_x4,
      slotcount => data_out_x0_net,
      slottime => x16msb_y_net_x1,
      start => slice3_y_net_x2,
      done => register_q_net_x6,
      paused => logical4_y_net_x1,
      running => register_q_net_x5
    );

  timer_2_d667154a2f: entity work.timer_0_entity_40f30504ac
    port map (
      ce_1 => ce_1_sg_x56,
      clk_1 => clk_1_sg_x56,
      done_reset => slice10_y_net_x4,
      medium_idle => idlefordifs_net,
      mode => slice9_y_net_x2,
      pause => slice14_y_net_x4,
      slotcount => data_out_x6_net,
      slottime => x16lsb1_y_net_x1,
      start => slice8_y_net_x2,
      done => register_q_net_x8,
      paused => logical4_y_net_x2,
      running => register_q_net_x7
    );

  timer_3_893d074e37: entity work.timer_0_entity_40f30504ac
    port map (
      ce_1 => ce_1_sg_x56,
      clk_1 => clk_1_sg_x56,
      done_reset => slice13_y_net_x4,
      medium_idle => idlefordifs_net,
      mode => slice12_y_net_x2,
      pause => slice15_y_net_x4,
      slotcount => data_out_x5_net,
      slottime => x16msb1_y_net_x1,
      start => slice11_y_net_x2,
      done => register_q_net_x10,
      paused => logical4_y_net_x3,
      running => register_q_net_x9
    );

  timer_4_fabf7993f1: entity work.timer_0_entity_40f30504ac
    port map (
      ce_1 => ce_1_sg_x56,
      clk_1 => clk_1_sg_x56,
      done_reset => slice24_y_net_x4,
      medium_idle => idlefordifs_net,
      mode => slice17_y_net_x2,
      pause => slice28_y_net_x4,
      slotcount => data_out_x10_net,
      slottime => x16lsb2_y_net_x1,
      start => slice16_y_net_x2,
      done => register_q_net_x12,
      paused => logical4_y_net_x4,
      running => register_q_net_x11
    );

  timer_5_725bf599da: entity work.timer_0_entity_40f30504ac
    port map (
      ce_1 => ce_1_sg_x56,
      clk_1 => clk_1_sg_x56,
      done_reset => slice27_y_net_x4,
      medium_idle => idlefordifs_net,
      mode => slice26_y_net_x2,
      pause => slice29_y_net_x4,
      slotcount => data_out_x7_net,
      slottime => x16msb2_y_net_x1,
      start => slice25_y_net_x2,
      done => register_q_net_x14,
      paused => logical4_y_net_x5,
      running => register_q_net_x13
    );

  timer_6_677c5cace0: entity work.timer_0_entity_40f30504ac
    port map (
      ce_1 => ce_1_sg_x56,
      clk_1 => clk_1_sg_x56,
      done_reset => slice18_y_net_x4,
      medium_idle => idlefordifs_net,
      mode => slice31_y_net_x2,
      pause => slice22_y_net_x4,
      slotcount => data_out_x9_net,
      slottime => x16lsb3_y_net_x1,
      start => slice30_y_net_x2,
      done => register_q_net_x16,
      paused => logical4_y_net_x6,
      running => register_q_net_x15
    );

  timer_7_cca85e1e6e: entity work.timer_0_entity_40f30504ac
    port map (
      ce_1 => ce_1_sg_x56,
      clk_1 => clk_1_sg_x56,
      done_reset => slice21_y_net_x4,
      medium_idle => idlefordifs_net,
      mode => slice20_y_net_x2,
      pause => slice23_y_net_x4,
      slotcount => data_out_x8_net,
      slottime => x16msb3_y_net_x1,
      start => slice19_y_net_x2,
      done => register_q_net_x18,
      paused => logical4_y_net_x7,
      running => register_q_net_x17
    );

end structural;
