-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon Dec  7 17:25:25 2020
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
    dout_SPI : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    en_SPI : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    SPI_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    read_done : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Controller_0_0_Controller : entity is "Controller";
end design_1_Controller_0_0_Controller;

architecture STRUCTURE of design_1_Controller_0_0_Controller is
  signal \FSM_onehot_currentState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_currentState_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_currentState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_currentState_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_currentState_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_currentState_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_currentState_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_currentState_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_currentState_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_nextState_reg_n_0_[9]\ : STD_LOGIC;
  signal IMU_high_flag : STD_LOGIC;
  signal IMU_high_flag_0 : STD_LOGIC;
  signal IMU_high_flag_i_1_n_0 : STD_LOGIC;
  signal \addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \addr[4]_i_3_n_0\ : STD_LOGIC;
  signal \addr[4]_i_4_n_0\ : STD_LOGIC;
  signal \addr[4]_i_5_n_0\ : STD_LOGIC;
  signal \addr[4]_i_6_n_0\ : STD_LOGIC;
  signal \addr[4]_i_7_n_0\ : STD_LOGIC;
  signal \addr[4]_i_8_n_0\ : STD_LOGIC;
  signal addr_1 : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal dout0 : STD_LOGIC;
  signal dout_SPI0 : STD_LOGIC;
  signal \dout_SPI[10]_i_1_n_0\ : STD_LOGIC;
  signal \dout_SPI[11]_i_1_n_0\ : STD_LOGIC;
  signal \dout_SPI[12]_i_1_n_0\ : STD_LOGIC;
  signal \dout_SPI[15]_i_2_n_0\ : STD_LOGIC;
  signal \dout_SPI[8]_i_1_n_0\ : STD_LOGIC;
  signal \dout_SPI[9]_i_1_n_0\ : STD_LOGIC;
  signal \^en_spi\ : STD_LOGIC;
  signal en_SPI_i_1_n_0 : STD_LOGIC;
  signal en_SPI_i_2_n_0 : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \^led\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \led[3]_i_1_n_0\ : STD_LOGIC;
  signal nextState : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry__6_n_3\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \plusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal ram_addr : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \ram_addr[31]_i_1_n_0\ : STD_LOGIC;
  signal ram_addr_2 : STD_LOGIC_VECTOR ( 30 downto 2 );
  signal register_count : STD_LOGIC;
  signal register_count0 : STD_LOGIC;
  signal \register_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \register_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \register_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \register_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \register_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \register_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \register_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \register_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \tmp_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \tmp_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \tmp_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_currentState_reg[0]\ : label is "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currentState_reg[10]\ : label is "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currentState_reg[1]\ : label is "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currentState_reg[2]\ : label is "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currentState_reg[3]\ : label is "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currentState_reg[4]\ : label is "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currentState_reg[5]\ : label is "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currentState_reg[6]\ : label is "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currentState_reg[7]\ : label is "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currentState_reg[8]\ : label is "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_currentState_reg[9]\ : label is "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nextState_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nextState_reg[10]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nextState_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_nextState_reg[1]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nextState_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_nextState_reg[2]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nextState_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nextState_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_nextState_reg[4]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nextState_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_nextState_reg[5]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nextState_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_nextState_reg[6]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nextState_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_nextState_reg[7]_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nextState_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_nextState_reg[8]_i_1\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \FSM_onehot_nextState_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_onehot_nextState_reg[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \addr[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \addr[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \dout_SPI[10]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \dout_SPI[11]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dout_SPI[12]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \dout_SPI[15]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dout_SPI[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \dout_SPI[9]_i_1\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_inferred__0/i__carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \register_count[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \register_count[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \register_count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \register_count[3]_i_2\ : label is "soft_lutpair3";
begin
  en_SPI <= \^en_spi\;
  led(0) <= \^led\(0);
\FSM_onehot_currentState_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_nextState_reg_n_0_[0]\,
      PRE => rst,
      Q => \FSM_onehot_currentState_reg_n_0_[0]\
    );
