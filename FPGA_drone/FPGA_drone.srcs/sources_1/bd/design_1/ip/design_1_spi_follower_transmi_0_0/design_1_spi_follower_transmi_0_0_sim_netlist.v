// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Nov 24 08:36:39 2020
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Bruger/Documents/fpga_emb_drone/FPGA_drone/FPGA_drone.srcs/sources_1/bd/design_1/ip/design_1_spi_follower_transmi_0_0/design_1_spi_follower_transmi_0_0_sim_netlist.v
// Design      : design_1_spi_follower_transmi_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_spi_follower_transmi_0_0,spi_follower_transmitter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "spi_follower_transmitter,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_spi_follower_transmi_0_0
   (data,
    sck,
    en,
    rst,
    read_en,
    sck_out,
    ss,
    mosi);
  input [15:0]data;
  input sck;
  input en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output read_en;
  output sck_out;
  output ss;
  output mosi;

  wire [15:0]data;
  wire en;
  wire mosi;
  wire read_en;
  wire rst;
  wire sck;
  wire sck_out;
  wire ss;

  design_1_spi_follower_transmi_0_0_spi_follower_transmitter U0
       (.data(data),
        .en(en),
        .mosi(mosi),
        .read_en(read_en),
        .rst(rst),
        .sck(sck),
        .sck_out(sck_out),
        .ss(ss));
endmodule

