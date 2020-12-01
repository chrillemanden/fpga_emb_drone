-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Nov 24 12:05:35 2020
-- Host        : DESKTOP-HA9HIB8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/chris/Documents/git-repos/fpga_emb_drone/FPGA_drone/FPGA_drone.srcs/sources_1/bd/design_1/ip/design_1_spi_follower_transmi_0_0/design_1_spi_follower_transmi_0_0_sim_netlist.vhdl
-- Design      : design_1_spi_follower_transmi_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi_follower_transmi_0_0_spi_follower_transmitter is
  port (
    sck_out : out STD_LOGIC;
    read_en : out STD_LOGIC;
    ss : out STD_LOGIC;
    mosi : out STD_LOGIC;
    sck : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spi_follower_transmi_0_0_spi_follower_transmitter : entity is "spi_follower_transmitter";
end design_1_spi_follower_transmi_0_0_spi_follower_transmitter;

architecture STRUCTURE of design_1_spi_follower_transmi_0_0_spi_follower_transmitter is
  signal \FSM_onehot_currentState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_currentState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg_n_0_[2]\ : STD_LOGIC;
  signal currentState_reg : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \index[0]_i_1_n_0\ : STD_LOGIC;
  signal \index[1]_i_1_n_0\ : STD_LOGIC;
  signal \index[2]_i_1_n_0\ : STD_LOGIC;
  signal \index[3]_i_1_n_0\ : STD_LOGIC;
  signal \index[3]_i_3_n_0\ : STD_LOGIC;
  signal \index_reg_n_0_[0]\ : STD_LOGIC;
  signal \index_reg_n_0_[1]\ : STD_LOGIC;
  signal \index_reg_n_0_[2]\ : STD_LOGIC;
  signal \index_reg_n_0_[3]\ : STD_LOGIC;
  signal \^mosi\ : STD_LOGIC;
  signal mosi_i_1_n_0 : STD_LOGIC;
  signal mosi_i_4_n_0 : STD_LOGIC;
  signal mosi_i_5_n_0 : STD_LOGIC;
  signal mosi_i_6_n_0 : STD_LOGIC;
  signal mosi_i_7_n_0 : STD_LOGIC;
  signal mosi_reg_i_2_n_0 : STD_LOGIC;
  signal mosi_reg_i_3_n_0 : STD_LOGIC;
  signal nextState : STD_LOGIC;
  signal \^read_en\ : STD_LOGIC;
  signal read_en_i_1_n_0 : STD_LOGIC;
  signal read_en_i_2_n_0 : STD_LOGIC;
  signal sck_en0 : STD_LOGIC;
  signal sck_en_i_1_n_0 : STD_LOGIC;
  signal sck_en_reg_n_0 : STD_LOGIC;
  signal \^ss\ : STD_LOGIC;
  signal ss_i_1_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_currentState_reg[0]\ : label is "st_sample_begin:010,st_transmit_begin:100,st_idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currentState_reg[1]\ : label is "st_sample_begin:010,st_transmit_begin:100,st_idle:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currentState_reg[2]\ : label is "st_sample_begin:010,st_transmit_begin:100,st_idle:001";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nextState_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_nextState_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nextState_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_nextState_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nextState_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_nextState_reg[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \index[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \index[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \index[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of read_en_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sck_en_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sck_out_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ss_i_1 : label is "soft_lutpair2";
begin
  mosi <= \^mosi\;
  read_en <= \^read_en\;
  ss <= \^ss\;
\FSM_onehot_currentState_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sck,
      CE => '1',
      D => \FSM_onehot_nextState_reg_n_0_[0]\,
      PRE => rst,
      Q => \FSM_onehot_currentState_reg_n_0_[0]\
    );
\FSM_onehot_currentState_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sck,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_nextState_reg_n_0_[1]\,
      Q => \FSM_onehot_currentState_reg_n_0_[1]\
    );
\FSM_onehot_currentState_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sck,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_nextState_reg_n_0_[2]\,
      Q => currentState_reg(1)
    );
\FSM_onehot_nextState_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nextState_reg[0]_i_1_n_0\,
      G => nextState,
      GE => '1',
      Q => \FSM_onehot_nextState_reg_n_0_[0]\
    );
\FSM_onehot_nextState_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_currentState_reg_n_0_[0]\,
      I2 => \index_reg_n_0_[3]\,
      I3 => read_en_i_2_n_0,
      I4 => currentState_reg(1),
      O => \FSM_onehot_nextState_reg[0]_i_1_n_0\
    );
