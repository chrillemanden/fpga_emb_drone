// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Nov 17 11:44:01 2020
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Bruger/Documents/fpga_emb_drone/FPGA_drone/FPGA_drone.srcs/sources_1/bd/design_1/ip/design_1_Controller_0_0/design_1_Controller_0_0_stub.v
// Design      : design_1_Controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Controller,Vivado 2020.1" *)
module design_1_Controller_0_0(SPI_data, clk, rst, en, en_SPI, dout_SPI, we, dout, addr, 
  led)
/* synthesis syn_black_box black_box_pad_pin="SPI_data[7:0],clk,rst,en,en_SPI,dout_SPI[23:0],we[3:0],dout[31:0],addr[31:0],led[3:0]" */;
  input [7:0]SPI_data;
  input clk;
  input rst;
  output en;
  output en_SPI;
  output [23:0]dout_SPI;
  output [3:0]we;
  output [31:0]dout;
  output [31:0]addr;
  output [3:0]led;
endmodule