(* ORIG_REF_NAME = "spi_follower_transmitter" *) 
module design_1_spi_follower_transmi_0_0_spi_follower_transmitter
   (sck_out,
    read_en,
    ss,
    mosi,
    sck,
    rst,
    en,
    data);
  output sck_out;
  output read_en;
  output ss;
  output mosi;
  input sck;
  input rst;
  input en;
  input [15:0]data;

  wire \FSM_onehot_currentState_reg_n_0_[0] ;
  wire \FSM_onehot_currentState_reg_n_0_[1] ;
  wire \FSM_onehot_nextState_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_nextState_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_nextState_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_nextState_reg_n_0_[0] ;
  wire \FSM_onehot_nextState_reg_n_0_[1] ;
  wire \FSM_onehot_nextState_reg_n_0_[2] ;
  wire [1:1]currentState_reg;
  wire [15:0]data;
  wire en;
  wire \index[0]_i_1_n_0 ;
  wire \index[1]_i_1_n_0 ;
  wire \index[2]_i_1_n_0 ;
  wire \index[3]_i_1_n_0 ;
  wire \index[3]_i_3_n_0 ;
  wire \index_reg_n_0_[0] ;
  wire \index_reg_n_0_[1] ;
  wire \index_reg_n_0_[2] ;
  wire \index_reg_n_0_[3] ;
  wire mosi;
  wire mosi_i_1_n_0;
  wire mosi_i_4_n_0;
  wire mosi_i_5_n_0;
  wire mosi_i_6_n_0;
  wire mosi_i_7_n_0;
  wire mosi_reg_i_2_n_0;
  wire mosi_reg_i_3_n_0;
  wire nextState;
  wire read_en;
  wire read_en_i_1_n_0;
  wire read_en_i_2_n_0;
  wire rst;
  wire sck;
  wire sck_en0;
  wire sck_en_i_1_n_0;
  wire sck_en_reg_n_0;
  wire sck_out;
  wire ss;
  wire ss_i_1_n_0;

  (* FSM_ENCODED_STATES = "st_sample_begin:010,st_transmit_begin:100,st_idle:001" *) 
  FDPE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_currentState_reg[0] 
       (.C(sck),
        .CE(1'b1),
        .D(\FSM_onehot_nextState_reg_n_0_[0] ),
        .PRE(rst),
        .Q(\FSM_onehot_currentState_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "st_sample_begin:010,st_transmit_begin:100,st_idle:001" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_currentState_reg[1] 
       (.C(sck),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_nextState_reg_n_0_[1] ),
        .Q(\FSM_onehot_currentState_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "st_sample_begin:010,st_transmit_begin:100,st_idle:001" *) 
  FDCE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_onehot_currentState_reg[2] 
       (.C(sck),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_nextState_reg_n_0_[2] ),
        .Q(currentState_reg));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_nextState_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nextState_reg[0]_i_1_n_0 ),
        .G(nextState),
        .GE(1'b1),
        .Q(\FSM_onehot_nextState_reg_n_0_[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4F444444)) 
    \FSM_onehot_nextState_reg[0]_i_1 
       (.I0(en),
        .I1(\FSM_onehot_currentState_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[3] ),
        .I3(read_en_i_2_n_0),
        .I4(currentState_reg),
        .O(\FSM_onehot_nextState_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nextState_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nextState_reg[1]_i_1_n_0 ),
        .G(nextState),
        .GE(1'b1),
        .Q(\FSM_onehot_nextState_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_nextState_reg[1]_i_1 
       (.I0(en),
        .I1(\FSM_onehot_currentState_reg_n_0_[0] ),
        .O(\FSM_onehot_nextState_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nextState_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nextState_reg[2]_i_1_n_0 ),
        .G(nextState),
        .GE(1'b1),
        .Q(\FSM_onehot_nextState_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA8)) 
    \FSM_onehot_nextState_reg[2]_i_1 
       (.I0(currentState_reg),
        .I1(\index_reg_n_0_[2] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[0] ),
        .I4(\index_reg_n_0_[3] ),
        .I5(\FSM_onehot_currentState_reg_n_0_[1] ),
        .O(\FSM_onehot_nextState_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_nextState_reg[2]_i_2 
       (.I0(\FSM_onehot_currentState_reg_n_0_[1] ),
        .I1(currentState_reg),
        .I2(\FSM_onehot_currentState_reg_n_0_[0] ),
        .O(nextState));
  LUT2 #(
    .INIT(4'h2)) 
    \index[0]_i_1 
       (.I0(currentState_reg),
        .I1(\index_reg_n_0_[0] ),
        .O(\index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \index[1]_i_1 
       (.I0(\index_reg_n_0_[0] ),
        .I1(\index_reg_n_0_[1] ),
        .I2(currentState_reg),
        .O(\index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \index[2]_i_1 
       (.I0(\index_reg_n_0_[0] ),
        .I1(\index_reg_n_0_[1] ),
        .I2(\index_reg_n_0_[2] ),
        .I3(currentState_reg),
        .O(\index[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \index[3]_i_1 
       (.I0(rst),
        .I1(\FSM_onehot_currentState_reg_n_0_[0] ),
        .O(\index[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \index[3]_i_2 
       (.I0(\FSM_onehot_currentState_reg_n_0_[0] ),
        .I1(currentState_reg),
        .I2(rst),
        .O(sck_en0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFE010000)) 
    \index[3]_i_3 
       (.I0(\index_reg_n_0_[2] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[1] ),
        .I3(\index_reg_n_0_[3] ),
        .I4(currentState_reg),
        .O(\index[3]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \index_reg[0] 
       (.C(sck),
        .CE(sck_en0),
        .D(\index[0]_i_1_n_0 ),
        .Q(\index_reg_n_0_[0] ),
        .S(\index[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \index_reg[1] 
       (.C(sck),
        .CE(sck_en0),
        .D(\index[1]_i_1_n_0 ),
        .Q(\index_reg_n_0_[1] ),
        .S(\index[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \index_reg[2] 
       (.C(sck),
        .CE(sck_en0),
        .D(\index[2]_i_1_n_0 ),
        .Q(\index_reg_n_0_[2] ),
        .S(\index[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    \index_reg[3] 
       (.C(sck),
        .CE(sck_en0),
        .D(\index[3]_i_3_n_0 ),
        .Q(\index_reg_n_0_[3] ),
        .S(\index[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    mosi_i_1
       (.I0(mosi_reg_i_2_n_0),
        .I1(\index_reg_n_0_[3] ),
        .I2(mosi_reg_i_3_n_0),
        .I3(currentState_reg),
        .I4(rst),
        .I5(mosi),
        .O(mosi_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_4
       (.I0(data[11]),
        .I1(data[10]),
        .I2(\index_reg_n_0_[1] ),
        .I3(data[9]),
        .I4(\index_reg_n_0_[0] ),
        .I5(data[8]),
        .O(mosi_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_5
       (.I0(data[15]),
        .I1(data[14]),
        .I2(\index_reg_n_0_[1] ),
        .I3(data[13]),
        .I4(\index_reg_n_0_[0] ),
        .I5(data[12]),
        .O(mosi_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_6
       (.I0(data[3]),
        .I1(data[2]),
        .I2(\index_reg_n_0_[1] ),
        .I3(data[1]),
        .I4(\index_reg_n_0_[0] ),
        .I5(data[0]),
        .O(mosi_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    mosi_i_7
       (.I0(data[7]),
        .I1(data[6]),
        .I2(\index_reg_n_0_[1] ),
        .I3(data[5]),
        .I4(\index_reg_n_0_[0] ),
        .I5(data[4]),
        .O(mosi_i_7_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    mosi_reg
       (.C(sck),
        .CE(1'b1),
        .D(mosi_i_1_n_0),
        .Q(mosi),
        .R(1'b0));
  MUXF7 mosi_reg_i_2
       (.I0(mosi_i_4_n_0),
        .I1(mosi_i_5_n_0),
        .O(mosi_reg_i_2_n_0),
        .S(\index_reg_n_0_[2] ));
  MUXF7 mosi_reg_i_3
       (.I0(mosi_i_6_n_0),
        .I1(mosi_i_7_n_0),
        .O(mosi_reg_i_3_n_0),
        .S(\index_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFFFFF550000EA00)) 
    read_en_i_1
       (.I0(\FSM_onehot_currentState_reg_n_0_[0] ),
        .I1(\index_reg_n_0_[3] ),
        .I2(read_en_i_2_n_0),
        .I3(currentState_reg),
        .I4(rst),
        .I5(read_en),
        .O(read_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    read_en_i_2
       (.I0(\index_reg_n_0_[1] ),
        .I1(\index_reg_n_0_[0] ),
        .I2(\index_reg_n_0_[2] ),
        .O(read_en_i_2_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    read_en_reg
       (.C(sck),
        .CE(1'b1),
        .D(read_en_i_1_n_0),
        .Q(read_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFD0C)) 
    sck_en_i_1
       (.I0(\FSM_onehot_currentState_reg_n_0_[0] ),
        .I1(currentState_reg),
        .I2(rst),
        .I3(sck_en_reg_n_0),
        .O(sck_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    sck_en_reg
       (.C(sck),
        .CE(1'b1),
        .D(sck_en_i_1_n_0),
        .Q(sck_en_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    sck_out_INST_0
       (.I0(sck),
        .I1(sck_en_reg_n_0),
        .O(sck_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB0A)) 
    ss_i_1
       (.I0(\FSM_onehot_currentState_reg_n_0_[0] ),
        .I1(\FSM_onehot_currentState_reg_n_0_[1] ),
        .I2(rst),
        .I3(ss),
        .O(ss_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    ss_reg
       (.C(sck),
        .CE(1'b1),
        .D(ss_i_1_n_0),
        .Q(ss),
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
