-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Nov 24 08:49:17 2020
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Bruger/Documents/fpga_emb_drone/FPGA_drone/FPGA_drone.srcs/sources_1/bd/design_1/ip/design_1_Controller_0_0/design_1_Controller_0_0_stub.vhdl
-- Design      : design_1_Controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Controller_0_0 is
  Port ( 
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

end design_1_Controller_0_0;

architecture stub of design_1_Controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SPI_data[7:0],read_done,clk,rst,en,en_SPI,dout_SPI[15:0],we[3:0],dout[31:0],addr[31:0],led[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Controller,Vivado 2020.1";
begin
end;
