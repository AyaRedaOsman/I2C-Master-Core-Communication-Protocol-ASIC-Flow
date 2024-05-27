/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Mon May 20 01:41:27 2024
/////////////////////////////////////////////////////////////


module i2c_master_bit_ctrl_DW01_dec_0 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24;

  INVX0 U1 ( .INP(n23), .ZN(n1) );
  INVX0 U2 ( .INP(n21), .ZN(n11) );
  INVX0 U3 ( .INP(n18), .ZN(n8) );
  INVX0 U4 ( .INP(n24), .ZN(n2) );
  INVX0 U5 ( .INP(n19), .ZN(n9) );
  INVX0 U6 ( .INP(n17), .ZN(n7) );
  INVX0 U7 ( .INP(n20), .ZN(n10) );
  INVX0 U8 ( .INP(n16), .ZN(n6) );
  INVX0 U9 ( .INP(n15), .ZN(n5) );
  INVX0 U10 ( .INP(n14), .ZN(n4) );
  INVX0 U11 ( .INP(n13), .ZN(n3) );
  INVX0 U12 ( .INP(A[0]), .ZN(SUM[0]) );
  AO21X1 U13 ( .IN1(A[9]), .IN2(n4), .IN3(n13), .Q(SUM[9]) );
  AO21X1 U14 ( .IN1(A[8]), .IN2(n5), .IN3(n14), .Q(SUM[8]) );
  AO21X1 U15 ( .IN1(A[7]), .IN2(n6), .IN3(n15), .Q(SUM[7]) );
  AO21X1 U16 ( .IN1(A[6]), .IN2(n7), .IN3(n16), .Q(SUM[6]) );
  AO21X1 U17 ( .IN1(A[5]), .IN2(n8), .IN3(n17), .Q(SUM[5]) );
  AO21X1 U18 ( .IN1(A[4]), .IN2(n9), .IN3(n18), .Q(SUM[4]) );
  AO21X1 U19 ( .IN1(A[3]), .IN2(n10), .IN3(n19), .Q(SUM[3]) );
  AO21X1 U20 ( .IN1(A[2]), .IN2(n11), .IN3(n20), .Q(SUM[2]) );
  AO21X1 U21 ( .IN1(A[1]), .IN2(A[0]), .IN3(n21), .Q(SUM[1]) );
  XOR2X1 U22 ( .IN1(A[13]), .IN2(n22), .Q(SUM[13]) );
  NOR2X0 U23 ( .IN1(A[12]), .IN2(n1), .QN(n22) );
  XNOR2X1 U24 ( .IN1(A[12]), .IN2(n1), .Q(SUM[12]) );
  AO21X1 U25 ( .IN1(A[11]), .IN2(n2), .IN3(n23), .Q(SUM[11]) );
  NOR2X0 U26 ( .IN1(n2), .IN2(A[11]), .QN(n23) );
  AO21X1 U27 ( .IN1(A[10]), .IN2(n3), .IN3(n24), .Q(SUM[10]) );
  NOR2X0 U28 ( .IN1(n3), .IN2(A[10]), .QN(n24) );
  NOR2X0 U29 ( .IN1(n4), .IN2(A[9]), .QN(n13) );
  NOR2X0 U30 ( .IN1(n5), .IN2(A[8]), .QN(n14) );
  NOR2X0 U31 ( .IN1(n6), .IN2(A[7]), .QN(n15) );
  NOR2X0 U32 ( .IN1(n7), .IN2(A[6]), .QN(n16) );
  NOR2X0 U33 ( .IN1(n8), .IN2(A[5]), .QN(n17) );
  NOR2X0 U34 ( .IN1(n9), .IN2(A[4]), .QN(n18) );
  NOR2X0 U35 ( .IN1(n10), .IN2(A[3]), .QN(n19) );
  NOR2X0 U36 ( .IN1(n11), .IN2(A[2]), .QN(n20) );
  NOR2X0 U37 ( .IN1(A[1]), .IN2(A[0]), .QN(n21) );
endmodule


module i2c_master_bit_ctrl_DW01_dec_1 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28;

  INVX0 U1 ( .INP(n25), .ZN(n1) );
  INVX0 U2 ( .INP(n23), .ZN(n13) );
  INVX0 U3 ( .INP(n22), .ZN(n12) );
  INVX0 U4 ( .INP(n21), .ZN(n11) );
  INVX0 U5 ( .INP(n20), .ZN(n10) );
  INVX0 U6 ( .INP(n19), .ZN(n9) );
  INVX0 U7 ( .INP(n18), .ZN(n8) );
  INVX0 U8 ( .INP(n17), .ZN(n7) );
  INVX0 U9 ( .INP(n16), .ZN(n6) );
  INVX0 U10 ( .INP(n15), .ZN(n5) );
  INVX0 U11 ( .INP(n28), .ZN(n4) );
  INVX0 U12 ( .INP(n27), .ZN(n3) );
  INVX0 U13 ( .INP(n26), .ZN(n2) );
  INVX0 U14 ( .INP(A[0]), .ZN(SUM[0]) );
  AO21X1 U15 ( .IN1(A[9]), .IN2(n6), .IN3(n15), .Q(SUM[9]) );
  AO21X1 U16 ( .IN1(A[8]), .IN2(n7), .IN3(n16), .Q(SUM[8]) );
  AO21X1 U17 ( .IN1(A[7]), .IN2(n8), .IN3(n17), .Q(SUM[7]) );
  AO21X1 U18 ( .IN1(A[6]), .IN2(n9), .IN3(n18), .Q(SUM[6]) );
  AO21X1 U19 ( .IN1(A[5]), .IN2(n10), .IN3(n19), .Q(SUM[5]) );
  AO21X1 U20 ( .IN1(A[4]), .IN2(n11), .IN3(n20), .Q(SUM[4]) );
  AO21X1 U21 ( .IN1(A[3]), .IN2(n12), .IN3(n21), .Q(SUM[3]) );
  AO21X1 U22 ( .IN1(A[2]), .IN2(n13), .IN3(n22), .Q(SUM[2]) );
  AO21X1 U23 ( .IN1(A[1]), .IN2(A[0]), .IN3(n23), .Q(SUM[1]) );
  XOR2X1 U24 ( .IN1(A[15]), .IN2(n24), .Q(SUM[15]) );
  NOR2X0 U25 ( .IN1(A[14]), .IN2(n1), .QN(n24) );
  XNOR2X1 U26 ( .IN1(A[14]), .IN2(n1), .Q(SUM[14]) );
  AO21X1 U27 ( .IN1(A[13]), .IN2(n2), .IN3(n25), .Q(SUM[13]) );
  NOR2X0 U28 ( .IN1(n2), .IN2(A[13]), .QN(n25) );
  AO21X1 U29 ( .IN1(A[12]), .IN2(n3), .IN3(n26), .Q(SUM[12]) );
  NOR2X0 U30 ( .IN1(n3), .IN2(A[12]), .QN(n26) );
  AO21X1 U31 ( .IN1(A[11]), .IN2(n4), .IN3(n27), .Q(SUM[11]) );
  NOR2X0 U32 ( .IN1(n4), .IN2(A[11]), .QN(n27) );
  AO21X1 U33 ( .IN1(A[10]), .IN2(n5), .IN3(n28), .Q(SUM[10]) );
  NOR2X0 U34 ( .IN1(n5), .IN2(A[10]), .QN(n28) );
  NOR2X0 U35 ( .IN1(n6), .IN2(A[9]), .QN(n15) );
  NOR2X0 U36 ( .IN1(n7), .IN2(A[8]), .QN(n16) );
  NOR2X0 U37 ( .IN1(n8), .IN2(A[7]), .QN(n17) );
  NOR2X0 U38 ( .IN1(n9), .IN2(A[6]), .QN(n18) );
  NOR2X0 U39 ( .IN1(n10), .IN2(A[5]), .QN(n19) );
  NOR2X0 U40 ( .IN1(n11), .IN2(A[4]), .QN(n20) );
  NOR2X0 U41 ( .IN1(n12), .IN2(A[3]), .QN(n21) );
  NOR2X0 U42 ( .IN1(n13), .IN2(A[2]), .QN(n22) );
  NOR2X0 U43 ( .IN1(A[1]), .IN2(A[0]), .QN(n23) );
endmodule


