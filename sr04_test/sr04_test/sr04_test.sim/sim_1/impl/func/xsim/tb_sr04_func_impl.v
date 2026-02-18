// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Feb 16 15:39:42 2026
// Host        : DESKTOP-SFB4JCN running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Ondevice/sr04_test/sr04_test/sr04_test.sim/sim_1/impl/func/xsim/tb_sr04_func_impl.v
// Design      : top_sr04_fnd
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module btn_debounce
   (edge_reg_reg_0,
    CLK,
    AR,
    D);
  output edge_reg_reg_0;
  input CLK;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire clk_100khz_reg;
  wire clk_100khz_reg_0;
  wire [16:0]counter_reg;
  wire counter_reg0_carry__0_n_0;
  wire counter_reg0_carry__0_n_4;
  wire counter_reg0_carry__0_n_5;
  wire counter_reg0_carry__0_n_6;
  wire counter_reg0_carry__0_n_7;
  wire counter_reg0_carry__1_n_0;
  wire counter_reg0_carry__1_n_4;
  wire counter_reg0_carry__1_n_5;
  wire counter_reg0_carry__1_n_6;
  wire counter_reg0_carry__1_n_7;
  wire counter_reg0_carry__2_n_4;
  wire counter_reg0_carry__2_n_5;
  wire counter_reg0_carry__2_n_6;
  wire counter_reg0_carry__2_n_7;
  wire counter_reg0_carry_n_0;
  wire counter_reg0_carry_n_4;
  wire counter_reg0_carry_n_5;
  wire counter_reg0_carry_n_6;
  wire counter_reg0_carry_n_7;
  wire \counter_reg[16]_i_3_n_0 ;
  wire \counter_reg[16]_i_4_n_0 ;
  wire \counter_reg[16]_i_5_n_0 ;
  wire [16:0]counter_reg_1;
  wire debounce;
  wire edge_reg;
  wire edge_reg_i_2_n_0;
  wire edge_reg_reg_0;
  wire [6:0]q_next;
  wire \q_reg_reg_n_0_[0] ;
  wire [2:0]NLW_counter_reg0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_counter_reg0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_counter_reg0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter_reg0_carry__2_CO_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    clk_100khz_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_100khz_reg_0),
        .Q(clk_100khz_reg));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter_reg0_carry
       (.CI(1'b0),
        .CO({counter_reg0_carry_n_0,NLW_counter_reg0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(counter_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_reg0_carry_n_4,counter_reg0_carry_n_5,counter_reg0_carry_n_6,counter_reg0_carry_n_7}),
        .S(counter_reg[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter_reg0_carry__0
       (.CI(counter_reg0_carry_n_0),
        .CO({counter_reg0_carry__0_n_0,NLW_counter_reg0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_reg0_carry__0_n_4,counter_reg0_carry__0_n_5,counter_reg0_carry__0_n_6,counter_reg0_carry__0_n_7}),
        .S(counter_reg[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter_reg0_carry__1
       (.CI(counter_reg0_carry__0_n_0),
        .CO({counter_reg0_carry__1_n_0,NLW_counter_reg0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_reg0_carry__1_n_4,counter_reg0_carry__1_n_5,counter_reg0_carry__1_n_6,counter_reg0_carry__1_n_7}),
        .S(counter_reg[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter_reg0_carry__2
       (.CI(counter_reg0_carry__1_n_0),
        .CO(NLW_counter_reg0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter_reg0_carry__2_n_4,counter_reg0_carry__2_n_5,counter_reg0_carry__2_n_6,counter_reg0_carry__2_n_7}),
        .S(counter_reg[16:13]));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_reg[0]_i_1 
       (.I0(counter_reg[0]),
        .O(counter_reg_1[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[10]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry__1_n_6),
        .O(counter_reg_1[10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[11]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry__1_n_5),
        .O(counter_reg_1[11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[12]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry__1_n_4),
        .O(counter_reg_1[12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[13]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry__2_n_7),
        .O(counter_reg_1[13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[14]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry__2_n_6),
        .O(counter_reg_1[14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[15]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry__2_n_5),
        .O(counter_reg_1[15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[16]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry__2_n_4),
        .O(counter_reg_1[16]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \counter_reg[16]_i_2 
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(counter_reg[6]),
        .I3(counter_reg[5]),
        .I4(\counter_reg[16]_i_3_n_0 ),
        .I5(\counter_reg[16]_i_4_n_0 ),
        .O(clk_100khz_reg_0));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \counter_reg[16]_i_3 
       (.I0(counter_reg[0]),
        .I1(counter_reg[15]),
        .I2(counter_reg[16]),
        .I3(counter_reg[2]),
        .I4(counter_reg[1]),
        .O(\counter_reg[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    \counter_reg[16]_i_4 
       (.I0(counter_reg[9]),
        .I1(counter_reg[10]),
        .I2(counter_reg[8]),
        .I3(counter_reg[7]),
        .I4(\counter_reg[16]_i_5_n_0 ),
        .O(\counter_reg[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter_reg[16]_i_5 
       (.I0(counter_reg[12]),
        .I1(counter_reg[11]),
        .I2(counter_reg[14]),
        .I3(counter_reg[13]),
        .O(\counter_reg[16]_i_5_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[1]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry_n_7),
        .O(counter_reg_1[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[2]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry_n_6),
        .O(counter_reg_1[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[3]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry_n_5),
        .O(counter_reg_1[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[4]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry_n_4),
        .O(counter_reg_1[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[5]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry__0_n_7),
        .O(counter_reg_1[5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[6]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry__0_n_6),
        .O(counter_reg_1[6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[7]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry__0_n_5),
        .O(counter_reg_1[7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[8]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry__0_n_4),
        .O(counter_reg_1[8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter_reg[9]_i_1 
       (.I0(clk_100khz_reg_0),
        .I1(counter_reg0_carry__1_n_7),
        .O(counter_reg_1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[0]),
        .Q(counter_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[10]),
        .Q(counter_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[11]),
        .Q(counter_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[12]),
        .Q(counter_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[13]),
        .Q(counter_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[14]),
        .Q(counter_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[15]),
        .Q(counter_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[16]),
        .Q(counter_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[1]),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[2]),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[3]),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[4]),
        .Q(counter_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[5]),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[6]),
        .Q(counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[7]),
        .Q(counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[8]),
        .Q(counter_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg_1[9]),
        .Q(counter_reg[9]));
  LUT5 #(
    .INIT(32'h40000000)) 
    edge_reg_i_1
       (.I0(edge_reg_i_2_n_0),
        .I1(\q_reg_reg_n_0_[0] ),
        .I2(q_next[1]),
        .I3(q_next[4]),
        .I4(q_next[6]),
        .O(debounce));
  LUT4 #(
    .INIT(16'h7FFF)) 
    edge_reg_i_2
       (.I0(q_next[3]),
        .I1(q_next[5]),
        .I2(q_next[0]),
        .I3(q_next[2]),
        .O(edge_reg_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    edge_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(debounce),
        .Q(edge_reg));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[0] 
       (.C(clk_100khz_reg),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[0]),
        .Q(\q_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[1] 
       (.C(clk_100khz_reg),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[1]),
        .Q(q_next[0]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[2] 
       (.C(clk_100khz_reg),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[2]),
        .Q(q_next[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[3] 
       (.C(clk_100khz_reg),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[3]),
        .Q(q_next[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[4] 
       (.C(clk_100khz_reg),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[4]),
        .Q(q_next[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[5] 
       (.C(clk_100khz_reg),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[5]),
        .Q(q_next[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[6] 
       (.C(clk_100khz_reg),
        .CE(1'b1),
        .CLR(AR),
        .D(q_next[6]),
        .Q(q_next[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg_reg[7] 
       (.C(clk_100khz_reg),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(q_next[6]));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    trigger_reg_i_4
       (.I0(edge_reg),
        .I1(edge_reg_i_2_n_0),
        .I2(\q_reg_reg_n_0_[0] ),
        .I3(q_next[1]),
        .I4(q_next[4]),
        .I5(q_next[6]),
        .O(edge_reg_reg_0));
endmodule

module clk_div
   (CLK,
    o_1khz_reg_0,
    AR);
  output CLK;
  input o_1khz_reg_0;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [17:0]counter;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire \counter[17]_i_3_n_0 ;
  wire \counter[17]_i_4_n_0 ;
  wire \counter[17]_i_5_n_0 ;
  wire [17:0]counter_0;
  wire o_1khz;
  wire o_1khz_reg_0;
  wire [2:0]NLW_counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_counter0_carry__3_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,NLW_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S(counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,NLW_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S(counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,NLW_counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S(counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,NLW_counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S(counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO(NLW_counter0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__3_O_UNCONNECTED[3:1],counter0_carry__3_n_7}),
        .S({1'b0,1'b0,1'b0,counter[17]}));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[10]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry__1_n_6),
        .O(counter_0[10]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[11]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry__1_n_5),
        .O(counter_0[11]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[12]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry__1_n_4),
        .O(counter_0[12]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[13]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry__2_n_7),
        .O(counter_0[13]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[14]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry__2_n_6),
        .O(counter_0[14]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[15]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry__2_n_5),
        .O(counter_0[15]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[16]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry__2_n_4),
        .O(counter_0[16]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[17]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry__3_n_7),
        .O(counter_0[17]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \counter[17]_i_2 
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[4]),
        .I3(counter[5]),
        .I4(\counter[17]_i_3_n_0 ),
        .I5(\counter[17]_i_4_n_0 ),
        .O(o_1khz));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \counter[17]_i_3 
       (.I0(counter[17]),
        .I1(counter[16]),
        .I2(counter[14]),
        .I3(counter[15]),
        .I4(counter[1]),
        .I5(counter[0]),
        .O(\counter[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \counter[17]_i_4 
       (.I0(counter[8]),
        .I1(counter[9]),
        .I2(counter[6]),
        .I3(counter[7]),
        .I4(\counter[17]_i_5_n_0 ),
        .O(\counter[17]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter[17]_i_5 
       (.I0(counter[10]),
        .I1(counter[11]),
        .I2(counter[13]),
        .I3(counter[12]),
        .O(\counter[17]_i_5_n_0 ));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[1]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry_n_7),
        .O(counter_0[1]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[2]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry_n_6),
        .O(counter_0[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[3]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry_n_5),
        .O(counter_0[3]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[4]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry_n_4),
        .O(counter_0[4]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[5]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry__0_n_7),
        .O(counter_0[5]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[6]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry__0_n_6),
        .O(counter_0[6]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[7]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry__0_n_5),
        .O(counter_0[7]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[8]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry__0_n_4),
        .O(counter_0[8]));
  (* OPT_MODIFIED = "RETARGET" *) 
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \counter[9]_i_1 
       (.I0(o_1khz),
        .I1(counter0_carry__1_n_7),
        .O(counter_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[12]),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[16]),
        .Q(counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[17]),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[9]),
        .Q(counter[9]));
  FDCE #(
    .INIT(1'b0)) 
    o_1khz_reg
       (.C(o_1khz_reg_0),
        .CE(1'b1),
        .CLR(AR),
        .D(o_1khz),
        .Q(CLK));
endmodule

module counter_8
   (fnd_data_OBUF,
    \counter_r_reg[0]_0 ,
    \counter_r_reg[1]_0 ,
    Q,
    \counter_r_reg[2]_0 ,
    fnd_digit_OBUF,
    \fnd_data[1] ,
    digit_100,
    O,
    \fnd_data_OBUF[7]_inst_i_1 ,
    \fnd_data_OBUF[7]_inst_i_3_0 ,
    \fnd_data_OBUF[7]_inst_i_1_0 ,
    \fnd_data_OBUF[7]_inst_i_1_1 ,
    \fnd_data_OBUF[7]_inst_i_1_2 ,
    CLK,
    AR);
  output [4:0]fnd_data_OBUF;
  output \counter_r_reg[0]_0 ;
  output \counter_r_reg[1]_0 ;
  output [1:0]Q;
  output \counter_r_reg[2]_0 ;
  output [3:0]fnd_digit_OBUF;
  input [1:0]\fnd_data[1] ;
  input [0:0]digit_100;
  input [0:0]O;
  input \fnd_data_OBUF[7]_inst_i_1 ;
  input [0:0]\fnd_data_OBUF[7]_inst_i_3_0 ;
  input \fnd_data_OBUF[7]_inst_i_1_0 ;
  input \fnd_data_OBUF[7]_inst_i_1_1 ;
  input \fnd_data_OBUF[7]_inst_i_1_2 ;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]O;
  wire [1:0]Q;
  wire [2:2]counter_r;
  wire \counter_r[0]_i_1_n_0 ;
  wire \counter_r[1]_i_1_n_0 ;
  wire \counter_r[2]_i_1_n_0 ;
  wire \counter_r_reg[0]_0 ;
  wire \counter_r_reg[1]_0 ;
  wire \counter_r_reg[2]_0 ;
  wire [0:0]digit_100;
  wire [1:0]\fnd_data[1] ;
  wire [4:0]fnd_data_OBUF;
  wire \fnd_data_OBUF[7]_inst_i_1 ;
  wire \fnd_data_OBUF[7]_inst_i_10_n_0 ;
  wire \fnd_data_OBUF[7]_inst_i_1_0 ;
  wire \fnd_data_OBUF[7]_inst_i_1_1 ;
  wire \fnd_data_OBUF[7]_inst_i_1_2 ;
  wire [0:0]\fnd_data_OBUF[7]_inst_i_3_0 ;
  wire [3:0]fnd_digit_OBUF;

  LUT1 #(
    .INIT(2'h1)) 
    \counter_r[0]_i_1 
       (.I0(Q[0]),
        .O(\counter_r[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_r[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\counter_r[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \counter_r[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter_r),
        .O(\counter_r[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_r_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_r[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_r_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_r[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_r_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter_r[2]_i_1_n_0 ),
        .Q(counter_r));
  LUT4 #(
    .INIT(16'hCCD2)) 
    \fnd_data_OBUF[0]_inst_i_1 
       (.I0(\counter_r_reg[0]_0 ),
        .I1(\counter_r_reg[1]_0 ),
        .I2(\fnd_data[1] [1]),
        .I3(\fnd_data[1] [0]),
        .O(fnd_data_OBUF[0]));
  LUT4 #(
    .INIT(16'hBE88)) 
    \fnd_data_OBUF[1]_inst_i_1 
       (.I0(\counter_r_reg[1]_0 ),
        .I1(\fnd_data[1] [0]),
        .I2(\counter_r_reg[0]_0 ),
        .I3(\fnd_data[1] [1]),
        .O(fnd_data_OBUF[1]));
  LUT4 #(
    .INIT(16'hCDC0)) 
    \fnd_data_OBUF[2]_inst_i_1 
       (.I0(\counter_r_reg[0]_0 ),
        .I1(\counter_r_reg[1]_0 ),
        .I2(\fnd_data[1] [1]),
        .I3(\fnd_data[1] [0]),
        .O(fnd_data_OBUF[2]));
  LUT4 #(
    .INIT(16'hEFEA)) 
    \fnd_data_OBUF[4]_inst_i_1 
       (.I0(\counter_r_reg[0]_0 ),
        .I1(\counter_r_reg[1]_0 ),
        .I2(\fnd_data[1] [0]),
        .I3(\fnd_data[1] [1]),
        .O(fnd_data_OBUF[3]));
  LUT4 #(
    .INIT(16'hEADC)) 
    \fnd_data_OBUF[5]_inst_i_1 
       (.I0(\counter_r_reg[1]_0 ),
        .I1(\fnd_data[1] [0]),
        .I2(\counter_r_reg[0]_0 ),
        .I3(\fnd_data[1] [1]),
        .O(fnd_data_OBUF[4]));
  LUT4 #(
    .INIT(16'hFFC2)) 
    \fnd_data_OBUF[7]_inst_i_10 
       (.I0(\fnd_data_OBUF[7]_inst_i_3_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(counter_r),
        .O(\fnd_data_OBUF[7]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAEAFFEAEA)) 
    \fnd_data_OBUF[7]_inst_i_3 
       (.I0(\fnd_data_OBUF[7]_inst_i_10_n_0 ),
        .I1(digit_100),
        .I2(Q[0]),
        .I3(O),
        .I4(Q[1]),
        .I5(\fnd_data_OBUF[7]_inst_i_1 ),
        .O(\counter_r_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFF1FFF0FFF0FFF1)) 
    \fnd_data_OBUF[7]_inst_i_5 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\fnd_data_OBUF[7]_inst_i_1_0 ),
        .I3(\counter_r_reg[2]_0 ),
        .I4(\fnd_data_OBUF[7]_inst_i_1_1 ),
        .I5(\fnd_data_OBUF[7]_inst_i_1_2 ),
        .O(\counter_r_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \fnd_data_OBUF[7]_inst_i_9 
       (.I0(counter_r),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\counter_r_reg[2]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fnd_digit_OBUF[0]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(fnd_digit_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \fnd_digit_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(fnd_digit_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \fnd_digit_OBUF[2]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(fnd_digit_OBUF[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \fnd_digit_OBUF[3]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(fnd_digit_OBUF[3]));
endmodule

module digit_splitter
   (CO,
    O,
    \distance_reg_reg[7] ,
    Q,
    S,
    digit_1000_carry__1_0,
    DI,
    digit_1000__19_carry__0_0,
    \fnd_data_OBUF[7]_inst_i_12 ,
    \fnd_data_OBUF[7]_inst_i_12_0 );
  output [0:0]CO;
  output [1:0]O;
  output [0:0]\distance_reg_reg[7] ;
  input [7:0]Q;
  input [2:0]S;
  input [3:0]digit_1000_carry__1_0;
  input [2:0]DI;
  input [3:0]digit_1000__19_carry__0_0;
  input [2:0]\fnd_data_OBUF[7]_inst_i_12 ;
  input [0:0]\fnd_data_OBUF[7]_inst_i_12_0 ;

  wire [0:0]CO;
  wire [2:0]DI;
  wire [1:0]O;
  wire [7:0]Q;
  wire [2:0]S;
  wire [3:0]digit_1000__19_carry__0_0;
  wire digit_1000__19_carry__0_i_4_n_0;
  wire digit_1000__19_carry__0_i_5_n_0;
  wire digit_1000__19_carry_n_0;
  wire digit_1000_carry__0_n_0;
  wire [3:0]digit_1000_carry__1_0;
  wire digit_1000_carry_n_0;
  wire [0:0]\distance_reg_reg[7] ;
  wire [2:0]\fnd_data_OBUF[7]_inst_i_12 ;
  wire [0:0]\fnd_data_OBUF[7]_inst_i_12_0 ;
  wire [2:0]NLW_digit_1000__19_carry_CO_UNCONNECTED;
  wire [3:0]NLW_digit_1000__19_carry_O_UNCONNECTED;
  wire [3:0]NLW_digit_1000__19_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_digit_1000__19_carry__0_O_UNCONNECTED;
  wire [2:0]NLW_digit_1000_carry_CO_UNCONNECTED;
  wire [3:0]NLW_digit_1000_carry_O_UNCONNECTED;
  wire [2:0]NLW_digit_1000_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_digit_1000_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_digit_1000_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_digit_1000_carry__1_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 digit_1000__19_carry
       (.CI(1'b0),
        .CO({digit_1000__19_carry_n_0,NLW_digit_1000__19_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O(NLW_digit_1000__19_carry_O_UNCONNECTED[3:0]),
        .S(digit_1000__19_carry__0_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 digit_1000__19_carry__0
       (.CI(digit_1000__19_carry_n_0),
        .CO({NLW_digit_1000__19_carry__0_CO_UNCONNECTED[3],\distance_reg_reg[7] ,NLW_digit_1000__19_carry__0_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\fnd_data_OBUF[7]_inst_i_12 }),
        .O(NLW_digit_1000__19_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,digit_1000__19_carry__0_i_4_n_0,digit_1000__19_carry__0_i_5_n_0,\fnd_data_OBUF[7]_inst_i_12_0 }));
  LUT5 #(
    .INIT(32'h781887E7)) 
    digit_1000__19_carry__0_i_4
       (.I0(Q[6]),
        .I1(CO),
        .I2(O[1]),
        .I3(O[0]),
        .I4(Q[7]),
        .O(digit_1000__19_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h93C96C36)) 
    digit_1000__19_carry__0_i_5
       (.I0(Q[5]),
        .I1(CO),
        .I2(O[1]),
        .I3(O[0]),
        .I4(Q[6]),
        .O(digit_1000__19_carry__0_i_5_n_0));
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 digit_1000_carry
       (.CI(1'b0),
        .CO({digit_1000_carry_n_0,NLW_digit_1000_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({Q[3:1],1'b0}),
        .O(NLW_digit_1000_carry_O_UNCONNECTED[3:0]),
        .S({S,Q[0]}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 digit_1000_carry__0
       (.CI(digit_1000_carry_n_0),
        .CO({digit_1000_carry__0_n_0,NLW_digit_1000_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(NLW_digit_1000_carry__0_O_UNCONNECTED[3:0]),
        .S(digit_1000_carry__1_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 digit_1000_carry__1
       (.CI(digit_1000_carry__0_n_0),
        .CO({NLW_digit_1000_carry__1_CO_UNCONNECTED[3],CO,NLW_digit_1000_carry__1_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_digit_1000_carry__1_O_UNCONNECTED[3:2],O}),
        .S({1'b0,1'b1,Q[7:6]}));
endmodule

module fnd_controller
   (CO,
    O,
    \distance_reg_reg[7] ,
    fnd_data_OBUF,
    w_mux_sec_msec_out,
    \counter_r_reg[1] ,
    \counter_r_reg[2] ,
    fnd_digit_OBUF,
    CLK,
    AR,
    Q,
    S,
    digit_1000_carry__1,
    DI,
    digit_1000__19_carry__0,
    \fnd_data_OBUF[7]_inst_i_12 ,
    \fnd_data_OBUF[7]_inst_i_12_0 ,
    \fnd_data[1] ,
    digit_100,
    \fnd_data_OBUF[7]_inst_i_1 ,
    \fnd_data_OBUF[7]_inst_i_1_0 ,
    \fnd_data_OBUF[7]_inst_i_1_1 ,
    \fnd_data_OBUF[7]_inst_i_1_2 );
  output [0:0]CO;
  output [1:0]O;
  output [0:0]\distance_reg_reg[7] ;
  output [4:0]fnd_data_OBUF;
  output [1:0]w_mux_sec_msec_out;
  output [1:0]\counter_r_reg[1] ;
  output \counter_r_reg[2] ;
  output [3:0]fnd_digit_OBUF;
  input CLK;
  input [0:0]AR;
  input [8:0]Q;
  input [2:0]S;
  input [3:0]digit_1000_carry__1;
  input [2:0]DI;
  input [3:0]digit_1000__19_carry__0;
  input [2:0]\fnd_data_OBUF[7]_inst_i_12 ;
  input [0:0]\fnd_data_OBUF[7]_inst_i_12_0 ;
  input [1:0]\fnd_data[1] ;
  input [0:0]digit_100;
  input \fnd_data_OBUF[7]_inst_i_1 ;
  input \fnd_data_OBUF[7]_inst_i_1_0 ;
  input \fnd_data_OBUF[7]_inst_i_1_1 ;
  input \fnd_data_OBUF[7]_inst_i_1_2 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [2:0]DI;
  wire [1:0]O;
  wire [8:0]Q;
  wire [2:0]S;
  wire [1:0]\counter_r_reg[1] ;
  wire \counter_r_reg[2] ;
  wire [0:0]digit_100;
  wire [3:0]digit_1000__19_carry__0;
  wire [3:0]digit_1000_carry__1;
  wire [0:0]\distance_reg_reg[7] ;
  wire [1:0]\fnd_data[1] ;
  wire [4:0]fnd_data_OBUF;
  wire \fnd_data_OBUF[7]_inst_i_1 ;
  wire [2:0]\fnd_data_OBUF[7]_inst_i_12 ;
  wire [0:0]\fnd_data_OBUF[7]_inst_i_12_0 ;
  wire \fnd_data_OBUF[7]_inst_i_1_0 ;
  wire \fnd_data_OBUF[7]_inst_i_1_1 ;
  wire \fnd_data_OBUF[7]_inst_i_1_2 ;
  wire [3:0]fnd_digit_OBUF;
  wire o_1khz;
  wire [1:0]w_mux_sec_msec_out;

  clk_div U_CLK_DIV
       (.AR(AR),
        .CLK(o_1khz),
        .o_1khz_reg_0(CLK));
  counter_8 U_COUNTER_8
       (.AR(AR),
        .CLK(o_1khz),
        .O(O[0]),
        .Q(\counter_r_reg[1] ),
        .\counter_r_reg[0]_0 (w_mux_sec_msec_out[0]),
        .\counter_r_reg[1]_0 (w_mux_sec_msec_out[1]),
        .\counter_r_reg[2]_0 (\counter_r_reg[2] ),
        .digit_100(digit_100),
        .\fnd_data[1] (\fnd_data[1] ),
        .fnd_data_OBUF(fnd_data_OBUF),
        .\fnd_data_OBUF[7]_inst_i_1 (\fnd_data_OBUF[7]_inst_i_1 ),
        .\fnd_data_OBUF[7]_inst_i_1_0 (\fnd_data_OBUF[7]_inst_i_1_0 ),
        .\fnd_data_OBUF[7]_inst_i_1_1 (\fnd_data_OBUF[7]_inst_i_1_1 ),
        .\fnd_data_OBUF[7]_inst_i_1_2 (\fnd_data_OBUF[7]_inst_i_1_2 ),
        .\fnd_data_OBUF[7]_inst_i_3_0 (Q[0]),
        .fnd_digit_OBUF(fnd_digit_OBUF));
  digit_splitter U_DIST_DS
       (.CO(CO),
        .DI(DI),
        .O(O),
        .Q(Q[8:1]),
        .S(S),
        .digit_1000__19_carry__0_0(digit_1000__19_carry__0),
        .digit_1000_carry__1_0(digit_1000_carry__1),
        .\distance_reg_reg[7] (\distance_reg_reg[7] ),
        .\fnd_data_OBUF[7]_inst_i_12 (\fnd_data_OBUF[7]_inst_i_12 ),
        .\fnd_data_OBUF[7]_inst_i_12_0 (\fnd_data_OBUF[7]_inst_i_12_0 ));
endmodule

module sr04_controller
   (trigger_OBUF,
    DI,
    Q,
    \distance_reg_reg[7]_0 ,
    fnd_data_OBUF,
    \counter_r_reg[1] ,
    \distance_reg_reg[8]_0 ,
    digit_100,
    \counter_r_reg[0] ,
    \distance_reg_reg[2]_0 ,
    \distance_reg_reg[1]_0 ,
    S,
    \distance_reg_reg[8]_1 ,
    \distance_reg_reg[4]_0 ,
    \distance_reg_reg[5]_0 ,
    echo_IBUF,
    CLK,
    AR,
    trigger_reg_reg_0,
    w_tick_1u,
    O,
    CO,
    w_mux_sec_msec_out,
    \fnd_data_OBUF[7]_inst_i_4_0 ,
    \fnd_data_OBUF[2]_inst_i_1 ,
    \fnd_data_OBUF[7]_inst_i_3 ,
    lopt,
    lopt_1);
  output trigger_OBUF;
  output [2:0]DI;
  output [8:0]Q;
  output [2:0]\distance_reg_reg[7]_0 ;
  output [2:0]fnd_data_OBUF;
  output [1:0]\counter_r_reg[1] ;
  output \distance_reg_reg[8]_0 ;
  output [0:0]digit_100;
  output \counter_r_reg[0] ;
  output \distance_reg_reg[2]_0 ;
  output \distance_reg_reg[1]_0 ;
  output [2:0]S;
  output [3:0]\distance_reg_reg[8]_1 ;
  output [3:0]\distance_reg_reg[4]_0 ;
  output [0:0]\distance_reg_reg[5]_0 ;
  input echo_IBUF;
  input CLK;
  input [0:0]AR;
  input trigger_reg_reg_0;
  input w_tick_1u;
  input [1:0]O;
  input [0:0]CO;
  input [1:0]w_mux_sec_msec_out;
  input [1:0]\fnd_data_OBUF[7]_inst_i_4_0 ;
  input \fnd_data_OBUF[2]_inst_i_1 ;
  input [0:0]\fnd_data_OBUF[7]_inst_i_3 ;
  output lopt;
  output lopt_1;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [2:0]DI;
  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire [1:0]O;
  wire [8:0]Q;
  wire [2:0]S;
  wire \counter_r_reg[0] ;
  wire [1:0]\counter_r_reg[1] ;
  wire [1:0]current_state;
  wire [0:0]digit_100;
  wire [6:0]distance_cnt_next;
  wire [8:0]distance_cnt_reg;
  wire \distance_cnt_reg[1]_i_1_n_0 ;
  wire \distance_cnt_reg[4]_i_1_n_0 ;
  wire \distance_cnt_reg[7]_i_1_n_0 ;
  wire \distance_cnt_reg[7]_i_2_n_0 ;
  wire \distance_cnt_reg[8]_i_1_n_0 ;
  wire \distance_cnt_reg[8]_i_2_n_0 ;
  wire \distance_cnt_reg[8]_i_3_n_0 ;
  wire \distance_cnt_reg[8]_i_4_n_0 ;
  wire \distance_cnt_reg[8]_i_5_n_0 ;
  wire distance_next;
  wire \distance_reg[0]_i_1_n_0 ;
  wire \distance_reg[1]_i_1_n_0 ;
  wire \distance_reg[2]_i_1_n_0 ;
  wire \distance_reg[3]_i_1_n_0 ;
  wire \distance_reg[4]_i_1_n_0 ;
  wire \distance_reg[5]_i_1_n_0 ;
  wire \distance_reg[6]_i_1_n_0 ;
  wire \distance_reg[7]_i_1_n_0 ;
  wire \distance_reg[8]_i_2_n_0 ;
  wire \distance_reg_reg[1]_0 ;
  wire \distance_reg_reg[2]_0 ;
  wire [3:0]\distance_reg_reg[4]_0 ;
  wire [0:0]\distance_reg_reg[5]_0 ;
  wire [2:0]\distance_reg_reg[7]_0 ;
  wire \distance_reg_reg[8]_0 ;
  wire [3:0]\distance_reg_reg[8]_1 ;
  wire echo_IBUF;
  wire [5:0]echo_cnt_next;
  wire [5:0]echo_cnt_reg;
  wire \echo_cnt_reg[4]_i_2_n_0 ;
  wire \echo_cnt_reg[5]_i_1_n_0 ;
  wire \echo_cnt_reg[5]_i_3_n_0 ;
  wire echo_s1;
  wire echo_s2;
  wire [2:0]fnd_data_OBUF;
  wire \fnd_data_OBUF[2]_inst_i_1 ;
  wire \fnd_data_OBUF[7]_inst_i_13_n_0 ;
  wire \fnd_data_OBUF[7]_inst_i_14_n_0 ;
  wire \fnd_data_OBUF[7]_inst_i_15_n_0 ;
  wire \fnd_data_OBUF[7]_inst_i_19_n_0 ;
  wire \fnd_data_OBUF[7]_inst_i_20_n_0 ;
  wire \fnd_data_OBUF[7]_inst_i_21_n_0 ;
  wire \fnd_data_OBUF[7]_inst_i_22_n_0 ;
  wire \fnd_data_OBUF[7]_inst_i_23_n_0 ;
  wire \fnd_data_OBUF[7]_inst_i_24_n_0 ;
  wire \fnd_data_OBUF[7]_inst_i_25_n_0 ;
  wire [0:0]\fnd_data_OBUF[7]_inst_i_3 ;
  wire [1:0]\fnd_data_OBUF[7]_inst_i_4_0 ;
  wire \fnd_data_OBUF[7]_inst_i_6_n_0 ;
  wire \fnd_data_OBUF[7]_inst_i_7_n_0 ;
  wire \fnd_data_OBUF[7]_inst_i_8_n_0 ;
  wire trigger_OBUF;
  wire trigger_reg_i_1_n_0;
  wire trigger_reg_i_2_n_0;
  wire trigger_reg_i_3_n_0;
  wire trigger_reg_reg_0;
  wire trigger_reg_reg_lopt_replica_1;
  wire [1:0]w_mux_sec_msec_out;
  wire w_tick_1u;
  wire [3:0]wait_cnt_next;
  wire [3:0]wait_cnt_reg;
  wire \wait_cnt_reg[3]_i_1_n_0 ;

  assign lopt = trigger_reg_reg_lopt_replica_1;
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hCFD0)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[1]),
        .I1(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I3(current_state[0]),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hCFE0)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I2(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I3(current_state[1]),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0C0C040C0C0C0C0)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(current_state[0]),
        .I1(echo_s2),
        .I2(current_state[1]),
        .I3(\distance_cnt_reg[8]_i_4_n_0 ),
        .I4(\distance_cnt_reg[8]_i_3_n_0 ),
        .I5(w_tick_1u),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEBAAAFFFFBAAA)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(distance_next),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(echo_s2),
        .I4(trigger_reg_i_1_n_0),
        .I5(trigger_reg_reg_0),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "START:01,WAIT:10,IDLE:00,DISTANCE:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "START:01,WAIT:10,IDLE:00,DISTANCE:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(current_state[1]));
  LUT4 #(
    .INIT(16'h00B4)) 
    digit_1000__19_carry__0_i_1
       (.I0(O[0]),
        .I1(O[1]),
        .I2(CO),
        .I3(Q[7]),
        .O(\distance_reg_reg[7]_0 [2]));
  LUT3 #(
    .INIT(8'h6F)) 
    digit_1000__19_carry__0_i_2
       (.I0(O[0]),
        .I1(O[1]),
        .I2(Q[6]),
        .O(\distance_reg_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'hB)) 
    digit_1000__19_carry__0_i_3
       (.I0(O[0]),
        .I1(Q[5]),
        .O(\distance_reg_reg[7]_0 [0]));
  LUT4 #(
    .INIT(16'h3C69)) 
    digit_1000__19_carry__0_i_6
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(O[1]),
        .I3(O[0]),
        .O(\distance_reg_reg[5]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    digit_1000__19_carry_i_1
       (.I0(CO),
        .I1(Q[4]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h2)) 
    digit_1000__19_carry_i_2
       (.I0(O[1]),
        .I1(Q[3]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'hB)) 
    digit_1000__19_carry_i_3
       (.I0(O[0]),
        .I1(Q[2]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h4BB4)) 
    digit_1000__19_carry_i_4
       (.I0(Q[4]),
        .I1(CO),
        .I2(O[0]),
        .I3(Q[5]),
        .O(\distance_reg_reg[4]_0 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    digit_1000__19_carry_i_5
       (.I0(Q[3]),
        .I1(O[1]),
        .I2(CO),
        .I3(Q[4]),
        .O(\distance_reg_reg[4]_0 [2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    digit_1000__19_carry_i_6
       (.I0(Q[2]),
        .I1(O[0]),
        .I2(O[1]),
        .I3(Q[3]),
        .O(\distance_reg_reg[4]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    digit_1000__19_carry_i_7
       (.I0(Q[2]),
        .I1(O[0]),
        .O(\distance_reg_reg[4]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    digit_1000_carry__0_i_1
       (.I0(Q[8]),
        .I1(Q[6]),
        .O(\distance_reg_reg[8]_1 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    digit_1000_carry__0_i_2
       (.I0(Q[7]),
        .I1(Q[5]),
        .O(\distance_reg_reg[8]_1 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    digit_1000_carry__0_i_3
       (.I0(Q[6]),
        .I1(Q[4]),
        .O(\distance_reg_reg[8]_1 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    digit_1000_carry__0_i_4
       (.I0(Q[5]),
        .I1(Q[3]),
        .O(\distance_reg_reg[8]_1 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    digit_1000_carry_i_1
       (.I0(Q[4]),
        .I1(Q[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    digit_1000_carry_i_2
       (.I0(Q[3]),
        .I1(Q[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    digit_1000_carry_i_3
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \distance_cnt_reg[0]_i_1 
       (.I0(current_state[1]),
        .I1(distance_cnt_reg[0]),
        .O(distance_cnt_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \distance_cnt_reg[1]_i_1 
       (.I0(distance_cnt_reg[1]),
        .I1(distance_cnt_reg[0]),
        .I2(current_state[1]),
        .O(\distance_cnt_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \distance_cnt_reg[2]_i_1 
       (.I0(current_state[1]),
        .I1(distance_cnt_reg[0]),
        .I2(distance_cnt_reg[1]),
        .I3(distance_cnt_reg[2]),
        .O(distance_cnt_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \distance_cnt_reg[3]_i_1 
       (.I0(current_state[1]),
        .I1(distance_cnt_reg[1]),
        .I2(distance_cnt_reg[0]),
        .I3(distance_cnt_reg[2]),
        .I4(distance_cnt_reg[3]),
        .O(distance_cnt_next[3]));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \distance_cnt_reg[4]_i_1 
       (.I0(distance_cnt_reg[1]),
        .I1(distance_cnt_reg[0]),
        .I2(distance_cnt_reg[3]),
        .I3(distance_cnt_reg[2]),
        .I4(distance_cnt_reg[4]),
        .I5(current_state[1]),
        .O(\distance_cnt_reg[4]_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \distance_cnt_reg[5]_i_1 
       (.I0(current_state[1]),
        .I1(distance_cnt_reg[4]),
        .I2(\distance_cnt_reg[7]_i_2_n_0 ),
        .I3(distance_cnt_reg[5]),
        .O(distance_cnt_next[5]));
  (* \PinAttr:I3:HOLD_DETOUR  = "193" *) 
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \distance_cnt_reg[6]_i_1 
       (.I0(current_state[1]),
        .I1(\distance_cnt_reg[7]_i_2_n_0 ),
        .I2(distance_cnt_reg[4]),
        .I3(distance_cnt_reg[5]),
        .I4(distance_cnt_reg[6]),
        .O(distance_cnt_next[6]));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \distance_cnt_reg[7]_i_1 
       (.I0(distance_cnt_reg[6]),
        .I1(distance_cnt_reg[5]),
        .I2(distance_cnt_reg[4]),
        .I3(\distance_cnt_reg[7]_i_2_n_0 ),
        .I4(distance_cnt_reg[7]),
        .I5(current_state[1]),
        .O(\distance_cnt_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \distance_cnt_reg[7]_i_2 
       (.I0(distance_cnt_reg[1]),
        .I1(distance_cnt_reg[0]),
        .I2(distance_cnt_reg[3]),
        .I3(distance_cnt_reg[2]),
        .O(\distance_cnt_reg[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h400F000F)) 
    \distance_cnt_reg[8]_i_1 
       (.I0(\distance_cnt_reg[8]_i_3_n_0 ),
        .I1(w_tick_1u),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(\distance_cnt_reg[8]_i_4_n_0 ),
        .O(\distance_cnt_reg[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hDF200000)) 
    \distance_cnt_reg[8]_i_2 
       (.I0(distance_cnt_reg[7]),
        .I1(\distance_cnt_reg[8]_i_5_n_0 ),
        .I2(distance_cnt_reg[6]),
        .I3(distance_cnt_reg[8]),
        .I4(current_state[1]),
        .O(\distance_cnt_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \distance_cnt_reg[8]_i_3 
       (.I0(echo_cnt_reg[4]),
        .I1(echo_cnt_reg[5]),
        .I2(echo_cnt_reg[1]),
        .I3(echo_cnt_reg[2]),
        .I4(echo_cnt_reg[3]),
        .I5(echo_cnt_reg[0]),
        .O(\distance_cnt_reg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \distance_cnt_reg[8]_i_4 
       (.I0(distance_cnt_reg[6]),
        .I1(distance_cnt_reg[8]),
        .I2(distance_cnt_reg[5]),
        .I3(distance_cnt_reg[4]),
        .I4(distance_cnt_reg[7]),
        .I5(\distance_cnt_reg[7]_i_2_n_0 ),
        .O(\distance_cnt_reg[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \distance_cnt_reg[8]_i_5 
       (.I0(distance_cnt_reg[1]),
        .I1(distance_cnt_reg[0]),
        .I2(distance_cnt_reg[3]),
        .I3(distance_cnt_reg[2]),
        .I4(distance_cnt_reg[4]),
        .I5(distance_cnt_reg[5]),
        .O(\distance_cnt_reg[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \distance_cnt_reg_reg[0] 
       (.C(CLK),
        .CE(\distance_cnt_reg[8]_i_1_n_0 ),
        .CLR(AR),
        .D(distance_cnt_next[0]),
        .Q(distance_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_cnt_reg_reg[1] 
       (.C(CLK),
        .CE(\distance_cnt_reg[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\distance_cnt_reg[1]_i_1_n_0 ),
        .Q(distance_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_cnt_reg_reg[2] 
       (.C(CLK),
        .CE(\distance_cnt_reg[8]_i_1_n_0 ),
        .CLR(AR),
        .D(distance_cnt_next[2]),
        .Q(distance_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_cnt_reg_reg[3] 
       (.C(CLK),
        .CE(\distance_cnt_reg[8]_i_1_n_0 ),
        .CLR(AR),
        .D(distance_cnt_next[3]),
        .Q(distance_cnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_cnt_reg_reg[4] 
       (.C(CLK),
        .CE(\distance_cnt_reg[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\distance_cnt_reg[4]_i_1_n_0 ),
        .Q(distance_cnt_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_cnt_reg_reg[5] 
       (.C(CLK),
        .CE(\distance_cnt_reg[8]_i_1_n_0 ),
        .CLR(AR),
        .D(distance_cnt_next[5]),
        .Q(distance_cnt_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_cnt_reg_reg[6] 
       (.C(CLK),
        .CE(\distance_cnt_reg[8]_i_1_n_0 ),
        .CLR(AR),
        .D(distance_cnt_next[6]),
        .Q(distance_cnt_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_cnt_reg_reg[7] 
       (.C(CLK),
        .CE(\distance_cnt_reg[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\distance_cnt_reg[7]_i_1_n_0 ),
        .Q(distance_cnt_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_cnt_reg_reg[8] 
       (.C(CLK),
        .CE(\distance_cnt_reg[8]_i_1_n_0 ),
        .CLR(AR),
        .D(\distance_cnt_reg[8]_i_2_n_0 ),
        .Q(distance_cnt_reg[8]));
  LUT2 #(
    .INIT(4'h1)) 
    \distance_reg[0]_i_1 
       (.I0(echo_s2),
        .I1(distance_cnt_reg[0]),
        .O(\distance_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \distance_reg[1]_i_1 
       (.I0(distance_cnt_reg[1]),
        .I1(distance_cnt_reg[0]),
        .I2(echo_s2),
        .O(\distance_reg[1]_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \distance_reg[2]_i_1 
       (.I0(echo_s2),
        .I1(distance_cnt_reg[0]),
        .I2(distance_cnt_reg[1]),
        .I3(distance_cnt_reg[2]),
        .O(\distance_reg[2]_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \distance_reg[3]_i_1 
       (.I0(echo_s2),
        .I1(distance_cnt_reg[1]),
        .I2(distance_cnt_reg[0]),
        .I3(distance_cnt_reg[2]),
        .I4(distance_cnt_reg[3]),
        .O(\distance_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFEAAAAAAA)) 
    \distance_reg[4]_i_1 
       (.I0(echo_s2),
        .I1(distance_cnt_reg[1]),
        .I2(distance_cnt_reg[0]),
        .I3(distance_cnt_reg[3]),
        .I4(distance_cnt_reg[2]),
        .I5(distance_cnt_reg[4]),
        .O(\distance_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \distance_reg[5]_i_1 
       (.I0(echo_s2),
        .I1(distance_cnt_reg[4]),
        .I2(\distance_cnt_reg[7]_i_2_n_0 ),
        .I3(distance_cnt_reg[5]),
        .O(\distance_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \distance_reg[6]_i_1 
       (.I0(echo_s2),
        .I1(\distance_cnt_reg[7]_i_2_n_0 ),
        .I2(distance_cnt_reg[4]),
        .I3(distance_cnt_reg[5]),
        .I4(distance_cnt_reg[6]),
        .O(\distance_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFEAAAAAAA)) 
    \distance_reg[7]_i_1 
       (.I0(echo_s2),
        .I1(distance_cnt_reg[6]),
        .I2(distance_cnt_reg[5]),
        .I3(distance_cnt_reg[4]),
        .I4(\distance_cnt_reg[7]_i_2_n_0 ),
        .I5(distance_cnt_reg[7]),
        .O(\distance_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h10FF000000000000)) 
    \distance_reg[8]_i_1 
       (.I0(\distance_cnt_reg[8]_i_4_n_0 ),
        .I1(\distance_cnt_reg[8]_i_3_n_0 ),
        .I2(w_tick_1u),
        .I3(echo_s2),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(distance_next));
  LUT5 #(
    .INIT(32'hFBFFAEAA)) 
    \distance_reg[8]_i_2 
       (.I0(echo_s2),
        .I1(distance_cnt_reg[7]),
        .I2(\distance_cnt_reg[8]_i_5_n_0 ),
        .I3(distance_cnt_reg[6]),
        .I4(distance_cnt_reg[8]),
        .O(\distance_reg[8]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \distance_reg_reg[0] 
       (.C(CLK),
        .CE(distance_next),
        .CLR(AR),
        .D(\distance_reg[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_reg_reg[1] 
       (.C(CLK),
        .CE(distance_next),
        .CLR(AR),
        .D(\distance_reg[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_reg_reg[2] 
       (.C(CLK),
        .CE(distance_next),
        .CLR(AR),
        .D(\distance_reg[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_reg_reg[3] 
       (.C(CLK),
        .CE(distance_next),
        .CLR(AR),
        .D(\distance_reg[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_reg_reg[4] 
       (.C(CLK),
        .CE(distance_next),
        .CLR(AR),
        .D(\distance_reg[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_reg_reg[5] 
       (.C(CLK),
        .CE(distance_next),
        .CLR(AR),
        .D(\distance_reg[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_reg_reg[6] 
       (.C(CLK),
        .CE(distance_next),
        .CLR(AR),
        .D(\distance_reg[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_reg_reg[7] 
       (.C(CLK),
        .CE(distance_next),
        .CLR(AR),
        .D(\distance_reg[7]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \distance_reg_reg[8] 
       (.C(CLK),
        .CE(distance_next),
        .CLR(AR),
        .D(\distance_reg[8]_i_2_n_0 ),
        .Q(Q[8]));
  LUT2 #(
    .INIT(4'h2)) 
    \echo_cnt_reg[0]_i_1 
       (.I0(current_state[1]),
        .I1(echo_cnt_reg[0]),
        .O(echo_cnt_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \echo_cnt_reg[1]_i_1 
       (.I0(current_state[1]),
        .I1(\distance_cnt_reg[8]_i_3_n_0 ),
        .I2(echo_cnt_reg[1]),
        .I3(echo_cnt_reg[0]),
        .O(echo_cnt_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \echo_cnt_reg[2]_i_1 
       (.I0(current_state[1]),
        .I1(echo_cnt_reg[0]),
        .I2(echo_cnt_reg[1]),
        .I3(echo_cnt_reg[2]),
        .O(echo_cnt_next[2]));
  LUT6 #(
    .INIT(64'h0888888880000000)) 
    \echo_cnt_reg[3]_i_1 
       (.I0(current_state[1]),
        .I1(\distance_cnt_reg[8]_i_3_n_0 ),
        .I2(echo_cnt_reg[1]),
        .I3(echo_cnt_reg[0]),
        .I4(echo_cnt_reg[2]),
        .I5(echo_cnt_reg[3]),
        .O(echo_cnt_next[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \echo_cnt_reg[4]_i_1 
       (.I0(\echo_cnt_reg[4]_i_2_n_0 ),
        .I1(echo_cnt_reg[3]),
        .I2(echo_cnt_reg[1]),
        .I3(echo_cnt_reg[0]),
        .I4(echo_cnt_reg[2]),
        .I5(echo_cnt_reg[4]),
        .O(echo_cnt_next[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \echo_cnt_reg[4]_i_2 
       (.I0(\distance_cnt_reg[8]_i_3_n_0 ),
        .I1(current_state[1]),
        .O(\echo_cnt_reg[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h83)) 
    \echo_cnt_reg[5]_i_1 
       (.I0(w_tick_1u),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(\echo_cnt_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8008)) 
    \echo_cnt_reg[5]_i_2 
       (.I0(current_state[1]),
        .I1(\distance_cnt_reg[8]_i_3_n_0 ),
        .I2(\echo_cnt_reg[5]_i_3_n_0 ),
        .I3(echo_cnt_reg[5]),
        .O(echo_cnt_next[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \echo_cnt_reg[5]_i_3 
       (.I0(echo_cnt_reg[3]),
        .I1(echo_cnt_reg[1]),
        .I2(echo_cnt_reg[0]),
        .I3(echo_cnt_reg[2]),
        .I4(echo_cnt_reg[4]),
        .O(\echo_cnt_reg[5]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \echo_cnt_reg_reg[0] 
       (.C(CLK),
        .CE(\echo_cnt_reg[5]_i_1_n_0 ),
        .CLR(AR),
        .D(echo_cnt_next[0]),
        .Q(echo_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \echo_cnt_reg_reg[1] 
       (.C(CLK),
        .CE(\echo_cnt_reg[5]_i_1_n_0 ),
        .CLR(AR),
        .D(echo_cnt_next[1]),
        .Q(echo_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \echo_cnt_reg_reg[2] 
       (.C(CLK),
        .CE(\echo_cnt_reg[5]_i_1_n_0 ),
        .CLR(AR),
        .D(echo_cnt_next[2]),
        .Q(echo_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \echo_cnt_reg_reg[3] 
       (.C(CLK),
        .CE(\echo_cnt_reg[5]_i_1_n_0 ),
        .CLR(AR),
        .D(echo_cnt_next[3]),
        .Q(echo_cnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \echo_cnt_reg_reg[4] 
       (.C(CLK),
        .CE(\echo_cnt_reg[5]_i_1_n_0 ),
        .CLR(AR),
        .D(echo_cnt_next[4]),
        .Q(echo_cnt_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \echo_cnt_reg_reg[5] 
       (.C(CLK),
        .CE(\echo_cnt_reg[5]_i_1_n_0 ),
        .CLR(AR),
        .D(echo_cnt_next[5]),
        .Q(echo_cnt_reg[5]));
  FDRE #(
    .INIT(1'b0)) 
    echo_s1_reg
       (.C(CLK),
        .CE(1'b1),
        .D(echo_IBUF),
        .Q(echo_s1),
        .R(1'b0));
  (* \PinAttr:D:HOLD_DETOUR  = "195" *) 
  FDRE #(
    .INIT(1'b0)) 
    echo_s2_reg
       (.C(CLK),
        .CE(1'b1),
        .D(echo_s1),
        .Q(echo_s2),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFA86)) 
    \fnd_data_OBUF[3]_inst_i_1 
       (.I0(\counter_r_reg[1] [1]),
        .I1(w_mux_sec_msec_out[0]),
        .I2(\counter_r_reg[1] [0]),
        .I3(w_mux_sec_msec_out[1]),
        .O(fnd_data_OBUF[0]));
  LUT4 #(
    .INIT(16'hE9E1)) 
    \fnd_data_OBUF[6]_inst_i_1 
       (.I0(\counter_r_reg[1] [0]),
        .I1(\counter_r_reg[1] [1]),
        .I2(w_mux_sec_msec_out[1]),
        .I3(w_mux_sec_msec_out[0]),
        .O(fnd_data_OBUF[1]));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \fnd_data_OBUF[7]_inst_i_1 
       (.I0(\counter_r_reg[1] [0]),
        .I1(w_mux_sec_msec_out[0]),
        .I2(\counter_r_reg[1] [1]),
        .I3(w_mux_sec_msec_out[1]),
        .O(fnd_data_OBUF[2]));
  LUT6 #(
    .INIT(64'h7DE739455D631841)) 
    \fnd_data_OBUF[7]_inst_i_11 
       (.I0(\fnd_data_OBUF[7]_inst_i_24_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\fnd_data_OBUF[7]_inst_i_19_n_0 ),
        .I4(\fnd_data_OBUF[7]_inst_i_25_n_0 ),
        .I5(Q[1]),
        .O(digit_100));
  LUT5 #(
    .INIT(32'hFFFF0540)) 
    \fnd_data_OBUF[7]_inst_i_12 
       (.I0(Q[8]),
        .I1(O[0]),
        .I2(O[1]),
        .I3(CO),
        .I4(\fnd_data_OBUF[7]_inst_i_3 ),
        .O(\distance_reg_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h0000000000002DD2)) 
    \fnd_data_OBUF[7]_inst_i_13 
       (.I0(digit_100),
        .I1(Q[1]),
        .I2(\fnd_data_OBUF[7]_inst_i_23_n_0 ),
        .I3(Q[2]),
        .I4(\fnd_data_OBUF[7]_inst_i_4_0 [0]),
        .I5(\fnd_data_OBUF[7]_inst_i_4_0 [1]),
        .O(\fnd_data_OBUF[7]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h2D420BD000000000)) 
    \fnd_data_OBUF[7]_inst_i_14 
       (.I0(\fnd_data_OBUF[7]_inst_i_22_n_0 ),
        .I1(\fnd_data_OBUF[7]_inst_i_21_n_0 ),
        .I2(\fnd_data_OBUF[7]_inst_i_20_n_0 ),
        .I3(\fnd_data_OBUF[7]_inst_i_19_n_0 ),
        .I4(\fnd_data_OBUF[7]_inst_i_23_n_0 ),
        .I5(\fnd_data_OBUF[7]_inst_i_4_0 [0]),
        .O(\fnd_data_OBUF[7]_inst_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFF57FFFF)) 
    \fnd_data_OBUF[7]_inst_i_15 
       (.I0(O[0]),
        .I1(Q[8]),
        .I2(CO),
        .I3(\fnd_data_OBUF[7]_inst_i_3 ),
        .I4(O[1]),
        .O(\fnd_data_OBUF[7]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0008820020000820)) 
    \fnd_data_OBUF[7]_inst_i_16 
       (.I0(\fnd_data_OBUF[7]_inst_i_4_0 [0]),
        .I1(\fnd_data_OBUF[7]_inst_i_22_n_0 ),
        .I2(\fnd_data_OBUF[7]_inst_i_21_n_0 ),
        .I3(\fnd_data_OBUF[7]_inst_i_20_n_0 ),
        .I4(\fnd_data_OBUF[7]_inst_i_19_n_0 ),
        .I5(\fnd_data_OBUF[7]_inst_i_23_n_0 ),
        .O(\counter_r_reg[0] ));
  LUT5 #(
    .INIT(32'hD22D4BB4)) 
    \fnd_data_OBUF[7]_inst_i_17 
       (.I0(\fnd_data_OBUF[7]_inst_i_23_n_0 ),
        .I1(Q[1]),
        .I2(\fnd_data_OBUF[7]_inst_i_19_n_0 ),
        .I3(Q[3]),
        .I4(Q[2]),
        .O(\distance_reg_reg[1]_0 ));
  LUT4 #(
    .INIT(16'hAEAB)) 
    \fnd_data_OBUF[7]_inst_i_18 
       (.I0(digit_100),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\fnd_data_OBUF[7]_inst_i_23_n_0 ),
        .O(\distance_reg_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h1E8FF178180EE170)) 
    \fnd_data_OBUF[7]_inst_i_19 
       (.I0(Q[4]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(Q[3]),
        .O(\fnd_data_OBUF[7]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEFEE)) 
    \fnd_data_OBUF[7]_inst_i_2 
       (.I0(\fnd_data_OBUF[7]_inst_i_6_n_0 ),
        .I1(\fnd_data_OBUF[7]_inst_i_7_n_0 ),
        .I2(O[1]),
        .I3(\fnd_data_OBUF[7]_inst_i_4_0 [1]),
        .I4(\fnd_data_OBUF[7]_inst_i_8_n_0 ),
        .I5(\fnd_data_OBUF[2]_inst_i_1 ),
        .O(\counter_r_reg[1] [0]));
  LUT4 #(
    .INIT(16'hC642)) 
    \fnd_data_OBUF[7]_inst_i_20 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[5]),
        .O(\fnd_data_OBUF[7]_inst_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h739C6318)) 
    \fnd_data_OBUF[7]_inst_i_21 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(Q[4]),
        .O(\fnd_data_OBUF[7]_inst_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \fnd_data_OBUF[7]_inst_i_22 
       (.I0(Q[6]),
        .I1(Q[7]),
        .I2(Q[8]),
        .O(\fnd_data_OBUF[7]_inst_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h88EEEAA8EAA888EE)) 
    \fnd_data_OBUF[7]_inst_i_23 
       (.I0(\fnd_data_OBUF[7]_inst_i_25_n_0 ),
        .I1(\fnd_data_OBUF[7]_inst_i_19_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(\fnd_data_OBUF[7]_inst_i_21_n_0 ),
        .I5(Q[4]),
        .O(\fnd_data_OBUF[7]_inst_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h9596696969955669)) 
    \fnd_data_OBUF[7]_inst_i_24 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[6]),
        .I5(Q[5]),
        .O(\fnd_data_OBUF[7]_inst_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hE1788EA7A7E11A8E)) 
    \fnd_data_OBUF[7]_inst_i_25 
       (.I0(Q[3]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[5]),
        .I5(Q[4]),
        .O(\fnd_data_OBUF[7]_inst_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEEEEFEE)) 
    \fnd_data_OBUF[7]_inst_i_4 
       (.I0(\fnd_data_OBUF[7]_inst_i_13_n_0 ),
        .I1(\fnd_data_OBUF[7]_inst_i_14_n_0 ),
        .I2(CO),
        .I3(\fnd_data_OBUF[7]_inst_i_4_0 [1]),
        .I4(\fnd_data_OBUF[7]_inst_i_15_n_0 ),
        .I5(\fnd_data_OBUF[2]_inst_i_1 ),
        .O(\counter_r_reg[1] [1]));
  LUT4 #(
    .INIT(16'h0102)) 
    \fnd_data_OBUF[7]_inst_i_6 
       (.I0(digit_100),
        .I1(\fnd_data_OBUF[7]_inst_i_4_0 [0]),
        .I2(\fnd_data_OBUF[7]_inst_i_4_0 [1]),
        .I3(Q[1]),
        .O(\fnd_data_OBUF[7]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB04B4B2400000000)) 
    \fnd_data_OBUF[7]_inst_i_7 
       (.I0(\fnd_data_OBUF[7]_inst_i_19_n_0 ),
        .I1(\fnd_data_OBUF[7]_inst_i_20_n_0 ),
        .I2(\fnd_data_OBUF[7]_inst_i_21_n_0 ),
        .I3(\fnd_data_OBUF[7]_inst_i_22_n_0 ),
        .I4(\fnd_data_OBUF[7]_inst_i_23_n_0 ),
        .I5(\fnd_data_OBUF[7]_inst_i_4_0 [0]),
        .O(\fnd_data_OBUF[7]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAABEFFFF)) 
    \fnd_data_OBUF[7]_inst_i_8 
       (.I0(\fnd_data_OBUF[7]_inst_i_3 ),
        .I1(CO),
        .I2(O[1]),
        .I3(Q[8]),
        .I4(O[0]),
        .O(\fnd_data_OBUF[7]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h00A2)) 
    trigger_reg_i_1
       (.I0(trigger_reg_i_3_n_0),
        .I1(current_state[0]),
        .I2(w_tick_1u),
        .I3(current_state[1]),
        .O(trigger_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    trigger_reg_i_2
       (.I0(current_state[0]),
        .I1(trigger_reg_reg_0),
        .O(trigger_reg_i_2_n_0));
  (* \PinAttr:I1:HOLD_DETOUR  = "192" *) 
  LUT5 #(
    .INIT(32'h0040FFFF)) 
    trigger_reg_i_3
       (.I0(wait_cnt_reg[2]),
        .I1(wait_cnt_reg[3]),
        .I2(wait_cnt_reg[1]),
        .I3(wait_cnt_reg[0]),
        .I4(current_state[0]),
        .O(trigger_reg_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    trigger_reg_reg
       (.C(CLK),
        .CE(trigger_reg_i_1_n_0),
        .CLR(AR),
        .D(trigger_reg_i_2_n_0),
        .Q(trigger_OBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDCE #(
    .INIT(1'b0)) 
    trigger_reg_reg_lopt_replica
       (.C(CLK),
        .CE(trigger_reg_i_1_n_0),
        .CLR(AR),
        .D(trigger_reg_i_2_n_0),
        .Q(trigger_reg_reg_lopt_replica_1));
  (* \PinAttr:I3:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h22220222)) 
    \wait_cnt_reg[0]_i_1 
       (.I0(current_state[0]),
        .I1(wait_cnt_reg[0]),
        .I2(wait_cnt_reg[1]),
        .I3(wait_cnt_reg[3]),
        .I4(wait_cnt_reg[2]),
        .O(wait_cnt_next[0]));
  (* \PinAttr:I3:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h28280828)) 
    \wait_cnt_reg[1]_i_1 
       (.I0(current_state[0]),
        .I1(wait_cnt_reg[0]),
        .I2(wait_cnt_reg[1]),
        .I3(wait_cnt_reg[3]),
        .I4(wait_cnt_reg[2]),
        .O(wait_cnt_next[1]));
  LUT4 #(
    .INIT(16'h2A80)) 
    \wait_cnt_reg[2]_i_1 
       (.I0(current_state[0]),
        .I1(wait_cnt_reg[0]),
        .I2(wait_cnt_reg[1]),
        .I3(wait_cnt_reg[2]),
        .O(wait_cnt_next[2]));
  LUT3 #(
    .INIT(8'h0D)) 
    \wait_cnt_reg[3]_i_1 
       (.I0(current_state[0]),
        .I1(w_tick_1u),
        .I2(current_state[1]),
        .O(\wait_cnt_reg[3]_i_1_n_0 ));
  (* \PinAttr:I3:HOLD_DETOUR  = "192" *) 
  LUT5 #(
    .INIT(32'h2A808A00)) 
    \wait_cnt_reg[3]_i_2 
       (.I0(current_state[0]),
        .I1(wait_cnt_reg[0]),
        .I2(wait_cnt_reg[1]),
        .I3(wait_cnt_reg[3]),
        .I4(wait_cnt_reg[2]),
        .O(wait_cnt_next[3]));
  FDCE #(
    .INIT(1'b0)) 
    \wait_cnt_reg_reg[0] 
       (.C(CLK),
        .CE(\wait_cnt_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(wait_cnt_next[0]),
        .Q(wait_cnt_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \wait_cnt_reg_reg[1] 
       (.C(CLK),
        .CE(\wait_cnt_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(wait_cnt_next[1]),
        .Q(wait_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \wait_cnt_reg_reg[2] 
       (.C(CLK),
        .CE(\wait_cnt_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(wait_cnt_next[2]),
        .Q(wait_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \wait_cnt_reg_reg[3] 
       (.C(CLK),
        .CE(\wait_cnt_reg[3]_i_1_n_0 ),
        .CLR(AR),
        .D(wait_cnt_next[3]),
        .Q(wait_cnt_reg[3]));
endmodule

module tick_gen_1u
   (w_tick_1u,
    CLK,
    AR);
  output w_tick_1u;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire b_tick_1u;
  wire [6:0]counter_reg;
  wire \counter_reg[6]_i_2_n_0 ;
  wire \counter_reg_reg_n_0_[0] ;
  wire \counter_reg_reg_n_0_[1] ;
  wire \counter_reg_reg_n_0_[2] ;
  wire \counter_reg_reg_n_0_[3] ;
  wire \counter_reg_reg_n_0_[4] ;
  wire \counter_reg_reg_n_0_[5] ;
  wire \counter_reg_reg_n_0_[6] ;
  wire w_tick_1u;

  LUT6 #(
    .INIT(64'h0000001000000000)) 
    b_tick_1u_i_1
       (.I0(\counter_reg_reg_n_0_[2] ),
        .I1(\counter_reg[6]_i_2_n_0 ),
        .I2(\counter_reg_reg_n_0_[5] ),
        .I3(\counter_reg_reg_n_0_[4] ),
        .I4(\counter_reg_reg_n_0_[3] ),
        .I5(\counter_reg_reg_n_0_[6] ),
        .O(b_tick_1u));
  FDCE #(
    .INIT(1'b0)) 
    b_tick_1u_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(b_tick_1u),
        .Q(w_tick_1u));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_reg[0]_i_1__0 
       (.I0(\counter_reg_reg_n_0_[0] ),
        .O(counter_reg[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter_reg[1]_i_1__0 
       (.I0(\counter_reg_reg_n_0_[0] ),
        .I1(\counter_reg_reg_n_0_[1] ),
        .O(counter_reg[1]));
  LUT6 #(
    .INIT(64'hFFFF00000000FDFF)) 
    \counter_reg[2]_i_1__0 
       (.I0(\counter_reg_reg_n_0_[6] ),
        .I1(\counter_reg_reg_n_0_[3] ),
        .I2(\counter_reg_reg_n_0_[4] ),
        .I3(\counter_reg_reg_n_0_[5] ),
        .I4(\counter_reg[6]_i_2_n_0 ),
        .I5(\counter_reg_reg_n_0_[2] ),
        .O(counter_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter_reg[3]_i_1__0 
       (.I0(\counter_reg_reg_n_0_[2] ),
        .I1(\counter_reg_reg_n_0_[0] ),
        .I2(\counter_reg_reg_n_0_[1] ),
        .I3(\counter_reg_reg_n_0_[3] ),
        .O(counter_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter_reg[4]_i_1__0 
       (.I0(\counter_reg_reg_n_0_[3] ),
        .I1(\counter_reg_reg_n_0_[1] ),
        .I2(\counter_reg_reg_n_0_[0] ),
        .I3(\counter_reg_reg_n_0_[2] ),
        .I4(\counter_reg_reg_n_0_[4] ),
        .O(counter_reg[4]));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    \counter_reg[5]_i_1__0 
       (.I0(\counter_reg_reg_n_0_[6] ),
        .I1(\counter_reg_reg_n_0_[5] ),
        .I2(\counter_reg_reg_n_0_[2] ),
        .I3(\counter_reg_reg_n_0_[3] ),
        .I4(\counter_reg_reg_n_0_[4] ),
        .I5(\counter_reg[6]_i_2_n_0 ),
        .O(counter_reg[5]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAA2)) 
    \counter_reg[6]_i_1__0 
       (.I0(\counter_reg_reg_n_0_[6] ),
        .I1(\counter_reg_reg_n_0_[5] ),
        .I2(\counter_reg[6]_i_2_n_0 ),
        .I3(\counter_reg_reg_n_0_[2] ),
        .I4(\counter_reg_reg_n_0_[4] ),
        .I5(\counter_reg_reg_n_0_[3] ),
        .O(counter_reg[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \counter_reg[6]_i_2 
       (.I0(\counter_reg_reg_n_0_[0] ),
        .I1(\counter_reg_reg_n_0_[1] ),
        .O(\counter_reg[6]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg[0]),
        .Q(\counter_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg[1]),
        .Q(\counter_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg[2]),
        .Q(\counter_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg[3]),
        .Q(\counter_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg[4]),
        .Q(\counter_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg[5]),
        .Q(\counter_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_reg[6]),
        .Q(\counter_reg_reg_n_0_[6] ));
endmodule

(* ECO_CHECKSUM = "7a3882e5" *) 
(* NotValidForBitStream *)
module top_sr04_fnd
   (clk,
    reset,
    btn_start,
    echo,
    led,
    trigger,
    fnd_digit,
    fnd_data);
  input clk;
  input reset;
  input btn_start;
  input echo;
  output led;
  output trigger;
  output [3:0]fnd_digit;
  output [7:0]fnd_data;

  wire U_BTN_DEBOUNCE_n_0;
  wire U_FND_CTRL_n_0;
  wire U_FND_CTRL_n_1;
  wire U_FND_CTRL_n_13;
  wire U_FND_CTRL_n_2;
  wire U_FND_CTRL_n_3;
  wire U_SR04_n_1;
  wire U_SR04_n_13;
  wire U_SR04_n_14;
  wire U_SR04_n_15;
  wire U_SR04_n_2;
  wire U_SR04_n_21;
  wire U_SR04_n_23;
  wire U_SR04_n_24;
  wire U_SR04_n_25;
  wire U_SR04_n_26;
  wire U_SR04_n_27;
  wire U_SR04_n_28;
  wire U_SR04_n_29;
  wire U_SR04_n_3;
  wire U_SR04_n_30;
  wire U_SR04_n_31;
  wire U_SR04_n_32;
  wire U_SR04_n_33;
  wire U_SR04_n_34;
  wire U_SR04_n_35;
  wire U_SR04_n_36;
  wire U_SR04_n_37;
  wire btn_start;
  wire btn_start_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]counter_r;
  wire [0:0]digit_100;
  wire [8:0]distance_reg;
  wire echo;
  wire echo_IBUF;
  wire [7:0]fnd_data;
  wire [7:0]fnd_data_OBUF;
  wire [3:0]fnd_digit;
  wire [3:0]fnd_digit_OBUF;
  wire led;
  wire lopt;
  wire reset;
  wire reset_IBUF;
  wire trigger;
  wire trigger_OBUF;
  wire [3:0]w_mux_sec_msec_out;
  wire w_tick_1u;
  wire NLW_U_SR04_lopt_1_UNCONNECTED;

  btn_debounce U_BTN_DEBOUNCE
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(btn_start_IBUF),
        .edge_reg_reg_0(U_BTN_DEBOUNCE_n_0));
  fnd_controller U_FND_CTRL
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .CO(U_FND_CTRL_n_0),
        .DI({U_SR04_n_1,U_SR04_n_2,U_SR04_n_3}),
        .O({U_FND_CTRL_n_1,U_FND_CTRL_n_2}),
        .Q(distance_reg),
        .S({U_SR04_n_26,U_SR04_n_27,U_SR04_n_28}),
        .\counter_r_reg[1] (counter_r),
        .\counter_r_reg[2] (U_FND_CTRL_n_13),
        .digit_100(digit_100),
        .digit_1000__19_carry__0({U_SR04_n_33,U_SR04_n_34,U_SR04_n_35,U_SR04_n_36}),
        .digit_1000_carry__1({U_SR04_n_29,U_SR04_n_30,U_SR04_n_31,U_SR04_n_32}),
        .\distance_reg_reg[7] (U_FND_CTRL_n_3),
        .\fnd_data[1] (w_mux_sec_msec_out[2:1]),
        .fnd_data_OBUF({fnd_data_OBUF[5:4],fnd_data_OBUF[2:0]}),
        .\fnd_data_OBUF[7]_inst_i_1 (U_SR04_n_21),
        .\fnd_data_OBUF[7]_inst_i_12 ({U_SR04_n_13,U_SR04_n_14,U_SR04_n_15}),
        .\fnd_data_OBUF[7]_inst_i_12_0 (U_SR04_n_37),
        .\fnd_data_OBUF[7]_inst_i_1_0 (U_SR04_n_23),
        .\fnd_data_OBUF[7]_inst_i_1_1 (U_SR04_n_25),
        .\fnd_data_OBUF[7]_inst_i_1_2 (U_SR04_n_24),
        .fnd_digit_OBUF(fnd_digit_OBUF),
        .w_mux_sec_msec_out({w_mux_sec_msec_out[3],w_mux_sec_msec_out[0]}));
  sr04_controller U_SR04
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .CO(U_FND_CTRL_n_0),
        .DI({U_SR04_n_1,U_SR04_n_2,U_SR04_n_3}),
        .O({U_FND_CTRL_n_1,U_FND_CTRL_n_2}),
        .Q(distance_reg),
        .S({U_SR04_n_26,U_SR04_n_27,U_SR04_n_28}),
        .\counter_r_reg[0] (U_SR04_n_23),
        .\counter_r_reg[1] (w_mux_sec_msec_out[2:1]),
        .digit_100(digit_100),
        .\distance_reg_reg[1]_0 (U_SR04_n_25),
        .\distance_reg_reg[2]_0 (U_SR04_n_24),
        .\distance_reg_reg[4]_0 ({U_SR04_n_33,U_SR04_n_34,U_SR04_n_35,U_SR04_n_36}),
        .\distance_reg_reg[5]_0 (U_SR04_n_37),
        .\distance_reg_reg[7]_0 ({U_SR04_n_13,U_SR04_n_14,U_SR04_n_15}),
        .\distance_reg_reg[8]_0 (U_SR04_n_21),
        .\distance_reg_reg[8]_1 ({U_SR04_n_29,U_SR04_n_30,U_SR04_n_31,U_SR04_n_32}),
        .echo_IBUF(echo_IBUF),
        .fnd_data_OBUF({fnd_data_OBUF[7:6],fnd_data_OBUF[3]}),
        .\fnd_data_OBUF[2]_inst_i_1 (U_FND_CTRL_n_13),
        .\fnd_data_OBUF[7]_inst_i_3 (U_FND_CTRL_n_3),
        .\fnd_data_OBUF[7]_inst_i_4_0 (counter_r),
        .lopt(lopt),
        .lopt_1(NLW_U_SR04_lopt_1_UNCONNECTED),
        .trigger_OBUF(trigger_OBUF),
        .trigger_reg_reg_0(U_BTN_DEBOUNCE_n_0),
        .w_mux_sec_msec_out({w_mux_sec_msec_out[3],w_mux_sec_msec_out[0]}),
        .w_tick_1u(w_tick_1u));
  tick_gen_1u U_TICK_GEN_1U
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .w_tick_1u(w_tick_1u));
  IBUF btn_start_IBUF_inst
       (.I(btn_start),
        .O(btn_start_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF echo_IBUF_inst
       (.I(echo),
        .O(echo_IBUF));
  OBUF \fnd_data_OBUF[0]_inst 
       (.I(fnd_data_OBUF[0]),
        .O(fnd_data[0]));
  OBUF \fnd_data_OBUF[1]_inst 
       (.I(fnd_data_OBUF[1]),
        .O(fnd_data[1]));
  OBUF \fnd_data_OBUF[2]_inst 
       (.I(fnd_data_OBUF[2]),
        .O(fnd_data[2]));
  OBUF \fnd_data_OBUF[3]_inst 
       (.I(fnd_data_OBUF[3]),
        .O(fnd_data[3]));
  OBUF \fnd_data_OBUF[4]_inst 
       (.I(fnd_data_OBUF[4]),
        .O(fnd_data[4]));
  OBUF \fnd_data_OBUF[5]_inst 
       (.I(fnd_data_OBUF[5]),
        .O(fnd_data[5]));
  OBUF \fnd_data_OBUF[6]_inst 
       (.I(fnd_data_OBUF[6]),
        .O(fnd_data[6]));
  OBUF \fnd_data_OBUF[7]_inst 
       (.I(fnd_data_OBUF[7]),
        .O(fnd_data[7]));
  OBUF \fnd_digit_OBUF[0]_inst 
       (.I(fnd_digit_OBUF[0]),
        .O(fnd_digit[0]));
  OBUF \fnd_digit_OBUF[1]_inst 
       (.I(fnd_digit_OBUF[1]),
        .O(fnd_digit[1]));
  OBUF \fnd_digit_OBUF[2]_inst 
       (.I(fnd_digit_OBUF[2]),
        .O(fnd_digit[2]));
  OBUF \fnd_digit_OBUF[3]_inst 
       (.I(fnd_digit_OBUF[3]),
        .O(fnd_digit[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF led_OBUF_inst
       (.I(lopt),
        .O(led));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF trigger_OBUF_inst
       (.I(trigger_OBUF),
        .O(trigger));
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
