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
-- You must compile the wrapper file addsb_11_0_1a72527b8e6ebf38.vhd when simulating
-- the core, addsb_11_0_1a72527b8e6ebf38. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_1a72527b8e6ebf38 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END addsb_11_0_1a72527b8e6ebf38;

ARCHITECTURE addsb_11_0_1a72527b8e6ebf38_a OF addsb_11_0_1a72527b8e6ebf38 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_1a72527b8e6ebf38
  PORT (
    a : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_1a72527b8e6ebf38 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 11,
      c_add_mode => 1,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "00000000000",
      c_b_width => 11,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 11,
      c_sclr_overrides_sset => 0,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_1a72527b8e6ebf38
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_1a72527b8e6ebf38_a;
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
-- You must compile the wrapper file addsb_11_0_3b8d8925e647b605.vhd when simulating
-- the core, addsb_11_0_3b8d8925e647b605. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_3b8d8925e647b605 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END addsb_11_0_3b8d8925e647b605;

ARCHITECTURE addsb_11_0_3b8d8925e647b605_a OF addsb_11_0_3b8d8925e647b605 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_3b8d8925e647b605
  PORT (
    a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_3b8d8925e647b605 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 1,
      c_a_width => 3,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 1,
      c_b_value => "000",
      c_b_width => 3,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 3,
      c_sclr_overrides_sset => 0,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_3b8d8925e647b605
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_3b8d8925e647b605_a;
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
-- You must compile the wrapper file addsb_11_0_4e449b79a6edba32.vhd when simulating
-- the core, addsb_11_0_4e449b79a6edba32. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_4e449b79a6edba32 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END addsb_11_0_4e449b79a6edba32;

ARCHITECTURE addsb_11_0_4e449b79a6edba32_a OF addsb_11_0_4e449b79a6edba32 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_4e449b79a6edba32
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_4e449b79a6edba32 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 1,
      c_a_width => 4,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 1,
      c_b_value => "0000",
      c_b_width => 4,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 4,
      c_sclr_overrides_sset => 0,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_4e449b79a6edba32
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_4e449b79a6edba32_a;
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
-- You must compile the wrapper file addsb_11_0_79238328d5792da3.vhd when simulating
-- the core, addsb_11_0_79238328d5792da3. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_79238328d5792da3 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END addsb_11_0_79238328d5792da3;

ARCHITECTURE addsb_11_0_79238328d5792da3_a OF addsb_11_0_79238328d5792da3 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_79238328d5792da3
  PORT (
    a : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_79238328d5792da3 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 12,
      c_add_mode => 1,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "000000000000",
      c_b_width => 12,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 12,
      c_sclr_overrides_sset => 0,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_79238328d5792da3
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_79238328d5792da3_a;
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
-- You must compile the wrapper file addsb_11_0_821bdda5b43881fc.vhd when simulating
-- the core, addsb_11_0_821bdda5b43881fc. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_821bdda5b43881fc IS
  PORT (
    a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END addsb_11_0_821bdda5b43881fc;

ARCHITECTURE addsb_11_0_821bdda5b43881fc_a OF addsb_11_0_821bdda5b43881fc IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_821bdda5b43881fc
  PORT (
    a : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_821bdda5b43881fc USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 10,
      c_add_mode => 1,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "0000000000",
      c_b_width => 10,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 10,
      c_sclr_overrides_sset => 0,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_821bdda5b43881fc
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_821bdda5b43881fc_a;
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
-- You must compile the wrapper file addsb_11_0_946139e686745147.vhd when simulating
-- the core, addsb_11_0_946139e686745147. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_946139e686745147 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END addsb_11_0_946139e686745147;

ARCHITECTURE addsb_11_0_946139e686745147_a OF addsb_11_0_946139e686745147 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_946139e686745147
  PORT (
    a : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_946139e686745147 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 11,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "00000000000",
      c_b_width => 11,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 11,
      c_sclr_overrides_sset => 0,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_946139e686745147
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_946139e686745147_a;
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
-- You must compile the wrapper file addsb_11_0_c66688b5fa9e8cc0.vhd when simulating
-- the core, addsb_11_0_c66688b5fa9e8cc0. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_c66688b5fa9e8cc0 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END addsb_11_0_c66688b5fa9e8cc0;

ARCHITECTURE addsb_11_0_c66688b5fa9e8cc0_a OF addsb_11_0_c66688b5fa9e8cc0 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_c66688b5fa9e8cc0
  PORT (
    a : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_c66688b5fa9e8cc0 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 9,
      c_add_mode => 1,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "000000000",
      c_b_width => 9,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 9,
      c_sclr_overrides_sset => 0,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_c66688b5fa9e8cc0
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_c66688b5fa9e8cc0_a;
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
-- You must compile the wrapper file addsb_11_0_e24076645e4ac860.vhd when simulating
-- the core, addsb_11_0_e24076645e4ac860. When compiling the wrapper file, be sure to
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
ENTITY addsb_11_0_e24076645e4ac860 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END addsb_11_0_e24076645e4ac860;

ARCHITECTURE addsb_11_0_e24076645e4ac860_a OF addsb_11_0_e24076645e4ac860 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_e24076645e4ac860
  PORT (
    a : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_e24076645e4ac860 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 13,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "0000000000000",
      c_b_width => 13,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 13,
      c_sclr_overrides_sset => 0,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_e24076645e4ac860
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_e24076645e4ac860_a;
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
-- You must compile the wrapper file asr_11_0_3273ca920bc68c94.vhd when simulating
-- the core, asr_11_0_3273ca920bc68c94. When compiling the wrapper file, be sure to
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
ENTITY asr_11_0_3273ca920bc68c94 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END asr_11_0_3273ca920bc68c94;

ARCHITECTURE asr_11_0_3273ca920bc68c94_a OF asr_11_0_3273ca920bc68c94 IS
-- synthesis translate_off
COMPONENT wrapped_asr_11_0_3273ca920bc68c94
  PORT (
    a : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_asr_11_0_3273ca920bc68c94 USE ENTITY XilinxCoreLib.c_shift_ram_v11_0(behavioral)
    GENERIC MAP (
      c_addr_width => 5,
      c_ainit_val => "00000000000000000",
      c_default_data => "00000000000000000",
      c_depth => 32,
      c_has_a => 1,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_mem_init_file => "asr_11_0_3273ca920bc68c94.mif",
      c_opt_goal => 0,
      c_parser_type => 0,
      c_read_mif => 1,
      c_reg_last_bit => 0,
      c_shift_type => 1,
      c_sinit_val => "00000000000000000",
      c_sync_enable => 0,
      c_sync_priority => 1,
      c_verbosity => 0,
      c_width => 17,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_asr_11_0_3273ca920bc68c94
  PORT MAP (
    a => a,
    d => d,
    clk => clk,
    ce => ce,
    q => q
  );
-- synthesis translate_on

END asr_11_0_3273ca920bc68c94_a;
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
-- You must compile the wrapper file asr_11_0_eebbb884c64b0134.vhd when simulating
-- the core, asr_11_0_eebbb884c64b0134. When compiling the wrapper file, be sure to
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
ENTITY asr_11_0_eebbb884c64b0134 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END asr_11_0_eebbb884c64b0134;

ARCHITECTURE asr_11_0_eebbb884c64b0134_a OF asr_11_0_eebbb884c64b0134 IS
-- synthesis translate_off
COMPONENT wrapped_asr_11_0_eebbb884c64b0134
  PORT (
    a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    d : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_asr_11_0_eebbb884c64b0134 USE ENTITY XilinxCoreLib.c_shift_ram_v11_0(behavioral)
    GENERIC MAP (
      c_addr_width => 3,
      c_ainit_val => "0000000000",
      c_default_data => "0000000000",
      c_depth => 8,
      c_has_a => 1,
      c_has_ce => 1,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_mem_init_file => "asr_11_0_eebbb884c64b0134.mif",
      c_opt_goal => 0,
      c_parser_type => 0,
      c_read_mif => 1,
      c_reg_last_bit => 0,
      c_shift_type => 1,
      c_sinit_val => "0000000000",
      c_sync_enable => 0,
      c_sync_priority => 1,
      c_verbosity => 0,
      c_width => 10,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_asr_11_0_eebbb884c64b0134
  PORT MAP (
    a => a,
    d => d,
    clk => clk,
    ce => ce,
    q => q
  );
-- synthesis translate_on

END asr_11_0_eebbb884c64b0134_a;
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
-- You must compile the wrapper file bmg_63_a62a16bcbafb824b.vhd when simulating
-- the core, bmg_63_a62a16bcbafb824b. When compiling the wrapper file, be sure to
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
ENTITY bmg_63_a62a16bcbafb824b IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END bmg_63_a62a16bcbafb824b;

ARCHITECTURE bmg_63_a62a16bcbafb824b_a OF bmg_63_a62a16bcbafb824b IS
-- synthesis translate_off
COMPONENT wrapped_bmg_63_a62a16bcbafb824b
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_63_a62a16bcbafb824b USE ENTITY XilinxCoreLib.blk_mem_gen_v6_3(behavioral)
    GENERIC MAP (
      c_addra_width => 11,
      c_addrb_width => 11,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_enable_32bit_address => 0,
      c_family => "virtex6",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 0,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_63_a62a16bcbafb824b.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 2048,
      c_read_depth_b => 2048,
      c_read_width_a => 9,
      c_read_width_b => 9,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 2048,
      c_write_depth_b => 2048,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 9,
      c_write_width_b => 9,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_63_a62a16bcbafb824b
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_63_a62a16bcbafb824b_a;
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
-- You must compile the wrapper file bmg_63_e0a65e1751572c3a.vhd when simulating
-- the core, bmg_63_e0a65e1751572c3a. When compiling the wrapper file, be sure to
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
ENTITY bmg_63_e0a65e1751572c3a IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END bmg_63_e0a65e1751572c3a;

ARCHITECTURE bmg_63_e0a65e1751572c3a_a OF bmg_63_e0a65e1751572c3a IS
-- synthesis translate_off
COMPONENT wrapped_bmg_63_e0a65e1751572c3a
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_63_e0a65e1751572c3a USE ENTITY XilinxCoreLib.blk_mem_gen_v6_3(behavioral)
    GENERIC MAP (
      c_addra_width => 6,
      c_addrb_width => 6,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_enable_32bit_address => 0,
      c_family => "virtex6",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 0,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_63_e0a65e1751572c3a.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 64,
      c_read_depth_b => 64,
      c_read_width_a => 8,
      c_read_width_b => 8,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 64,
      c_write_depth_b => 64,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 8,
      c_write_width_b => 8,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_63_e0a65e1751572c3a
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_63_e0a65e1751572c3a_a;
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
-- You must compile the wrapper file bmg_63_eba4b6df3bedcfc7.vhd when simulating
-- the core, bmg_63_eba4b6df3bedcfc7. When compiling the wrapper file, be sure to
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
ENTITY bmg_63_eba4b6df3bedcfc7 IS
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END bmg_63_eba4b6df3bedcfc7;

ARCHITECTURE bmg_63_eba4b6df3bedcfc7_a OF bmg_63_eba4b6df3bedcfc7 IS
-- synthesis translate_off
COMPONENT wrapped_bmg_63_eba4b6df3bedcfc7
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_bmg_63_eba4b6df3bedcfc7 USE ENTITY XilinxCoreLib.blk_mem_gen_v6_3(behavioral)
    GENERIC MAP (
      c_addra_width => 6,
      c_addrb_width => 6,
      c_algorithm => 1,
      c_axi_id_width => 4,
      c_axi_slave_type => 0,
      c_axi_type => 1,
      c_byte_size => 9,
      c_common_clk => 0,
      c_default_data => "0",
      c_disable_warn_bhv_coll => 0,
      c_disable_warn_bhv_range => 0,
      c_enable_32bit_address => 0,
      c_family => "virtex6",
      c_has_axi_id => 0,
      c_has_ena => 1,
      c_has_enb => 0,
      c_has_injecterr => 0,
      c_has_mem_output_regs_a => 0,
      c_has_mem_output_regs_b => 0,
      c_has_mux_output_regs_a => 0,
      c_has_mux_output_regs_b => 0,
      c_has_regcea => 0,
      c_has_regceb => 0,
      c_has_rsta => 0,
      c_has_rstb => 0,
      c_has_softecc_input_regs_a => 0,
      c_has_softecc_output_regs_b => 0,
      c_init_file_name => "bmg_63_eba4b6df3bedcfc7.mif",
      c_inita_val => "0",
      c_initb_val => "0",
      c_interface_type => 0,
      c_load_init_file => 1,
      c_mem_type => 3,
      c_mux_pipeline_stages => 0,
      c_prim_type => 1,
      c_read_depth_a => 64,
      c_read_depth_b => 64,
      c_read_width_a => 16,
      c_read_width_b => 16,
      c_rst_priority_a => "CE",
      c_rst_priority_b => "CE",
      c_rst_type => "SYNC",
      c_rstram_a => 0,
      c_rstram_b => 0,
      c_sim_collision_check => "ALL",
      c_use_byte_wea => 0,
      c_use_byte_web => 0,
      c_use_default_data => 0,
      c_use_ecc => 0,
      c_use_softecc => 0,
      c_wea_width => 1,
      c_web_width => 1,
      c_write_depth_a => 64,
      c_write_depth_b => 64,
      c_write_mode_a => "WRITE_FIRST",
      c_write_mode_b => "WRITE_FIRST",
      c_write_width_a => 16,
      c_write_width_b => 16,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_bmg_63_eba4b6df3bedcfc7
  PORT MAP (
    clka => clka,
    ena => ena,
    addra => addra,
    douta => douta
  );
-- synthesis translate_on

END bmg_63_eba4b6df3bedcfc7_a;
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
-- You must compile the wrapper file cntr_11_0_25e8694ab5ef84df.vhd when simulating
-- the core, cntr_11_0_25e8694ab5ef84df. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_25e8694ab5ef84df IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END cntr_11_0_25e8694ab5ef84df;

ARCHITECTURE cntr_11_0_25e8694ab5ef84df_a OF cntr_11_0_25e8694ab5ef84df IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_25e8694ab5ef84df
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_25e8694ab5ef84df USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 8,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_25e8694ab5ef84df
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_25e8694ab5ef84df_a;
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
-- You must compile the wrapper file cntr_11_0_3166d4cc5b09c744.vhd when simulating
-- the core, cntr_11_0_3166d4cc5b09c744. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_3166d4cc5b09c744 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END cntr_11_0_3166d4cc5b09c744;

ARCHITECTURE cntr_11_0_3166d4cc5b09c744_a OF cntr_11_0_3166d4cc5b09c744 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_3166d4cc5b09c744
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_3166d4cc5b09c744 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 2,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_3166d4cc5b09c744
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_3166d4cc5b09c744_a;
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
-- You must compile the wrapper file cntr_11_0_8cfff7bd0ed63977.vhd when simulating
-- the core, cntr_11_0_8cfff7bd0ed63977. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_8cfff7bd0ed63977 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END cntr_11_0_8cfff7bd0ed63977;

ARCHITECTURE cntr_11_0_8cfff7bd0ed63977_a OF cntr_11_0_8cfff7bd0ed63977 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_8cfff7bd0ed63977
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_8cfff7bd0ed63977 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 10,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_8cfff7bd0ed63977
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_8cfff7bd0ed63977_a;
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
-- You must compile the wrapper file cntr_11_0_e769d6d069f40c44.vhd when simulating
-- the core, cntr_11_0_e769d6d069f40c44. When compiling the wrapper file, be sure to
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
ENTITY cntr_11_0_e769d6d069f40c44 IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END cntr_11_0_e769d6d069f40c44;

ARCHITECTURE cntr_11_0_e769d6d069f40c44_a OF cntr_11_0_e769d6d069f40c44 IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_e769d6d069f40c44
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_e769d6d069f40c44 USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
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
      c_width => 18,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_e769d6d069f40c44
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_e769d6d069f40c44_a;
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
-- You must compile the wrapper file mult_11_2_0492e2b2d63e9841.vhd when simulating
-- the core, mult_11_2_0492e2b2d63e9841. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_0492e2b2d63e9841 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  );
END mult_11_2_0492e2b2d63e9841;

ARCHITECTURE mult_11_2_0492e2b2d63e9841_a OF mult_11_2_0492e2b2d63e9841 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_0492e2b2d63e9841
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_0492e2b2d63e9841 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 32,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 16,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 3,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 47,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_0492e2b2d63e9841
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_0492e2b2d63e9841_a;
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
-- You must compile the wrapper file mult_11_2_209281571d5e4e1f.vhd when simulating
-- the core, mult_11_2_209281571d5e4e1f. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_209281571d5e4e1f IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
  );
END mult_11_2_209281571d5e4e1f;

ARCHITECTURE mult_11_2_209281571d5e4e1f_a OF mult_11_2_209281571d5e4e1f IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_209281571d5e4e1f
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_209281571d5e4e1f USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 14,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 2,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 27,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_209281571d5e4e1f
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_209281571d5e4e1f_a;
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
-- You must compile the wrapper file mult_11_2_5b9f6049ee08160c.vhd when simulating
-- the core, mult_11_2_5b9f6049ee08160c. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_5b9f6049ee08160c IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
  );
END mult_11_2_5b9f6049ee08160c;

ARCHITECTURE mult_11_2_5b9f6049ee08160c_a OF mult_11_2_5b9f6049ee08160c IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_5b9f6049ee08160c
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(27 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_5b9f6049ee08160c USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 18,
      c_b_type => 1,
      c_b_value => "10000001",
      c_b_width => 10,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 2,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 27,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_5b9f6049ee08160c
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_5b9f6049ee08160c_a;
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
-- You must compile the wrapper file mult_11_2_9d1a903664e67a0f.vhd when simulating
-- the core, mult_11_2_9d1a903664e67a0f. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_9d1a903664e67a0f IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(55 DOWNTO 0)
  );
END mult_11_2_9d1a903664e67a0f;

ARCHITECTURE mult_11_2_9d1a903664e67a0f_a OF mult_11_2_9d1a903664e67a0f IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_9d1a903664e67a0f
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(35 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(55 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_9d1a903664e67a0f USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 20,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 36,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 1,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 55,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_9d1a903664e67a0f
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_9d1a903664e67a0f_a;
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
-- You must compile the wrapper file mult_11_2_fb504edf4f6e1598.vhd when simulating
-- the core, mult_11_2_fb504edf4f6e1598. When compiling the wrapper file, be sure to
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
ENTITY mult_11_2_fb504edf4f6e1598 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END mult_11_2_fb504edf4f6e1598;

ARCHITECTURE mult_11_2_fb504edf4f6e1598_a OF mult_11_2_fb504edf4f6e1598 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_fb504edf4f6e1598
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_fb504edf4f6e1598 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 24,
      c_b_type => 1,
      c_b_value => "10000001",
      c_b_width => 8,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 3,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 1,
      c_out_high => 31,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "virtex6"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_fb504edf4f6e1598
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_fb504edf4f6e1598_a;

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
entity xlclockenablegenerator is
  generic (
    period: integer := 2;
    log_2_period: integer := 0;
    pipeline_regs: integer := 5
  );
  port (
    clk: in std_logic;
    clr: in std_logic;
    ce: out std_logic
  );
end xlclockenablegenerator;
architecture behavior of xlclockenablegenerator is
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
  signal internal_ce: std_logic_vector(0 downto 0);
  signal cnt_clr, cnt_clr_dly: std_logic_vector (0 downto 0);
begin
  cntr_gen: process(clk)
  begin
    if clk'event and clk = '1'  then
        if ((cnt_clr_dly(0) = '1') or (clr = '1')) then
          clk_num <= (others => '0');
        else
          clk_num <= clk_num + 1;
        end if;
    end if;
  end process;
  clr_gen: process(clk_num, clr)
  begin
    if power_of_2_counter then
      cnt_clr(0) <= clr;
    else
      if (unsigned_to_std_logic_vector(clk_num) = clk_for_ce_pulse_minus1
          or clr = '1') then
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
      ce => '1',
      clr => clr,
      clk => clk,
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
                  ce => '1',
                  clr => clr,
                  clk => clk,
                  o => ce_vec(index-1 downto index-1)
                  );
      end generate;
      internal_ce <= ce_vec(0 downto 0);
  end generate;
  generate_clock_enable: if period > 1 generate
    ce <= internal_ce(0);
  end generate;
  generate_clock_enable_constant: if period = 1 generate
    ce <= '1';
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
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xladdsub is
  generic (
    core_name0: string := "";
    a_width: integer := 16;
    a_bin_pt: integer := 4;
    a_arith: integer := xlUnsigned;
    c_in_width: integer := 16;
    c_in_bin_pt: integer := 4;
    c_in_arith: integer := xlUnsigned;
    c_out_width: integer := 16;
    c_out_bin_pt: integer := 4;
    c_out_arith: integer := xlUnsigned;
    b_width: integer := 8;
    b_bin_pt: integer := 2;
    b_arith: integer := xlUnsigned;
    s_width: integer := 17;
    s_bin_pt: integer := 4;
    s_arith: integer := xlUnsigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    full_s_width: integer := 17;
    full_s_arith: integer := xlUnsigned;
    mode: integer := xlAddMode;
    extra_registers: integer := 0;
    latency: integer := 0;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    c_latency: integer := 0;
    c_output_width: integer := 17;
    c_has_c_in : integer := 0;
    c_has_c_out : integer := 0
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    c_in : in std_logic_vector (0 downto 0) := "0";
    ce: in std_logic;
    clr: in std_logic := '0';
    clk: in std_logic;
    rst: in std_logic_vector(rst_width - 1 downto 0) := "0";
    en: in std_logic_vector(en_width - 1 downto 0) := "1";
    c_out : out std_logic_vector (0 downto 0);
    s: out std_logic_vector(s_width - 1 downto 0)
  );
end xladdsub;
architecture behavior of xladdsub is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  function format_input(inp: std_logic_vector; old_width, delta, new_arith,
                        new_width: integer)
    return std_logic_vector
  is
    variable vec: std_logic_vector(old_width-1 downto 0);
    variable padded_inp: std_logic_vector((old_width + delta)-1  downto 0);
    variable result: std_logic_vector(new_width-1 downto 0);
  begin
    vec := inp;
    if (delta > 0) then
      padded_inp := pad_LSB(vec, old_width+delta);
      result := extend_MSB(padded_inp, new_width, new_arith);
    else
      result := extend_MSB(vec, new_width, new_arith);
    end if;
    return result;
  end;
  constant full_s_bin_pt: integer := fractional_bits(a_bin_pt, b_bin_pt);
  constant full_a_width: integer := full_s_width;
  constant full_b_width: integer := full_s_width;
  signal full_a: std_logic_vector(full_a_width - 1 downto 0);
  signal full_b: std_logic_vector(full_b_width - 1 downto 0);
  signal core_s: std_logic_vector(full_s_width - 1 downto 0);
  signal conv_s: std_logic_vector(s_width - 1 downto 0);
  signal temp_cout : std_logic;
  signal internal_clr: std_logic;
  signal internal_ce: std_logic;
  signal extra_reg_ce: std_logic;
  signal override: std_logic;
  signal logic1: std_logic_vector(0 downto 0);
  component addsb_11_0_821bdda5b43881fc
    port (
          a: in std_logic_vector(10 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(10 - 1 downto 0)
    );
  end component;
  attribute syn_black_box of addsb_11_0_821bdda5b43881fc:
    component is true;
  attribute fpga_dont_touch of addsb_11_0_821bdda5b43881fc:
    component is "true";
  attribute box_type of addsb_11_0_821bdda5b43881fc:
    component  is "black_box";
  component addsb_11_0_c66688b5fa9e8cc0
    port (
          a: in std_logic_vector(9 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(9 - 1 downto 0)
    );
  end component;
  attribute syn_black_box of addsb_11_0_c66688b5fa9e8cc0:
    component is true;
  attribute fpga_dont_touch of addsb_11_0_c66688b5fa9e8cc0:
    component is "true";
  attribute box_type of addsb_11_0_c66688b5fa9e8cc0:
    component  is "black_box";
  component addsb_11_0_946139e686745147
    port (
          a: in std_logic_vector(11 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(11 - 1 downto 0)
    );
  end component;
  attribute syn_black_box of addsb_11_0_946139e686745147:
    component is true;
  attribute fpga_dont_touch of addsb_11_0_946139e686745147:
    component is "true";
  attribute box_type of addsb_11_0_946139e686745147:
    component  is "black_box";
  component addsb_11_0_e24076645e4ac860
    port (
          a: in std_logic_vector(13 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(13 - 1 downto 0)
    );
  end component;
  attribute syn_black_box of addsb_11_0_e24076645e4ac860:
    component is true;
  attribute fpga_dont_touch of addsb_11_0_e24076645e4ac860:
    component is "true";
  attribute box_type of addsb_11_0_e24076645e4ac860:
    component  is "black_box";
  component addsb_11_0_1a72527b8e6ebf38
    port (
          a: in std_logic_vector(11 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(11 - 1 downto 0)
    );
  end component;
  attribute syn_black_box of addsb_11_0_1a72527b8e6ebf38:
    component is true;
  attribute fpga_dont_touch of addsb_11_0_1a72527b8e6ebf38:
    component is "true";
  attribute box_type of addsb_11_0_1a72527b8e6ebf38:
    component  is "black_box";
  component addsb_11_0_79238328d5792da3
    port (
          a: in std_logic_vector(12 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(12 - 1 downto 0)
    );
  end component;
  attribute syn_black_box of addsb_11_0_79238328d5792da3:
    component is true;
  attribute fpga_dont_touch of addsb_11_0_79238328d5792da3:
    component is "true";
  attribute box_type of addsb_11_0_79238328d5792da3:
    component  is "black_box";
  component addsb_11_0_3b8d8925e647b605
    port (
          a: in std_logic_vector(3 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(3 - 1 downto 0)
    );
  end component;
  attribute syn_black_box of addsb_11_0_3b8d8925e647b605:
    component is true;
  attribute fpga_dont_touch of addsb_11_0_3b8d8925e647b605:
    component is "true";
  attribute box_type of addsb_11_0_3b8d8925e647b605:
    component  is "black_box";
  component addsb_11_0_4e449b79a6edba32
    port (
          a: in std_logic_vector(4 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(4 - 1 downto 0)
    );
  end component;
  attribute syn_black_box of addsb_11_0_4e449b79a6edba32:
    component is true;
  attribute fpga_dont_touch of addsb_11_0_4e449b79a6edba32:
    component is "true";
  attribute box_type of addsb_11_0_4e449b79a6edba32:
    component  is "black_box";
begin
  internal_clr <= (clr or (rst(0))) and ce;
  internal_ce <= ce and en(0);
  logic1(0) <= '1';
  addsub_process: process (a, b, core_s)
  begin
    full_a <= format_input (a, a_width, b_bin_pt - a_bin_pt, a_arith,
                            full_a_width);
    full_b <= format_input (b, b_width, a_bin_pt - b_bin_pt, b_arith,
                            full_b_width);
    conv_s <= convert_type (core_s, full_s_width, full_s_bin_pt, full_s_arith,
                            s_width, s_bin_pt, s_arith, quantization, overflow);
  end process addsub_process;

  comp0: if ((core_name0 = "addsb_11_0_821bdda5b43881fc")) generate
    core_instance0: addsb_11_0_821bdda5b43881fc
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp1: if ((core_name0 = "addsb_11_0_c66688b5fa9e8cc0")) generate
    core_instance1: addsb_11_0_c66688b5fa9e8cc0
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp2: if ((core_name0 = "addsb_11_0_946139e686745147")) generate
    core_instance2: addsb_11_0_946139e686745147
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp3: if ((core_name0 = "addsb_11_0_e24076645e4ac860")) generate
    core_instance3: addsb_11_0_e24076645e4ac860
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp4: if ((core_name0 = "addsb_11_0_1a72527b8e6ebf38")) generate
    core_instance4: addsb_11_0_1a72527b8e6ebf38
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp5: if ((core_name0 = "addsb_11_0_79238328d5792da3")) generate
    core_instance5: addsb_11_0_79238328d5792da3
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp6: if ((core_name0 = "addsb_11_0_3b8d8925e647b605")) generate
    core_instance6: addsb_11_0_3b8d8925e647b605
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp7: if ((core_name0 = "addsb_11_0_4e449b79a6edba32")) generate
    core_instance7: addsb_11_0_4e449b79a6edba32
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  latency_test: if (extra_registers > 0) generate
      override_test: if (c_latency > 1) generate
       override_pipe: synth_reg
          generic map (
            width => 1,
            latency => c_latency
          )
          port map (
            i => logic1,
            ce => internal_ce,
            clr => internal_clr,
            clk => clk,
            o(0) => override);
       extra_reg_ce <= ce and en(0) and override;
      end generate override_test;
      no_override: if ((c_latency = 0) or (c_latency = 1)) generate
       extra_reg_ce <= ce and en(0);
      end generate no_override;
      extra_reg: synth_reg
        generic map (
          width => s_width,
          latency => extra_registers
        )
        port map (
          i => conv_s,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => s
        );
      cout_test: if (c_has_c_out = 1) generate
      c_out_extra_reg: synth_reg
        generic map (
          width => 1,
          latency => extra_registers
        )
        port map (
          i(0) => temp_cout,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => c_out
        );
      end generate cout_test;
  end generate;
  latency_s: if ((latency = 0) or (extra_registers = 0)) generate
    s <= conv_s;
  end generate latency_s;
  latency0: if (((latency = 0) or (extra_registers = 0)) and
                 (c_has_c_out = 1)) generate
    c_out(0) <= temp_cout;
  end generate latency0;
  tie_dangling_cout: if (c_has_c_out = 0) generate
    c_out <= "0";
  end generate tie_dangling_cout;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_c11beaf011 is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_c11beaf011;


architecture behavior of constant_c11beaf011 is
begin
  op <= "001111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_961b61f8a1 is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_961b61f8a1;


architecture behavior of constant_961b61f8a1 is
begin
  op <= "100000";
end behavior;

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

entity constant_7ea0f2fff7 is
  port (
    op : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_7ea0f2fff7;


architecture behavior of constant_7ea0f2fff7 is
begin
  op <= "000000";
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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_593ae85213 is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((6 - 1) downto 0);
    d1 : in std_logic_vector((6 - 1) downto 0);
    d2 : in std_logic_vector((6 - 1) downto 0);
    d3 : in std_logic_vector((6 - 1) downto 0);
    y : out std_logic_vector((6 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_593ae85213;


architecture behavior of mux_593ae85213 is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((6 - 1) downto 0);
  signal d1_1_27: std_logic_vector((6 - 1) downto 0);
  signal d2_1_30: std_logic_vector((6 - 1) downto 0);
  signal d3_1_33: std_logic_vector((6 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((6 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when "10" =>
        unregy_join_6_1 <= d2_1_30;
      when others =>
        unregy_join_6_1 <= d3_1_33;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_387191112d is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_387191112d;


architecture behavior of mux_387191112d is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((8 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((8 - 1) downto 0);
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
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity accum_2b721ebdb1 is
  port (
    b : in std_logic_vector((16 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end accum_2b721ebdb1;


architecture behavior of accum_2b721ebdb1 is
  signal b_17_24: signed((16 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_41_23: signed((18 - 1) downto 0) := "000000000000000000";
  signal accum_reg_41_23_rst: std_logic;
  signal cast_51_42: signed((18 - 1) downto 0);
  signal accum_reg_join_47_1: signed((19 - 1) downto 0);
  signal accum_reg_join_47_1_rst: std_logic;
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (accum_reg_41_23_rst = '1')) then
        accum_reg_41_23 <= "000000000000000000";
      elsif (ce = '1') then 
        accum_reg_41_23 <= accum_reg_41_23 + cast_51_42;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  cast_51_42 <= s2s_cast(b_17_24, 13, 18, 13);
  proc_if_47_1: process (accum_reg_41_23, cast_51_42, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1_rst <= '1';
    else 
      accum_reg_join_47_1_rst <= '0';
    end if;
  end process proc_if_47_1;
  accum_reg_41_23_rst <= accum_reg_join_47_1_rst;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_8bbd89a03e is
  port (
    a : in std_logic_vector((14 - 1) downto 0);
    b : in std_logic_vector((15 - 1) downto 0);
    s : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_8bbd89a03e;


architecture behavior of addsub_8bbd89a03e is
  signal a_17_32: signed((14 - 1) downto 0);
  signal b_17_35: signed((15 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((16 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0000000000000000");
  signal op_mem_91_20_front_din: signed((16 - 1) downto 0);
  signal op_mem_91_20_back: signed((16 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((16 - 1) downto 0);
  signal cast_69_22: signed((16 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((16 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= s2s_cast(a_17_32, 13, 16, 13);
  cast_69_22 <= s2s_cast(b_17_35, 13, 16, 13);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(internal_s_69_5_addsub);
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

entity negate_19f16a3a71 is
  port (
    ip : in std_logic_vector((14 - 1) downto 0);
    op : out std_logic_vector((15 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end negate_19f16a3a71;


architecture behavior of negate_19f16a3a71 is
  signal ip_18_25: signed((14 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of signed((15 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "000000000000000");
  signal op_mem_46_20_front_din: signed((15 - 1) downto 0);
  signal op_mem_46_20_back: signed((15 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_33_24: signed((15 - 1) downto 0);
  signal internal_ip_33_9_neg: signed((15 - 1) downto 0);
begin
  ip_18_25 <= std_logic_vector_to_signed(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_33_24 <= s2s_cast(ip_18_25, 13, 15, 13);
  internal_ip_33_9_neg <=  -cast_33_24;
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(internal_ip_33_9_neg);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity scale_1768584a8d is
  port (
    ip : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end scale_1768584a8d;


architecture behavior of scale_1768584a8d is
  signal ip_17_23: signed((18 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
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
  component cntr_11_0_3166d4cc5b09c744
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_3166d4cc5b09c744:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_3166d4cc5b09c744:
    component is "true";
  attribute box_type of cntr_11_0_3166d4cc5b09c744:
    component  is "black_box";
  component cntr_11_0_25e8694ab5ef84df
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_25e8694ab5ef84df:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_25e8694ab5ef84df:
    component is "true";
  attribute box_type of cntr_11_0_25e8694ab5ef84df:
    component  is "black_box";
  component cntr_11_0_8cfff7bd0ed63977
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_8cfff7bd0ed63977:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_8cfff7bd0ed63977:
    component is "true";
  attribute box_type of cntr_11_0_8cfff7bd0ed63977:
    component  is "black_box";
  component cntr_11_0_e769d6d069f40c44
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of cntr_11_0_e769d6d069f40c44:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_e769d6d069f40c44:
    component is "true";
  attribute box_type of cntr_11_0_e769d6d069f40c44:
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
  comp0: if ((core_name0 = "cntr_11_0_3166d4cc5b09c744")) generate
    core_instance0: cntr_11_0_3166d4cc5b09c744
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_25e8694ab5ef84df")) generate
    core_instance1: cntr_11_0_25e8694ab5ef84df
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp2: if ((core_name0 = "cntr_11_0_8cfff7bd0ed63977")) generate
    core_instance2: cntr_11_0_8cfff7bd0ed63977
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp3: if ((core_name0 = "cntr_11_0_e769d6d069f40c44")) generate
    core_instance3: cntr_11_0_e769d6d069f40c44
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

entity constant_cda50df78a is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_cda50df78a;


architecture behavior of constant_cda50df78a is
begin
  op <= "00";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a7e2bb9e12 is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a7e2bb9e12;


architecture behavior of constant_a7e2bb9e12 is
begin
  op <= "01";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_e8ddc079e9 is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_e8ddc079e9;


architecture behavior of constant_e8ddc079e9 is
begin
  op <= "10";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_3a9a3daeb9 is
  port (
    op : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_3a9a3daeb9;


architecture behavior of constant_3a9a3daeb9 is
begin
  op <= "11";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_5f1eb17108 is
  port (
    a : in std_logic_vector((2 - 1) downto 0);
    b : in std_logic_vector((2 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_5f1eb17108;


architecture behavior of relational_5f1eb17108 is
  signal a_1_31: unsigned((2 - 1) downto 0);
  signal b_1_34: unsigned((2 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_ed45fac9a9 is
  port (
    a : in std_logic_vector((36 - 1) downto 0);
    b : in std_logic_vector((36 - 1) downto 0);
    s : out std_logic_vector((37 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_ed45fac9a9;


architecture behavior of addsub_ed45fac9a9 is
  signal a_17_32: signed((36 - 1) downto 0);
  signal b_17_35: signed((36 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((37 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0000000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((37 - 1) downto 0);
  signal op_mem_91_20_back: signed((37 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((37 - 1) downto 0);
  signal cast_71_22: signed((37 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((37 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= s2s_cast(a_17_32, 32, 37, 32);
  cast_71_22 <= s2s_cast(b_17_35, 32, 37, 32);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(internal_s_71_5_addsub);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_9579f61149 is
  port (
    a : in std_logic_vector((37 - 1) downto 0);
    b : in std_logic_vector((36 - 1) downto 0);
    s : out std_logic_vector((38 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_9579f61149;


architecture behavior of addsub_9579f61149 is
  signal a_17_32: signed((37 - 1) downto 0);
  signal b_17_35: signed((36 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((38 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00000000000000000000000000000000000000");
  signal op_mem_91_20_front_din: signed((38 - 1) downto 0);
  signal op_mem_91_20_back: signed((38 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((38 - 1) downto 0);
  signal cast_71_22: signed((38 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((38 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= s2s_cast(a_17_32, 32, 38, 32);
  cast_71_22 <= s2s_cast(b_17_35, 32, 38, 32);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(internal_s_71_5_addsub);
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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
entity xldsamp is
  generic (
    d_width: integer := 12;
    d_bin_pt: integer := 0;
    d_arith: integer := xlUnsigned;
    q_width: integer := 12;
    q_bin_pt: integer := 0;
    q_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    ds_ratio: integer := 2;
    phase: integer := 0;
    latency: integer := 1
  );
  port (
    d: in std_logic_vector(d_width - 1 downto 0);
    src_clk: in std_logic;
    src_ce: in std_logic;
    src_clr: in std_logic;
    dest_clk: in std_logic;
    dest_ce: in std_logic;
    dest_clr: in std_logic;
    en: in std_logic_vector(en_width - 1 downto 0);
    q: out std_logic_vector(q_width - 1 downto 0)
  );
end xldsamp;
architecture struct of xldsamp is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  component fdse
    port (
      q: out   std_ulogic;
      d: in    std_ulogic;
      c: in    std_ulogic;
      s: in    std_ulogic;
      ce: in    std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  signal adjusted_dest_ce: std_logic;
  signal adjusted_dest_ce_w_en: std_logic;
  signal dest_ce_w_en: std_logic;
  signal smpld_d: std_logic_vector(d_width-1 downto 0);
begin
  adjusted_ce_needed: if ((latency = 0) or (phase /= (ds_ratio - 1))) generate
    dest_ce_reg: fdse
      port map (
        q => adjusted_dest_ce,
        d => dest_ce,
        c => src_clk,
        s => src_clr,
        ce => src_ce
      );
  end generate;
  latency_eq_0: if (latency = 0) generate
    shutter_d_reg: synth_reg
      generic map (
        width => d_width,
        latency => 1
      )
      port map (
        i => d,
        ce => adjusted_dest_ce,
        clr => src_clr,
        clk => src_clk,
        o => smpld_d
      );
    shutter_mux: process (adjusted_dest_ce, d, smpld_d)
    begin
      if adjusted_dest_ce = '0' then
        q <= smpld_d;
      else
        q <= d;
      end if;
    end process;
  end generate;
  latency_gt_0: if (latency > 0) generate
    dbl_reg_test: if (phase /= (ds_ratio-1)) generate
        smpl_d_reg: synth_reg
          generic map (
            width => d_width,
            latency => 1
          )
          port map (
            i => d,
            ce => adjusted_dest_ce_w_en,
            clr => src_clr,
            clk => src_clk,
            o => smpld_d
          );
    end generate;
    sngl_reg_test: if (phase = (ds_ratio -1)) generate
      smpld_d <= d;
    end generate;
    latency_pipe: synth_reg
      generic map (
        width => d_width,
        latency => latency
      )
      port map (
        i => smpld_d,
        ce => dest_ce_w_en,
        clr => src_clr,
        clk => dest_clk,
        o => q
      );
  end generate;
  dest_ce_w_en <= dest_ce and en(0);
  adjusted_dest_ce_w_en <= adjusted_dest_ce and en(0);
end architecture struct;

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
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlmult is
  generic (
    core_name0: string := "";
    a_width: integer := 4;
    a_bin_pt: integer := 2;
    a_arith: integer := xlSigned;
    b_width: integer := 4;
    b_bin_pt: integer := 1;
    b_arith: integer := xlSigned;
    p_width: integer := 8;
    p_bin_pt: integer := 2;
    p_arith: integer := xlSigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    extra_registers: integer := 0;
    c_a_width: integer := 7;
    c_b_width: integer := 7;
    c_type: integer := 0;
    c_a_type: integer := 0;
    c_b_type: integer := 0;
    c_pipelined: integer := 1;
    c_baat: integer := 4;
    multsign: integer := xlSigned;
    c_output_width: integer := 16
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    core_ce: in std_logic := '0';
    core_clr: in std_logic := '0';
    core_clk: in std_logic := '0';
    rst: in std_logic_vector(rst_width - 1 downto 0);
    en: in std_logic_vector(en_width - 1 downto 0);
    p: out std_logic_vector(p_width - 1 downto 0)
  );
end xlmult;
architecture behavior of xlmult is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  component mult_11_2_9d1a903664e67a0f
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of mult_11_2_9d1a903664e67a0f:
    component is true;
  attribute fpga_dont_touch of mult_11_2_9d1a903664e67a0f:
    component is "true";
  attribute box_type of mult_11_2_9d1a903664e67a0f:
    component  is "black_box";
  component mult_11_2_fb504edf4f6e1598
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of mult_11_2_fb504edf4f6e1598:
    component is true;
  attribute fpga_dont_touch of mult_11_2_fb504edf4f6e1598:
    component is "true";
  attribute box_type of mult_11_2_fb504edf4f6e1598:
    component  is "black_box";
  component mult_11_2_209281571d5e4e1f
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of mult_11_2_209281571d5e4e1f:
    component is true;
  attribute fpga_dont_touch of mult_11_2_209281571d5e4e1f:
    component is "true";
  attribute box_type of mult_11_2_209281571d5e4e1f:
    component  is "black_box";
  component mult_11_2_0492e2b2d63e9841
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of mult_11_2_0492e2b2d63e9841:
    component is true;
  attribute fpga_dont_touch of mult_11_2_0492e2b2d63e9841:
    component is "true";
  attribute box_type of mult_11_2_0492e2b2d63e9841:
    component  is "black_box";
  component mult_11_2_5b9f6049ee08160c
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of mult_11_2_5b9f6049ee08160c:
    component is true;
  attribute fpga_dont_touch of mult_11_2_5b9f6049ee08160c:
    component is "true";
  attribute box_type of mult_11_2_5b9f6049ee08160c:
    component  is "black_box";
  signal tmp_a: std_logic_vector(c_a_width - 1 downto 0);
  signal conv_a: std_logic_vector(c_a_width - 1 downto 0);
  signal tmp_b: std_logic_vector(c_b_width - 1 downto 0);
  signal conv_b: std_logic_vector(c_b_width - 1 downto 0);
  signal tmp_p: std_logic_vector(c_output_width - 1 downto 0);
  signal conv_p: std_logic_vector(p_width - 1 downto 0);
  -- synopsys translate_off
  signal real_a, real_b, real_p: real;
  -- synopsys translate_on
  signal rfd: std_logic;
  signal rdy: std_logic;
  signal nd: std_logic;
  signal internal_ce: std_logic;
  signal internal_clr: std_logic;
  signal internal_core_ce: std_logic;
begin
-- synopsys translate_off
-- synopsys translate_on
  internal_ce <= ce and en(0);
  internal_core_ce <= core_ce and en(0);
  internal_clr <= (clr or rst(0)) and ce;
  nd <= internal_ce;
  input_process:  process (a,b)
  begin
    tmp_a <= zero_ext(a, c_a_width);
    tmp_b <= zero_ext(b, c_b_width);
  end process;
  output_process: process (tmp_p)
  begin
    conv_p <= convert_type(tmp_p, c_output_width, a_bin_pt+b_bin_pt, multsign,
                           p_width, p_bin_pt, p_arith, quantization, overflow);
  end process;
  comp0: if ((core_name0 = "mult_11_2_9d1a903664e67a0f")) generate
    core_instance0: mult_11_2_9d1a903664e67a0f
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp1: if ((core_name0 = "mult_11_2_fb504edf4f6e1598")) generate
    core_instance1: mult_11_2_fb504edf4f6e1598
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp2: if ((core_name0 = "mult_11_2_209281571d5e4e1f")) generate
    core_instance2: mult_11_2_209281571d5e4e1f
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp3: if ((core_name0 = "mult_11_2_0492e2b2d63e9841")) generate
    core_instance3: mult_11_2_0492e2b2d63e9841
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp4: if ((core_name0 = "mult_11_2_5b9f6049ee08160c")) generate
    core_instance4: mult_11_2_5b9f6049ee08160c
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  latency_gt_0: if (extra_registers > 0) generate
    reg: synth_reg
      generic map (
        width => p_width,
        latency => extra_registers
      )
      port map (
        i => conv_p,
        ce => internal_ce,
        clr => internal_clr,
        clk => clk,
        o => p
      );
  end generate;
  latency_eq_0: if (extra_registers = 0) generate
    p <= conv_p;
  end generate;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_d77f41c555 is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((18 - 1) downto 0);
    d1 : in std_logic_vector((18 - 1) downto 0);
    d2 : in std_logic_vector((18 - 1) downto 0);
    d3 : in std_logic_vector((18 - 1) downto 0);
    y : out std_logic_vector((20 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_d77f41c555;


architecture behavior of mux_d77f41c555 is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((18 - 1) downto 0);
  signal d1_1_27: std_logic_vector((18 - 1) downto 0);
  signal d2_1_30: std_logic_vector((18 - 1) downto 0);
  signal d3_1_33: std_logic_vector((18 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((20 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= cast(d0_1_24, 15, 20, 17, xlSigned);
      when "01" =>
        unregy_join_6_1 <= cast(d1_1_27, 15, 20, 17, xlSigned);
      when "10" =>
        unregy_join_6_1 <= cast(d2_1_30, 17, 20, 17, xlSigned);
      when others =>
        unregy_join_6_1 <= cast(d3_1_33, 17, 20, 17, xlSigned);
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_71f9f8178b is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((18 - 1) downto 0);
    d1 : in std_logic_vector((18 - 1) downto 0);
    d2 : in std_logic_vector((38 - 1) downto 0);
    d3 : in std_logic_vector((38 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_71f9f8178b;


architecture behavior of mux_71f9f8178b is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((18 - 1) downto 0);
  signal d1_1_27: std_logic_vector((18 - 1) downto 0);
  signal d2_1_30: std_logic_vector((38 - 1) downto 0);
  signal d3_1_33: std_logic_vector((38 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((38 - 1) downto 0);
  signal cast_unregy_17_5_convert: std_logic_vector((36 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= cast(d0_1_24, 17, 38, 32, xlUnsigned);
      when "01" =>
        unregy_join_6_1 <= cast(d1_1_27, 17, 38, 32, xlUnsigned);
      when "10" =>
        unregy_join_6_1 <= d2_1_30;
      when others =>
        unregy_join_6_1 <= d3_1_33;
    end case;
  end process proc_switch_6_1;
  cast_unregy_17_5_convert <= cast(unregy_join_6_1, 32, 36, 32, xlSigned);
  y <= cast_unregy_17_5_convert;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_afe0c53bfb is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((36 - 1) downto 0);
    d1 : in std_logic_vector((36 - 1) downto 0);
    y : out std_logic_vector((36 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_afe0c53bfb;


architecture behavior of mux_afe0c53bfb is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((36 - 1) downto 0);
  signal d1_1_27: std_logic_vector((36 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((36 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
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
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
entity xlusamp is
    generic (
             d_width      : integer := 5;
             d_bin_pt     : integer := 2;
             d_arith      : integer := xlUnsigned;
             q_width      : integer := 5;
             q_bin_pt     : integer := 2;
             q_arith      : integer := xlUnsigned;
             en_width     : integer := 1;
             en_bin_pt    : integer := 0;
             en_arith     : integer := xlUnsigned;
             sampling_ratio     : integer := 2;
             latency      : integer := 1;
             copy_samples : integer := 0);
    port (
          d        : in std_logic_vector (d_width-1 downto 0);
          src_clk  : in std_logic;
          src_ce   : in std_logic;
          src_clr  : in std_logic;
          dest_clk : in std_logic;
          dest_ce  : in std_logic;
          dest_clr : in std_logic;
          en       : in std_logic_vector(en_width-1 downto 0);
          q        : out std_logic_vector (q_width-1 downto 0)
         );
end xlusamp;
architecture struct of xlusamp is
    component synth_reg
      generic (
        width: integer := 16;
        latency: integer := 5
      );
      port (
        i: in std_logic_vector(width - 1 downto 0);
        ce: in std_logic;
        clr: in std_logic;
        clk: in std_logic;
        o: out std_logic_vector(width - 1 downto 0)
      );
    end component;
    component FDSE
        port (q  : out   std_ulogic;
              d  : in    std_ulogic;
              c  : in    std_ulogic;
              s  : in    std_ulogic;
              ce : in    std_ulogic);
    end component;
    attribute syn_black_box of FDSE : component is true;
    attribute fpga_dont_touch of FDSE : component is "true";
    signal zero    : std_logic_vector (d_width-1 downto 0);
    signal mux_sel : std_logic;
    signal sampled_d  : std_logic_vector (d_width-1 downto 0);
    signal internal_ce : std_logic;
begin
   sel_gen : FDSE
                port map (q  => mux_sel,
                        d  => src_ce,
            c  => src_clk,
            s  => src_clr,
            ce => dest_ce);
  internal_ce <= src_ce and en(0);
  copy_samples_false : if (copy_samples = 0) generate
      zero <= (others => '0');
      gen_q_cp_smpls_0_and_lat_0: if (latency = 0) generate
        cp_smpls_0_and_lat_0: process (mux_sel, d, zero)
        begin
          if (mux_sel = '1') then
            q <= d;
          else
            q <= zero;
          end if;
        end process cp_smpls_0_and_lat_0;
      end generate;
      gen_q_cp_smpls_0_and_lat_gt_0: if (latency > 0) generate
        sampled_d_reg: synth_reg
          generic map (
            width => d_width,
            latency => latency
          )
          port map (
            i => d,
            ce => internal_ce,
            clr => src_clr,
            clk => src_clk,
            o => sampled_d
          );

        gen_q_check_mux_sel: process (mux_sel, sampled_d, zero)
        begin
          if (mux_sel = '1') then
            q <= sampled_d;
          else
            q <= zero;
          end if;
        end process gen_q_check_mux_sel;
      end generate;
   end generate;
   copy_samples_true : if (copy_samples = 1) generate
     gen_q_cp_smpls_1_and_lat_0: if (latency = 0) generate
       q <= d;
     end generate;
     gen_q_cp_smpls_1_and_lat_gt_0: if (latency > 0) generate
       q <= sampled_d;
       sampled_d_reg2: synth_reg
         generic map (
           width => d_width,
           latency => latency
         )
         port map (
           i => d,
           ce => internal_ce,
           clr => src_clr,
           clk => src_clk,
           o => sampled_d
         );
     end generate;
   end generate;
end architecture struct;
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

entity relational_54048c8b02 is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_54048c8b02;


architecture behavior of relational_54048c8b02 is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_e019abb457 is
  port (
    a : in std_logic_vector((14 - 1) downto 0);
    b : in std_logic_vector((17 - 1) downto 0);
    s : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_e019abb457;


architecture behavior of addsub_e019abb457 is
  signal a_17_32: signed((14 - 1) downto 0);
  signal b_17_35: signed((17 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((18 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "000000000000000000");
  signal op_mem_91_20_front_din: signed((18 - 1) downto 0);
  signal op_mem_91_20_back: signed((18 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((18 - 1) downto 0);
  signal cast_71_22: signed((18 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((18 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= s2s_cast(a_17_32, 13, 18, 15);
  cast_71_22 <= s2s_cast(b_17_35, 15, 18, 15);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(internal_s_71_5_addsub);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity accum_4b12803c7d is
  port (
    b : in std_logic_vector((15 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    en : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end accum_4b12803c7d;


architecture behavior of accum_4b12803c7d is
  signal b_17_24: signed((15 - 1) downto 0);
  signal rst_17_27: boolean;
  signal en_17_32: boolean;
  signal accum_reg_41_23: signed((16 - 1) downto 0) := "0000000000000000";
  signal accum_reg_41_23_rst: std_logic;
  signal accum_reg_41_23_en: std_logic;
  signal cast_51_42: signed((16 - 1) downto 0);
  signal accum_reg_join_47_1: signed((17 - 1) downto 0);
  signal accum_reg_join_47_1_en: std_logic;
  signal accum_reg_join_47_1_rst: std_logic;
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  en_17_32 <= ((en) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (accum_reg_41_23_rst = '1')) then
        accum_reg_41_23 <= "0000000000000000";
      elsif ((ce = '1') and (accum_reg_41_23_en = '1')) then 
        accum_reg_41_23 <= accum_reg_41_23 + cast_51_42;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  cast_51_42 <= s2s_cast(b_17_24, 14, 16, 14);
  proc_if_47_1: process (accum_reg_41_23, cast_51_42, en_17_32, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1_rst <= '1';
    elsif en_17_32 then
      accum_reg_join_47_1_rst <= '0';
    else 
      accum_reg_join_47_1_rst <= '0';
    end if;
    if en_17_32 then
      accum_reg_join_47_1_en <= '1';
    else 
      accum_reg_join_47_1_en <= '0';
    end if;
  end process proc_if_47_1;
  accum_reg_41_23_rst <= accum_reg_join_47_1_rst;
  accum_reg_41_23_en <= accum_reg_join_47_1_en;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
end behavior;

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

entity mux_923aefe70d is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((14 - 1) downto 0);
    d1 : in std_logic_vector((38 - 1) downto 0);
    y : out std_logic_vector((38 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_923aefe70d;


architecture behavior of mux_923aefe70d is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((14 - 1) downto 0);
  signal d1_1_27: std_logic_vector((38 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((38 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= cast(d0_1_24, 13, 38, 32, xlSigned);
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

entity mux_cb76b902aa is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_cb76b902aa;


architecture behavior of mux_cb76b902aa is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((1 - 1) downto 0);
  signal d1_1_27: std_logic_vector((16 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((17 - 1) downto 0);
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
        unregy_join_6_1 <= cast(d0_1_24, 0, 17, 15, xlUnsigned);
      when others =>
        unregy_join_6_1 <= cast(d1_1_27, 15, 17, 15, xlSigned);
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_5cbb6cffcb is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((14 - 1) downto 0);
    d1 : in std_logic_vector((18 - 1) downto 0);
    d2 : in std_logic_vector((38 - 1) downto 0);
    y : out std_logic_vector((38 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_5cbb6cffcb;


architecture behavior of mux_5cbb6cffcb is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((14 - 1) downto 0);
  signal d1_1_27: std_logic_vector((18 - 1) downto 0);
  signal d2_1_30: std_logic_vector((38 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((38 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= cast(d0_1_24, 13, 38, 32, xlSigned);
      when "01" =>
        unregy_join_6_1 <= cast(d1_1_27, 15, 38, 32, xlSigned);
      when others =>
        unregy_join_6_1 <= d2_1_30;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity scale_fa7c2ab9f6 is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end scale_fa7c2ab9f6;


architecture behavior of scale_fa7c2ab9f6 is
  signal ip_17_23: signed((16 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_511c8efe77 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((13 - 1) downto 0);
    y : out std_logic_vector((13 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_511c8efe77;


architecture behavior of mux_511c8efe77 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((13 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((13 - 1) downto 0);
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
        unregy_join_6_1 <= cast(d0_1_24, 0, 13, 2, xlSigned);
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

entity addsub_b4036865b8 is
  port (
    a : in std_logic_vector((1 - 1) downto 0);
    b : in std_logic_vector((1 - 1) downto 0);
    s : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_b4036865b8;


architecture behavior of addsub_b4036865b8 is
  signal a_17_32: unsigned((1 - 1) downto 0);
  signal b_17_35: unsigned((1 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of unsigned((2 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00");
  signal op_mem_91_20_front_din: unsigned((2 - 1) downto 0);
  signal op_mem_91_20_back: unsigned((2 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: unsigned((2 - 1) downto 0);
  signal cast_69_22: unsigned((2 - 1) downto 0);
  signal internal_s_69_5_addsub: unsigned((2 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= u2u_cast(a_17_32, 0, 2, 0);
  cast_69_22 <= u2u_cast(b_17_35, 0, 2, 0);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= unsigned_to_std_logic_vector(internal_s_69_5_addsub);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_7aff091e92 is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_7aff091e92;


architecture behavior of relational_7aff091e92 is
  signal a_1_31: signed((18 - 1) downto 0);
  signal b_1_34: signed((8 - 1) downto 0);
  signal cast_16_16: signed((18 - 1) downto 0);
  signal result_16_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  cast_16_16 <= s2s_cast(b_1_34, 0, 18, 0);
  result_16_3_rel <= a_1_31 < cast_16_16;
  op <= boolean_to_vector(result_16_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_4d537a8f8d is
  port (
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_4d537a8f8d;


architecture behavior of constant_4d537a8f8d is
begin
  op <= "110000110101000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_2a1fef700b is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_2a1fef700b;


architecture behavior of relational_2a1fef700b is
  signal a_1_31: unsigned((10 - 1) downto 0);
  signal b_1_34: unsigned((8 - 1) downto 0);
  signal cast_12_17: unsigned((10 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_12_17 <= u2u_cast(b_1_34, 0, 10, 0);
  result_12_3_rel <= a_1_31 = cast_12_17;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_d96b17963a is
  port (
    a : in std_logic_vector((18 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_d96b17963a;


architecture behavior of relational_d96b17963a is
  signal a_1_31: unsigned((18 - 1) downto 0);
  signal b_1_34: unsigned((18 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity scale_d11c4b5145 is
  port (
    ip : in std_logic_vector((13 - 1) downto 0);
    op : out std_logic_vector((13 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end scale_d11c4b5145;


architecture behavior of scale_d11c4b5145 is
  signal ip_17_23: signed((13 - 1) downto 0);
begin
  ip_17_23 <= std_logic_vector_to_signed(ip);
  op <= signed_to_std_logic_vector(ip_17_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_744827771c is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_744827771c;


architecture behavior of constant_744827771c is
begin
  op <= "1100100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_ca73b964f8 is
  port (
    op : out std_logic_vector((7 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_ca73b964f8;


architecture behavior of constant_ca73b964f8 is
begin
  op <= "1100011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_44a8c5bdee is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((7 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_44a8c5bdee;


architecture behavior of relational_44a8c5bdee is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((7 - 1) downto 0);
  signal cast_20_17: unsigned((8 - 1) downto 0);
  signal result_20_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_20_17 <= u2u_cast(b_1_34, 0, 8, 0);
  result_20_3_rel <= a_1_31 <= cast_20_17;
  op <= boolean_to_vector(result_20_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_4fbf217ac0 is
  port (
    a : in std_logic_vector((8 - 1) downto 0);
    b : in std_logic_vector((7 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_4fbf217ac0;


architecture behavior of relational_4fbf217ac0 is
  signal a_1_31: unsigned((8 - 1) downto 0);
  signal b_1_34: unsigned((7 - 1) downto 0);
  signal cast_12_17: unsigned((8 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_12_17 <= u2u_cast(b_1_34, 0, 8, 0);
  result_12_3_rel <= a_1_31 = cast_12_17;
  op <= boolean_to_vector(result_12_3_rel);
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
use IEEE.numeric_std.all;
use work.conv_pkg.all;
entity xladdrsr is
  generic (
    core_name0: string := "";
    addr_arith: integer := xlSigned;
    addr_bin_pt: integer := 7;
    addr_width: integer := 12;
    core_addr_width: integer := 0;
    d_arith: integer := xlSigned;
    d_bin_pt: integer := 7;
    d_width: integer := 12;
    en_width: integer := 5;
    en_bin_pt: integer := 2;
    en_arith: integer := xlUnsigned;
    q_arith: integer := xlSigned;
    q_bin_pt: integer := 7;
    q_width: integer := xlSigned
  );
  port (
    d: in std_logic_vector(d_width - 1 downto 0);
    addr: in std_logic_vector(addr_width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    en: in std_logic_vector(0 downto 0) := (others => '1');
    q: out std_logic_vector(d_width - 1 downto 0)
  );
end xladdrsr ;
architecture behavior of xladdrsr is
  signal internal_ce: std_logic;
  signal padded_addr: std_logic_vector(core_addr_width-1 downto 0) := (others => '0');
  component asr_11_0_3273ca920bc68c94
    port (
      clk: in std_logic;
      d: in std_logic_vector(d_width - 1 downto 0);
      q: out std_logic_vector(d_width - 1 downto 0);
      a: in std_logic_vector(core_addr_width - 1 downto 0);
      ce: in std_logic
    );
  end component;
  attribute syn_black_box of asr_11_0_3273ca920bc68c94:
    component is true;
  attribute fpga_dont_touch of asr_11_0_3273ca920bc68c94:
    component is "true";
  attribute box_type of asr_11_0_3273ca920bc68c94:
    component  is "black_box";
  component asr_11_0_eebbb884c64b0134
    port (
      clk: in std_logic;
      d: in std_logic_vector(d_width - 1 downto 0);
      q: out std_logic_vector(d_width - 1 downto 0);
      a: in std_logic_vector(core_addr_width - 1 downto 0);
      ce: in std_logic
    );
  end component;
  attribute syn_black_box of asr_11_0_eebbb884c64b0134:
    component is true;
  attribute fpga_dont_touch of asr_11_0_eebbb884c64b0134:
    component is "true";
  attribute box_type of asr_11_0_eebbb884c64b0134:
    component  is "black_box";
begin
  internal_ce <= ce and en(0);
  padded_addr(addr_width-1 downto 0) <= addr(addr_width-1 downto 0);
  comp0: if ((core_name0 = "asr_11_0_3273ca920bc68c94")) generate
    core_instance0: asr_11_0_3273ca920bc68c94
      port map (
        clk => clk,
        d => d,
        q => q,
        a => padded_addr,
        ce => internal_ce
      );
  end generate;
  comp1: if ((core_name0 = "asr_11_0_eebbb884c64b0134")) generate
    core_instance1: asr_11_0_eebbb884c64b0134
      port map (
        clk => clk,
        d => d,
        q => q,
        a => padded_addr,
        ce => internal_ce
      );
  end generate;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity accum_8a5feb4e65 is
  port (
    b : in std_logic_vector((24 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((24 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end accum_8a5feb4e65;


architecture behavior of accum_8a5feb4e65 is
  signal b_17_24: signed((24 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_41_23: signed((24 - 1) downto 0) := "000000000000000000000000";
  signal accum_reg_41_23_rst: std_logic;
  signal accum_reg_join_47_1: signed((25 - 1) downto 0);
  signal accum_reg_join_47_1_rst: std_logic;
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (accum_reg_41_23_rst = '1')) then
        accum_reg_41_23 <= "000000000000000000000000";
      elsif (ce = '1') then 
        accum_reg_41_23 <= accum_reg_41_23 + b_17_24;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  proc_if_47_1: process (accum_reg_41_23, b_17_24, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1_rst <= '1';
    else 
      accum_reg_join_47_1_rst <= '0';
    end if;
  end process proc_if_47_1;
  accum_reg_41_23_rst <= accum_reg_join_47_1_rst;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_8339ff5117 is
  port (
    a : in std_logic_vector((17 - 1) downto 0);
    b : in std_logic_vector((18 - 1) downto 0);
    s : out std_logic_vector((19 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_8339ff5117;


architecture behavior of addsub_8339ff5117 is
  signal a_17_32: unsigned((17 - 1) downto 0);
  signal b_17_35: signed((18 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((19 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "0000000000000000000");
  signal op_mem_91_20_front_din: signed((19 - 1) downto 0);
  signal op_mem_91_20_back: signed((19 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: signed((19 - 1) downto 0);
  signal cast_69_22: signed((19 - 1) downto 0);
  signal internal_s_69_5_addsub: signed((19 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_signed(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= u2s_cast(a_17_32, 13, 19, 13);
  cast_69_22 <= s2s_cast(b_17_35, 13, 19, 13);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(internal_s_69_5_addsub);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity negate_d33f3e1744 is
  port (
    ip : in std_logic_vector((17 - 1) downto 0);
    op : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end negate_d33f3e1744;


architecture behavior of negate_d33f3e1744 is
  signal ip_18_25: unsigned((17 - 1) downto 0);
  type array_type_op_mem_46_20 is array (0 to (1 - 1)) of signed((18 - 1) downto 0);
  signal op_mem_46_20: array_type_op_mem_46_20 := (
    0 => "000000000000000000");
  signal op_mem_46_20_front_din: signed((18 - 1) downto 0);
  signal op_mem_46_20_back: signed((18 - 1) downto 0);
  signal op_mem_46_20_push_front_pop_back_en: std_logic;
  signal cast_33_24: signed((18 - 1) downto 0);
  signal internal_ip_33_9_neg: signed((18 - 1) downto 0);
begin
  ip_18_25 <= std_logic_vector_to_unsigned(ip);
  op_mem_46_20_back <= op_mem_46_20(0);
  proc_op_mem_46_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_46_20_push_front_pop_back_en = '1')) then
        op_mem_46_20(0) <= op_mem_46_20_front_din;
      end if;
    end if;
  end process proc_op_mem_46_20;
  cast_33_24 <= u2s_cast(ip_18_25, 13, 18, 13);
  internal_ip_33_9_neg <=  -cast_33_24;
  op_mem_46_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(internal_ip_33_9_neg);
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
entity xlsprom is
  generic (
    core_name0: string := "";
    c_width: integer := 12;
    c_address_width: integer := 4;
    latency: integer := 1
  );
  port (
    addr: in std_logic_vector(c_address_width - 1 downto 0);
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0);
    ce: in std_logic;
    clk: in std_logic;
    data: out std_logic_vector(c_width - 1 downto 0)
  );
end xlsprom ;
architecture behavior of xlsprom is
  component synth_reg
    generic (
      width: integer;
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
  signal core_addr: std_logic_vector(c_address_width - 1 downto 0);
  signal core_data_out: std_logic_vector(c_width - 1 downto 0);
  signal core_ce, sinit: std_logic;
  component bmg_63_e0a65e1751572c3a
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_63_e0a65e1751572c3a:
    component is true;
  attribute fpga_dont_touch of bmg_63_e0a65e1751572c3a:
    component is "true";
  attribute box_type of bmg_63_e0a65e1751572c3a:
    component  is "black_box";
  component bmg_63_a62a16bcbafb824b
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_63_a62a16bcbafb824b:
    component is true;
  attribute fpga_dont_touch of bmg_63_a62a16bcbafb824b:
    component is "true";
  attribute box_type of bmg_63_a62a16bcbafb824b:
    component  is "black_box";
  component bmg_63_eba4b6df3bedcfc7
    port (
                              addra: in std_logic_vector(c_address_width - 1 downto 0);
      clka: in std_logic;
      ena: in std_logic;
      douta: out std_logic_vector(c_width - 1 downto 0)
    );
  end component;
  attribute syn_black_box of bmg_63_eba4b6df3bedcfc7:
    component is true;
  attribute fpga_dont_touch of bmg_63_eba4b6df3bedcfc7:
    component is "true";
  attribute box_type of bmg_63_eba4b6df3bedcfc7:
    component  is "black_box";
begin
  core_addr <= addr;
  core_ce <= ce and en(0);
  sinit <= rst(0) and ce;
  comp0: if ((core_name0 = "bmg_63_e0a65e1751572c3a")) generate
    core_instance0: bmg_63_e0a65e1751572c3a
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp1: if ((core_name0 = "bmg_63_a62a16bcbafb824b")) generate
    core_instance1: bmg_63_a62a16bcbafb824b
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  comp2: if ((core_name0 = "bmg_63_eba4b6df3bedcfc7")) generate
    core_instance2: bmg_63_eba4b6df3bedcfc7
      port map (
        addra => core_addr,
        clka => clk,
        ena => core_ce,
        douta => core_data_out
                        );
  end generate;
  latency_test: if (latency > 1) generate
    reg: synth_reg
      generic map (
        width => c_width,
        latency => latency - 1
      )
      port map (
        i => core_data_out,
        ce => core_ce,
        clr => '0',
        clk => clk,
        o => data
      );
  end generate;
  latency_1: if (latency <= 1) generate
    data <= core_data_out;
  end generate;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_d6020f70c3 is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((14 - 1) downto 0);
    d1 : in std_logic_vector((14 - 1) downto 0);
    d2 : in std_logic_vector((14 - 1) downto 0);
    d3 : in std_logic_vector((14 - 1) downto 0);
    y : out std_logic_vector((14 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_d6020f70c3;


architecture behavior of mux_d6020f70c3 is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((14 - 1) downto 0);
  signal d1_1_27: std_logic_vector((14 - 1) downto 0);
  signal d2_1_30: std_logic_vector((14 - 1) downto 0);
  signal d3_1_33: std_logic_vector((14 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((14 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when "10" =>
        unregy_join_6_1 <= d2_1_30;
      when others =>
        unregy_join_6_1 <= d3_1_33;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_6f5ed08684 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    s : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_6f5ed08684;


architecture behavior of addsub_6f5ed08684 is
  signal a_17_32: unsigned((16 - 1) downto 0);
  signal b_17_35: unsigned((16 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of unsigned((17 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00000000000000000");
  signal op_mem_91_20_front_din: unsigned((17 - 1) downto 0);
  signal op_mem_91_20_back: unsigned((17 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_69_18: unsigned((17 - 1) downto 0);
  signal cast_69_22: unsigned((17 - 1) downto 0);
  signal internal_s_69_5_addsub: unsigned((17 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_69_18 <= u2u_cast(a_17_32, 13, 17, 13);
  cast_69_22 <= u2u_cast(b_17_35, 13, 17, 13);
  internal_s_69_5_addsub <= cast_69_18 + cast_69_22;
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= unsigned_to_std_logic_vector(internal_s_69_5_addsub);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_eb6266ebdd is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((11 - 1) downto 0);
    d1 : in std_logic_vector((11 - 1) downto 0);
    y : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_eb6266ebdd;


architecture behavior of mux_eb6266ebdd is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((11 - 1) downto 0);
  signal d1_1_27: std_logic_vector((11 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((11 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
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

entity reinterpret_6b1adb5d55 is
  port (
    input_port : in std_logic_vector((11 - 1) downto 0);
    output_port : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end reinterpret_6b1adb5d55;


architecture behavior of reinterpret_6b1adb5d55 is
  signal input_port_1_40: unsigned((11 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity counter_8ec3f4ab23 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end counter_8ec3f4ab23;


architecture behavior of counter_8ec3f4ab23 is
  signal count_reg_20_23: unsigned((1 - 1) downto 0) := "0";
begin
  proc_count_reg_20_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        count_reg_20_23 <= count_reg_20_23 + std_logic_vector_to_unsigned("1");
      end if;
    end if;
  end process proc_count_reg_20_23;
  op <= unsigned_to_std_logic_vector(count_reg_20_23);
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

entity mcode_block_3f3206dde5 is
  port (
    wrdbus : in std_logic_vector((32 - 1) downto 0);
    bankaddr : in std_logic_vector((2 - 1) downto 0);
    linearaddr : in std_logic_vector((8 - 1) downto 0);
    rnwreg : in std_logic_vector((1 - 1) downto 0);
    addrack : in std_logic_vector((1 - 1) downto 0);
    sm_grf_a : in std_logic_vector((2 - 1) downto 0);
    sm_grf_b : in std_logic_vector((2 - 1) downto 0);
    sm_gbb_b : in std_logic_vector((5 - 1) downto 0);
    sm_gbb_a : in std_logic_vector((5 - 1) downto 0);
    sm_bits_r : in std_logic_vector((10 - 1) downto 0);
    sm_bits_w : in std_logic_vector((10 - 1) downto 0);
    sm_gbb_init : in std_logic_vector((16 - 1) downto 0);
    sm_adj : in std_logic_vector((16 - 1) downto 0);
    sm_dco_iir_coef_fb : in std_logic_vector((18 - 1) downto 0);
    sm_thresholds : in std_logic_vector((32 - 1) downto 0);
    sm_timing : in std_logic_vector((32 - 1) downto 0);
    sm_dco_iir_coef_gain : in std_logic_vector((18 - 1) downto 0);
    sm_avg_len : in std_logic_vector((16 - 1) downto 0);
    sm_agc_en : in std_logic_vector((1 - 1) downto 0);
    sm_dco_timing : in std_logic_vector((32 - 1) downto 0);
    sm_t_db : in std_logic_vector((16 - 1) downto 0);
    sm_mreset_in : in std_logic_vector((1 - 1) downto 0);
    sm_sreset_in : in std_logic_vector((1 - 1) downto 0);
    read_bank_out : out std_logic_vector((32 - 1) downto 0);
    sm_bits_w_din : out std_logic_vector((10 - 1) downto 0);
    sm_bits_w_en : out std_logic_vector((1 - 1) downto 0);
    sm_gbb_init_din : out std_logic_vector((16 - 1) downto 0);
    sm_gbb_init_en : out std_logic_vector((1 - 1) downto 0);
    sm_adj_din : out std_logic_vector((16 - 1) downto 0);
    sm_adj_en : out std_logic_vector((1 - 1) downto 0);
    sm_dco_iir_coef_fb_din : out std_logic_vector((18 - 1) downto 0);
    sm_dco_iir_coef_fb_en : out std_logic_vector((1 - 1) downto 0);
    sm_thresholds_din : out std_logic_vector((32 - 1) downto 0);
    sm_thresholds_en : out std_logic_vector((1 - 1) downto 0);
    sm_timing_din : out std_logic_vector((32 - 1) downto 0);
    sm_timing_en : out std_logic_vector((1 - 1) downto 0);
    sm_dco_iir_coef_gain_din : out std_logic_vector((18 - 1) downto 0);
    sm_dco_iir_coef_gain_en : out std_logic_vector((1 - 1) downto 0);
    sm_avg_len_din : out std_logic_vector((16 - 1) downto 0);
    sm_avg_len_en : out std_logic_vector((1 - 1) downto 0);
    sm_agc_en_din : out std_logic_vector((1 - 1) downto 0);
    sm_agc_en_en : out std_logic_vector((1 - 1) downto 0);
    sm_dco_timing_din : out std_logic_vector((32 - 1) downto 0);
    sm_dco_timing_en : out std_logic_vector((1 - 1) downto 0);
    sm_t_db_din : out std_logic_vector((16 - 1) downto 0);
    sm_t_db_en : out std_logic_vector((1 - 1) downto 0);
    sm_mreset_in_din : out std_logic_vector((1 - 1) downto 0);
    sm_mreset_in_en : out std_logic_vector((1 - 1) downto 0);
    sm_sreset_in_din : out std_logic_vector((1 - 1) downto 0);
    sm_sreset_in_en : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mcode_block_3f3206dde5;


architecture behavior of mcode_block_3f3206dde5 is
  signal wrdbus_1_480: unsigned((32 - 1) downto 0);
  signal bankaddr_1_488: unsigned((2 - 1) downto 0);
  signal linearaddr_1_498: unsigned((8 - 1) downto 0);
  signal rnwreg_1_510: unsigned((1 - 1) downto 0);
  signal addrack_1_518: unsigned((1 - 1) downto 0);
  signal sm_grf_a_1_527: unsigned((2 - 1) downto 0);
  signal sm_grf_b_1_537: unsigned((2 - 1) downto 0);
  signal sm_gbb_b_1_547: unsigned((5 - 1) downto 0);
  signal sm_gbb_a_1_557: unsigned((5 - 1) downto 0);
  signal sm_bits_r_1_567: unsigned((10 - 1) downto 0);
  signal sm_bits_w_1_578: unsigned((10 - 1) downto 0);
  signal sm_gbb_init_1_589: unsigned((16 - 1) downto 0);
  signal sm_adj_1_602: unsigned((16 - 1) downto 0);
  signal sm_dco_iir_coef_fb_1_610: signed((18 - 1) downto 0);
  signal sm_thresholds_1_630: unsigned((32 - 1) downto 0);
  signal sm_timing_1_645: unsigned((32 - 1) downto 0);
  signal sm_dco_iir_coef_gain_1_656: unsigned((18 - 1) downto 0);
  signal sm_avg_len_1_678: unsigned((16 - 1) downto 0);
  signal sm_agc_en_1_690: unsigned((1 - 1) downto 0);
  signal sm_dco_timing_1_701: unsigned((32 - 1) downto 0);
  signal sm_t_db_1_716: unsigned((16 - 1) downto 0);
  signal sm_mreset_in_1_725: unsigned((1 - 1) downto 0);
  signal sm_sreset_in_1_739: unsigned((1 - 1) downto 0);
  signal reg_bank_out_reg_70_30_next: unsigned((32 - 1) downto 0);
  signal reg_bank_out_reg_70_30: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal read_bank_out_reg_268_31_next: unsigned((32 - 1) downto 0);
  signal read_bank_out_reg_268_31: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal bankaddr_reg_271_26_next: unsigned((2 - 1) downto 0);
  signal bankaddr_reg_271_26: unsigned((2 - 1) downto 0) := "00";
  signal sm_dco_iir_coef_fb_dout_33_1_force: unsigned((18 - 1) downto 0);
  signal rel_73_4: boolean;
  signal rel_75_8: boolean;
  signal rel_77_8: boolean;
  signal rel_79_8: boolean;
  signal rel_81_8: boolean;
  signal rel_83_8: boolean;
  signal rel_85_8: boolean;
  signal rel_87_8: boolean;
  signal rel_89_8: boolean;
  signal rel_91_8: boolean;
  signal rel_93_8: boolean;
  signal rel_95_8: boolean;
  signal rel_97_8: boolean;
  signal rel_99_8: boolean;
  signal rel_101_8: boolean;
  signal rel_103_8: boolean;
  signal rel_105_8: boolean;
  signal rel_107_8: boolean;
  signal reg_bank_out_reg_join_73_1: unsigned((32 - 1) downto 0);
  signal opcode_119_1_concat: unsigned((12 - 1) downto 0);
  signal rel_140_4: boolean;
  signal sm_bits_w_en_join_140_1: boolean;
  signal rel_146_4: boolean;
  signal sm_gbb_init_en_join_146_1: boolean;
  signal rel_152_4: boolean;
  signal sm_adj_en_join_152_1: boolean;
  signal rel_158_4: boolean;
  signal sm_dco_iir_coef_fb_en_join_158_1: boolean;
  signal rel_164_4: boolean;
  signal sm_thresholds_en_join_164_1: boolean;
  signal rel_170_4: boolean;
  signal sm_timing_en_join_170_1: boolean;
  signal rel_176_4: boolean;
  signal sm_dco_iir_coef_gain_en_join_176_1: boolean;
  signal rel_182_4: boolean;
  signal sm_avg_len_en_join_182_1: boolean;
  signal rel_188_4: boolean;
  signal sm_agc_en_en_join_188_1: boolean;
  signal rel_194_4: boolean;
  signal sm_dco_timing_en_join_194_1: boolean;
  signal rel_200_4: boolean;
  signal sm_t_db_en_join_200_1: boolean;
  signal rel_206_4: boolean;
  signal sm_mreset_in_en_join_206_1: boolean;
  signal rel_212_4: boolean;
  signal sm_sreset_in_en_join_212_1: boolean;
  signal slice_227_34: unsigned((10 - 1) downto 0);
  signal slice_230_36: unsigned((16 - 1) downto 0);
  signal slice_233_31: unsigned((16 - 1) downto 0);
  signal slice_236_43: unsigned((18 - 1) downto 0);
  signal sm_dco_iir_coef_fb_din_236_1_force: signed((18 - 1) downto 0);
  signal slice_239_38: unsigned((32 - 1) downto 0);
  signal slice_242_34: unsigned((32 - 1) downto 0);
  signal slice_245_45: unsigned((18 - 1) downto 0);
  signal slice_248_35: unsigned((16 - 1) downto 0);
  signal slice_251_34: unsigned((1 - 1) downto 0);
  signal slice_254_38: unsigned((32 - 1) downto 0);
  signal slice_257_32: unsigned((16 - 1) downto 0);
  signal slice_260_37: unsigned((1 - 1) downto 0);
  signal slice_263_37: unsigned((1 - 1) downto 0);
  signal rel_273_4: boolean;
  signal rel_276_8: boolean;
  signal rel_279_8: boolean;
  signal rel_282_8: boolean;
  signal read_bank_out_reg_join_273_1: unsigned((32 - 1) downto 0);
begin
  wrdbus_1_480 <= std_logic_vector_to_unsigned(wrdbus);
  bankaddr_1_488 <= std_logic_vector_to_unsigned(bankaddr);
  linearaddr_1_498 <= std_logic_vector_to_unsigned(linearaddr);
  rnwreg_1_510 <= std_logic_vector_to_unsigned(rnwreg);
  addrack_1_518 <= std_logic_vector_to_unsigned(addrack);
  sm_grf_a_1_527 <= std_logic_vector_to_unsigned(sm_grf_a);
  sm_grf_b_1_537 <= std_logic_vector_to_unsigned(sm_grf_b);
  sm_gbb_b_1_547 <= std_logic_vector_to_unsigned(sm_gbb_b);
  sm_gbb_a_1_557 <= std_logic_vector_to_unsigned(sm_gbb_a);
  sm_bits_r_1_567 <= std_logic_vector_to_unsigned(sm_bits_r);
  sm_bits_w_1_578 <= std_logic_vector_to_unsigned(sm_bits_w);
  sm_gbb_init_1_589 <= std_logic_vector_to_unsigned(sm_gbb_init);
  sm_adj_1_602 <= std_logic_vector_to_unsigned(sm_adj);
  sm_dco_iir_coef_fb_1_610 <= std_logic_vector_to_signed(sm_dco_iir_coef_fb);
  sm_thresholds_1_630 <= std_logic_vector_to_unsigned(sm_thresholds);
  sm_timing_1_645 <= std_logic_vector_to_unsigned(sm_timing);
  sm_dco_iir_coef_gain_1_656 <= std_logic_vector_to_unsigned(sm_dco_iir_coef_gain);
  sm_avg_len_1_678 <= std_logic_vector_to_unsigned(sm_avg_len);
  sm_agc_en_1_690 <= std_logic_vector_to_unsigned(sm_agc_en);
  sm_dco_timing_1_701 <= std_logic_vector_to_unsigned(sm_dco_timing);
  sm_t_db_1_716 <= std_logic_vector_to_unsigned(sm_t_db);
  sm_mreset_in_1_725 <= std_logic_vector_to_unsigned(sm_mreset_in);
  sm_sreset_in_1_739 <= std_logic_vector_to_unsigned(sm_sreset_in);
  proc_reg_bank_out_reg_70_30: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        reg_bank_out_reg_70_30 <= reg_bank_out_reg_70_30_next;
      end if;
    end if;
  end process proc_reg_bank_out_reg_70_30;
  proc_read_bank_out_reg_268_31: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        read_bank_out_reg_268_31 <= read_bank_out_reg_268_31_next;
      end if;
    end if;
  end process proc_read_bank_out_reg_268_31;
  proc_bankaddr_reg_271_26: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        bankaddr_reg_271_26 <= bankaddr_reg_271_26_next;
      end if;
    end if;
  end process proc_bankaddr_reg_271_26;
  sm_dco_iir_coef_fb_dout_33_1_force <= signed_to_unsigned(sm_dco_iir_coef_fb_1_610);
  rel_73_4 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00001101");
  rel_75_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00001110");
  rel_77_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00001111");
  rel_79_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00010000");
  rel_81_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00010001");
  rel_83_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00000000");
  rel_85_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00000001");
  rel_87_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00000010");
  rel_89_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00000011");
  rel_91_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00000100");
  rel_93_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00000101");
  rel_95_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00000110");
  rel_97_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00000111");
  rel_99_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00001000");
  rel_101_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00001001");
  rel_103_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00001010");
  rel_105_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00001011");
  rel_107_8 <= linearaddr_1_498 = std_logic_vector_to_unsigned("00001100");
  proc_if_73_1: process (reg_bank_out_reg_70_30, rel_101_8, rel_103_8, rel_105_8, rel_107_8, rel_73_4, rel_75_8, rel_77_8, rel_79_8, rel_81_8, rel_83_8, rel_85_8, rel_87_8, rel_89_8, rel_91_8, rel_93_8, rel_95_8, rel_97_8, rel_99_8, sm_adj_1_602, sm_agc_en_1_690, sm_avg_len_1_678, sm_bits_r_1_567, sm_bits_w_1_578, sm_dco_iir_coef_fb_dout_33_1_force, sm_dco_iir_coef_gain_1_656, sm_dco_timing_1_701, sm_gbb_a_1_557, sm_gbb_b_1_547, sm_gbb_init_1_589, sm_grf_a_1_527, sm_grf_b_1_537, sm_mreset_in_1_725, sm_sreset_in_1_739, sm_t_db_1_716, sm_thresholds_1_630, sm_timing_1_645)
  is
  begin
    if rel_73_4 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_grf_a_1_527, 0, 32, 0);
    elsif rel_75_8 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_grf_b_1_537, 0, 32, 0);
    elsif rel_77_8 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_gbb_b_1_547, 0, 32, 0);
    elsif rel_79_8 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_gbb_a_1_557, 0, 32, 0);
    elsif rel_81_8 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_bits_r_1_567, 0, 32, 0);
    elsif rel_83_8 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_bits_w_1_578, 0, 32, 0);
    elsif rel_85_8 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_gbb_init_1_589, 0, 32, 0);
    elsif rel_87_8 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_adj_1_602, 0, 32, 0);
    elsif rel_89_8 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_dco_iir_coef_fb_dout_33_1_force, 0, 32, 0);
    elsif rel_91_8 then
      reg_bank_out_reg_join_73_1 <= sm_thresholds_1_630;
    elsif rel_93_8 then
      reg_bank_out_reg_join_73_1 <= sm_timing_1_645;
    elsif rel_95_8 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_dco_iir_coef_gain_1_656, 0, 32, 0);
    elsif rel_97_8 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_avg_len_1_678, 0, 32, 0);
    elsif rel_99_8 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_agc_en_1_690, 0, 32, 0);
    elsif rel_101_8 then
      reg_bank_out_reg_join_73_1 <= sm_dco_timing_1_701;
    elsif rel_103_8 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_t_db_1_716, 0, 32, 0);
    elsif rel_105_8 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_mreset_in_1_725, 0, 32, 0);
    elsif rel_107_8 then
      reg_bank_out_reg_join_73_1 <= u2u_cast(sm_sreset_in_1_739, 0, 32, 0);
    else 
      reg_bank_out_reg_join_73_1 <= reg_bank_out_reg_70_30;
    end if;
  end process proc_if_73_1;
  opcode_119_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(addrack_1_518) & unsigned_to_std_logic_vector(rnwreg_1_510) & unsigned_to_std_logic_vector(bankaddr_1_488) & unsigned_to_std_logic_vector(linearaddr_1_498));
  rel_140_4 <= opcode_119_1_concat = std_logic_vector_to_unsigned("101000000000");
  proc_if_140_1: process (rel_140_4)
  is
  begin
    if rel_140_4 then
      sm_bits_w_en_join_140_1 <= true;
    else 
      sm_bits_w_en_join_140_1 <= false;
    end if;
  end process proc_if_140_1;
  rel_146_4 <= opcode_119_1_concat = std_logic_vector_to_unsigned("101000000001");
  proc_if_146_1: process (rel_146_4)
  is
  begin
    if rel_146_4 then
      sm_gbb_init_en_join_146_1 <= true;
    else 
      sm_gbb_init_en_join_146_1 <= false;
    end if;
  end process proc_if_146_1;
  rel_152_4 <= opcode_119_1_concat = std_logic_vector_to_unsigned("101000000010");
  proc_if_152_1: process (rel_152_4)
  is
  begin
    if rel_152_4 then
      sm_adj_en_join_152_1 <= true;
    else 
      sm_adj_en_join_152_1 <= false;
    end if;
  end process proc_if_152_1;
  rel_158_4 <= opcode_119_1_concat = std_logic_vector_to_unsigned("101000000011");
  proc_if_158_1: process (rel_158_4)
  is
  begin
    if rel_158_4 then
      sm_dco_iir_coef_fb_en_join_158_1 <= true;
    else 
      sm_dco_iir_coef_fb_en_join_158_1 <= false;
    end if;
  end process proc_if_158_1;
  rel_164_4 <= opcode_119_1_concat = std_logic_vector_to_unsigned("101000000100");
  proc_if_164_1: process (rel_164_4)
  is
  begin
    if rel_164_4 then
      sm_thresholds_en_join_164_1 <= true;
    else 
      sm_thresholds_en_join_164_1 <= false;
    end if;
  end process proc_if_164_1;
  rel_170_4 <= opcode_119_1_concat = std_logic_vector_to_unsigned("101000000101");
  proc_if_170_1: process (rel_170_4)
  is
  begin
    if rel_170_4 then
      sm_timing_en_join_170_1 <= true;
    else 
      sm_timing_en_join_170_1 <= false;
    end if;
  end process proc_if_170_1;
  rel_176_4 <= opcode_119_1_concat = std_logic_vector_to_unsigned("101000000110");
  proc_if_176_1: process (rel_176_4)
  is
  begin
    if rel_176_4 then
      sm_dco_iir_coef_gain_en_join_176_1 <= true;
    else 
      sm_dco_iir_coef_gain_en_join_176_1 <= false;
    end if;
  end process proc_if_176_1;
  rel_182_4 <= opcode_119_1_concat = std_logic_vector_to_unsigned("101000000111");
  proc_if_182_1: process (rel_182_4)
  is
  begin
    if rel_182_4 then
      sm_avg_len_en_join_182_1 <= true;
    else 
      sm_avg_len_en_join_182_1 <= false;
    end if;
  end process proc_if_182_1;
  rel_188_4 <= opcode_119_1_concat = std_logic_vector_to_unsigned("101000001000");
  proc_if_188_1: process (rel_188_4)
  is
  begin
    if rel_188_4 then
      sm_agc_en_en_join_188_1 <= true;
    else 
      sm_agc_en_en_join_188_1 <= false;
    end if;
  end process proc_if_188_1;
  rel_194_4 <= opcode_119_1_concat = std_logic_vector_to_unsigned("101000001001");
  proc_if_194_1: process (rel_194_4)
  is
  begin
    if rel_194_4 then
      sm_dco_timing_en_join_194_1 <= true;
    else 
      sm_dco_timing_en_join_194_1 <= false;
    end if;
  end process proc_if_194_1;
  rel_200_4 <= opcode_119_1_concat = std_logic_vector_to_unsigned("101000001010");
  proc_if_200_1: process (rel_200_4)
  is
  begin
    if rel_200_4 then
      sm_t_db_en_join_200_1 <= true;
    else 
      sm_t_db_en_join_200_1 <= false;
    end if;
  end process proc_if_200_1;
  rel_206_4 <= opcode_119_1_concat = std_logic_vector_to_unsigned("101000001011");
  proc_if_206_1: process (rel_206_4)
  is
  begin
    if rel_206_4 then
      sm_mreset_in_en_join_206_1 <= true;
    else 
      sm_mreset_in_en_join_206_1 <= false;
    end if;
  end process proc_if_206_1;
  rel_212_4 <= opcode_119_1_concat = std_logic_vector_to_unsigned("101000001100");
  proc_if_212_1: process (rel_212_4)
  is
  begin
    if rel_212_4 then
      sm_sreset_in_en_join_212_1 <= true;
    else 
      sm_sreset_in_en_join_212_1 <= false;
    end if;
  end process proc_if_212_1;
  slice_227_34 <= u2u_slice(wrdbus_1_480, 9, 0);
  slice_230_36 <= u2u_slice(wrdbus_1_480, 15, 0);
  slice_233_31 <= u2u_slice(wrdbus_1_480, 15, 0);
  slice_236_43 <= u2u_slice(wrdbus_1_480, 17, 0);
  sm_dco_iir_coef_fb_din_236_1_force <= unsigned_to_signed(slice_236_43);
  slice_239_38 <= u2u_slice(wrdbus_1_480, 31, 0);
  slice_242_34 <= u2u_slice(wrdbus_1_480, 31, 0);
  slice_245_45 <= u2u_slice(wrdbus_1_480, 17, 0);
  slice_248_35 <= u2u_slice(wrdbus_1_480, 15, 0);
  slice_251_34 <= u2u_slice(wrdbus_1_480, 0, 0);
  slice_254_38 <= u2u_slice(wrdbus_1_480, 31, 0);
  slice_257_32 <= u2u_slice(wrdbus_1_480, 15, 0);
  slice_260_37 <= u2u_slice(wrdbus_1_480, 0, 0);
  slice_263_37 <= u2u_slice(wrdbus_1_480, 0, 0);
  rel_273_4 <= bankaddr_reg_271_26 = std_logic_vector_to_unsigned("00");
  rel_276_8 <= bankaddr_reg_271_26 = std_logic_vector_to_unsigned("01");
  rel_279_8 <= bankaddr_reg_271_26 = std_logic_vector_to_unsigned("10");
  rel_282_8 <= bankaddr_reg_271_26 = std_logic_vector_to_unsigned("11");
  proc_if_273_1: process (read_bank_out_reg_268_31, reg_bank_out_reg_70_30, rel_273_4, rel_276_8, rel_279_8, rel_282_8)
  is
  begin
    if rel_273_4 then
      read_bank_out_reg_join_273_1 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    elsif rel_276_8 then
      read_bank_out_reg_join_273_1 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    elsif rel_279_8 then
      read_bank_out_reg_join_273_1 <= reg_bank_out_reg_70_30;
    elsif rel_282_8 then
      read_bank_out_reg_join_273_1 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    else 
      read_bank_out_reg_join_273_1 <= read_bank_out_reg_268_31;
    end if;
  end process proc_if_273_1;
  reg_bank_out_reg_70_30_next <= reg_bank_out_reg_join_73_1;
  read_bank_out_reg_268_31_next <= read_bank_out_reg_join_273_1;
  bankaddr_reg_271_26_next <= bankaddr_1_488;
  read_bank_out <= unsigned_to_std_logic_vector(read_bank_out_reg_268_31);
  sm_bits_w_din <= unsigned_to_std_logic_vector(slice_227_34);
  sm_bits_w_en <= boolean_to_vector(sm_bits_w_en_join_140_1);
  sm_gbb_init_din <= unsigned_to_std_logic_vector(slice_230_36);
  sm_gbb_init_en <= boolean_to_vector(sm_gbb_init_en_join_146_1);
  sm_adj_din <= unsigned_to_std_logic_vector(slice_233_31);
  sm_adj_en <= boolean_to_vector(sm_adj_en_join_152_1);
  sm_dco_iir_coef_fb_din <= signed_to_std_logic_vector(sm_dco_iir_coef_fb_din_236_1_force);
  sm_dco_iir_coef_fb_en <= boolean_to_vector(sm_dco_iir_coef_fb_en_join_158_1);
  sm_thresholds_din <= unsigned_to_std_logic_vector(slice_239_38);
  sm_thresholds_en <= boolean_to_vector(sm_thresholds_en_join_164_1);
  sm_timing_din <= unsigned_to_std_logic_vector(slice_242_34);
  sm_timing_en <= boolean_to_vector(sm_timing_en_join_170_1);
  sm_dco_iir_coef_gain_din <= unsigned_to_std_logic_vector(slice_245_45);
  sm_dco_iir_coef_gain_en <= boolean_to_vector(sm_dco_iir_coef_gain_en_join_176_1);
  sm_avg_len_din <= unsigned_to_std_logic_vector(slice_248_35);
  sm_avg_len_en <= boolean_to_vector(sm_avg_len_en_join_182_1);
  sm_agc_en_din <= unsigned_to_std_logic_vector(slice_251_34);
  sm_agc_en_en <= boolean_to_vector(sm_agc_en_en_join_188_1);
  sm_dco_timing_din <= unsigned_to_std_logic_vector(slice_254_38);
  sm_dco_timing_en <= boolean_to_vector(sm_dco_timing_en_join_194_1);
  sm_t_db_din <= unsigned_to_std_logic_vector(slice_257_32);
  sm_t_db_en <= boolean_to_vector(sm_t_db_en_join_200_1);
  sm_mreset_in_din <= unsigned_to_std_logic_vector(slice_260_37);
  sm_mreset_in_en <= boolean_to_vector(sm_mreset_in_en_join_206_1);
  sm_sreset_in_din <= unsigned_to_std_logic_vector(slice_263_37);
  sm_sreset_in_en <= boolean_to_vector(sm_sreset_in_en_join_212_1);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity accum_9a3e8dffc1 is
  port (
    b : in std_logic_vector((11 - 1) downto 0);
    rst : in std_logic_vector((1 - 1) downto 0);
    q : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end accum_9a3e8dffc1;


architecture behavior of accum_9a3e8dffc1 is
  signal b_17_24: signed((11 - 1) downto 0);
  signal rst_17_27: boolean;
  signal accum_reg_41_23: signed((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal accum_reg_41_23_rst: std_logic;
  signal cast_51_42: signed((32 - 1) downto 0);
  signal accum_reg_join_47_1: signed((33 - 1) downto 0);
  signal accum_reg_join_47_1_rst: std_logic;
begin
  b_17_24 <= std_logic_vector_to_signed(b);
  rst_17_27 <= ((rst) = "1");
  proc_accum_reg_41_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (accum_reg_41_23_rst = '1')) then
        accum_reg_41_23 <= "00000000000000000000000000000000";
      elsif (ce = '1') then 
        accum_reg_41_23 <= accum_reg_41_23 + cast_51_42;
      end if;
    end if;
  end process proc_accum_reg_41_23;
  cast_51_42 <= s2s_cast(b_17_24, 0, 32, 0);
  proc_if_47_1: process (accum_reg_41_23, cast_51_42, rst_17_27)
  is
  begin
    if rst_17_27 then
      accum_reg_join_47_1_rst <= '1';
    else 
      accum_reg_join_47_1_rst <= '0';
    end if;
  end process proc_if_47_1;
  accum_reg_41_23_rst <= accum_reg_join_47_1_rst;
  q <= signed_to_std_logic_vector(accum_reg_41_23);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_c8b57b79d7 is
  port (
    a : in std_logic_vector((10 - 1) downto 0);
    b : in std_logic_vector((10 - 1) downto 0);
    s : out std_logic_vector((11 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_c8b57b79d7;


architecture behavior of addsub_c8b57b79d7 is
  signal a_17_32: unsigned((10 - 1) downto 0);
  signal b_17_35: unsigned((10 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((11 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "00000000000");
  signal op_mem_91_20_front_din: signed((11 - 1) downto 0);
  signal op_mem_91_20_back: signed((11 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((12 - 1) downto 0);
  signal cast_71_22: signed((12 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((12 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((11 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_unsigned(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= u2s_cast(a_17_32, 0, 12, 0);
  cast_71_22 <= u2s_cast(b_17_35, 0, 12, 0);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_71_5_addsub, 0, 11, 0);
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(cast_internal_s_83_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity addsub_63482f4701 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((8 - 1) downto 0);
    s : out std_logic_vector((18 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end addsub_63482f4701;


architecture behavior of addsub_63482f4701 is
  signal a_17_32: signed((16 - 1) downto 0);
  signal b_17_35: unsigned((8 - 1) downto 0);
  type array_type_op_mem_91_20 is array (0 to (1 - 1)) of signed((18 - 1) downto 0);
  signal op_mem_91_20: array_type_op_mem_91_20 := (
    0 => "000000000000000000");
  signal op_mem_91_20_front_din: signed((18 - 1) downto 0);
  signal op_mem_91_20_back: signed((18 - 1) downto 0);
  signal op_mem_91_20_push_front_pop_back_en: std_logic;
  type array_type_cout_mem_92_22 is array (0 to (1 - 1)) of unsigned((1 - 1) downto 0);
  signal cout_mem_92_22: array_type_cout_mem_92_22 := (
    0 => "0");
  signal cout_mem_92_22_front_din: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_back: unsigned((1 - 1) downto 0);
  signal cout_mem_92_22_push_front_pop_back_en: std_logic;
  signal prev_mode_93_22_next: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22: unsigned((3 - 1) downto 0);
  signal prev_mode_93_22_reg_i: std_logic_vector((3 - 1) downto 0);
  signal prev_mode_93_22_reg_o: std_logic_vector((3 - 1) downto 0);
  signal cast_71_18: signed((17 - 1) downto 0);
  signal cast_71_22: signed((17 - 1) downto 0);
  signal internal_s_71_5_addsub: signed((17 - 1) downto 0);
  signal cast_internal_s_83_3_convert: signed((18 - 1) downto 0);
begin
  a_17_32 <= std_logic_vector_to_signed(a);
  b_17_35 <= std_logic_vector_to_unsigned(b);
  op_mem_91_20_back <= op_mem_91_20(0);
  proc_op_mem_91_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_91_20_push_front_pop_back_en = '1')) then
        op_mem_91_20(0) <= op_mem_91_20_front_din;
      end if;
    end if;
  end process proc_op_mem_91_20;
  cout_mem_92_22_back <= cout_mem_92_22(0);
  proc_cout_mem_92_22: process (clk)
  is
    variable i_x_000000: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (cout_mem_92_22_push_front_pop_back_en = '1')) then
        cout_mem_92_22(0) <= cout_mem_92_22_front_din;
      end if;
    end if;
  end process proc_cout_mem_92_22;
  prev_mode_93_22_reg_i <= unsigned_to_std_logic_vector(prev_mode_93_22_next);
  prev_mode_93_22 <= std_logic_vector_to_unsigned(prev_mode_93_22_reg_o);
  prev_mode_93_22_reg_inst: entity work.synth_reg_w_init
    generic map (
      init_index => 2, 
      init_value => b"010", 
      latency => 1, 
      width => 3)
    port map (
      ce => ce, 
      clk => clk, 
      clr => clr, 
      i => prev_mode_93_22_reg_i, 
      o => prev_mode_93_22_reg_o);
  cast_71_18 <= s2s_cast(a_17_32, 2, 17, 2);
  cast_71_22 <= u2s_cast(b_17_35, 0, 17, 2);
  internal_s_71_5_addsub <= cast_71_18 - cast_71_22;
  cast_internal_s_83_3_convert <= s2s_cast(internal_s_71_5_addsub, 2, 18, 0);
  op_mem_91_20_push_front_pop_back_en <= '0';
  cout_mem_92_22_push_front_pop_back_en <= '0';
  prev_mode_93_22_next <= std_logic_vector_to_unsigned("000");
  s <= signed_to_std_logic_vector(cast_internal_s_83_3_convert);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_d6fea9f88b is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_d6fea9f88b;


architecture behavior of constant_d6fea9f88b is
begin
  op <= "01100100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_810cef0700 is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_810cef0700;


architecture behavior of constant_810cef0700 is
begin
  op <= "01000100";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_7a558caa36 is
  port (
    op : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_7a558caa36;


architecture behavior of constant_7a558caa36 is
begin
  op <= "01010001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_998e20a1ca is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((8 - 1) downto 0);
    d1 : in std_logic_vector((8 - 1) downto 0);
    d2 : in std_logic_vector((8 - 1) downto 0);
    d3 : in std_logic_vector((8 - 1) downto 0);
    y : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_998e20a1ca;


architecture behavior of mux_998e20a1ca is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((8 - 1) downto 0);
  signal d1_1_27: std_logic_vector((8 - 1) downto 0);
  signal d2_1_30: std_logic_vector((8 - 1) downto 0);
  signal d3_1_33: std_logic_vector((8 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((8 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when "10" =>
        unregy_join_6_1 <= d2_1_30;
      when others =>
        unregy_join_6_1 <= d3_1_33;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_1ea878a24a is
  port (
    op : out std_logic_vector((10 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_1ea878a24a;


architecture behavior of constant_1ea878a24a is
begin
  op <= "0001000110";
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
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/BB_setting"

entity bb_setting_entity_14e7e7e397 is
  port (
    adj: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    g_rf: in std_logic_vector(1 downto 0); 
    gbb_init: in std_logic_vector(7 downto 0); 
    rssi_est: in std_logic_vector(17 downto 0); 
    rst: in std_logic; 
    t_db: in std_logic_vector(7 downto 0); 
    g_bb_est: out std_logic_vector(7 downto 0)
  );
end bb_setting_entity_14e7e7e397;

architecture structural of bb_setting_entity_14e7e7e397 is
  signal addsub1_s_net: std_logic_vector(9 downto 0);
  signal addsub2_s_net: std_logic_vector(8 downto 0);
  signal addsub3_s_net: std_logic_vector(7 downto 0);
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal constant1_op_net: std_logic_vector(5 downto 0);
  signal constant2_op_net: std_logic_vector(5 downto 0);
  signal constant3_op_net: std_logic;
  signal constant4_op_net: std_logic_vector(5 downto 0);
  signal constant5_op_net: std_logic_vector(5 downto 0);
  signal convert2_dout_net: std_logic_vector(7 downto 0);
  signal convert5_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert7_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x0: std_logic_vector(7 downto 0);
  signal logical2_y_net_x0: std_logic;
  signal mux1_y_net_x0: std_logic_vector(7 downto 0);
  signal mux_y_net: std_logic_vector(5 downto 0);
  signal register2_q_net_x0: std_logic_vector(1 downto 0);
  signal register3_q_net_x0: std_logic_vector(17 downto 0);
  signal register_q_net: std_logic;
  signal relational1_op_net_x0: std_logic;

begin
  convert5_dout_net_x0 <= adj;
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  relational1_op_net_x0 <= en;
  register2_q_net_x0 <= g_rf;
  convert7_dout_net_x0 <= gbb_init;
  register3_q_net_x0 <= rssi_est;
  logical2_y_net_x0 <= rst;
  convert8_dout_net_x0 <= t_db;
  g_bb_est <= mux1_y_net_x0;

  addsub1: entity work.xladdsub
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 9,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 8,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 10,
      core_name0 => "addsb_11_0_821bdda5b43881fc",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 10,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 10
    )
    port map (
      a => addsub2_s_net,
      b => convert2_dout_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      s => addsub1_s_net
    );

  addsub2: entity work.xladdsub
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 8,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 6,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 9,
      core_name0 => "addsb_11_0_c66688b5fa9e8cc0",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 9,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 9
    )
    port map (
      a => convert8_dout_net_x0,
      b => mux_y_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      s => addsub2_s_net
    );

  addsub3: entity work.xladdsub
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 10,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 8,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 11,
      core_name0 => "addsb_11_0_946139e686745147",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 11,
      latency => 0,
      overflow => 2,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 8
    )
    port map (
      a => addsub1_s_net,
      b => convert5_dout_net_x0,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      s => addsub3_s_net
    );

  constant1: entity work.constant_c11beaf011
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_961b61f8a1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  constant4: entity work.constant_7ea0f2fff7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  constant5: entity work.constant_7ea0f2fff7
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant5_op_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din => register3_q_net_x0,
      en => "1",
      dout => convert2_dout_net
    );

  mux: entity work.mux_593ae85213
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => constant4_op_net,
      d1 => constant5_op_net,
      d2 => constant1_op_net,
      d3 => constant2_op_net,
      sel => register2_q_net_x0,
      y => mux_y_net
    );

  mux1: entity work.mux_387191112d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert7_dout_net_x0,
      d1 => addsub3_s_net,
      sel(0) => register_q_net,
      y => mux1_y_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => constant3_op_net,
      en(0) => relational1_op_net_x0,
      rst(0) => logical2_y_net_x0,
      q(0) => register_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/DCO_correction/AVG_I"

entity avg_i_entity_c5981d6706 is
  port (
    ce_4: in std_logic; 
    clk_4: in std_logic; 
    i_in_x0: in std_logic_vector(13 downto 0); 
    m_reset: in std_logic; 
    avg_i_out: out std_logic_vector(14 downto 0)
  );
end avg_i_entity_c5981d6706;

architecture structural of avg_i_entity_c5981d6706 is
  signal accumulator_q_net: std_logic_vector(17 downto 0);
  signal addsub_s_net: std_logic_vector(15 downto 0);
  signal ce_4_sg_x0: std_logic;
  signal clk_4_sg_x0: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(14 downto 0);
  signal delay_q_net: std_logic_vector(13 downto 0);
  signal down_sample4_q_net_x0: std_logic;
  signal i_in_x1: std_logic_vector(13 downto 0);
  signal negate_i_op_net: std_logic_vector(14 downto 0);
  signal register15_q_net: std_logic_vector(13 downto 0);
  signal scale_op_net: std_logic_vector(17 downto 0);

begin
  ce_4_sg_x0 <= ce_4;
  clk_4_sg_x0 <= clk_4;
  i_in_x1 <= i_in_x0;
  down_sample4_q_net_x0 <= m_reset;
  avg_i_out <= convert1_dout_net_x0;

  accumulator: entity work.accum_2b721ebdb1
    port map (
      b => addsub_s_net,
      ce => ce_4_sg_x0,
      clk => clk_4_sg_x0,
      clr => '0',
      rst(0) => down_sample4_q_net_x0,
      q => accumulator_q_net
    );

  addsub: entity work.addsub_8bbd89a03e
    port map (
      a => register15_q_net,
      b => negate_i_op_net,
      ce => ce_4_sg_x0,
      clk => clk_4_sg_x0,
      clr => '0',
      s => addsub_s_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 14,
      dout_width => 15,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_4_sg_x0,
      clk => clk_4_sg_x0,
      clr => '0',
      din => scale_op_net,
      en => "1",
      dout => convert1_dout_net_x0
    );

  delay: entity work.xldelay
    generic map (
      latency => 16,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_4_sg_x0,
      clk => clk_4_sg_x0,
      d => register15_q_net,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  negate_i: entity work.negate_19f16a3a71
    port map (
      ce => ce_4_sg_x0,
      clk => clk_4_sg_x0,
      clr => '0',
      ip => delay_q_net,
      op => negate_i_op_net
    );

  register15: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_4_sg_x0,
      clk => clk_4_sg_x0,
      d => i_in_x1,
      en => "1",
      rst(0) => down_sample4_q_net_x0,
      q => register15_q_net
    );

  scale: entity work.scale_1768584a8d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => accumulator_q_net,
      op => scale_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/DCO_correction/AVG_Q"

entity avg_q_entity_b4e47a4e76 is
  port (
    ce_4: in std_logic; 
    clk_4: in std_logic; 
    i_in: in std_logic_vector(13 downto 0); 
    m_reset: in std_logic; 
    avg_i_out: out std_logic_vector(14 downto 0)
  );
end avg_q_entity_b4e47a4e76;

architecture structural of avg_q_entity_b4e47a4e76 is
  signal accumulator_q_net: std_logic_vector(17 downto 0);
  signal addsub_s_net: std_logic_vector(15 downto 0);
  signal ce_4_sg_x1: std_logic;
  signal clk_4_sg_x1: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(14 downto 0);
  signal delay_q_net: std_logic_vector(13 downto 0);
  signal down_sample4_q_net_x1: std_logic;
  signal negate_i_op_net: std_logic_vector(14 downto 0);
  signal q_in_x0: std_logic_vector(13 downto 0);
  signal register15_q_net: std_logic_vector(13 downto 0);
  signal scale_op_net: std_logic_vector(17 downto 0);

begin
  ce_4_sg_x1 <= ce_4;
  clk_4_sg_x1 <= clk_4;
  q_in_x0 <= i_in;
  down_sample4_q_net_x1 <= m_reset;
  avg_i_out <= convert1_dout_net_x0;

  accumulator: entity work.accum_2b721ebdb1
    port map (
      b => addsub_s_net,
      ce => ce_4_sg_x1,
      clk => clk_4_sg_x1,
      clr => '0',
      rst(0) => down_sample4_q_net_x1,
      q => accumulator_q_net
    );

  addsub: entity work.addsub_8bbd89a03e
    port map (
      a => register15_q_net,
      b => negate_i_op_net,
      ce => ce_4_sg_x1,
      clk => clk_4_sg_x1,
      clr => '0',
      s => addsub_s_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 17,
      din_width => 18,
      dout_arith => 2,
      dout_bin_pt => 14,
      dout_width => 15,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_4_sg_x1,
      clk => clk_4_sg_x1,
      clr => '0',
      din => scale_op_net,
      en => "1",
      dout => convert1_dout_net_x0
    );

  delay: entity work.xldelay
    generic map (
      latency => 16,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_4_sg_x1,
      clk => clk_4_sg_x1,
      d => register15_q_net,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  negate_i: entity work.negate_19f16a3a71
    port map (
      ce => ce_4_sg_x1,
      clk => clk_4_sg_x1,
      clr => '0',
      ip => delay_q_net,
      op => negate_i_op_net
    );

  register15: entity work.xlregister
    generic map (
      d_width => 14,
      init_value => b"00000000000000"
    )
    port map (
      ce => ce_4_sg_x1,
      clk => clk_4_sg_x1,
      d => q_in_x0,
      en => "1",
      rst(0) => down_sample4_q_net_x1,
      q => register15_q_net
    );

  scale: entity work.scale_1768584a8d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => accumulator_q_net,
      op => scale_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/DCO_correction/Butterworth_IIR_HP_4to1/Timing"

entity timing_entity_76596055e6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    counter: out std_logic_vector(1 downto 0); 
    x1: out std_logic; 
    x2: out std_logic; 
    x3: out std_logic; 
    x4: out std_logic
  );
end timing_entity_76596055e6;

architecture structural of timing_entity_76596055e6 is
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal cnt_op_net_x0: std_logic_vector(1 downto 0);
  signal constant1_op_net: std_logic_vector(1 downto 0);
  signal constant2_op_net: std_logic_vector(1 downto 0);
  signal constant3_op_net: std_logic_vector(1 downto 0);
  signal constant4_op_net: std_logic_vector(1 downto 0);
  signal delay_q_net: std_logic_vector(1 downto 0);
  signal relational1_op_net_x0: std_logic;
  signal relational2_op_net_x0: std_logic;
  signal relational3_op_net_x0: std_logic;
  signal relational4_op_net_x0: std_logic;

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  counter <= cnt_op_net_x0;
  x1 <= relational1_op_net_x0;
  x2 <= relational2_op_net_x0;
  x3 <= relational3_op_net_x0;
  x4 <= relational4_op_net_x0;

  cnt: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_3166d4cc5b09c744",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en => "1",
      rst => "0",
      op => cnt_op_net_x0
    );

  constant1: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_e8ddc079e9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  constant4: entity work.constant_3a9a3daeb9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant4_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 2
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d => cnt_op_net_x0,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  relational1: entity work.relational_5f1eb17108
    port map (
      a => delay_q_net,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net_x0
    );

  relational2: entity work.relational_5f1eb17108
    port map (
      a => delay_q_net,
      b => constant2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net_x0
    );

  relational3: entity work.relational_5f1eb17108
    port map (
      a => delay_q_net,
      b => constant3_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net_x0
    );

  relational4: entity work.relational_5f1eb17108
    port map (
      a => delay_q_net,
      b => constant4_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational4_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/DCO_correction/Butterworth_IIR_HP_4to1"

entity butterworth_iir_hp_4to1_entity_4963b9ce1e is
  port (
    ce_1: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_4: in std_logic; 
    dco_iir_coef_fb: in std_logic_vector(17 downto 0); 
    dco_iir_coef_gain: in std_logic_vector(17 downto 0); 
    i_in: in std_logic_vector(17 downto 0); 
    q_in: in std_logic_vector(17 downto 0); 
    rst: in std_logic; 
    i_out: out std_logic_vector(37 downto 0); 
    q_out: out std_logic_vector(37 downto 0)
  );
end butterworth_iir_hp_4to1_entity_4963b9ce1e;

architecture structural of butterworth_iir_hp_4to1_entity_4963b9ce1e is
  signal addsub4_s_net: std_logic_vector(36 downto 0);
  signal addsub5_s_net: std_logic_vector(37 downto 0);
  signal ce_1_sg_x2: std_logic;
  signal ce_4_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal clk_4_sg_x2: std_logic;
  signal cnt_op_net_x0: std_logic_vector(1 downto 0);
  signal convert1_dout_net: std_logic;
  signal convert_dout_net: std_logic_vector(1 downto 0);
  signal down_sample1_q_net_x0: std_logic_vector(37 downto 0);
  signal down_sample_q_net_x0: std_logic_vector(37 downto 0);
  signal from_register4_data_out_net_x0: std_logic_vector(17 downto 0);
  signal from_register7_data_out_net_x0: std_logic_vector(17 downto 0);
  signal mult_p_net: std_logic_vector(35 downto 0);
  signal mux1_y_net: std_logic_vector(35 downto 0);
  signal mux3_y_net: std_logic_vector(35 downto 0);
  signal mux4_y_net: std_logic_vector(35 downto 0);
  signal mux_y_net: std_logic_vector(19 downto 0);
  signal register1_q_net: std_logic_vector(35 downto 0);
  signal register1_q_net_x1: std_logic_vector(17 downto 0);
  signal register2_q_net: std_logic_vector(37 downto 0);
  signal register2_q_net_x1: std_logic;
  signal register3_q_net: std_logic_vector(35 downto 0);
  signal register4_q_net: std_logic_vector(35 downto 0);
  signal register5_q_net: std_logic_vector(37 downto 0);
  signal register_q_net: std_logic_vector(35 downto 0);
  signal register_q_net_x1: std_logic_vector(17 downto 0);
  signal relational1_op_net_x0: std_logic;
  signal relational2_op_net_x0: std_logic;
  signal relational3_op_net_x0: std_logic;
  signal relational4_op_net_x0: std_logic;
  signal slice_y_net: std_logic;
  signal up_sample1_q_net: std_logic_vector(17 downto 0);
  signal up_sample_q_net: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x2 <= ce_1;
  ce_4_sg_x2 <= ce_4;
  clk_1_sg_x2 <= clk_1;
  clk_4_sg_x2 <= clk_4;
  from_register7_data_out_net_x0 <= dco_iir_coef_fb;
  from_register4_data_out_net_x0 <= dco_iir_coef_gain;
  register_q_net_x1 <= i_in;
  register1_q_net_x1 <= q_in;
  register2_q_net_x1 <= rst;
  i_out <= down_sample1_q_net_x0;
  q_out <= down_sample_q_net_x0;

  addsub4: entity work.addsub_ed45fac9a9
    port map (
      a => mult_p_net,
      b => mux3_y_net,
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      s => addsub4_s_net
    );

  addsub5: entity work.addsub_9579f61149
    port map (
      a => addsub4_s_net,
      b => mux4_y_net,
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      s => addsub5_s_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 2,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 2,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din => cnt_op_net_x0,
      en => "1",
      dout => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din(0) => slice_y_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 32,
      d_width => 38,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 32,
      q_width => 38
    )
    port map (
      d => register2_q_net,
      dest_ce => ce_4_sg_x2,
      dest_clk => clk_4_sg_x2,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x2,
      src_clk => clk_1_sg_x2,
      src_clr => '0',
      q => down_sample_q_net_x0
    );

  down_sample1: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 32,
      d_width => 38,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 32,
      q_width => 38
    )
    port map (
      d => register5_q_net,
      dest_ce => ce_4_sg_x2,
      dest_clk => clk_4_sg_x2,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x2,
      src_clk => clk_1_sg_x2,
      src_clr => '0',
      q => down_sample1_q_net_x0
    );

  mult: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 17,
      a_width => 20,
      b_arith => xlSigned,
      b_bin_pt => 32,
      b_width => 36,
      c_a_type => 0,
      c_a_width => 20,
      c_b_type => 0,
      c_b_width => 36,
      c_baat => 20,
      c_output_width => 56,
      c_type => 0,
      core_name0 => "mult_11_2_9d1a903664e67a0f",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 32,
      p_width => 36,
      quantization => 1
    )
    port map (
      a => mux_y_net,
      b => mux1_y_net,
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      core_ce => ce_1_sg_x2,
      core_clk => clk_1_sg_x2,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net
    );

  mux: entity work.mux_d77f41c555
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => up_sample_q_net,
      d1 => up_sample1_q_net,
      d2 => from_register7_data_out_net_x0,
      d3 => from_register7_data_out_net_x0,
      sel => convert_dout_net,
      y => mux_y_net
    );

  mux1: entity work.mux_71f9f8178b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => from_register4_data_out_net_x0,
      d1 => from_register4_data_out_net_x0,
      d2 => register5_q_net,
      d3 => register2_q_net,
      sel => convert_dout_net,
      y => mux1_y_net
    );

  mux3: entity work.mux_afe0c53bfb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => register3_q_net,
      d1 => register_q_net,
      sel(0) => convert1_dout_net,
      y => mux3_y_net
    );

  mux4: entity work.mux_afe0c53bfb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => register4_q_net,
      d1 => register1_q_net,
      sel(0) => convert1_dout_net,
      y => mux4_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 36,
      init_value => b"000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => mult_p_net,
      en(0) => relational4_op_net_x0,
      rst(0) => register2_q_net_x1,
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 38,
      init_value => b"00000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => addsub5_s_net,
      en(0) => relational2_op_net_x0,
      rst(0) => register2_q_net_x1,
      q => register2_q_net
    );

  register3: entity work.xlregister
    generic map (
      d_width => 36,
      init_value => b"000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => mult_p_net,
      en(0) => relational1_op_net_x0,
      rst(0) => register2_q_net_x1,
      q => register3_q_net
    );

  register4: entity work.xlregister
    generic map (
      d_width => 36,
      init_value => b"000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => mult_p_net,
      en(0) => relational3_op_net_x0,
      rst(0) => register2_q_net_x1,
      q => register4_q_net
    );

  register5: entity work.xlregister
    generic map (
      d_width => 38,
      init_value => b"00000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => addsub5_s_net,
      en(0) => relational1_op_net_x0,
      rst(0) => register2_q_net_x1,
      q => register5_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 36,
      init_value => b"000000000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => mult_p_net,
      en(0) => relational2_op_net_x0,
      rst(0) => register2_q_net_x1,
      q => register_q_net
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 1,
      new_msb => 1,
      x_width => 2,
      y_width => 1
    )
    port map (
      x => cnt_op_net_x0,
      y(0) => slice_y_net
    );

  timing_76596055e6: entity work.timing_entity_76596055e6
    port map (
      ce_1 => ce_1_sg_x2,
      clk_1 => clk_1_sg_x2,
      counter => cnt_op_net_x0,
      x1 => relational1_op_net_x0,
      x2 => relational2_op_net_x0,
      x3 => relational3_op_net_x0,
      x4 => relational4_op_net_x0
    );

  up_sample: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 18,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 18
    )
    port map (
      d => register_q_net_x1,
      dest_ce => ce_1_sg_x2,
      dest_clk => clk_1_sg_x2,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x2,
      src_clk => clk_4_sg_x2,
      src_clr => '0',
      q => up_sample_q_net
    );

  up_sample1: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 15,
      d_width => 18,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 15,
      q_width => 18
    )
    port map (
      d => register1_q_net_x1,
      dest_ce => ce_1_sg_x2,
      dest_clk => clk_1_sg_x2,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x2,
      src_clk => clk_4_sg_x2,
      src_clr => '0',
      q => up_sample1_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/DCO_correction/SR Latch"

entity sr_latch_entity_5ebf12fa98 is
  port (
    ce_4: in std_logic; 
    clk_4: in std_logic; 
    r: in std_logic; 
    s: in std_logic; 
    out1: out std_logic
  );
end sr_latch_entity_5ebf12fa98;

architecture structural of sr_latch_entity_5ebf12fa98 is
  signal ce_4_sg_x3: std_logic;
  signal clk_4_sg_x3: std_logic;
  signal constant_op_net: std_logic;
  signal down_sample_q_net_x0: std_logic;
  signal register2_q_net_x2: std_logic;
  signal relational3_op_net_x0: std_logic;

begin
  ce_4_sg_x3 <= ce_4;
  clk_4_sg_x3 <= clk_4;
  relational3_op_net_x0 <= r;
  down_sample_q_net_x0 <= s;
  out1 <= register2_q_net_x2;

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_4_sg_x3,
      clk => clk_4_sg_x3,
      d(0) => constant_op_net,
      en(0) => down_sample_q_net_x0,
      rst(0) => relational3_op_net_x0,
      q(0) => register2_q_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/DCO_correction/Subsystem"

entity subsystem_entity_f79d47c643 is
  port (
    ce_1: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_4: in std_logic; 
    us_in: in std_logic; 
    ds_out: out std_logic
  );
end subsystem_entity_f79d47c643;

architecture structural of subsystem_entity_f79d47c643 is
  signal ce_1_sg_x3: std_logic;
  signal ce_4_sg_x4: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal clk_4_sg_x4: std_logic;
  signal constant_op_net: std_logic;
  signal delay_q_net: std_logic;
  signal down_sample_q_net_x1: std_logic;
  signal inverter_op_net: std_logic;
  signal logical2_y_net_x1: std_logic;
  signal logical_y_net: std_logic;
  signal register_q_net: std_logic;
  signal up_sample_q_net: std_logic;

begin
  ce_1_sg_x3 <= ce_1;
  ce_4_sg_x4 <= ce_4;
  clk_1_sg_x3 <= clk_1;
  clk_4_sg_x4 <= clk_4;
  logical2_y_net_x1 <= us_in;
  ds_out <= down_sample_q_net_x1;

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_4_sg_x4,
      clk => clk_4_sg_x4,
      d(0) => down_sample_q_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => register_q_net,
      dest_ce => ce_4_sg_x4,
      dest_clk => clk_4_sg_x4,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x3,
      src_clk => clk_1_sg_x3,
      src_clr => '0',
      q(0) => down_sample_q_net_x1
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_4_sg_x4,
      clk => clk_4_sg_x4,
      clr => '0',
      ip(0) => delay_q_net,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => down_sample_q_net_x1,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      d(0) => constant_op_net,
      en(0) => logical2_y_net_x1,
      rst(0) => up_sample_q_net,
      q(0) => register_q_net
    );

  up_sample: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      latency => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => logical_y_net,
      dest_ce => ce_1_sg_x3,
      dest_clk => clk_1_sg_x3,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x4,
      src_clk => clk_4_sg_x4,
      src_clr => '0',
      q(0) => up_sample_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/DCO_correction/Timing/Demux"

entity demux_entity_ba96c1dab7 is
  port (
    ce_4: in std_logic; 
    clk_4: in std_logic; 
    in1: in std_logic_vector(31 downto 0); 
    hi: out std_logic_vector(7 downto 0); 
    mh: out std_logic_vector(7 downto 0); 
    ml: out std_logic_vector(7 downto 0)
  );
end demux_entity_ba96c1dab7;

architecture structural of demux_entity_ba96c1dab7 is
  signal ce_4_sg_x5: std_logic;
  signal clk_4_sg_x5: std_logic;
  signal convert2_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert3_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert4_dout_net_x0: std_logic_vector(7 downto 0);
  signal down_sample_q_net_x0: std_logic_vector(31 downto 0);
  signal slice16_23_y_net: std_logic_vector(7 downto 0);
  signal slice24_32_y_net: std_logic_vector(7 downto 0);
  signal slice8_15_y_net: std_logic_vector(7 downto 0);

begin
  ce_4_sg_x5 <= ce_4;
  clk_4_sg_x5 <= clk_4;
  down_sample_q_net_x0 <= in1;
  hi <= convert4_dout_net_x0;
  mh <= convert3_dout_net_x0;
  ml <= convert2_dout_net_x0;

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_4_sg_x5,
      clk => clk_4_sg_x5,
      clr => '0',
      din => slice8_15_y_net,
      en => "1",
      dout => convert2_dout_net_x0
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_4_sg_x5,
      clk => clk_4_sg_x5,
      clr => '0',
      din => slice16_23_y_net,
      en => "1",
      dout => convert3_dout_net_x0
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_4_sg_x5,
      clk => clk_4_sg_x5,
      clr => '0',
      din => slice24_32_y_net,
      en => "1",
      dout => convert4_dout_net_x0
    );

  slice16_23: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 23,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => down_sample_q_net_x0,
      y => slice16_23_y_net
    );

  slice24_32: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 31,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => down_sample_q_net_x0,
      y => slice24_32_y_net
    );

  slice8_15: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => down_sample_q_net_x0,
      y => slice8_15_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/DCO_correction/Timing"

entity timing_entity_39735d33ff is
  port (
    ce_1: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_4: in std_logic; 
    en: in std_logic; 
    rst: in std_logic; 
    timing: in std_logic_vector(31 downto 0); 
    both_48_64: out std_logic; 
    x70: out std_logic
  );
end timing_entity_39735d33ff;

architecture structural of timing_entity_39735d33ff is
  signal ce_1_sg_x4: std_logic;
  signal ce_4_sg_x6: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal clk_4_sg_x6: std_logic;
  signal convert2_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert3_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert4_dout_net_x0: std_logic_vector(7 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal down_sample_q_net_x0: std_logic_vector(31 downto 0);
  signal down_sample_q_net_x2: std_logic;
  signal down_sample_q_net_x3: std_logic;
  signal from_register11_data_out_net_x0: std_logic_vector(31 downto 0);
  signal inverter_op_net: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net_x1: std_logic;

begin
  ce_1_sg_x4 <= ce_1;
  ce_4_sg_x6 <= ce_4;
  clk_1_sg_x4 <= clk_1;
  clk_4_sg_x6 <= clk_4;
  down_sample_q_net_x2 <= en;
  down_sample_q_net_x3 <= rst;
  from_register11_data_out_net_x0 <= timing;
  both_48_64 <= logical1_y_net_x0;
  x70 <= relational3_op_net_x1;

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_25e8694ab5ef84df",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_4_sg_x6,
      clk => clk_4_sg_x6,
      clr => '0',
      en(0) => logical_y_net,
      rst(0) => down_sample_q_net_x3,
      op => counter_op_net
    );

  demux_ba96c1dab7: entity work.demux_entity_ba96c1dab7
    port map (
      ce_4 => ce_4_sg_x6,
      clk_4 => clk_4_sg_x6,
      in1 => down_sample_q_net_x0,
      hi => convert4_dout_net_x0,
      mh => convert3_dout_net_x0,
      ml => convert2_dout_net_x0
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 32,
      ds_ratio => 4,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 32
    )
    port map (
      d => from_register11_data_out_net_x0,
      dest_ce => ce_4_sg_x6,
      dest_clk => clk_4_sg_x6,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x4,
      src_clk => clk_1_sg_x4,
      src_clr => '0',
      q => down_sample_q_net_x0
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_4_sg_x6,
      clk => clk_4_sg_x6,
      clr => '0',
      ip(0) => relational3_op_net_x1,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => down_sample_q_net_x2,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational1_op_net,
      d1(0) => relational2_op_net,
      y(0) => logical1_y_net_x0
    );

  relational1: entity work.relational_54048c8b02
    port map (
      a => counter_op_net,
      b => convert2_dout_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_54048c8b02
    port map (
      a => counter_op_net,
      b => convert3_dout_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_54048c8b02
    port map (
      a => counter_op_net,
      b => convert4_dout_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/DCO_correction"

entity dco_correction_entity_916f0af4a6 is
  port (
    ce_1: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_4: in std_logic; 
    dco_mode: in std_logic_vector(1 downto 0); 
    dcotiming: in std_logic_vector(31 downto 0); 
    en_sub: in std_logic; 
    from_register4: in std_logic_vector(17 downto 0); 
    from_register7: in std_logic_vector(17 downto 0); 
    i_in: in std_logic_vector(13 downto 0); 
    locked: in std_logic; 
    m_reset: in std_logic; 
    q_in: in std_logic_vector(13 downto 0); 
    reset: in std_logic; 
    i_out: out std_logic_vector(37 downto 0); 
    q_out: out std_logic_vector(37 downto 0)
  );
end dco_correction_entity_916f0af4a6;

architecture structural of dco_correction_entity_916f0af4a6 is
  signal addsub1_s_net: std_logic_vector(17 downto 0);
  signal addsub_s_net: std_logic_vector(17 downto 0);
  signal avg2_q_net: std_logic_vector(15 downto 0);
  signal avg_q_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x5: std_logic;
  signal ce_4_sg_x7: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal clk_4_sg_x7: std_logic;
  signal constant1_op_net: std_logic;
  signal convert11_dout_net_x0: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(14 downto 0);
  signal convert1_dout_net_x1: std_logic_vector(14 downto 0);
  signal convert_dout_net: std_logic;
  signal delay1_q_net: std_logic;
  signal delay2_q_net: std_logic_vector(13 downto 0);
  signal delay_q_net: std_logic_vector(13 downto 0);
  signal down_sample1_q_net_x0: std_logic_vector(37 downto 0);
  signal down_sample2_q_net: std_logic;
  signal down_sample3_q_net: std_logic_vector(1 downto 0);
  signal down_sample4_q_net_x1: std_logic;
  signal down_sample_q_net_x0: std_logic_vector(37 downto 0);
  signal down_sample_q_net_x2: std_logic;
  signal down_sample_q_net_x3: std_logic;
  signal from_register11_data_out_net_x1: std_logic_vector(31 downto 0);
  signal from_register4_data_out_net_x1: std_logic_vector(17 downto 0);
  signal from_register7_data_out_net_x1: std_logic_vector(17 downto 0);
  signal i_in_x2: std_logic_vector(13 downto 0);
  signal logical1_y_net_x0: std_logic;
  signal logical2_y_net_x2: std_logic;
  signal mux1_y_net: std_logic_vector(37 downto 0);
  signal mux2_y_net: std_logic_vector(16 downto 0);
  signal mux3_y_net_x0: std_logic_vector(37 downto 0);
  signal mux4_y_net: std_logic_vector(16 downto 0);
  signal mux5_y_net_x0: std_logic_vector(37 downto 0);
  signal mux_y_net: std_logic_vector(37 downto 0);
  signal q_in_x1: std_logic_vector(13 downto 0);
  signal register1_q_net_x1: std_logic_vector(17 downto 0);
  signal register2_q_net_x2: std_logic;
  signal register_q_net_x1: std_logic_vector(17 downto 0);
  signal relational3_op_net_x0: std_logic;
  signal relational3_op_net_x1: std_logic;
  signal relational_op_net_x0: std_logic;
  signal scale1_op_net: std_logic_vector(15 downto 0);
  signal scale_op_net: std_logic_vector(15 downto 0);
  signal slice5_y_net_x0: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x5 <= ce_1;
  ce_4_sg_x7 <= ce_4;
  clk_1_sg_x5 <= clk_1;
  clk_4_sg_x7 <= clk_4;
  slice5_y_net_x0 <= dco_mode;
  from_register11_data_out_net_x1 <= dcotiming;
  convert11_dout_net_x0 <= en_sub;
  from_register4_data_out_net_x1 <= from_register4;
  from_register7_data_out_net_x1 <= from_register7;
  i_in_x2 <= i_in;
  relational3_op_net_x0 <= locked;
  relational_op_net_x0 <= m_reset;
  q_in_x1 <= q_in;
  logical2_y_net_x2 <= reset;
  i_out <= mux3_y_net_x0;
  q_out <= mux5_y_net_x0;

  addsub: entity work.addsub_e019abb457
    port map (
      a => i_in_x2,
      b => mux2_y_net,
      ce => ce_4_sg_x7,
      clk => clk_4_sg_x7,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_e019abb457
    port map (
      a => q_in_x1,
      b => mux4_y_net,
      ce => ce_4_sg_x7,
      clk => clk_4_sg_x7,
      clr => '0',
      s => addsub1_s_net
    );

  avg: entity work.accum_4b12803c7d
    port map (
      b => convert1_dout_net_x0,
      ce => ce_4_sg_x7,
      clk => clk_4_sg_x7,
      clr => '0',
      en(0) => logical1_y_net_x0,
      rst(0) => down_sample_q_net_x3,
      q => avg_q_net
    );

  avg2: entity work.accum_4b12803c7d
    port map (
      b => convert1_dout_net_x1,
      ce => ce_4_sg_x7,
      clk => clk_4_sg_x7,
      clr => '0',
      en(0) => logical1_y_net_x0,
      rst(0) => down_sample_q_net_x3,
      q => avg2_q_net
    );

  avg_i_c5981d6706: entity work.avg_i_entity_c5981d6706
    port map (
      ce_4 => ce_4_sg_x7,
      clk_4 => clk_4_sg_x7,
      i_in_x0 => i_in_x2,
      m_reset => down_sample4_q_net_x1,
      avg_i_out => convert1_dout_net_x0
    );

  avg_q_b4e47a4e76: entity work.avg_q_entity_b4e47a4e76
    port map (
      ce_4 => ce_4_sg_x7,
      clk_4 => clk_4_sg_x7,
      i_in => q_in_x1,
      m_reset => down_sample4_q_net_x1,
      avg_i_out => convert1_dout_net_x1
    );

  butterworth_iir_hp_4to1_4963b9ce1e: entity work.butterworth_iir_hp_4to1_entity_4963b9ce1e
    port map (
      ce_1 => ce_1_sg_x5,
      ce_4 => ce_4_sg_x7,
      clk_1 => clk_1_sg_x5,
      clk_4 => clk_4_sg_x7,
      dco_iir_coef_fb => from_register7_data_out_net_x1,
      dco_iir_coef_gain => from_register4_data_out_net_x1,
      i_in => register_q_net_x1,
      q_in => register1_q_net_x1,
      rst => register2_q_net_x2,
      i_out => down_sample1_q_net_x0,
      q_out => down_sample_q_net_x0
    );

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_4_sg_x7,
      clk => clk_4_sg_x7,
      clr => '0',
      din(0) => relational3_op_net_x1,
      en => "1",
      dout(0) => convert_dout_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_4_sg_x7,
      clk => clk_4_sg_x7,
      d => q_in_x1,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_4_sg_x7,
      clk => clk_4_sg_x7,
      d(0) => convert_dout_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  delay2: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_4_sg_x7,
      clk => clk_4_sg_x7,
      d => i_in_x2,
      en => '1',
      rst => '1',
      q => delay2_q_net
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 4,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => relational3_op_net_x0,
      dest_ce => ce_4_sg_x7,
      dest_clk => clk_4_sg_x7,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x5,
      src_clk => clk_1_sg_x5,
      src_clr => '0',
      q(0) => down_sample_q_net_x2
    );

  down_sample2: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 4,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => convert11_dout_net_x0,
      dest_ce => ce_4_sg_x7,
      dest_clk => clk_4_sg_x7,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x5,
      src_clk => clk_1_sg_x5,
      src_clr => '0',
      q(0) => down_sample2_q_net
    );

  down_sample3: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 2,
      ds_ratio => 4,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 2
    )
    port map (
      d => slice5_y_net_x0,
      dest_ce => ce_4_sg_x7,
      dest_clk => clk_4_sg_x7,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x5,
      src_clk => clk_1_sg_x5,
      src_clr => '0',
      q => down_sample3_q_net
    );

  down_sample4: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 4,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => relational_op_net_x0,
      dest_ce => ce_4_sg_x7,
      dest_clk => clk_4_sg_x7,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x5,
      src_clk => clk_1_sg_x5,
      src_clr => '0',
      q(0) => down_sample4_q_net_x1
    );

  mux: entity work.mux_923aefe70d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => delay2_q_net,
      d1 => down_sample1_q_net_x0,
      sel(0) => delay1_q_net,
      y => mux_y_net
    );

  mux1: entity work.mux_923aefe70d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => delay_q_net,
      d1 => down_sample_q_net_x0,
      sel(0) => delay1_q_net,
      y => mux1_y_net
    );

  mux2: entity work.mux_cb76b902aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant1_op_net,
      d1 => scale_op_net,
      sel(0) => down_sample2_q_net,
      y => mux2_y_net
    );

  mux3: entity work.mux_5cbb6cffcb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => i_in_x2,
      d1 => register_q_net_x1,
      d2 => mux_y_net,
      sel => down_sample3_q_net,
      y => mux3_y_net_x0
    );

  mux4: entity work.mux_cb76b902aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant1_op_net,
      d1 => scale1_op_net,
      sel(0) => down_sample2_q_net,
      y => mux4_y_net
    );

  mux5: entity work.mux_5cbb6cffcb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => q_in_x1,
      d1 => register1_q_net_x1,
      d2 => mux1_y_net,
      sel => down_sample3_q_net,
      y => mux5_y_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 18,
      init_value => b"000000000000000000"
    )
    port map (
      ce => ce_4_sg_x7,
      clk => clk_4_sg_x7,
      d => addsub1_s_net,
      en => "1",
      rst(0) => register2_q_net_x2,
      q => register1_q_net_x1
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 18,
      init_value => b"000000000000000000"
    )
    port map (
      ce => ce_4_sg_x7,
      clk => clk_4_sg_x7,
      d => addsub_s_net,
      en => "1",
      rst(0) => register2_q_net_x2,
      q => register_q_net_x1
    );

  scale: entity work.scale_fa7c2ab9f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => avg_q_net,
      op => scale_op_net
    );

  scale1: entity work.scale_fa7c2ab9f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => avg2_q_net,
      op => scale1_op_net
    );

  sr_latch_5ebf12fa98: entity work.sr_latch_entity_5ebf12fa98
    port map (
      ce_4 => ce_4_sg_x7,
      clk_4 => clk_4_sg_x7,
      r => relational3_op_net_x1,
      s => down_sample_q_net_x3,
      out1 => register2_q_net_x2
    );

  subsystem_f79d47c643: entity work.subsystem_entity_f79d47c643
    port map (
      ce_1 => ce_1_sg_x5,
      ce_4 => ce_4_sg_x7,
      clk_1 => clk_1_sg_x5,
      clk_4 => clk_4_sg_x7,
      us_in => logical2_y_net_x2,
      ds_out => down_sample_q_net_x3
    );

  timing_39735d33ff: entity work.timing_entity_39735d33ff
    port map (
      ce_1 => ce_1_sg_x5,
      ce_4 => ce_4_sg_x7,
      clk_1 => clk_1_sg_x5,
      clk_4 => clk_4_sg_x7,
      en => down_sample_q_net_x2,
      rst => down_sample_q_net_x3,
      timing => from_register11_data_out_net_x1,
      both_48_64 => logical1_y_net_x0,
      x70 => relational3_op_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/Finalize_gBB"

entity finalize_gbb_entity_3e46182ede is
  port (
    adj: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    g_bb: in std_logic_vector(7 downto 0); 
    rst: in std_logic; 
    t_db: in std_logic_vector(7 downto 0); 
    viq: in std_logic_vector(8 downto 0); 
    g_bb_out: out std_logic_vector(12 downto 0)
  );
end finalize_gbb_entity_3e46182ede;

architecture structural of finalize_gbb_entity_3e46182ede is
  signal addsub1_s_net: std_logic_vector(11 downto 0);
  signal addsub_s_net: std_logic_vector(10 downto 0);
  signal adja_s_net: std_logic_vector(12 downto 0);
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal constant3_op_net: std_logic;
  signal convert6_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x1: std_logic_vector(7 downto 0);
  signal down_sample2_q_net_x0: std_logic_vector(8 downto 0);
  signal logical2_y_net_x3: std_logic;
  signal mux1_y_net_x1: std_logic_vector(7 downto 0);
  signal mux1_y_net_x2: std_logic_vector(12 downto 0);
  signal register1_q_net: std_logic;
  signal register2_q_net: std_logic_vector(12 downto 0);
  signal relational2_op_net_x0: std_logic;

begin
  convert6_dout_net_x0 <= adj;
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  relational2_op_net_x0 <= en;
  mux1_y_net_x1 <= g_bb;
  logical2_y_net_x3 <= rst;
  convert8_dout_net_x1 <= t_db;
  down_sample2_q_net_x0 <= viq;
  g_bb_out <= mux1_y_net_x2;

  addsub: entity work.xladdsub
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 2,
      a_width => 9,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 8,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 11,
      core_name0 => "addsb_11_0_1a72527b8e6ebf38",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 11,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 2,
      s_width => 11
    )
    port map (
      a => down_sample2_q_net_x0,
      b => convert8_dout_net_x1,
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      en => "1",
      s => addsub_s_net
    );

  addsub1: entity work.xladdsub
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 8,
      b_arith => xlSigned,
      b_bin_pt => 2,
      b_width => 11,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 12,
      core_name0 => "addsb_11_0_79238328d5792da3",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 12,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 2,
      s_width => 12
    )
    port map (
      a => mux1_y_net_x1,
      b => addsub_s_net,
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      en => "1",
      s => addsub1_s_net
    );

  adja: entity work.xladdsub
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 2,
      a_width => 12,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 8,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 13,
      core_name0 => "addsb_11_0_e24076645e4ac860",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 13,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 2,
      s_width => 13
    )
    port map (
      a => addsub1_s_net,
      b => convert6_dout_net_x0,
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      en => "1",
      s => adja_s_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net
    );

  mux1: entity work.mux_511c8efe77
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => mux1_y_net_x1,
      d1 => register2_q_net,
      sel(0) => register1_q_net,
      y => mux1_y_net_x2
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d(0) => constant3_op_net,
      en(0) => relational2_op_net_x0,
      rst(0) => logical2_y_net_x3,
      q(0) => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 13,
      init_value => b"0000000000000"
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d => adja_s_net,
      en(0) => relational2_op_net_x0,
      rst => "0",
      q => register2_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/RF_setting/8bit_slicer1"

entity x8bit_slicer1_entity_330120d52a is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in1: in std_logic_vector(31 downto 0); 
    out1: out std_logic_vector(7 downto 0); 
    out2: out std_logic_vector(7 downto 0); 
    out3: out std_logic_vector(7 downto 0)
  );
end x8bit_slicer1_entity_330120d52a;

architecture structural of x8bit_slicer1_entity_330120d52a is
  signal ce_1_sg_x7: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal convert4_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert5_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert6_dout_net_x0: std_logic_vector(7 downto 0);
  signal from_register6_data_out_net_x0: std_logic_vector(31 downto 0);
  signal slice1_y_net: std_logic_vector(7 downto 0);
  signal slice2_y_net: std_logic_vector(7 downto 0);
  signal slice3_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x7 <= ce_1;
  clk_1_sg_x7 <= clk_1;
  from_register6_data_out_net_x0 <= in1;
  out1 <= convert4_dout_net_x0;
  out2 <= convert5_dout_net_x0;
  out3 <= convert6_dout_net_x0;

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din => slice1_y_net,
      en => "1",
      dout => convert4_dout_net_x0
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din => slice2_y_net,
      en => "1",
      dout => convert5_dout_net_x0
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din => slice3_y_net,
      en => "1",
      dout => convert6_dout_net_x0
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => from_register6_data_out_net_x0,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => from_register6_data_out_net_x0,
      y => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 23,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => from_register6_data_out_net_x0,
      y => slice3_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/RF_setting"

entity rf_setting_entity_c8fdcb112d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    rssi_in: in std_logic_vector(17 downto 0); 
    rst: in std_logic; 
    thresholds: in std_logic_vector(31 downto 0); 
    g_rf: out std_logic_vector(1 downto 0); 
    rssi_lock: out std_logic_vector(17 downto 0); 
    toolow: out std_logic
  );
end rf_setting_entity_c8fdcb112d;

architecture structural of rf_setting_entity_c8fdcb112d is
  signal addsub4_s_net: std_logic_vector(1 downto 0);
  signal addsub5_s_net: std_logic_vector(2 downto 0);
  signal addsub6_s_net: std_logic_vector(1 downto 0);
  signal addsub_s_net_x0: std_logic_vector(17 downto 0);
  signal ce_1_sg_x8: std_logic;
  signal clk_1_sg_x8: std_logic;
  signal constant1_op_net: std_logic;
  signal convert4_dout_net: std_logic;
  signal convert4_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert5_dout_net: std_logic;
  signal convert5_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert6_dout_net: std_logic;
  signal convert6_dout_net_x0: std_logic_vector(7 downto 0);
  signal from_register6_data_out_net_x1: std_logic_vector(31 downto 0);
  signal logical2_y_net_x4: std_logic;
  signal register1_q_net_x0: std_logic;
  signal register2_q_net_x1: std_logic_vector(1 downto 0);
  signal register3_q_net_x1: std_logic_vector(17 downto 0);
  signal relational4_op_net: std_logic;
  signal relational5_op_net: std_logic;
  signal relational6_op_net: std_logic;
  signal relational_op_net_x0: std_logic;

begin
  ce_1_sg_x8 <= ce_1;
  clk_1_sg_x8 <= clk_1;
  relational_op_net_x0 <= en;
  addsub_s_net_x0 <= rssi_in;
  logical2_y_net_x4 <= rst;
  from_register6_data_out_net_x1 <= thresholds;
  g_rf <= register2_q_net_x1;
  rssi_lock <= register3_q_net_x1;
  toolow <= register1_q_net_x0;

  addsub4: entity work.addsub_b4036865b8
    port map (
      a(0) => convert4_dout_net,
      b(0) => convert5_dout_net,
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      s => addsub4_s_net
    );

  addsub5: entity work.xladdsub
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_3b8d8925e647b605",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => addsub4_s_net,
      b(0) => convert6_dout_net,
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      en => "1",
      s => addsub5_s_net
    );

  addsub6: entity work.xladdsub
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 3,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 4,
      core_name0 => "addsb_11_0_4e449b79a6edba32",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 4,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 2
    )
    port map (
      a => addsub5_s_net,
      b(0) => constant1_op_net,
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      en => "1",
      s => addsub6_s_net
    );

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      din(0) => relational4_op_net,
      en => "1",
      dout(0) => convert4_dout_net
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      din(0) => relational5_op_net,
      en => "1",
      dout(0) => convert5_dout_net
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      din(0) => relational6_op_net,
      en => "1",
      dout(0) => convert6_dout_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d(0) => relational4_op_net,
      en(0) => relational_op_net_x0,
      rst(0) => logical2_y_net_x4,
      q(0) => register1_q_net_x0
    );

  register2: entity work.xlregister
    generic map (
      d_width => 2,
      init_value => b"11"
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => addsub6_s_net,
      en(0) => relational_op_net_x0,
      rst(0) => logical2_y_net_x4,
      q => register2_q_net_x1
    );

  register3: entity work.xlregister
    generic map (
      d_width => 18,
      init_value => b"000000000000000000"
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => addsub_s_net_x0,
      en(0) => relational_op_net_x0,
      rst(0) => logical2_y_net_x4,
      q => register3_q_net_x1
    );

  relational4: entity work.relational_7aff091e92
    port map (
      a => addsub_s_net_x0,
      b => convert4_dout_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational4_op_net
    );

  relational5: entity work.relational_7aff091e92
    port map (
      a => addsub_s_net_x0,
      b => convert5_dout_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net
    );

  relational6: entity work.relational_7aff091e92
    port map (
      a => addsub_s_net_x0,
      b => convert6_dout_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational6_op_net
    );

  x8bit_slicer1_330120d52a: entity work.x8bit_slicer1_entity_330120d52a
    port map (
      ce_1 => ce_1_sg_x8,
      clk_1 => clk_1_sg_x8,
      in1 => from_register6_data_out_net_x1,
      out1 => convert4_dout_net_x0,
      out2 => convert5_dout_net_x0,
      out3 => convert6_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/Stage_UD/RisingEdge"

entity risingedge_entity_fa088284a7 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    in_x0: in std_logic; 
    edge_x0: out std_logic
  );
end risingedge_entity_fa088284a7;

architecture structural of risingedge_entity_fa088284a7 is
  signal ce_1_sg_x9: std_logic;
  signal clk_1_sg_x9: std_logic;
  signal delay_q_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal relational4_op_net_x0: std_logic;

begin
  ce_1_sg_x9 <= ce_1;
  clk_1_sg_x9 <= clk_1;
  relational4_op_net_x0 <= in_x0;
  edge_x0 <= logical_y_net_x0;

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      d(0) => inverter_op_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      ip(0) => relational4_op_net_x0,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational4_op_net_x0,
      d1(0) => delay_q_net,
      y(0) => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A/Stage_UD"

entity stage_ud_entity_80bd41db7e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    reset: in std_logic; 
    timing: in std_logic_vector(31 downto 0); 
    stage0: out std_logic; 
    stage1: out std_logic; 
    stage2: out std_logic; 
    stage3: out std_logic; 
    toreset: out std_logic
  );
end stage_ud_entity_80bd41db7e;

architecture structural of stage_ud_entity_80bd41db7e is
  signal ce_1_sg_x10: std_logic;
  signal clk_1_sg_x10: std_logic;
  signal constant_op_net: std_logic_vector(17 downto 0);
  signal convert1_dout_net: std_logic_vector(7 downto 0);
  signal convert2_dout_net: std_logic_vector(7 downto 0);
  signal convert3_dout_net: std_logic_vector(7 downto 0);
  signal convert4_dout_net: std_logic_vector(7 downto 0);
  signal from_register5_data_out_net_x0: std_logic_vector(31 downto 0);
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical2_y_net_x5: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x1: std_logic;
  signal register_q_net_x0: std_logic;
  signal relational1_op_net_x1: std_logic;
  signal relational2_op_net_x1: std_logic;
  signal relational3_op_net_x1: std_logic;
  signal relational4_op_net_x0: std_logic;
  signal relational_op_net_x1: std_logic;
  signal sample_count_op_net: std_logic_vector(9 downto 0);
  signal slice1_y_net: std_logic_vector(7 downto 0);
  signal slice2_y_net: std_logic_vector(7 downto 0);
  signal slice3_y_net: std_logic_vector(7 downto 0);
  signal slice4_y_net: std_logic_vector(7 downto 0);
  signal timout_count_op_net: std_logic_vector(17 downto 0);

begin
  ce_1_sg_x10 <= ce_1;
  clk_1_sg_x10 <= clk_1;
  register_q_net_x0 <= en;
  logical2_y_net_x5 <= reset;
  from_register5_data_out_net_x0 <= timing;
  stage0 <= relational_op_net_x1;
  stage1 <= relational1_op_net_x1;
  stage2 <= relational2_op_net_x1;
  stage3 <= relational3_op_net_x1;
  toreset <= logical_y_net_x1;

  constant_x0: entity work.constant_4d537a8f8d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      din => slice1_y_net,
      en => "1",
      dout => convert1_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      din => slice2_y_net,
      en => "1",
      dout => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      din => slice3_y_net,
      en => "1",
      dout => convert3_dout_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      din => slice4_y_net,
      en => "1",
      dout => convert4_dout_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      ip(0) => relational3_op_net_x1,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      ip(0) => relational4_op_net_x0,
      op(0) => inverter1_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net_x0,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter1_op_net,
      d1(0) => register_q_net_x0,
      y(0) => logical1_y_net
    );

  relational: entity work.relational_2a1fef700b
    port map (
      a => sample_count_op_net,
      b => convert1_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net_x1
    );

  relational1: entity work.relational_2a1fef700b
    port map (
      a => sample_count_op_net,
      b => convert2_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net_x1
    );

  relational2: entity work.relational_2a1fef700b
    port map (
      a => sample_count_op_net,
      b => convert3_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net_x1
    );

  relational3: entity work.relational_2a1fef700b
    port map (
      a => sample_count_op_net,
      b => convert4_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net_x1
    );

  relational4: entity work.relational_d96b17963a
    port map (
      a => timout_count_op_net,
      b => constant_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational4_op_net_x0
    );

  risingedge_fa088284a7: entity work.risingedge_entity_fa088284a7
    port map (
      ce_1 => ce_1_sg_x10,
      clk_1 => clk_1_sg_x10,
      in_x0 => relational4_op_net_x0,
      edge_x0 => logical_y_net_x1
    );

  sample_count: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_8cfff7bd0ed63977",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      en(0) => logical_y_net,
      rst(0) => logical2_y_net_x5,
      op => sample_count_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => from_register5_data_out_net_x0,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => from_register5_data_out_net_x0,
      y => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 23,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => from_register5_data_out_net_x0,
      y => slice3_y_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 31,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => from_register5_data_out_net_x0,
      y => slice4_y_net
    );

  timout_count: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_e769d6d069f40c44",
      op_arith => xlUnsigned,
      op_width => 18
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      en(0) => logical1_y_net,
      rst(0) => logical2_y_net_x5,
      op => timout_count_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_A"

entity agc_a_entity_c9f607652d is
  port (
    adj_1: in std_logic_vector(7 downto 0); 
    adj_2: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_4: in std_logic; 
    dco_mode: in std_logic_vector(1 downto 0); 
    dco_timing: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    en_dco_sub: in std_logic; 
    from_register4: in std_logic_vector(17 downto 0); 
    from_register7: in std_logic_vector(17 downto 0); 
    gbb_init: in std_logic_vector(7 downto 0); 
    i_in: in std_logic_vector(13 downto 0); 
    m_rst: in std_logic; 
    q_in: in std_logic_vector(13 downto 0); 
    rssi_db: in std_logic_vector(17 downto 0); 
    rst: in std_logic; 
    t_db: in std_logic_vector(7 downto 0); 
    thresholds: in std_logic_vector(31 downto 0); 
    timing: in std_logic_vector(31 downto 0); 
    viq_in: in std_logic_vector(8 downto 0); 
    done: out std_logic; 
    g_bb: out std_logic_vector(4 downto 0); 
    g_rf: out std_logic_vector(1 downto 0); 
    i_out: out std_logic_vector(37 downto 0); 
    q_out: out std_logic_vector(37 downto 0); 
    reset: out std_logic
  );
end agc_a_entity_c9f607652d;

architecture structural of agc_a_entity_c9f607652d is
  signal addsub_s_net_x1: std_logic_vector(17 downto 0);
  signal ce_1_sg_x11: std_logic;
  signal ce_4_sg_x8: std_logic;
  signal clk_1_sg_x11: std_logic;
  signal clk_4_sg_x8: std_logic;
  signal convert11_dout_net_x1: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(1 downto 0);
  signal convert5_dout_net_x1: std_logic_vector(7 downto 0);
  signal convert6_dout_net_x1: std_logic_vector(7 downto 0);
  signal convert7_dout_net_x1: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x2: std_logic_vector(7 downto 0);
  signal convert_dout_net_x0: std_logic_vector(4 downto 0);
  signal down_sample2_q_net_x1: std_logic_vector(8 downto 0);
  signal from_register11_data_out_net_x2: std_logic_vector(31 downto 0);
  signal from_register4_data_out_net_x2: std_logic_vector(17 downto 0);
  signal from_register5_data_out_net_x1: std_logic_vector(31 downto 0);
  signal from_register6_data_out_net_x2: std_logic_vector(31 downto 0);
  signal from_register7_data_out_net_x2: std_logic_vector(17 downto 0);
  signal i_in_x3: std_logic_vector(13 downto 0);
  signal logical2_y_net_x6: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal mux1_y_net_x1: std_logic_vector(7 downto 0);
  signal mux1_y_net_x2: std_logic_vector(12 downto 0);
  signal mux3_y_net_x1: std_logic_vector(37 downto 0);
  signal mux5_y_net_x1: std_logic_vector(37 downto 0);
  signal q_in_x2: std_logic_vector(13 downto 0);
  signal register1_q_net_x0: std_logic;
  signal register2_q_net_x1: std_logic_vector(1 downto 0);
  signal register3_q_net_x1: std_logic_vector(17 downto 0);
  signal register_q_net_x1: std_logic;
  signal relational1_op_net_x1: std_logic;
  signal relational2_op_net_x1: std_logic;
  signal relational3_op_net_x2: std_logic;
  signal relational_op_net_x1: std_logic;
  signal relational_op_net_x2: std_logic;
  signal scale_op_net: std_logic_vector(12 downto 0);
  signal slice5_y_net_x1: std_logic_vector(1 downto 0);

begin
  convert5_dout_net_x1 <= adj_1;
  convert6_dout_net_x1 <= adj_2;
  ce_1_sg_x11 <= ce_1;
  ce_4_sg_x8 <= ce_4;
  clk_1_sg_x11 <= clk_1;
  clk_4_sg_x8 <= clk_4;
  slice5_y_net_x1 <= dco_mode;
  from_register11_data_out_net_x2 <= dco_timing;
  register_q_net_x1 <= en;
  convert11_dout_net_x1 <= en_dco_sub;
  from_register4_data_out_net_x2 <= from_register4;
  from_register7_data_out_net_x2 <= from_register7;
  convert7_dout_net_x1 <= gbb_init;
  i_in_x3 <= i_in;
  relational_op_net_x2 <= m_rst;
  q_in_x2 <= q_in;
  addsub_s_net_x1 <= rssi_db;
  logical2_y_net_x6 <= rst;
  convert8_dout_net_x2 <= t_db;
  from_register6_data_out_net_x2 <= thresholds;
  from_register5_data_out_net_x1 <= timing;
  down_sample2_q_net_x1 <= viq_in;
  done <= relational3_op_net_x2;
  g_bb <= convert_dout_net_x0;
  g_rf <= convert1_dout_net_x0;
  i_out <= mux3_y_net_x1;
  q_out <= mux5_y_net_x1;
  reset <= logical_y_net_x0;

  bb_setting_14e7e7e397: entity work.bb_setting_entity_14e7e7e397
    port map (
      adj => convert5_dout_net_x1,
      ce_1 => ce_1_sg_x11,
      clk_1 => clk_1_sg_x11,
      en => relational1_op_net_x1,
      g_rf => register2_q_net_x1,
      gbb_init => convert7_dout_net_x1,
      rssi_est => register3_q_net_x1,
      rst => logical2_y_net_x6,
      t_db => convert8_dout_net_x2,
      g_bb_est => mux1_y_net_x1
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 3,
      din_width => 13,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 5,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      din => scale_op_net,
      en => "1",
      dout => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 2,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 2,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x11,
      clk => clk_1_sg_x11,
      clr => '0',
      din => register2_q_net_x1,
      en => "1",
      dout => convert1_dout_net_x0
    );

  dco_correction_916f0af4a6: entity work.dco_correction_entity_916f0af4a6
    port map (
      ce_1 => ce_1_sg_x11,
      ce_4 => ce_4_sg_x8,
      clk_1 => clk_1_sg_x11,
      clk_4 => clk_4_sg_x8,
      dco_mode => slice5_y_net_x1,
      dcotiming => from_register11_data_out_net_x2,
      en_sub => convert11_dout_net_x1,
      from_register4 => from_register4_data_out_net_x2,
      from_register7 => from_register7_data_out_net_x2,
      i_in => i_in_x3,
      locked => relational3_op_net_x2,
      m_reset => relational_op_net_x2,
      q_in => q_in_x2,
      reset => logical2_y_net_x6,
      i_out => mux3_y_net_x1,
      q_out => mux5_y_net_x1
    );

  finalize_gbb_3e46182ede: entity work.finalize_gbb_entity_3e46182ede
    port map (
      adj => convert6_dout_net_x1,
      ce_1 => ce_1_sg_x11,
      clk_1 => clk_1_sg_x11,
      en => relational2_op_net_x1,
      g_bb => mux1_y_net_x1,
      rst => logical2_y_net_x6,
      t_db => convert8_dout_net_x2,
      viq => down_sample2_q_net_x1,
      g_bb_out => mux1_y_net_x2
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x1,
      d1(0) => register1_q_net_x0,
      y(0) => logical_y_net_x0
    );

  rf_setting_c8fdcb112d: entity work.rf_setting_entity_c8fdcb112d
    port map (
      ce_1 => ce_1_sg_x11,
      clk_1 => clk_1_sg_x11,
      en => relational_op_net_x1,
      rssi_in => addsub_s_net_x1,
      rst => logical2_y_net_x6,
      thresholds => from_register6_data_out_net_x2,
      g_rf => register2_q_net_x1,
      rssi_lock => register3_q_net_x1,
      toolow => register1_q_net_x0
    );

  scale: entity work.scale_d11c4b5145
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => mux1_y_net_x2,
      op => scale_op_net
    );

  stage_ud_80bd41db7e: entity work.stage_ud_entity_80bd41db7e
    port map (
      ce_1 => ce_1_sg_x11,
      clk_1 => clk_1_sg_x11,
      en => register_q_net_x1,
      reset => logical2_y_net_x6,
      timing => from_register5_data_out_net_x1,
      stage0 => relational_op_net_x1,
      stage1 => relational1_op_net_x1,
      stage2 => relational2_op_net_x1,
      stage3 => relational3_op_net_x2,
      toreset => logical_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_B/DCO_correction"

entity dco_correction_entity_5b0d002743 is
  port (
    ce_1: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_4: in std_logic; 
    dco_mode: in std_logic_vector(1 downto 0); 
    dcotiming: in std_logic_vector(31 downto 0); 
    en_sub: in std_logic; 
    from_register4: in std_logic_vector(17 downto 0); 
    from_register7: in std_logic_vector(17 downto 0); 
    i_in: in std_logic_vector(13 downto 0); 
    locked: in std_logic; 
    m_reset: in std_logic; 
    q_in: in std_logic_vector(13 downto 0); 
    reset: in std_logic; 
    i_out: out std_logic_vector(37 downto 0); 
    q_out: out std_logic_vector(37 downto 0)
  );
end dco_correction_entity_5b0d002743;

architecture structural of dco_correction_entity_5b0d002743 is
  signal addsub1_s_net: std_logic_vector(17 downto 0);
  signal addsub_s_net: std_logic_vector(17 downto 0);
  signal avg2_q_net: std_logic_vector(15 downto 0);
  signal avg_q_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x17: std_logic;
  signal ce_4_sg_x16: std_logic;
  signal clk_1_sg_x17: std_logic;
  signal clk_4_sg_x16: std_logic;
  signal constant1_op_net: std_logic;
  signal convert11_dout_net_x2: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(14 downto 0);
  signal convert1_dout_net_x1: std_logic_vector(14 downto 0);
  signal convert_dout_net: std_logic;
  signal delay1_q_net: std_logic;
  signal delay2_q_net: std_logic_vector(13 downto 0);
  signal delay_q_net: std_logic_vector(13 downto 0);
  signal down_sample1_q_net_x0: std_logic_vector(37 downto 0);
  signal down_sample2_q_net: std_logic;
  signal down_sample3_q_net: std_logic_vector(1 downto 0);
  signal down_sample4_q_net_x2: std_logic;
  signal down_sample4_q_net_x4: std_logic_vector(13 downto 0);
  signal down_sample5_q_net_x1: std_logic_vector(13 downto 0);
  signal down_sample_q_net_x0: std_logic_vector(37 downto 0);
  signal down_sample_q_net_x2: std_logic;
  signal down_sample_q_net_x3: std_logic;
  signal from_register11_data_out_net_x4: std_logic_vector(31 downto 0);
  signal from_register4_data_out_net_x4: std_logic_vector(17 downto 0);
  signal from_register7_data_out_net_x4: std_logic_vector(17 downto 0);
  signal logical1_y_net_x0: std_logic;
  signal logical2_y_net_x9: std_logic;
  signal mux1_y_net: std_logic_vector(37 downto 0);
  signal mux2_y_net: std_logic_vector(16 downto 0);
  signal mux3_y_net_x0: std_logic_vector(37 downto 0);
  signal mux4_y_net: std_logic_vector(16 downto 0);
  signal mux5_y_net_x0: std_logic_vector(37 downto 0);
  signal mux_y_net: std_logic_vector(37 downto 0);
  signal register1_q_net_x1: std_logic_vector(17 downto 0);
  signal register2_q_net_x2: std_logic;
  signal register_q_net_x1: std_logic_vector(17 downto 0);
  signal relational3_op_net_x0: std_logic;
  signal relational3_op_net_x1: std_logic;
  signal relational_op_net_x3: std_logic;
  signal scale1_op_net: std_logic_vector(15 downto 0);
  signal scale_op_net: std_logic_vector(15 downto 0);
  signal slice5_y_net_x2: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x17 <= ce_1;
  ce_4_sg_x16 <= ce_4;
  clk_1_sg_x17 <= clk_1;
  clk_4_sg_x16 <= clk_4;
  slice5_y_net_x2 <= dco_mode;
  from_register11_data_out_net_x4 <= dcotiming;
  convert11_dout_net_x2 <= en_sub;
  from_register4_data_out_net_x4 <= from_register4;
  from_register7_data_out_net_x4 <= from_register7;
  down_sample4_q_net_x4 <= i_in;
  relational3_op_net_x0 <= locked;
  relational_op_net_x3 <= m_reset;
  down_sample5_q_net_x1 <= q_in;
  logical2_y_net_x9 <= reset;
  i_out <= mux3_y_net_x0;
  q_out <= mux5_y_net_x0;

  addsub: entity work.addsub_e019abb457
    port map (
      a => down_sample4_q_net_x4,
      b => mux2_y_net,
      ce => ce_4_sg_x16,
      clk => clk_4_sg_x16,
      clr => '0',
      s => addsub_s_net
    );

  addsub1: entity work.addsub_e019abb457
    port map (
      a => down_sample5_q_net_x1,
      b => mux4_y_net,
      ce => ce_4_sg_x16,
      clk => clk_4_sg_x16,
      clr => '0',
      s => addsub1_s_net
    );

  avg: entity work.accum_4b12803c7d
    port map (
      b => convert1_dout_net_x0,
      ce => ce_4_sg_x16,
      clk => clk_4_sg_x16,
      clr => '0',
      en(0) => logical1_y_net_x0,
      rst(0) => down_sample_q_net_x3,
      q => avg_q_net
    );

  avg2: entity work.accum_4b12803c7d
    port map (
      b => convert1_dout_net_x1,
      ce => ce_4_sg_x16,
      clk => clk_4_sg_x16,
      clr => '0',
      en(0) => logical1_y_net_x0,
      rst(0) => down_sample_q_net_x3,
      q => avg2_q_net
    );

  avg_i_f962d4abff: entity work.avg_q_entity_b4e47a4e76
    port map (
      ce_4 => ce_4_sg_x16,
      clk_4 => clk_4_sg_x16,
      i_in => down_sample4_q_net_x4,
      m_reset => down_sample4_q_net_x2,
      avg_i_out => convert1_dout_net_x0
    );

  avg_q_5df0f25945: entity work.avg_q_entity_b4e47a4e76
    port map (
      ce_4 => ce_4_sg_x16,
      clk_4 => clk_4_sg_x16,
      i_in => down_sample5_q_net_x1,
      m_reset => down_sample4_q_net_x2,
      avg_i_out => convert1_dout_net_x1
    );

  butterworth_iir_hp_4to1_7ee06e1848: entity work.butterworth_iir_hp_4to1_entity_4963b9ce1e
    port map (
      ce_1 => ce_1_sg_x17,
      ce_4 => ce_4_sg_x16,
      clk_1 => clk_1_sg_x17,
      clk_4 => clk_4_sg_x16,
      dco_iir_coef_fb => from_register7_data_out_net_x4,
      dco_iir_coef_gain => from_register4_data_out_net_x4,
      i_in => register_q_net_x1,
      q_in => register1_q_net_x1,
      rst => register2_q_net_x2,
      i_out => down_sample1_q_net_x0,
      q_out => down_sample_q_net_x0
    );

  constant1: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_4_sg_x16,
      clk => clk_4_sg_x16,
      clr => '0',
      din(0) => relational3_op_net_x1,
      en => "1",
      dout(0) => convert_dout_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_4_sg_x16,
      clk => clk_4_sg_x16,
      d => down_sample5_q_net_x1,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_4_sg_x16,
      clk => clk_4_sg_x16,
      d(0) => convert_dout_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  delay2: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 14
    )
    port map (
      ce => ce_4_sg_x16,
      clk => clk_4_sg_x16,
      d => down_sample4_q_net_x4,
      en => '1',
      rst => '1',
      q => delay2_q_net
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 4,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => relational3_op_net_x0,
      dest_ce => ce_4_sg_x16,
      dest_clk => clk_4_sg_x16,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x17,
      src_clk => clk_1_sg_x17,
      src_clr => '0',
      q(0) => down_sample_q_net_x2
    );

  down_sample2: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 4,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => convert11_dout_net_x2,
      dest_ce => ce_4_sg_x16,
      dest_clk => clk_4_sg_x16,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x17,
      src_clk => clk_1_sg_x17,
      src_clr => '0',
      q(0) => down_sample2_q_net
    );

  down_sample3: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 2,
      ds_ratio => 4,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 2
    )
    port map (
      d => slice5_y_net_x2,
      dest_ce => ce_4_sg_x16,
      dest_clk => clk_4_sg_x16,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x17,
      src_clk => clk_1_sg_x17,
      src_clr => '0',
      q => down_sample3_q_net
    );

  down_sample4: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 4,
      latency => 0,
      phase => 0,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => relational_op_net_x3,
      dest_ce => ce_4_sg_x16,
      dest_clk => clk_4_sg_x16,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x17,
      src_clk => clk_1_sg_x17,
      src_clr => '0',
      q(0) => down_sample4_q_net_x2
    );

  mux: entity work.mux_923aefe70d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => delay2_q_net,
      d1 => down_sample1_q_net_x0,
      sel(0) => delay1_q_net,
      y => mux_y_net
    );

  mux1: entity work.mux_923aefe70d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => delay_q_net,
      d1 => down_sample_q_net_x0,
      sel(0) => delay1_q_net,
      y => mux1_y_net
    );

  mux2: entity work.mux_cb76b902aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant1_op_net,
      d1 => scale_op_net,
      sel(0) => down_sample2_q_net,
      y => mux2_y_net
    );

  mux3: entity work.mux_5cbb6cffcb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => down_sample4_q_net_x4,
      d1 => register_q_net_x1,
      d2 => mux_y_net,
      sel => down_sample3_q_net,
      y => mux3_y_net_x0
    );

  mux4: entity work.mux_cb76b902aa
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => constant1_op_net,
      d1 => scale1_op_net,
      sel(0) => down_sample2_q_net,
      y => mux4_y_net
    );

  mux5: entity work.mux_5cbb6cffcb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => down_sample5_q_net_x1,
      d1 => register1_q_net_x1,
      d2 => mux1_y_net,
      sel => down_sample3_q_net,
      y => mux5_y_net_x0
    );

  register1: entity work.xlregister
    generic map (
      d_width => 18,
      init_value => b"000000000000000000"
    )
    port map (
      ce => ce_4_sg_x16,
      clk => clk_4_sg_x16,
      d => addsub1_s_net,
      en => "1",
      rst(0) => register2_q_net_x2,
      q => register1_q_net_x1
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 18,
      init_value => b"000000000000000000"
    )
    port map (
      ce => ce_4_sg_x16,
      clk => clk_4_sg_x16,
      d => addsub_s_net,
      en => "1",
      rst(0) => register2_q_net_x2,
      q => register_q_net_x1
    );

  scale: entity work.scale_fa7c2ab9f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => avg_q_net,
      op => scale_op_net
    );

  scale1: entity work.scale_fa7c2ab9f6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => avg2_q_net,
      op => scale1_op_net
    );

  sr_latch_f598f99ca9: entity work.sr_latch_entity_5ebf12fa98
    port map (
      ce_4 => ce_4_sg_x16,
      clk_4 => clk_4_sg_x16,
      r => relational3_op_net_x1,
      s => down_sample_q_net_x3,
      out1 => register2_q_net_x2
    );

  subsystem_be17823355: entity work.subsystem_entity_f79d47c643
    port map (
      ce_1 => ce_1_sg_x17,
      ce_4 => ce_4_sg_x16,
      clk_1 => clk_1_sg_x17,
      clk_4 => clk_4_sg_x16,
      us_in => logical2_y_net_x9,
      ds_out => down_sample_q_net_x3
    );

  timing_f6ca3a5ee6: entity work.timing_entity_39735d33ff
    port map (
      ce_1 => ce_1_sg_x17,
      ce_4 => ce_4_sg_x16,
      clk_1 => clk_1_sg_x17,
      clk_4 => clk_4_sg_x16,
      en => down_sample_q_net_x2,
      rst => down_sample_q_net_x3,
      timing => from_register11_data_out_net_x4,
      both_48_64 => logical1_y_net_x0,
      x70 => relational3_op_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_B/RF_setting"

entity rf_setting_entity_604bf29200 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    rssi_in: in std_logic_vector(17 downto 0); 
    rst: in std_logic; 
    thresholds: in std_logic_vector(31 downto 0); 
    g_rf: out std_logic_vector(1 downto 0); 
    rssi_lock: out std_logic_vector(17 downto 0)
  );
end rf_setting_entity_604bf29200;

architecture structural of rf_setting_entity_604bf29200 is
  signal addsub1_s_net_x0: std_logic_vector(17 downto 0);
  signal addsub4_s_net: std_logic_vector(1 downto 0);
  signal addsub5_s_net: std_logic_vector(2 downto 0);
  signal addsub6_s_net: std_logic_vector(1 downto 0);
  signal ce_1_sg_x20: std_logic;
  signal clk_1_sg_x20: std_logic;
  signal constant1_op_net: std_logic;
  signal convert4_dout_net: std_logic;
  signal convert4_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert5_dout_net: std_logic;
  signal convert5_dout_net_x0: std_logic_vector(7 downto 0);
  signal convert6_dout_net: std_logic;
  signal convert6_dout_net_x0: std_logic_vector(7 downto 0);
  signal from_register6_data_out_net_x4: std_logic_vector(31 downto 0);
  signal logical2_y_net_x11: std_logic;
  signal register2_q_net_x1: std_logic_vector(1 downto 0);
  signal register3_q_net_x1: std_logic_vector(17 downto 0);
  signal relational4_op_net: std_logic;
  signal relational5_op_net: std_logic;
  signal relational6_op_net: std_logic;
  signal relational_op_net_x0: std_logic;

begin
  ce_1_sg_x20 <= ce_1;
  clk_1_sg_x20 <= clk_1;
  relational_op_net_x0 <= en;
  addsub1_s_net_x0 <= rssi_in;
  logical2_y_net_x11 <= rst;
  from_register6_data_out_net_x4 <= thresholds;
  g_rf <= register2_q_net_x1;
  rssi_lock <= register3_q_net_x1;

  addsub4: entity work.addsub_b4036865b8
    port map (
      a(0) => convert4_dout_net,
      b(0) => convert5_dout_net,
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      clr => '0',
      s => addsub4_s_net
    );

  addsub5: entity work.xladdsub
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 2,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 3,
      core_name0 => "addsb_11_0_3b8d8925e647b605",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 3,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 3
    )
    port map (
      a => addsub4_s_net,
      b(0) => convert6_dout_net,
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      clr => '0',
      en => "1",
      s => addsub5_s_net
    );

  addsub6: entity work.xladdsub
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 3,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 1,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 4,
      core_name0 => "addsb_11_0_4e449b79a6edba32",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 4,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 2
    )
    port map (
      a => addsub5_s_net,
      b(0) => constant1_op_net,
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      clr => '0',
      en => "1",
      s => addsub6_s_net
    );

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      clr => '0',
      din(0) => relational4_op_net,
      en => "1",
      dout(0) => convert4_dout_net
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      clr => '0',
      din(0) => relational5_op_net,
      en => "1",
      dout(0) => convert5_dout_net
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 0,
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
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      clr => '0',
      din(0) => relational6_op_net,
      en => "1",
      dout(0) => convert6_dout_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 2,
      init_value => b"11"
    )
    port map (
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      d => addsub6_s_net,
      en(0) => relational_op_net_x0,
      rst(0) => logical2_y_net_x11,
      q => register2_q_net_x1
    );

  register3: entity work.xlregister
    generic map (
      d_width => 18,
      init_value => b"000000000000000000"
    )
    port map (
      ce => ce_1_sg_x20,
      clk => clk_1_sg_x20,
      d => addsub1_s_net_x0,
      en(0) => relational_op_net_x0,
      rst(0) => logical2_y_net_x11,
      q => register3_q_net_x1
    );

  relational4: entity work.relational_7aff091e92
    port map (
      a => addsub1_s_net_x0,
      b => convert4_dout_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational4_op_net
    );

  relational5: entity work.relational_7aff091e92
    port map (
      a => addsub1_s_net_x0,
      b => convert5_dout_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational5_op_net
    );

  relational6: entity work.relational_7aff091e92
    port map (
      a => addsub1_s_net_x0,
      b => convert6_dout_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational6_op_net
    );

  x8bit_slicer1_a291d77428: entity work.x8bit_slicer1_entity_330120d52a
    port map (
      ce_1 => ce_1_sg_x20,
      clk_1 => clk_1_sg_x20,
      in1 => from_register6_data_out_net_x4,
      out1 => convert4_dout_net_x0,
      out2 => convert5_dout_net_x0,
      out3 => convert6_dout_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_B/Stage_UD"

entity stage_ud_entity_00c497e2b8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en: in std_logic; 
    reset: in std_logic; 
    timing: in std_logic_vector(31 downto 0); 
    stage0: out std_logic; 
    stage1: out std_logic; 
    stage2: out std_logic; 
    stage3: out std_logic
  );
end stage_ud_entity_00c497e2b8;

architecture structural of stage_ud_entity_00c497e2b8 is
  signal ce_1_sg_x21: std_logic;
  signal clk_1_sg_x21: std_logic;
  signal convert1_dout_net: std_logic_vector(7 downto 0);
  signal convert2_dout_net: std_logic_vector(7 downto 0);
  signal convert3_dout_net: std_logic_vector(7 downto 0);
  signal convert4_dout_net: std_logic_vector(7 downto 0);
  signal from_register5_data_out_net_x2: std_logic_vector(31 downto 0);
  signal inverter_op_net: std_logic;
  signal logical2_y_net_x12: std_logic;
  signal logical_y_net: std_logic;
  signal register_q_net_x2: std_logic;
  signal relational1_op_net_x1: std_logic;
  signal relational2_op_net_x1: std_logic;
  signal relational3_op_net_x1: std_logic;
  signal relational_op_net_x1: std_logic;
  signal sample_count_op_net: std_logic_vector(9 downto 0);
  signal slice1_y_net: std_logic_vector(7 downto 0);
  signal slice2_y_net: std_logic_vector(7 downto 0);
  signal slice3_y_net: std_logic_vector(7 downto 0);
  signal slice4_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x21 <= ce_1;
  clk_1_sg_x21 <= clk_1;
  register_q_net_x2 <= en;
  logical2_y_net_x12 <= reset;
  from_register5_data_out_net_x2 <= timing;
  stage0 <= relational_op_net_x1;
  stage1 <= relational1_op_net_x1;
  stage2 <= relational2_op_net_x1;
  stage3 <= relational3_op_net_x1;

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      din => slice1_y_net,
      en => "1",
      dout => convert1_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      din => slice2_y_net,
      en => "1",
      dout => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      din => slice3_y_net,
      en => "1",
      dout => convert3_dout_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      din => slice4_y_net,
      en => "1",
      dout => convert4_dout_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      ip(0) => relational3_op_net_x1,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net_x2,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  relational: entity work.relational_2a1fef700b
    port map (
      a => sample_count_op_net,
      b => convert1_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net_x1
    );

  relational1: entity work.relational_2a1fef700b
    port map (
      a => sample_count_op_net,
      b => convert2_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net_x1
    );

  relational2: entity work.relational_2a1fef700b
    port map (
      a => sample_count_op_net,
      b => convert3_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net_x1
    );

  relational3: entity work.relational_2a1fef700b
    port map (
      a => sample_count_op_net,
      b => convert4_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net_x1
    );

  sample_count: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_8cfff7bd0ed63977",
      op_arith => xlUnsigned,
      op_width => 10
    )
    port map (
      ce => ce_1_sg_x21,
      clk => clk_1_sg_x21,
      clr => '0',
      en(0) => logical_y_net,
      rst(0) => logical2_y_net_x12,
      op => sample_count_op_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => from_register5_data_out_net_x2,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => from_register5_data_out_net_x2,
      y => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 16,
      new_msb => 23,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => from_register5_data_out_net_x2,
      y => slice3_y_net
    );

  slice4: entity work.xlslice
    generic map (
      new_lsb => 24,
      new_msb => 31,
      x_width => 32,
      y_width => 8
    )
    port map (
      x => from_register5_data_out_net_x2,
      y => slice4_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/AGC_B"

entity agc_b_entity_e1b338ae63 is
  port (
    adj_1: in std_logic_vector(7 downto 0); 
    adj_2: in std_logic_vector(7 downto 0); 
    ce_1: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_4: in std_logic; 
    dco_mode: in std_logic_vector(1 downto 0); 
    dco_timing: in std_logic_vector(31 downto 0); 
    en: in std_logic; 
    en_dco_sub: in std_logic; 
    from_register4: in std_logic_vector(17 downto 0); 
    from_register7: in std_logic_vector(17 downto 0); 
    gbb_init: in std_logic_vector(7 downto 0); 
    i_in: in std_logic_vector(13 downto 0); 
    m_rst: in std_logic; 
    q_in: in std_logic_vector(13 downto 0); 
    rssi_db: in std_logic_vector(17 downto 0); 
    rst: in std_logic; 
    t_db: in std_logic_vector(7 downto 0); 
    thresholds: in std_logic_vector(31 downto 0); 
    timing: in std_logic_vector(31 downto 0); 
    viq_in: in std_logic_vector(8 downto 0); 
    done: out std_logic; 
    g_bb: out std_logic_vector(4 downto 0); 
    g_rf: out std_logic_vector(1 downto 0); 
    i_out: out std_logic_vector(37 downto 0); 
    q_out: out std_logic_vector(37 downto 0)
  );
end agc_b_entity_e1b338ae63;

architecture structural of agc_b_entity_e1b338ae63 is
  signal addsub1_s_net_x1: std_logic_vector(17 downto 0);
  signal ce_1_sg_x22: std_logic;
  signal ce_4_sg_x17: std_logic;
  signal clk_1_sg_x22: std_logic;
  signal clk_4_sg_x17: std_logic;
  signal convert11_dout_net_x3: std_logic;
  signal convert1_dout_net_x0: std_logic_vector(1 downto 0);
  signal convert5_dout_net_x3: std_logic_vector(7 downto 0);
  signal convert6_dout_net_x3: std_logic_vector(7 downto 0);
  signal convert7_dout_net_x3: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x5: std_logic_vector(7 downto 0);
  signal convert_dout_net_x0: std_logic_vector(4 downto 0);
  signal down_sample4_q_net_x5: std_logic_vector(13 downto 0);
  signal down_sample5_q_net_x2: std_logic_vector(13 downto 0);
  signal down_sample_q_net_x1: std_logic_vector(8 downto 0);
  signal from_register11_data_out_net_x5: std_logic_vector(31 downto 0);
  signal from_register4_data_out_net_x5: std_logic_vector(17 downto 0);
  signal from_register5_data_out_net_x3: std_logic_vector(31 downto 0);
  signal from_register6_data_out_net_x5: std_logic_vector(31 downto 0);
  signal from_register7_data_out_net_x5: std_logic_vector(17 downto 0);
  signal logical2_y_net_x13: std_logic;
  signal mux1_y_net_x1: std_logic_vector(7 downto 0);
  signal mux1_y_net_x2: std_logic_vector(12 downto 0);
  signal mux3_y_net_x1: std_logic_vector(37 downto 0);
  signal mux5_y_net_x1: std_logic_vector(37 downto 0);
  signal register2_q_net_x1: std_logic_vector(1 downto 0);
  signal register3_q_net_x1: std_logic_vector(17 downto 0);
  signal register_q_net_x3: std_logic;
  signal relational1_op_net_x1: std_logic;
  signal relational2_op_net_x1: std_logic;
  signal relational3_op_net_x2: std_logic;
  signal relational_op_net_x1: std_logic;
  signal relational_op_net_x4: std_logic;
  signal scale_op_net: std_logic_vector(12 downto 0);
  signal slice5_y_net_x3: std_logic_vector(1 downto 0);

begin
  convert5_dout_net_x3 <= adj_1;
  convert6_dout_net_x3 <= adj_2;
  ce_1_sg_x22 <= ce_1;
  ce_4_sg_x17 <= ce_4;
  clk_1_sg_x22 <= clk_1;
  clk_4_sg_x17 <= clk_4;
  slice5_y_net_x3 <= dco_mode;
  from_register11_data_out_net_x5 <= dco_timing;
  register_q_net_x3 <= en;
  convert11_dout_net_x3 <= en_dco_sub;
  from_register4_data_out_net_x5 <= from_register4;
  from_register7_data_out_net_x5 <= from_register7;
  convert7_dout_net_x3 <= gbb_init;
  down_sample4_q_net_x5 <= i_in;
  relational_op_net_x4 <= m_rst;
  down_sample5_q_net_x2 <= q_in;
  addsub1_s_net_x1 <= rssi_db;
  logical2_y_net_x13 <= rst;
  convert8_dout_net_x5 <= t_db;
  from_register6_data_out_net_x5 <= thresholds;
  from_register5_data_out_net_x3 <= timing;
  down_sample_q_net_x1 <= viq_in;
  done <= relational3_op_net_x2;
  g_bb <= convert_dout_net_x0;
  g_rf <= convert1_dout_net_x0;
  i_out <= mux3_y_net_x1;
  q_out <= mux5_y_net_x1;

  bb_setting_f229cbee21: entity work.bb_setting_entity_14e7e7e397
    port map (
      adj => convert5_dout_net_x3,
      ce_1 => ce_1_sg_x22,
      clk_1 => clk_1_sg_x22,
      en => relational1_op_net_x1,
      g_rf => register2_q_net_x1,
      gbb_init => convert7_dout_net_x3,
      rssi_est => register3_q_net_x1,
      rst => logical2_y_net_x13,
      t_db => convert8_dout_net_x5,
      g_bb_est => mux1_y_net_x1
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 3,
      din_width => 13,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 5,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x22,
      clk => clk_1_sg_x22,
      clr => '0',
      din => scale_op_net,
      en => "1",
      dout => convert_dout_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 2,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 2,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x22,
      clk => clk_1_sg_x22,
      clr => '0',
      din => register2_q_net_x1,
      en => "1",
      dout => convert1_dout_net_x0
    );

  dco_correction_5b0d002743: entity work.dco_correction_entity_5b0d002743
    port map (
      ce_1 => ce_1_sg_x22,
      ce_4 => ce_4_sg_x17,
      clk_1 => clk_1_sg_x22,
      clk_4 => clk_4_sg_x17,
      dco_mode => slice5_y_net_x3,
      dcotiming => from_register11_data_out_net_x5,
      en_sub => convert11_dout_net_x3,
      from_register4 => from_register4_data_out_net_x5,
      from_register7 => from_register7_data_out_net_x5,
      i_in => down_sample4_q_net_x5,
      locked => relational3_op_net_x2,
      m_reset => relational_op_net_x4,
      q_in => down_sample5_q_net_x2,
      reset => logical2_y_net_x13,
      i_out => mux3_y_net_x1,
      q_out => mux5_y_net_x1
    );

  finalize_gbb_a887d142d8: entity work.finalize_gbb_entity_3e46182ede
    port map (
      adj => convert6_dout_net_x3,
      ce_1 => ce_1_sg_x22,
      clk_1 => clk_1_sg_x22,
      en => relational2_op_net_x1,
      g_bb => mux1_y_net_x1,
      rst => logical2_y_net_x13,
      t_db => convert8_dout_net_x5,
      viq => down_sample_q_net_x1,
      g_bb_out => mux1_y_net_x2
    );

  rf_setting_604bf29200: entity work.rf_setting_entity_604bf29200
    port map (
      ce_1 => ce_1_sg_x22,
      clk_1 => clk_1_sg_x22,
      en => relational_op_net_x1,
      rssi_in => addsub1_s_net_x1,
      rst => logical2_y_net_x13,
      thresholds => from_register6_data_out_net_x5,
      g_rf => register2_q_net_x1,
      rssi_lock => register3_q_net_x1
    );

  scale: entity work.scale_d11c4b5145
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      ip => mux1_y_net_x2,
      op => scale_op_net
    );

  stage_ud_00c497e2b8: entity work.stage_ud_entity_00c497e2b8
    port map (
      ce_1 => ce_1_sg_x22,
      clk_1 => clk_1_sg_x22,
      en => register_q_net_x3,
      reset => logical2_y_net_x13,
      timing => from_register5_data_out_net_x3,
      stage0 => relational_op_net_x1,
      stage1 => relational1_op_net_x1,
      stage2 => relational2_op_net_x1,
      stage3 => relational3_op_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/Control_System/EN_blocking"

entity en_blocking_entity_9d28867134 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    en_in: in std_logic; 
    reset: in std_logic; 
    en_blocked: out std_logic
  );
end en_blocking_entity_9d28867134;

architecture structural of en_blocking_entity_9d28867134 is
  signal ce_1_sg_x23: std_logic;
  signal clk_1_sg_x23: std_logic;
  signal constant_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x1: std_logic;
  signal register_q_net_x4: std_logic;

begin
  ce_1_sg_x23 <= ce_1;
  clk_1_sg_x23 <= clk_1;
  logical1_y_net_x0 <= en_in;
  logical_y_net_x1 <= reset;
  en_blocked <= register_q_net_x4;

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      clr => '0',
      ip(0) => register_q_net_x4,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical1_y_net_x0,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x23,
      clk => clk_1_sg_x23,
      d(0) => constant_op_net,
      en(0) => logical_y_net,
      rst(0) => logical_y_net_x1,
      q(0) => register_q_net_x4
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/Control_System/M_RESET_CTRL"

entity m_reset_ctrl_entity_04cd4fc3d3 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    m_reset: in std_logic; 
    m_reset_out: out std_logic; 
    unblock_en: out std_logic
  );
end m_reset_ctrl_entity_04cd4fc3d3;

architecture structural of m_reset_ctrl_entity_04cd4fc3d3 is
  signal ce_1_sg_x24: std_logic;
  signal clk_1_sg_x24: std_logic;
  signal constant1_op_net: std_logic;
  signal constant2_op_net: std_logic_vector(6 downto 0);
  signal constant_op_net: std_logic_vector(6 downto 0);
  signal counter_op_net: std_logic_vector(7 downto 0);
  signal delay1_q_net: std_logic;
  signal delay_q_net_x0: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x1: std_logic;
  signal register_q_net: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net_x5: std_logic;

begin
  ce_1_sg_x24 <= ce_1;
  clk_1_sg_x24 <= clk_1;
  logical_y_net_x1 <= m_reset;
  m_reset_out <= relational_op_net_x5;
  unblock_en <= delay_q_net_x0;

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant2: entity work.constant_ca73b964f8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant_x0: entity work.constant_744827771c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_25e8694ab5ef84df",
      op_arith => xlUnsigned,
      op_width => 8
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      clr => '0',
      en(0) => logical_y_net,
      rst(0) => logical_y_net_x1,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      d(0) => relational1_op_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      d(0) => logical_y_net_x1,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register_q_net,
      d1(0) => relational_op_net_x5,
      y(0) => logical_y_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x24,
      clk => clk_1_sg_x24,
      d(0) => constant1_op_net,
      en(0) => delay1_q_net,
      rst(0) => logical_y_net_x1,
      q(0) => register_q_net
    );

  relational: entity work.relational_44a8c5bdee
    port map (
      a => counter_op_net,
      b => constant_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net_x5
    );

  relational1: entity work.relational_4fbf217ac0
    port map (
      a => counter_op_net,
      b => constant2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/Control_System"

entity control_system_entity_5f3397d1a6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    m_reset: in std_logic; 
    pakdet_in: in std_logic; 
    reset_in: in std_logic; 
    en_hi: out std_logic; 
    m_reset_out: out std_logic; 
    reset: out std_logic
  );
end control_system_entity_5f3397d1a6;

architecture structural of control_system_entity_5f3397d1a6 is
  signal ce_1_sg_x28: std_logic;
  signal clk_1_sg_x28: std_logic;
  signal convert1_dout_net_x1: std_logic;
  signal delay2_q_net: std_logic;
  signal delay_q_net_x0: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical1_y_net_x2: std_logic;
  signal logical2_y_net_x14: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal logical_y_net_x2: std_logic;
  signal logical_y_net_x3: std_logic;
  signal register_q_net_x5: std_logic;
  signal relational_op_net_x6: std_logic;
  signal reset_in_x1: std_logic;

begin
  ce_1_sg_x28 <= ce_1;
  clk_1_sg_x28 <= clk_1;
  convert1_dout_net_x1 <= m_reset;
  logical1_y_net_x2 <= pakdet_in;
  reset_in_x1 <= reset_in;
  en_hi <= register_q_net_x5;
  m_reset_out <= relational_op_net_x6;
  reset <= logical2_y_net_x14;

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x28,
      clk => clk_1_sg_x28,
      d(0) => logical_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay2_q_net
    );

  en_blocking_9d28867134: entity work.en_blocking_entity_9d28867134
    port map (
      ce_1 => ce_1_sg_x28,
      clk_1 => clk_1_sg_x28,
      en_in => logical1_y_net_x0,
      reset => logical_y_net_x1,
      en_blocked => register_q_net_x5
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x28,
      clk => clk_1_sg_x28,
      clr => '0',
      ip(0) => reset_in_x1,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x28,
      clk => clk_1_sg_x28,
      clr => '0',
      ip(0) => relational_op_net_x6,
      op(0) => inverter1_op_net
    );

  logical: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => delay_q_net_x0,
      y(0) => logical_y_net_x1
    );

  logical1: entity work.logical_954ee29728
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => logical_y_net_x2,
      d2(0) => inverter1_op_net,
      y(0) => logical1_y_net_x0
    );

  logical2: entity work.logical_aacf6e1b0e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => delay2_q_net,
      d1(0) => relational_op_net_x6,
      y(0) => logical2_y_net_x14
    );

  m_reset_ctrl_04cd4fc3d3: entity work.m_reset_ctrl_entity_04cd4fc3d3
    port map (
      ce_1 => ce_1_sg_x28,
      clk_1 => clk_1_sg_x28,
      m_reset => logical_y_net_x3,
      m_reset_out => relational_op_net_x6,
      unblock_en => delay_q_net_x0
    );

  risingedge1_14e518c9f3: entity work.risingedge_entity_fa088284a7
    port map (
      ce_1 => ce_1_sg_x28,
      clk_1 => clk_1_sg_x28,
      in_x0 => logical1_y_net_x2,
      edge_x0 => logical_y_net_x2
    );

  risingedge2_bf559843d2: entity work.risingedge_entity_fa088284a7
    port map (
      ce_1 => ce_1_sg_x28,
      clk_1 => clk_1_sg_x28,
      in_x0 => convert1_dout_net_x1,
      edge_x0 => logical_y_net_x3
    );

  risingedge_95a58a9583: entity work.risingedge_entity_fa088284a7
    port map (
      ce_1 => ce_1_sg_x28,
      clk_1 => clk_1_sg_x28,
      in_x0 => reset_in_x1,
      edge_x0 => logical_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/Dual_channel_VIQ/AVG_I_Q2"

entity avg_i_q2_entity_f0b5d6eaad is
  port (
    ce_1: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_4: in std_logic; 
    cplx_in: in std_logic_vector(16 downto 0); 
    iqavg_len: in std_logic_vector(4 downto 0); 
    reset: in std_logic; 
    avg_cplx_out: out std_logic_vector(15 downto 0)
  );
end avg_i_q2_entity_f0b5d6eaad;

architecture structural of avg_i_q2_entity_f0b5d6eaad is
  signal accumulator_q_net: std_logic_vector(23 downto 0);
  signal addsub1_s_net_x0: std_logic_vector(16 downto 0);
  signal addsub_s_net: std_logic_vector(18 downto 0);
  signal asr_i_q_net: std_logic_vector(16 downto 0);
  signal ce_1_sg_x29: std_logic;
  signal ce_4_sg_x18: std_logic;
  signal clk_1_sg_x29: std_logic;
  signal clk_4_sg_x18: std_logic;
  signal convert1_dout_net: std_logic_vector(5 downto 0);
  signal convert3_dout_net_x0: std_logic_vector(4 downto 0);
  signal convert_dout_net: std_logic_vector(23 downto 0);
  signal down_sample1_q_net_x0: std_logic;
  signal down_sample3_q_net: std_logic_vector(4 downto 0);
  signal mult_p_net_x0: std_logic_vector(15 downto 0);
  signal negate_i_op_net: std_logic_vector(17 downto 0);
  signal one_over_delay_data_net: std_logic_vector(7 downto 0);
  signal register15_q_net: std_logic_vector(16 downto 0);

begin
  ce_1_sg_x29 <= ce_1;
  ce_4_sg_x18 <= ce_4;
  clk_1_sg_x29 <= clk_1;
  clk_4_sg_x18 <= clk_4;
  addsub1_s_net_x0 <= cplx_in;
  convert3_dout_net_x0 <= iqavg_len;
  down_sample1_q_net_x0 <= reset;
  avg_cplx_out <= mult_p_net_x0;

  accumulator: entity work.accum_8a5feb4e65
    port map (
      b => convert_dout_net,
      ce => ce_4_sg_x18,
      clk => clk_4_sg_x18,
      clr => '0',
      rst(0) => down_sample1_q_net_x0,
      q => accumulator_q_net
    );

  addsub: entity work.addsub_8339ff5117
    port map (
      a => register15_q_net,
      b => negate_i_op_net,
      ce => ce_4_sg_x18,
      clk => clk_4_sg_x18,
      clr => '0',
      s => addsub_s_net
    );

  asr_i: entity work.xladdrsr
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 5,
      core_addr_width => 5,
      core_name0 => "asr_11_0_3273ca920bc68c94",
      d_arith => xlUnsigned,
      d_bin_pt => 13,
      d_width => 17,
      q_arith => xlUnsigned,
      q_bin_pt => 13,
      q_width => 17
    )
    port map (
      addr => down_sample3_q_net,
      ce => ce_4_sg_x18,
      clk => clk_4_sg_x18,
      clr => '0',
      d => register15_q_net,
      en => "1",
      q => asr_i_q_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 13,
      din_width => 19,
      dout_arith => 2,
      dout_bin_pt => 16,
      dout_width => 24,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_4_sg_x18,
      clk => clk_4_sg_x18,
      clr => '0',
      din => addsub_s_net,
      en => "1",
      dout => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 5,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 6,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_4_sg_x18,
      clk => clk_4_sg_x18,
      clr => '0',
      din => down_sample3_q_net,
      en => "1",
      dout => convert1_dout_net
    );

  down_sample3: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 5,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 5
    )
    port map (
      d => convert3_dout_net_x0,
      dest_ce => ce_4_sg_x18,
      dest_clk => clk_4_sg_x18,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x29,
      src_clk => clk_1_sg_x29,
      src_clr => '0',
      q => down_sample3_q_net
    );

  mult: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 16,
      a_width => 24,
      b_arith => xlUnsigned,
      b_bin_pt => 8,
      b_width => 8,
      c_a_type => 0,
      c_a_width => 24,
      c_b_type => 1,
      c_b_width => 8,
      c_baat => 24,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_fb504edf4f6e1598",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 13,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => accumulator_q_net,
      b => one_over_delay_data_net,
      ce => ce_4_sg_x18,
      clk => clk_4_sg_x18,
      clr => '0',
      core_ce => ce_4_sg_x18,
      core_clk => clk_4_sg_x18,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net_x0
    );

  negate_i: entity work.negate_d33f3e1744
    port map (
      ce => ce_4_sg_x18,
      clk => clk_4_sg_x18,
      clr => '0',
      ip => asr_i_q_net,
      op => negate_i_op_net
    );

  one_over_delay: entity work.xlsprom
    generic map (
      c_address_width => 6,
      c_width => 8,
      core_name0 => "bmg_63_e0a65e1751572c3a",
      latency => 1
    )
    port map (
      addr => convert1_dout_net,
      ce => ce_4_sg_x18,
      clk => clk_4_sg_x18,
      en => "1",
      rst => "0",
      data => one_over_delay_data_net
    );

  register15: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_4_sg_x18,
      clk => clk_4_sg_x18,
      d => addsub1_s_net_x0,
      en => "1",
      rst(0) => down_sample1_q_net_x0,
      q => register15_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/Dual_channel_VIQ/Timeshared_squarer/Subsystem"

entity subsystem_entity_f1ee4717f2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    counter: out std_logic_vector(1 downto 0); 
    x0: out std_logic; 
    x1: out std_logic; 
    x2: out std_logic; 
    x3: out std_logic
  );
end subsystem_entity_f1ee4717f2;

architecture structural of subsystem_entity_f1ee4717f2 is
  signal ce_1_sg_x31: std_logic;
  signal clk_1_sg_x31: std_logic;
  signal constant1_op_net: std_logic_vector(1 downto 0);
  signal constant2_op_net: std_logic_vector(1 downto 0);
  signal constant3_op_net: std_logic_vector(1 downto 0);
  signal constant_op_net: std_logic_vector(1 downto 0);
  signal counter1_op_net_x0: std_logic_vector(1 downto 0);
  signal relational1_op_net_x0: std_logic;
  signal relational2_op_net_x0: std_logic;
  signal relational3_op_net_x0: std_logic;
  signal relational_op_net_x0: std_logic;

begin
  ce_1_sg_x31 <= ce_1;
  clk_1_sg_x31 <= clk_1;
  counter <= counter1_op_net_x0;
  x0 <= relational_op_net_x0;
  x1 <= relational1_op_net_x0;
  x2 <= relational2_op_net_x0;
  x3 <= relational3_op_net_x0;

  constant1: entity work.constant_a7e2bb9e12
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_e8ddc079e9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_3a9a3daeb9
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  constant_x0: entity work.constant_cda50df78a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter1: entity work.xlcounter_free
    generic map (
      core_name0 => "cntr_11_0_3166d4cc5b09c744",
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x31,
      clk => clk_1_sg_x31,
      clr => '0',
      en => "1",
      rst => "0",
      op => counter1_op_net_x0
    );

  relational: entity work.relational_5f1eb17108
    port map (
      a => counter1_op_net_x0,
      b => constant_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net_x0
    );

  relational1: entity work.relational_5f1eb17108
    port map (
      a => counter1_op_net_x0,
      b => constant1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net_x0
    );

  relational2: entity work.relational_5f1eb17108
    port map (
      a => counter1_op_net_x0,
      b => constant2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net_x0
    );

  relational3: entity work.relational_5f1eb17108
    port map (
      a => counter1_op_net_x0,
      b => constant3_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/Dual_channel_VIQ/Timeshared_squarer"

entity timeshared_squarer_entity_5cfa6d1856 is
  port (
    ce_1: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_4: in std_logic; 
    i_a: in std_logic_vector(13 downto 0); 
    i_b: in std_logic_vector(13 downto 0); 
    q_a: in std_logic_vector(13 downto 0); 
    q_b: in std_logic_vector(13 downto 0); 
    i_a2: out std_logic_vector(15 downto 0); 
    i_b2: out std_logic_vector(15 downto 0); 
    q_a2: out std_logic_vector(15 downto 0); 
    q_b2: out std_logic_vector(15 downto 0)
  );
end timeshared_squarer_entity_5cfa6d1856;

architecture structural of timeshared_squarer_entity_5cfa6d1856 is
  signal ce_1_sg_x32: std_logic;
  signal ce_4_sg_x20: std_logic;
  signal clk_1_sg_x32: std_logic;
  signal clk_4_sg_x20: std_logic;
  signal convert1_dout_net: std_logic_vector(15 downto 0);
  signal counter1_op_net_x0: std_logic_vector(1 downto 0);
  signal delay_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample2_q_net: std_logic_vector(15 downto 0);
  signal down_sample3_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample4_q_net_x6: std_logic_vector(13 downto 0);
  signal down_sample5_q_net_x3: std_logic_vector(13 downto 0);
  signal down_sample_q_net_x0: std_logic_vector(15 downto 0);
  signal i_in_x4: std_logic_vector(13 downto 0);
  signal mult_p_net: std_logic_vector(27 downto 0);
  signal mux_y_net: std_logic_vector(13 downto 0);
  signal q_in_x3: std_logic_vector(13 downto 0);
  signal register1_q_net: std_logic_vector(15 downto 0);
  signal register2_q_net: std_logic_vector(15 downto 0);
  signal register3_q_net: std_logic_vector(15 downto 0);
  signal register_q_net: std_logic_vector(15 downto 0);
  signal relational1_op_net_x0: std_logic;
  signal relational2_op_net_x0: std_logic;
  signal relational3_op_net_x0: std_logic;
  signal relational_op_net_x0: std_logic;
  signal up_sample1_q_net: std_logic_vector(13 downto 0);
  signal up_sample2_q_net: std_logic_vector(13 downto 0);
  signal up_sample3_q_net: std_logic_vector(13 downto 0);
  signal up_sample_q_net: std_logic_vector(13 downto 0);

begin
  ce_1_sg_x32 <= ce_1;
  ce_4_sg_x20 <= ce_4;
  clk_1_sg_x32 <= clk_1;
  clk_4_sg_x20 <= clk_4;
  i_in_x4 <= i_a;
  down_sample4_q_net_x6 <= i_b;
  q_in_x3 <= q_a;
  down_sample5_q_net_x3 <= q_b;
  i_a2 <= delay_q_net_x0;
  i_b2 <= down_sample_q_net_x0;
  q_a2 <= down_sample3_q_net_x0;
  q_b2 <= down_sample1_q_net_x0;

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 26,
      din_width => 28,
      dout_arith => 1,
      dout_bin_pt => 13,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      clr => '0',
      din => mult_p_net,
      en => "1",
      dout => convert1_dout_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_4_sg_x20,
      clk => clk_4_sg_x20,
      d => down_sample2_q_net,
      en => '1',
      rst => '1',
      q => delay_q_net_x0
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 13,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 13,
      q_width => 16
    )
    port map (
      d => register_q_net,
      dest_ce => ce_4_sg_x20,
      dest_clk => clk_4_sg_x20,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x32,
      src_clk => clk_1_sg_x32,
      src_clr => '0',
      q => down_sample_q_net_x0
    );

  down_sample1: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 13,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 13,
      q_width => 16
    )
    port map (
      d => register1_q_net,
      dest_ce => ce_4_sg_x20,
      dest_clk => clk_4_sg_x20,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x32,
      src_clk => clk_1_sg_x32,
      src_clr => '0',
      q => down_sample1_q_net_x0
    );

  down_sample2: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 13,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 13,
      q_width => 16
    )
    port map (
      d => register2_q_net,
      dest_ce => ce_4_sg_x20,
      dest_clk => clk_4_sg_x20,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x32,
      src_clk => clk_1_sg_x32,
      src_clr => '0',
      q => down_sample2_q_net
    );

  down_sample3: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 13,
      d_width => 16,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 13,
      q_width => 16
    )
    port map (
      d => register3_q_net,
      dest_ce => ce_4_sg_x20,
      dest_clk => clk_4_sg_x20,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x32,
      src_clk => clk_1_sg_x32,
      src_clr => '0',
      q => down_sample3_q_net_x0
    );

  mult: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 13,
      a_width => 14,
      b_arith => xlSigned,
      b_bin_pt => 13,
      b_width => 14,
      c_a_type => 0,
      c_a_width => 14,
      c_b_type => 0,
      c_b_width => 14,
      c_baat => 14,
      c_output_width => 28,
      c_type => 0,
      core_name0 => "mult_11_2_209281571d5e4e1f",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 26,
      p_width => 28,
      quantization => 1
    )
    port map (
      a => mux_y_net,
      b => mux_y_net,
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      clr => '0',
      core_ce => ce_1_sg_x32,
      core_clk => clk_1_sg_x32,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net
    );

  mux: entity work.mux_d6020f70c3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => up_sample_q_net,
      d1 => up_sample1_q_net,
      d2 => up_sample2_q_net,
      d3 => up_sample3_q_net,
      sel => counter1_op_net_x0,
      y => mux_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      d => convert1_dout_net,
      en(0) => relational1_op_net_x0,
      rst => "0",
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      d => convert1_dout_net,
      en(0) => relational2_op_net_x0,
      rst => "0",
      q => register2_q_net
    );

  register3: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      d => convert1_dout_net,
      en(0) => relational3_op_net_x0,
      rst => "0",
      q => register3_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x32,
      clk => clk_1_sg_x32,
      d => convert1_dout_net,
      en(0) => relational_op_net_x0,
      rst => "0",
      q => register_q_net
    );

  subsystem_f1ee4717f2: entity work.subsystem_entity_f1ee4717f2
    port map (
      ce_1 => ce_1_sg_x32,
      clk_1 => clk_1_sg_x32,
      counter => counter1_op_net_x0,
      x0 => relational_op_net_x0,
      x1 => relational1_op_net_x0,
      x2 => relational2_op_net_x0,
      x3 => relational3_op_net_x0
    );

  up_sample: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => i_in_x4,
      dest_ce => ce_1_sg_x32,
      dest_clk => clk_1_sg_x32,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x20,
      src_clk => clk_4_sg_x20,
      src_clr => '0',
      q => up_sample_q_net
    );

  up_sample1: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => q_in_x3,
      dest_ce => ce_1_sg_x32,
      dest_clk => clk_1_sg_x32,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x20,
      src_clk => clk_4_sg_x20,
      src_clr => '0',
      q => up_sample1_q_net
    );

  up_sample2: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => down_sample4_q_net_x6,
      dest_ce => ce_1_sg_x32,
      dest_clk => clk_1_sg_x32,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x20,
      src_clk => clk_4_sg_x20,
      src_clr => '0',
      q => up_sample2_q_net
    );

  up_sample3: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => down_sample5_q_net_x3,
      dest_ce => ce_1_sg_x32,
      dest_clk => clk_1_sg_x32,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x20,
      src_clk => clk_4_sg_x20,
      src_clr => '0',
      q => up_sample3_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/Dual_channel_VIQ"

entity dual_channel_viq_entity_c713621eff is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    clk_4: in std_logic; 
    i_in_a: in std_logic_vector(13 downto 0); 
    i_in_b: in std_logic_vector(13 downto 0); 
    iqavg: in std_logic_vector(4 downto 0); 
    m_reset: in std_logic; 
    q_in_a: in std_logic_vector(13 downto 0); 
    q_in_b: in std_logic_vector(13 downto 0); 
    viq_a: out std_logic_vector(8 downto 0); 
    viq_b: out std_logic_vector(8 downto 0)
  );
end dual_channel_viq_entity_c713621eff;

architecture structural of dual_channel_viq_entity_c713621eff is
  signal addsub1_s_net_x0: std_logic_vector(16 downto 0);
  signal addsub2_s_net_x0: std_logic_vector(16 downto 0);
  signal ce_1_sg_x33: std_logic;
  signal ce_2_sg_x0: std_logic;
  signal ce_4_sg_x21: std_logic;
  signal clk_1_sg_x33: std_logic;
  signal clk_2_sg_x0: std_logic;
  signal clk_4_sg_x21: std_logic;
  signal convert2_dout_net: std_logic;
  signal convert3_dout_net: std_logic_vector(10 downto 0);
  signal convert3_dout_net_x2: std_logic_vector(4 downto 0);
  signal convert4_dout_net: std_logic_vector(10 downto 0);
  signal delay_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x1: std_logic;
  signal down_sample2_q_net_x2: std_logic_vector(8 downto 0);
  signal down_sample3_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample4_q_net_x7: std_logic_vector(13 downto 0);
  signal down_sample5_q_net_x4: std_logic_vector(13 downto 0);
  signal down_sample_q_net_x0: std_logic_vector(15 downto 0);
  signal down_sample_q_net_x2: std_logic_vector(8 downto 0);
  signal i_in_x5: std_logic_vector(13 downto 0);
  signal inverter_op_net: std_logic;
  signal mult_p_net_x0: std_logic_vector(15 downto 0);
  signal mult_p_net_x1: std_logic_vector(15 downto 0);
  signal mux_y_net: std_logic_vector(10 downto 0);
  signal one_bit_op_net: std_logic;
  signal q_in_x4: std_logic_vector(13 downto 0);
  signal register1_q_net: std_logic_vector(8 downto 0);
  signal register_q_net: std_logic_vector(8 downto 0);
  signal reinterpret1_output_port_net: std_logic_vector(10 downto 0);
  signal relational_op_net_x7: std_logic;
  signal up_sample4_q_net: std_logic_vector(15 downto 0);
  signal up_sample5_q_net: std_logic_vector(15 downto 0);
  signal viqlut1_data_net: std_logic_vector(8 downto 0);

begin
  ce_1_sg_x33 <= ce_1;
  ce_2_sg_x0 <= ce_2;
  ce_4_sg_x21 <= ce_4;
  clk_1_sg_x33 <= clk_1;
  clk_2_sg_x0 <= clk_2;
  clk_4_sg_x21 <= clk_4;
  i_in_x5 <= i_in_a;
  down_sample4_q_net_x7 <= i_in_b;
  convert3_dout_net_x2 <= iqavg;
  relational_op_net_x7 <= m_reset;
  q_in_x4 <= q_in_a;
  down_sample5_q_net_x4 <= q_in_b;
  viq_a <= down_sample2_q_net_x2;
  viq_b <= down_sample_q_net_x2;

  addsub1: entity work.addsub_6f5ed08684
    port map (
      a => delay_q_net_x0,
      b => down_sample3_q_net_x0,
      ce => ce_4_sg_x21,
      clk => clk_4_sg_x21,
      clr => '0',
      s => addsub1_s_net_x0
    );

  addsub2: entity work.addsub_6f5ed08684
    port map (
      a => down_sample_q_net_x0,
      b => down_sample1_q_net_x0,
      ce => ce_4_sg_x21,
      clk => clk_4_sg_x21,
      clr => '0',
      s => addsub2_s_net_x0
    );

  avg_i_q2_f0b5d6eaad: entity work.avg_i_q2_entity_f0b5d6eaad
    port map (
      ce_1 => ce_1_sg_x33,
      ce_4 => ce_4_sg_x21,
      clk_1 => clk_1_sg_x33,
      clk_4 => clk_4_sg_x21,
      cplx_in => addsub1_s_net_x0,
      iqavg_len => convert3_dout_net_x2,
      reset => down_sample1_q_net_x1,
      avg_cplx_out => mult_p_net_x0
    );

  avg_i_q3_3942226fe6: entity work.avg_i_q2_entity_f0b5d6eaad
    port map (
      ce_1 => ce_1_sg_x33,
      ce_4 => ce_4_sg_x21,
      clk_1 => clk_1_sg_x33,
      clk_4 => clk_4_sg_x21,
      cplx_in => addsub2_s_net_x0,
      iqavg_len => convert3_dout_net_x2,
      reset => down_sample1_q_net_x1,
      avg_cplx_out => mult_p_net_x1
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlRound
    )
    port map (
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      din(0) => one_bit_op_net,
      en => "1",
      dout(0) => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 13,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 10,
      dout_width => 11,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlRound
    )
    port map (
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      din => up_sample4_q_net,
      en => "1",
      dout => convert3_dout_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 13,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 10,
      dout_width => 11,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlRound
    )
    port map (
      ce => ce_2_sg_x0,
      clk => clk_2_sg_x0,
      clr => '0',
      din => up_sample5_q_net,
      en => "1",
      dout => convert4_dout_net
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 2,
      d_width => 9,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlSigned,
      q_bin_pt => 2,
      q_width => 9
    )
    port map (
      d => register_q_net,
      dest_ce => ce_2_sg_x0,
      dest_clk => clk_2_sg_x0,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x33,
      src_clk => clk_1_sg_x33,
      src_clr => '0',
      q => down_sample_q_net_x2
    );

  down_sample1: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => relational_op_net_x7,
      dest_ce => ce_4_sg_x21,
      dest_clk => clk_4_sg_x21,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x33,
      src_clk => clk_1_sg_x33,
      src_clr => '0',
      q(0) => down_sample1_q_net_x1
    );

  down_sample2: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 2,
      d_width => 9,
      ds_ratio => 2,
      latency => 1,
      phase => 1,
      q_arith => xlSigned,
      q_bin_pt => 2,
      q_width => 9
    )
    port map (
      d => register1_q_net,
      dest_ce => ce_2_sg_x0,
      dest_clk => clk_2_sg_x0,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x33,
      src_clk => clk_1_sg_x33,
      src_clr => '0',
      q => down_sample2_q_net_x2
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      ip(0) => convert2_dout_net,
      op(0) => inverter_op_net
    );

  mux: entity work.mux_eb6266ebdd
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert3_dout_net,
      d1 => convert4_dout_net,
      sel(0) => one_bit_op_net,
      y => mux_y_net
    );

  one_bit: entity work.counter_8ec3f4ab23
    port map (
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      clr => '0',
      op(0) => one_bit_op_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 9,
      init_value => b"000000000"
    )
    port map (
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      d => viqlut1_data_net,
      en(0) => convert2_dout_net,
      rst => "0",
      q => register1_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 9,
      init_value => b"000000000"
    )
    port map (
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      d => viqlut1_data_net,
      en(0) => inverter_op_net,
      rst => "0",
      q => register_q_net
    );

  reinterpret1: entity work.reinterpret_6b1adb5d55
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => mux_y_net,
      output_port => reinterpret1_output_port_net
    );

  timeshared_squarer_5cfa6d1856: entity work.timeshared_squarer_entity_5cfa6d1856
    port map (
      ce_1 => ce_1_sg_x33,
      ce_4 => ce_4_sg_x21,
      clk_1 => clk_1_sg_x33,
      clk_4 => clk_4_sg_x21,
      i_a => i_in_x5,
      i_b => down_sample4_q_net_x7,
      q_a => q_in_x4,
      q_b => down_sample5_q_net_x4,
      i_a2 => delay_q_net_x0,
      i_b2 => down_sample_q_net_x0,
      q_a2 => down_sample3_q_net_x0,
      q_b2 => down_sample1_q_net_x0
    );

  up_sample4: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 16
    )
    port map (
      d => mult_p_net_x0,
      dest_ce => ce_2_sg_x0,
      dest_clk => clk_2_sg_x0,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x21,
      src_clk => clk_4_sg_x21,
      src_clr => '0',
      q => up_sample4_q_net
    );

  up_sample5: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 16
    )
    port map (
      d => mult_p_net_x1,
      dest_ce => ce_2_sg_x0,
      dest_clk => clk_2_sg_x0,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x21,
      src_clk => clk_4_sg_x21,
      src_clr => '0',
      q => up_sample5_q_net
    );

  viqlut1: entity work.xlsprom
    generic map (
      c_address_width => 11,
      c_width => 9,
      core_name0 => "bmg_63_a62a16bcbafb824b",
      latency => 1
    )
    port map (
      addr => reinterpret1_output_port_net,
      ce => ce_1_sg_x33,
      clk => clk_1_sg_x33,
      en => "1",
      rst => "0",
      data => viqlut1_data_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/EDK Processor"

entity edk_processor_entity_ed38d2d522 is
  port (
    from_register: in std_logic_vector(1 downto 0); 
    from_register1: in std_logic_vector(1 downto 0); 
    from_register2: in std_logic_vector(4 downto 0); 
    from_register3: in std_logic_vector(4 downto 0); 
    from_register4: in std_logic_vector(9 downto 0); 
    plb_abus: in std_logic_vector(31 downto 0); 
    plb_ce_1: in std_logic; 
    plb_clk_1: in std_logic; 
    plb_pavalid: in std_logic; 
    plb_rnw: in std_logic; 
    plb_wrdbus: in std_logic_vector(31 downto 0); 
    sg_plb_addrpref: in std_logic_vector(19 downto 0); 
    splb_rst: in std_logic; 
    to_register: in std_logic_vector(9 downto 0); 
    to_register1: in std_logic_vector(15 downto 0); 
    to_register10: in std_logic_vector(15 downto 0); 
    to_register11: in std_logic; 
    to_register12: in std_logic; 
    to_register2: in std_logic_vector(15 downto 0); 
    to_register3: in std_logic_vector(17 downto 0); 
    to_register4: in std_logic_vector(31 downto 0); 
    to_register5: in std_logic_vector(31 downto 0); 
    to_register6: in std_logic_vector(17 downto 0); 
    to_register7: in std_logic_vector(15 downto 0); 
    to_register8: in std_logic; 
    to_register9: in std_logic_vector(31 downto 0); 
    constant5_x0: out std_logic; 
    plb_decode_x0: out std_logic; 
    plb_decode_x1: out std_logic; 
    plb_decode_x2: out std_logic; 
    plb_decode_x3: out std_logic; 
    plb_decode_x4: out std_logic_vector(31 downto 0); 
    plb_memmap_x0: out std_logic_vector(9 downto 0); 
    plb_memmap_x1: out std_logic; 
    plb_memmap_x10: out std_logic_vector(31 downto 0); 
    plb_memmap_x11: out std_logic; 
    plb_memmap_x12: out std_logic_vector(17 downto 0); 
    plb_memmap_x13: out std_logic; 
    plb_memmap_x14: out std_logic_vector(15 downto 0); 
    plb_memmap_x15: out std_logic; 
    plb_memmap_x16: out std_logic; 
    plb_memmap_x17: out std_logic; 
    plb_memmap_x18: out std_logic_vector(31 downto 0); 
    plb_memmap_x19: out std_logic; 
    plb_memmap_x2: out std_logic_vector(15 downto 0); 
    plb_memmap_x20: out std_logic_vector(15 downto 0); 
    plb_memmap_x21: out std_logic; 
    plb_memmap_x22: out std_logic; 
    plb_memmap_x23: out std_logic; 
    plb_memmap_x24: out std_logic; 
    plb_memmap_x25: out std_logic; 
    plb_memmap_x3: out std_logic; 
    plb_memmap_x4: out std_logic_vector(15 downto 0); 
    plb_memmap_x5: out std_logic; 
    plb_memmap_x6: out std_logic_vector(17 downto 0); 
    plb_memmap_x7: out std_logic; 
    plb_memmap_x8: out std_logic_vector(31 downto 0); 
    plb_memmap_x9: out std_logic
  );
end edk_processor_entity_ed38d2d522;

architecture structural of edk_processor_entity_ed38d2d522 is
  signal adj_din_x0: std_logic_vector(15 downto 0);
  signal adj_dout_x0: std_logic_vector(15 downto 0);
  signal adj_en_x0: std_logic;
  signal agc_en_din_x0: std_logic;
  signal agc_en_dout_x0: std_logic;
  signal agc_en_en_x0: std_logic;
  signal avg_len_din_x0: std_logic_vector(15 downto 0);
  signal avg_len_dout_x0: std_logic_vector(15 downto 0);
  signal avg_len_en_x0: std_logic;
  signal bankaddr: std_logic_vector(1 downto 0);
  signal bits_r_dout_x0: std_logic_vector(9 downto 0);
  signal bits_w_din_x0: std_logic_vector(9 downto 0);
  signal bits_w_dout_x0: std_logic_vector(9 downto 0);
  signal bits_w_en_x0: std_logic;
  signal dco_iir_coef_fb_din_x0: std_logic_vector(17 downto 0);
  signal dco_iir_coef_fb_dout_x0: std_logic_vector(17 downto 0);
  signal dco_iir_coef_fb_en_x0: std_logic;
  signal dco_iir_coef_gain_din_x0: std_logic_vector(17 downto 0);
  signal dco_iir_coef_gain_dout_x0: std_logic_vector(17 downto 0);
  signal dco_iir_coef_gain_en_x0: std_logic;
  signal dco_timing_din_x0: std_logic_vector(31 downto 0);
  signal dco_timing_dout_x0: std_logic_vector(31 downto 0);
  signal dco_timing_en_x0: std_logic;
  signal gbb_a_dout_x0: std_logic_vector(4 downto 0);
  signal gbb_b_dout_x0: std_logic_vector(4 downto 0);
  signal gbb_init_din_x0: std_logic_vector(15 downto 0);
  signal gbb_init_dout_x0: std_logic_vector(15 downto 0);
  signal gbb_init_en_x0: std_logic;
  signal grf_a_dout_x0: std_logic_vector(1 downto 0);
  signal grf_b_dout_x0: std_logic_vector(1 downto 0);
  signal linearaddr: std_logic_vector(7 downto 0);
  signal mreset_in_din_x0: std_logic;
  signal mreset_in_dout_x0: std_logic;
  signal mreset_in_en_x0: std_logic;
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
  signal sreset_in_din_x0: std_logic;
  signal sreset_in_dout_x0: std_logic;
  signal sreset_in_en_x0: std_logic;
  signal t_db_din_x0: std_logic_vector(15 downto 0);
  signal t_db_dout_x0: std_logic_vector(15 downto 0);
  signal t_db_en_x0: std_logic;
  signal thresholds_din_x0: std_logic_vector(31 downto 0);
  signal thresholds_dout_x0: std_logic_vector(31 downto 0);
  signal thresholds_en_x0: std_logic;
  signal timing_din_x0: std_logic_vector(31 downto 0);
  signal timing_dout_x0: std_logic_vector(31 downto 0);
  signal timing_en_x0: std_logic;
  signal wrdbusreg: std_logic_vector(31 downto 0);

begin
  grf_a_dout_x0 <= from_register;
  grf_b_dout_x0 <= from_register1;
  gbb_b_dout_x0 <= from_register2;
  gbb_a_dout_x0 <= from_register3;
  bits_r_dout_x0 <= from_register4;
  plb_abus_net_x0 <= plb_abus;
  plb_ce_1_sg_x0 <= plb_ce_1;
  plb_clk_1_sg_x0 <= plb_clk_1;
  plb_pavalid_net_x0 <= plb_pavalid;
  plb_rnw_net_x0 <= plb_rnw;
  plb_wrdbus_net_x0 <= plb_wrdbus;
  sg_plb_addrpref_net_x0 <= sg_plb_addrpref;
  splb_rst_net_x0 <= splb_rst;
  bits_w_dout_x0 <= to_register;
  gbb_init_dout_x0 <= to_register1;
  t_db_dout_x0 <= to_register10;
  mreset_in_dout_x0 <= to_register11;
  sreset_in_dout_x0 <= to_register12;
  adj_dout_x0 <= to_register2;
  dco_iir_coef_fb_dout_x0 <= to_register3;
  thresholds_dout_x0 <= to_register4;
  timing_dout_x0 <= to_register5;
  dco_iir_coef_gain_dout_x0 <= to_register6;
  avg_len_dout_x0 <= to_register7;
  agc_en_dout_x0 <= to_register8;
  dco_timing_dout_x0 <= to_register9;
  constant5_x0 <= sl_wait_x0;
  plb_decode_x0 <= sl_addrack_x0;
  plb_decode_x1 <= sl_rdcomp_x0;
  plb_decode_x2 <= sl_wrdack_x0;
  plb_decode_x3 <= sl_rddack_x0;
  plb_decode_x4 <= sl_rddbus_x0;
  plb_memmap_x0 <= bits_w_din_x0;
  plb_memmap_x1 <= bits_w_en_x0;
  plb_memmap_x10 <= timing_din_x0;
  plb_memmap_x11 <= timing_en_x0;
  plb_memmap_x12 <= dco_iir_coef_gain_din_x0;
  plb_memmap_x13 <= dco_iir_coef_gain_en_x0;
  plb_memmap_x14 <= avg_len_din_x0;
  plb_memmap_x15 <= avg_len_en_x0;
  plb_memmap_x16 <= agc_en_din_x0;
  plb_memmap_x17 <= agc_en_en_x0;
  plb_memmap_x18 <= dco_timing_din_x0;
  plb_memmap_x19 <= dco_timing_en_x0;
  plb_memmap_x2 <= gbb_init_din_x0;
  plb_memmap_x20 <= t_db_din_x0;
  plb_memmap_x21 <= t_db_en_x0;
  plb_memmap_x22 <= mreset_in_din_x0;
  plb_memmap_x23 <= mreset_in_en_x0;
  plb_memmap_x24 <= sreset_in_din_x0;
  plb_memmap_x25 <= sreset_in_en_x0;
  plb_memmap_x3 <= gbb_init_en_x0;
  plb_memmap_x4 <= adj_din_x0;
  plb_memmap_x5 <= adj_en_x0;
  plb_memmap_x6 <= dco_iir_coef_fb_din_x0;
  plb_memmap_x7 <= dco_iir_coef_fb_en_x0;
  plb_memmap_x8 <= thresholds_din_x0;
  plb_memmap_x9 <= thresholds_en_x0;

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

  plb_memmap: entity work.mcode_block_3f3206dde5
    port map (
      addrack(0) => sl_addrack_x0,
      bankaddr => bankaddr,
      ce => plb_ce_1_sg_x0,
      clk => plb_clk_1_sg_x0,
      clr => '0',
      linearaddr => linearaddr,
      rnwreg(0) => rnwreg,
      sm_adj => adj_dout_x0,
      sm_agc_en(0) => agc_en_dout_x0,
      sm_avg_len => avg_len_dout_x0,
      sm_bits_r => bits_r_dout_x0,
      sm_bits_w => bits_w_dout_x0,
      sm_dco_iir_coef_fb => dco_iir_coef_fb_dout_x0,
      sm_dco_iir_coef_gain => dco_iir_coef_gain_dout_x0,
      sm_dco_timing => dco_timing_dout_x0,
      sm_gbb_a => gbb_a_dout_x0,
      sm_gbb_b => gbb_b_dout_x0,
      sm_gbb_init => gbb_init_dout_x0,
      sm_grf_a => grf_a_dout_x0,
      sm_grf_b => grf_b_dout_x0,
      sm_mreset_in(0) => mreset_in_dout_x0,
      sm_sreset_in(0) => sreset_in_dout_x0,
      sm_t_db => t_db_dout_x0,
      sm_thresholds => thresholds_dout_x0,
      sm_timing => timing_dout_x0,
      wrdbus => wrdbusreg,
      read_bank_out => rddata,
      sm_adj_din => adj_din_x0,
      sm_adj_en(0) => adj_en_x0,
      sm_agc_en_din(0) => agc_en_din_x0,
      sm_agc_en_en(0) => agc_en_en_x0,
      sm_avg_len_din => avg_len_din_x0,
      sm_avg_len_en(0) => avg_len_en_x0,
      sm_bits_w_din => bits_w_din_x0,
      sm_bits_w_en(0) => bits_w_en_x0,
      sm_dco_iir_coef_fb_din => dco_iir_coef_fb_din_x0,
      sm_dco_iir_coef_fb_en(0) => dco_iir_coef_fb_en_x0,
      sm_dco_iir_coef_gain_din => dco_iir_coef_gain_din_x0,
      sm_dco_iir_coef_gain_en(0) => dco_iir_coef_gain_en_x0,
      sm_dco_timing_din => dco_timing_din_x0,
      sm_dco_timing_en(0) => dco_timing_en_x0,
      sm_gbb_init_din => gbb_init_din_x0,
      sm_gbb_init_en(0) => gbb_init_en_x0,
      sm_mreset_in_din(0) => mreset_in_din_x0,
      sm_mreset_in_en(0) => mreset_in_en_x0,
      sm_sreset_in_din(0) => sreset_in_din_x0,
      sm_sreset_in_en(0) => sreset_in_en_x0,
      sm_t_db_din => t_db_din_x0,
      sm_t_db_en(0) => t_db_en_x0,
      sm_thresholds_din => thresholds_din_x0,
      sm_thresholds_en(0) => thresholds_en_x0,
      sm_timing_din => timing_din_x0,
      sm_timing_en(0) => timing_en_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/Registers/Read-Write Register"

entity read_write_register_entity_40bf91ed8d is
  port (
    constant_x1: out std_logic
  );
end read_write_register_entity_40bf91ed8d;

architecture structural of read_write_register_entity_40bf91ed8d is
  signal constant_op_net_x0: std_logic;

begin
  constant_x1 <= constant_op_net_x0;

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/Registers"

entity registers_entity_f5d7c58379 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    from_register: in std_logic; 
    from_register1: in std_logic; 
    from_register10: in std_logic_vector(15 downto 0); 
    from_register2: in std_logic; 
    from_register3: in std_logic_vector(15 downto 0); 
    from_register8: in std_logic_vector(15 downto 0); 
    from_register9: in std_logic_vector(15 downto 0); 
    from_register_x0: in std_logic_vector(9 downto 0); 
    adj_1: out std_logic_vector(7 downto 0); 
    adj_2: out std_logic_vector(7 downto 0); 
    agc_en: out std_logic; 
    constant_x1: out std_logic; 
    dco_mode: out std_logic_vector(1 downto 0); 
    en_dco_sub: out std_logic; 
    gbb_init: out std_logic_vector(7 downto 0); 
    mreset_in: out std_logic; 
    read_write_register: out std_logic; 
    rssi_avg_len: out std_logic_vector(2 downto 0); 
    sreset_in: out std_logic; 
    t_db: out std_logic_vector(7 downto 0); 
    viq_avg_len: out std_logic_vector(4 downto 0)
  );
end registers_entity_f5d7c58379;

architecture structural of registers_entity_f5d7c58379 is
  signal ce_1_sg_x34: std_logic;
  signal clk_1_sg_x34: std_logic;
  signal constant_op_net_x1: std_logic;
  signal constant_op_net_x2: std_logic;
  signal convert11_dout_net_x4: std_logic;
  signal convert1_dout_net_x2: std_logic;
  signal convert2_dout_net_x0: std_logic;
  signal convert3_dout_net_x3: std_logic_vector(4 downto 0);
  signal convert4_dout_net_x0: std_logic_vector(2 downto 0);
  signal convert5_dout_net_x4: std_logic_vector(7 downto 0);
  signal convert6_dout_net_x4: std_logic_vector(7 downto 0);
  signal convert7_dout_net_x4: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x6: std_logic_vector(7 downto 0);
  signal convert_dout_net_x0: std_logic;
  signal from_register10_data_out_net_x0: std_logic_vector(15 downto 0);
  signal from_register1_data_out_net_x0: std_logic;
  signal from_register2_data_out_net_x0: std_logic;
  signal from_register3_data_out_net_x0: std_logic_vector(15 downto 0);
  signal from_register8_data_out_net_x0: std_logic_vector(15 downto 0);
  signal from_register9_data_out_net_x0: std_logic_vector(15 downto 0);
  signal from_register_data_out_net_x1: std_logic;
  signal from_register_data_out_net_x2: std_logic_vector(9 downto 0);
  signal slice1_y_net: std_logic_vector(7 downto 0);
  signal slice2_y_net: std_logic_vector(7 downto 0);
  signal slice3_y_net: std_logic_vector(7 downto 0);
  signal slice5_y_net_x4: std_logic_vector(1 downto 0);
  signal slice6_y_net: std_logic;
  signal slice_y_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x34 <= ce_1;
  clk_1_sg_x34 <= clk_1;
  from_register_data_out_net_x1 <= from_register;
  from_register1_data_out_net_x0 <= from_register1;
  from_register10_data_out_net_x0 <= from_register10;
  from_register2_data_out_net_x0 <= from_register2;
  from_register3_data_out_net_x0 <= from_register3;
  from_register8_data_out_net_x0 <= from_register8;
  from_register9_data_out_net_x0 <= from_register9;
  from_register_data_out_net_x2 <= from_register_x0;
  adj_1 <= convert5_dout_net_x4;
  adj_2 <= convert6_dout_net_x4;
  agc_en <= convert2_dout_net_x0;
  constant_x1 <= constant_op_net_x1;
  dco_mode <= slice5_y_net_x4;
  en_dco_sub <= convert11_dout_net_x4;
  gbb_init <= convert7_dout_net_x4;
  mreset_in <= convert1_dout_net_x2;
  read_write_register <= constant_op_net_x2;
  rssi_avg_len <= convert4_dout_net_x0;
  sreset_in <= convert_dout_net_x0;
  t_db <= convert8_dout_net_x6;
  viq_avg_len <= convert3_dout_net_x3;

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x1
    );

  convert: entity work.xlconvert
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
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      din(0) => from_register_data_out_net_x1,
      en => "1",
      dout(0) => convert_dout_net_x0
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
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      din(0) => from_register1_data_out_net_x0,
      en => "1",
      dout(0) => convert1_dout_net_x2
    );

  convert11: entity work.xlconvert
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
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      din(0) => slice6_y_net,
      en => "1",
      dout(0) => convert11_dout_net_x4
    );

  convert2: entity work.xlconvert
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
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      din(0) => from_register2_data_out_net_x0,
      en => "1",
      dout(0) => convert2_dout_net_x0
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 5,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      din => slice_y_net,
      en => "1",
      dout => convert3_dout_net_x3
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 3,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      din => slice1_y_net,
      en => "1",
      dout => convert4_dout_net_x0
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      din => slice2_y_net,
      en => "1",
      dout => convert5_dout_net_x4
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      din => slice3_y_net,
      en => "1",
      dout => convert6_dout_net_x4
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      din => from_register9_data_out_net_x0,
      en => "1",
      dout => convert7_dout_net_x4
    );

  convert8: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x34,
      clk => clk_1_sg_x34,
      clr => '0',
      din => from_register10_data_out_net_x0,
      en => "1",
      dout => convert8_dout_net_x6
    );

  read_write_register_40bf91ed8d: entity work.read_write_register_entity_40bf91ed8d
    port map (
      constant_x1 => constant_op_net_x2
    );

  slice: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => from_register3_data_out_net_x0,
      y => slice_y_net
    );

  slice1: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => from_register3_data_out_net_x0,
      y => slice1_y_net
    );

  slice2: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 7,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => from_register8_data_out_net_x0,
      y => slice2_y_net
    );

  slice3: entity work.xlslice
    generic map (
      new_lsb => 8,
      new_msb => 15,
      x_width => 16,
      y_width => 8
    )
    port map (
      x => from_register8_data_out_net_x0,
      y => slice3_y_net
    );

  slice5: entity work.xlslice
    generic map (
      new_lsb => 0,
      new_msb => 1,
      x_width => 10,
      y_width => 2
    )
    port map (
      x => from_register_data_out_net_x2,
      y => slice5_y_net_x4
    );

  slice6: entity work.xlslice
    generic map (
      new_lsb => 2,
      new_msb => 2,
      x_width => 10,
      y_width => 1
    )
    port map (
      x => from_register_data_out_net_x2,
      y(0) => slice6_y_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/dual_RSSI_preprocessor/MA"

entity ma_entity_7e80c639dd is
  port (
    ce_1: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_4: in std_logic; 
    m_reset: in std_logic; 
    rssi_in: in std_logic_vector(9 downto 0); 
    rssiavg_len: in std_logic_vector(2 downto 0); 
    x4_pt_ma: out std_logic_vector(17 downto 0)
  );
end ma_entity_7e80c639dd;

architecture structural of ma_entity_7e80c639dd is
  signal accumulator_q_net: std_logic_vector(31 downto 0);
  signal addsub_s_net: std_logic_vector(10 downto 0);
  signal asr_q_net: std_logic_vector(9 downto 0);
  signal ce_1_sg_x37: std_logic;
  signal ce_4_sg_x22: std_logic;
  signal clk_1_sg_x37: std_logic;
  signal clk_4_sg_x22: std_logic;
  signal convert4_dout_net_x1: std_logic_vector(2 downto 0);
  signal convert_dout_net: std_logic_vector(5 downto 0);
  signal down_sample1_q_net: std_logic;
  signal down_sample_q_net_x0: std_logic_vector(2 downto 0);
  signal down_sample_q_net_x1: std_logic_vector(9 downto 0);
  signal mult_p_net_x0: std_logic_vector(17 downto 0);
  signal register15_q_net: std_logic_vector(9 downto 0);
  signal relational_op_net_x8: std_logic;
  signal rom_data_net: std_logic_vector(15 downto 0);
  signal up_sample1_q_net: std_logic_vector(31 downto 0);
  signal up_sample2_q_net: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x37 <= ce_1;
  ce_4_sg_x22 <= ce_4;
  clk_1_sg_x37 <= clk_1;
  clk_4_sg_x22 <= clk_4;
  relational_op_net_x8 <= m_reset;
  down_sample_q_net_x1 <= rssi_in;
  convert4_dout_net_x1 <= rssiavg_len;
  x4_pt_ma <= mult_p_net_x0;

  accumulator: entity work.accum_9a3e8dffc1
    port map (
      b => addsub_s_net,
      ce => ce_4_sg_x22,
      clk => clk_4_sg_x22,
      clr => '0',
      rst(0) => down_sample1_q_net,
      q => accumulator_q_net
    );

  addsub: entity work.addsub_c8b57b79d7
    port map (
      a => register15_q_net,
      b => asr_q_net,
      ce => ce_4_sg_x22,
      clk => clk_4_sg_x22,
      clr => '0',
      s => addsub_s_net
    );

  asr: entity work.xladdrsr
    generic map (
      addr_arith => xlUnsigned,
      addr_bin_pt => 0,
      addr_width => 3,
      core_addr_width => 3,
      core_name0 => "asr_11_0_eebbb884c64b0134",
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 10,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 10
    )
    port map (
      addr => down_sample_q_net_x0,
      ce => ce_4_sg_x22,
      clk => clk_4_sg_x22,
      clr => '0',
      d => register15_q_net,
      en => "1",
      q => asr_q_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 3,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 6,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_4_sg_x22,
      clk => clk_4_sg_x22,
      clr => '0',
      din => down_sample_q_net_x0,
      en => "1",
      dout => convert_dout_net
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 3,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 3
    )
    port map (
      d => convert4_dout_net_x1,
      dest_ce => ce_4_sg_x22,
      dest_clk => clk_4_sg_x22,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x37,
      src_clk => clk_1_sg_x37,
      src_clr => '0',
      q => down_sample_q_net_x0
    );

  down_sample1: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 1,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 1
    )
    port map (
      d(0) => relational_op_net_x8,
      dest_ce => ce_4_sg_x22,
      dest_clk => clk_4_sg_x22,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x37,
      src_clk => clk_1_sg_x37,
      src_clr => '0',
      q(0) => down_sample1_q_net
    );

  mult: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 32,
      b_arith => xlSigned,
      b_bin_pt => 14,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 32,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 32,
      c_output_width => 48,
      c_type => 0,
      core_name0 => "mult_11_2_0492e2b2d63e9841",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 0,
      p_width => 18,
      quantization => 1
    )
    port map (
      a => up_sample1_q_net,
      b => up_sample2_q_net,
      ce => ce_1_sg_x37,
      clk => clk_1_sg_x37,
      clr => '0',
      core_ce => ce_1_sg_x37,
      core_clk => clk_1_sg_x37,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net_x0
    );

  register15: entity work.xlregister
    generic map (
      d_width => 10,
      init_value => b"0000000000"
    )
    port map (
      ce => ce_4_sg_x22,
      clk => clk_4_sg_x22,
      d => down_sample_q_net_x1,
      en => "1",
      rst(0) => down_sample1_q_net,
      q => register15_q_net
    );

  rom: entity work.xlsprom
    generic map (
      c_address_width => 6,
      c_width => 16,
      core_name0 => "bmg_63_eba4b6df3bedcfc7",
      latency => 1
    )
    port map (
      addr => convert_dout_net,
      ce => ce_4_sg_x22,
      clk => clk_4_sg_x22,
      en => "1",
      rst => "0",
      data => rom_data_net
    );

  up_sample1: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 0,
      d_width => 32,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 0,
      q_width => 32
    )
    port map (
      d => accumulator_q_net,
      dest_ce => ce_1_sg_x37,
      dest_clk => clk_1_sg_x37,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x22,
      src_clk => clk_4_sg_x22,
      src_clr => '0',
      q => up_sample1_q_net
    );

  up_sample2: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 14,
      d_width => 16,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 14,
      q_width => 16
    )
    port map (
      d => rom_data_net,
      dest_ce => ce_1_sg_x37,
      dest_clk => clk_1_sg_x37,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x22,
      src_clk => clk_4_sg_x22,
      src_clr => '0',
      q => up_sample2_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo/dual_RSSI_preprocessor"

entity dual_rssi_preprocessor_entity_5583bc9840 is
  port (
    ce_1: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_4: in std_logic; 
    g_rf_a: in std_logic_vector(1 downto 0); 
    g_rf_b: in std_logic_vector(1 downto 0); 
    m_reset: in std_logic; 
    rssiavg_len: in std_logic_vector(2 downto 0); 
    x10bits_in_a: in std_logic_vector(9 downto 0); 
    x10bits_in_b: in std_logic_vector(9 downto 0); 
    avg_db_out_a: out std_logic_vector(17 downto 0); 
    avg_db_out_b: out std_logic_vector(17 downto 0)
  );
end dual_rssi_preprocessor_entity_5583bc9840;

architecture structural of dual_rssi_preprocessor_entity_5583bc9840 is
  signal addsub1_s_net_x2: std_logic_vector(17 downto 0);
  signal addsub_s_net_x2: std_logic_vector(17 downto 0);
  signal ce_1_sg_x39: std_logic;
  signal ce_4_sg_x24: std_logic;
  signal clk_1_sg_x39: std_logic;
  signal clk_4_sg_x24: std_logic;
  signal convert1_dout_net_x2: std_logic_vector(1 downto 0);
  signal convert1_dout_net_x3: std_logic_vector(1 downto 0);
  signal convert4_dout_net_x3: std_logic_vector(2 downto 0);
  signal down_sample1_q_net_x2: std_logic_vector(9 downto 0);
  signal down_sample_q_net_x2: std_logic_vector(9 downto 0);
  signal hi_gain1_op_net: std_logic_vector(7 downto 0);
  signal hi_gain_op_net: std_logic_vector(7 downto 0);
  signal low_gain1_op_net: std_logic_vector(7 downto 0);
  signal low_gain_op_net: std_logic_vector(7 downto 0);
  signal med_gain1_op_net: std_logic_vector(7 downto 0);
  signal med_gain_op_net: std_logic_vector(7 downto 0);
  signal mult1_p_net: std_logic_vector(15 downto 0);
  signal mult_p_net: std_logic_vector(15 downto 0);
  signal mult_p_net_x0: std_logic_vector(17 downto 0);
  signal mult_p_net_x1: std_logic_vector(17 downto 0);
  signal relational_op_net_x10: std_logic;
  signal rf_gain1_y_net: std_logic_vector(7 downto 0);
  signal rf_gain_y_net: std_logic_vector(7 downto 0);
  signal scale_param1_op_net: std_logic_vector(9 downto 0);
  signal scale_param_op_net: std_logic_vector(9 downto 0);

begin
  ce_1_sg_x39 <= ce_1;
  ce_4_sg_x24 <= ce_4;
  clk_1_sg_x39 <= clk_1;
  clk_4_sg_x24 <= clk_4;
  convert1_dout_net_x2 <= g_rf_a;
  convert1_dout_net_x3 <= g_rf_b;
  relational_op_net_x10 <= m_reset;
  convert4_dout_net_x3 <= rssiavg_len;
  down_sample_q_net_x2 <= x10bits_in_a;
  down_sample1_q_net_x2 <= x10bits_in_b;
  avg_db_out_a <= addsub_s_net_x2;
  avg_db_out_b <= addsub1_s_net_x2;

  addsub: entity work.addsub_63482f4701
    port map (
      a => mult_p_net,
      b => rf_gain_y_net,
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      s => addsub_s_net_x2
    );

  addsub1: entity work.addsub_63482f4701
    port map (
      a => mult1_p_net,
      b => rf_gain1_y_net,
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      s => addsub1_s_net_x2
    );

  hi_gain: entity work.constant_d6fea9f88b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => hi_gain_op_net
    );

  hi_gain1: entity work.constant_d6fea9f88b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => hi_gain1_op_net
    );

  low_gain: entity work.constant_810cef0700
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => low_gain_op_net
    );

  low_gain1: entity work.constant_810cef0700
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => low_gain1_op_net
    );

  ma1_91438fa3ca: entity work.ma_entity_7e80c639dd
    port map (
      ce_1 => ce_1_sg_x39,
      ce_4 => ce_4_sg_x24,
      clk_1 => clk_1_sg_x39,
      clk_4 => clk_4_sg_x24,
      m_reset => relational_op_net_x10,
      rssi_in => down_sample1_q_net_x2,
      rssiavg_len => convert4_dout_net_x3,
      x4_pt_ma => mult_p_net_x1
    );

  ma_7e80c639dd: entity work.ma_entity_7e80c639dd
    port map (
      ce_1 => ce_1_sg_x39,
      ce_4 => ce_4_sg_x24,
      clk_1 => clk_1_sg_x39,
      clk_4 => clk_4_sg_x24,
      m_reset => relational_op_net_x10,
      rssi_in => down_sample_q_net_x2,
      rssiavg_len => convert4_dout_net_x3,
      x4_pt_ma => mult_p_net_x0
    );

  med_gain: entity work.constant_7a558caa36
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => med_gain_op_net
    );

  med_gain1: entity work.constant_7a558caa36
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => med_gain1_op_net
    );

  mult: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 18,
      b_arith => xlUnsigned,
      b_bin_pt => 10,
      b_width => 10,
      c_a_type => 0,
      c_a_width => 18,
      c_b_type => 1,
      c_b_width => 10,
      c_baat => 18,
      c_output_width => 28,
      c_type => 0,
      core_name0 => "mult_11_2_5b9f6049ee08160c",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 2,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => mult_p_net_x0,
      b => scale_param_op_net,
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      core_ce => ce_1_sg_x39,
      core_clk => clk_1_sg_x39,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net
    );

  mult1: entity work.xlmult
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 18,
      b_arith => xlUnsigned,
      b_bin_pt => 10,
      b_width => 10,
      c_a_type => 0,
      c_a_width => 18,
      c_b_type => 1,
      c_b_width => 10,
      c_baat => 18,
      c_output_width => 28,
      c_type => 0,
      core_name0 => "mult_11_2_5b9f6049ee08160c",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 2,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => mult_p_net_x1,
      b => scale_param1_op_net,
      ce => ce_1_sg_x39,
      clk => clk_1_sg_x39,
      clr => '0',
      core_ce => ce_1_sg_x39,
      core_clk => clk_1_sg_x39,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult1_p_net
    );

  rf_gain: entity work.mux_998e20a1ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => low_gain_op_net,
      d1 => low_gain_op_net,
      d2 => med_gain_op_net,
      d3 => hi_gain_op_net,
      sel => convert1_dout_net_x2,
      y => rf_gain_y_net
    );

  rf_gain1: entity work.mux_998e20a1ca
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => low_gain1_op_net,
      d1 => low_gain1_op_net,
      d2 => med_gain1_op_net,
      d3 => hi_gain1_op_net,
      sel => convert1_dout_net_x3,
      y => rf_gain1_y_net
    );

  scale_param: entity work.constant_1ea878a24a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => scale_param_op_net
    );

  scale_param1: entity work.constant_1ea878a24a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => scale_param1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "ofdm_agc_mimo"

entity ofdm_agc_mimo is
  port (
    ce_1: in std_logic; 
    ce_2: in std_logic; 
    ce_4: in std_logic; 
    clk_1: in std_logic; 
    clk_2: in std_logic; 
    clk_4: in std_logic; 
    data_out: in std_logic_vector(1 downto 0); 
    data_out_x0: in std_logic_vector(1 downto 0); 
    data_out_x1: in std_logic_vector(4 downto 0); 
    data_out_x10: in std_logic_vector(17 downto 0); 
    data_out_x11: in std_logic_vector(31 downto 0); 
    data_out_x12: in std_logic_vector(31 downto 0); 
    data_out_x13: in std_logic_vector(17 downto 0); 
    data_out_x14: in std_logic_vector(15 downto 0); 
    data_out_x15: in std_logic_vector(15 downto 0); 
    data_out_x16: in std_logic_vector(9 downto 0); 
    data_out_x2: in std_logic_vector(4 downto 0); 
    data_out_x3: in std_logic_vector(9 downto 0); 
    data_out_x4: in std_logic; 
    data_out_x5: in std_logic; 
    data_out_x6: in std_logic_vector(15 downto 0); 
    data_out_x7: in std_logic_vector(31 downto 0); 
    data_out_x8: in std_logic; 
    data_out_x9: in std_logic_vector(15 downto 0); 
    dout: in std_logic_vector(9 downto 0); 
    dout_x0: in std_logic_vector(15 downto 0); 
    dout_x1: in std_logic_vector(15 downto 0); 
    dout_x10: in std_logic; 
    dout_x11: in std_logic; 
    dout_x2: in std_logic_vector(17 downto 0); 
    dout_x3: in std_logic_vector(31 downto 0); 
    dout_x4: in std_logic_vector(31 downto 0); 
    dout_x5: in std_logic_vector(17 downto 0); 
    dout_x6: in std_logic_vector(15 downto 0); 
    dout_x7: in std_logic; 
    dout_x8: in std_logic_vector(31 downto 0); 
    dout_x9: in std_logic_vector(15 downto 0); 
    i_in_a: in std_logic_vector(13 downto 0); 
    i_in_b: in std_logic_vector(13 downto 0); 
    packet_in: in std_logic; 
    plb_abus: in std_logic_vector(31 downto 0); 
    plb_ce_1: in std_logic; 
    plb_clk_1: in std_logic; 
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
    data_in: out std_logic_vector(9 downto 0); 
    data_in_x0: out std_logic_vector(15 downto 0); 
    data_in_x1: out std_logic_vector(15 downto 0); 
    data_in_x10: out std_logic; 
    data_in_x11: out std_logic; 
    data_in_x12: out std_logic_vector(4 downto 0); 
    data_in_x13: out std_logic_vector(4 downto 0); 
    data_in_x14: out std_logic_vector(1 downto 0); 
    data_in_x15: out std_logic_vector(1 downto 0); 
    data_in_x16: out std_logic_vector(9 downto 0); 
    data_in_x2: out std_logic_vector(17 downto 0); 
    data_in_x3: out std_logic_vector(31 downto 0); 
    data_in_x4: out std_logic_vector(31 downto 0); 
    data_in_x5: out std_logic_vector(17 downto 0); 
    data_in_x6: out std_logic_vector(15 downto 0); 
    data_in_x7: out std_logic; 
    data_in_x8: out std_logic_vector(31 downto 0); 
    data_in_x9: out std_logic_vector(15 downto 0); 
    done_a: out std_logic; 
    done_b: out std_logic; 
    en: out std_logic; 
    en_x0: out std_logic; 
    en_x1: out std_logic; 
    en_x10: out std_logic; 
    en_x11: out std_logic; 
    en_x12: out std_logic; 
    en_x13: out std_logic; 
    en_x14: out std_logic; 
    en_x15: out std_logic; 
    en_x16: out std_logic; 
    en_x2: out std_logic; 
    en_x3: out std_logic; 
    en_x4: out std_logic; 
    en_x5: out std_logic; 
    en_x6: out std_logic; 
    en_x7: out std_logic; 
    en_x8: out std_logic; 
    en_x9: out std_logic; 
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
end ofdm_agc_mimo;

architecture structural of ofdm_agc_mimo is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "ofdm_agc_mimo,sysgen_core,{clock_period=10.00000000,clocking=Clock_Enables,sample_periods=1.00000000000 2.00000000000 4.00000000000 1.00000000000,testbench=0,total_blocks=978,xilinx_accumulator_block=12,xilinx_adder_subtracter_block=38,xilinx_addressable_shift_register_block=4,xilinx_arithmetic_relational_operator_block=38,xilinx_bit_slice_extractor_block=30,xilinx_bus_multiplexer_block=30,xilinx_constant_block_block=55,xilinx_counter_block=11,xilinx_delay_block=25,xilinx_down_sampler_block=35,xilinx_edk_processor_block=1,xilinx_gateway_in_block=14,xilinx_gateway_out_block=21,xilinx_input_scaler_block=10,xilinx_inverter_block=21,xilinx_logical_block_block=26,xilinx_mcode_block_block=2,xilinx_multiplier_block=9,xilinx_negate_block_block=6,xilinx_register_block=52,xilinx_shared_memory_based_from_register_block=18,xilinx_shared_memory_based_to_register_block=18,xilinx_single_port_read_only_memory_block=5,xilinx_system_generator_block=1,xilinx_type_converter_block=68,xilinx_type_reinterpreter_block=1,xilinx_up_sampler_block=20,}";

  signal addsub1_s_net_x2: std_logic_vector(17 downto 0);
  signal addsub_s_net_x2: std_logic_vector(17 downto 0);
  signal ce_1_sg_x40: std_logic;
  signal ce_2_sg_x1: std_logic;
  signal ce_4_sg_x25: std_logic;
  signal clk_1_sg_x40: std_logic;
  signal clk_2_sg_x1: std_logic;
  signal clk_4_sg_x25: std_logic;
  signal constant_op_net_x3: std_logic;
  signal convert11_dout_net_x4: std_logic;
  signal convert1_dout_net: std_logic_vector(13 downto 0);
  signal convert1_dout_net_x4: std_logic;
  signal convert2_dout_net: std_logic_vector(13 downto 0);
  signal convert2_dout_net_x0: std_logic;
  signal convert3_dout_net: std_logic_vector(13 downto 0);
  signal convert3_dout_net_x3: std_logic_vector(4 downto 0);
  signal convert4_dout_net_x3: std_logic_vector(2 downto 0);
  signal convert5_dout_net_x4: std_logic_vector(7 downto 0);
  signal convert6_dout_net_x4: std_logic_vector(7 downto 0);
  signal convert7_dout_net_x4: std_logic_vector(7 downto 0);
  signal convert8_dout_net_x6: std_logic_vector(7 downto 0);
  signal convert_dout_net: std_logic_vector(13 downto 0);
  signal convert_dout_net_x2: std_logic;
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
  signal dout_net: std_logic_vector(9 downto 0);
  signal dout_x0_net: std_logic_vector(15 downto 0);
  signal dout_x10_net: std_logic;
  signal dout_x11_net: std_logic;
  signal dout_x1_net: std_logic_vector(15 downto 0);
  signal dout_x2_net: std_logic_vector(17 downto 0);
  signal dout_x3_net: std_logic_vector(31 downto 0);
  signal dout_x4_net: std_logic_vector(31 downto 0);
  signal dout_x5_net: std_logic_vector(17 downto 0);
  signal dout_x6_net: std_logic_vector(15 downto 0);
  signal dout_x7_net: std_logic;
  signal dout_x8_net: std_logic_vector(31 downto 0);
  signal dout_x9_net: std_logic_vector(15 downto 0);
  signal down_sample1_q_net_x2: std_logic_vector(9 downto 0);
  signal down_sample2_q_net_x2: std_logic_vector(8 downto 0);
  signal down_sample4_q_net_x7: std_logic_vector(13 downto 0);
  signal down_sample5_q_net_x4: std_logic_vector(13 downto 0);
  signal down_sample_q_net_x2: std_logic_vector(9 downto 0);
  signal down_sample_q_net_x3: std_logic_vector(8 downto 0);
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
  signal g_bb_a_net: std_logic_vector(4 downto 0);
  signal g_bb_b_net: std_logic_vector(4 downto 0);
  signal g_rf_a_net: std_logic_vector(1 downto 0);
  signal g_rf_b_net: std_logic_vector(1 downto 0);
  signal i_in_a_net: std_logic_vector(13 downto 0);
  signal i_in_b_net: std_logic_vector(13 downto 0);
  signal i_in_x5: std_logic_vector(13 downto 0);
  signal i_out_a_net: std_logic_vector(13 downto 0);
  signal i_out_b_net: std_logic_vector(13 downto 0);
  signal logical1_y_net_x2: std_logic;
  signal logical2_y_net_x14: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x1: std_logic;
  signal logical_y_net_x2: std_logic;
  signal mux3_y_net_x1: std_logic_vector(37 downto 0);
  signal mux3_y_net_x2: std_logic_vector(37 downto 0);
  signal mux5_y_net_x1: std_logic_vector(37 downto 0);
  signal mux5_y_net_x2: std_logic_vector(37 downto 0);
  signal packet_in_net: std_logic;
  signal plb_abus_net: std_logic_vector(31 downto 0);
  signal plb_ce_1_sg_x1: std_logic;
  signal plb_clk_1_sg_x1: std_logic;
  signal plb_pavalid_net: std_logic;
  signal plb_rnw_net: std_logic;
  signal plb_wrdbus_net: std_logic_vector(31 downto 0);
  signal q_in_a_net: std_logic_vector(13 downto 0);
  signal q_in_b_net: std_logic_vector(13 downto 0);
  signal q_in_x4: std_logic_vector(13 downto 0);
  signal q_out_a_net: std_logic_vector(13 downto 0);
  signal q_out_b_net: std_logic_vector(13 downto 0);
  signal register_q_net_x5: std_logic;
  signal relational_op_net_x10: std_logic;
  signal reset_in_net: std_logic;
  signal reset_in_x1: std_logic;
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
  signal slice5_y_net_x4: std_logic_vector(1 downto 0);
  signal splb_rst_net: std_logic;

begin
  ce_1_sg_x40 <= ce_1;
  ce_2_sg_x1 <= ce_2;
  ce_4_sg_x25 <= ce_4;
  clk_1_sg_x40 <= clk_1;
  clk_2_sg_x1 <= clk_2;
  clk_4_sg_x25 <= clk_4;
  data_out_net <= data_out;
  data_out_x0_net <= data_out_x0;
  data_out_x1_net <= data_out_x1;
  data_out_x10_net <= data_out_x10;
  data_out_x11_net <= data_out_x11;
  data_out_x12_net <= data_out_x12;
  data_out_x13_net <= data_out_x13;
  data_out_x14_net <= data_out_x14;
  data_out_x15_net <= data_out_x15;
  from_register_data_out_net_x4 <= data_out_x16;
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
  i_in_a_net <= i_in_a;
  i_in_b_net <= i_in_b;
  packet_in_net <= packet_in;
  plb_abus_net <= plb_abus;
  plb_ce_1_sg_x1 <= plb_ce_1;
  plb_clk_1_sg_x1 <= plb_clk_1;
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
  data_in <= data_in_net;
  data_in_x0 <= data_in_x0_net;
  data_in_x1 <= data_in_x1_net;
  data_in_x10 <= data_in_x10_net;
  data_in_x11 <= data_in_x11_net;
  data_in_x12 <= data_in_x12_net;
  data_in_x13 <= data_in_x13_net;
  data_in_x14 <= data_in_x14_net;
  data_in_x15 <= data_in_x15_net;
  data_in_x16 <= from_register_data_out_net_x4;
  data_in_x2 <= data_in_x2_net;
  data_in_x3 <= data_in_x3_net;
  data_in_x4 <= data_in_x4_net;
  data_in_x5 <= data_in_x5_net;
  data_in_x6 <= data_in_x6_net;
  data_in_x7 <= data_in_x7_net;
  data_in_x8 <= data_in_x8_net;
  data_in_x9 <= data_in_x9_net;
  done_a <= done_a_net;
  done_b <= done_b_net;
  en <= en_net;
  en_x0 <= en_x0_net;
  en_x1 <= en_x1_net;
  en_x10 <= en_x10_net;
  en_x11 <= en_x11_net;
  en_x12 <= constant_op_net_x3;
  en_x13 <= constant_op_net_x3;
  en_x14 <= constant_op_net_x3;
  en_x15 <= constant_op_net_x3;
  en_x16 <= en_x16_net;
  en_x2 <= en_x2_net;
  en_x3 <= en_x3_net;
  en_x4 <= en_x4_net;
  en_x5 <= en_x5_net;
  en_x6 <= en_x6_net;
  en_x7 <= en_x7_net;
  en_x8 <= en_x8_net;
  en_x9 <= en_x9_net;
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
  sl_wrcomp <= sl_wrdack_x1;
  sl_wrdack <= sl_wrdack_x1;

  agc_a_c9f607652d: entity work.agc_a_entity_c9f607652d
    port map (
      adj_1 => convert5_dout_net_x4,
      adj_2 => convert6_dout_net_x4,
      ce_1 => ce_1_sg_x40,
      ce_4 => ce_4_sg_x25,
      clk_1 => clk_1_sg_x40,
      clk_4 => clk_4_sg_x25,
      dco_mode => slice5_y_net_x4,
      dco_timing => data_out_x7_net,
      en => register_q_net_x5,
      en_dco_sub => convert11_dout_net_x4,
      from_register4 => data_out_x10_net,
      from_register7 => data_out_x13_net,
      gbb_init => convert7_dout_net_x4,
      i_in => i_in_x5,
      m_rst => relational_op_net_x10,
      q_in => q_in_x4,
      rssi_db => addsub_s_net_x2,
      rst => logical2_y_net_x14,
      t_db => convert8_dout_net_x6,
      thresholds => data_out_x12_net,
      timing => data_out_x11_net,
      viq_in => down_sample2_q_net_x2,
      done => done_a_net,
      g_bb => g_bb_a_net,
      g_rf => g_rf_a_net,
      i_out => mux3_y_net_x1,
      q_out => mux5_y_net_x1,
      reset => logical_y_net_x0
    );

  agc_b_e1b338ae63: entity work.agc_b_entity_e1b338ae63
    port map (
      adj_1 => convert5_dout_net_x4,
      adj_2 => convert6_dout_net_x4,
      ce_1 => ce_1_sg_x40,
      ce_4 => ce_4_sg_x25,
      clk_1 => clk_1_sg_x40,
      clk_4 => clk_4_sg_x25,
      dco_mode => slice5_y_net_x4,
      dco_timing => data_out_x7_net,
      en => register_q_net_x5,
      en_dco_sub => convert11_dout_net_x4,
      from_register4 => data_out_x10_net,
      from_register7 => data_out_x13_net,
      gbb_init => convert7_dout_net_x4,
      i_in => down_sample4_q_net_x7,
      m_rst => relational_op_net_x10,
      q_in => down_sample5_q_net_x4,
      rssi_db => addsub1_s_net_x2,
      rst => logical2_y_net_x14,
      t_db => convert8_dout_net_x6,
      thresholds => data_out_x12_net,
      timing => data_out_x11_net,
      viq_in => down_sample_q_net_x3,
      done => done_b_net,
      g_bb => g_bb_b_net,
      g_rf => g_rf_b_net,
      i_out => mux3_y_net_x2,
      q_out => mux5_y_net_x2
    );

  control_system_5f3397d1a6: entity work.control_system_entity_5f3397d1a6
    port map (
      ce_1 => ce_1_sg_x40,
      clk_1 => clk_1_sg_x40,
      m_reset => convert1_dout_net_x4,
      pakdet_in => logical1_y_net_x2,
      reset_in => reset_in_x1,
      en_hi => register_q_net_x5,
      m_reset_out => relational_op_net_x10,
      reset => logical2_y_net_x14
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 32,
      din_width => 38,
      dout_arith => 2,
      dout_bin_pt => 13,
      dout_width => 14,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_4_sg_x25,
      clk => clk_4_sg_x25,
      clr => '0',
      din => mux3_y_net_x1,
      en => "1",
      dout => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 32,
      din_width => 38,
      dout_arith => 2,
      dout_bin_pt => 13,
      dout_width => 14,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_4_sg_x25,
      clk => clk_4_sg_x25,
      clr => '0',
      din => mux5_y_net_x1,
      en => "1",
      dout => convert1_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 32,
      din_width => 38,
      dout_arith => 2,
      dout_bin_pt => 13,
      dout_width => 14,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_4_sg_x25,
      clk => clk_4_sg_x25,
      clr => '0',
      din => mux3_y_net_x2,
      en => "1",
      dout => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 32,
      din_width => 38,
      dout_arith => 2,
      dout_bin_pt => 13,
      dout_width => 14,
      latency => 0,
      overflow => xlSaturate,
      quantization => xlTruncate
    )
    port map (
      ce => ce_4_sg_x25,
      clk => clk_4_sg_x25,
      clr => '0',
      din => mux5_y_net_x2,
      en => "1",
      dout => convert3_dout_net
    );

  down_sample: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 10,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 10
    )
    port map (
      d => rssi_in_a_net,
      dest_ce => ce_4_sg_x25,
      dest_clk => clk_4_sg_x25,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x40,
      src_clk => clk_1_sg_x40,
      src_clr => '0',
      q => down_sample_q_net_x2
    );

  down_sample1: entity work.xldsamp
    generic map (
      d_arith => xlUnsigned,
      d_bin_pt => 0,
      d_width => 10,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlUnsigned,
      q_bin_pt => 0,
      q_width => 10
    )
    port map (
      d => rssi_in_b_net,
      dest_ce => ce_4_sg_x25,
      dest_clk => clk_4_sg_x25,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x40,
      src_clk => clk_1_sg_x40,
      src_clr => '0',
      q => down_sample1_q_net_x2
    );

  down_sample2: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => i_in_a_net,
      dest_ce => ce_4_sg_x25,
      dest_clk => clk_4_sg_x25,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x40,
      src_clk => clk_1_sg_x40,
      src_clr => '0',
      q => i_in_x5
    );

  down_sample3: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => q_in_a_net,
      dest_ce => ce_4_sg_x25,
      dest_clk => clk_4_sg_x25,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x40,
      src_clk => clk_1_sg_x40,
      src_clr => '0',
      q => q_in_x4
    );

  down_sample4: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => i_in_b_net,
      dest_ce => ce_4_sg_x25,
      dest_clk => clk_4_sg_x25,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x40,
      src_clk => clk_1_sg_x40,
      src_clr => '0',
      q => down_sample4_q_net_x7
    );

  down_sample5: entity work.xldsamp
    generic map (
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      ds_ratio => 4,
      latency => 1,
      phase => 3,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => q_in_b_net,
      dest_ce => ce_4_sg_x25,
      dest_clk => clk_4_sg_x25,
      dest_clr => '0',
      en => "1",
      src_ce => ce_1_sg_x40,
      src_clk => clk_1_sg_x40,
      src_clr => '0',
      q => down_sample5_q_net_x4
    );

  dual_channel_viq_c713621eff: entity work.dual_channel_viq_entity_c713621eff
    port map (
      ce_1 => ce_1_sg_x40,
      ce_2 => ce_2_sg_x1,
      ce_4 => ce_4_sg_x25,
      clk_1 => clk_1_sg_x40,
      clk_2 => clk_2_sg_x1,
      clk_4 => clk_4_sg_x25,
      i_in_a => i_in_x5,
      i_in_b => down_sample4_q_net_x7,
      iqavg => convert3_dout_net_x3,
      m_reset => relational_op_net_x10,
      q_in_a => q_in_x4,
      q_in_b => down_sample5_q_net_x4,
      viq_a => down_sample2_q_net_x2,
      viq_b => down_sample_q_net_x3
    );

  dual_rssi_preprocessor_5583bc9840: entity work.dual_rssi_preprocessor_entity_5583bc9840
    port map (
      ce_1 => ce_1_sg_x40,
      ce_4 => ce_4_sg_x25,
      clk_1 => clk_1_sg_x40,
      clk_4 => clk_4_sg_x25,
      g_rf_a => g_rf_a_net,
      g_rf_b => g_rf_b_net,
      m_reset => relational_op_net_x10,
      rssiavg_len => convert4_dout_net_x3,
      x10bits_in_a => down_sample_q_net_x2,
      x10bits_in_b => down_sample1_q_net_x2,
      avg_db_out_a => addsub_s_net_x2,
      avg_db_out_b => addsub1_s_net_x2
    );

  edk_processor_ed38d2d522: entity work.edk_processor_entity_ed38d2d522
    port map (
      from_register => data_out_net,
      from_register1 => data_out_x0_net,
      from_register2 => data_out_x1_net,
      from_register3 => data_out_x2_net,
      from_register4 => data_out_x3_net,
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

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      ip(0) => done_a_net,
      op(0) => rxhp_a_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      clr => '0',
      ip(0) => done_b_net,
      op(0) => rxhp_b_net
    );

  logical: entity work.logical_6cb8f0ce02
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => logical_y_net_x0,
      d1(0) => convert_dout_net_x2,
      d2(0) => reset_in_net,
      y(0) => reset_in_x1
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => packet_in_net,
      d1(0) => convert2_dout_net_x0,
      y(0) => logical1_y_net_x2
    );

  register1: entity work.xlregister
    generic map (
      d_width => 2,
      init_value => b"00"
    )
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      d => g_rf_a_net,
      en(0) => logical_y_net_x1,
      rst => "0",
      q => data_in_x15_net
    );

  register6: entity work.xlregister
    generic map (
      d_width => 5,
      init_value => b"00000"
    )
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      d => g_bb_b_net,
      en(0) => logical_y_net_x2,
      rst => "0",
      q => data_in_x13_net
    );

  register7: entity work.xlregister
    generic map (
      d_width => 2,
      init_value => b"00"
    )
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      d => g_rf_b_net,
      en(0) => logical_y_net_x2,
      rst => "0",
      q => data_in_x14_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 5,
      init_value => b"00000"
    )
    port map (
      ce => ce_1_sg_x40,
      clk => clk_1_sg_x40,
      d => g_bb_a_net,
      en(0) => logical_y_net_x1,
      rst => "0",
      q => data_in_x12_net
    );

  registers_f5d7c58379: entity work.registers_entity_f5d7c58379
    port map (
      ce_1 => ce_1_sg_x40,
      clk_1 => clk_1_sg_x40,
      from_register => data_out_x4_net,
      from_register1 => data_out_x5_net,
      from_register10 => data_out_x6_net,
      from_register2 => data_out_x8_net,
      from_register3 => data_out_x9_net,
      from_register8 => data_out_x14_net,
      from_register9 => data_out_x15_net,
      from_register_x0 => from_register_data_out_net_x4,
      adj_1 => convert5_dout_net_x4,
      adj_2 => convert6_dout_net_x4,
      agc_en => convert2_dout_net_x0,
      constant_x1 => constant_op_net_x3,
      dco_mode => slice5_y_net_x4,
      en_dco_sub => convert11_dout_net_x4,
      gbb_init => convert7_dout_net_x4,
      mreset_in => convert1_dout_net_x4,
      read_write_register => en_x16_net,
      rssi_avg_len => convert4_dout_net_x3,
      sreset_in => convert_dout_net_x2,
      t_db => convert8_dout_net_x6,
      viq_avg_len => convert3_dout_net_x3
    );

  risingedge1_4b01d01a98: entity work.risingedge_entity_fa088284a7
    port map (
      ce_1 => ce_1_sg_x40,
      clk_1 => clk_1_sg_x40,
      in_x0 => done_a_net,
      edge_x0 => logical_y_net_x1
    );

  risingedge2_22f58a574f: entity work.risingedge_entity_fa088284a7
    port map (
      ce_1 => ce_1_sg_x40,
      clk_1 => clk_1_sg_x40,
      in_x0 => done_b_net,
      edge_x0 => logical_y_net_x2
    );

  up_sample: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => convert_dout_net,
      dest_ce => ce_1_sg_x40,
      dest_clk => clk_1_sg_x40,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x25,
      src_clk => clk_4_sg_x25,
      src_clr => '0',
      q => i_out_a_net
    );

  up_sample1: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => convert1_dout_net,
      dest_ce => ce_1_sg_x40,
      dest_clk => clk_1_sg_x40,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x25,
      src_clk => clk_4_sg_x25,
      src_clr => '0',
      q => q_out_a_net
    );

  up_sample2: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => convert2_dout_net,
      dest_ce => ce_1_sg_x40,
      dest_clk => clk_1_sg_x40,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x25,
      src_clk => clk_4_sg_x25,
      src_clr => '0',
      q => i_out_b_net
    );

  up_sample3: entity work.xlusamp
    generic map (
      copy_samples => 1,
      d_arith => xlSigned,
      d_bin_pt => 13,
      d_width => 14,
      latency => 0,
      q_arith => xlSigned,
      q_bin_pt => 13,
      q_width => 14
    )
    port map (
      d => convert3_dout_net,
      dest_ce => ce_1_sg_x40,
      dest_clk => clk_1_sg_x40,
      dest_clr => '0',
      en => "1",
      src_ce => ce_4_sg_x25,
      src_clk => clk_4_sg_x25,
      src_clr => '0',
      q => q_out_b_net
    );

end structural;