\FSM_onehot_nextState_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nextState_reg[1]_i_1_n_0\,
      G => nextState,
      GE => '1',
      Q => \FSM_onehot_nextState_reg_n_0_[1]\
    );
\FSM_onehot_nextState_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_currentState_reg_n_0_[0]\,
      O => \FSM_onehot_nextState_reg[1]_i_1_n_0\
    );
\FSM_onehot_nextState_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nextState_reg[2]_i_1_n_0\,
      G => nextState,
      GE => '1',
      Q => \FSM_onehot_nextState_reg_n_0_[2]\
    );
\FSM_onehot_nextState_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
        port map (
      I0 => currentState_reg(1),
      I1 => \index_reg_n_0_[2]\,
      I2 => \index_reg_n_0_[1]\,
      I3 => \index_reg_n_0_[0]\,
      I4 => \index_reg_n_0_[3]\,
      I5 => \FSM_onehot_currentState_reg_n_0_[1]\,
      O => \FSM_onehot_nextState_reg[2]_i_1_n_0\
    );
\FSM_onehot_nextState_reg[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[1]\,
      I1 => currentState_reg(1),
      I2 => \FSM_onehot_currentState_reg_n_0_[0]\,
      O => nextState
    );
\index[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => currentState_reg(1),
      I1 => \index_reg_n_0_[0]\,
      O => \index[0]_i_1_n_0\
    );
\index[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \index_reg_n_0_[0]\,
      I1 => \index_reg_n_0_[1]\,
      I2 => currentState_reg(1),
      O => \index[1]_i_1_n_0\
    );
\index[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E100"
    )
        port map (
      I0 => \index_reg_n_0_[0]\,
      I1 => \index_reg_n_0_[1]\,
      I2 => \index_reg_n_0_[2]\,
      I3 => currentState_reg(1),
      O => \index[2]_i_1_n_0\
    );
\index[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => rst,
      I1 => \FSM_onehot_currentState_reg_n_0_[0]\,
      O => \index[3]_i_1_n_0\
    );
\index[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[0]\,
      I1 => currentState_reg(1),
      I2 => rst,
      O => sck_en0
    );
\index[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE010000"
    )
        port map (
      I0 => \index_reg_n_0_[2]\,
      I1 => \index_reg_n_0_[0]\,
      I2 => \index_reg_n_0_[1]\,
      I3 => \index_reg_n_0_[3]\,
      I4 => currentState_reg(1),
      O => \index[3]_i_3_n_0\
    );
\index_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sck,
      CE => sck_en0,
      D => \index[0]_i_1_n_0\,
      Q => \index_reg_n_0_[0]\,
      S => \index[3]_i_1_n_0\
    );
\index_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sck,
      CE => sck_en0,
      D => \index[1]_i_1_n_0\,
      Q => \index_reg_n_0_[1]\,
      S => \index[3]_i_1_n_0\
    );
\index_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sck,
      CE => sck_en0,
      D => \index[2]_i_1_n_0\,
      Q => \index_reg_n_0_[2]\,
      S => \index[3]_i_1_n_0\
    );
\index_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sck,
      CE => sck_en0,
      D => \index[3]_i_3_n_0\,
      Q => \index_reg_n_0_[3]\,
      S => \index[3]_i_1_n_0\
    );
mosi_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => mosi_reg_i_2_n_0,
      I1 => \index_reg_n_0_[3]\,
      I2 => mosi_reg_i_3_n_0,
      I3 => currentState_reg(1),
      I4 => rst,
      I5 => \^mosi\,
      O => mosi_i_1_n_0
    );
