// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Nov 24 11:44:41 2020
// Host        : DESKTOP-HA9HIB8 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/chris/Documents/git-repos/fpga_emb_drone/FPGA_drone/FPGA_drone.srcs/sources_1/bd/design_1/ip/design_1_spi_follower_receiver_0_0/design_1_spi_follower_receiver_0_0_sim_netlist.v
// Design      : design_1_spi_follower_receiver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_spi_follower_receiver_0_0,spi_follower_receiver,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "spi_follower_receiver,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_spi_follower_receiver_0_0
   (sck,
    rst,
    read_en,
    miso,
    read_done,
    data);
  input sck;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input read_en;
  input miso;
  output read_done;
  output [7:0]data;

  wire [7:0]data;
  wire miso;
  wire read_done;
  wire read_en;
  wire rst;
  wire sck;

  design_1_spi_follower_receiver_0_0_spi_follower_receiver U0
       (.data(data),
        .miso(miso),
        .read_done(read_done),
        .read_en(read_en),
        .rst(rst),
        .sck(sck));
endmodule

(* ORIG_REF_NAME = "spi_follower_receiver" *) 
module design_1_spi_follower_receiver_0_0_spi_follower_receiver
   (data,
    read_done,
    rst,
    sck,
    miso,
    read_en);
  output [7:0]data;
  output read_done;
  input rst;
  input sck;
  input miso;
  input read_en;

  wire \FSM_sequential_currentState_reg_n_0_[1] ;
  wire [0:0]currentState;
  wire [7:0]data;
  wire \data[7]_i_1_n_0 ;
  wire [7:0]data_temp;
  wire \data_temp[0]_i_1_n_0 ;
  wire \data_temp[1]_i_1_n_0 ;
  wire \data_temp[2]_i_1_n_0 ;
  wire \data_temp[3]_i_1_n_0 ;
  wire \data_temp[4]_i_1_n_0 ;
  wire \data_temp[5]_i_1_n_0 ;
  wire \data_temp[6]_i_1_n_0 ;
  wire \data_temp[7]_i_1_n_0 ;
  wire \index[0]_i_1_n_0 ;
  wire \index[1]_i_1_n_0 ;
  wire \index[2]_i_1_n_0 ;
  wire \index_reg_n_0_[0] ;
  wire \index_reg_n_0_[1] ;
  wire \index_reg_n_0_[2] ;
  wire miso;
  wire [1:0]nextState;
  wire [7:0]p_0_in;
  wire read_done;
  wire read_done_i_1_n_0;
  wire read_en;
  wire rst;
  wire sck;

  LUT6 #(
    .INIT(64'h00FFEFFF00FFEF00)) 
    \FSM_sequential_currentState[0]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[2] ),
        .I2(\index_reg_n_0_[0] ),
        .I3(currentState),
        .I4(\FSM_sequential_currentState_reg_n_0_[1] ),
        .I5(read_en),
        .O(nextState[0]));
  LUT5 #(
    .INIT(32'h00FF1000)) 
    \FSM_sequential_currentState[1]_i_1 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[2] ),
        .I2(\index_reg_n_0_[0] ),
        .I3(currentState),
        .I4(\FSM_sequential_currentState_reg_n_0_[1] ),
        .O(nextState[1]));
  (* FSM_ENCODED_STATES = "st_receive_done:11,st_idle:00,st_sample_begin:01,st_sample_end:10" *) 
  FDCE \FSM_sequential_currentState_reg[0] 
       (.C(sck),
        .CE(1'b1),
        .CLR(rst),
        .D(nextState[0]),
        .Q(currentState));
  (* FSM_ENCODED_STATES = "st_receive_done:11,st_idle:00,st_sample_begin:01,st_sample_end:10" *) 
  FDCE \FSM_sequential_currentState_reg[1] 
       (.C(sck),
        .CE(1'b1),
        .CLR(rst),
        .D(nextState[1]),
        .Q(\FSM_sequential_currentState_reg_n_0_[1] ));
  LUT3 #(
    .INIT(8'h04)) 
    \data[7]_i_1 
       (.I0(currentState),
        .I1(\FSM_sequential_currentState_reg_n_0_[1] ),
        .I2(rst),
        .O(\data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(sck),
        .CE(\data[7]_i_1_n_0 ),
        .D(data_temp[0]),
        .Q(data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(sck),
        .CE(\data[7]_i_1_n_0 ),
        .D(data_temp[1]),
        .Q(data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(sck),
        .CE(\data[7]_i_1_n_0 ),
        .D(data_temp[2]),
        .Q(data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(sck),
        .CE(\data[7]_i_1_n_0 ),
        .D(data_temp[3]),
        .Q(data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(sck),
        .CE(\data[7]_i_1_n_0 ),
        .D(data_temp[4]),
        .Q(data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(sck),
        .CE(\data[7]_i_1_n_0 ),
        .D(data_temp[5]),
        .Q(data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(sck),
        .CE(\data[7]_i_1_n_0 ),
        .D(data_temp[6]),
        .Q(data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(sck),
        .CE(\data[7]_i_1_n_0 ),
        .D(data_temp[7]),
        .Q(data[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_temp[0]_i_1 
       (.I0(miso),
        .I1(p_0_in[0]),
        .I2(data_temp[0]),
        .O(\data_temp[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \data_temp[0]_i_2 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[2] ),
        .I3(currentState),
        .I4(\FSM_sequential_currentState_reg_n_0_[1] ),
        .I5(rst),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_temp[1]_i_1 
       (.I0(miso),
        .I1(p_0_in[1]),
        .I2(data_temp[1]),
        .O(\data_temp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \data_temp[1]_i_2 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[2] ),
        .I3(currentState),
        .I4(\FSM_sequential_currentState_reg_n_0_[1] ),
        .I5(rst),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_temp[2]_i_1 
       (.I0(miso),
        .I1(p_0_in[2]),
        .I2(data_temp[2]),
        .O(\data_temp[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \data_temp[2]_i_2 
       (.I0(\index_reg_n_0_[0] ),
        .I1(\index_reg_n_0_[1] ),
        .I2(\index_reg_n_0_[2] ),
        .I3(currentState),
        .I4(\FSM_sequential_currentState_reg_n_0_[1] ),
        .I5(rst),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_temp[3]_i_1 
       (.I0(miso),
        .I1(p_0_in[3]),
        .I2(data_temp[3]),
        .O(\data_temp[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \data_temp[3]_i_2 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[2] ),
        .I3(currentState),
        .I4(\FSM_sequential_currentState_reg_n_0_[1] ),
        .I5(rst),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_temp[4]_i_1 
       (.I0(miso),
        .I1(p_0_in[4]),
        .I2(data_temp[4]),
        .O(\data_temp[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \data_temp[4]_i_2 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[2] ),
        .I3(currentState),
        .I4(\FSM_sequential_currentState_reg_n_0_[1] ),
        .I5(rst),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_temp[5]_i_1 
       (.I0(miso),
        .I1(p_0_in[5]),
        .I2(data_temp[5]),
        .O(\data_temp[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \data_temp[5]_i_2 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[2] ),
        .I3(currentState),
        .I4(\FSM_sequential_currentState_reg_n_0_[1] ),
        .I5(rst),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_temp[6]_i_1 
       (.I0(miso),
        .I1(p_0_in[6]),
        .I2(data_temp[6]),
        .O(\data_temp[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \data_temp[6]_i_2 
       (.I0(\index_reg_n_0_[0] ),
        .I1(\index_reg_n_0_[1] ),
        .I2(\index_reg_n_0_[2] ),
        .I3(currentState),
        .I4(\FSM_sequential_currentState_reg_n_0_[1] ),
        .I5(rst),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_temp[7]_i_1 
       (.I0(miso),
        .I1(p_0_in[7]),
        .I2(data_temp[7]),
        .O(\data_temp[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \data_temp[7]_i_2 
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[2] ),
        .I3(currentState),
        .I4(\FSM_sequential_currentState_reg_n_0_[1] ),
        .I5(rst),
        .O(p_0_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \data_temp_reg[0] 
       (.C(sck),
        .CE(1'b1),
        .D(\data_temp[0]_i_1_n_0 ),
        .Q(data_temp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_temp_reg[1] 
       (.C(sck),
        .CE(1'b1),
        .D(\data_temp[1]_i_1_n_0 ),
        .Q(data_temp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_temp_reg[2] 
       (.C(sck),
        .CE(1'b1),
        .D(\data_temp[2]_i_1_n_0 ),
        .Q(data_temp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_temp_reg[3] 
       (.C(sck),
        .CE(1'b1),
        .D(\data_temp[3]_i_1_n_0 ),
        .Q(data_temp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_temp_reg[4] 
       (.C(sck),
        .CE(1'b1),
        .D(\data_temp[4]_i_1_n_0 ),
        .Q(data_temp[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_temp_reg[5] 
       (.C(sck),
        .CE(1'b1),
        .D(\data_temp[5]_i_1_n_0 ),
        .Q(data_temp[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_temp_reg[6] 
       (.C(sck),
        .CE(1'b1),
        .D(\data_temp[6]_i_1_n_0 ),
        .Q(data_temp[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_temp_reg[7] 
       (.C(sck),
        .CE(1'b1),
        .D(\data_temp[7]_i_1_n_0 ),
        .Q(data_temp[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFD03)) 
    \index[0]_i_1 
       (.I0(currentState),
        .I1(rst),
        .I2(\FSM_sequential_currentState_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[0] ),
        .O(\index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFD0007)) 
    \index[1]_i_1 
       (.I0(currentState),
        .I1(\index_reg_n_0_[0] ),
        .I2(rst),
        .I3(\FSM_sequential_currentState_reg_n_0_[1] ),
        .I4(\index_reg_n_0_[1] ),
        .O(\index[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000057)) 
    \index[2]_i_1 
       (.I0(currentState),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(rst),
        .I4(\FSM_sequential_currentState_reg_n_0_[1] ),
        .I5(\index_reg_n_0_[2] ),
        .O(\index[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \index_reg[0] 
       (.C(sck),
        .CE(1'b1),
        .D(\index[0]_i_1_n_0 ),
        .Q(\index_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \index_reg[1] 
       (.C(sck),
        .CE(1'b1),
        .D(\index[1]_i_1_n_0 ),
        .Q(\index_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \index_reg[2] 
       (.C(sck),
        .CE(1'b1),
        .D(\index[2]_i_1_n_0 ),
        .Q(\index_reg_n_0_[2] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFE40)) 
    read_done_i_1
       (.I0(rst),
        .I1(\FSM_sequential_currentState_reg_n_0_[1] ),
        .I2(currentState),
        .I3(read_done),
        .O(read_done_i_1_n_0));
  FDRE read_done_reg
       (.C(sck),
        .CE(1'b1),
        .D(read_done_i_1_n_0),
        .Q(read_done),
        .R(1'b0));
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