module i2c_master_bit_ctrl ( clk, rst, nReset, ena, clk_cnt, cmd, cmd_ack, 
        busy, al, din, dout, scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen, VDD, 
        VSS );
  input [15:0] clk_cnt;
  input [3:0] cmd;
  input clk, rst, nReset, ena, din, scl_i, sda_i, VDD, VSS;
  output cmd_ack, busy, al, dout, scl_o, scl_oen, sda_o, sda_oen;
  wire   dscl_oen, sSCL, N29, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N66, cSCL_1_, cSDA_1_, N70, N71, N72,
         N73, N78, N79, N80, N81, N82, N83, N84, N85, N86, N87, N88, N89, N90,
         N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102, N103,
         N104, N105, sSDA, N122, N123, N124, sta_condition, sto_condition,
         N128, N129, N131, sda_chk, N138, N227, n4, n6, n24, n25, n26, n340,
         n350, n370, n410, n420, n480, n50, n53, n55, n56, n58, n59, n60, n61,
         n62, n63, n65, n660, n67, n68, n69, n700, n730, n790, n810, n820,
         n840, n850, n860, n870, n880, n890, n910, n930, n940, n950, n960,
         n970, n980, n990, n1000, n1010, n1020, n1030, n1040, n1050, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n1220, n1230, n125, n126, n127, n1280, n1290, n1310,
         n132, n133, n134, n135, n136, n137, n1380, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n1,
         n2, n3, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n27, n28, n290, n30, n31, n32, n33, n360,
         n380, n390, n400, n430, n440, n450, n460, n470, n490, n51, n52, n54,
         n57, n64, n710, n720, n74, n75, n76, n77, n780, n800, n830, n900,
         n920, n121, n1240, n130, n163, n210, n211, n212;
  wire   [13:0] filter_cnt;
  assign sda_o = 1'b0;
  assign scl_o = 1'b0;

  DFFARX1 cSDA_reg_0_ ( .D(N72), .CLK(clk), .RSTB(n33), .QN(n120) );
  DFFARX1 cSDA_reg_1_ ( .D(N73), .CLK(clk), .RSTB(n33), .Q(cSDA_1_) );
  DFFARX1 cSCL_reg_0_ ( .D(N70), .CLK(clk), .RSTB(nReset), .QN(n119) );
  DFFARX1 cSCL_reg_1_ ( .D(N71), .CLK(clk), .RSTB(n33), .Q(cSCL_1_) );
  DFFARX1 filter_cnt_reg_0_ ( .D(N92), .CLK(clk), .RSTB(nReset), .Q(
        filter_cnt[0]) );
  DFFARX1 filter_cnt_reg_8_ ( .D(N100), .CLK(clk), .RSTB(nReset), .Q(
        filter_cnt[8]), .QN(n116) );
  DFFARX1 filter_cnt_reg_1_ ( .D(N93), .CLK(clk), .RSTB(nReset), .Q(
        filter_cnt[1]), .QN(n112) );
  DFFARX1 filter_cnt_reg_2_ ( .D(N94), .CLK(clk), .RSTB(nReset), .Q(
        filter_cnt[2]), .QN(n113) );
  DFFARX1 filter_cnt_reg_3_ ( .D(N95), .CLK(clk), .RSTB(nReset), .Q(
        filter_cnt[3]) );
  DFFARX1 filter_cnt_reg_4_ ( .D(N96), .CLK(clk), .RSTB(n30), .Q(filter_cnt[4]) );
  DFFARX1 filter_cnt_reg_5_ ( .D(N97), .CLK(clk), .RSTB(nReset), .Q(
        filter_cnt[5]) );
  DFFARX1 filter_cnt_reg_6_ ( .D(N98), .CLK(clk), .RSTB(nReset), .Q(
        filter_cnt[6]), .QN(n114) );
  DFFARX1 filter_cnt_reg_7_ ( .D(N99), .CLK(clk), .RSTB(n290), .Q(
        filter_cnt[7]), .QN(n115) );
  DFFARX1 filter_cnt_reg_9_ ( .D(N101), .CLK(clk), .RSTB(n290), .Q(
        filter_cnt[9]), .QN(n117) );
  DFFARX1 filter_cnt_reg_10_ ( .D(N102), .CLK(clk), .RSTB(n290), .Q(
        filter_cnt[10]) );
  DFFARX1 filter_cnt_reg_11_ ( .D(N103), .CLK(clk), .RSTB(n290), .Q(
        filter_cnt[11]) );
  DFFARX1 filter_cnt_reg_12_ ( .D(N104), .CLK(clk), .RSTB(n290), .Q(
        filter_cnt[12]), .QN(n110) );
  DFFARX1 filter_cnt_reg_13_ ( .D(N105), .CLK(clk), .RSTB(n290), .Q(
        filter_cnt[13]), .QN(n111) );
  DFFASX1 fSDA_reg_0_ ( .D(n209), .CLK(clk), .SETB(n33), .Q(n13) );
  DFFASX1 fSDA_reg_1_ ( .D(n208), .CLK(clk), .SETB(n33), .Q(n7), .QN(n1230) );
  DFFASX1 fSDA_reg_2_ ( .D(n207), .CLK(clk), .SETB(n33), .Q(n20), .QN(n1220)
         );
  DFFASX1 fSCL_reg_0_ ( .D(n206), .CLK(clk), .SETB(n33), .Q(n14) );
  DFFASX1 fSCL_reg_1_ ( .D(n205), .CLK(clk), .SETB(n33), .Q(n8), .QN(n126) );
  DFFASX1 fSCL_reg_2_ ( .D(n204), .CLK(clk), .SETB(n33), .Q(n21), .QN(n125) );
  DFFASX1 sSCL_reg ( .D(N122), .CLK(clk), .SETB(n33), .Q(sSCL), .QN(n400) );
  DFFASX1 sSDA_reg ( .D(N123), .CLK(clk), .SETB(n33), .Q(sSDA) );
  DFFASX1 dSDA_reg ( .D(n440), .CLK(clk), .SETB(n32), .QN(n118) );
  DFFASX1 dSCL_reg ( .D(N124), .CLK(clk), .SETB(n33), .QN(n161) );
  DFFARX1 sto_condition_reg ( .D(N129), .CLK(clk), .RSTB(n290), .Q(
        sto_condition) );
  DFFARX1 sta_condition_reg ( .D(N128), .CLK(clk), .RSTB(n290), .Q(
        sta_condition) );
  DFFARX1 busy_reg ( .D(N131), .CLK(clk), .RSTB(n290), .Q(busy) );
  DFFX1 dout_reg ( .D(n162), .CLK(clk), .Q(dout) );
  DFFASX1 sda_oen_reg ( .D(n203), .CLK(clk), .SETB(n32), .Q(sda_oen) );
  DFFARX1 al_reg ( .D(N138), .CLK(clk), .RSTB(n290), .Q(al), .QN(n157) );
  DFFASX1 scl_oen_reg ( .D(n202), .CLK(clk), .SETB(n33), .Q(scl_oen), .QN(n15)
         );
  DFFX1 dscl_oen_reg ( .D(scl_oen), .CLK(clk), .Q(dscl_oen) );
  DFFARX1 cnt_reg_0_ ( .D(n183), .CLK(clk), .RSTB(n290), .Q(n57), .QN(n140) );
  DFFASX1 clk_en_reg ( .D(N66), .CLK(clk), .SETB(n33), .Q(n18), .QN(n159) );
  DFFARX1 cmd_stop_reg ( .D(n201), .CLK(clk), .RSTB(n30), .QN(n164) );
  DFFARX1 c_state_reg_16_ ( .D(n200), .CLK(clk), .RSTB(n30), .Q(n17), .QN(n127) );
  DFFARX1 c_state_reg_13_ ( .D(n186), .CLK(clk), .RSTB(n30), .QN(n1380) );
  DFFARX1 c_state_reg_14_ ( .D(n185), .CLK(clk), .RSTB(n30), .Q(n19), .QN(n139) );
  DFFARX1 c_state_reg_15_ ( .D(n184), .CLK(clk), .RSTB(n30), .Q(n5), .QN(n156)
         );
  DFFARX1 sda_chk_reg ( .D(n167), .CLK(clk), .RSTB(n30), .Q(sda_chk) );
  DFFARX1 c_state_reg_0_ ( .D(n199), .CLK(clk), .RSTB(n30), .Q(n11), .QN(n166)
         );
  DFFARX1 c_state_reg_1_ ( .D(n198), .CLK(clk), .RSTB(n30), .Q(n27), .QN(n158)
         );
  DFFARX1 c_state_reg_2_ ( .D(n197), .CLK(clk), .RSTB(n30), .Q(n9), .QN(n1280)
         );
  DFFARX1 c_state_reg_3_ ( .D(n196), .CLK(clk), .RSTB(n30), .Q(n16), .QN(n1290) );
  DFFARX1 c_state_reg_4_ ( .D(n195), .CLK(clk), .RSTB(n31), .Q(n2) );
  DFFARX1 c_state_reg_5_ ( .D(n194), .CLK(clk), .RSTB(n31), .Q(n28), .QN(n1310) );
  DFFARX1 c_state_reg_6_ ( .D(n193), .CLK(clk), .RSTB(n31), .Q(n12), .QN(n132)
         );
  DFFARX1 c_state_reg_7_ ( .D(n192), .CLK(clk), .RSTB(n30), .Q(n1), .QN(n165)
         );
  DFFARX1 c_state_reg_8_ ( .D(n191), .CLK(clk), .RSTB(n31), .QN(n133) );
  DFFARX1 c_state_reg_9_ ( .D(n190), .CLK(clk), .RSTB(n31), .Q(n22), .QN(n134)
         );
  DFFARX1 c_state_reg_10_ ( .D(n189), .CLK(clk), .RSTB(n32), .Q(n10), .QN(n135) );
  DFFARX1 c_state_reg_11_ ( .D(n188), .CLK(clk), .RSTB(n31), .Q(n3), .QN(n136)
         );
  DFFARX1 c_state_reg_12_ ( .D(n187), .CLK(clk), .RSTB(n31), .Q(n23), .QN(n137) );
  DFFARX1 cnt_reg_15_ ( .D(n168), .CLK(clk), .RSTB(n32), .Q(n710), .QN(n155)
         );
  DFFARX1 cnt_reg_1_ ( .D(n182), .CLK(clk), .RSTB(n32), .Q(n720), .QN(n141) );
  DFFARX1 cnt_reg_2_ ( .D(n181), .CLK(clk), .RSTB(n31), .Q(n74), .QN(n142) );
  DFFARX1 cnt_reg_3_ ( .D(n180), .CLK(clk), .RSTB(n32), .Q(n75), .QN(n143) );
  DFFARX1 cnt_reg_4_ ( .D(n179), .CLK(clk), .RSTB(n32), .Q(n76), .QN(n144) );
  DFFARX1 cnt_reg_5_ ( .D(n178), .CLK(clk), .RSTB(n31), .Q(n77), .QN(n145) );
  DFFARX1 cnt_reg_6_ ( .D(n177), .CLK(clk), .RSTB(n32), .Q(n780), .QN(n146) );
  DFFARX1 cnt_reg_7_ ( .D(n176), .CLK(clk), .RSTB(n32), .Q(n800), .QN(n147) );
  DFFARX1 cnt_reg_8_ ( .D(n175), .CLK(clk), .RSTB(n31), .Q(n830), .QN(n148) );
  DFFARX1 cnt_reg_9_ ( .D(n174), .CLK(clk), .RSTB(n32), .Q(n900), .QN(n149) );
  DFFARX1 cnt_reg_10_ ( .D(n173), .CLK(clk), .RSTB(n32), .Q(n920), .QN(n150)
         );
  DFFARX1 cnt_reg_11_ ( .D(n172), .CLK(clk), .RSTB(n31), .Q(n121), .QN(n151)
         );
  DFFARX1 cnt_reg_12_ ( .D(n171), .CLK(clk), .RSTB(n32), .Q(n1240), .QN(n152)
         );
  DFFARX1 cnt_reg_13_ ( .D(n170), .CLK(clk), .RSTB(n32), .Q(n130), .QN(n153)
         );
  DFFARX1 cnt_reg_14_ ( .D(n169), .CLK(clk), .RSTB(n31), .Q(n163), .QN(n154)
         );
  DFFARX1 cmd_ack_reg ( .D(N227), .CLK(clk), .RSTB(n33), .Q(cmd_ack) );
  AO22X1 U3 ( .IN1(sda_chk), .IN2(n470), .IN3(n460), .IN4(n5), .Q(n167) );
  AO222X1 U4 ( .IN1(n4), .IN2(n710), .IN3(N49), .IN4(n6), .IN5(clk_cnt[15]), 
        .IN6(N66), .Q(n168) );
  AO222X1 U6 ( .IN1(n4), .IN2(n163), .IN3(N48), .IN4(n6), .IN5(clk_cnt[14]), 
        .IN6(N66), .Q(n169) );
  AO222X1 U8 ( .IN1(n4), .IN2(n130), .IN3(N47), .IN4(n6), .IN5(clk_cnt[13]), 
        .IN6(N66), .Q(n170) );
  AO222X1 U10 ( .IN1(n4), .IN2(n1240), .IN3(N46), .IN4(n6), .IN5(clk_cnt[12]), 
        .IN6(N66), .Q(n171) );
  AO222X1 U12 ( .IN1(n4), .IN2(n121), .IN3(N45), .IN4(n6), .IN5(clk_cnt[11]), 
        .IN6(N66), .Q(n172) );
  AO222X1 U14 ( .IN1(n4), .IN2(n920), .IN3(N44), .IN4(n6), .IN5(clk_cnt[10]), 
        .IN6(N66), .Q(n173) );
  AO222X1 U16 ( .IN1(n4), .IN2(n900), .IN3(N43), .IN4(n6), .IN5(clk_cnt[9]), 
        .IN6(N66), .Q(n174) );
  AO222X1 U18 ( .IN1(n4), .IN2(n830), .IN3(N42), .IN4(n6), .IN5(clk_cnt[8]), 
        .IN6(N66), .Q(n175) );
  AO222X1 U20 ( .IN1(n4), .IN2(n800), .IN3(N41), .IN4(n6), .IN5(clk_cnt[7]), 
        .IN6(N66), .Q(n176) );
  AO222X1 U22 ( .IN1(n4), .IN2(n780), .IN3(N40), .IN4(n6), .IN5(clk_cnt[6]), 
        .IN6(N66), .Q(n177) );
  AO222X1 U24 ( .IN1(n4), .IN2(n77), .IN3(N39), .IN4(n6), .IN5(clk_cnt[5]), 
        .IN6(N66), .Q(n178) );
  AO222X1 U26 ( .IN1(n4), .IN2(n76), .IN3(N38), .IN4(n6), .IN5(clk_cnt[4]), 
        .IN6(N66), .Q(n179) );
  AO222X1 U28 ( .IN1(n4), .IN2(n75), .IN3(N37), .IN4(n6), .IN5(clk_cnt[3]), 
        .IN6(N66), .Q(n180) );
  AO222X1 U30 ( .IN1(n4), .IN2(n74), .IN3(N36), .IN4(n6), .IN5(clk_cnt[2]), 
        .IN6(N66), .Q(n181) );
  AO222X1 U32 ( .IN1(n4), .IN2(n720), .IN3(N35), .IN4(n6), .IN5(clk_cnt[1]), 
        .IN6(N66), .Q(n182) );
  AO222X1 U34 ( .IN1(n4), .IN2(n57), .IN3(N34), .IN4(n6), .IN5(clk_cnt[0]), 
        .IN6(N66), .Q(n183) );
  AO22X1 U39 ( .IN1(n470), .IN2(n5), .IN3(n460), .IN4(n19), .Q(n184) );
  OAI22X1 U40 ( .IN1(n24), .IN2(n139), .IN3(n25), .IN4(n1380), .QN(n185) );
  OAI21X1 U41 ( .IN1(n1380), .IN2(n24), .IN3(n26), .QN(n186) );
  NAND4X0 U42 ( .IN1(cmd[2]), .IN2(n450), .IN3(n212), .IN4(n210), .QN(n26) );
  AO22X1 U44 ( .IN1(n470), .IN2(n23), .IN3(n460), .IN4(n3), .Q(n187) );
  AO22X1 U45 ( .IN1(n470), .IN2(n3), .IN3(n460), .IN4(n10), .Q(n188) );
  AO22X1 U46 ( .IN1(n470), .IN2(n10), .IN3(n460), .IN4(n22), .Q(n189) );
  AO21X1 U47 ( .IN1(n470), .IN2(n22), .IN3(n340), .Q(n190) );
  NOR4X0 U48 ( .IN1(n350), .IN2(n64), .IN3(cmd[1]), .IN4(n25), .QN(n340) );
  OAI22X1 U51 ( .IN1(n24), .IN2(n133), .IN3(n25), .IN4(n165), .QN(n191) );
  AO22X1 U52 ( .IN1(n470), .IN2(n1), .IN3(n460), .IN4(n12), .Q(n192) );
  AO22X1 U53 ( .IN1(n470), .IN2(n12), .IN3(n460), .IN4(n28), .Q(n193) );
  AO22X1 U54 ( .IN1(n470), .IN2(n28), .IN3(n410), .IN4(cmd[1]), .Q(n194) );
  AND2X1 U55 ( .IN1(n450), .IN2(n370), .Q(n410) );
  AO22X1 U58 ( .IN1(n470), .IN2(n2), .IN3(n460), .IN4(n16), .Q(n195) );
  AO22X1 U59 ( .IN1(n470), .IN2(n16), .IN3(n460), .IN4(n9), .Q(n196) );
  AO22X1 U60 ( .IN1(n470), .IN2(n9), .IN3(n460), .IN4(n27), .Q(n197) );
  AO22X1 U61 ( .IN1(n470), .IN2(n27), .IN3(n460), .IN4(n11), .Q(n198) );
  OAI21X1 U63 ( .IN1(n166), .IN2(n24), .IN3(n480), .QN(n199) );
  OR4X1 U64 ( .IN1(n212), .IN2(n420), .IN3(cmd[1]), .IN4(cmd[2]), .Q(n480) );
  NAND3X0 U65 ( .IN1(n460), .IN2(n211), .IN3(n50), .QN(n420) );
  AO22X1 U67 ( .IN1(n470), .IN2(n17), .IN3(n460), .IN4(n5), .Q(n200) );
  NAND4X0 U73 ( .IN1(cmd[1]), .IN2(n370), .IN3(n211), .IN4(n18), .QN(n55) );
  AO22X1 U76 ( .IN1(scl_oen), .IN2(n56), .IN3(n51), .IN4(n58), .Q(n202) );
  NAND4X0 U77 ( .IN1(n1280), .IN2(n1290), .IN3(n59), .IN4(n60), .QN(n58) );
  NOR4X0 U78 ( .IN1(n5), .IN2(n19), .IN3(n1), .IN4(n12), .QN(n60) );
  AO21X1 U84 ( .IN1(n166), .IN2(n62), .IN3(n63), .Q(n61) );
  AO22X1 U85 ( .IN1(sda_oen), .IN2(n490), .IN3(n65), .IN4(n660), .Q(n203) );
  NAND4X0 U86 ( .IN1(n59), .IN2(n166), .IN3(n67), .IN4(n134), .QN(n660) );
  AND4X1 U91 ( .IN1(n133), .IN2(n52), .IN3(n158), .IN4(n700), .Q(n59) );
  AO221X1 U98 ( .IN1(n390), .IN2(n21), .IN3(n730), .IN4(n8), .IN5(n360), .Q(
        n204) );
  AO221X1 U99 ( .IN1(n390), .IN2(n8), .IN3(n730), .IN4(n14), .IN5(n360), .Q(
        n205) );
  AO221X1 U100 ( .IN1(n390), .IN2(n14), .IN3(n730), .IN4(cSCL_1_), .IN5(n360), 
        .Q(n206) );
  AO221X1 U101 ( .IN1(n390), .IN2(n20), .IN3(n730), .IN4(n7), .IN5(n360), .Q(
        n207) );
  AO221X1 U102 ( .IN1(n390), .IN2(n7), .IN3(n730), .IN4(n13), .IN5(n360), .Q(
        n208) );
  AO221X1 U103 ( .IN1(n390), .IN2(n13), .IN3(n730), .IN4(cSDA_1_), .IN5(n360), 
        .Q(n209) );
  AO22X1 U105 ( .IN1(n790), .IN2(dout), .IN3(sSDA), .IN4(n430), .Q(n162) );
  AO22X1 U108 ( .IN1(n810), .IN2(clk_cnt[9]), .IN3(N85), .IN4(n820), .Q(N99)
         );
  AO22X1 U109 ( .IN1(n810), .IN2(clk_cnt[8]), .IN3(N84), .IN4(n820), .Q(N98)
         );
  AO22X1 U110 ( .IN1(n810), .IN2(clk_cnt[7]), .IN3(N83), .IN4(n820), .Q(N97)
         );
  AO22X1 U111 ( .IN1(n810), .IN2(clk_cnt[6]), .IN3(N82), .IN4(n820), .Q(N96)
         );
  AO22X1 U112 ( .IN1(n810), .IN2(clk_cnt[5]), .IN3(N81), .IN4(n820), .Q(N95)
         );
  AO22X1 U113 ( .IN1(n810), .IN2(clk_cnt[4]), .IN3(N80), .IN4(n820), .Q(N94)
         );
  AO22X1 U114 ( .IN1(n810), .IN2(clk_cnt[3]), .IN3(N79), .IN4(n820), .Q(N93)
         );
  AO22X1 U115 ( .IN1(n810), .IN2(clk_cnt[2]), .IN3(N78), .IN4(n820), .Q(N92)
         );
  AND2X1 U117 ( .IN1(sda_i), .IN2(n380), .Q(N72) );
  AND2X1 U119 ( .IN1(scl_i), .IN2(n380), .Q(N70) );
  OR4X1 U121 ( .IN1(n860), .IN2(n870), .IN3(n880), .IN4(n890), .Q(n850) );
  NAND4X0 U122 ( .IN1(n148), .IN2(n149), .IN3(n150), .IN4(n151), .QN(n890) );
  NAND4X0 U123 ( .IN1(n152), .IN2(n153), .IN3(n154), .IN4(n155), .QN(n880) );
  NAND4X0 U124 ( .IN1(n140), .IN2(n141), .IN3(n142), .IN4(n143), .QN(n870) );
  NAND4X0 U125 ( .IN1(n144), .IN2(n145), .IN3(n146), .IN4(n147), .QN(n860) );
  OR3X1 U126 ( .IN1(n161), .IN2(sSCL), .IN3(n15), .Q(n840) );
  AND3X1 U130 ( .IN1(n930), .IN2(n18), .IN3(n52), .Q(N227) );
  OR2X1 U134 ( .IN1(n2), .IN2(n940), .Q(n930) );
  NAND4X0 U136 ( .IN1(sto_condition), .IN2(n164), .IN3(n64), .IN4(n380), .QN(
        n960) );
  NOR4X0 U140 ( .IN1(n990), .IN2(n1), .IN3(n69), .IN4(n940), .QN(n980) );
  NAND3X0 U141 ( .IN1(n133), .IN2(n137), .IN3(n127), .QN(n940) );
  NAND3X0 U142 ( .IN1(n139), .IN2(n156), .IN3(n1380), .QN(n69) );
  NAND3X0 U144 ( .IN1(n136), .IN2(n158), .IN3(n135), .QN(n990) );
  NOR4X0 U145 ( .IN1(n1000), .IN2(n9), .IN3(n2), .IN4(n16), .QN(n970) );
  NAND3X0 U149 ( .IN1(n132), .IN2(n134), .IN3(n1310), .QN(n1000) );
  NAND3X0 U151 ( .IN1(sda_chk), .IN2(n1010), .IN3(sda_oen), .QN(n950) );
  NOR3X0 U152 ( .IN1(n1020), .IN2(sto_condition), .IN3(n360), .QN(N131) );
  AND4X1 U154 ( .IN1(n380), .IN2(sSCL), .IN3(sSDA), .IN4(n118), .Q(N129) );
  NOR3X0 U155 ( .IN1(n440), .IN2(n118), .IN3(n400), .QN(N128) );
  AO221X1 U160 ( .IN1(n1030), .IN2(n13), .IN3(n7), .IN4(n20), .IN5(n360), .Q(
        N123) );
  AO221X1 U165 ( .IN1(n1040), .IN2(n14), .IN3(n8), .IN4(n21), .IN5(n360), .Q(
        N122) );
  AO22X1 U170 ( .IN1(n810), .IN2(clk_cnt[15]), .IN3(N91), .IN4(n820), .Q(N105)
         );
  AO22X1 U171 ( .IN1(n810), .IN2(clk_cnt[14]), .IN3(N90), .IN4(n820), .Q(N104)
         );
  AO22X1 U172 ( .IN1(n810), .IN2(clk_cnt[13]), .IN3(N89), .IN4(n820), .Q(N103)
         );
  AO22X1 U173 ( .IN1(n810), .IN2(clk_cnt[12]), .IN3(N88), .IN4(n820), .Q(N102)
         );
  AO22X1 U174 ( .IN1(n810), .IN2(clk_cnt[11]), .IN3(N87), .IN4(n820), .Q(N101)
         );
  AO22X1 U175 ( .IN1(n810), .IN2(clk_cnt[10]), .IN3(N86), .IN4(n820), .Q(N100)
         );
  NOR4X0 U181 ( .IN1(n108), .IN2(filter_cnt[4]), .IN3(filter_cnt[3]), .IN4(
        filter_cnt[5]), .QN(n107) );
  NAND4X0 U182 ( .IN1(n114), .IN2(n115), .IN3(n116), .IN4(n117), .QN(n108) );
  NOR4X0 U183 ( .IN1(n109), .IN2(filter_cnt[10]), .IN3(filter_cnt[0]), .IN4(
        filter_cnt[11]), .QN(n106) );
  NAND4X0 U184 ( .IN1(n110), .IN2(n111), .IN3(n112), .IN4(n113), .QN(n109) );
  i2c_master_bit_ctrl_DW01_dec_0 sub_260 ( .A(filter_cnt), .SUM({N91, N90, N89, 
        N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78}) );
  i2c_master_bit_ctrl_DW01_dec_1 sub_228 ( .A({n710, n163, n130, n1240, n121, 
        n920, n900, n830, n800, n780, n77, n76, n75, n74, n720, n57}), .SUM({
        N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34}) );
  DFFARX1 slave_wait_reg ( .D(N29), .CLK(clk), .RSTB(n290), .Q(n160), .QN(n54)
         );
  INVX0 U5 ( .INP(n380), .ZN(n360) );
  INVX0 U7 ( .INP(rst), .ZN(n380) );
  INVX0 U9 ( .INP(n25), .ZN(n460) );
  INVX0 U11 ( .INP(n730), .ZN(n390) );
  INVX0 U13 ( .INP(n420), .ZN(n450) );
  INVX0 U15 ( .INP(n50), .ZN(n64) );
  NBUFFX2 U17 ( .INP(nReset), .Z(n32) );
  NBUFFX2 U19 ( .INP(nReset), .Z(n31) );
  NBUFFX2 U21 ( .INP(nReset), .Z(n290) );
  NBUFFX2 U23 ( .INP(nReset), .Z(n30) );
  NBUFFX2 U25 ( .INP(nReset), .Z(n33) );
  NOR2X0 U27 ( .IN1(n4), .IN2(N66), .QN(n6) );
  NOR2X0 U29 ( .IN1(n1050), .IN2(n360), .QN(n730) );
  INVX0 U31 ( .INP(n24), .ZN(n470) );
  INVX0 U33 ( .INP(n63), .ZN(n52) );
  NAND2X1 U35 ( .IN1(n52), .IN2(n24), .QN(n25) );
  INVX0 U36 ( .INP(n1010), .ZN(n440) );
  NAND2X1 U37 ( .IN1(n400), .IN2(n380), .QN(N124) );
  NOR2X0 U38 ( .IN1(n11), .IN2(n62), .QN(n50) );
  NAND4X0 U43 ( .IN1(ena), .IN2(n840), .IN3(n850), .IN4(n380), .QN(N66) );
  NOR2X0 U49 ( .IN1(n54), .IN2(N66), .QN(n4) );
  NOR2X0 U50 ( .IN1(sSDA), .IN2(n360), .QN(n1010) );
  NAND2X1 U56 ( .IN1(n950), .IN2(n960), .QN(N138) );
  NAND2X1 U57 ( .IN1(n159), .IN2(n52), .QN(n24) );
  INVX0 U62 ( .INP(cmd[1]), .ZN(n210) );
  AND2X1 U66 ( .IN1(n730), .IN2(ena), .Q(n810) );
  NAND2X1 U68 ( .IN1(n157), .IN2(n380), .QN(n63) );
  NOR2X0 U69 ( .IN1(n3), .IN2(n10), .QN(n700) );
  INVX0 U70 ( .INP(n56), .ZN(n51) );
  NAND2X1 U71 ( .IN1(n61), .IN2(n24), .QN(n56) );
  INVX0 U72 ( .INP(n65), .ZN(n490) );
  OA21X1 U74 ( .IN1(n64), .IN2(n63), .IN3(n24), .Q(n65) );
  NAND2X1 U75 ( .IN1(cmd[3]), .IN2(n370), .QN(n350) );
  NOR2X0 U79 ( .IN1(sta_condition), .IN2(busy), .QN(n1020) );
  AND3X1 U80 ( .IN1(n1050), .IN2(n380), .IN3(ena), .Q(n820) );
  NOR2X0 U81 ( .IN1(n360), .IN2(n53), .QN(n201) );
  OA21X1 U82 ( .IN1(n164), .IN2(n18), .IN3(n55), .Q(n53) );
  NOR2X0 U83 ( .IN1(n360), .IN2(n119), .QN(N71) );
  NOR2X0 U87 ( .IN1(n360), .IN2(n120), .QN(N73) );
  NAND2X1 U88 ( .IN1(n1220), .IN2(n1230), .QN(n1030) );
  NAND2X1 U89 ( .IN1(n125), .IN2(n126), .QN(n1040) );
  NOR2X0 U90 ( .IN1(cmd[0]), .IN2(cmd[2]), .QN(n370) );
  NAND2X1 U92 ( .IN1(n970), .IN2(n980), .QN(n62) );
  NAND2X1 U93 ( .IN1(n106), .IN2(n107), .QN(n1050) );
  INVX0 U94 ( .INP(cmd[3]), .ZN(n211) );
  NOR2X0 U95 ( .IN1(n68), .IN2(n23), .QN(n67) );
  OA21X1 U96 ( .IN1(n17), .IN2(n69), .IN3(din), .Q(n68) );
  OA21X1 U97 ( .IN1(n910), .IN2(n160), .IN3(n400), .Q(N29) );
  NOR2X0 U104 ( .IN1(n15), .IN2(dscl_oen), .QN(n910) );
  INVX0 U106 ( .INP(cmd[0]), .ZN(n212) );
  INVX0 U107 ( .INP(n790), .ZN(n430) );
  NAND2X1 U116 ( .IN1(sSCL), .IN2(n161), .QN(n790) );
