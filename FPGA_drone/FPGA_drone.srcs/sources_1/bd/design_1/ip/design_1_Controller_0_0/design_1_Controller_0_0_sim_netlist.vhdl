-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Dec  1 09:23:34 2020
-- Host        : DESKTOP-HA9HIB8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/chris/Documents/git-repos/fpga_emb_drone/FPGA_drone/FPGA_drone.srcs/sources_1/bd/design_1/ip/design_1_Controller_0_0/design_1_Controller_0_0_sim_netlist.vhdl
-- Design      : design_1_Controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Controller_0_0_Controller is
  port (
    en : out STD_LOGIC;
    dout_SPI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    SPI_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    read_done : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Controller_0_0_Controller : entity is "Controller";
end design_1_Controller_0_0_Controller;

architecture STRUCTURE of design_1_Controller_0_0_Controller is
  signal currentState : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \dout[7]_i_1_n_0\ : STD_LOGIC;
  signal \^dout_spi\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \dout_SPI[15]_i_1_n_0\ : STD_LOGIC;
  signal \dout_SPI[9]_i_1_n_0\ : STD_LOGIC;
  signal nextState : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_currentState[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_currentState[1]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_currentState_reg[0]\ : label is "st_start:00,st_read:01,st_wait_receive:10,st_save_bram:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_currentState_reg[1]\ : label is "st_start:00,st_read:01,st_wait_receive:10,st_save_bram:11";
  attribute SOFT_HLUTNM of \dout_SPI[15]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dout_SPI[9]_i_1\ : label is "soft_lutpair0";
begin
  dout_SPI(1 downto 0) <= \^dout_spi\(1 downto 0);
\FSM_sequential_currentState[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => currentState(1),
      I1 => read_done,
      I2 => currentState(0),
      O => nextState(0)
    );
\FSM_sequential_currentState[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => currentState(0),
      I1 => currentState(1),
      O => nextState(1)
    );
\FSM_sequential_currentState_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => nextState(0),
      Q => currentState(0)
    );
\FSM_sequential_currentState_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => nextState(1),
      Q => currentState(1)
    );
\dout[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => currentState(1),
      I1 => currentState(0),
      I2 => rst,
      O => \dout[7]_i_1_n_0\
    );
\dout_SPI[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
        port map (
      I0 => currentState(0),
      I1 => rst,
      I2 => currentState(1),
      I3 => \^dout_spi\(1),
      O => \dout_SPI[15]_i_1_n_0\
    );
\dout_SPI[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD01"
    )
        port map (
      I0 => currentState(0),
      I1 => rst,
      I2 => currentState(1),
      I3 => \^dout_spi\(0),
      O => \dout_SPI[9]_i_1_n_0\
    );
\dout_SPI_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dout_SPI[15]_i_1_n_0\,
      Q => \^dout_spi\(1),
      R => '0'
    );