\FSM_onehot_currentState_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_nextState_reg_n_0_[10]\,
      Q => \FSM_onehot_currentState_reg_n_0_[10]\
    );
\FSM_onehot_currentState_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_nextState_reg_n_0_[1]\,
      Q => \FSM_onehot_currentState_reg_n_0_[1]\
    );
\FSM_onehot_currentState_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_nextState_reg_n_0_[2]\,
      Q => \FSM_onehot_currentState_reg_n_0_[2]\
    );
\FSM_onehot_currentState_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_nextState_reg_n_0_[3]\,
      Q => \FSM_onehot_currentState_reg_n_0_[3]\
    );
\FSM_onehot_currentState_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_nextState_reg_n_0_[4]\,
      Q => \FSM_onehot_currentState_reg_n_0_[4]\
    );
\FSM_onehot_currentState_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_nextState_reg_n_0_[5]\,
      Q => IMU_high_flag_0
    );
\FSM_onehot_currentState_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_nextState_reg_n_0_[6]\,
      Q => \FSM_onehot_currentState_reg_n_0_[6]\
    );
\FSM_onehot_currentState_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_nextState_reg_n_0_[7]\,
      Q => \FSM_onehot_currentState_reg_n_0_[7]\
    );
\FSM_onehot_currentState_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_nextState_reg_n_0_[8]\,
      Q => \FSM_onehot_currentState_reg_n_0_[8]\
    );
\FSM_onehot_currentState_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_nextState_reg_n_0_[9]\,
      Q => register_count
    );
\FSM_onehot_nextState_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '1'
    )
        port map (
      CLR => '0',
      D => '0',
      G => nextState,
      GE => '1',
      Q => \FSM_onehot_nextState_reg_n_0_[0]\
    );
\FSM_onehot_nextState_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nextState_reg[10]_i_1_n_0\,
      G => nextState,
      GE => '1',
      Q => \FSM_onehot_nextState_reg_n_0_[10]\
    );
\FSM_onehot_nextState_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA2AA"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[2]\,
      I1 => SPI_data(6),
      I2 => \FSM_onehot_nextState_reg[10]_i_3_n_0\,
      I3 => SPI_data(3),
      I4 => \FSM_onehot_currentState_reg_n_0_[10]\,
      O => \FSM_onehot_nextState_reg[10]_i_1_n_0\
    );
\FSM_onehot_nextState_reg[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[8]\,
      I1 => \FSM_onehot_currentState_reg_n_0_[2]\,
      I2 => en_SPI_i_2_n_0,
      I3 => \FSM_onehot_currentState_reg_n_0_[7]\,
      I4 => register_count,
      I5 => \FSM_onehot_currentState_reg_n_0_[10]\,
      O => nextState
    );
\FSM_onehot_nextState_reg[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => SPI_data(1),
      I1 => SPI_data(2),
      I2 => SPI_data(0),
      I3 => SPI_data(4),
      I4 => SPI_data(5),
      I5 => SPI_data(7),
      O => \FSM_onehot_nextState_reg[10]_i_3_n_0\
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
\FSM_onehot_nextState_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => read_done,
      I1 => \FSM_onehot_currentState_reg_n_0_[1]\,
      I2 => \FSM_onehot_currentState_reg_n_0_[0]\,
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
\FSM_onehot_nextState_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[1]\,
      I1 => read_done,
      O => \FSM_onehot_nextState_reg[2]_i_1_n_0\
    );
\FSM_onehot_nextState_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nextState_reg[3]_i_1_n_0\,
      G => nextState,
      GE => '1',
      Q => \FSM_onehot_nextState_reg_n_0_[3]\
    );
\FSM_onehot_nextState_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => SPI_data(3),
      I1 => \FSM_onehot_nextState_reg[3]_i_2_n_0\,
      I2 => SPI_data(6),
      I3 => \FSM_onehot_currentState_reg_n_0_[2]\,
      O => \FSM_onehot_nextState_reg[3]_i_1_n_0\
    );