endmodule


module i2c_master_byte_ctrl ( clk, rst, nReset, ena, clk_cnt, start, stop, 
        read, write, ack_in, din, cmd_ack, ack_out, dout, i2c_busy, i2c_al, 
        scl_i, scl_o, scl_oen, sda_i, sda_o, sda_oen, VDD, VSS );
  input [15:0] clk_cnt;
  input [7:0] din;
  output [7:0] dout;
  input clk, rst, nReset, ena, start, stop, read, write, ack_in, scl_i, sda_i,
         VDD, VSS;
  output cmd_ack, ack_out, i2c_busy, i2c_al, scl_o, scl_oen, sda_o, sda_oen;
  wire   core_ack, core_txd, core_rxd, ld, shift, N104, N105, N106, N107, n7,
         n11, n13, n14, n15, n16, n17, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n1,
         n2, n3, n4, n5, n6, n8, n9, n10, n12, n18, n19, n83, n84;
  wire   [3:0] core_cmd;
  wire   [2:0] dcnt;
  wire   [4:0] c_state;
  assign scl_o = 1'b0;
  assign sda_o = 1'b0;

  DFFARX1 c_state_reg_0_ ( .D(n82), .CLK(clk), .RSTB(n2), .Q(c_state[0]), .QN(
        n17) );
  DFFARX1 ld_reg ( .D(N106), .CLK(clk), .RSTB(n2), .Q(ld), .QN(n11) );
  DFFARX1 sr_reg_7_ ( .D(n63), .CLK(clk), .RSTB(n2), .Q(dout[7]) );
  DFFARX1 core_txd_reg ( .D(N104), .CLK(clk), .RSTB(n2), .Q(core_txd) );
  DFFARX1 cmd_ack_reg ( .D(N107), .CLK(clk), .RSTB(n2), .Q(cmd_ack) );
  DFFARX1 c_state_reg_1_ ( .D(n77), .CLK(clk), .RSTB(n2), .Q(c_state[1]), .QN(
        n16) );
  DFFARX1 shift_reg ( .D(N105), .CLK(clk), .RSTB(n2), .Q(shift) );
  DFFARX1 sr_reg_0_ ( .D(n69), .CLK(clk), .RSTB(n2), .Q(dout[0]) );
  DFFARX1 sr_reg_1_ ( .D(n70), .CLK(clk), .RSTB(n2), .Q(dout[1]) );
  DFFARX1 sr_reg_2_ ( .D(n68), .CLK(clk), .RSTB(n2), .Q(dout[2]) );
  DFFARX1 sr_reg_3_ ( .D(n67), .CLK(clk), .RSTB(n2), .Q(dout[3]) );
  DFFARX1 sr_reg_4_ ( .D(n66), .CLK(clk), .RSTB(n1), .Q(dout[4]) );
  DFFARX1 sr_reg_5_ ( .D(n65), .CLK(clk), .RSTB(n1), .Q(dout[5]) );
  DFFARX1 sr_reg_6_ ( .D(n64), .CLK(clk), .RSTB(n1), .Q(dout[6]) );
  DFFARX1 dcnt_reg_0_ ( .D(n79), .CLK(clk), .RSTB(n1), .Q(dcnt[0]) );
  DFFARX1 dcnt_reg_1_ ( .D(n80), .CLK(clk), .RSTB(n1), .Q(dcnt[1]), .QN(n7) );
  DFFARX1 dcnt_reg_2_ ( .D(n78), .CLK(clk), .RSTB(n1), .Q(dcnt[2]) );
  DFFARX1 c_state_reg_2_ ( .D(n76), .CLK(clk), .RSTB(n1), .Q(c_state[2]), .QN(
        n15) );
  DFFARX1 c_state_reg_3_ ( .D(n75), .CLK(clk), .RSTB(n1), .Q(c_state[3]), .QN(
        n14) );
  DFFARX1 core_cmd_reg_1_ ( .D(n73), .CLK(clk), .RSTB(n1), .Q(core_cmd[1]) );
  DFFARX1 core_cmd_reg_2_ ( .D(n72), .CLK(clk), .RSTB(n1), .Q(core_cmd[2]) );
  DFFARX1 core_cmd_reg_3_ ( .D(n71), .CLK(clk), .RSTB(n1), .Q(core_cmd[3]) );
  DFFARX1 c_state_reg_4_ ( .D(n81), .CLK(clk), .RSTB(n1), .Q(c_state[4]), .QN(
        n13) );
  DFFARX1 core_cmd_reg_0_ ( .D(n74), .CLK(clk), .RSTB(n1), .Q(core_cmd[0]) );
  DFFARX1 ack_out_reg ( .D(n62), .CLK(clk), .RSTB(n1), .Q(ack_out) );
  AOI22X1 U36 ( .IN1(core_rxd), .IN2(n9), .IN3(ack_out), .IN4(n21), .QN(n20)
         );
  AO222X1 U37 ( .IN1(din[7]), .IN2(n19), .IN3(dout[6]), .IN4(n12), .IN5(
        dout[7]), .IN6(n22), .Q(n63) );
  AO222X1 U38 ( .IN1(din[6]), .IN2(n19), .IN3(dout[5]), .IN4(n12), .IN5(n22), 
        .IN6(dout[6]), .Q(n64) );
  AO222X1 U39 ( .IN1(din[5]), .IN2(n19), .IN3(dout[4]), .IN4(n12), .IN5(
        dout[5]), .IN6(n22), .Q(n65) );
  AO222X1 U40 ( .IN1(din[4]), .IN2(n19), .IN3(dout[3]), .IN4(n12), .IN5(
        dout[4]), .IN6(n22), .Q(n66) );
  AO222X1 U41 ( .IN1(din[3]), .IN2(n19), .IN3(dout[2]), .IN4(n12), .IN5(
        dout[3]), .IN6(n22), .Q(n67) );
  AO222X1 U42 ( .IN1(din[2]), .IN2(n19), .IN3(dout[1]), .IN4(n12), .IN5(
        dout[2]), .IN6(n22), .Q(n68) );
  AO222X1 U43 ( .IN1(din[0]), .IN2(n19), .IN3(n12), .IN4(core_rxd), .IN5(
        dout[0]), .IN6(n22), .Q(n69) );
  AO222X1 U44 ( .IN1(din[1]), .IN2(n19), .IN3(dout[0]), .IN4(n12), .IN5(
        dout[1]), .IN6(n22), .Q(n70) );
  NOR3X0 U45 ( .IN1(n19), .IN2(rst), .IN3(n12), .QN(n22) );
  NAND4X0 U46 ( .IN1(n23), .IN2(n24), .IN3(n25), .IN4(n26), .QN(n71) );
  NAND3X0 U47 ( .IN1(n27), .IN2(n83), .IN3(c_state[1]), .QN(n24) );
  NAND4X0 U48 ( .IN1(n29), .IN2(n30), .IN3(n31), .IN4(n32), .QN(n72) );
  NAND3X0 U49 ( .IN1(n27), .IN2(n83), .IN3(c_state[2]), .QN(n30) );
  AO22X1 U50 ( .IN1(core_cmd[1]), .IN2(n28), .IN3(n27), .IN4(n33), .Q(n73) );
  AO21X1 U51 ( .IN1(core_cmd[0]), .IN2(n28), .IN3(n34), .Q(n74) );
  NAND3X0 U52 ( .IN1(n32), .IN2(n26), .IN3(n35), .QN(n75) );
  NAND3X0 U53 ( .IN1(n27), .IN2(n36), .IN3(c_state[2]), .QN(n26) );
  NAND3X0 U54 ( .IN1(n27), .IN2(n36), .IN3(c_state[1]), .QN(n32) );
  AO21X1 U55 ( .IN1(c_state[2]), .IN2(n37), .IN3(n5), .Q(n76) );
  NAND3X0 U56 ( .IN1(n38), .IN2(n84), .IN3(n27), .QN(n31) );
  AO21X1 U57 ( .IN1(write), .IN2(n39), .IN3(c_state[0]), .Q(n38) );
  AO21X1 U58 ( .IN1(c_state[1]), .IN2(n37), .IN3(n4), .Q(n77) );
  NAND3X0 U59 ( .IN1(n27), .IN2(n40), .IN3(read), .QN(n25) );
  OR2X1 U60 ( .IN1(c_state[0]), .IN2(n39), .Q(n40) );
  AO21X1 U61 ( .IN1(n41), .IN2(n83), .IN3(n28), .Q(n37) );
  AO221X1 U62 ( .IN1(n36), .IN2(n12), .IN3(dcnt[2]), .IN4(n42), .IN5(n19), .Q(
        n78) );
  AO21X1 U63 ( .IN1(dcnt[1]), .IN2(n12), .IN3(n43), .Q(n42) );
  NAND3X0 U64 ( .IN1(n18), .IN2(n44), .IN3(n45), .QN(n79) );
  AO221X1 U65 ( .IN1(n47), .IN2(n7), .IN3(dcnt[1]), .IN4(n43), .IN5(n19), .Q(
        n80) );
  AO21X1 U66 ( .IN1(dcnt[0]), .IN2(n12), .IN3(n46), .Q(n43) );
  NAND3X0 U67 ( .IN1(n11), .IN2(n3), .IN3(shift), .QN(n48) );
  AO22X1 U68 ( .IN1(c_state[4]), .IN2(n28), .IN3(n27), .IN4(n33), .Q(n81) );
  AO22X1 U69 ( .IN1(stop), .IN2(c_state[3]), .IN3(n49), .IN4(n39), .Q(n33) );
  AO21X1 U70 ( .IN1(c_state[0]), .IN2(n28), .IN3(n34), .Q(n82) );
  AND3X1 U71 ( .IN1(n27), .IN2(n10), .IN3(start), .Q(n34) );
  AO22X1 U73 ( .IN1(n8), .IN2(c_state[0]), .IN3(n54), .IN4(n51), .Q(N106) );
  AOI21X1 U74 ( .IN1(n55), .IN2(n84), .IN3(cmd_ack), .QN(n51) );
  NAND4X0 U75 ( .IN1(n14), .IN2(n13), .IN3(n15), .IN4(n56), .QN(n50) );
  NOR3X0 U76 ( .IN1(dcnt[1]), .IN2(dcnt[2]), .IN3(dcnt[0]), .QN(n36) );
  AND2X1 U77 ( .IN1(n41), .IN2(n58), .Q(N104) );
  AO221X1 U78 ( .IN1(ack_in), .IN2(n59), .IN3(dout[7]), .IN4(n60), .IN5(n9), 
        .Q(n58) );
  NAND4X0 U79 ( .IN1(n15), .IN2(n13), .IN3(n17), .IN4(n61), .QN(n60) );
  OA22X1 U80 ( .IN1(c_state[3]), .IN2(c_state[1]), .IN3(core_ack), .IN4(n16), 
        .Q(n61) );
  AO21X1 U81 ( .IN1(c_state[1]), .IN2(core_ack), .IN3(c_state[3]), .Q(n59) );
  i2c_master_bit_ctrl bit_controller ( .clk(clk), .rst(rst), .nReset(n1), 
        .ena(ena), .clk_cnt(clk_cnt), .cmd(core_cmd), .cmd_ack(core_ack), 
        .busy(i2c_busy), .al(i2c_al), .din(core_txd), .dout(core_rxd), .scl_i(
        scl_i), .scl_oen(scl_oen), .sda_i(sda_i), .sda_oen(sda_oen), .VDD(VDD), 
        .VSS(VSS) );
  NOR2X0 U3 ( .IN1(n12), .IN2(rst), .QN(n46) );
  INVX0 U4 ( .INP(rst), .ZN(n3) );
  INVX0 U5 ( .INP(n48), .ZN(n12) );
  NOR2X0 U6 ( .IN1(n6), .IN2(n28), .QN(n27) );
  INVX0 U7 ( .INP(n41), .ZN(n6) );
  INVX0 U8 ( .INP(n44), .ZN(n19) );
  INVX0 U9 ( .INP(n53), .ZN(n8) );
  INVX0 U10 ( .INP(n36), .ZN(n83) );
  INVX0 U11 ( .INP(n50), .ZN(n10) );
  INVX0 U12 ( .INP(n21), .ZN(n9) );
  DELLN1X2 U13 ( .INP(nReset), .Z(n1) );
  NBUFFX2 U14 ( .INP(nReset), .Z(n2) );
  NOR2X0 U15 ( .IN1(i2c_al), .IN2(rst), .QN(n41) );
  NAND2X1 U16 ( .IN1(core_cmd[3]), .IN2(n28), .QN(n23) );
  NAND2X1 U17 ( .IN1(core_cmd[2]), .IN2(n28), .QN(n29) );
  AOI221X1 U18 ( .IN1(core_ack), .IN2(n50), .IN3(n51), .IN4(n10), .IN5(n6), 
        .QN(n28) );
  NAND2X1 U19 ( .IN1(n28), .IN2(c_state[3]), .QN(n35) );
  INVX0 U20 ( .INP(n25), .ZN(n4) );
  INVX0 U21 ( .INP(n31), .ZN(n5) );
  NOR2X0 U22 ( .IN1(n6), .IN2(n50), .QN(n54) );
  NOR2X0 U23 ( .IN1(n48), .IN2(dcnt[0]), .QN(n47) );
  NAND2X1 U24 ( .IN1(n41), .IN2(core_ack), .QN(n53) );
  NOR2X0 U25 ( .IN1(n20), .IN2(n6), .QN(n62) );
  NAND2X1 U26 ( .IN1(ld), .IN2(n3), .QN(n44) );
  INVX0 U27 ( .INP(n47), .ZN(n18) );
  NAND2X1 U28 ( .IN1(n46), .IN2(dcnt[0]), .QN(n45) );
  NOR2X0 U29 ( .IN1(n52), .IN2(n53), .QN(N107) );
  OA21X1 U30 ( .IN1(stop), .IN2(n14), .IN3(n13), .Q(n52) );
  OA21X1 U31 ( .IN1(n57), .IN2(c_state[1]), .IN3(n8), .Q(N105) );
  NOR2X0 U32 ( .IN1(n36), .IN2(n15), .QN(n57) );
  NOR2X0 U33 ( .IN1(c_state[1]), .IN2(c_state[0]), .QN(n56) );
  NOR2X0 U34 ( .IN1(n50), .IN2(start), .QN(n39) );
  NAND2X1 U35 ( .IN1(core_ack), .IN2(c_state[3]), .QN(n21) );
  NOR2X0 U72 ( .IN1(write), .IN2(read), .QN(n49) );
  NOR2X0 U82 ( .IN1(write), .IN2(stop), .QN(n55) );
  INVX0 U83 ( .INP(read), .ZN(n84) );
