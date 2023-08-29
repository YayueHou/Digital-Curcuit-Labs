// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Jun  6 18:05:11 2021
// Host        : houyayuepc running 64-bit Ubuntu 20.04.1 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/houyayue/hodepoint/TextCode/Clock/Clock.sim/sim_1/synth/func/xsim/Clocksm_func_synth.v
// Design      : Num_Clock
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module Num_Clock
   (CLK,
    sw,
    seg,
    an);
  input CLK;
  input sw;
  output [6:0]seg;
  output [3:0]an;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [3:0]an;
  wire \an[0]_i_1_n_0 ;
  wire \an[1]_i_1_n_0 ;
  wire \an[2]_i_1_n_0 ;
  wire \an[3]_i_1_n_0 ;
  wire [3:0]an_OBUF;
  wire [1:0]an_counter;
  wire \an_counter[0]_i_1_n_0 ;
  wire \an_counter[1]_i_1_n_0 ;
  wire \an_counter_reg[1]_i_2_n_0 ;
  wire clk1;
  wire \clk1[0]_i_1_n_0 ;
  wire \clk1_reg_n_0_[0] ;
  wire clk2;
  wire \clk2[0]_i_1_n_0 ;
  wire \clk2_reg_n_0_[0] ;
  wire [0:0]counter;
  wire [0:0]counter2;
  wire \counter2[0]_i_2_n_0 ;
  wire \counter2[0]_i_3_n_0 ;
  wire \counter2[0]_i_4_n_0 ;
  wire \counter2[0]_i_5_n_0 ;
  wire \counter2[0]_i_6_n_0 ;
  wire \counter2[0]_i_7_n_0 ;
  wire \counter2[0]_i_8_n_0 ;
  wire \counter2_reg[12]_i_1_n_0 ;
  wire \counter2_reg[12]_i_1_n_1 ;
  wire \counter2_reg[12]_i_1_n_2 ;
  wire \counter2_reg[12]_i_1_n_3 ;
  wire \counter2_reg[16]_i_1_n_0 ;
  wire \counter2_reg[16]_i_1_n_1 ;
  wire \counter2_reg[16]_i_1_n_2 ;
  wire \counter2_reg[16]_i_1_n_3 ;
  wire \counter2_reg[20]_i_1_n_0 ;
  wire \counter2_reg[20]_i_1_n_1 ;
  wire \counter2_reg[20]_i_1_n_2 ;
  wire \counter2_reg[20]_i_1_n_3 ;
  wire \counter2_reg[24]_i_1_n_0 ;
  wire \counter2_reg[24]_i_1_n_1 ;
  wire \counter2_reg[24]_i_1_n_2 ;
  wire \counter2_reg[24]_i_1_n_3 ;
  wire \counter2_reg[28]_i_2_n_1 ;
  wire \counter2_reg[28]_i_2_n_2 ;
  wire \counter2_reg[28]_i_2_n_3 ;
  wire \counter2_reg[4]_i_1_n_0 ;
  wire \counter2_reg[4]_i_1_n_1 ;
  wire \counter2_reg[4]_i_1_n_2 ;
  wire \counter2_reg[4]_i_1_n_3 ;
  wire \counter2_reg[8]_i_1_n_0 ;
  wire \counter2_reg[8]_i_1_n_1 ;
  wire \counter2_reg[8]_i_1_n_2 ;
  wire \counter2_reg[8]_i_1_n_3 ;
  wire \counter2_reg_n_0_[0] ;
  wire \counter2_reg_n_0_[10] ;
  wire \counter2_reg_n_0_[11] ;
  wire \counter2_reg_n_0_[12] ;
  wire \counter2_reg_n_0_[13] ;
  wire \counter2_reg_n_0_[14] ;
  wire \counter2_reg_n_0_[15] ;
  wire \counter2_reg_n_0_[16] ;
  wire \counter2_reg_n_0_[17] ;
  wire \counter2_reg_n_0_[18] ;
  wire \counter2_reg_n_0_[19] ;
  wire \counter2_reg_n_0_[1] ;
  wire \counter2_reg_n_0_[20] ;
  wire \counter2_reg_n_0_[21] ;
  wire \counter2_reg_n_0_[22] ;
  wire \counter2_reg_n_0_[23] ;
  wire \counter2_reg_n_0_[24] ;
  wire \counter2_reg_n_0_[25] ;
  wire \counter2_reg_n_0_[26] ;
  wire \counter2_reg_n_0_[27] ;
  wire \counter2_reg_n_0_[28] ;
  wire \counter2_reg_n_0_[2] ;
  wire \counter2_reg_n_0_[3] ;
  wire \counter2_reg_n_0_[4] ;
  wire \counter2_reg_n_0_[5] ;
  wire \counter2_reg_n_0_[6] ;
  wire \counter2_reg_n_0_[7] ;
  wire \counter2_reg_n_0_[8] ;
  wire \counter2_reg_n_0_[9] ;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[0]_i_8_n_0 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_1 ;
  wire \counter_reg[20]_i_1_n_2 ;
  wire \counter_reg[20]_i_1_n_3 ;
  wire \counter_reg[20]_i_1_n_4 ;
  wire \counter_reg[20]_i_1_n_5 ;
  wire \counter_reg[20]_i_1_n_6 ;
  wire \counter_reg[20]_i_1_n_7 ;
  wire \counter_reg[24]_i_1_n_0 ;
  wire \counter_reg[24]_i_1_n_1 ;
  wire \counter_reg[24]_i_1_n_2 ;
  wire \counter_reg[24]_i_1_n_3 ;
  wire \counter_reg[24]_i_1_n_4 ;
  wire \counter_reg[24]_i_1_n_5 ;
  wire \counter_reg[24]_i_1_n_6 ;
  wire \counter_reg[24]_i_1_n_7 ;
  wire \counter_reg[28]_i_2_n_1 ;
  wire \counter_reg[28]_i_2_n_2 ;
  wire \counter_reg[28]_i_2_n_3 ;
  wire \counter_reg[28]_i_2_n_4 ;
  wire \counter_reg[28]_i_2_n_5 ;
  wire \counter_reg[28]_i_2_n_6 ;
  wire \counter_reg[28]_i_2_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[21] ;
  wire \counter_reg_n_0_[22] ;
  wire \counter_reg_n_0_[23] ;
  wire \counter_reg_n_0_[24] ;
  wire \counter_reg_n_0_[25] ;
  wire \counter_reg_n_0_[26] ;
  wire \counter_reg_n_0_[27] ;
  wire \counter_reg_n_0_[28] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [28:1]data0;
  wire [3:0]minuteH;
  wire \minuteH[0]_i_1_n_0 ;
  wire \minuteH[0]_i_2_n_0 ;
  wire \minuteH[0]_i_3_n_0 ;
  wire \minuteH[0]_i_4_n_0 ;
  wire \minuteH[1]_i_1_n_0 ;
  wire \minuteH[1]_i_2_n_0 ;
  wire \minuteH[1]_i_3_n_0 ;
  wire \minuteH[1]_i_4_n_0 ;
  wire \minuteH[2]_i_1_n_0 ;
  wire \minuteH[2]_i_2_n_0 ;
  wire \minuteH[3]_i_1_n_0 ;
  wire \minuteH[3]_i_2_n_0 ;
  wire [3:0]minuteL;
  wire \minuteL[1]_i_1_n_0 ;
  wire \minuteL[2]_i_1_n_0 ;
  wire \minuteL[3]_i_1_n_0 ;
  wire \minute[0]_i_1_n_0 ;
  wire \minute[1]_i_1_n_0 ;
  wire \minute[2]_i_1_n_0 ;
  wire \minute[3]_i_1_n_0 ;
  wire \minute[4]_i_1_n_0 ;
  wire \minute[5]_i_1_n_0 ;
  wire \minute[5]_i_2_n_0 ;
  wire \minute[6]_i_1_n_0 ;
  wire \minute[6]_i_2_n_0 ;
  wire \minute[6]_i_3_n_0 ;
  wire \minute[6]_i_4_n_0 ;
  wire \minute_reg_n_0_[0] ;
  wire \minute_reg_n_0_[1] ;
  wire \minute_reg_n_0_[2] ;
  wire \minute_reg_n_0_[3] ;
  wire \minute_reg_n_0_[4] ;
  wire \minute_reg_n_0_[5] ;
  wire \minute_reg_n_0_[6] ;
  wire [6:0]second;
  wire [3:0]secondH;
  wire \secondH[0]_i_1_n_0 ;
  wire \secondH[0]_i_2_n_0 ;
  wire \secondH[0]_i_3_n_0 ;
  wire \secondH[0]_i_4_n_0 ;
  wire \secondH[0]_i_5_n_0 ;
  wire \secondH[1]_i_1_n_0 ;
  wire \secondH[1]_i_2_n_0 ;
  wire \secondH[1]_i_3_n_0 ;
  wire \secondH[1]_i_4_n_0 ;
  wire \secondH[2]_i_1_n_0 ;
  wire \secondH[3]_i_1_n_0 ;
  wire \secondH[3]_i_2_n_0 ;
  wire [3:0]secondL;
  wire \secondL[1]_i_1_n_0 ;
  wire \secondL[2]_i_1_n_0 ;
  wire \secondL[3]_i_1_n_0 ;
  wire \second[2]_i_2_n_0 ;
  wire \second[3]_i_2_n_0 ;
  wire \second[5]_i_2_n_0 ;
  wire \second[6]_i_2_n_0 ;
  wire \second_reg_n_0_[0] ;
  wire \second_reg_n_0_[1] ;
  wire \second_reg_n_0_[2] ;
  wire \second_reg_n_0_[3] ;
  wire \second_reg_n_0_[4] ;
  wire \second_reg_n_0_[5] ;
  wire \second_reg_n_0_[6] ;
  wire [6:0]seg;
  wire [3:0]seg1;
  wire \seg1[0]_i_2_n_0 ;
  wire \seg1[1]_i_2_n_0 ;
  wire \seg1[2]_i_2_n_0 ;
  wire \seg1[3]_i_2_n_0 ;
  wire \seg1_reg_n_0_[0] ;
  wire \seg1_reg_n_0_[1] ;
  wire \seg1_reg_n_0_[2] ;
  wire \seg1_reg_n_0_[3] ;
  wire \seg[0]_i_1_n_0 ;
  wire \seg[1]_i_1_n_0 ;
  wire \seg[2]_i_1_n_0 ;
  wire \seg[3]_i_1_n_0 ;
  wire \seg[4]_i_1_n_0 ;
  wire \seg[5]_i_1_n_0 ;
  wire \seg[6]_i_1_n_0 ;
  wire [6:0]seg_OBUF;
  wire [3:3]\NLW_counter2_reg[28]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[28]_i_2_CO_UNCONNECTED ;

  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an[0]_i_1 
       (.I0(an_counter[1]),
        .I1(an_counter[0]),
        .O(\an[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[1]_i_1 
       (.I0(an_counter[1]),
        .I1(an_counter[0]),
        .O(\an[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[2]_i_1 
       (.I0(an_counter[0]),
        .I1(an_counter[1]),
        .O(\an[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an[3]_i_1 
       (.I0(an_counter[1]),
        .I1(an_counter[0]),
        .O(\an[3]_i_1_n_0 ));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \an_counter[0]_i_1 
       (.I0(an_counter[0]),
        .O(\an_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \an_counter[1]_i_1 
       (.I0(an_counter[0]),
        .I1(an_counter[1]),
        .O(\an_counter[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \an_counter_reg[0] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\an_counter[0]_i_1_n_0 ),
        .Q(an_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an_counter_reg[1] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\an_counter[1]_i_1_n_0 ),
        .Q(an_counter[1]),
        .R(1'b0));
  BUFG \an_counter_reg[1]_i_2 
       (.I(\clk2_reg_n_0_[0] ),
        .O(\an_counter_reg[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[0] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\an[0]_i_1_n_0 ),
        .Q(an_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[1] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\an[1]_i_1_n_0 ),
        .Q(an_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[2] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\an[2]_i_1_n_0 ),
        .Q(an_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \an_reg[3] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\an[3]_i_1_n_0 ),
        .Q(an_OBUF[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \clk1[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter[0]_i_4_n_0 ),
        .I2(\counter[0]_i_3_n_0 ),
        .I3(\counter[0]_i_2_n_0 ),
        .I4(\clk1_reg_n_0_[0] ),
        .O(\clk1[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk1_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk1[0]_i_1_n_0 ),
        .Q(\clk1_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \clk2[0]_i_1 
       (.I0(\counter2_reg_n_0_[0] ),
        .I1(\counter2[0]_i_4_n_0 ),
        .I2(\counter2[0]_i_3_n_0 ),
        .I3(\counter2[0]_i_2_n_0 ),
        .I4(\clk2_reg_n_0_[0] ),
        .O(\clk2[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk2_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\clk2[0]_i_1_n_0 ),
        .Q(\clk2_reg_n_0_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \counter2[0]_i_1 
       (.I0(\counter2[0]_i_2_n_0 ),
        .I1(\counter2[0]_i_3_n_0 ),
        .I2(\counter2[0]_i_4_n_0 ),
        .I3(\counter2_reg_n_0_[0] ),
        .O(counter2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter2[0]_i_2 
       (.I0(\counter2[0]_i_5_n_0 ),
        .I1(\counter2_reg_n_0_[22] ),
        .I2(\counter2_reg_n_0_[21] ),
        .I3(\counter2_reg_n_0_[24] ),
        .I4(\counter2_reg_n_0_[23] ),
        .I5(\counter2[0]_i_6_n_0 ),
        .O(\counter2[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \counter2[0]_i_3 
       (.I0(\counter2_reg_n_0_[7] ),
        .I1(\counter2_reg_n_0_[8] ),
        .I2(\counter2_reg_n_0_[6] ),
        .I3(\counter2_reg_n_0_[5] ),
        .I4(\counter2[0]_i_7_n_0 ),
        .O(\counter2[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \counter2[0]_i_4 
       (.I0(\counter2_reg_n_0_[15] ),
        .I1(\counter2_reg_n_0_[16] ),
        .I2(\counter2_reg_n_0_[13] ),
        .I3(\counter2_reg_n_0_[14] ),
        .I4(\counter2[0]_i_8_n_0 ),
        .O(\counter2[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter2[0]_i_5 
       (.I0(\counter2_reg_n_0_[26] ),
        .I1(\counter2_reg_n_0_[25] ),
        .I2(\counter2_reg_n_0_[28] ),
        .I3(\counter2_reg_n_0_[27] ),
        .O(\counter2[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter2[0]_i_6 
       (.I0(\counter2_reg_n_0_[2] ),
        .I1(\counter2_reg_n_0_[1] ),
        .I2(\counter2_reg_n_0_[3] ),
        .I3(\counter2_reg_n_0_[4] ),
        .O(\counter2[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter2[0]_i_7 
       (.I0(\counter2_reg_n_0_[10] ),
        .I1(\counter2_reg_n_0_[9] ),
        .I2(\counter2_reg_n_0_[12] ),
        .I3(\counter2_reg_n_0_[11] ),
        .O(\counter2[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter2[0]_i_8 
       (.I0(\counter2_reg_n_0_[18] ),
        .I1(\counter2_reg_n_0_[17] ),
        .I2(\counter2_reg_n_0_[20] ),
        .I3(\counter2_reg_n_0_[19] ),
        .O(\counter2[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter2[28]_i_1 
       (.I0(\counter2_reg_n_0_[0] ),
        .I1(\counter2[0]_i_4_n_0 ),
        .I2(\counter2[0]_i_3_n_0 ),
        .I3(\counter2[0]_i_2_n_0 ),
        .O(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter2),
        .Q(\counter2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[10]),
        .Q(\counter2_reg_n_0_[10] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[11]),
        .Q(\counter2_reg_n_0_[11] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[12]),
        .Q(\counter2_reg_n_0_[12] ),
        .R(clk2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter2_reg[12]_i_1 
       (.CI(\counter2_reg[8]_i_1_n_0 ),
        .CO({\counter2_reg[12]_i_1_n_0 ,\counter2_reg[12]_i_1_n_1 ,\counter2_reg[12]_i_1_n_2 ,\counter2_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\counter2_reg_n_0_[12] ,\counter2_reg_n_0_[11] ,\counter2_reg_n_0_[10] ,\counter2_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[13]),
        .Q(\counter2_reg_n_0_[13] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[14]),
        .Q(\counter2_reg_n_0_[14] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[15]),
        .Q(\counter2_reg_n_0_[15] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[16]),
        .Q(\counter2_reg_n_0_[16] ),
        .R(clk2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter2_reg[16]_i_1 
       (.CI(\counter2_reg[12]_i_1_n_0 ),
        .CO({\counter2_reg[16]_i_1_n_0 ,\counter2_reg[16]_i_1_n_1 ,\counter2_reg[16]_i_1_n_2 ,\counter2_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\counter2_reg_n_0_[16] ,\counter2_reg_n_0_[15] ,\counter2_reg_n_0_[14] ,\counter2_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[17]),
        .Q(\counter2_reg_n_0_[17] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[18]),
        .Q(\counter2_reg_n_0_[18] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[19]),
        .Q(\counter2_reg_n_0_[19] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\counter2_reg_n_0_[1] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[20]),
        .Q(\counter2_reg_n_0_[20] ),
        .R(clk2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter2_reg[20]_i_1 
       (.CI(\counter2_reg[16]_i_1_n_0 ),
        .CO({\counter2_reg[20]_i_1_n_0 ,\counter2_reg[20]_i_1_n_1 ,\counter2_reg[20]_i_1_n_2 ,\counter2_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\counter2_reg_n_0_[20] ,\counter2_reg_n_0_[19] ,\counter2_reg_n_0_[18] ,\counter2_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[21]),
        .Q(\counter2_reg_n_0_[21] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[22]),
        .Q(\counter2_reg_n_0_[22] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[23]),
        .Q(\counter2_reg_n_0_[23] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[24]),
        .Q(\counter2_reg_n_0_[24] ),
        .R(clk2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter2_reg[24]_i_1 
       (.CI(\counter2_reg[20]_i_1_n_0 ),
        .CO({\counter2_reg[24]_i_1_n_0 ,\counter2_reg[24]_i_1_n_1 ,\counter2_reg[24]_i_1_n_2 ,\counter2_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\counter2_reg_n_0_[24] ,\counter2_reg_n_0_[23] ,\counter2_reg_n_0_[22] ,\counter2_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[25]),
        .Q(\counter2_reg_n_0_[25] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[26]),
        .Q(\counter2_reg_n_0_[26] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[27]),
        .Q(\counter2_reg_n_0_[27] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[28]),
        .Q(\counter2_reg_n_0_[28] ),
        .R(clk2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter2_reg[28]_i_2 
       (.CI(\counter2_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter2_reg[28]_i_2_CO_UNCONNECTED [3],\counter2_reg[28]_i_2_n_1 ,\counter2_reg[28]_i_2_n_2 ,\counter2_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\counter2_reg_n_0_[28] ,\counter2_reg_n_0_[27] ,\counter2_reg_n_0_[26] ,\counter2_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(\counter2_reg_n_0_[2] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(\counter2_reg_n_0_[3] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(\counter2_reg_n_0_[4] ),
        .R(clk2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter2_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\counter2_reg[4]_i_1_n_0 ,\counter2_reg[4]_i_1_n_1 ,\counter2_reg[4]_i_1_n_2 ,\counter2_reg[4]_i_1_n_3 }),
        .CYINIT(\counter2_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\counter2_reg_n_0_[4] ,\counter2_reg_n_0_[3] ,\counter2_reg_n_0_[2] ,\counter2_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[5]),
        .Q(\counter2_reg_n_0_[5] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[6]),
        .Q(\counter2_reg_n_0_[6] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(\counter2_reg_n_0_[7] ),
        .R(clk2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(\counter2_reg_n_0_[8] ),
        .R(clk2));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter2_reg[8]_i_1 
       (.CI(\counter2_reg[4]_i_1_n_0 ),
        .CO({\counter2_reg[8]_i_1_n_0 ,\counter2_reg[8]_i_1_n_1 ,\counter2_reg[8]_i_1_n_2 ,\counter2_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\counter2_reg_n_0_[8] ,\counter2_reg_n_0_[7] ,\counter2_reg_n_0_[6] ,\counter2_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(\counter2_reg_n_0_[9] ),
        .R(clk2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \counter[0]_i_1 
       (.I0(\counter[0]_i_2_n_0 ),
        .I1(\counter[0]_i_3_n_0 ),
        .I2(\counter[0]_i_4_n_0 ),
        .I3(\counter_reg_n_0_[0] ),
        .O(counter));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \counter[0]_i_2 
       (.I0(\counter[0]_i_5_n_0 ),
        .I1(\counter_reg_n_0_[22] ),
        .I2(\counter_reg_n_0_[21] ),
        .I3(\counter_reg_n_0_[23] ),
        .I4(\counter_reg_n_0_[24] ),
        .I5(\counter[0]_i_6_n_0 ),
        .O(\counter[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \counter[0]_i_3 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter[0]_i_7_n_0 ),
        .O(\counter[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    \counter[0]_i_4 
       (.I0(\counter_reg_n_0_[16] ),
        .I1(\counter_reg_n_0_[15] ),
        .I2(\counter_reg_n_0_[13] ),
        .I3(\counter_reg_n_0_[14] ),
        .I4(\counter[0]_i_8_n_0 ),
        .O(\counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter[0]_i_5 
       (.I0(\counter_reg_n_0_[25] ),
        .I1(\counter_reg_n_0_[26] ),
        .I2(\counter_reg_n_0_[28] ),
        .I3(\counter_reg_n_0_[27] ),
        .O(\counter[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_6 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(\counter[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \counter[0]_i_7 
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[12] ),
        .I3(\counter_reg_n_0_[11] ),
        .O(\counter[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \counter[0]_i_8 
       (.I0(\counter_reg_n_0_[17] ),
        .I1(\counter_reg_n_0_[18] ),
        .I2(\counter_reg_n_0_[20] ),
        .I3(\counter_reg_n_0_[19] ),
        .O(\counter[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[28]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter[0]_i_4_n_0 ),
        .I2(\counter[0]_i_3_n_0 ),
        .I3(\counter[0]_i_2_n_0 ),
        .O(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(counter),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[10] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[11] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[12] ),
        .R(clk1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[13] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[14] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[15] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[16] ),
        .R(clk1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[17] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[18] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[19] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[20]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[20] ),
        .R(clk1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\counter_reg[20]_i_1_n_1 ,\counter_reg[20]_i_1_n_2 ,\counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[20]_i_1_n_4 ,\counter_reg[20]_i_1_n_5 ,\counter_reg[20]_i_1_n_6 ,\counter_reg[20]_i_1_n_7 }),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[21] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[22] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[23] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[24]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[24] ),
        .R(clk1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[24]_i_1 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO({\counter_reg[24]_i_1_n_0 ,\counter_reg[24]_i_1_n_1 ,\counter_reg[24]_i_1_n_2 ,\counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[24]_i_1_n_4 ,\counter_reg[24]_i_1_n_5 ,\counter_reg[24]_i_1_n_6 ,\counter_reg[24]_i_1_n_7 }),
        .S({\counter_reg_n_0_[24] ,\counter_reg_n_0_[23] ,\counter_reg_n_0_[22] ,\counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_2_n_7 ),
        .Q(\counter_reg_n_0_[25] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_2_n_6 ),
        .Q(\counter_reg_n_0_[26] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_2_n_5 ),
        .Q(\counter_reg_n_0_[27] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[28]_i_2_n_4 ),
        .Q(\counter_reg_n_0_[28] ),
        .R(clk1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[28]_i_2 
       (.CI(\counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_counter_reg[28]_i_2_CO_UNCONNECTED [3],\counter_reg[28]_i_2_n_1 ,\counter_reg[28]_i_2_n_2 ,\counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[28]_i_2_n_4 ,\counter_reg[28]_i_2_n_5 ,\counter_reg[28]_i_2_n_6 ,\counter_reg[28]_i_2_n_7 }),
        .S({\counter_reg_n_0_[28] ,\counter_reg_n_0_[27] ,\counter_reg_n_0_[26] ,\counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[4] ),
        .R(clk1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[5] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(\counter_reg_n_0_[6] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(\counter_reg_n_0_[7] ),
        .R(clk1));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(\counter_reg_n_0_[8] ),
        .R(clk1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[9] ),
        .R(clk1));
  LUT6 #(
    .INIT(64'hEAAD4EF8E08D4AA8)) 
    \minuteH[0]_i_1 
       (.I0(\minuteH[0]_i_2_n_0 ),
        .I1(\minuteH[0]_i_3_n_0 ),
        .I2(\minuteH[1]_i_2_n_0 ),
        .I3(\minuteH[2]_i_2_n_0 ),
        .I4(\minuteH[1]_i_3_n_0 ),
        .I5(\minuteH[0]_i_4_n_0 ),
        .O(\minuteH[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h37C3783789789689)) 
    \minuteH[0]_i_2 
       (.I0(\minute_reg_n_0_[5] ),
        .I1(\minute_reg_n_0_[6] ),
        .I2(\minuteH[3]_i_2_n_0 ),
        .I3(minuteL[3]),
        .I4(\minute_reg_n_0_[3] ),
        .I5(\minute_reg_n_0_[4] ),
        .O(\minuteH[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9D59DA9DAADAA3AA)) 
    \minuteH[0]_i_3 
       (.I0(\minute_reg_n_0_[5] ),
        .I1(\minute_reg_n_0_[6] ),
        .I2(\minuteH[3]_i_2_n_0 ),
        .I3(minuteL[3]),
        .I4(\minute_reg_n_0_[3] ),
        .I5(\minute_reg_n_0_[4] ),
        .O(\minuteH[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \minuteH[0]_i_4 
       (.I0(\minute_reg_n_0_[0] ),
        .I1(minuteL[0]),
        .I2(minuteL[1]),
        .I3(\minute_reg_n_0_[1] ),
        .O(\minuteH[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0177FA07FA0017A)) 
    \minuteH[1]_i_1 
       (.I0(\minuteH[1]_i_2_n_0 ),
        .I1(\minuteH[1]_i_3_n_0 ),
        .I2(\minute_reg_n_0_[5] ),
        .I3(\minute_reg_n_0_[6] ),
        .I4(\minute_reg_n_0_[4] ),
        .I5(\minuteH[1]_i_4_n_0 ),
        .O(\minuteH[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \minuteH[1]_i_2 
       (.I0(\minuteH[3]_i_2_n_0 ),
        .I1(minuteL[3]),
        .I2(\minute_reg_n_0_[3] ),
        .O(\minuteH[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD4F52B0A2B0AD4F5)) 
    \minuteH[1]_i_3 
       (.I0(minuteL[1]),
        .I1(\minute_reg_n_0_[0] ),
        .I2(\minute_reg_n_0_[1] ),
        .I3(minuteL[0]),
        .I4(minuteL[2]),
        .I5(\minute_reg_n_0_[2] ),
        .O(\minuteH[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \minuteH[1]_i_4 
       (.I0(\minuteH[3]_i_2_n_0 ),
        .I1(\minute_reg_n_0_[3] ),
        .I2(minuteL[3]),
        .O(\minuteH[1]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \minuteH[2]_i_1 
       (.I0(\minuteH[2]_i_2_n_0 ),
        .O(\minuteH[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD95D9BD9BA9BABBA)) 
    \minuteH[2]_i_2 
       (.I0(\minute_reg_n_0_[5] ),
        .I1(\minute_reg_n_0_[6] ),
        .I2(\minuteH[3]_i_2_n_0 ),
        .I3(minuteL[3]),
        .I4(\minute_reg_n_0_[3] ),
        .I5(\minute_reg_n_0_[4] ),
        .O(\minuteH[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8898989A8A8A889)) 
    \minuteH[3]_i_1 
       (.I0(\minute_reg_n_0_[6] ),
        .I1(\minute_reg_n_0_[5] ),
        .I2(\minute_reg_n_0_[4] ),
        .I3(\minuteH[3]_i_2_n_0 ),
        .I4(\minute_reg_n_0_[3] ),
        .I5(minuteL[3]),
        .O(\minuteH[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD4F50000FFFFD4F5)) 
    \minuteH[3]_i_2 
       (.I0(minuteL[1]),
        .I1(\minute_reg_n_0_[0] ),
        .I2(\minute_reg_n_0_[1] ),
        .I3(minuteL[0]),
        .I4(\minute_reg_n_0_[2] ),
        .I5(minuteL[2]),
        .O(\minuteH[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minuteH_reg[0] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\minuteH[0]_i_1_n_0 ),
        .Q(minuteH[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minuteH_reg[1] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\minuteH[1]_i_1_n_0 ),
        .Q(minuteH[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minuteH_reg[2] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\minuteH[2]_i_1_n_0 ),
        .Q(minuteH[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minuteH_reg[3] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\minuteH[3]_i_1_n_0 ),
        .Q(minuteH[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA59429A54A29524A)) 
    \minuteL[1]_i_1 
       (.I0(\minute_reg_n_0_[1] ),
        .I1(\minute_reg_n_0_[2] ),
        .I2(\minute_reg_n_0_[3] ),
        .I3(\minute_reg_n_0_[6] ),
        .I4(\minute_reg_n_0_[4] ),
        .I5(\minute_reg_n_0_[5] ),
        .O(\minuteL[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC349349292C32C34)) 
    \minuteL[2]_i_1 
       (.I0(\minute_reg_n_0_[5] ),
        .I1(\minute_reg_n_0_[4] ),
        .I2(\minute_reg_n_0_[6] ),
        .I3(\minute_reg_n_0_[3] ),
        .I4(\minute_reg_n_0_[2] ),
        .I5(\minute_reg_n_0_[1] ),
        .O(\minuteL[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1082082424104108)) 
    \minuteL[3]_i_1 
       (.I0(\minute_reg_n_0_[5] ),
        .I1(\minute_reg_n_0_[4] ),
        .I2(\minute_reg_n_0_[6] ),
        .I3(\minute_reg_n_0_[3] ),
        .I4(\minute_reg_n_0_[2] ),
        .I5(\minute_reg_n_0_[1] ),
        .O(\minuteL[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minuteL_reg[0] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\minute_reg_n_0_[0] ),
        .Q(minuteL[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minuteL_reg[1] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\minuteL[1]_i_1_n_0 ),
        .Q(minuteL[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minuteL_reg[2] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\minuteL[2]_i_1_n_0 ),
        .Q(minuteL[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minuteL_reg[3] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\minuteL[3]_i_1_n_0 ),
        .Q(minuteL[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \minute[0]_i_1 
       (.I0(\minute_reg_n_0_[0] ),
        .O(\minute[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \minute[1]_i_1 
       (.I0(\minute_reg_n_0_[0] ),
        .I1(\minute_reg_n_0_[1] ),
        .O(\minute[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h3F40)) 
    \minute[2]_i_1 
       (.I0(\minute[6]_i_3_n_0 ),
        .I1(\minute_reg_n_0_[0] ),
        .I2(\minute_reg_n_0_[1] ),
        .I3(\minute_reg_n_0_[2] ),
        .O(\minute[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h3F7F8080)) 
    \minute[3]_i_1 
       (.I0(\minute_reg_n_0_[2] ),
        .I1(\minute_reg_n_0_[1] ),
        .I2(\minute_reg_n_0_[0] ),
        .I3(\minute[6]_i_3_n_0 ),
        .I4(\minute_reg_n_0_[3] ),
        .O(\minute[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F7FBFFF80800000)) 
    \minute[4]_i_1 
       (.I0(\minute_reg_n_0_[2] ),
        .I1(\minute_reg_n_0_[1] ),
        .I2(\minute_reg_n_0_[0] ),
        .I3(\minute[6]_i_3_n_0 ),
        .I4(\minute_reg_n_0_[3] ),
        .I5(\minute_reg_n_0_[4] ),
        .O(\minute[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2FFF0000C000)) 
    \minute[5]_i_1 
       (.I0(\minute_reg_n_0_[6] ),
        .I1(\minute_reg_n_0_[2] ),
        .I2(\minute_reg_n_0_[0] ),
        .I3(\minute_reg_n_0_[1] ),
        .I4(\minute[5]_i_2_n_0 ),
        .I5(\minute_reg_n_0_[5] ),
        .O(\minute[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \minute[5]_i_2 
       (.I0(\minute_reg_n_0_[4] ),
        .I1(\minute_reg_n_0_[3] ),
        .O(\minute[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \minute[6]_i_1 
       (.I0(\minute_reg_n_0_[2] ),
        .I1(\minute_reg_n_0_[1] ),
        .I2(\minute_reg_n_0_[0] ),
        .I3(\minute[6]_i_3_n_0 ),
        .I4(\second_reg_n_0_[3] ),
        .I5(\second[3]_i_2_n_0 ),
        .O(\minute[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \minute[6]_i_2 
       (.I0(\minute_reg_n_0_[6] ),
        .I1(\minute_reg_n_0_[5] ),
        .I2(\minute[6]_i_4_n_0 ),
        .I3(\minute_reg_n_0_[3] ),
        .I4(\minute_reg_n_0_[4] ),
        .O(\minute[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \minute[6]_i_3 
       (.I0(\minute_reg_n_0_[6] ),
        .I1(\minute_reg_n_0_[5] ),
        .I2(\minute_reg_n_0_[4] ),
        .I3(\minute_reg_n_0_[3] ),
        .O(\minute[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \minute[6]_i_4 
       (.I0(\minute_reg_n_0_[1] ),
        .I1(\minute_reg_n_0_[0] ),
        .I2(\minute_reg_n_0_[2] ),
        .O(\minute[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \minute_reg[0] 
       (.C(\clk1_reg_n_0_[0] ),
        .CE(\minute[6]_i_1_n_0 ),
        .D(\minute[0]_i_1_n_0 ),
        .Q(\minute_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minute_reg[1] 
       (.C(\clk1_reg_n_0_[0] ),
        .CE(\minute[6]_i_1_n_0 ),
        .D(\minute[1]_i_1_n_0 ),
        .Q(\minute_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minute_reg[2] 
       (.C(\clk1_reg_n_0_[0] ),
        .CE(\minute[6]_i_1_n_0 ),
        .D(\minute[2]_i_1_n_0 ),
        .Q(\minute_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minute_reg[3] 
       (.C(\clk1_reg_n_0_[0] ),
        .CE(\minute[6]_i_1_n_0 ),
        .D(\minute[3]_i_1_n_0 ),
        .Q(\minute_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minute_reg[4] 
       (.C(\clk1_reg_n_0_[0] ),
        .CE(\minute[6]_i_1_n_0 ),
        .D(\minute[4]_i_1_n_0 ),
        .Q(\minute_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minute_reg[5] 
       (.C(\clk1_reg_n_0_[0] ),
        .CE(\minute[6]_i_1_n_0 ),
        .D(\minute[5]_i_1_n_0 ),
        .Q(\minute_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \minute_reg[6] 
       (.C(\clk1_reg_n_0_[0] ),
        .CE(\minute[6]_i_1_n_0 ),
        .D(\minute[6]_i_2_n_0 ),
        .Q(\minute_reg_n_0_[6] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5A9E1A86795A581A)) 
    \secondH[0]_i_1 
       (.I0(\secondH[1]_i_2_n_0 ),
        .I1(\secondH[0]_i_2_n_0 ),
        .I2(\secondH[0]_i_3_n_0 ),
        .I3(\secondH[0]_i_4_n_0 ),
        .I4(\secondH[0]_i_5_n_0 ),
        .I5(\secondH[1]_i_3_n_0 ),
        .O(\secondH[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h555555555555A665)) 
    \secondH[0]_i_2 
       (.I0(\second_reg_n_0_[6] ),
        .I1(\second_reg_n_0_[3] ),
        .I2(\secondH[3]_i_2_n_0 ),
        .I3(secondL[3]),
        .I4(\second_reg_n_0_[4] ),
        .I5(\second_reg_n_0_[5] ),
        .O(\secondH[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h5555A665)) 
    \secondH[0]_i_3 
       (.I0(\second_reg_n_0_[5] ),
        .I1(\second_reg_n_0_[3] ),
        .I2(\secondH[3]_i_2_n_0 ),
        .I3(secondL[3]),
        .I4(\second_reg_n_0_[4] ),
        .O(\secondH[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h95A9)) 
    \secondH[0]_i_4 
       (.I0(\second_reg_n_0_[4] ),
        .I1(secondL[3]),
        .I2(\secondH[3]_i_2_n_0 ),
        .I3(\second_reg_n_0_[3] ),
        .O(\secondH[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \secondH[0]_i_5 
       (.I0(\second_reg_n_0_[0] ),
        .I1(secondL[0]),
        .I2(secondL[1]),
        .I3(\second_reg_n_0_[1] ),
        .O(\secondH[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA1077AF07AF0071A)) 
    \secondH[1]_i_1 
       (.I0(\secondH[1]_i_2_n_0 ),
        .I1(\secondH[1]_i_3_n_0 ),
        .I2(\second_reg_n_0_[6] ),
        .I3(\second_reg_n_0_[5] ),
        .I4(\second_reg_n_0_[4] ),
        .I5(\secondH[1]_i_4_n_0 ),
        .O(\secondH[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \secondH[1]_i_2 
       (.I0(\secondH[3]_i_2_n_0 ),
        .I1(secondL[3]),
        .I2(\second_reg_n_0_[3] ),
        .O(\secondH[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8AEF751075108AEF)) 
    \secondH[1]_i_3 
       (.I0(\second_reg_n_0_[1] ),
        .I1(\second_reg_n_0_[0] ),
        .I2(secondL[0]),
        .I3(secondL[1]),
        .I4(secondL[2]),
        .I5(\second_reg_n_0_[2] ),
        .O(\secondH[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h2B)) 
    \secondH[1]_i_4 
       (.I0(\second_reg_n_0_[3] ),
        .I1(\secondH[3]_i_2_n_0 ),
        .I2(secondL[3]),
        .O(\secondH[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0200D4FFBF020094)) 
    \secondH[2]_i_1 
       (.I0(\second_reg_n_0_[3] ),
        .I1(\secondH[3]_i_2_n_0 ),
        .I2(secondL[3]),
        .I3(\second_reg_n_0_[4] ),
        .I4(\second_reg_n_0_[5] ),
        .I5(\second_reg_n_0_[6] ),
        .O(\secondH[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAEEFAAAA00005110)) 
    \secondH[3]_i_1 
       (.I0(\second_reg_n_0_[5] ),
        .I1(\second_reg_n_0_[3] ),
        .I2(\secondH[3]_i_2_n_0 ),
        .I3(secondL[3]),
        .I4(\second_reg_n_0_[4] ),
        .I5(\second_reg_n_0_[6] ),
        .O(\secondH[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h008088A8AAEAEEFE)) 
    \secondH[3]_i_2 
       (.I0(secondL[2]),
        .I1(secondL[1]),
        .I2(secondL[0]),
        .I3(\second_reg_n_0_[0] ),
        .I4(\second_reg_n_0_[1] ),
        .I5(\second_reg_n_0_[2] ),
        .O(\secondH[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \secondH_reg[0] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\secondH[0]_i_1_n_0 ),
        .Q(secondH[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \secondH_reg[1] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\secondH[1]_i_1_n_0 ),
        .Q(secondH[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \secondH_reg[2] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\secondH[2]_i_1_n_0 ),
        .Q(secondH[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \secondH_reg[3] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\secondH[3]_i_1_n_0 ),
        .Q(secondH[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA5944A2929A5524A)) 
    \secondL[1]_i_1 
       (.I0(\second_reg_n_0_[1] ),
        .I1(\second_reg_n_0_[2] ),
        .I2(\second_reg_n_0_[3] ),
        .I3(\second_reg_n_0_[6] ),
        .I4(\second_reg_n_0_[5] ),
        .I5(\second_reg_n_0_[4] ),
        .O(\secondL[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA529529494A54A52)) 
    \secondL[2]_i_1 
       (.I0(\second_reg_n_0_[4] ),
        .I1(\second_reg_n_0_[5] ),
        .I2(\second_reg_n_0_[6] ),
        .I3(\second_reg_n_0_[3] ),
        .I4(\second_reg_n_0_[2] ),
        .I5(\second_reg_n_0_[1] ),
        .O(\secondL[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0821104242088410)) 
    \secondL[3]_i_1 
       (.I0(\second_reg_n_0_[1] ),
        .I1(\second_reg_n_0_[2] ),
        .I2(\second_reg_n_0_[3] ),
        .I3(\second_reg_n_0_[6] ),
        .I4(\second_reg_n_0_[5] ),
        .I5(\second_reg_n_0_[4] ),
        .O(\secondL[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \secondL_reg[0] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\second_reg_n_0_[0] ),
        .Q(secondL[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \secondL_reg[1] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\secondL[1]_i_1_n_0 ),
        .Q(secondL[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \secondL_reg[2] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\secondL[2]_i_1_n_0 ),
        .Q(secondL[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \secondL_reg[3] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\secondL[3]_i_1_n_0 ),
        .Q(secondL[3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \second[0]_i_1 
       (.I0(\second_reg_n_0_[0] ),
        .O(second[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \second[1]_i_1 
       (.I0(\second_reg_n_0_[0] ),
        .I1(\second_reg_n_0_[1] ),
        .O(second[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h07F0F0F0)) 
    \second[2]_i_1 
       (.I0(\second_reg_n_0_[3] ),
        .I1(\second[2]_i_2_n_0 ),
        .I2(\second_reg_n_0_[2] ),
        .I3(\second_reg_n_0_[0] ),
        .I4(\second_reg_n_0_[1] ),
        .O(second[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \second[2]_i_2 
       (.I0(\second_reg_n_0_[6] ),
        .I1(\second_reg_n_0_[5] ),
        .I2(\second_reg_n_0_[4] ),
        .O(\second[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00807F80)) 
    \second[3]_i_1 
       (.I0(\second_reg_n_0_[1] ),
        .I1(\second_reg_n_0_[0] ),
        .I2(\second_reg_n_0_[2] ),
        .I3(\second_reg_n_0_[3] ),
        .I4(\second[3]_i_2_n_0 ),
        .O(second[3]));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \second[3]_i_2 
       (.I0(\second_reg_n_0_[4] ),
        .I1(\second_reg_n_0_[5] ),
        .I2(\second_reg_n_0_[6] ),
        .I3(\second_reg_n_0_[0] ),
        .I4(\second_reg_n_0_[1] ),
        .I5(\second_reg_n_0_[2] ),
        .O(\second[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0DFFFFFFF0000000)) 
    \second[4]_i_1 
       (.I0(\second_reg_n_0_[5] ),
        .I1(\second_reg_n_0_[6] ),
        .I2(\second_reg_n_0_[2] ),
        .I3(\second[5]_i_2_n_0 ),
        .I4(\second_reg_n_0_[3] ),
        .I5(\second_reg_n_0_[4] ),
        .O(second[4]));
  LUT6 #(
    .INIT(64'h7F5F8080FFFF0000)) 
    \second[5]_i_1 
       (.I0(\second_reg_n_0_[3] ),
        .I1(\second_reg_n_0_[2] ),
        .I2(\second[5]_i_2_n_0 ),
        .I3(\second_reg_n_0_[6] ),
        .I4(\second_reg_n_0_[5] ),
        .I5(\second_reg_n_0_[4] ),
        .O(second[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \second[5]_i_2 
       (.I0(\second_reg_n_0_[0] ),
        .I1(\second_reg_n_0_[1] ),
        .O(\second[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \second[6]_i_1 
       (.I0(\second_reg_n_0_[6] ),
        .I1(\second_reg_n_0_[5] ),
        .I2(\second_reg_n_0_[3] ),
        .I3(\second[6]_i_2_n_0 ),
        .I4(\second_reg_n_0_[4] ),
        .O(second[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \second[6]_i_2 
       (.I0(\second_reg_n_0_[1] ),
        .I1(\second_reg_n_0_[0] ),
        .I2(\second_reg_n_0_[2] ),
        .O(\second[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[0] 
       (.C(\clk1_reg_n_0_[0] ),
        .CE(1'b1),
        .D(second[0]),
        .Q(\second_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[1] 
       (.C(\clk1_reg_n_0_[0] ),
        .CE(1'b1),
        .D(second[1]),
        .Q(\second_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[2] 
       (.C(\clk1_reg_n_0_[0] ),
        .CE(1'b1),
        .D(second[2]),
        .Q(\second_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[3] 
       (.C(\clk1_reg_n_0_[0] ),
        .CE(1'b1),
        .D(second[3]),
        .Q(\second_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[4] 
       (.C(\clk1_reg_n_0_[0] ),
        .CE(1'b1),
        .D(second[4]),
        .Q(\second_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[5] 
       (.C(\clk1_reg_n_0_[0] ),
        .CE(1'b1),
        .D(second[5]),
        .Q(\second_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_reg[6] 
       (.C(\clk1_reg_n_0_[0] ),
        .CE(1'b1),
        .D(second[6]),
        .Q(\second_reg_n_0_[6] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \seg1[0]_i_1 
       (.I0(\seg1[0]_i_2_n_0 ),
        .I1(an_OBUF[0]),
        .I2(minuteL[0]),
        .I3(an_OBUF[2]),
        .I4(an_OBUF[1]),
        .I5(an_OBUF[3]),
        .O(seg1[0]));
  LUT6 #(
    .INIT(64'h0FA000A0C000C000)) 
    \seg1[0]_i_2 
       (.I0(secondH[0]),
        .I1(secondL[0]),
        .I2(an_OBUF[1]),
        .I3(an_OBUF[3]),
        .I4(minuteH[0]),
        .I5(an_OBUF[2]),
        .O(\seg1[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \seg1[1]_i_1 
       (.I0(\seg1[1]_i_2_n_0 ),
        .I1(an_OBUF[0]),
        .I2(minuteL[1]),
        .I3(an_OBUF[2]),
        .I4(an_OBUF[1]),
        .I5(an_OBUF[3]),
        .O(seg1[1]));
  LUT6 #(
    .INIT(64'h0FA000A0C000C000)) 
    \seg1[1]_i_2 
       (.I0(secondH[1]),
        .I1(secondL[1]),
        .I2(an_OBUF[1]),
        .I3(an_OBUF[3]),
        .I4(minuteH[1]),
        .I5(an_OBUF[2]),
        .O(\seg1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \seg1[2]_i_1 
       (.I0(\seg1[2]_i_2_n_0 ),
        .I1(an_OBUF[0]),
        .I2(minuteL[2]),
        .I3(an_OBUF[2]),
        .I4(an_OBUF[1]),
        .I5(an_OBUF[3]),
        .O(seg1[2]));
  LUT6 #(
    .INIT(64'h0FA000A0C000C000)) 
    \seg1[2]_i_2 
       (.I0(secondH[2]),
        .I1(secondL[2]),
        .I2(an_OBUF[1]),
        .I3(an_OBUF[3]),
        .I4(minuteH[2]),
        .I5(an_OBUF[2]),
        .O(\seg1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB888888888888888)) 
    \seg1[3]_i_1 
       (.I0(\seg1[3]_i_2_n_0 ),
        .I1(an_OBUF[0]),
        .I2(minuteL[3]),
        .I3(an_OBUF[2]),
        .I4(an_OBUF[1]),
        .I5(an_OBUF[3]),
        .O(seg1[3]));
  LUT6 #(
    .INIT(64'h0FA000A0C000C000)) 
    \seg1[3]_i_2 
       (.I0(secondH[3]),
        .I1(secondL[3]),
        .I2(an_OBUF[1]),
        .I3(an_OBUF[3]),
        .I4(minuteH[3]),
        .I5(an_OBUF[2]),
        .O(\seg1[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \seg1_reg[0] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(seg1[0]),
        .Q(\seg1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg1_reg[1] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(seg1[1]),
        .Q(\seg1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg1_reg[2] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(seg1[2]),
        .Q(\seg1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg1_reg[3] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(seg1[3]),
        .Q(\seg1_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAA9C)) 
    \seg[0]_i_1 
       (.I0(\seg1_reg_n_0_[3] ),
        .I1(\seg1_reg_n_0_[2] ),
        .I2(\seg1_reg_n_0_[0] ),
        .I3(\seg1_reg_n_0_[1] ),
        .O(\seg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hACE8)) 
    \seg[1]_i_1 
       (.I0(\seg1_reg_n_0_[3] ),
        .I1(\seg1_reg_n_0_[2] ),
        .I2(\seg1_reg_n_0_[1] ),
        .I3(\seg1_reg_n_0_[0] ),
        .O(\seg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hAAB0)) 
    \seg[2]_i_1 
       (.I0(\seg1_reg_n_0_[3] ),
        .I1(\seg1_reg_n_0_[0] ),
        .I2(\seg1_reg_n_0_[1] ),
        .I3(\seg1_reg_n_0_[2] ),
        .O(\seg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEABC)) 
    \seg[3]_i_1 
       (.I0(\seg1_reg_n_0_[3] ),
        .I1(\seg1_reg_n_0_[2] ),
        .I2(\seg1_reg_n_0_[0] ),
        .I3(\seg1_reg_n_0_[1] ),
        .O(\seg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFB8)) 
    \seg[4]_i_1 
       (.I0(\seg1_reg_n_0_[3] ),
        .I1(\seg1_reg_n_0_[1] ),
        .I2(\seg1_reg_n_0_[2] ),
        .I3(\seg1_reg_n_0_[0] ),
        .O(\seg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF9B8)) 
    \seg[5]_i_1 
       (.I0(\seg1_reg_n_0_[3] ),
        .I1(\seg1_reg_n_0_[2] ),
        .I2(\seg1_reg_n_0_[1] ),
        .I3(\seg1_reg_n_0_[0] ),
        .O(\seg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAA5)) 
    \seg[6]_i_1 
       (.I0(\seg1_reg_n_0_[3] ),
        .I1(\seg1_reg_n_0_[0] ),
        .I2(\seg1_reg_n_0_[2] ),
        .I3(\seg1_reg_n_0_[1] ),
        .O(\seg[6]_i_1_n_0 ));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[0] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\seg[0]_i_1_n_0 ),
        .Q(seg_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[1] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\seg[1]_i_1_n_0 ),
        .Q(seg_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[2] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\seg[2]_i_1_n_0 ),
        .Q(seg_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[3] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\seg[3]_i_1_n_0 ),
        .Q(seg_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[4] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\seg[4]_i_1_n_0 ),
        .Q(seg_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[5] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\seg[5]_i_1_n_0 ),
        .Q(seg_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \seg_reg[6] 
       (.C(\an_counter_reg[1]_i_2_n_0 ),
        .CE(1'b1),
        .D(\seg[6]_i_1_n_0 ),
        .Q(seg_OBUF[6]),
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