\FSM_onehot_nextState_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => SPI_data(1),
      I1 => SPI_data(2),
      I2 => SPI_data(4),
      I3 => SPI_data(0),
      I4 => SPI_data(5),
      I5 => SPI_data(7),
      O => \FSM_onehot_nextState_reg[3]_i_2_n_0\
    );
\FSM_onehot_nextState_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nextState_reg[4]_i_1_n_0\,
      G => nextState,
      GE => '1',
      Q => \FSM_onehot_nextState_reg_n_0_[4]\
    );
\FSM_onehot_nextState_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => read_done,
      I1 => \FSM_onehot_currentState_reg_n_0_[3]\,
      I2 => \FSM_onehot_currentState_reg_n_0_[4]\,
      O => \FSM_onehot_nextState_reg[4]_i_1_n_0\
    );
\FSM_onehot_nextState_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nextState_reg[5]_i_1_n_0\,
      G => nextState,
      GE => '1',
      Q => \FSM_onehot_nextState_reg_n_0_[5]\
    );
\FSM_onehot_nextState_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => read_done,
      I1 => \FSM_onehot_currentState_reg_n_0_[4]\,
      I2 => register_count,
      O => \FSM_onehot_nextState_reg[5]_i_1_n_0\
    );
\FSM_onehot_nextState_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nextState_reg[6]_i_1_n_0\,
      G => nextState,
      GE => '1',
      Q => \FSM_onehot_nextState_reg_n_0_[6]\
    );
\FSM_onehot_nextState_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => read_done,
      I1 => \FSM_onehot_currentState_reg_n_0_[6]\,
      I2 => IMU_high_flag_0,
      O => \FSM_onehot_nextState_reg[6]_i_1_n_0\
    );
\FSM_onehot_nextState_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nextState_reg[7]_i_1_n_0\,
      G => nextState,
      GE => '1',
      Q => \FSM_onehot_nextState_reg_n_0_[7]\
    );
\FSM_onehot_nextState_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[6]\,
      I1 => read_done,
      O => \FSM_onehot_nextState_reg[7]_i_1_n_0\
    );
\FSM_onehot_nextState_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nextState_reg[8]_i_1_n_0\,
      G => nextState,
      GE => '1',
      Q => \FSM_onehot_nextState_reg_n_0_[8]\
    );
\FSM_onehot_nextState_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[7]\,
      I1 => IMU_high_flag,
      O => \FSM_onehot_nextState_reg[8]_i_1_n_0\
    );
\FSM_onehot_nextState_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_onehot_nextState_reg[9]_i_1_n_0\,
      G => nextState,
      GE => '1',
      Q => \FSM_onehot_nextState_reg_n_0_[9]\
    );
\FSM_onehot_nextState_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[7]\,
      I1 => IMU_high_flag,
      I2 => \FSM_onehot_currentState_reg_n_0_[8]\,
      O => \FSM_onehot_nextState_reg[9]_i_1_n_0\
    );
IMU_high_flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => rst,
      I1 => IMU_high_flag_0,
      I2 => IMU_high_flag,
      O => IMU_high_flag_i_1_n_0
    );
IMU_high_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => IMU_high_flag_i_1_n_0,
      Q => IMU_high_flag,
      R => '0'
    );
\addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => ram_addr(4),
      I1 => \addr[4]_i_2_n_0\,
      I2 => \addr[4]_i_3_n_0\,
      I3 => \addr[4]_i_4_n_0\,
      I4 => ram_addr(3),
      O => addr_1(3)
    );
\addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0000"
    )
        port map (
      I0 => \addr[4]_i_2_n_0\,
      I1 => \addr[4]_i_3_n_0\,
      I2 => \addr[4]_i_4_n_0\,
      I3 => ram_addr(3),
      I4 => ram_addr(4),
      O => addr_1(4)
    );
\addr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ram_addr(14),
      I1 => ram_addr(15),
      I2 => ram_addr(12),
      I3 => ram_addr(13),
      I4 => \addr[4]_i_5_n_0\,
      O => \addr[4]_i_2_n_0\
    );