endmodule


module i2c_master_top ( wb_clk_i, wb_rst_i, arst_i, wb_adr_i, wb_dat_i, 
        wb_dat_o, wb_we_i, wb_stb_i, wb_cyc_i, wb_ack_o, wb_inta_o, scl_pad_i, 
        scl_pad_o, scl_padoen_o, sda_pad_i, sda_pad_o, sda_padoen_o, VDD, VSS
 );
  input [2:0] wb_adr_i;
  input [7:0] wb_dat_i;
  output [7:0] wb_dat_o;
  input wb_clk_i, wb_rst_i, arst_i, wb_we_i, wb_stb_i, wb_cyc_i, scl_pad_i,
         sda_pad_i, VDD, VSS;
  output wb_ack_o, wb_inta_o, scl_pad_o, scl_padoen_o, sda_pad_o, sda_padoen_o;
  wire   N15, sr_1, sr_0, N38, N39, N40, N41, N42, N43, N44, N45, done, i2c_al,
         irxack, N99, N100, N101, N102, N106, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n150, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n35, n36, n37, n380, n390, n400, n410, n420, n430,
         n440, n450, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n990, n1000, n1010, n1020, n103, n104, n105, n1060, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n128, n129, n130, n131, n132,
         n133, n134, n135, n136;
  wire   [15:0] prer;
  wire   [7:0] ctr;
  wire   [7:0] rxr;
  wire   [7:5] sr;
  wire   [7:0] txr;
  wire   [7:0] cr;
  assign scl_pad_o = 1'b0;
  assign sda_pad_o = 1'b0;

  DFFX1 wb_ack_o_reg ( .D(N15), .CLK(wb_clk_i), .Q(wb_ack_o), .QN(n4) );
  DFFARX1 txr_reg_7_ ( .D(n125), .CLK(wb_clk_i), .RSTB(n128), .Q(txr[7]) );
  DFFARX1 txr_reg_6_ ( .D(n124), .CLK(wb_clk_i), .RSTB(n129), .Q(txr[6]) );
  DFFARX1 txr_reg_5_ ( .D(n123), .CLK(wb_clk_i), .RSTB(arst_i), .Q(txr[5]) );
  DFFARX1 txr_reg_4_ ( .D(n122), .CLK(wb_clk_i), .RSTB(arst_i), .Q(txr[4]) );
  DFFARX1 txr_reg_3_ ( .D(n121), .CLK(wb_clk_i), .RSTB(arst_i), .Q(txr[3]) );
  DFFARX1 txr_reg_2_ ( .D(n120), .CLK(wb_clk_i), .RSTB(n129), .Q(txr[2]) );
  DFFARX1 txr_reg_1_ ( .D(n119), .CLK(wb_clk_i), .RSTB(arst_i), .Q(txr[1]) );
  DFFARX1 txr_reg_0_ ( .D(n118), .CLK(wb_clk_i), .RSTB(arst_i), .Q(txr[0]) );
  DFFASX1 prer_reg_15_ ( .D(n117), .CLK(wb_clk_i), .SETB(arst_i), .Q(prer[15]), 
        .QN(n5) );
  DFFASX1 prer_reg_14_ ( .D(n116), .CLK(wb_clk_i), .SETB(arst_i), .Q(prer[14]), 
        .QN(n6) );
  DFFASX1 prer_reg_13_ ( .D(n115), .CLK(wb_clk_i), .SETB(arst_i), .Q(prer[13]), 
        .QN(n7) );
  DFFASX1 prer_reg_12_ ( .D(n114), .CLK(wb_clk_i), .SETB(n128), .Q(prer[12]), 
        .QN(n8) );
  DFFASX1 prer_reg_11_ ( .D(n113), .CLK(wb_clk_i), .SETB(arst_i), .Q(prer[11]), 
        .QN(n9) );
  DFFASX1 prer_reg_10_ ( .D(n112), .CLK(wb_clk_i), .SETB(n129), .Q(prer[10]), 
        .QN(n10) );
  DFFASX1 prer_reg_9_ ( .D(n111), .CLK(wb_clk_i), .SETB(arst_i), .Q(prer[9]), 
        .QN(n11) );
  DFFASX1 prer_reg_8_ ( .D(n110), .CLK(wb_clk_i), .SETB(arst_i), .Q(prer[8]), 
        .QN(n12) );
  DFFASX1 prer_reg_7_ ( .D(n109), .CLK(wb_clk_i), .SETB(arst_i), .Q(prer[7]), 
        .QN(n13) );
  DFFASX1 prer_reg_6_ ( .D(n108), .CLK(wb_clk_i), .SETB(arst_i), .Q(prer[6]), 
        .QN(n14) );
  DFFASX1 prer_reg_5_ ( .D(n107), .CLK(wb_clk_i), .SETB(arst_i), .Q(prer[5]), 
        .QN(n150) );
  DFFASX1 prer_reg_4_ ( .D(n1060), .CLK(wb_clk_i), .SETB(arst_i), .Q(prer[4]), 
        .QN(n16) );
  DFFASX1 prer_reg_3_ ( .D(n105), .CLK(wb_clk_i), .SETB(arst_i), .Q(prer[3]), 
        .QN(n17) );
  DFFASX1 prer_reg_2_ ( .D(n104), .CLK(wb_clk_i), .SETB(arst_i), .Q(prer[2]), 
        .QN(n18) );
  DFFASX1 prer_reg_1_ ( .D(n103), .CLK(wb_clk_i), .SETB(arst_i), .Q(prer[1]), 
        .QN(n19) );
  DFFASX1 prer_reg_0_ ( .D(n1020), .CLK(wb_clk_i), .SETB(arst_i), .Q(prer[0]), 
        .QN(n20) );
  DFFARX1 ctr_reg_7_ ( .D(n1010), .CLK(wb_clk_i), .RSTB(n129), .Q(ctr[7]), 
        .QN(n21) );
  DFFARX1 ctr_reg_6_ ( .D(n1000), .CLK(wb_clk_i), .RSTB(n129), .Q(ctr[6]), 
        .QN(n22) );
  DFFARX1 ctr_reg_5_ ( .D(n990), .CLK(wb_clk_i), .RSTB(n129), .Q(ctr[5]), .QN(
        n23) );
  DFFARX1 ctr_reg_4_ ( .D(n98), .CLK(wb_clk_i), .RSTB(n129), .Q(ctr[4]), .QN(
        n24) );
  DFFARX1 ctr_reg_3_ ( .D(n97), .CLK(wb_clk_i), .RSTB(n129), .Q(ctr[3]), .QN(
        n25) );
  DFFARX1 ctr_reg_2_ ( .D(n96), .CLK(wb_clk_i), .RSTB(n129), .Q(ctr[2]), .QN(
        n26) );
  DFFARX1 ctr_reg_1_ ( .D(n95), .CLK(wb_clk_i), .RSTB(n129), .Q(ctr[1]), .QN(
        n27) );
  DFFARX1 ctr_reg_0_ ( .D(n94), .CLK(wb_clk_i), .RSTB(n129), .Q(ctr[0]), .QN(
        n28) );
  DFFARX1 cr_reg_3_ ( .D(n93), .CLK(wb_clk_i), .RSTB(n129), .Q(cr[3]) );
  DFFARX1 cr_reg_7_ ( .D(n89), .CLK(wb_clk_i), .RSTB(n128), .Q(cr[7]), .QN(n29) );
  DFFARX1 cr_reg_6_ ( .D(n90), .CLK(wb_clk_i), .RSTB(n128), .Q(cr[6]) );
  DFFX1 wb_dat_o_reg_6_ ( .D(N44), .CLK(wb_clk_i), .Q(wb_dat_o[6]) );
  DFFARX1 cr_reg_5_ ( .D(n91), .CLK(wb_clk_i), .RSTB(n129), .Q(cr[5]) );
  DFFARX1 cr_reg_4_ ( .D(n92), .CLK(wb_clk_i), .RSTB(n128), .Q(cr[4]) );
  DFFX1 wb_dat_o_reg_4_ ( .D(N42), .CLK(wb_clk_i), .Q(wb_dat_o[4]) );
  DFFX1 wb_dat_o_reg_3_ ( .D(N41), .CLK(wb_clk_i), .Q(wb_dat_o[3]) );
  DFFARX1 cr_reg_2_ ( .D(n88), .CLK(wb_clk_i), .RSTB(n128), .Q(cr[2]) );
  DFFX1 wb_dat_o_reg_2_ ( .D(N40), .CLK(wb_clk_i), .Q(wb_dat_o[2]) );
  DFFARX1 cr_reg_1_ ( .D(n87), .CLK(wb_clk_i), .RSTB(n128), .Q(cr[1]) );
  DFFARX1 cr_reg_0_ ( .D(n86), .CLK(wb_clk_i), .RSTB(n128), .Q(cr[0]) );
  DFFARX1 irq_flag_reg ( .D(N102), .CLK(wb_clk_i), .RSTB(n128), .Q(sr_0), .QN(
        n126) );
  DFFX1 wb_dat_o_reg_0_ ( .D(N38), .CLK(wb_clk_i), .Q(wb_dat_o[0]) );
  DFFARX1 al_reg ( .D(N99), .CLK(wb_clk_i), .RSTB(n128), .Q(sr[5]) );
  DFFX1 wb_dat_o_reg_5_ ( .D(N43), .CLK(wb_clk_i), .Q(wb_dat_o[5]) );
  DFFARX1 rxack_reg ( .D(N100), .CLK(wb_clk_i), .RSTB(n128), .Q(sr[7]) );
  DFFX1 wb_dat_o_reg_7_ ( .D(N45), .CLK(wb_clk_i), .Q(wb_dat_o[7]) );
  DFFARX1 tip_reg ( .D(N101), .CLK(wb_clk_i), .RSTB(n128), .Q(sr_1) );
  DFFX1 wb_dat_o_reg_1_ ( .D(N39), .CLK(wb_clk_i), .Q(wb_dat_o[1]) );
  DFFARX1 wb_inta_o_reg ( .D(N106), .CLK(wb_clk_i), .RSTB(n128), .Q(wb_inta_o)
         );
  AO22X1 U36 ( .IN1(cr[0]), .IN2(n35), .IN3(wb_dat_i[0]), .IN4(n36), .Q(n86)
         );
  AO22X1 U37 ( .IN1(cr[1]), .IN2(n35), .IN3(wb_dat_i[1]), .IN4(n36), .Q(n87)
         );
  AO22X1 U38 ( .IN1(cr[2]), .IN2(n35), .IN3(wb_dat_i[2]), .IN4(n36), .Q(n88)
         );
  AND2X1 U39 ( .IN1(n131), .IN2(n380), .Q(n35) );
  AO22X1 U40 ( .IN1(cr[7]), .IN2(n390), .IN3(wb_dat_i[7]), .IN4(n400), .Q(n89)
         );
  AO22X1 U41 ( .IN1(cr[6]), .IN2(n390), .IN3(wb_dat_i[6]), .IN4(n400), .Q(n90)
         );
  AO22X1 U42 ( .IN1(cr[5]), .IN2(n390), .IN3(wb_dat_i[5]), .IN4(n400), .Q(n91)
         );
  AO22X1 U43 ( .IN1(cr[4]), .IN2(n390), .IN3(wb_dat_i[4]), .IN4(n400), .Q(n92)
         );
  AND3X1 U44 ( .IN1(n380), .IN2(n130), .IN3(n410), .Q(n390) );
  AO21X1 U45 ( .IN1(wb_we_i), .IN2(wb_ack_o), .IN3(n420), .Q(n410) );
  NAND4X0 U46 ( .IN1(wb_dat_i[3]), .IN2(ctr[7]), .IN3(n131), .IN4(n450), .QN(
        n440) );
  NAND3X0 U47 ( .IN1(n380), .IN2(n130), .IN3(cr[3]), .QN(n430) );
  NAND3X0 U48 ( .IN1(n131), .IN2(n450), .IN3(ctr[7]), .QN(n380) );
  AO22X1 U49 ( .IN1(ctr[0]), .IN2(n46), .IN3(n47), .IN4(wb_dat_i[0]), .Q(n94)
         );
  AO22X1 U50 ( .IN1(ctr[1]), .IN2(n46), .IN3(n47), .IN4(wb_dat_i[1]), .Q(n95)
         );
  AO22X1 U51 ( .IN1(ctr[2]), .IN2(n46), .IN3(n47), .IN4(wb_dat_i[2]), .Q(n96)
         );
  AO22X1 U52 ( .IN1(ctr[3]), .IN2(n46), .IN3(n47), .IN4(wb_dat_i[3]), .Q(n97)
         );
  AO22X1 U53 ( .IN1(ctr[4]), .IN2(n46), .IN3(n47), .IN4(wb_dat_i[4]), .Q(n98)
         );
  AO22X1 U54 ( .IN1(ctr[5]), .IN2(n46), .IN3(n47), .IN4(wb_dat_i[5]), .Q(n990)
         );
  AO22X1 U55 ( .IN1(ctr[6]), .IN2(n46), .IN3(n47), .IN4(wb_dat_i[6]), .Q(n1000) );
  AO22X1 U56 ( .IN1(n46), .IN2(ctr[7]), .IN3(n47), .IN4(wb_dat_i[7]), .Q(n1010) );
  AO221X1 U57 ( .IN1(n49), .IN2(wb_dat_i[0]), .IN3(prer[0]), .IN4(n133), .IN5(
        wb_rst_i), .Q(n1020) );
  AO221X1 U58 ( .IN1(n49), .IN2(wb_dat_i[1]), .IN3(prer[1]), .IN4(n133), .IN5(
        wb_rst_i), .Q(n103) );
  AO221X1 U59 ( .IN1(n49), .IN2(wb_dat_i[2]), .IN3(prer[2]), .IN4(n133), .IN5(
        wb_rst_i), .Q(n104) );
  AO221X1 U60 ( .IN1(n49), .IN2(wb_dat_i[3]), .IN3(prer[3]), .IN4(n133), .IN5(
        wb_rst_i), .Q(n105) );
  AO221X1 U61 ( .IN1(n49), .IN2(wb_dat_i[4]), .IN3(prer[4]), .IN4(n133), .IN5(
        wb_rst_i), .Q(n1060) );
  AO221X1 U62 ( .IN1(n49), .IN2(wb_dat_i[5]), .IN3(prer[5]), .IN4(n133), .IN5(
        wb_rst_i), .Q(n107) );
  AO221X1 U63 ( .IN1(n49), .IN2(wb_dat_i[6]), .IN3(prer[6]), .IN4(n133), .IN5(
        wb_rst_i), .Q(n108) );
  AO221X1 U64 ( .IN1(n49), .IN2(wb_dat_i[7]), .IN3(prer[7]), .IN4(n133), .IN5(
        wb_rst_i), .Q(n109) );
  AO221X1 U65 ( .IN1(n51), .IN2(wb_dat_i[0]), .IN3(prer[8]), .IN4(n132), .IN5(
        wb_rst_i), .Q(n110) );
  AO221X1 U66 ( .IN1(n51), .IN2(wb_dat_i[1]), .IN3(prer[9]), .IN4(n132), .IN5(
        wb_rst_i), .Q(n111) );
  AO221X1 U67 ( .IN1(n51), .IN2(wb_dat_i[2]), .IN3(prer[10]), .IN4(n132), 
        .IN5(wb_rst_i), .Q(n112) );
  AO221X1 U68 ( .IN1(n51), .IN2(wb_dat_i[3]), .IN3(prer[11]), .IN4(n132), 
        .IN5(wb_rst_i), .Q(n113) );
  AO221X1 U69 ( .IN1(n51), .IN2(wb_dat_i[4]), .IN3(prer[12]), .IN4(n132), 
        .IN5(wb_rst_i), .Q(n114) );
  AO221X1 U70 ( .IN1(n51), .IN2(wb_dat_i[5]), .IN3(prer[13]), .IN4(n132), 
        .IN5(wb_rst_i), .Q(n115) );
  AO221X1 U71 ( .IN1(n51), .IN2(wb_dat_i[6]), .IN3(prer[14]), .IN4(n132), 
        .IN5(wb_rst_i), .Q(n116) );
  AO221X1 U72 ( .IN1(n51), .IN2(wb_dat_i[7]), .IN3(prer[15]), .IN4(n132), 
        .IN5(wb_rst_i), .Q(n117) );
  AO22X1 U73 ( .IN1(txr[0]), .IN2(n53), .IN3(n54), .IN4(wb_dat_i[0]), .Q(n118)
         );
  AO22X1 U74 ( .IN1(txr[1]), .IN2(n53), .IN3(n54), .IN4(wb_dat_i[1]), .Q(n119)
         );
  AO22X1 U75 ( .IN1(txr[2]), .IN2(n53), .IN3(n54), .IN4(wb_dat_i[2]), .Q(n120)
         );
  AO22X1 U76 ( .IN1(txr[3]), .IN2(n53), .IN3(n54), .IN4(wb_dat_i[3]), .Q(n121)
         );
  AO22X1 U77 ( .IN1(txr[4]), .IN2(n53), .IN3(n54), .IN4(wb_dat_i[4]), .Q(n122)
         );
  AO22X1 U78 ( .IN1(txr[5]), .IN2(n53), .IN3(n54), .IN4(wb_dat_i[5]), .Q(n123)
         );
  AO22X1 U79 ( .IN1(txr[6]), .IN2(n53), .IN3(n54), .IN4(wb_dat_i[6]), .Q(n124)
         );
  AO22X1 U80 ( .IN1(txr[7]), .IN2(n53), .IN3(n54), .IN4(wb_dat_i[7]), .Q(n125)
         );
  NAND3X0 U82 ( .IN1(wb_ack_o), .IN2(n130), .IN3(wb_we_i), .QN(n37) );
  AOI21X1 U83 ( .IN1(n29), .IN2(sr[5]), .IN3(i2c_al), .QN(n56) );
  NAND4X0 U84 ( .IN1(n57), .IN2(n58), .IN3(n59), .IN4(n60), .QN(N45) );
  OA222X1 U85 ( .IN1(n50), .IN2(n13), .IN3(n21), .IN4(n48), .IN5(n52), .IN6(n5), .Q(n60) );
  AOI22X1 U86 ( .IN1(cr[7]), .IN2(n61), .IN3(txr[7]), .IN4(n62), .QN(n59) );
  NAND4X0 U87 ( .IN1(n63), .IN2(n64), .IN3(n65), .IN4(n66), .QN(N44) );
  OA222X1 U88 ( .IN1(n50), .IN2(n14), .IN3(n48), .IN4(n22), .IN5(n52), .IN6(n6), .Q(n66) );
  AOI22X1 U89 ( .IN1(cr[6]), .IN2(n61), .IN3(txr[6]), .IN4(n62), .QN(n65) );
  NAND4X0 U90 ( .IN1(n67), .IN2(n68), .IN3(n69), .IN4(n70), .QN(N43) );
  OA222X1 U91 ( .IN1(n50), .IN2(n150), .IN3(n48), .IN4(n23), .IN5(n52), .IN6(
        n7), .Q(n70) );
  AOI22X1 U92 ( .IN1(cr[5]), .IN2(n61), .IN3(txr[5]), .IN4(n62), .QN(n69) );
  AOI222X1 U93 ( .IN1(rxr[4]), .IN2(n55), .IN3(n61), .IN4(cr[4]), .IN5(n62), 
        .IN6(txr[4]), .QN(n72) );
  OA222X1 U94 ( .IN1(n50), .IN2(n16), .IN3(n48), .IN4(n24), .IN5(n52), .IN6(n8), .Q(n71) );
  AOI222X1 U95 ( .IN1(rxr[3]), .IN2(n55), .IN3(n61), .IN4(cr[3]), .IN5(n62), 
        .IN6(txr[3]), .QN(n74) );
  OA222X1 U96 ( .IN1(n50), .IN2(n17), .IN3(n48), .IN4(n25), .IN5(n52), .IN6(n9), .Q(n73) );
  AOI222X1 U97 ( .IN1(rxr[2]), .IN2(n55), .IN3(n61), .IN4(cr[2]), .IN5(n62), 
        .IN6(txr[2]), .QN(n76) );
  OA222X1 U98 ( .IN1(n50), .IN2(n18), .IN3(n48), .IN4(n26), .IN5(n52), .IN6(
        n10), .Q(n75) );
  NAND4X0 U99 ( .IN1(n77), .IN2(n78), .IN3(n79), .IN4(n80), .QN(N39) );
  OA222X1 U100 ( .IN1(n50), .IN2(n19), .IN3(n48), .IN4(n27), .IN5(n52), .IN6(
        n11), .Q(n80) );
  AOI22X1 U101 ( .IN1(cr[1]), .IN2(n61), .IN3(txr[1]), .IN4(n62), .QN(n79) );
  NAND4X0 U102 ( .IN1(n81), .IN2(n82), .IN3(n83), .IN4(n84), .QN(N38) );
  OA222X1 U103 ( .IN1(n50), .IN2(n20), .IN3(n48), .IN4(n28), .IN5(n52), .IN6(
        n12), .Q(n84) );
  NAND3X0 U104 ( .IN1(n135), .IN2(n134), .IN3(wb_adr_i[0]), .QN(n52) );
  NAND3X0 U105 ( .IN1(n136), .IN2(n134), .IN3(wb_adr_i[1]), .QN(n48) );
  NAND3X0 U106 ( .IN1(n135), .IN2(n134), .IN3(n136), .QN(n50) );
  AOI22X1 U107 ( .IN1(cr[0]), .IN2(n61), .IN3(txr[0]), .IN4(n62), .QN(n83) );
  NOR3X0 U108 ( .IN1(n134), .IN2(wb_adr_i[1]), .IN3(n136), .QN(n62) );
  NOR3X0 U109 ( .IN1(n134), .IN2(wb_adr_i[0]), .IN3(n135), .QN(n61) );
  AND3X1 U110 ( .IN1(n136), .IN2(n135), .IN3(wb_adr_i[2]), .Q(n450) );
  AND3X1 U111 ( .IN1(wb_adr_i[1]), .IN2(n134), .IN3(wb_adr_i[0]), .Q(n55) );
  AND3X1 U112 ( .IN1(wb_cyc_i), .IN2(n4), .IN3(wb_stb_i), .Q(N15) );
  AND3X1 U113 ( .IN1(sr_0), .IN2(n130), .IN3(ctr[6]), .Q(N106) );
  NOR3X0 U114 ( .IN1(n85), .IN2(wb_rst_i), .IN3(cr[0]), .QN(N102) );
  AND2X1 U115 ( .IN1(irxack), .IN2(n130), .Q(N100) );
  i2c_master_byte_ctrl byte_controller ( .clk(wb_clk_i), .rst(wb_rst_i), 
        .nReset(arst_i), .ena(ctr[7]), .clk_cnt(prer), .start(cr[7]), .stop(
        cr[6]), .read(cr[5]), .write(cr[4]), .ack_in(cr[3]), .din(txr), 
        .cmd_ack(done), .ack_out(irxack), .dout(rxr), .i2c_busy(sr[6]), 
        .i2c_al(i2c_al), .scl_i(scl_pad_i), .scl_oen(scl_padoen_o), .sda_i(
        sda_pad_i), .sda_oen(sda_padoen_o), .VDD(VDD), .VSS(VSS) );
  INVX0 U116 ( .INP(n49), .ZN(n133) );
  INVX0 U117 ( .INP(n51), .ZN(n132) );
  NOR2X0 U118 ( .IN1(n50), .IN2(n37), .QN(n49) );
  NOR2X0 U119 ( .IN1(n52), .IN2(n37), .QN(n51) );
  NOR2X0 U120 ( .IN1(n37), .IN2(n46), .QN(n47) );
  NOR2X0 U121 ( .IN1(n37), .IN2(n53), .QN(n54) );
  INVX0 U122 ( .INP(n37), .ZN(n131) );
  NOR2X0 U123 ( .IN1(n37), .IN2(n390), .QN(n400) );
  NOR2X0 U124 ( .IN1(n37), .IN2(n35), .QN(n36) );
  OA21X1 U125 ( .IN1(n48), .IN2(n37), .IN3(n130), .Q(n46) );
  AOI21X1 U126 ( .IN1(n55), .IN2(n131), .IN3(wb_rst_i), .QN(n53) );
  INVX0 U127 ( .INP(wb_rst_i), .ZN(n130) );
  INVX0 U128 ( .INP(wb_adr_i[2]), .ZN(n134) );
  AND2X1 U129 ( .IN1(n126), .IN2(n420), .Q(n85) );
  INVX0 U130 ( .INP(wb_adr_i[0]), .ZN(n136) );
  INVX0 U131 ( .INP(wb_adr_i[1]), .ZN(n135) );
  NOR2X0 U132 ( .IN1(wb_rst_i), .IN2(n56), .QN(N99) );
  NAND2X1 U133 ( .IN1(n430), .IN2(n440), .QN(n93) );
  NAND2X1 U134 ( .IN1(n75), .IN2(n76), .QN(N40) );
  NAND2X1 U135 ( .IN1(n73), .IN2(n74), .QN(N41) );
  NAND2X1 U136 ( .IN1(n71), .IN2(n72), .QN(N42) );
  NAND2X1 U137 ( .IN1(sr[7]), .IN2(n450), .QN(n58) );
  NAND2X1 U138 ( .IN1(sr_1), .IN2(n450), .QN(n78) );
  NAND2X1 U139 ( .IN1(sr[5]), .IN2(n450), .QN(n68) );
  NAND2X1 U140 ( .IN1(sr_0), .IN2(n450), .QN(n82) );
  NAND2X1 U141 ( .IN1(sr[6]), .IN2(n450), .QN(n64) );
  NAND2X1 U142 ( .IN1(rxr[1]), .IN2(n55), .QN(n77) );
  NAND2X1 U143 ( .IN1(rxr[7]), .IN2(n55), .QN(n57) );
  NAND2X1 U144 ( .IN1(rxr[5]), .IN2(n55), .QN(n67) );
  NAND2X1 U145 ( .IN1(rxr[0]), .IN2(n55), .QN(n81) );
  NAND2X1 U146 ( .IN1(rxr[6]), .IN2(n55), .QN(n63) );
  OA21X1 U147 ( .IN1(cr[4]), .IN2(cr[5]), .IN3(n130), .Q(N101) );
  NOR2X0 U148 ( .IN1(done), .IN2(i2c_al), .QN(n420) );
  NBUFFX2 U149 ( .INP(arst_i), .Z(n129) );
  NBUFFX2 U150 ( .INP(arst_i), .Z(n128) );
endmodule