\dout_SPI_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \dout_SPI[9]_i_1_n_0\,
      Q => \^dout_spi\(0),
      R => '0'
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => SPI_data(0),
      Q => dout(0),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => SPI_data(1),
      Q => dout(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => SPI_data(2),
      Q => dout(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => SPI_data(3),
      Q => dout(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => SPI_data(4),
      Q => dout(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => SPI_data(5),
      Q => dout(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => SPI_data(6),
      Q => dout(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dout[7]_i_1_n_0\,
      D => SPI_data(7),
      Q => dout(7),
      R => '0'
    );
en_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => '1',
      Q => en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Controller_0_0 is
  port (
    SPI_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    read_done : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : out STD_LOGIC;
    en_SPI : out STD_LOGIC;
    dout_SPI : out STD_LOGIC_VECTOR ( 15 downto 0 );
    we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Controller_0_0 : entity is "design_1_Controller_0_0,Controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_Controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Controller_0_0 : entity is "Controller,Vivado 2020.1";
end design_1_Controller_0_0;

architecture STRUCTURE of design_1_Controller_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^dout\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^dout_spi\ : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  addr(31) <= \<const0>\;
  addr(30) <= \<const1>\;
  addr(29) <= \<const0>\;
  addr(28) <= \<const0>\;
  addr(27) <= \<const0>\;
  addr(26) <= \<const0>\;
  addr(25) <= \<const0>\;
  addr(24) <= \<const0>\;
  addr(23) <= \<const0>\;
  addr(22) <= \<const0>\;
  addr(21) <= \<const0>\;
  addr(20) <= \<const0>\;
  addr(19) <= \<const0>\;
  addr(18) <= \<const0>\;
  addr(17) <= \<const0>\;
  addr(16) <= \<const0>\;
  addr(15) <= \<const0>\;
  addr(14) <= \<const0>\;
  addr(13) <= \<const0>\;
  addr(12) <= \<const0>\;
  addr(11) <= \<const0>\;
  addr(10) <= \<const0>\;
  addr(9) <= \<const0>\;
  addr(8) <= \<const0>\;
  addr(7) <= \<const0>\;
  addr(6) <= \<const0>\;
  addr(5) <= \<const0>\;
  addr(4) <= \<const0>\;
  addr(3) <= \<const0>\;
  addr(2) <= \<const1>\;
  addr(1) <= \<const0>\;
  addr(0) <= \<const0>\;
  dout(31) <= \<const1>\;
  dout(30) <= \<const1>\;
  dout(29) <= \<const1>\;
  dout(28) <= \<const1>\;
  dout(27) <= \<const1>\;
  dout(26) <= \<const1>\;
  dout(25) <= \<const1>\;
  dout(24) <= \<const1>\;
  dout(23) <= \<const1>\;
  dout(22) <= \<const1>\;
  dout(21) <= \<const1>\;
  dout(20) <= \<const1>\;
  dout(19) <= \<const1>\;
  dout(18) <= \<const1>\;
  dout(17) <= \<const1>\;
  dout(16) <= \<const1>\;
  dout(15) <= \<const1>\;
  dout(14) <= \<const1>\;
  dout(13) <= \<const1>\;
  dout(12) <= \<const1>\;
  dout(11) <= \<const1>\;
  dout(10) <= \<const1>\;
  dout(9) <= \<const1>\;
  dout(8) <= \<const1>\;
  dout(7 downto 0) <= \^dout\(7 downto 0);
  dout_SPI(15) <= \^dout_spi\(13);
  dout_SPI(14) <= \<const0>\;
  dout_SPI(13) <= \^dout_spi\(13);
  dout_SPI(12) <= \<const0>\;
  dout_SPI(11) <= \^dout_spi\(13);
  dout_SPI(10) <= \<const1>\;
  dout_SPI(9) <= \^dout_spi\(0);
  dout_SPI(8) <= \^dout_spi\(13);
  dout_SPI(7) <= \<const0>\;
  dout_SPI(6) <= \<const0>\;
  dout_SPI(5) <= \<const0>\;
  dout_SPI(4) <= \<const0>\;
  dout_SPI(3) <= \<const0>\;
  dout_SPI(2) <= \<const0>\;
  dout_SPI(1) <= \<const0>\;
  dout_SPI(0) <= \^dout_spi\(0);
  en_SPI <= \<const0>\;
  led(3) <= \<const0>\;
  led(2) <= \<const0>\;
  led(1) <= \<const0>\;
  led(0) <= \<const0>\;
  we(3) <= \<const1>\;
  we(2) <= \<const1>\;
  we(1) <= \<const1>\;
  we(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_Controller_0_0_Controller
     port map (
      SPI_data(7 downto 0) => SPI_data(7 downto 0),
      clk => clk,
      dout(7 downto 0) => \^dout\(7 downto 0),
      dout_SPI(1) => \^dout_spi\(13),
      dout_SPI(0) => \^dout_spi\(0),
      en => en,
      read_done => read_done,
      rst => rst
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