\addr[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ram_addr(6),
      I1 => ram_addr(7),
      I2 => ram_addr(2),
      I3 => ram_addr(5),
      I4 => \addr[4]_i_6_n_0\,
      O => \addr[4]_i_3_n_0\
    );
\addr[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \addr[4]_i_7_n_0\,
      I1 => ram_addr(21),
      I2 => ram_addr(20),
      I3 => ram_addr(23),
      I4 => ram_addr(22),
      I5 => \addr[4]_i_8_n_0\,
      O => \addr[4]_i_4_n_0\
    );
\addr[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ram_addr(17),
      I1 => ram_addr(16),
      I2 => ram_addr(19),
      I3 => ram_addr(18),
      O => \addr[4]_i_5_n_0\
    );
\addr[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ram_addr(9),
      I1 => ram_addr(8),
      I2 => ram_addr(11),
      I3 => ram_addr(10),
      O => \addr[4]_i_6_n_0\
    );
\addr[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ram_addr(25),
      I1 => ram_addr(24),
      I2 => ram_addr(27),
      I3 => ram_addr(26),
      O => \addr[4]_i_7_n_0\
    );
\addr[4]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => ram_addr(31),
      I1 => ram_addr(30),
      I2 => ram_addr(28),
      I3 => ram_addr(29),
      I4 => ram_addr(1),
      O => \addr[4]_i_8_n_0\
    );
\addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(10),
      Q => addr(9),
      R => '0'
    );
\addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(11),
      Q => addr(10),
      R => '0'
    );
\addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(12),
      Q => addr(11),
      R => '0'
    );
\addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(13),
      Q => addr(12),
      R => '0'
    );
\addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(14),
      Q => addr(13),
      R => '0'
    );
\addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(15),
      Q => addr(14),
      R => '0'
    );
\addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(16),
      Q => addr(15),
      R => '0'
    );
\addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(17),
      Q => addr(16),
      R => '0'
    );
\addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(18),
      Q => addr(17),
      R => '0'
    );
\addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(19),
      Q => addr(18),
      R => '0'
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(1),
      Q => addr(0),
      R => '0'
    );
\addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(20),
      Q => addr(19),
      R => '0'
    );
\addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(21),
      Q => addr(20),
      R => '0'
    );
\addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(22),
      Q => addr(21),
      R => '0'
    );
\addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(23),
      Q => addr(22),
      R => '0'
    );
\addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(24),
      Q => addr(23),
      R => '0'
    );
\addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(25),
      Q => addr(24),
      R => '0'
    );
\addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(26),
      Q => addr(25),
      R => '0'
    );
\addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(27),
      Q => addr(26),
      R => '0'
    );
\addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(28),
      Q => addr(27),
      R => '0'
    );
\addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(29),
      Q => addr(28),
      R => '0'
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(2),
      Q => addr(1),
      R => '0'
    );
\addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(30),
      Q => addr(29),
      R => '0'
    );
\addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(31),
      Q => addr(30),
      R => '0'
    );
\addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => addr_1(3),
      Q => addr(2),
      R => '0'
    );
\addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => addr_1(4),
      Q => addr(3),
      R => '0'
    );
\addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(5),
      Q => addr(4),
      R => '0'
    );
\addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(6),
      Q => addr(5),
      R => '0'
    );
\addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(7),
      Q => addr(6),
      R => '0'
    );
\addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(8),
      Q => addr(7),
      R => '0'
    );
\addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => ram_addr(9),
      Q => addr(8),
      R => '0'
    );
\dout[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[8]\,
      I1 => rst,
      O => dout0
    );
\dout_SPI[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8700"
    )
        port map (
      I0 => \register_count_reg_n_0_[1]\,
      I1 => \register_count_reg_n_0_[0]\,
      I2 => \register_count_reg_n_0_[2]\,
      I3 => IMU_high_flag_0,
      I4 => \FSM_onehot_currentState_reg_n_0_[3]\,
      O => \dout_SPI[10]_i_1_n_0\
    );
