--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Tue Nov 24 12:03:29 2020
--Host        : DESKTOP-HA9HIB8 running 64-bit major release  (build 9200)
--Command     : generate_target receiver_control_sim_wrapper.bd
--Design      : receiver_control_sim_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity receiver_control_sim_wrapper is
  port (
    addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    en_SPI : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    miso : in STD_LOGIC;
    mosi : out STD_LOGIC;
    rst : in STD_LOGIC;
    sck_out : out STD_LOGIC;
    ss : out STD_LOGIC;
    we : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end receiver_control_sim_wrapper;

architecture STRUCTURE of receiver_control_sim_wrapper is
  component receiver_control_sim is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    mosi : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    en_SPI : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sck_out : out STD_LOGIC;
    ss : out STD_LOGIC;
    miso : in STD_LOGIC
  );
  end component receiver_control_sim;
begin
receiver_control_sim_i: component receiver_control_sim
     port map (
      addr(31 downto 0) => addr(31 downto 0),
      clk => clk,
      dout(31 downto 0) => dout(31 downto 0),
      en_SPI => en_SPI,
      led(3 downto 0) => led(3 downto 0),
      miso => miso,
      mosi => mosi,
      rst => rst,
      sck_out => sck_out,
      ss => ss,
      we(3 downto 0) => we(3 downto 0)
    );
end STRUCTURE;
