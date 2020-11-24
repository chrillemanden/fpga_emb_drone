// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Nov 24 08:36:40 2020
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bruger/Documents/fpga_emb_drone/FPGA_drone/FPGA_drone.srcs/sources_1/bd/design_1/ip/design_1_clk_divider_0_0/design_1_clk_divider_0_0_sim_netlist.v
// Design      : design_1_clk_divider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_clk_divider_0_0,clk_divider,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "clk_divider,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_clk_divider_0_0
   (clk,
    rst,
    clk_div);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output clk_div;

  wire clk;
  wire clk_div;
  wire rst;

  design_1_clk_divider_0_0_clk_divider U0
       (.clk(clk),
        .clk_div(clk_div),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module design_1_clk_divider_0_0_clk_divider
   (clk_div,
    clk,
    rst);
  output clk_div;
  input clk;
  input rst;

  wire clk;
  wire clk_div;
  wire clk_div_sig_i_1_n_0;
  wire clk_div_sig_i_2_n_0;
  wire clk_div_sig_i_3_n_0;
  wire \count_sig[0]_i_1_n_0 ;
  wire \count_sig[1]_i_1_n_0 ;
  wire \count_sig[2]_i_1_n_0 ;
  wire \count_sig[3]_i_1_n_0 ;
  wire \count_sig[4]_i_1_n_0 ;
  wire \count_sig[5]_i_1_n_0 ;
  wire \count_sig[6]_i_1_n_0 ;
  wire \count_sig[6]_i_2_n_0 ;
  wire \count_sig[7]_i_1_n_0 ;
  wire \count_sig[7]_i_2_n_0 ;
  wire [7:0]count_sig_reg;
  wire rst;

  LUT6 #(
    .INIT(64'hFFFFFFBF00000040)) 
    clk_div_sig_i_1
       (.I0(rst),
        .I1(clk_div_sig_i_2_n_0),
        .I2(count_sig_reg[3]),
        .I3(count_sig_reg[2]),
        .I4(clk_div_sig_i_3_n_0),
        .I5(clk_div),
        .O(clk_div_sig_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    clk_div_sig_i_2
       (.I0(count_sig_reg[6]),
        .I1(count_sig_reg[7]),
        .I2(count_sig_reg[5]),
        .I3(count_sig_reg[4]),
        .O(clk_div_sig_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    clk_div_sig_i_3
       (.I0(count_sig_reg[0]),
        .I1(count_sig_reg[1]),
        .O(clk_div_sig_i_3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    clk_div_sig_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_div_sig_i_1_n_0),
        .Q(clk_div),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_sig[0]_i_1 
       (.I0(count_sig_reg[0]),
        .O(\count_sig[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_sig[1]_i_1 
       (.I0(count_sig_reg[1]),
        .I1(count_sig_reg[0]),
        .O(\count_sig[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h70787878)) 
    \count_sig[2]_i_1 
       (.I0(count_sig_reg[1]),
        .I1(count_sig_reg[0]),
        .I2(count_sig_reg[2]),
        .I3(count_sig_reg[3]),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h77807F80)) 
    \count_sig[3]_i_1 
       (.I0(count_sig_reg[1]),
        .I1(count_sig_reg[0]),
        .I2(count_sig_reg[2]),
        .I3(count_sig_reg[3]),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6A2AAAAA6AAAAAAA)) 
    \count_sig[4]_i_1 
       (.I0(count_sig_reg[4]),
        .I1(count_sig_reg[1]),
        .I2(count_sig_reg[0]),
        .I3(count_sig_reg[2]),
        .I4(count_sig_reg[3]),
        .I5(clk_div_sig_i_2_n_0),
        .O(\count_sig[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA6A0AAAAA6AAAAAA)) 
    \count_sig[5]_i_1 
       (.I0(count_sig_reg[5]),
        .I1(count_sig_reg[4]),
        .I2(clk_div_sig_i_3_n_0),
        .I3(count_sig_reg[2]),
        .I4(count_sig_reg[3]),
        .I5(clk_div_sig_i_2_n_0),
        .O(\count_sig[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5A5A5A5A5A5A5A58)) 
    \count_sig[6]_i_1 
       (.I0(\count_sig[7]_i_2_n_0 ),
        .I1(\count_sig[6]_i_2_n_0 ),
        .I2(count_sig_reg[6]),
        .I3(count_sig_reg[7]),
        .I4(count_sig_reg[5]),
        .I5(count_sig_reg[4]),
        .O(\count_sig[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \count_sig[6]_i_2 
       (.I0(count_sig_reg[1]),
        .I1(count_sig_reg[0]),
        .I2(count_sig_reg[2]),
        .I3(count_sig_reg[3]),
        .O(\count_sig[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_sig[7]_i_1 
       (.I0(\count_sig[7]_i_2_n_0 ),
        .I1(count_sig_reg[6]),
        .I2(count_sig_reg[7]),
        .O(\count_sig[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_sig[7]_i_2 
       (.I0(count_sig_reg[5]),
        .I1(count_sig_reg[3]),
        .I2(count_sig_reg[0]),
        .I3(count_sig_reg[1]),
        .I4(count_sig_reg[2]),
        .I5(count_sig_reg[4]),
        .O(\count_sig[7]_i_2_n_0 ));
  FDCE \count_sig_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig[0]_i_1_n_0 ),
        .Q(count_sig_reg[0]));
  FDCE \count_sig_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig[1]_i_1_n_0 ),
        .Q(count_sig_reg[1]));
  FDCE \count_sig_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig[2]_i_1_n_0 ),
        .Q(count_sig_reg[2]));
  FDCE \count_sig_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig[3]_i_1_n_0 ),
        .Q(count_sig_reg[3]));
  FDCE \count_sig_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig[4]_i_1_n_0 ),
        .Q(count_sig_reg[4]));
  FDCE \count_sig_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig[5]_i_1_n_0 ),
        .Q(count_sig_reg[5]));
  FDCE \count_sig_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig[6]_i_1_n_0 ),
        .Q(count_sig_reg[6]));
  FDCE \count_sig_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig[7]_i_1_n_0 ),
        .Q(count_sig_reg[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