\dout_SPI[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888222"
    )
        port map (
      I0 => IMU_high_flag_0,
      I1 => \register_count_reg_n_0_[3]\,
      I2 => \register_count_reg_n_0_[1]\,
      I3 => \register_count_reg_n_0_[0]\,
      I4 => \register_count_reg_n_0_[2]\,
      O => \dout_SPI[11]_i_1_n_0\
    );
\dout_SPI[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEA0000"
    )
        port map (
      I0 => \register_count_reg_n_0_[3]\,
      I1 => \register_count_reg_n_0_[1]\,
      I2 => \register_count_reg_n_0_[0]\,
      I3 => \register_count_reg_n_0_[2]\,
      I4 => IMU_high_flag_0,
      O => \dout_SPI[12]_i_1_n_0\
    );
\dout_SPI[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[3]\,
      I1 => \FSM_onehot_currentState_reg_n_0_[0]\,
      I2 => IMU_high_flag_0,
      I3 => rst,
      O => dout_SPI0
    );
\dout_SPI[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[0]\,
      I1 => IMU_high_flag_0,
      O => \dout_SPI[15]_i_2_n_0\
    );
\dout_SPI[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => IMU_high_flag_0,
      I1 => \register_count_reg_n_0_[0]\,
      O => \dout_SPI[8]_i_1_n_0\
    );
\dout_SPI[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF60"
    )
        port map (
      I0 => \register_count_reg_n_0_[0]\,
      I1 => \register_count_reg_n_0_[1]\,
      I2 => IMU_high_flag_0,
      I3 => \FSM_onehot_currentState_reg_n_0_[3]\,
      O => \dout_SPI[9]_i_1_n_0\
    );
\dout_SPI_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_SPI0,
      D => \FSM_onehot_currentState_reg_n_0_[3]\,
      Q => dout_SPI(0),
      R => '0'
    );
\dout_SPI_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_SPI0,
      D => \dout_SPI[10]_i_1_n_0\,
      Q => dout_SPI(3),
      R => '0'
    );
\dout_SPI_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_SPI0,
      D => \dout_SPI[11]_i_1_n_0\,
      Q => dout_SPI(4),
      R => '0'
    );
\dout_SPI_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_SPI0,
      D => \dout_SPI[12]_i_1_n_0\,
      Q => dout_SPI(5),
      R => '0'
    );
\dout_SPI_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_SPI0,
      D => IMU_high_flag_0,
      Q => dout_SPI(6),
      R => '0'
    );
\dout_SPI_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_SPI0,
      D => \dout_SPI[15]_i_2_n_0\,
      Q => dout_SPI(7),
      R => '0'
    );
\dout_SPI_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_SPI0,
      D => \dout_SPI[8]_i_1_n_0\,
      Q => dout_SPI(1),
      R => '0'
    );
\dout_SPI_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_SPI0,
      D => \dout_SPI[9]_i_1_n_0\,
      Q => dout_SPI(2),
      R => '0'
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[0]\,
      Q => dout(0),
      R => '0'
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[10]\,
      Q => dout(10),
      R => '0'
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[11]\,
      Q => dout(11),
      R => '0'
    );
\dout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[12]\,
      Q => dout(12),
      R => '0'
    );
\dout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[13]\,
      Q => dout(13),
      R => '0'
    );
\dout_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[14]\,
      Q => dout(14),
      R => '0'
    );
