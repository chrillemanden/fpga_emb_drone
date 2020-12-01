-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Nov 24 11:44:41 2020
-- Host        : DESKTOP-HA9HIB8 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/chris/Documents/git-repos/fpga_emb_drone/FPGA_drone/FPGA_drone.srcs/sources_1/bd/design_1/ip/design_1_spi_follower_receiver_0_0/design_1_spi_follower_receiver_0_0_stub.vhdl
-- Design      : design_1_spi_follower_receiver_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_spi_follower_receiver_0_0 is
  Port ( 
    sck : in STD_LOGIC;
    rst : in STD_LOGIC;
    read_en : in STD_LOGIC;
    miso : in STD_LOGIC;
    read_done : out STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end design_1_spi_follower_receiver_0_0;

architecture stub of design_1_spi_follower_receiver_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sck,rst,read_en,miso,read_done,data[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "spi_follower_receiver,Vivado 2020.1";
begin
end;