mosi_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(11),
      I1 => data(10),
      I2 => \index_reg_n_0_[1]\,
      I3 => data(9),
      I4 => \index_reg_n_0_[0]\,
      I5 => data(8),
      O => mosi_i_4_n_0
    );
mosi_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(15),
      I1 => data(14),
      I2 => \index_reg_n_0_[1]\,
      I3 => data(13),
      I4 => \index_reg_n_0_[0]\,
      I5 => data(12),
      O => mosi_i_5_n_0
    );
mosi_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(3),
      I1 => data(2),
      I2 => \index_reg_n_0_[1]\,
      I3 => data(1),
      I4 => \index_reg_n_0_[0]\,
      I5 => data(0),
      O => mosi_i_6_n_0
    );
mosi_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data(7),
      I1 => data(6),
      I2 => \index_reg_n_0_[1]\,
      I3 => data(5),
      I4 => \index_reg_n_0_[0]\,
      I5 => data(4),
      O => mosi_i_7_n_0
    );
mosi_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sck,
      CE => '1',
      D => mosi_i_1_n_0,
      Q => \^mosi\,
      R => '0'
    );
mosi_reg_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => mosi_i_4_n_0,
      I1 => mosi_i_5_n_0,
      O => mosi_reg_i_2_n_0,
      S => \index_reg_n_0_[2]\
    );
mosi_reg_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => mosi_i_6_n_0,
      I1 => mosi_i_7_n_0,
      O => mosi_reg_i_3_n_0,
      S => \index_reg_n_0_[2]\
    );
read_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF550000EA00"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[0]\,
      I1 => \index_reg_n_0_[3]\,
      I2 => read_en_i_2_n_0,
      I3 => currentState_reg(1),
      I4 => rst,
      I5 => \^read_en\,
      O => read_en_i_1_n_0
    );
read_en_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \index_reg_n_0_[1]\,
      I1 => \index_reg_n_0_[0]\,
      I2 => \index_reg_n_0_[2]\,
      O => read_en_i_2_n_0
    );
read_en_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sck,
      CE => '1',
      D => read_en_i_1_n_0,
      Q => \^read_en\,
      R => '0'
    );
sck_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD0C"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[0]\,
      I1 => currentState_reg(1),
      I2 => rst,
      I3 => sck_en_reg_n_0,
      O => sck_en_i_1_n_0
    );
sck_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => sck,
      CE => '1',
      D => sck_en_i_1_n_0,
      Q => sck_en_reg_n_0,
      R => '0'
    );
sck_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sck,
      I1 => sck_en_reg_n_0,
      O => sck_out
    );
ss_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB0A"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[0]\,
      I1 => \FSM_onehot_currentState_reg_n_0_[1]\,
      I2 => rst,
      I3 => \^ss\,
      O => ss_i_1_n_0
    );
ss_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => sck,
      CE => '1',
      D => ss_i_1_n_0,
      Q => \^ss\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi_follower_transmi_0_0 is
  port (
    data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sck : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    read_en : out STD_LOGIC;
    sck_out : out STD_LOGIC;
    ss : out STD_LOGIC;
    mosi : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_spi_follower_transmi_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_spi_follower_transmi_0_0 : entity is "design_1_spi_follower_transmi_0_0,spi_follower_transmitter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_spi_follower_transmi_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_spi_follower_transmi_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_spi_follower_transmi_0_0 : entity is "spi_follower_transmitter,Vivado 2020.1";
end design_1_spi_follower_transmi_0_0;

architecture STRUCTURE of design_1_spi_follower_transmi_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_spi_follower_transmi_0_0_spi_follower_transmitter
     port map (
      data(15 downto 0) => data(15 downto 0),
      en => en,
      mosi => mosi,
      read_en => read_en,
      rst => rst,
      sck => sck,
      sck_out => sck_out,
      ss => ss
    );
end STRUCTURE;