\dout_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[15]\,
      Q => dout(15),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[1]\,
      Q => dout(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[2]\,
      Q => dout(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[3]\,
      Q => dout(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[4]\,
      Q => dout(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[5]\,
      Q => dout(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[6]\,
      Q => dout(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[7]\,
      Q => dout(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[8]\,
      Q => dout(8),
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout0,
      D => \tmp_data_reg_n_0_[9]\,
      Q => dout(9),
      R => '0'
    );
en_SPI_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF0000FE00"
    )
        port map (
      I0 => IMU_high_flag_0,
      I1 => \FSM_onehot_currentState_reg_n_0_[0]\,
      I2 => \FSM_onehot_currentState_reg_n_0_[3]\,
      I3 => en_SPI_i_2_n_0,
      I4 => rst,
      I5 => \^en_spi\,
      O => en_SPI_i_1_n_0
    );
en_SPI_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[3]\,
      I1 => \FSM_onehot_currentState_reg_n_0_[6]\,
      I2 => \FSM_onehot_currentState_reg_n_0_[1]\,
      I3 => \FSM_onehot_currentState_reg_n_0_[0]\,
      I4 => IMU_high_flag_0,
      I5 => \FSM_onehot_currentState_reg_n_0_[4]\,
      O => en_SPI_i_2_n_0
    );
en_SPI_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => en_SPI_i_1_n_0,
      Q => \^en_spi\,
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
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ram_addr(2),
      O => \i__carry_i_1_n_0\
    );
\led[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[0]\,
      I1 => \FSM_onehot_currentState_reg_n_0_[10]\,
      I2 => \^led\(0),
      O => \led[3]_i_1_n_0\
    );
\led_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \led[3]_i_1_n_0\,
      Q => \^led\(0)
    );
\plusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp_inferred__0/i__carry_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => ram_addr(2),
      DI(0) => '0',
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 2) => ram_addr(4 downto 3),
      S(1) => \i__carry_i_1_n_0\,
      S(0) => ram_addr(1)
    );
\plusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => ram_addr(8 downto 5)
    );
\plusOp_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__0_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__1_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__1_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => ram_addr(12 downto 9)
    );
\plusOp_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__1_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__2_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__2_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__2_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => ram_addr(16 downto 13)
    );
\plusOp_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__2_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__3_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__3_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__3_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => ram_addr(20 downto 17)
    );
\plusOp_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__3_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__4_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__4_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__4_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => ram_addr(24 downto 21)
    );
\plusOp_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__4_n_0\,
      CO(3) => \plusOp_inferred__0/i__carry__5_n_0\,
      CO(2) => \plusOp_inferred__0/i__carry__5_n_1\,
      CO(1) => \plusOp_inferred__0/i__carry__5_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => ram_addr(28 downto 25)
    );
\plusOp_inferred__0/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_inferred__0/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_inferred__0/i__carry__6_n_2\,
      CO(0) => \plusOp_inferred__0/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => ram_addr(31 downto 29)
    );
\ram_addr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEAAAAAAAA"
    )
        port map (
      I0 => data0(2),
      I1 => ram_addr(3),
      I2 => \addr[4]_i_4_n_0\,
      I3 => \addr[4]_i_3_n_0\,
      I4 => \addr[4]_i_2_n_0\,
      I5 => ram_addr(4),
      O => ram_addr_2(2)
    );
\ram_addr[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEAAAAAAAA"
    )
        port map (
      I0 => data0(30),
      I1 => ram_addr(3),
      I2 => \addr[4]_i_4_n_0\,
      I3 => \addr[4]_i_3_n_0\,
      I4 => \addr[4]_i_2_n_0\,
      I5 => ram_addr(4),
      O => ram_addr_2(30)
    );
\ram_addr[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => dout0,
      I1 => ram_addr(3),
      I2 => \addr[4]_i_4_n_0\,
      I3 => \addr[4]_i_3_n_0\,
      I4 => \addr[4]_i_2_n_0\,
      I5 => ram_addr(4),
      O => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(10),
      Q => ram_addr(10),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(11),
      Q => ram_addr(11),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(12),
      Q => ram_addr(12),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(13),
      Q => ram_addr(13),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(14),
      Q => ram_addr(14),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(15),
      Q => ram_addr(15),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(16),
      Q => ram_addr(16),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(17),
      Q => ram_addr(17),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(18),
      Q => ram_addr(18),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(19),
      Q => ram_addr(19),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(1),
      Q => ram_addr(1),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(20),
      Q => ram_addr(20),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(21),
      Q => ram_addr(21),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(22),
      Q => ram_addr(22),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(23),
      Q => ram_addr(23),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(24),
      Q => ram_addr(24),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(25),
      Q => ram_addr(25),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(26),
      Q => ram_addr(26),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(27),
      Q => ram_addr(27),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(28),
      Q => ram_addr(28),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(29),
      Q => ram_addr(29),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => ram_addr_2(2),
      Q => ram_addr(2),
      R => '0'
    );
