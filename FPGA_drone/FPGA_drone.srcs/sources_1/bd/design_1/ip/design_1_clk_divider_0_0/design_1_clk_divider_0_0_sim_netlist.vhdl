-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Nov 24 08:36:40 2020
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Bruger/Documents/fpga_emb_drone/FPGA_drone/FPGA_drone.srcs/sources_1/bd/design_1/ip/design_1_clk_divider_0_0/design_1_clk_divider_0_0_sim_netlist.vhdl
-- Design      : design_1_clk_divider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clk_divider_0_0_clk_divider is
  port (
    clk_div : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_clk_divider_0_0_clk_divider : entity is "clk_divider";
end design_1_clk_divider_0_0_clk_divider;

architecture STRUCTURE of design_1_clk_divider_0_0_clk_divider is
  signal \^clk_div\ : STD_LOGIC;
  signal clk_div_sig_i_1_n_0 : STD_LOGIC;
  signal clk_div_sig_i_2_n_0 : STD_LOGIC;
  signal clk_div_sig_i_3_n_0 : STD_LOGIC;
  signal \count_sig[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[6]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[7]_i_2_n_0\ : STD_LOGIC;
  signal count_sig_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_div_sig_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of clk_div_sig_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_sig[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_sig[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_sig[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_sig[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_sig[6]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_sig[7]_i_1\ : label is "soft_lutpair2";
begin
  clk_div <= \^clk_div\;
clk_div_sig_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF00000040"
    )
        port map (
      I0 => rst,
      I1 => clk_div_sig_i_2_n_0,
      I2 => count_sig_reg(3),
      I3 => count_sig_reg(2),
      I4 => clk_div_sig_i_3_n_0,
      I5 => \^clk_div\,
      O => clk_div_sig_i_1_n_0
    );
clk_div_sig_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_sig_reg(6),
      I1 => count_sig_reg(7),
      I2 => count_sig_reg(5),
      I3 => count_sig_reg(4),
      O => clk_div_sig_i_2_n_0
    );
clk_div_sig_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_sig_reg(0),
      I1 => count_sig_reg(1),
      O => clk_div_sig_i_3_n_0
    );
clk_div_sig_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_div_sig_i_1_n_0,
      Q => \^clk_div\,
      R => '0'
    );
\count_sig[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_sig_reg(0),
      O => \count_sig[0]_i_1_n_0\
    );
\count_sig[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_sig_reg(1),
      I1 => count_sig_reg(0),
      O => \count_sig[1]_i_1_n_0\
    );
\count_sig[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70787878"
    )
        port map (
      I0 => count_sig_reg(1),
      I1 => count_sig_reg(0),
      I2 => count_sig_reg(2),
      I3 => count_sig_reg(3),
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[2]_i_1_n_0\
    );
\count_sig[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77807F80"
    )
        port map (
      I0 => count_sig_reg(1),
      I1 => count_sig_reg(0),
      I2 => count_sig_reg(2),
      I3 => count_sig_reg(3),
      I4 => clk_div_sig_i_2_n_0,
      O => \count_sig[3]_i_1_n_0\
    );
\count_sig[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A2AAAAA6AAAAAAA"
    )
        port map (
      I0 => count_sig_reg(4),
      I1 => count_sig_reg(1),
      I2 => count_sig_reg(0),
      I3 => count_sig_reg(2),
      I4 => count_sig_reg(3),
      I5 => clk_div_sig_i_2_n_0,
      O => \count_sig[4]_i_1_n_0\
    );
\count_sig[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6A0AAAAA6AAAAAA"
    )
        port map (
      I0 => count_sig_reg(5),
      I1 => count_sig_reg(4),
      I2 => clk_div_sig_i_3_n_0,
      I3 => count_sig_reg(2),
      I4 => count_sig_reg(3),
      I5 => clk_div_sig_i_2_n_0,
      O => \count_sig[5]_i_1_n_0\
    );
\count_sig[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A5A5A5A5A5A58"
    )
        port map (
      I0 => \count_sig[7]_i_2_n_0\,
      I1 => \count_sig[6]_i_2_n_0\,
      I2 => count_sig_reg(6),
      I3 => count_sig_reg(7),
      I4 => count_sig_reg(5),
      I5 => count_sig_reg(4),
      O => \count_sig[6]_i_1_n_0\
    );
\count_sig[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => count_sig_reg(1),
      I1 => count_sig_reg(0),
      I2 => count_sig_reg(2),
      I3 => count_sig_reg(3),
      O => \count_sig[6]_i_2_n_0\
    );
\count_sig[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count_sig[7]_i_2_n_0\,
      I1 => count_sig_reg(6),
      I2 => count_sig_reg(7),
      O => \count_sig[7]_i_1_n_0\
    );
\count_sig[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => count_sig_reg(5),
      I1 => count_sig_reg(3),
      I2 => count_sig_reg(0),
      I3 => count_sig_reg(1),
      I4 => count_sig_reg(2),
      I5 => count_sig_reg(4),
      O => \count_sig[7]_i_2_n_0\
    );
\count_sig_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig[0]_i_1_n_0\,
      Q => count_sig_reg(0)
    );
\count_sig_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig[1]_i_1_n_0\,
      Q => count_sig_reg(1)
    );
\count_sig_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig[2]_i_1_n_0\,
      Q => count_sig_reg(2)
    );
\count_sig_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig[3]_i_1_n_0\,
      Q => count_sig_reg(3)
    );
\count_sig_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig[4]_i_1_n_0\,
      Q => count_sig_reg(4)
    );
\count_sig_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig[5]_i_1_n_0\,
      Q => count_sig_reg(5)
    );
\count_sig_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig[6]_i_1_n_0\,
      Q => count_sig_reg(6)
    );
\count_sig_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_sig[7]_i_1_n_0\,
      Q => count_sig_reg(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_clk_divider_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_div : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_clk_divider_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_clk_divider_0_0 : entity is "design_1_clk_divider_0_0,clk_divider,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_clk_divider_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_clk_divider_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_clk_divider_0_0 : entity is "clk_divider,Vivado 2020.1";
end design_1_clk_divider_0_0;

architecture STRUCTURE of design_1_clk_divider_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_clk_divider_0_0_clk_divider
     port map (
      clk => clk,
      clk_div => clk_div,
      rst => rst
    );
end STRUCTURE;
