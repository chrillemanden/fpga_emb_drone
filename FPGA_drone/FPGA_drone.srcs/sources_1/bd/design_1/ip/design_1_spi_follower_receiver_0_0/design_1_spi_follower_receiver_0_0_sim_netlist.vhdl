-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Nov 24 11:44:41 2020
-- Host        : DESKTOP-HA9HIB8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/chris/Documents/git-repos/fpga_emb_drone/FPGA_drone/FPGA_drone.srcs/sources_1/bd/design_1/ip/design_1_spi_follower_receiver_0_0/design_1_spi_follower_receiver_0_0_sim_netlist.vhdl
-- Design      : design_1_spi_follower_receiver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi_follower_receiver_0_0_spi_follower_receiver is
  port (
    data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    read_done : out STD_LOGIC;
    rst : in STD_LOGIC;
    sck : in STD_LOGIC;
    miso : in STD_LOGIC;
    read_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_spi_follower_receiver_0_0_spi_follower_receiver : entity is "spi_follower_receiver";
end design_1_spi_follower_receiver_0_0_spi_follower_receiver;

architecture STRUCTURE of design_1_spi_follower_receiver_0_0_spi_follower_receiver is
  signal \FSM_sequential_currentState_reg_n_0_[1]\ : STD_LOGIC;
  signal currentState : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data[7]_i_1_n_0\ : STD_LOGIC;
  signal data_temp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_temp[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_temp[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_temp[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_temp[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_temp[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_temp[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_temp[7]_i_1_n_0\ : STD_LOGIC;
  signal \index[0]_i_1_n_0\ : STD_LOGIC;
  signal \index[1]_i_1_n_0\ : STD_LOGIC;
  signal \index[2]_i_1_n_0\ : STD_LOGIC;
  signal \index_reg_n_0_[0]\ : STD_LOGIC;
  signal \index_reg_n_0_[1]\ : STD_LOGIC;
  signal \index_reg_n_0_[2]\ : STD_LOGIC;
  signal nextState : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^read_done\ : STD_LOGIC;
  signal read_done_i_1_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_currentState_reg[0]\ : label is "st_receive_done:11,st_idle:00,st_sample_begin:01,st_sample_end:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_currentState_reg[1]\ : label is "st_receive_done:11,st_idle:00,st_sample_begin:01,st_sample_end:10";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_temp[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_temp[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_temp[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_temp[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_temp[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_temp[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_temp[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_temp[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \index[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \index[1]_i_1\ : label is "soft_lutpair0";
begin
  read_done <= \^read_done\;
\FSM_sequential_currentState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFEFFF00FFEF00"
    )
        port map (
      I0 => \index_reg_n_0_[1]\,
      I1 => \index_reg_n_0_[2]\,
      I2 => \index_reg_n_0_[0]\,
      I3 => currentState(0),
      I4 => \FSM_sequential_currentState_reg_n_0_[1]\,
      I5 => read_en,
      O => nextState(0)
    );
\FSM_sequential_currentState[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF1000"
    )
        port map (
      I0 => \index_reg_n_0_[1]\,
      I1 => \index_reg_n_0_[2]\,
      I2 => \index_reg_n_0_[0]\,
      I3 => currentState(0),
      I4 => \FSM_sequential_currentState_reg_n_0_[1]\,
      O => nextState(1)
    );
\FSM_sequential_currentState_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sck,
      CE => '1',
      CLR => rst,
      D => nextState(0),
      Q => currentState(0)
    );
\FSM_sequential_currentState_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sck,
      CE => '1',
      CLR => rst,
      D => nextState(1),
      Q => \FSM_sequential_currentState_reg_n_0_[1]\
    );
\data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => currentState(0),
      I1 => \FSM_sequential_currentState_reg_n_0_[1]\,
      I2 => rst,
      O => \data[7]_i_1_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => \data[7]_i_1_n_0\,
      D => data_temp(0),
      Q => data(0),
      R => '0'
    );
\data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => \data[7]_i_1_n_0\,
      D => data_temp(1),
      Q => data(1),
      R => '0'
    );
\data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => \data[7]_i_1_n_0\,
      D => data_temp(2),
      Q => data(2),
      R => '0'
    );
\data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => \data[7]_i_1_n_0\,
      D => data_temp(3),
      Q => data(3),
      R => '0'
    );