\ram_addr_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => dout0,
      D => ram_addr_2(30),
      Q => ram_addr(30),
      R => '0'
    );
\ram_addr_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(31),
      Q => ram_addr(31),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(3),
      Q => ram_addr(3),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(4),
      Q => ram_addr(4),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(5),
      Q => ram_addr(5),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(6),
      Q => ram_addr(6),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(7),
      Q => ram_addr(7),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(8),
      Q => ram_addr(8),
      R => \ram_addr[31]_i_1_n_0\
    );
\ram_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => dout0,
      D => data0(9),
      Q => ram_addr(9),
      R => \ram_addr[31]_i_1_n_0\
    );
\register_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \register_count_reg_n_0_[0]\,
      O => \register_count[0]_i_1_n_0\
    );
\register_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \register_count_reg_n_0_[1]\,
      I1 => \register_count_reg_n_0_[0]\,
      O => \register_count[1]_i_1_n_0\
    );
\register_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1CCC"
    )
        port map (
      I0 => \register_count_reg_n_0_[3]\,
      I1 => \register_count_reg_n_0_[2]\,
      I2 => \register_count_reg_n_0_[0]\,
      I3 => \register_count_reg_n_0_[1]\,
      O => \register_count[2]_i_1_n_0\
    );
\register_count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => register_count,
      I1 => rst,
      O => register_count0
    );
\register_count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A2A"
    )
        port map (
      I0 => \register_count_reg_n_0_[3]\,
      I1 => \register_count_reg_n_0_[1]\,
      I2 => \register_count_reg_n_0_[0]\,
      I3 => \register_count_reg_n_0_[2]\,
      O => \register_count[3]_i_2_n_0\
    );
\register_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => register_count0,
      D => \register_count[0]_i_1_n_0\,
      Q => \register_count_reg_n_0_[0]\,
      R => '0'
    );
\register_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => register_count0,
      D => \register_count[1]_i_1_n_0\,
      Q => \register_count_reg_n_0_[1]\,
      R => '0'
    );
\register_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => register_count0,
      D => \register_count[2]_i_1_n_0\,
      Q => \register_count_reg_n_0_[2]\,
      R => '0'
    );
\register_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => register_count0,
      D => \register_count[3]_i_2_n_0\,
      Q => \register_count_reg_n_0_[3]\,
      R => '0'
    );
\tmp_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_currentState_reg_n_0_[7]\,
      I1 => IMU_high_flag,
      I2 => rst,
      O => \tmp_data[15]_i_1_n_0\
    );
\tmp_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => IMU_high_flag,
      I1 => \FSM_onehot_currentState_reg_n_0_[7]\,
      I2 => rst,
      O => \tmp_data[7]_i_1_n_0\
    );
\tmp_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[7]_i_1_n_0\,
      D => SPI_data(0),
      Q => \tmp_data_reg_n_0_[0]\,
      R => '0'
    );
\tmp_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[15]_i_1_n_0\,
      D => SPI_data(2),
      Q => \tmp_data_reg_n_0_[10]\,
      R => '0'
    );
\tmp_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[15]_i_1_n_0\,
      D => SPI_data(3),
      Q => \tmp_data_reg_n_0_[11]\,
      R => '0'
    );
\tmp_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[15]_i_1_n_0\,
      D => SPI_data(4),
      Q => \tmp_data_reg_n_0_[12]\,
      R => '0'
    );
\tmp_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[15]_i_1_n_0\,
      D => SPI_data(5),
      Q => \tmp_data_reg_n_0_[13]\,
      R => '0'
    );
