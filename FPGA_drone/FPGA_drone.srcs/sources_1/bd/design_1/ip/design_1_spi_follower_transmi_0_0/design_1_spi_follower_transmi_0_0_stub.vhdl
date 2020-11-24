-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Nov 24 08:36:38 2020
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Bruger/Documents/fpga_emb_drone/FPGA_drone/FPGA_drone.srcs/sources_1/bd/design_1/ip/design_1_spi_follower_transmi_0_0/design_1_spi_follower_transmi_0_0_stub.vhdl
-- Design      : design_1_spi_follower_transmi_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_spi_follower_transmi_0_0 is
  Port ( 
    data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sck : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    read_en : out STD_LOGIC;
    sck_out : out STD_LOGIC;
    ss : out STD_LOGIC;
    mosi : out STD_LOGIC
  );

end design_1_spi_follower_transmi_0_0;

architecture stub of design_1_spi_follower_transmi_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data[15:0],sck,en,rst,read_en,sck_out,ss,mosi";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "spi_follower_transmitter,Vivado 2020.1";
begin
end;
