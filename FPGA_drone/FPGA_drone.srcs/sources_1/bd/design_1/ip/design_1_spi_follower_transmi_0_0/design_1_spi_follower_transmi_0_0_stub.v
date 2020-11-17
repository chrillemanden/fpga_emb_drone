// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Nov 17 11:03:44 2020
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Bruger/Documents/fpga_emb_drone/FPGA_drone/FPGA_drone.srcs/sources_1/bd/design_1/ip/design_1_spi_follower_transmi_0_0/design_1_spi_follower_transmi_0_0_stub.v
// Design      : design_1_spi_follower_transmi_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "spi_follower_transmitter,Vivado 2020.1" *)
module design_1_spi_follower_transmi_0_0(data, sck, en, rst, sck_out, ss, mosi)
/* synthesis syn_black_box black_box_pad_pin="data[23:0],sck,en,rst,sck_out,ss,mosi" */;
  input [23:0]data;
  input sck;
  input en;
  input rst;
  output sck_out;
  output ss;
  output mosi;
endmodule