\tmp_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[15]_i_1_n_0\,
      D => SPI_data(6),
      Q => \tmp_data_reg_n_0_[14]\,
      R => '0'
    );
\tmp_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[15]_i_1_n_0\,
      D => SPI_data(7),
      Q => \tmp_data_reg_n_0_[15]\,
      R => '0'
    );
\tmp_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[7]_i_1_n_0\,
      D => SPI_data(1),
      Q => \tmp_data_reg_n_0_[1]\,
      R => '0'
    );
\tmp_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[7]_i_1_n_0\,
      D => SPI_data(2),
      Q => \tmp_data_reg_n_0_[2]\,
      R => '0'
    );
\tmp_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[7]_i_1_n_0\,
      D => SPI_data(3),
      Q => \tmp_data_reg_n_0_[3]\,
      R => '0'
    );
\tmp_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[7]_i_1_n_0\,
      D => SPI_data(4),
      Q => \tmp_data_reg_n_0_[4]\,
      R => '0'
    );
\tmp_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[7]_i_1_n_0\,
      D => SPI_data(5),
      Q => \tmp_data_reg_n_0_[5]\,
      R => '0'
    );
\tmp_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[7]_i_1_n_0\,
      D => SPI_data(6),
      Q => \tmp_data_reg_n_0_[6]\,
      R => '0'
    );
\tmp_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[7]_i_1_n_0\,
      D => SPI_data(7),
      Q => \tmp_data_reg_n_0_[7]\,
      R => '0'
    );
\tmp_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[15]_i_1_n_0\,
      D => SPI_data(0),
      Q => \tmp_data_reg_n_0_[8]\,
      R => '0'
    );
\tmp_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \tmp_data[15]_i_1_n_0\,
      D => SPI_data(1),
      Q => \tmp_data_reg_n_0_[9]\,
      R => '0'
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
  signal \^addr\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^dout\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^dout_spi\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^led\ : STD_LOGIC_VECTOR ( 2 to 2 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  addr(31 downto 1) <= \^addr\(31 downto 1);
  addr(0) <= \<const0>\;
  dout(31) <= \<const0>\;
  dout(30) <= \<const0>\;
  dout(29) <= \<const0>\;
  dout(28) <= \<const0>\;
  dout(27) <= \<const0>\;
  dout(26) <= \<const0>\;
  dout(25) <= \<const0>\;
  dout(24) <= \<const0>\;
  dout(23) <= \<const0>\;
  dout(22) <= \<const0>\;
  dout(21) <= \<const0>\;
  dout(20) <= \<const0>\;
  dout(19) <= \<const0>\;
  dout(18) <= \<const0>\;
  dout(17) <= \<const0>\;
  dout(16) <= \<const0>\;
  dout(15 downto 0) <= \^dout\(15 downto 0);
  dout_SPI(15) <= \^dout_spi\(15);
  dout_SPI(14) <= \<const0>\;
  dout_SPI(13 downto 8) <= \^dout_spi\(13 downto 8);
  dout_SPI(7) <= \<const0>\;
  dout_SPI(6) <= \<const0>\;
  dout_SPI(5) <= \<const0>\;
  dout_SPI(4) <= \<const0>\;
  dout_SPI(3) <= \<const0>\;
  dout_SPI(2) <= \<const0>\;
  dout_SPI(1) <= \<const0>\;
  dout_SPI(0) <= \^dout_spi\(0);
  led(3) <= \^led\(2);
  led(2) <= \^led\(2);
  led(1) <= \^led\(2);
  led(0) <= \^led\(2);
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
      addr(30 downto 0) => \^addr\(31 downto 1),
      clk => clk,
      dout(15 downto 0) => \^dout\(15 downto 0),
      dout_SPI(7) => \^dout_spi\(15),
      dout_SPI(6 downto 1) => \^dout_spi\(13 downto 8),
      dout_SPI(0) => \^dout_spi\(0),
      en => en,
      en_SPI => en_SPI,
      led(0) => \^led\(2),
      read_done => read_done,
      rst => rst
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
