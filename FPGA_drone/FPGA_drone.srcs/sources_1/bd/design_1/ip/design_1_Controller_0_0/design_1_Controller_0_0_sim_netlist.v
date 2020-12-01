// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Dec  1 09:23:34 2020
// Host        : DESKTOP-HA9HIB8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/chris/Documents/git-repos/fpga_emb_drone/FPGA_drone/FPGA_drone.srcs/sources_1/bd/design_1/ip/design_1_Controller_0_0/design_1_Controller_0_0_sim_netlist.v
// Design      : design_1_Controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Controller_0_0,Controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Controller,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_Controller_0_0
   (SPI_data,
    read_done,
    clk,
    rst,
    en,
    en_SPI,
    dout_SPI,
    we,
    dout,
    addr,
    led);
  input [7:0]SPI_data;
  input read_done;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output en;
  output en_SPI;
  output [15:0]dout_SPI;
  output [3:0]we;
  output [31:0]dout;
  output [31:0]addr;
  output [3:0]led;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]SPI_data;
  wire clk;
  wire [7:0]\^dout ;
  wire [13:0]\^dout_SPI ;
  wire en;
  wire read_done;
  wire rst;

  assign addr[31] = \<const0> ;
  assign addr[30] = \<const1> ;
  assign addr[29] = \<const0> ;
  assign addr[28] = \<const0> ;
  assign addr[27] = \<const0> ;
  assign addr[26] = \<const0> ;
  assign addr[25] = \<const0> ;
  assign addr[24] = \<const0> ;
  assign addr[23] = \<const0> ;
  assign addr[22] = \<const0> ;
  assign addr[21] = \<const0> ;
  assign addr[20] = \<const0> ;
  assign addr[19] = \<const0> ;
  assign addr[18] = \<const0> ;
  assign addr[17] = \<const0> ;
  assign addr[16] = \<const0> ;
  assign addr[15] = \<const0> ;
  assign addr[14] = \<const0> ;
  assign addr[13] = \<const0> ;
  assign addr[12] = \<const0> ;
  assign addr[11] = \<const0> ;
  assign addr[10] = \<const0> ;
  assign addr[9] = \<const0> ;
  assign addr[8] = \<const0> ;
  assign addr[7] = \<const0> ;
  assign addr[6] = \<const0> ;
  assign addr[5] = \<const0> ;
  assign addr[4] = \<const0> ;
  assign addr[3] = \<const0> ;
  assign addr[2] = \<const1> ;
  assign addr[1] = \<const0> ;
  assign addr[0] = \<const0> ;
  assign dout[31] = \<const1> ;
  assign dout[30] = \<const1> ;
  assign dout[29] = \<const1> ;
  assign dout[28] = \<const1> ;
  assign dout[27] = \<const1> ;
  assign dout[26] = \<const1> ;
  assign dout[25] = \<const1> ;
  assign dout[24] = \<const1> ;
  assign dout[23] = \<const1> ;
  assign dout[22] = \<const1> ;
  assign dout[21] = \<const1> ;
  assign dout[20] = \<const1> ;
  assign dout[19] = \<const1> ;
  assign dout[18] = \<const1> ;
  assign dout[17] = \<const1> ;
  assign dout[16] = \<const1> ;
  assign dout[15] = \<const1> ;
  assign dout[14] = \<const1> ;
  assign dout[13] = \<const1> ;
  assign dout[12] = \<const1> ;
  assign dout[11] = \<const1> ;
  assign dout[10] = \<const1> ;
  assign dout[9] = \<const1> ;
  assign dout[8] = \<const1> ;
  assign dout[7:0] = \^dout [7:0];
  assign dout_SPI[15] = \^dout_SPI [13];
  assign dout_SPI[14] = \<const0> ;
  assign dout_SPI[13] = \^dout_SPI [13];
  assign dout_SPI[12] = \<const0> ;
  assign dout_SPI[11] = \^dout_SPI [13];
  assign dout_SPI[10] = \<const1> ;
  assign dout_SPI[9] = \^dout_SPI [0];
  assign dout_SPI[8] = \^dout_SPI [13];
  assign dout_SPI[7] = \<const0> ;
  assign dout_SPI[6] = \<const0> ;
  assign dout_SPI[5] = \<const0> ;
  assign dout_SPI[4] = \<const0> ;
  assign dout_SPI[3] = \<const0> ;
  assign dout_SPI[2] = \<const0> ;
  assign dout_SPI[1] = \<const0> ;
  assign dout_SPI[0] = \^dout_SPI [0];
  assign en_SPI = \<const0> ;
  assign led[3] = \<const0> ;
  assign led[2] = \<const0> ;
  assign led[1] = \<const0> ;
  assign led[0] = \<const0> ;
  assign we[3] = \<const1> ;
  assign we[2] = \<const1> ;
  assign we[1] = \<const1> ;
  assign we[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  design_1_Controller_0_0_Controller U0
       (.SPI_data(SPI_data),
        .clk(clk),
        .dout(\^dout ),
        .dout_SPI({\^dout_SPI [13],\^dout_SPI [0]}),
        .en(en),
        .read_done(read_done),
        .rst(rst));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "Controller" *) 