\data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => \data[7]_i_1_n_0\,
      D => data_temp(4),
      Q => data(4),
      R => '0'
    );
\data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => \data[7]_i_1_n_0\,
      D => data_temp(5),
      Q => data(5),
      R => '0'
    );
\data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => \data[7]_i_1_n_0\,
      D => data_temp(6),
      Q => data(6),
      R => '0'
    );
\data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => \data[7]_i_1_n_0\,
      D => data_temp(7),
      Q => data(7),
      R => '0'
    );
\data_temp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => miso,
      I1 => p_0_in(0),
      I2 => data_temp(0),
      O => \data_temp[0]_i_1_n_0\
    );
\data_temp[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \index_reg_n_0_[1]\,
      I1 => \index_reg_n_0_[0]\,
      I2 => \index_reg_n_0_[2]\,
      I3 => currentState(0),
      I4 => \FSM_sequential_currentState_reg_n_0_[1]\,
      I5 => rst,
      O => p_0_in(0)
    );
\data_temp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => miso,
      I1 => p_0_in(1),
      I2 => data_temp(1),
      O => \data_temp[1]_i_1_n_0\
    );
\data_temp[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \index_reg_n_0_[1]\,
      I1 => \index_reg_n_0_[0]\,
      I2 => \index_reg_n_0_[2]\,
      I3 => currentState(0),
      I4 => \FSM_sequential_currentState_reg_n_0_[1]\,
      I5 => rst,
      O => p_0_in(1)
    );
\data_temp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => miso,
      I1 => p_0_in(2),
      I2 => data_temp(2),
      O => \data_temp[2]_i_1_n_0\
    );
\data_temp[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \index_reg_n_0_[0]\,
      I1 => \index_reg_n_0_[1]\,
      I2 => \index_reg_n_0_[2]\,
      I3 => currentState(0),
      I4 => \FSM_sequential_currentState_reg_n_0_[1]\,
      I5 => rst,
      O => p_0_in(2)
    );
\data_temp[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => miso,
      I1 => p_0_in(3),
      I2 => data_temp(3),
      O => \data_temp[3]_i_1_n_0\
    );
\data_temp[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \index_reg_n_0_[1]\,
      I1 => \index_reg_n_0_[0]\,
      I2 => \index_reg_n_0_[2]\,
      I3 => currentState(0),
      I4 => \FSM_sequential_currentState_reg_n_0_[1]\,
      I5 => rst,
      O => p_0_in(3)
    );
\data_temp[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => miso,
      I1 => p_0_in(4),
      I2 => data_temp(4),
      O => \data_temp[4]_i_1_n_0\
    );
\data_temp[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \index_reg_n_0_[1]\,
      I1 => \index_reg_n_0_[0]\,
      I2 => \index_reg_n_0_[2]\,
      I3 => currentState(0),
      I4 => \FSM_sequential_currentState_reg_n_0_[1]\,
      I5 => rst,
      O => p_0_in(4)
    );
\data_temp[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => miso,
      I1 => p_0_in(5),
      I2 => data_temp(5),
      O => \data_temp[5]_i_1_n_0\
    );
\data_temp[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \index_reg_n_0_[1]\,
      I1 => \index_reg_n_0_[0]\,
      I2 => \index_reg_n_0_[2]\,
      I3 => currentState(0),
      I4 => \FSM_sequential_currentState_reg_n_0_[1]\,
      I5 => rst,
      O => p_0_in(5)
    );
\data_temp[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => miso,
      I1 => p_0_in(6),
      I2 => data_temp(6),
      O => \data_temp[6]_i_1_n_0\
    );
\data_temp[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \index_reg_n_0_[0]\,
      I1 => \index_reg_n_0_[1]\,
      I2 => \index_reg_n_0_[2]\,
      I3 => currentState(0),
      I4 => \FSM_sequential_currentState_reg_n_0_[1]\,
      I5 => rst,
      O => p_0_in(6)
    );
\data_temp[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => miso,
      I1 => p_0_in(7),
      I2 => data_temp(7),
      O => \data_temp[7]_i_1_n_0\
    );
