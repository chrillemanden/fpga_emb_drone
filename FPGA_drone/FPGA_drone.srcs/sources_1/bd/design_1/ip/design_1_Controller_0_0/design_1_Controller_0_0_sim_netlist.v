// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon Dec  7 17:25:25 2020
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
  wire [31:1]\^addr ;
  wire clk;
  wire [15:0]\^dout ;
  wire [15:0]\^dout_SPI ;
  wire en;
  wire en_SPI;
  wire [2:2]\^led ;
  wire read_done;
  wire rst;

  assign addr[31:1] = \^addr [31:1];
  assign addr[0] = \<const0> ;
  assign dout[31] = \<const0> ;
  assign dout[30] = \<const0> ;
  assign dout[29] = \<const0> ;
  assign dout[28] = \<const0> ;
  assign dout[27] = \<const0> ;
  assign dout[26] = \<const0> ;
  assign dout[25] = \<const0> ;
  assign dout[24] = \<const0> ;
  assign dout[23] = \<const0> ;
  assign dout[22] = \<const0> ;
  assign dout[21] = \<const0> ;
  assign dout[20] = \<const0> ;
  assign dout[19] = \<const0> ;
  assign dout[18] = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15:0] = \^dout [15:0];
  assign dout_SPI[15] = \^dout_SPI [15];
  assign dout_SPI[14] = \<const0> ;
  assign dout_SPI[13:8] = \^dout_SPI [13:8];
  assign dout_SPI[7] = \<const0> ;
  assign dout_SPI[6] = \<const0> ;
  assign dout_SPI[5] = \<const0> ;
  assign dout_SPI[4] = \<const0> ;
  assign dout_SPI[3] = \<const0> ;
  assign dout_SPI[2] = \<const0> ;
  assign dout_SPI[1] = \<const0> ;
  assign dout_SPI[0] = \^dout_SPI [0];
  assign led[3] = \^led [2];
  assign led[2] = \^led [2];
  assign led[1] = \^led [2];
  assign led[0] = \^led [2];
  assign we[3] = \<const1> ;
  assign we[2] = \<const1> ;
  assign we[1] = \<const1> ;
  assign we[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  design_1_Controller_0_0_Controller U0
       (.SPI_data(SPI_data),
        .addr(\^addr ),
        .clk(clk),
        .dout(\^dout ),
        .dout_SPI({\^dout_SPI [15],\^dout_SPI [13:8],\^dout_SPI [0]}),
        .en(en),
        .en_SPI(en_SPI),
        .led(\^led ),
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
    addr,
    en_SPI,
    led,
    clk,
    rst,
    SPI_data,
    read_done);
  output en;
  output [7:0]dout_SPI;
  output [15:0]dout;
  output [30:0]addr;
  output en_SPI;
  output [0:0]led;
  input clk;
  input rst;
  input [7:0]SPI_data;
  input read_done;

  wire \FSM_onehot_currentState_reg_n_0_[0] ;
  wire \FSM_onehot_currentState_reg_n_0_[10] ;
  wire \FSM_onehot_currentState_reg_n_0_[1] ;
  wire \FSM_onehot_currentState_reg_n_0_[2] ;
  wire \FSM_onehot_currentState_reg_n_0_[3] ;
  wire \FSM_onehot_currentState_reg_n_0_[4] ;
  wire \FSM_onehot_currentState_reg_n_0_[6] ;
  wire \FSM_onehot_currentState_reg_n_0_[7] ;
  wire \FSM_onehot_currentState_reg_n_0_[8] ;
  wire \FSM_onehot_nextState_reg[10]_i_1_n_0 ;
  wire \FSM_onehot_nextState_reg[10]_i_3_n_0 ;
  wire \FSM_onehot_nextState_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_nextState_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_nextState_reg[3]_i_1_n_0 ;
  wire \FSM_onehot_nextState_reg[3]_i_2_n_0 ;
  wire \FSM_onehot_nextState_reg[4]_i_1_n_0 ;
  wire \FSM_onehot_nextState_reg[5]_i_1_n_0 ;
  wire \FSM_onehot_nextState_reg[6]_i_1_n_0 ;
  wire \FSM_onehot_nextState_reg[7]_i_1_n_0 ;
  wire \FSM_onehot_nextState_reg[8]_i_1_n_0 ;
  wire \FSM_onehot_nextState_reg[9]_i_1_n_0 ;
  wire \FSM_onehot_nextState_reg_n_0_[0] ;
  wire \FSM_onehot_nextState_reg_n_0_[10] ;
  wire \FSM_onehot_nextState_reg_n_0_[1] ;
  wire \FSM_onehot_nextState_reg_n_0_[2] ;
  wire \FSM_onehot_nextState_reg_n_0_[3] ;
  wire \FSM_onehot_nextState_reg_n_0_[4] ;
  wire \FSM_onehot_nextState_reg_n_0_[5] ;
  wire \FSM_onehot_nextState_reg_n_0_[6] ;
  wire \FSM_onehot_nextState_reg_n_0_[7] ;
  wire \FSM_onehot_nextState_reg_n_0_[8] ;
  wire \FSM_onehot_nextState_reg_n_0_[9] ;
  wire IMU_high_flag;
  wire IMU_high_flag_0;
  wire IMU_high_flag_i_1_n_0;
  wire [7:0]SPI_data;
  wire [30:0]addr;
  wire \addr[4]_i_2_n_0 ;
  wire \addr[4]_i_3_n_0 ;
  wire \addr[4]_i_4_n_0 ;
  wire \addr[4]_i_5_n_0 ;
  wire \addr[4]_i_6_n_0 ;
  wire \addr[4]_i_7_n_0 ;
  wire \addr[4]_i_8_n_0 ;
  wire [4:3]addr_1;
  wire clk;
  wire [31:1]data0;
  wire [15:0]dout;
  wire dout0;
  wire [7:0]dout_SPI;
  wire dout_SPI0;
  wire \dout_SPI[10]_i_1_n_0 ;
  wire \dout_SPI[11]_i_1_n_0 ;
  wire \dout_SPI[12]_i_1_n_0 ;
  wire \dout_SPI[15]_i_2_n_0 ;
  wire \dout_SPI[8]_i_1_n_0 ;
  wire \dout_SPI[9]_i_1_n_0 ;
  wire en;
  wire en_SPI;
  wire en_SPI_i_1_n_0;
  wire en_SPI_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire [0:0]led;
  wire \led[3]_i_1_n_0 ;
  wire nextState;
  wire \plusOp_inferred__0/i__carry__0_n_0 ;
  wire \plusOp_inferred__0/i__carry__0_n_1 ;
  wire \plusOp_inferred__0/i__carry__0_n_2 ;
  wire \plusOp_inferred__0/i__carry__0_n_3 ;
  wire \plusOp_inferred__0/i__carry__1_n_0 ;
  wire \plusOp_inferred__0/i__carry__1_n_1 ;
  wire \plusOp_inferred__0/i__carry__1_n_2 ;
  wire \plusOp_inferred__0/i__carry__1_n_3 ;
  wire \plusOp_inferred__0/i__carry__2_n_0 ;
  wire \plusOp_inferred__0/i__carry__2_n_1 ;
  wire \plusOp_inferred__0/i__carry__2_n_2 ;
  wire \plusOp_inferred__0/i__carry__2_n_3 ;
  wire \plusOp_inferred__0/i__carry__3_n_0 ;
  wire \plusOp_inferred__0/i__carry__3_n_1 ;
  wire \plusOp_inferred__0/i__carry__3_n_2 ;
  wire \plusOp_inferred__0/i__carry__3_n_3 ;
  wire \plusOp_inferred__0/i__carry__4_n_0 ;
  wire \plusOp_inferred__0/i__carry__4_n_1 ;
  wire \plusOp_inferred__0/i__carry__4_n_2 ;
  wire \plusOp_inferred__0/i__carry__4_n_3 ;
  wire \plusOp_inferred__0/i__carry__5_n_0 ;
  wire \plusOp_inferred__0/i__carry__5_n_1 ;
  wire \plusOp_inferred__0/i__carry__5_n_2 ;
  wire \plusOp_inferred__0/i__carry__5_n_3 ;
  wire \plusOp_inferred__0/i__carry__6_n_2 ;
  wire \plusOp_inferred__0/i__carry__6_n_3 ;
  wire \plusOp_inferred__0/i__carry_n_0 ;
  wire \plusOp_inferred__0/i__carry_n_1 ;
  wire \plusOp_inferred__0/i__carry_n_2 ;
  wire \plusOp_inferred__0/i__carry_n_3 ;
  wire [31:1]ram_addr;
  wire \ram_addr[31]_i_1_n_0 ;
  wire [30:2]ram_addr_2;
  wire read_done;
  wire register_count;
  wire register_count0;
  wire \register_count[0]_i_1_n_0 ;
  wire \register_count[1]_i_1_n_0 ;
  wire \register_count[2]_i_1_n_0 ;
  wire \register_count[3]_i_2_n_0 ;
  wire \register_count_reg_n_0_[0] ;
  wire \register_count_reg_n_0_[1] ;
  wire \register_count_reg_n_0_[2] ;
  wire \register_count_reg_n_0_[3] ;
  wire rst;
  wire \tmp_data[15]_i_1_n_0 ;
  wire \tmp_data[7]_i_1_n_0 ;
  wire \tmp_data_reg_n_0_[0] ;
  wire \tmp_data_reg_n_0_[10] ;
  wire \tmp_data_reg_n_0_[11] ;
  wire \tmp_data_reg_n_0_[12] ;
  wire \tmp_data_reg_n_0_[13] ;
  wire \tmp_data_reg_n_0_[14] ;
  wire \tmp_data_reg_n_0_[15] ;
  wire \tmp_data_reg_n_0_[1] ;
  wire \tmp_data_reg_n_0_[2] ;
  wire \tmp_data_reg_n_0_[3] ;
  wire \tmp_data_reg_n_0_[4] ;
  wire \tmp_data_reg_n_0_[5] ;
  wire \tmp_data_reg_n_0_[6] ;
  wire \tmp_data_reg_n_0_[7] ;
  wire \tmp_data_reg_n_0_[8] ;
  wire \tmp_data_reg_n_0_[9] ;
  wire [3:2]\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED ;

  (* FSM_ENCODED_STATES = "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_currentState_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_nextState_reg_n_0_[0] ),
        .PRE(rst),
        .Q(\FSM_onehot_currentState_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_currentState_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_nextState_reg_n_0_[10] ),
        .Q(\FSM_onehot_currentState_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_currentState_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_nextState_reg_n_0_[1] ),
        .Q(\FSM_onehot_currentState_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_currentState_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_nextState_reg_n_0_[2] ),
        .Q(\FSM_onehot_currentState_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_currentState_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_nextState_reg_n_0_[3] ),
        .Q(\FSM_onehot_currentState_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_currentState_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_nextState_reg_n_0_[4] ),
        .Q(\FSM_onehot_currentState_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_currentState_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_nextState_reg_n_0_[5] ),
        .Q(IMU_high_flag_0));
  (* FSM_ENCODED_STATES = "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_currentState_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_nextState_reg_n_0_[6] ),
        .Q(\FSM_onehot_currentState_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_currentState_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_nextState_reg_n_0_[7] ),
        .Q(\FSM_onehot_currentState_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_currentState_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_nextState_reg_n_0_[8] ),
        .Q(\FSM_onehot_currentState_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "st_wake_up:00000001000,st_error:10000000000,st_read_who:00000000100,st_incr_counter:01000000000,st_wait_who:00000000010,st_start:00000000001,st_wait_receive:00001000000,st_push_to_bram:00100000000,st_read:00000100000,st_save_tmp:00010000000,st_wake_wait:00000010000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_currentState_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_nextState_reg_n_0_[9] ),
        .Q(register_count));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b1)) 
    \FSM_onehot_nextState_reg[0] 
       (.CLR(1'b0),
        .D(1'b0),
        .G(nextState),
        .GE(1'b1),
        .Q(\FSM_onehot_nextState_reg_n_0_[0] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nextState_reg[10] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nextState_reg[10]_i_1_n_0 ),
        .G(nextState),
        .GE(1'b1),
        .Q(\FSM_onehot_nextState_reg_n_0_[10] ));
  LUT5 #(
    .INIT(32'hFFFFA2AA)) 
    \FSM_onehot_nextState_reg[10]_i_1 
       (.I0(\FSM_onehot_currentState_reg_n_0_[2] ),
        .I1(SPI_data[6]),
        .I2(\FSM_onehot_nextState_reg[10]_i_3_n_0 ),
        .I3(SPI_data[3]),
        .I4(\FSM_onehot_currentState_reg_n_0_[10] ),
        .O(\FSM_onehot_nextState_reg[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_nextState_reg[10]_i_2 
       (.I0(\FSM_onehot_currentState_reg_n_0_[8] ),
        .I1(\FSM_onehot_currentState_reg_n_0_[2] ),
        .I2(en_SPI_i_2_n_0),
        .I3(\FSM_onehot_currentState_reg_n_0_[7] ),
        .I4(register_count),
        .I5(\FSM_onehot_currentState_reg_n_0_[10] ),
        .O(nextState));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \FSM_onehot_nextState_reg[10]_i_3 
       (.I0(SPI_data[1]),
        .I1(SPI_data[2]),
        .I2(SPI_data[0]),
        .I3(SPI_data[4]),
        .I4(SPI_data[5]),
        .I5(SPI_data[7]),
        .O(\FSM_onehot_nextState_reg[10]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nextState_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nextState_reg[1]_i_1_n_0 ),
        .G(nextState),
        .GE(1'b1),
        .Q(\FSM_onehot_nextState_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_nextState_reg[1]_i_1 
       (.I0(read_done),
        .I1(\FSM_onehot_currentState_reg_n_0_[1] ),
        .I2(\FSM_onehot_currentState_reg_n_0_[0] ),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_nextState_reg[2]_i_1 
       (.I0(\FSM_onehot_currentState_reg_n_0_[1] ),
        .I1(read_done),
        .O(\FSM_onehot_nextState_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nextState_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nextState_reg[3]_i_1_n_0 ),
        .G(nextState),
        .GE(1'b1),
        .Q(\FSM_onehot_nextState_reg_n_0_[3] ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_nextState_reg[3]_i_1 
       (.I0(SPI_data[3]),
        .I1(\FSM_onehot_nextState_reg[3]_i_2_n_0 ),
        .I2(SPI_data[6]),
        .I3(\FSM_onehot_currentState_reg_n_0_[2] ),
        .O(\FSM_onehot_nextState_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \FSM_onehot_nextState_reg[3]_i_2 
       (.I0(SPI_data[1]),
        .I1(SPI_data[2]),
        .I2(SPI_data[4]),
        .I3(SPI_data[0]),
        .I4(SPI_data[5]),
        .I5(SPI_data[7]),
        .O(\FSM_onehot_nextState_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nextState_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nextState_reg[4]_i_1_n_0 ),
        .G(nextState),
        .GE(1'b1),
        .Q(\FSM_onehot_nextState_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hDC)) 
    \FSM_onehot_nextState_reg[4]_i_1 
       (.I0(read_done),
        .I1(\FSM_onehot_currentState_reg_n_0_[3] ),
        .I2(\FSM_onehot_currentState_reg_n_0_[4] ),
        .O(\FSM_onehot_nextState_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nextState_reg[5] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nextState_reg[5]_i_1_n_0 ),
        .G(nextState),
        .GE(1'b1),
        .Q(\FSM_onehot_nextState_reg_n_0_[5] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_nextState_reg[5]_i_1 
       (.I0(read_done),
        .I1(\FSM_onehot_currentState_reg_n_0_[4] ),
        .I2(register_count),
        .O(\FSM_onehot_nextState_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nextState_reg[6] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nextState_reg[6]_i_1_n_0 ),
        .G(nextState),
        .GE(1'b1),
        .Q(\FSM_onehot_nextState_reg_n_0_[6] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_nextState_reg[6]_i_1 
       (.I0(read_done),
        .I1(\FSM_onehot_currentState_reg_n_0_[6] ),
        .I2(IMU_high_flag_0),
        .O(\FSM_onehot_nextState_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nextState_reg[7] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nextState_reg[7]_i_1_n_0 ),
        .G(nextState),
        .GE(1'b1),
        .Q(\FSM_onehot_nextState_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_nextState_reg[7]_i_1 
       (.I0(\FSM_onehot_currentState_reg_n_0_[6] ),
        .I1(read_done),
        .O(\FSM_onehot_nextState_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nextState_reg[8] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nextState_reg[8]_i_1_n_0 ),
        .G(nextState),
        .GE(1'b1),
        .Q(\FSM_onehot_nextState_reg_n_0_[8] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_nextState_reg[8]_i_1 
       (.I0(\FSM_onehot_currentState_reg_n_0_[7] ),
        .I1(IMU_high_flag),
        .O(\FSM_onehot_nextState_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_nextState_reg[9] 
       (.CLR(1'b0),
        .D(\FSM_onehot_nextState_reg[9]_i_1_n_0 ),
        .G(nextState),
        .GE(1'b1),
        .Q(\FSM_onehot_nextState_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_nextState_reg[9]_i_1 
       (.I0(\FSM_onehot_currentState_reg_n_0_[7] ),
        .I1(IMU_high_flag),
        .I2(\FSM_onehot_currentState_reg_n_0_[8] ),
        .O(\FSM_onehot_nextState_reg[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    IMU_high_flag_i_1
       (.I0(rst),
        .I1(IMU_high_flag_0),
        .I2(IMU_high_flag),
        .O(IMU_high_flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    IMU_high_flag_reg
       (.C(clk),
        .CE(1'b1),
        .D(IMU_high_flag_i_1_n_0),
        .Q(IMU_high_flag),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \addr[3]_i_1 
       (.I0(ram_addr[4]),
        .I1(\addr[4]_i_2_n_0 ),
        .I2(\addr[4]_i_3_n_0 ),
        .I3(\addr[4]_i_4_n_0 ),
        .I4(ram_addr[3]),
        .O(addr_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFEFF0000)) 
    \addr[4]_i_1 
       (.I0(\addr[4]_i_2_n_0 ),
        .I1(\addr[4]_i_3_n_0 ),
        .I2(\addr[4]_i_4_n_0 ),
        .I3(ram_addr[3]),
        .I4(ram_addr[4]),
        .O(addr_1[4]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \addr[4]_i_2 
       (.I0(ram_addr[14]),
        .I1(ram_addr[15]),
        .I2(ram_addr[12]),
        .I3(ram_addr[13]),
        .I4(\addr[4]_i_5_n_0 ),
        .O(\addr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \addr[4]_i_3 
       (.I0(ram_addr[6]),
        .I1(ram_addr[7]),
        .I2(ram_addr[2]),
        .I3(ram_addr[5]),
        .I4(\addr[4]_i_6_n_0 ),
        .O(\addr[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \addr[4]_i_4 
       (.I0(\addr[4]_i_7_n_0 ),
        .I1(ram_addr[21]),
        .I2(ram_addr[20]),
        .I3(ram_addr[23]),
        .I4(ram_addr[22]),
        .I5(\addr[4]_i_8_n_0 ),
        .O(\addr[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \addr[4]_i_5 
       (.I0(ram_addr[17]),
        .I1(ram_addr[16]),
        .I2(ram_addr[19]),
        .I3(ram_addr[18]),
        .O(\addr[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \addr[4]_i_6 
       (.I0(ram_addr[9]),
        .I1(ram_addr[8]),
        .I2(ram_addr[11]),
        .I3(ram_addr[10]),
        .O(\addr[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \addr[4]_i_7 
       (.I0(ram_addr[25]),
        .I1(ram_addr[24]),
        .I2(ram_addr[27]),
        .I3(ram_addr[26]),
        .O(\addr[4]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \addr[4]_i_8 
       (.I0(ram_addr[31]),
        .I1(ram_addr[30]),
        .I2(ram_addr[28]),
        .I3(ram_addr[29]),
        .I4(ram_addr[1]),
        .O(\addr[4]_i_8_n_0 ));
  FDRE \addr_reg[10] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[10]),
        .Q(addr[9]),
        .R(1'b0));
  FDRE \addr_reg[11] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[11]),
        .Q(addr[10]),
        .R(1'b0));
  FDRE \addr_reg[12] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[12]),
        .Q(addr[11]),
        .R(1'b0));
  FDRE \addr_reg[13] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[13]),
        .Q(addr[12]),
        .R(1'b0));
  FDRE \addr_reg[14] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[14]),
        .Q(addr[13]),
        .R(1'b0));
  FDRE \addr_reg[15] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[15]),
        .Q(addr[14]),
        .R(1'b0));
  FDRE \addr_reg[16] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[16]),
        .Q(addr[15]),
        .R(1'b0));
  FDRE \addr_reg[17] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[17]),
        .Q(addr[16]),
        .R(1'b0));
  FDRE \addr_reg[18] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[18]),
        .Q(addr[17]),
        .R(1'b0));
  FDRE \addr_reg[19] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[19]),
        .Q(addr[18]),
        .R(1'b0));
  FDRE \addr_reg[1] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[1]),
        .Q(addr[0]),
        .R(1'b0));
  FDRE \addr_reg[20] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[20]),
        .Q(addr[19]),
        .R(1'b0));
  FDRE \addr_reg[21] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[21]),
        .Q(addr[20]),
        .R(1'b0));
  FDRE \addr_reg[22] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[22]),
        .Q(addr[21]),
        .R(1'b0));
  FDRE \addr_reg[23] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[23]),
        .Q(addr[22]),
        .R(1'b0));
  FDRE \addr_reg[24] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[24]),
        .Q(addr[23]),
        .R(1'b0));
  FDRE \addr_reg[25] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[25]),
        .Q(addr[24]),
        .R(1'b0));
  FDRE \addr_reg[26] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[26]),
        .Q(addr[25]),
        .R(1'b0));
  FDRE \addr_reg[27] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[27]),
        .Q(addr[26]),
        .R(1'b0));
  FDRE \addr_reg[28] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[28]),
        .Q(addr[27]),
        .R(1'b0));
  FDRE \addr_reg[29] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[29]),
        .Q(addr[28]),
        .R(1'b0));
  FDRE \addr_reg[2] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[2]),
        .Q(addr[1]),
        .R(1'b0));
  FDRE \addr_reg[30] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[30]),
        .Q(addr[29]),
        .R(1'b0));
  FDRE \addr_reg[31] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[31]),
        .Q(addr[30]),
        .R(1'b0));
  FDRE \addr_reg[3] 
       (.C(clk),
        .CE(dout0),
        .D(addr_1[3]),
        .Q(addr[2]),
        .R(1'b0));
  FDRE \addr_reg[4] 
       (.C(clk),
        .CE(dout0),
        .D(addr_1[4]),
        .Q(addr[3]),
        .R(1'b0));
  FDRE \addr_reg[5] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[5]),
        .Q(addr[4]),
        .R(1'b0));
  FDRE \addr_reg[6] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[6]),
        .Q(addr[5]),
        .R(1'b0));
  FDRE \addr_reg[7] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[7]),
        .Q(addr[6]),
        .R(1'b0));
  FDRE \addr_reg[8] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[8]),
        .Q(addr[7]),
        .R(1'b0));
  FDRE \addr_reg[9] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr[9]),
        .Q(addr[8]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \dout[15]_i_1 
       (.I0(\FSM_onehot_currentState_reg_n_0_[8] ),
        .I1(rst),
        .O(dout0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFF8700)) 
    \dout_SPI[10]_i_1 
       (.I0(\register_count_reg_n_0_[1] ),
        .I1(\register_count_reg_n_0_[0] ),
        .I2(\register_count_reg_n_0_[2] ),
        .I3(IMU_high_flag_0),
        .I4(\FSM_onehot_currentState_reg_n_0_[3] ),
        .O(\dout_SPI[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h88888222)) 
    \dout_SPI[11]_i_1 
       (.I0(IMU_high_flag_0),
        .I1(\register_count_reg_n_0_[3] ),
        .I2(\register_count_reg_n_0_[1] ),
        .I3(\register_count_reg_n_0_[0] ),
        .I4(\register_count_reg_n_0_[2] ),
        .O(\dout_SPI[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFEA0000)) 
    \dout_SPI[12]_i_1 
       (.I0(\register_count_reg_n_0_[3] ),
        .I1(\register_count_reg_n_0_[1] ),
        .I2(\register_count_reg_n_0_[0] ),
        .I3(\register_count_reg_n_0_[2] ),
        .I4(IMU_high_flag_0),
        .O(\dout_SPI[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    \dout_SPI[15]_i_1 
       (.I0(\FSM_onehot_currentState_reg_n_0_[3] ),
        .I1(\FSM_onehot_currentState_reg_n_0_[0] ),
        .I2(IMU_high_flag_0),
        .I3(rst),
        .O(dout_SPI0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \dout_SPI[15]_i_2 
       (.I0(\FSM_onehot_currentState_reg_n_0_[0] ),
        .I1(IMU_high_flag_0),
        .O(\dout_SPI[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dout_SPI[8]_i_1 
       (.I0(IMU_high_flag_0),
        .I1(\register_count_reg_n_0_[0] ),
        .O(\dout_SPI[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF60)) 
    \dout_SPI[9]_i_1 
       (.I0(\register_count_reg_n_0_[0] ),
        .I1(\register_count_reg_n_0_[1] ),
        .I2(IMU_high_flag_0),
        .I3(\FSM_onehot_currentState_reg_n_0_[3] ),
        .O(\dout_SPI[9]_i_1_n_0 ));
  FDRE \dout_SPI_reg[0] 
       (.C(clk),
        .CE(dout_SPI0),
        .D(\FSM_onehot_currentState_reg_n_0_[3] ),
        .Q(dout_SPI[0]),
        .R(1'b0));
  FDRE \dout_SPI_reg[10] 
       (.C(clk),
        .CE(dout_SPI0),
        .D(\dout_SPI[10]_i_1_n_0 ),
        .Q(dout_SPI[3]),
        .R(1'b0));
  FDRE \dout_SPI_reg[11] 
       (.C(clk),
        .CE(dout_SPI0),
        .D(\dout_SPI[11]_i_1_n_0 ),
        .Q(dout_SPI[4]),
        .R(1'b0));
  FDRE \dout_SPI_reg[12] 
       (.C(clk),
        .CE(dout_SPI0),
        .D(\dout_SPI[12]_i_1_n_0 ),
        .Q(dout_SPI[5]),
        .R(1'b0));
  FDRE \dout_SPI_reg[13] 
       (.C(clk),
        .CE(dout_SPI0),
        .D(IMU_high_flag_0),
        .Q(dout_SPI[6]),
        .R(1'b0));
  FDRE \dout_SPI_reg[15] 
       (.C(clk),
        .CE(dout_SPI0),
        .D(\dout_SPI[15]_i_2_n_0 ),
        .Q(dout_SPI[7]),
        .R(1'b0));
  FDRE \dout_SPI_reg[8] 
       (.C(clk),
        .CE(dout_SPI0),
        .D(\dout_SPI[8]_i_1_n_0 ),
        .Q(dout_SPI[1]),
        .R(1'b0));
  FDRE \dout_SPI_reg[9] 
       (.C(clk),
        .CE(dout_SPI0),
        .D(\dout_SPI[9]_i_1_n_0 ),
        .Q(dout_SPI[2]),
        .R(1'b0));
  FDRE \dout_reg[0] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[0] ),
        .Q(dout[0]),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[10] ),
        .Q(dout[10]),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[11] ),
        .Q(dout[11]),
        .R(1'b0));
  FDRE \dout_reg[12] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[12] ),
        .Q(dout[12]),
        .R(1'b0));
  FDRE \dout_reg[13] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[13] ),
        .Q(dout[13]),
        .R(1'b0));
  FDRE \dout_reg[14] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[14] ),
        .Q(dout[14]),
        .R(1'b0));
  FDRE \dout_reg[15] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[15] ),
        .Q(dout[15]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[1] ),
        .Q(dout[1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[2] ),
        .Q(dout[2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[3] ),
        .Q(dout[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[4] ),
        .Q(dout[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[5] ),
        .Q(dout[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[6] ),
        .Q(dout[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[7] ),
        .Q(dout[7]),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[8] ),
        .Q(dout[8]),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(clk),
        .CE(dout0),
        .D(\tmp_data_reg_n_0_[9] ),
        .Q(dout[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEFF0000FE00)) 
    en_SPI_i_1
       (.I0(IMU_high_flag_0),
        .I1(\FSM_onehot_currentState_reg_n_0_[0] ),
        .I2(\FSM_onehot_currentState_reg_n_0_[3] ),
        .I3(en_SPI_i_2_n_0),
        .I4(rst),
        .I5(en_SPI),
        .O(en_SPI_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    en_SPI_i_2
       (.I0(\FSM_onehot_currentState_reg_n_0_[3] ),
        .I1(\FSM_onehot_currentState_reg_n_0_[6] ),
        .I2(\FSM_onehot_currentState_reg_n_0_[1] ),
        .I3(\FSM_onehot_currentState_reg_n_0_[0] ),
        .I4(IMU_high_flag_0),
        .I5(\FSM_onehot_currentState_reg_n_0_[4] ),
        .O(en_SPI_i_2_n_0));
  FDRE en_SPI_reg
       (.C(clk),
        .CE(1'b1),
        .D(en_SPI_i_1_n_0),
        .Q(en_SPI),
        .R(1'b0));
  FDCE en_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(1'b1),
        .Q(en));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(ram_addr[2]),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hDC)) 
    \led[3]_i_1 
       (.I0(\FSM_onehot_currentState_reg_n_0_[0] ),
        .I1(\FSM_onehot_currentState_reg_n_0_[10] ),
        .I2(led),
        .O(\led[3]_i_1_n_0 ));
  FDCE \led_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\led[3]_i_1_n_0 ),
        .Q(led));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\plusOp_inferred__0/i__carry_n_0 ,\plusOp_inferred__0/i__carry_n_1 ,\plusOp_inferred__0/i__carry_n_2 ,\plusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,ram_addr[2],1'b0}),
        .O(data0[4:1]),
        .S({ram_addr[4:3],i__carry_i_1_n_0,ram_addr[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__0 
       (.CI(\plusOp_inferred__0/i__carry_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__0_n_0 ,\plusOp_inferred__0/i__carry__0_n_1 ,\plusOp_inferred__0/i__carry__0_n_2 ,\plusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(ram_addr[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__1 
       (.CI(\plusOp_inferred__0/i__carry__0_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__1_n_0 ,\plusOp_inferred__0/i__carry__1_n_1 ,\plusOp_inferred__0/i__carry__1_n_2 ,\plusOp_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(ram_addr[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__2 
       (.CI(\plusOp_inferred__0/i__carry__1_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__2_n_0 ,\plusOp_inferred__0/i__carry__2_n_1 ,\plusOp_inferred__0/i__carry__2_n_2 ,\plusOp_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(ram_addr[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__3 
       (.CI(\plusOp_inferred__0/i__carry__2_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__3_n_0 ,\plusOp_inferred__0/i__carry__3_n_1 ,\plusOp_inferred__0/i__carry__3_n_2 ,\plusOp_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(ram_addr[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__4 
       (.CI(\plusOp_inferred__0/i__carry__3_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__4_n_0 ,\plusOp_inferred__0/i__carry__4_n_1 ,\plusOp_inferred__0/i__carry__4_n_2 ,\plusOp_inferred__0/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(ram_addr[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__5 
       (.CI(\plusOp_inferred__0/i__carry__4_n_0 ),
        .CO({\plusOp_inferred__0/i__carry__5_n_0 ,\plusOp_inferred__0/i__carry__5_n_1 ,\plusOp_inferred__0/i__carry__5_n_2 ,\plusOp_inferred__0/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(ram_addr[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \plusOp_inferred__0/i__carry__6 
       (.CI(\plusOp_inferred__0/i__carry__5_n_0 ),
        .CO({\NLW_plusOp_inferred__0/i__carry__6_CO_UNCONNECTED [3:2],\plusOp_inferred__0/i__carry__6_n_2 ,\plusOp_inferred__0/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_plusOp_inferred__0/i__carry__6_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,ram_addr[31:29]}));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    \ram_addr[2]_i_1 
       (.I0(data0[2]),
        .I1(ram_addr[3]),
        .I2(\addr[4]_i_4_n_0 ),
        .I3(\addr[4]_i_3_n_0 ),
        .I4(\addr[4]_i_2_n_0 ),
        .I5(ram_addr[4]),
        .O(ram_addr_2[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAEAAAAAAAA)) 
    \ram_addr[30]_i_1 
       (.I0(data0[30]),
        .I1(ram_addr[3]),
        .I2(\addr[4]_i_4_n_0 ),
        .I3(\addr[4]_i_3_n_0 ),
        .I4(\addr[4]_i_2_n_0 ),
        .I5(ram_addr[4]),
        .O(ram_addr_2[30]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \ram_addr[31]_i_1 
       (.I0(dout0),
        .I1(ram_addr[3]),
        .I2(\addr[4]_i_4_n_0 ),
        .I3(\addr[4]_i_3_n_0 ),
        .I4(\addr[4]_i_2_n_0 ),
        .I5(ram_addr[4]),
        .O(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[10] 
       (.C(clk),
        .CE(dout0),
        .D(data0[10]),
        .Q(ram_addr[10]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[11] 
       (.C(clk),
        .CE(dout0),
        .D(data0[11]),
        .Q(ram_addr[11]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[12] 
       (.C(clk),
        .CE(dout0),
        .D(data0[12]),
        .Q(ram_addr[12]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[13] 
       (.C(clk),
        .CE(dout0),
        .D(data0[13]),
        .Q(ram_addr[13]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[14] 
       (.C(clk),
        .CE(dout0),
        .D(data0[14]),
        .Q(ram_addr[14]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[15] 
       (.C(clk),
        .CE(dout0),
        .D(data0[15]),
        .Q(ram_addr[15]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[16] 
       (.C(clk),
        .CE(dout0),
        .D(data0[16]),
        .Q(ram_addr[16]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[17] 
       (.C(clk),
        .CE(dout0),
        .D(data0[17]),
        .Q(ram_addr[17]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[18] 
       (.C(clk),
        .CE(dout0),
        .D(data0[18]),
        .Q(ram_addr[18]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[19] 
       (.C(clk),
        .CE(dout0),
        .D(data0[19]),
        .Q(ram_addr[19]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[1] 
       (.C(clk),
        .CE(dout0),
        .D(data0[1]),
        .Q(ram_addr[1]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[20] 
       (.C(clk),
        .CE(dout0),
        .D(data0[20]),
        .Q(ram_addr[20]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[21] 
       (.C(clk),
        .CE(dout0),
        .D(data0[21]),
        .Q(ram_addr[21]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[22] 
       (.C(clk),
        .CE(dout0),
        .D(data0[22]),
        .Q(ram_addr[22]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[23] 
       (.C(clk),
        .CE(dout0),
        .D(data0[23]),
        .Q(ram_addr[23]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[24] 
       (.C(clk),
        .CE(dout0),
        .D(data0[24]),
        .Q(ram_addr[24]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[25] 
       (.C(clk),
        .CE(dout0),
        .D(data0[25]),
        .Q(ram_addr[25]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[26] 
       (.C(clk),
        .CE(dout0),
        .D(data0[26]),
        .Q(ram_addr[26]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[27] 
       (.C(clk),
        .CE(dout0),
        .D(data0[27]),
        .Q(ram_addr[27]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[28] 
       (.C(clk),
        .CE(dout0),
        .D(data0[28]),
        .Q(ram_addr[28]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[29] 
       (.C(clk),
        .CE(dout0),
        .D(data0[29]),
        .Q(ram_addr[29]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[2] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr_2[2]),
        .Q(ram_addr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \ram_addr_reg[30] 
       (.C(clk),
        .CE(dout0),
        .D(ram_addr_2[30]),
        .Q(ram_addr[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[31] 
       (.C(clk),
        .CE(dout0),
        .D(data0[31]),
        .Q(ram_addr[31]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \ram_addr_reg[3] 
       (.C(clk),
        .CE(dout0),
        .D(data0[3]),
        .Q(ram_addr[3]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \ram_addr_reg[4] 
       (.C(clk),
        .CE(dout0),
        .D(data0[4]),
        .Q(ram_addr[4]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[5] 
       (.C(clk),
        .CE(dout0),
        .D(data0[5]),
        .Q(ram_addr[5]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[6] 
       (.C(clk),
        .CE(dout0),
        .D(data0[6]),
        .Q(ram_addr[6]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[7] 
       (.C(clk),
        .CE(dout0),
        .D(data0[7]),
        .Q(ram_addr[7]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[8] 
       (.C(clk),
        .CE(dout0),
        .D(data0[8]),
        .Q(ram_addr[8]),
        .R(\ram_addr[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ram_addr_reg[9] 
       (.C(clk),
        .CE(dout0),
        .D(data0[9]),
        .Q(ram_addr[9]),
        .R(\ram_addr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \register_count[0]_i_1 
       (.I0(\register_count_reg_n_0_[0] ),
        .O(\register_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \register_count[1]_i_1 
       (.I0(\register_count_reg_n_0_[1] ),
        .I1(\register_count_reg_n_0_[0] ),
        .O(\register_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1CCC)) 
    \register_count[2]_i_1 
       (.I0(\register_count_reg_n_0_[3] ),
        .I1(\register_count_reg_n_0_[2] ),
        .I2(\register_count_reg_n_0_[0] ),
        .I3(\register_count_reg_n_0_[1] ),
        .O(\register_count[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \register_count[3]_i_1 
       (.I0(register_count),
        .I1(rst),
        .O(register_count0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6A2A)) 
    \register_count[3]_i_2 
       (.I0(\register_count_reg_n_0_[3] ),
        .I1(\register_count_reg_n_0_[1] ),
        .I2(\register_count_reg_n_0_[0] ),
        .I3(\register_count_reg_n_0_[2] ),
        .O(\register_count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \register_count_reg[0] 
       (.C(clk),
        .CE(register_count0),
        .D(\register_count[0]_i_1_n_0 ),
        .Q(\register_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \register_count_reg[1] 
       (.C(clk),
        .CE(register_count0),
        .D(\register_count[1]_i_1_n_0 ),
        .Q(\register_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \register_count_reg[2] 
       (.C(clk),
        .CE(register_count0),
        .D(\register_count[2]_i_1_n_0 ),
        .Q(\register_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \register_count_reg[3] 
       (.C(clk),
        .CE(register_count0),
        .D(\register_count[3]_i_2_n_0 ),
        .Q(\register_count_reg_n_0_[3] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \tmp_data[15]_i_1 
       (.I0(\FSM_onehot_currentState_reg_n_0_[7] ),
        .I1(IMU_high_flag),
        .I2(rst),
        .O(\tmp_data[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \tmp_data[7]_i_1 
       (.I0(IMU_high_flag),
        .I1(\FSM_onehot_currentState_reg_n_0_[7] ),
        .I2(rst),
        .O(\tmp_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[0] 
       (.C(clk),
        .CE(\tmp_data[7]_i_1_n_0 ),
        .D(SPI_data[0]),
        .Q(\tmp_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[10] 
       (.C(clk),
        .CE(\tmp_data[15]_i_1_n_0 ),
        .D(SPI_data[2]),
        .Q(\tmp_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[11] 
       (.C(clk),
        .CE(\tmp_data[15]_i_1_n_0 ),
        .D(SPI_data[3]),
        .Q(\tmp_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[12] 
       (.C(clk),
        .CE(\tmp_data[15]_i_1_n_0 ),
        .D(SPI_data[4]),
        .Q(\tmp_data_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[13] 
       (.C(clk),
        .CE(\tmp_data[15]_i_1_n_0 ),
        .D(SPI_data[5]),
        .Q(\tmp_data_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[14] 
       (.C(clk),
        .CE(\tmp_data[15]_i_1_n_0 ),
        .D(SPI_data[6]),
        .Q(\tmp_data_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[15] 
       (.C(clk),
        .CE(\tmp_data[15]_i_1_n_0 ),
        .D(SPI_data[7]),
        .Q(\tmp_data_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[1] 
       (.C(clk),
        .CE(\tmp_data[7]_i_1_n_0 ),
        .D(SPI_data[1]),
        .Q(\tmp_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[2] 
       (.C(clk),
        .CE(\tmp_data[7]_i_1_n_0 ),
        .D(SPI_data[2]),
        .Q(\tmp_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[3] 
       (.C(clk),
        .CE(\tmp_data[7]_i_1_n_0 ),
        .D(SPI_data[3]),
        .Q(\tmp_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[4] 
       (.C(clk),
        .CE(\tmp_data[7]_i_1_n_0 ),
        .D(SPI_data[4]),
        .Q(\tmp_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[5] 
       (.C(clk),
        .CE(\tmp_data[7]_i_1_n_0 ),
        .D(SPI_data[5]),
        .Q(\tmp_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[6] 
       (.C(clk),
        .CE(\tmp_data[7]_i_1_n_0 ),
        .D(SPI_data[6]),
        .Q(\tmp_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[7] 
       (.C(clk),
        .CE(\tmp_data[7]_i_1_n_0 ),
        .D(SPI_data[7]),
        .Q(\tmp_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[8] 
       (.C(clk),
        .CE(\tmp_data[15]_i_1_n_0 ),
        .D(SPI_data[0]),
        .Q(\tmp_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tmp_data_reg[9] 
       (.C(clk),
        .CE(\tmp_data[15]_i_1_n_0 ),
        .D(SPI_data[1]),
        .Q(\tmp_data_reg_n_0_[9] ),
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
