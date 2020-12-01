// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Nov 24 11:44:41 2020
// Host        : DESKTOP-HA9HIB8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/chris/Documents/git-repos/fpga_emb_drone/FPGA_drone/FPGA_drone.srcs/sources_1/bd/design_1/ip/design_1_spi_follower_receiver_0_0/design_1_spi_follower_receiver_0_0_stub.v
// Design      : design_1_spi_follower_receiver_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "spi_follower_receiver,Vivado 2020.1" *)
module design_1_spi_follower_receiver_0_0(sck, rst, read_en, miso, read_done, data)
/* synthesis syn_black_box black_box_pad_pin="sck,rst,read_en,miso,read_done,data[7:0]" */;
  input sck;
  input rst;
  input read_en;
  input miso;
  output read_done;
  output [7:0]data;
endmodule