\data_temp[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \index_reg_n_0_[1]\,
      I1 => \index_reg_n_0_[0]\,
      I2 => \index_reg_n_0_[2]\,
      I3 => currentState(0),
      I4 => \FSM_sequential_currentState_reg_n_0_[1]\,
      I5 => rst,
      O => p_0_in(7)
    );
\data_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => '1',
      D => \data_temp[0]_i_1_n_0\,
      Q => data_temp(0),
      R => '0'
    );
\data_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => '1',
      D => \data_temp[1]_i_1_n_0\,
      Q => data_temp(1),
      R => '0'
    );
\data_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => '1',
      D => \data_temp[2]_i_1_n_0\,
      Q => data_temp(2),
      R => '0'
    );
\data_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => '1',
      D => \data_temp[3]_i_1_n_0\,
      Q => data_temp(3),
      R => '0'
    );
\data_temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => '1',
      D => \data_temp[4]_i_1_n_0\,
      Q => data_temp(4),
      R => '0'
    );
\data_temp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => '1',
      D => \data_temp[5]_i_1_n_0\,
      Q => data_temp(5),
      R => '0'
    );
\data_temp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => '1',
      D => \data_temp[6]_i_1_n_0\,
      Q => data_temp(6),
      R => '0'
    );
\data_temp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sck,
      CE => '1',
      D => \data_temp[7]_i_1_n_0\,
      Q => data_temp(7),
      R => '0'
    );
\index[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD03"
    )
        port map (
      I0 => currentState(0),
      I1 => rst,
      I2 => \FSM_sequential_currentState_reg_n_0_[1]\,
      I3 => \index_reg_n_0_[0]\,
      O => \index[0]_i_1_n_0\
    );
\index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0007"
    )
        port map (
      I0 => currentState(0),
      I1 => \index_reg_n_0_[0]\,
      I2 => rst,
      I3 => \FSM_sequential_currentState_reg_n_0_[1]\,
      I4 => \index_reg_n_0_[1]\,
      O => \index[1]_i_1_n_0\
    );
\index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000057"
    )
        port map (
      I0 => currentState(0),
      I1 => \index_reg_n_0_[0]\,
      I2 => \index_reg_n_0_[1]\,
      I3 => rst,
      I4 => \FSM_sequential_currentState_reg_n_0_[1]\,
      I5 => \index_reg_n_0_[2]\,
      O => \index[2]_i_1_n_0\
    );
\index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sck,
      CE => '1',
      D => \index[0]_i_1_n_0\,
      Q => \index_reg_n_0_[0]\,
      R => '0'
    );
\index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sck,
      CE => '1',
      D => \index[1]_i_1_n_0\,
      Q => \index_reg_n_0_[1]\,
      R => '0'
    );
\index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => sck,
      CE => '1',
      D => \index[2]_i_1_n_0\,
      Q => \index_reg_n_0_[2]\,
      R => '0'
    );
read_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE40"
    )
        port map (
      I0 => rst,
      I1 => \FSM_sequential_currentState_reg_n_0_[1]\,
      I2 => currentState(0),
      I3 => \^read_done\,
      O => read_done_i_1_n_0
    );
read_done_reg: unisim.vcomponents.FDRE
     port map (
      C => sck,
      CE => '1',
      D => read_done_i_1_n_0,
      Q => \^read_done\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_spi_follower_receiver_0_0 is
  port (
    sck : in STD_LOGIC;
    rst : in STD_LOGIC;
    read_en : in STD_LOGIC;
    miso : in STD_LOGIC;
    read_done : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_spi_follower_receiver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_spi_follower_receiver_0_0 : entity is "design_1_spi_follower_receiver_0_0,spi_follower_receiver,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_spi_follower_receiver_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_spi_follower_receiver_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_spi_follower_receiver_0_0 : entity is "spi_follower_receiver,Vivado 2020.1";
end design_1_spi_follower_receiver_0_0;

architecture STRUCTURE of design_1_spi_follower_receiver_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_spi_follower_receiver_0_0_spi_follower_receiver
     port map (
      data(7 downto 0) => data(7 downto 0),
      miso => miso,
      read_done => read_done,
      read_en => read_en,
      rst => rst,
      sck => sck
    );
end STRUCTURE;