module design_1_Controller_0_0_Controller
   (en,
    dout_SPI,
    dout,
    rst,
    clk,
    SPI_data,
    read_done);
  output en;
  output [1:0]dout_SPI;
  output [7:0]dout;
  input rst;
  input clk;
  input [7:0]SPI_data;
  input read_done;

  wire [7:0]SPI_data;
  wire clk;
  wire [1:0]currentState;
  wire [7:0]dout;
  wire \dout[7]_i_1_n_0 ;
  wire [1:0]dout_SPI;
  wire \dout_SPI[15]_i_1_n_0 ;
  wire \dout_SPI[9]_i_1_n_0 ;
  wire en;
  wire [1:0]nextState;
  wire read_done;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \FSM_sequential_currentState[0]_i_1 
       (.I0(currentState[1]),
        .I1(read_done),
        .I2(currentState[0]),
        .O(nextState[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_currentState[1]_i_1 
       (.I0(currentState[0]),
        .I1(currentState[1]),
        .O(nextState[1]));
  (* FSM_ENCODED_STATES = "st_start:00,st_read:01,st_wait_receive:10,st_save_bram:11" *) 
  FDCE \FSM_sequential_currentState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(nextState[0]),
        .Q(currentState[0]));
  (* FSM_ENCODED_STATES = "st_start:00,st_read:01,st_wait_receive:10,st_save_bram:11" *) 
  FDCE \FSM_sequential_currentState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(nextState[1]),
        .Q(currentState[1]));
  LUT3 #(
    .INIT(8'h08)) 
    \dout[7]_i_1 
       (.I0(currentState[1]),
        .I1(currentState[0]),
        .I2(rst),
        .O(\dout[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFE02)) 
    \dout_SPI[15]_i_1 
       (.I0(currentState[0]),
        .I1(rst),
        .I2(currentState[1]),
        .I3(dout_SPI[1]),
        .O(\dout_SPI[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFD01)) 
    \dout_SPI[9]_i_1 
       (.I0(currentState[0]),
        .I1(rst),
        .I2(currentState[1]),
        .I3(dout_SPI[0]),
        .O(\dout_SPI[9]_i_1_n_0 ));
  FDRE \dout_SPI_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\dout_SPI[15]_i_1_n_0 ),
        .Q(dout_SPI[1]),
        .R(1'b0));
  FDRE \dout_SPI_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\dout_SPI[9]_i_1_n_0 ),
        .Q(dout_SPI[0]),
        .R(1'b0));
  FDRE \dout_reg[0] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(SPI_data[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(SPI_data[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(SPI_data[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(SPI_data[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(SPI_data[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(SPI_data[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(SPI_data[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(clk),
        .CE(\dout[7]_i_1_n_0 ),
        .D(SPI_data[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDCE en_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(1'b1),
        .Q(en));
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
