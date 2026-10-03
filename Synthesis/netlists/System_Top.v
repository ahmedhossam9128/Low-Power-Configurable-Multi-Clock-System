/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Wed Sep 30 09:59:59 2026
/////////////////////////////////////////////////////////////


module ALU_WIDTH8_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  INVXLM U1 ( .A(B[6]), .Y(n3) );
  INVXLM U2 ( .A(B[7]), .Y(n2) );
  INVXLM U3 ( .A(B[2]), .Y(n7) );
  INVXLM U4 ( .A(B[1]), .Y(n8) );
  INVXLM U5 ( .A(B[3]), .Y(n6) );
  INVXLM U6 ( .A(B[4]), .Y(n5) );
  INVXLM U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(A[0]), .Y(n1) );
  XNOR2X2M U10 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVXLM U11 ( .A(B[0]), .Y(n9) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module ALU_WIDTH8_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b0), .CO(carry[1]), .S(SUM[0]) );
endmodule


module ALU_WIDTH8_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  INVX2M U4 ( .A(A[6]), .Y(n9) );
  XNOR2X2M U5 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  XNOR2X2M U6 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U7 ( .A(B[7]), .Y(n8) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module ALU_WIDTH8_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  ALU_WIDTH8_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n15, n13, n14, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n8), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n7), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n6), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n4), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n3), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVXLM U10 ( .A(B[7]), .Y(n32) );
  INVXLM U11 ( .A(B[2]), .Y(n37) );
  AND2X2M U12 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  XNOR2X2M U14 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U15 ( .A(\SUMB[7][1] ), .Y(n17) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U17 ( .A(\ab[0][6] ), .Y(n22) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U20 ( .A(\ab[0][5] ), .Y(n21) );
  AND2X2M U21 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  CLKXOR2X2M U22 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  XNOR2X2M U23 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U25 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U27 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U28 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U29 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  AND2X2M U30 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U31 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n14) );
  AND2X2M U32 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n15) );
  AND2X2M U33 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  CLKXOR2X2M U34 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U35 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U36 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U37 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U38 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  INVX2M U39 ( .A(A[1]), .Y(n30) );
  INVX2M U40 ( .A(A[3]), .Y(n28) );
  INVX2M U41 ( .A(A[4]), .Y(n27) );
  INVX2M U42 ( .A(A[2]), .Y(n29) );
  INVX2M U43 ( .A(B[1]), .Y(n38) );
  INVX2M U44 ( .A(A[6]), .Y(n25) );
  INVX2M U45 ( .A(A[5]), .Y(n26) );
  INVXLM U46 ( .A(B[5]), .Y(n34) );
  INVXLM U47 ( .A(B[4]), .Y(n35) );
  INVX2M U48 ( .A(A[0]), .Y(n31) );
  INVXLM U49 ( .A(B[3]), .Y(n36) );
  INVXLM U50 ( .A(B[0]), .Y(n39) );
  INVXLM U51 ( .A(B[6]), .Y(n33) );
  INVXLM U52 ( .A(A[7]), .Y(n24) );
  NOR2X1M U54 ( .A(n24), .B(n32), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n24), .B(n33), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n24), .B(n34), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n24), .B(n35), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n24), .B(n36), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n24), .B(n37), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n24), .B(n38), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n24), .B(n39), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n32), .B(n25), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n33), .B(n25), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n34), .B(n25), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n35), .B(n25), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n36), .B(n25), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n37), .B(n25), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n38), .B(n25), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n39), .B(n25), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n32), .B(n26), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n33), .B(n26), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n34), .B(n26), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n35), .B(n26), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n36), .B(n26), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n37), .B(n26), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n38), .B(n26), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n39), .B(n26), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n32), .B(n27), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n33), .B(n27), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n34), .B(n27), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n35), .B(n27), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n36), .B(n27), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n37), .B(n27), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n38), .B(n27), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n39), .B(n27), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n32), .B(n28), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n33), .B(n28), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n34), .B(n28), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n35), .B(n28), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n36), .B(n28), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n37), .B(n28), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n38), .B(n28), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n39), .B(n28), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n32), .B(n29), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n33), .B(n29), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n34), .B(n29), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n35), .B(n29), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n36), .B(n29), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n37), .B(n29), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n38), .B(n29), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n39), .B(n29), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n32), .B(n30), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n33), .B(n30), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n34), .B(n30), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n35), .B(n30), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n36), .B(n30), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n37), .B(n30), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n38), .B(n30), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n39), .B(n30), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n32), .B(n31), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n33), .B(n31), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n34), .B(n31), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n35), .B(n31), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n36), .B(n31), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n37), .B(n31), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n38), .B(n31), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n39), .B(n31), .Y(PRODUCT[0]) );
endmodule


module ALU_WIDTH8_DW_div_uns_1 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] ,
         \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] ,
         \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] ,
         \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] ,
         \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] ,
         \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] , \u_div/CryTmp[2][4] ,
         \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] ,
         \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] ,
         \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] ,
         \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] ,
         \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] ,
         \u_div/CryTmp[6][2] , \u_div/PartRem[1][1] , \u_div/PartRem[1][2] ,
         \u_div/PartRem[1][3] , \u_div/PartRem[1][4] , \u_div/PartRem[1][5] ,
         \u_div/PartRem[1][6] , \u_div/PartRem[1][7] , \u_div/PartRem[2][1] ,
         \u_div/PartRem[2][2] , \u_div/PartRem[2][3] , \u_div/PartRem[2][4] ,
         \u_div/PartRem[2][5] , \u_div/PartRem[2][6] , \u_div/PartRem[3][1] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[6][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84;
  wire   [7:0] \u_div/BInv ;

  ADDFHX4M \u_div/u_fa_PartRem_0_2_5  ( .A(n37), .B(\u_div/BInv [5]), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), 
        .S(\u_div/SumTmp[1][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), 
        .S(\u_div/SumTmp[1][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), 
        .S(\u_div/SumTmp[1][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), 
        .S(\u_div/SumTmp[1][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), 
        .S(\u_div/SumTmp[5][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/BInv [1]), .B(n40), .CI(
        \u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFHX1M \u_div/u_fa_PartRem_0_5_2  ( .A(n28), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), 
        .S(\u_div/SumTmp[1][6] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), 
        .S(\u_div/SumTmp[3][1] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_3_4  ( .A(n29), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_4  ( .A(n36), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), 
        .S(\u_div/SumTmp[1][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] )
         );
  ADDFHX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), 
        .S(\u_div/SumTmp[4][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_3  ( .A(n35), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_3_3  ( .A(n34), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_4_3  ( .A(n33), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), 
        .S(\u_div/SumTmp[2][1] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/BInv [1]), .B(
        \u_div/PartRem[5][1] ), .CI(\u_div/CryTmp[4][1] ), .CO(
        \u_div/CryTmp[4][2] ), .S(\u_div/SumTmp[4][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_2  ( .A(n30), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_0  ( .A(a[6]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[6][1] ), .S(\u_div/SumTmp[6][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_0  ( .A(a[5]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[5][1] ), .S(\u_div/SumTmp[5][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_0  ( .A(a[4]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[4][1] ), .S(\u_div/SumTmp[4][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_0  ( .A(a[3]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[3][1] ), .S(\u_div/SumTmp[3][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_0  ( .A(a[2]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[2][1] ), .S(\u_div/SumTmp[2][0] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_0  ( .A(a[1]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[1][1] ), .S(\u_div/SumTmp[1][0] ) );
  MXI2X6M U1 ( .A(n42), .B(n41), .S0(n77), .Y(n40) );
  CLKINVX4M U2 ( .A(n77), .Y(quotient[7]) );
  INVX12M U3 ( .A(b[7]), .Y(\u_div/BInv [7]) );
  NAND2BX8M U4 ( .AN(n43), .B(n83), .Y(n63) );
  CLKINVX16M U5 ( .A(n72), .Y(n83) );
  CLKINVX8M U6 ( .A(n60), .Y(n78) );
  NAND2BX12M U7 ( .AN(b[6]), .B(\u_div/BInv [7]), .Y(n72) );
  NAND2X6M U8 ( .A(n81), .B(\u_div/BInv [3]), .Y(n60) );
  INVX4M U9 ( .A(n63), .Y(n81) );
  CLKAND2X4M U10 ( .A(\u_div/BInv [7]), .B(\u_div/CryTmp[1][7] ), .Y(
        quotient[1]) );
  INVX4M U11 ( .A(n53), .Y(\u_div/PartRem[5][2] ) );
  OR2X12M U12 ( .A(b[5]), .B(b[4]), .Y(n43) );
  NAND2BX1M U13 ( .AN(n61), .B(n78), .Y(n80) );
  AND2X1M U14 ( .A(n78), .B(\u_div/BInv [2]), .Y(n2) );
  INVX2M U15 ( .A(\u_div/CryTmp[4][4] ), .Y(n64) );
  INVX3M U16 ( .A(\u_div/CryTmp[3][5] ), .Y(n69) );
  NOR2X3M U17 ( .A(n68), .B(n69), .Y(n67) );
  INVX4M U18 ( .A(n66), .Y(\u_div/PartRem[3][1] ) );
  MXI2X4M U19 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(n71), .Y(n50) );
  MXI2X2M U20 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(n53) );
  INVX3M U21 ( .A(n80), .Y(quotient[5]) );
  MXI2X2M U22 ( .A(n57), .B(n58), .S0(n59), .Y(\u_div/PartRem[5][1] ) );
  CLKINVX4M U23 ( .A(b[1]), .Y(\u_div/BInv [1]) );
  INVX6M U24 ( .A(b[3]), .Y(\u_div/BInv [3]) );
  NAND2X1M U25 ( .A(\u_div/PartRem[1][3] ), .B(\u_div/BInv [3]), .Y(n12) );
  MXI2X4M U26 ( .A(n54), .B(n55), .S0(quotient[6]), .Y(\u_div/PartRem[6][1] )
         );
  NAND2X4M U27 ( .A(\u_div/CryTmp[6][2] ), .B(n2), .Y(n79) );
  MXI2X4M U28 ( .A(n74), .B(n75), .S0(n76), .Y(\u_div/PartRem[1][1] ) );
  NAND3X4M U29 ( .A(n12), .B(n11), .C(n10), .Y(\u_div/CryTmp[0][4] ) );
  INVX3M U30 ( .A(n84), .Y(quotient[2]) );
  OR2X2M U31 ( .A(n64), .B(n63), .Y(n39) );
  XOR2X1M U32 ( .A(\u_div/BInv [0]), .B(a[7]), .Y(n42) );
  NAND2X4M U33 ( .A(n25), .B(n78), .Y(n77) );
  NAND2X2M U34 ( .A(\u_div/CryTmp[3][2] ), .B(\u_div/BInv [2]), .Y(n21) );
  NAND2X4M U35 ( .A(n17), .B(n18), .Y(\u_div/PartRem[4][1] ) );
  NOR2BX2M U36 ( .AN(\u_div/CryTmp[1][7] ), .B(b[7]), .Y(n76) );
  CLKNAND2X4M U37 ( .A(\u_div/SumTmp[4][0] ), .B(n16), .Y(n17) );
  INVX4M U38 ( .A(n50), .Y(\u_div/PartRem[2][1] ) );
  MX2XLM U39 ( .A(n40), .B(\u_div/SumTmp[6][1] ), .S0(quotient[6]), .Y(n28) );
  MXI2X2M U40 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(n67), .Y(n66) );
  MXI2X1M U41 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(n49) );
  MXI2XLM U42 ( .A(n23), .B(n24), .S0(quotient[4]), .Y(n27) );
  CLKINVX4M U43 ( .A(\u_div/CryTmp[2][6] ), .Y(n73) );
  MXI2X1M U44 ( .A(n45), .B(n51), .S0(quotient[1]), .Y(\u_div/PartRem[1][7] )
         );
  NOR2X2M U45 ( .A(n73), .B(n72), .Y(n71) );
  NAND3X2M U46 ( .A(n22), .B(n21), .C(n20), .Y(\u_div/CryTmp[3][3] ) );
  NAND2X2M U47 ( .A(\u_div/CryTmp[3][2] ), .B(n27), .Y(n20) );
  INVX2M U48 ( .A(\u_div/CryTmp[5][3] ), .Y(n61) );
  INVX2M U49 ( .A(n82), .Y(quotient[4]) );
  INVX4M U50 ( .A(n79), .Y(quotient[6]) );
  NOR2X2M U51 ( .A(n1), .B(n3), .Y(n25) );
  NAND2X2M U52 ( .A(\u_div/CryTmp[0][7] ), .B(\u_div/PartRem[1][7] ), .Y(n7)
         );
  NAND2X2M U53 ( .A(\u_div/CryTmp[0][7] ), .B(\u_div/BInv [7]), .Y(n8) );
  OR2X2M U54 ( .A(b[2]), .B(b[1]), .Y(n1) );
  NOR2X2M U55 ( .A(\u_div/BInv [0]), .B(a[7]), .Y(n3) );
  INVX4M U56 ( .A(b[0]), .Y(\u_div/BInv [0]) );
  INVX2M U57 ( .A(b[5]), .Y(\u_div/BInv [5]) );
  INVX2M U58 ( .A(b[4]), .Y(\u_div/BInv [4]) );
  NAND2X2M U59 ( .A(\u_div/PartRem[1][1] ), .B(\u_div/BInv [1]), .Y(n4) );
  NAND2X1M U60 ( .A(\u_div/PartRem[1][1] ), .B(\u_div/CryTmp[0][1] ), .Y(n5)
         );
  NAND2XLM U61 ( .A(\u_div/BInv [1]), .B(\u_div/CryTmp[0][1] ), .Y(n6) );
  NAND3X2M U62 ( .A(n6), .B(n5), .C(n4), .Y(\u_div/CryTmp[0][2] ) );
  NAND2X1M U63 ( .A(\u_div/CryTmp[0][2] ), .B(\u_div/PartRem[1][2] ), .Y(n13)
         );
  NAND2X1M U64 ( .A(\u_div/CryTmp[0][2] ), .B(\u_div/BInv [2]), .Y(n14) );
  NAND2XLM U65 ( .A(\u_div/PartRem[1][7] ), .B(\u_div/BInv [7]), .Y(n9) );
  NAND3X2M U66 ( .A(n9), .B(n8), .C(n7), .Y(quotient[0]) );
  NAND2X2M U67 ( .A(\u_div/CryTmp[0][3] ), .B(\u_div/PartRem[1][3] ), .Y(n10)
         );
  NAND2X2M U68 ( .A(\u_div/CryTmp[0][3] ), .B(\u_div/BInv [3]), .Y(n11) );
  NAND3X2M U69 ( .A(n15), .B(n14), .C(n13), .Y(\u_div/CryTmp[0][3] ) );
  CLKNAND2X2M U70 ( .A(\u_div/PartRem[1][2] ), .B(\u_div/BInv [2]), .Y(n15) );
  INVX3M U71 ( .A(b[2]), .Y(\u_div/BInv [2]) );
  NAND2X2M U72 ( .A(a[4]), .B(n39), .Y(n18) );
  INVX2M U73 ( .A(n39), .Y(n16) );
  XOR2XLM U74 ( .A(\u_div/BInv [2]), .B(n27), .Y(n19) );
  XOR2XLM U75 ( .A(n19), .B(\u_div/CryTmp[3][2] ), .Y(\u_div/SumTmp[3][2] ) );
  CLKNAND2X2M U76 ( .A(n27), .B(\u_div/BInv [2]), .Y(n22) );
  MXI2XLM U77 ( .A(n48), .B(n62), .S0(quotient[1]), .Y(\u_div/PartRem[1][4] )
         );
  MXI2XLM U78 ( .A(n46), .B(n52), .S0(quotient[1]), .Y(\u_div/PartRem[1][6] )
         );
  NOR2X2M U79 ( .A(n61), .B(n60), .Y(n59) );
  INVX2M U80 ( .A(\u_div/SumTmp[4][1] ), .Y(n24) );
  INVX2M U81 ( .A(\u_div/SumTmp[5][0] ), .Y(n58) );
  INVXLM U82 ( .A(\u_div/PartRem[5][1] ), .Y(n23) );
  MX2XLM U83 ( .A(n34), .B(\u_div/SumTmp[3][3] ), .S0(quotient[3]), .Y(n36) );
  CLKINVX1M U84 ( .A(n45), .Y(\u_div/PartRem[2][6] ) );
  MX2XLM U85 ( .A(n29), .B(\u_div/SumTmp[3][4] ), .S0(quotient[3]), .Y(n37) );
  INVX2M U86 ( .A(a[7]), .Y(n41) );
  INVXLM U87 ( .A(n48), .Y(\u_div/PartRem[2][3] ) );
  CLKINVX2M U88 ( .A(\u_div/SumTmp[1][1] ), .Y(n70) );
  MX2XLM U89 ( .A(n28), .B(\u_div/SumTmp[5][2] ), .S0(quotient[5]), .Y(n33) );
  MXI2X2M U90 ( .A(n31), .B(n32), .S0(quotient[3]), .Y(n30) );
  INVXLM U91 ( .A(\u_div/PartRem[4][1] ), .Y(n31) );
  INVX2M U92 ( .A(\u_div/SumTmp[3][1] ), .Y(n32) );
  MX2X1M U93 ( .A(n27), .B(\u_div/SumTmp[3][2] ), .S0(quotient[3]), .Y(n35) );
  NAND2BX1M U94 ( .AN(n64), .B(n81), .Y(n82) );
  CLKINVX2M U95 ( .A(n47), .Y(\u_div/PartRem[2][4] ) );
  INVXLM U96 ( .A(n46), .Y(\u_div/PartRem[2][5] ) );
  CLKINVX1M U97 ( .A(\u_div/SumTmp[1][2] ), .Y(n65) );
  NAND2BX2M U98 ( .AN(n73), .B(n83), .Y(n84) );
  MXI2XLM U99 ( .A(n50), .B(n70), .S0(quotient[1]), .Y(\u_div/PartRem[1][2] )
         );
  MXI2XLM U100 ( .A(n30), .B(\u_div/SumTmp[2][2] ), .S0(quotient[2]), .Y(n48)
         );
  INVX2M U101 ( .A(\u_div/SumTmp[1][3] ), .Y(n62) );
  INVX2M U102 ( .A(\u_div/SumTmp[1][5] ), .Y(n52) );
  MXI2XLM U103 ( .A(n36), .B(\u_div/SumTmp[2][4] ), .S0(quotient[2]), .Y(n46)
         );
  MXI2XLM U104 ( .A(n35), .B(\u_div/SumTmp[2][3] ), .S0(quotient[2]), .Y(n47)
         );
  MXI2XLM U105 ( .A(n37), .B(\u_div/SumTmp[2][5] ), .S0(quotient[2]), .Y(n45)
         );
  NOR2X2M U106 ( .A(n69), .B(n68), .Y(quotient[3]) );
  MX2XLM U107 ( .A(n33), .B(\u_div/SumTmp[4][3] ), .S0(quotient[4]), .Y(n29)
         );
  MX2XLM U108 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(n34) );
  INVX2M U109 ( .A(\u_div/SumTmp[1][6] ), .Y(n51) );
  INVX2M U110 ( .A(a[5]), .Y(n57) );
  INVX2M U111 ( .A(a[6]), .Y(n54) );
  INVX2M U112 ( .A(\u_div/SumTmp[6][0] ), .Y(n55) );
  MXI2XLM U113 ( .A(n47), .B(n56), .S0(quotient[1]), .Y(\u_div/PartRem[1][5] )
         );
  INVX2M U114 ( .A(\u_div/SumTmp[1][4] ), .Y(n56) );
  MXI2XLM U115 ( .A(n49), .B(n65), .S0(quotient[1]), .Y(\u_div/PartRem[1][3] )
         );
  NAND2X2M U116 ( .A(n83), .B(\u_div/BInv [5]), .Y(n68) );
  INVX2M U117 ( .A(\u_div/SumTmp[1][0] ), .Y(n75) );
  INVX2M U118 ( .A(a[1]), .Y(n74) );
  NAND2X2M U119 ( .A(b[0]), .B(n44), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U120 ( .A(a[0]), .Y(n44) );
  INVXLM U121 ( .A(b[6]), .Y(\u_div/BInv [6]) );
  INVX2M U122 ( .A(n49), .Y(\u_div/PartRem[2][2] ) );
endmodule


module ALU_WIDTH8 ( A, B, ALU_FUN, Enable, CLK, RST, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input Enable, CLK, RST;
  output OUT_VALID;
  wire   N68, N69, N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N80, N81,
         N82, N83, N84, N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95,
         N96, N97, N98, N99, N100, N101, N103, N104, N105, N106, N107, N108,
         N109, N110, N169, n35, n36, n37, n38, n39, n42, n46, n47, n50, n52,
         n54, n55, n56, n58, n62, n63, n64, n65, n69, n70, n71, n72, n76, n77,
         n78, n79, n83, n84, n85, n86, n90, n91, n92, n94, n95, n96, n97, n99,
         n101, n102, n111, n113, n117, n118, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n40, n41, n43, n44,
         n45, n48, n49, n51, n53, n57, n59, n60, n61, n66, n67, n68, n73, n74,
         n75, n80, n81, n82, n87, n88, n89, n93, n98, n100, n103, n104, n105,
         n106, n107, n108, n109, n110, n112, n114, n115, n116, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172;
  wire   [15:0] Comb_OUT;

  ALU_WIDTH8_DW01_sub_0 sub_23 ( .A({1'b0, n21, n20, n19, n18, n17, n16, n15, 
        A[0]}), .B({1'b0, n14, n13, B[5:2], n12, n4}), .CI(1'b0), .DIFF({N85, 
        N84, N83, N82, N81, N80, N79, N78, N77}) );
  ALU_WIDTH8_DW01_add_0 add_19 ( .A({1'b0, n21, n20, n19, n18, n17, n16, n15, 
        A[0]}), .B({1'b0, n14, n13, B[5:2], n12, n5}), .CI(1'b0), .SUM({N76, 
        N75, N74, N73, N72, N71, N70, N69, N68}) );
  ALU_WIDTH8_DW02_mult_0 mult_27 ( .A({n21, n20, n19, n18, n17, n16, n15, A[0]}), .B({n14, n13, B[5:2], n12, n4}), .TC(1'b0), .PRODUCT({N101, N100, N99, N98, 
        N97, N96, N95, N94, N93, N92, N91, N90, N89, N88, N87, N86}) );
  ALU_WIDTH8_DW_div_uns_1 div_37 ( .a({n21, n20, n19, n18, n17, n16, n15, A[0]}), .b({n14, n13, B[5:2], n12, n11}), .quotient({N110, N109, N108, N107, N106, 
        N105, N104, N103}) );
  DFFRQX2M OUT_VALID_reg ( .D(Enable), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  DFFRQX2M \ALU_OUT_reg[8]  ( .D(Comb_OUT[8]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[8]) );
  DFFRQX2M \ALU_OUT_reg[0]  ( .D(Comb_OUT[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  DFFRQX2M \ALU_OUT_reg[15]  ( .D(Comb_OUT[15]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[15]) );
  DFFRQX2M \ALU_OUT_reg[14]  ( .D(Comb_OUT[14]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[14]) );
  DFFRQX2M \ALU_OUT_reg[13]  ( .D(Comb_OUT[13]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[13]) );
  DFFRQX2M \ALU_OUT_reg[12]  ( .D(Comb_OUT[12]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[12]) );
  DFFRQX2M \ALU_OUT_reg[11]  ( .D(Comb_OUT[11]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[11]) );
  DFFRQX2M \ALU_OUT_reg[10]  ( .D(Comb_OUT[10]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[10]) );
  DFFRQX2M \ALU_OUT_reg[9]  ( .D(Comb_OUT[9]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[9]) );
  DFFRQX2M \ALU_OUT_reg[7]  ( .D(Comb_OUT[7]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[7]) );
  DFFRQX2M \ALU_OUT_reg[6]  ( .D(Comb_OUT[6]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[6]) );
  DFFRQX2M \ALU_OUT_reg[5]  ( .D(Comb_OUT[5]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[5]) );
  DFFRQX2M \ALU_OUT_reg[4]  ( .D(Comb_OUT[4]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[4]) );
  DFFRQX2M \ALU_OUT_reg[3]  ( .D(Comb_OUT[3]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[3]) );
  DFFRQX2M \ALU_OUT_reg[2]  ( .D(Comb_OUT[2]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[2]) );
  DFFRQX1M \ALU_OUT_reg[1]  ( .D(Comb_OUT[1]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[1]) );
  BUFX16M U3 ( .A(B[7]), .Y(n14) );
  BUFX8M U4 ( .A(B[6]), .Y(n13) );
  AOI22XLM U5 ( .A0(N110), .A1(n122), .B0(N84), .B1(n123), .Y(n29) );
  BUFX8M U8 ( .A(B[1]), .Y(n12) );
  BUFX6M U9 ( .A(A[7]), .Y(n21) );
  BUFX4M U10 ( .A(B[0]), .Y(n11) );
  BUFX2M U11 ( .A(A[4]), .Y(n18) );
  NOR2X2M U12 ( .A(n9), .B(n26), .Y(n3) );
  BUFX2M U13 ( .A(A[5]), .Y(n19) );
  BUFX2M U14 ( .A(A[6]), .Y(n20) );
  NOR2X2M U15 ( .A(N103), .B(n32), .Y(n81) );
  INVXLM U16 ( .A(n14), .Y(n170) );
  NAND2XLM U17 ( .A(n14), .B(n162), .Y(n152) );
  BUFX2M U18 ( .A(B[0]), .Y(n4) );
  BUFX2M U19 ( .A(B[0]), .Y(n5) );
  AOI31XLM U20 ( .A0(n90), .A1(n91), .A2(n92), .B0(n165), .Y(Comb_OUT[1]) );
  AOI211X1M U21 ( .A0(A[0]), .A1(n39), .B0(n93), .C0(n94), .Y(n92) );
  INVXLM U22 ( .A(B[2]), .Y(n156) );
  OAI2B11X2M U23 ( .A1N(N85), .A0(n102), .B0(n164), .C0(n124), .Y(n42) );
  INVX2M U24 ( .A(n154), .Y(n88) );
  AO22X1M U25 ( .A0(N75), .A1(n3), .B0(n162), .B1(n125), .Y(n27) );
  INVX2M U26 ( .A(n102), .Y(n123) );
  INVX2M U27 ( .A(n164), .Y(n125) );
  INVX2M U28 ( .A(n53), .Y(n51) );
  NOR3X2M U29 ( .A(n51), .B(n66), .C(n61), .Y(n80) );
  NOR2X2M U30 ( .A(n74), .B(n73), .Y(n75) );
  AOI31X2M U31 ( .A0(n83), .A1(n84), .A2(n85), .B0(n165), .Y(Comb_OUT[2]) );
  AOI22X1M U32 ( .A0(N79), .A1(n123), .B0(N70), .B1(n3), .Y(n83) );
  AOI222X1M U33 ( .A0(N88), .A1(n6), .B0(n125), .B1(n169), .C0(n16), .C1(n163), 
        .Y(n84) );
  AOI221XLM U34 ( .A0(n15), .A1(n39), .B0(n17), .B1(n8), .C0(n86), .Y(n85) );
  OAI2BB1X2M U35 ( .A0N(N101), .A1N(n35), .B0(n36), .Y(Comb_OUT[15]) );
  OAI2BB1X2M U36 ( .A0N(N99), .A1N(n35), .B0(n36), .Y(Comb_OUT[13]) );
  AOI31X2M U37 ( .A0(n76), .A1(n77), .A2(n78), .B0(n165), .Y(Comb_OUT[3]) );
  AOI22X1M U38 ( .A0(N80), .A1(n123), .B0(N71), .B1(n3), .Y(n76) );
  AOI222X1M U39 ( .A0(N89), .A1(n6), .B0(n125), .B1(n168), .C0(n17), .C1(n163), 
        .Y(n77) );
  AOI221XLM U40 ( .A0(n16), .A1(n39), .B0(n18), .B1(n8), .C0(n79), .Y(n78) );
  OAI2BB1X2M U41 ( .A0N(N100), .A1N(n35), .B0(n36), .Y(Comb_OUT[14]) );
  OAI2BB1X2M U42 ( .A0N(N98), .A1N(n35), .B0(n36), .Y(Comb_OUT[12]) );
  OAI2BB2X1M U43 ( .B0(n162), .B1(n10), .A0N(N93), .A1N(n6), .Y(n46) );
  AOI211X2M U44 ( .A0(n39), .A1(n20), .B0(n27), .C0(n46), .Y(n28) );
  AOI31X2M U45 ( .A0(n54), .A1(n55), .A2(n56), .B0(n165), .Y(Comb_OUT[6]) );
  AOI22X1M U46 ( .A0(N83), .A1(n123), .B0(N74), .B1(n3), .Y(n54) );
  AOI222X1M U47 ( .A0(N92), .A1(n6), .B0(n125), .B1(n115), .C0(n163), .C1(n20), 
        .Y(n55) );
  AOI31X2M U48 ( .A0(n69), .A1(n70), .A2(n71), .B0(n165), .Y(Comb_OUT[4]) );
  AOI22X1M U49 ( .A0(N81), .A1(n123), .B0(N72), .B1(n3), .Y(n69) );
  AOI222X1M U50 ( .A0(N90), .A1(n6), .B0(n125), .B1(n167), .C0(n18), .C1(n163), 
        .Y(n70) );
  AOI221XLM U51 ( .A0(n17), .A1(n39), .B0(n8), .B1(n19), .C0(n72), .Y(n71) );
  OAI2BB1X2M U52 ( .A0N(N95), .A1N(n35), .B0(n36), .Y(Comb_OUT[9]) );
  OAI2BB1X2M U53 ( .A0N(N96), .A1N(n35), .B0(n36), .Y(Comb_OUT[10]) );
  OAI2BB1X2M U54 ( .A0N(N97), .A1N(n35), .B0(n36), .Y(Comb_OUT[11]) );
  AOI21X2M U55 ( .A0(n37), .A1(n38), .B0(n165), .Y(Comb_OUT[8]) );
  AOI21X2M U56 ( .A0(N76), .A1(n3), .B0(n42), .Y(n37) );
  INVX2M U57 ( .A(n129), .Y(n159) );
  AOI31X2M U58 ( .A0(n62), .A1(n63), .A2(n64), .B0(n165), .Y(Comb_OUT[5]) );
  AOI22X1M U59 ( .A0(N82), .A1(n123), .B0(N73), .B1(n3), .Y(n62) );
  AOI221XLM U60 ( .A0(n18), .A1(n39), .B0(n8), .B1(n20), .C0(n65), .Y(n64) );
  AOI222X1M U61 ( .A0(N91), .A1(n6), .B0(n125), .B1(n166), .C0(n19), .C1(n163), 
        .Y(n63) );
  OAI31X1M U62 ( .A0(n43), .A1(N169), .A2(n41), .B0(n82), .Y(n66) );
  NAND3BX2M U63 ( .AN(n33), .B(n154), .C(n128), .Y(n43) );
  NAND3X2M U64 ( .A(n68), .B(n67), .C(n7), .Y(n73) );
  INVX2M U65 ( .A(n61), .Y(n68) );
  INVX2M U66 ( .A(n66), .Y(n67) );
  INVX2M U67 ( .A(n140), .Y(n161) );
  INVX2M U68 ( .A(n15), .Y(n160) );
  OAI221X1M U69 ( .A0(n16), .A1(n124), .B0(n169), .B1(n50), .C0(n164), .Y(n98)
         );
  OAI221X1M U70 ( .A0(n17), .A1(n124), .B0(n168), .B1(n50), .C0(n164), .Y(n104) );
  OAI221X1M U71 ( .A0(n18), .A1(n124), .B0(n167), .B1(n50), .C0(n164), .Y(n107) );
  OAI221X1M U72 ( .A0(n19), .A1(n124), .B0(n166), .B1(n50), .C0(n164), .Y(n110) );
  OAI221X1M U73 ( .A0(n20), .A1(n124), .B0(n115), .B1(n50), .C0(n164), .Y(n119) );
  INVX2M U74 ( .A(n52), .Y(n116) );
  INVX2M U75 ( .A(n97), .Y(n124) );
  OR2X2M U76 ( .A(n101), .B(n9), .Y(n164) );
  MX2X2M U77 ( .A(n120), .B(n119), .S0(n158), .Y(n121) );
  OAI221X1M U78 ( .A0(n116), .A1(n115), .B0(n50), .B1(n20), .C0(n10), .Y(n120)
         );
  MX2X2M U79 ( .A(n97), .B(n126), .S0(n5), .Y(n44) );
  INVX2M U80 ( .A(n50), .Y(n126) );
  INVX2M U81 ( .A(n59), .Y(n122) );
  OAI221X1M U82 ( .A0(n116), .A1(n162), .B0(n50), .B1(n21), .C0(n10), .Y(n22)
         );
  OAI2B2X1M U83 ( .A1N(n12), .A0(n95), .B0(n12), .B1(n96), .Y(n94) );
  AOI221XLM U84 ( .A0(n126), .A1(n160), .B0(n15), .B1(n52), .C0(n163), .Y(n95)
         );
  AOI221XLM U85 ( .A0(n15), .A1(n126), .B0(n97), .B1(n160), .C0(n125), .Y(n96)
         );
  NAND3BX2M U86 ( .AN(n128), .B(n113), .C(n33), .Y(n102) );
  MX2X2M U87 ( .A(n164), .B(n10), .S0(n4), .Y(n60) );
  NAND2X2M U88 ( .A(N68), .B(n3), .Y(n53) );
  NAND4X2M U89 ( .A(n60), .B(n59), .C(n57), .D(n53), .Y(n74) );
  NOR2BX2M U90 ( .AN(n6), .B(n165), .Y(n35) );
  INVX2M U91 ( .A(n10), .Y(n163) );
  INVX2M U92 ( .A(n113), .Y(n26) );
  NOR2X2M U93 ( .A(n41), .B(n9), .Y(n6) );
  AOI22X1M U94 ( .A0(N86), .A1(n6), .B0(n15), .B1(n8), .Y(n7) );
  NAND3X2M U95 ( .A(n7), .B(n60), .C(n57), .Y(n32) );
  NOR2X2M U96 ( .A(n128), .B(n34), .Y(n8) );
  INVX2M U97 ( .A(n17), .Y(n168) );
  INVX2M U98 ( .A(n18), .Y(n167) );
  INVX2M U99 ( .A(n19), .Y(n166) );
  INVX2M U100 ( .A(n16), .Y(n169) );
  INVX2M U101 ( .A(n20), .Y(n115) );
  AOI31X2M U102 ( .A0(n99), .A1(ALU_FUN[3]), .A2(n88), .B0(n87), .Y(n89) );
  NOR3X2M U103 ( .A(n128), .B(ALU_FUN[2]), .C(n127), .Y(n99) );
  INVX2M U104 ( .A(n82), .Y(n87) );
  AOI222X1M U105 ( .A0(n15), .A1(n163), .B0(n16), .B1(n8), .C0(n125), .C1(n160), .Y(n91) );
  AOI222X1M U106 ( .A0(N69), .A1(n3), .B0(N87), .B1(n6), .C0(N78), .C1(n123), 
        .Y(n90) );
  BUFX2M U107 ( .A(A[3]), .Y(n17) );
  AO21XLM U108 ( .A0(N105), .A1(n122), .B0(n103), .Y(n86) );
  MX2X2M U109 ( .A(n100), .B(n98), .S0(n156), .Y(n103) );
  OAI221X1M U110 ( .A0(n116), .A1(n169), .B0(n50), .B1(n16), .C0(n10), .Y(n100) );
  BUFX2M U111 ( .A(A[1]), .Y(n15) );
  BUFX2M U112 ( .A(A[2]), .Y(n16) );
  AO21XLM U113 ( .A0(N106), .A1(n122), .B0(n106), .Y(n79) );
  MX2X2M U114 ( .A(n105), .B(n104), .S0(n157), .Y(n106) );
  OAI221X1M U115 ( .A0(n116), .A1(n168), .B0(n50), .B1(n17), .C0(n10), .Y(n105) );
  MX2X2M U116 ( .A(n108), .B(n107), .S0(n172), .Y(n109) );
  INVXLM U117 ( .A(B[4]), .Y(n172) );
  OAI221X1M U118 ( .A0(n116), .A1(n167), .B0(n50), .B1(n18), .C0(n10), .Y(n108) );
  MX2X2M U119 ( .A(n112), .B(n110), .S0(n171), .Y(n114) );
  INVXLM U120 ( .A(B[5]), .Y(n171) );
  OAI221X1M U121 ( .A0(n116), .A1(n166), .B0(n50), .B1(n19), .C0(n10), .Y(n112) );
  NAND3BX2M U122 ( .AN(ALU_FUN[0]), .B(N169), .C(n40), .Y(n82) );
  INVX2M U123 ( .A(n34), .Y(n40) );
  NAND2X2M U124 ( .A(Enable), .B(n42), .Y(n36) );
  INVXLM U125 ( .A(B[3]), .Y(n157) );
  OAI31X1M U126 ( .A0(ALU_FUN[1]), .A1(n9), .A2(n31), .B0(n111), .Y(n52) );
  OAI31X1M U127 ( .A0(n101), .A1(ALU_FUN[3]), .A2(n128), .B0(n111), .Y(n97) );
  NOR2X2M U128 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n113) );
  NAND3BX2M U129 ( .AN(n25), .B(ALU_FUN[0]), .C(n24), .Y(n59) );
  INVX2M U130 ( .A(n41), .Y(n24) );
  AO21XLM U131 ( .A0(n117), .A1(n118), .B0(ALU_FUN[3]), .Y(n25) );
  NAND3X2M U132 ( .A(n113), .B(n128), .C(ALU_FUN[3]), .Y(n50) );
  BUFX2M U133 ( .A(n47), .Y(n10) );
  NAND4BX1M U134 ( .AN(ALU_FUN[1]), .B(n33), .C(ALU_FUN[2]), .D(ALU_FUN[0]), 
        .Y(n47) );
  INVX2M U135 ( .A(ALU_FUN[0]), .Y(n128) );
  NAND2X2M U136 ( .A(ALU_FUN[2]), .B(ALU_FUN[1]), .Y(n101) );
  OR2X2M U137 ( .A(ALU_FUN[2]), .B(n127), .Y(n41) );
  NAND3X2M U138 ( .A(n113), .B(ALU_FUN[0]), .C(ALU_FUN[3]), .Y(n111) );
  INVX2M U139 ( .A(ALU_FUN[1]), .Y(n127) );
  INVX2M U140 ( .A(ALU_FUN[3]), .Y(n33) );
  INVX2M U141 ( .A(ALU_FUN[2]), .Y(n31) );
  OR2X2M U142 ( .A(ALU_FUN[3]), .B(ALU_FUN[0]), .Y(n9) );
  MX2X2M U143 ( .A(n49), .B(n48), .S0(A[0]), .Y(n61) );
  OR2X2M U144 ( .A(n163), .B(n45), .Y(n48) );
  OR2X2M U145 ( .A(n125), .B(n44), .Y(n49) );
  MX2XLM U146 ( .A(n126), .B(n52), .S0(n4), .Y(n45) );
  NOR3BX2M U147 ( .AN(ALU_FUN[3]), .B(n101), .C(ALU_FUN[0]), .Y(n39) );
  NAND2X2M U148 ( .A(N77), .B(n123), .Y(n57) );
  NAND3BX2M U149 ( .AN(n31), .B(ALU_FUN[3]), .C(n127), .Y(n34) );
  INVX2M U150 ( .A(Enable), .Y(n165) );
  INVXLM U151 ( .A(n21), .Y(n162) );
  INVXLM U152 ( .A(n5), .Y(n155) );
  NOR4XLM U153 ( .A(B[3]), .B(B[2]), .C(n12), .D(n5), .Y(n117) );
  AO21XLM U154 ( .A0(N107), .A1(n122), .B0(n109), .Y(n72) );
  AO21XLM U155 ( .A0(N108), .A1(n122), .B0(n114), .Y(n65) );
  AOI31X2M U156 ( .A0(n30), .A1(n29), .A2(n28), .B0(n165), .Y(Comb_OUT[7]) );
  INVXLM U157 ( .A(n13), .Y(n158) );
  NOR4XLM U158 ( .A(n14), .B(n13), .C(B[5]), .D(B[4]), .Y(n118) );
  AO21XLM U159 ( .A0(N109), .A1(n122), .B0(n121), .Y(n58) );
  AOI32XLM U160 ( .A0(n135), .A1(n145), .A2(n148), .B0(n13), .B1(n115), .Y(
        n136) );
  XNOR2XLM U161 ( .A(n20), .B(n13), .Y(n148) );
  OAI2BB1XLM U162 ( .A0N(N104), .A1N(n122), .B0(n89), .Y(n93) );
  AOI22XLM U163 ( .A0(n170), .A1(n23), .B0(n14), .B1(n22), .Y(n30) );
  NOR2XLM U164 ( .A(n162), .B(n14), .Y(n151) );
  AOI211X2M U165 ( .A0(n81), .A1(n80), .B0(n75), .C0(n165), .Y(Comb_OUT[0]) );
  AOI22XLM U166 ( .A0(n21), .A1(n39), .B0(N94), .B1(n6), .Y(n38) );
  OAI221XLM U167 ( .A0(n21), .A1(n124), .B0(n162), .B1(n50), .C0(n164), .Y(n23) );
  AOI221XLM U168 ( .A0(n19), .A1(n39), .B0(n8), .B1(n21), .C0(n58), .Y(n56) );
  NAND2BX1M U169 ( .AN(B[4]), .B(n18), .Y(n144) );
  NAND2BX1M U170 ( .AN(n18), .B(B[4]), .Y(n133) );
  CLKNAND2X2M U171 ( .A(n144), .B(n133), .Y(n146) );
  NOR2X1M U172 ( .A(n157), .B(n17), .Y(n141) );
  NOR2X1M U173 ( .A(n156), .B(n16), .Y(n132) );
  NOR2X1M U174 ( .A(n155), .B(A[0]), .Y(n129) );
  CLKNAND2X2M U175 ( .A(n16), .B(n156), .Y(n143) );
  NAND2BX1M U176 ( .AN(n132), .B(n143), .Y(n138) );
  AOI21X1M U177 ( .A0(n129), .A1(n160), .B0(n12), .Y(n130) );
  AOI211X1M U178 ( .A0(n15), .A1(n159), .B0(n138), .C0(n130), .Y(n131) );
  CLKNAND2X2M U179 ( .A(n17), .B(n157), .Y(n142) );
  OAI31X1M U180 ( .A0(n141), .A1(n132), .A2(n131), .B0(n142), .Y(n134) );
  NAND2BX1M U181 ( .AN(n19), .B(B[5]), .Y(n149) );
  OAI211X1M U182 ( .A0(n146), .A1(n134), .B0(n133), .C0(n149), .Y(n135) );
  NAND2BX1M U183 ( .AN(B[5]), .B(n19), .Y(n145) );
  OAI21X1M U184 ( .A0(n151), .A1(n136), .B0(n152), .Y(N169) );
  CLKNAND2X2M U185 ( .A(A[0]), .B(n155), .Y(n139) );
  OA21X1M U186 ( .A0(n139), .A1(n160), .B0(n12), .Y(n137) );
  AOI211X1M U187 ( .A0(n139), .A1(n160), .B0(n138), .C0(n137), .Y(n140) );
  AOI31X1M U188 ( .A0(n161), .A1(n143), .A2(n142), .B0(n141), .Y(n147) );
  OAI2B11X1M U189 ( .A1N(n147), .A0(n146), .B0(n145), .C0(n144), .Y(n150) );
  AOI32X1M U190 ( .A0(n150), .A1(n149), .A2(n148), .B0(n20), .B1(n158), .Y(
        n153) );
  AOI2B1X1M U191 ( .A1N(n153), .A0(n152), .B0(n151), .Y(n154) );
endmodule


module FIFO_MEM_DATA_WIDTH8_DEPTH8 ( w_clk, w_rst, w_addr, r_addr, w_inc, 
        w_full, w_data, r_data );
  input [2:0] w_addr;
  input [2:0] r_addr;
  input [7:0] w_data;
  output [7:0] r_data;
  input w_clk, w_rst, w_inc, w_full;
  wire   N10, N11, N12, \mem_Buffer[0][7] , \mem_Buffer[0][6] ,
         \mem_Buffer[0][5] , \mem_Buffer[0][4] , \mem_Buffer[0][3] ,
         \mem_Buffer[0][2] , \mem_Buffer[0][1] , \mem_Buffer[0][0] ,
         \mem_Buffer[1][7] , \mem_Buffer[1][6] , \mem_Buffer[1][5] ,
         \mem_Buffer[1][4] , \mem_Buffer[1][3] , \mem_Buffer[1][2] ,
         \mem_Buffer[1][1] , \mem_Buffer[1][0] , \mem_Buffer[2][7] ,
         \mem_Buffer[2][6] , \mem_Buffer[2][5] , \mem_Buffer[2][4] ,
         \mem_Buffer[2][3] , \mem_Buffer[2][2] , \mem_Buffer[2][1] ,
         \mem_Buffer[2][0] , \mem_Buffer[3][7] , \mem_Buffer[3][6] ,
         \mem_Buffer[3][5] , \mem_Buffer[3][4] , \mem_Buffer[3][3] ,
         \mem_Buffer[3][2] , \mem_Buffer[3][1] , \mem_Buffer[3][0] ,
         \mem_Buffer[4][7] , \mem_Buffer[4][6] , \mem_Buffer[4][5] ,
         \mem_Buffer[4][4] , \mem_Buffer[4][3] , \mem_Buffer[4][2] ,
         \mem_Buffer[4][1] , \mem_Buffer[4][0] , \mem_Buffer[5][7] ,
         \mem_Buffer[5][6] , \mem_Buffer[5][5] , \mem_Buffer[5][4] ,
         \mem_Buffer[5][3] , \mem_Buffer[5][2] , \mem_Buffer[5][1] ,
         \mem_Buffer[5][0] , \mem_Buffer[6][7] , \mem_Buffer[6][6] ,
         \mem_Buffer[6][5] , \mem_Buffer[6][4] , \mem_Buffer[6][3] ,
         \mem_Buffer[6][2] , \mem_Buffer[6][1] , \mem_Buffer[6][0] ,
         \mem_Buffer[7][7] , \mem_Buffer[7][6] , \mem_Buffer[7][5] ,
         \mem_Buffer[7][4] , \mem_Buffer[7][3] , \mem_Buffer[7][2] ,
         \mem_Buffer[7][1] , \mem_Buffer[7][0] , n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128;
  assign N10 = r_addr[0];
  assign N11 = r_addr[1];
  assign N12 = r_addr[2];

  DFFRQX2M \mem_Buffer_reg[0][7]  ( .D(n85), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][7] ) );
  DFFRQX2M \mem_Buffer_reg[0][6]  ( .D(n84), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][6] ) );
  DFFRQX2M \mem_Buffer_reg[0][5]  ( .D(n83), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][5] ) );
  DFFRQX2M \mem_Buffer_reg[0][4]  ( .D(n82), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][4] ) );
  DFFRQX2M \mem_Buffer_reg[0][3]  ( .D(n81), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][3] ) );
  DFFRQX2M \mem_Buffer_reg[0][2]  ( .D(n80), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][2] ) );
  DFFRQX2M \mem_Buffer_reg[0][1]  ( .D(n79), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][1] ) );
  DFFRQX2M \mem_Buffer_reg[0][0]  ( .D(n78), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][0] ) );
  DFFRQX2M \mem_Buffer_reg[1][7]  ( .D(n77), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][7] ) );
  DFFRQX2M \mem_Buffer_reg[1][6]  ( .D(n76), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][6] ) );
  DFFRQX2M \mem_Buffer_reg[1][5]  ( .D(n75), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][5] ) );
  DFFRQX2M \mem_Buffer_reg[1][4]  ( .D(n74), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][4] ) );
  DFFRQX2M \mem_Buffer_reg[1][3]  ( .D(n73), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][3] ) );
  DFFRQX2M \mem_Buffer_reg[1][2]  ( .D(n72), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][2] ) );
  DFFRQX2M \mem_Buffer_reg[1][1]  ( .D(n71), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][1] ) );
  DFFRQX2M \mem_Buffer_reg[1][0]  ( .D(n70), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][0] ) );
  DFFRQX2M \mem_Buffer_reg[4][7]  ( .D(n53), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][7] ) );
  DFFRQX2M \mem_Buffer_reg[4][6]  ( .D(n52), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][6] ) );
  DFFRQX2M \mem_Buffer_reg[4][5]  ( .D(n51), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][5] ) );
  DFFRQX2M \mem_Buffer_reg[4][4]  ( .D(n50), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][4] ) );
  DFFRQX2M \mem_Buffer_reg[4][3]  ( .D(n49), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][3] ) );
  DFFRQX2M \mem_Buffer_reg[4][2]  ( .D(n48), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][2] ) );
  DFFRQX2M \mem_Buffer_reg[4][1]  ( .D(n47), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][1] ) );
  DFFRQX2M \mem_Buffer_reg[4][0]  ( .D(n46), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][0] ) );
  DFFRQX2M \mem_Buffer_reg[5][7]  ( .D(n45), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][7] ) );
  DFFRQX2M \mem_Buffer_reg[5][6]  ( .D(n44), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][6] ) );
  DFFRQX2M \mem_Buffer_reg[5][5]  ( .D(n43), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][5] ) );
  DFFRQX2M \mem_Buffer_reg[5][4]  ( .D(n42), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][4] ) );
  DFFRQX2M \mem_Buffer_reg[5][3]  ( .D(n41), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][3] ) );
  DFFRQX2M \mem_Buffer_reg[5][2]  ( .D(n40), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][2] ) );
  DFFRQX2M \mem_Buffer_reg[5][1]  ( .D(n39), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][1] ) );
  DFFRQX2M \mem_Buffer_reg[5][0]  ( .D(n38), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][0] ) );
  DFFRQX2M \mem_Buffer_reg[6][7]  ( .D(n37), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][7] ) );
  DFFRQX2M \mem_Buffer_reg[6][6]  ( .D(n36), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][6] ) );
  DFFRQX2M \mem_Buffer_reg[6][5]  ( .D(n35), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][5] ) );
  DFFRQX2M \mem_Buffer_reg[6][4]  ( .D(n34), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][4] ) );
  DFFRQX2M \mem_Buffer_reg[6][3]  ( .D(n33), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][3] ) );
  DFFRQX2M \mem_Buffer_reg[6][2]  ( .D(n32), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][2] ) );
  DFFRQX2M \mem_Buffer_reg[6][1]  ( .D(n31), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][1] ) );
  DFFRQX2M \mem_Buffer_reg[6][0]  ( .D(n30), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][0] ) );
  DFFRQX2M \mem_Buffer_reg[7][7]  ( .D(n29), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][7] ) );
  DFFRQX2M \mem_Buffer_reg[7][6]  ( .D(n28), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][6] ) );
  DFFRQX2M \mem_Buffer_reg[7][5]  ( .D(n27), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][5] ) );
  DFFRQX2M \mem_Buffer_reg[7][4]  ( .D(n26), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][4] ) );
  DFFRQX2M \mem_Buffer_reg[7][3]  ( .D(n25), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][3] ) );
  DFFRQX2M \mem_Buffer_reg[7][2]  ( .D(n24), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][2] ) );
  DFFRQX2M \mem_Buffer_reg[7][1]  ( .D(n23), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][1] ) );
  DFFRQX2M \mem_Buffer_reg[7][0]  ( .D(n22), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][0] ) );
  DFFRQX2M \mem_Buffer_reg[2][7]  ( .D(n69), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][7] ) );
  DFFRQX2M \mem_Buffer_reg[2][6]  ( .D(n68), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][6] ) );
  DFFRQX2M \mem_Buffer_reg[2][5]  ( .D(n67), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][5] ) );
  DFFRQX2M \mem_Buffer_reg[2][4]  ( .D(n66), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][4] ) );
  DFFRQX2M \mem_Buffer_reg[2][3]  ( .D(n65), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][3] ) );
  DFFRQX2M \mem_Buffer_reg[2][2]  ( .D(n64), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][2] ) );
  DFFRQX2M \mem_Buffer_reg[2][1]  ( .D(n63), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][1] ) );
  DFFRQX2M \mem_Buffer_reg[2][0]  ( .D(n62), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][0] ) );
  DFFRQX2M \mem_Buffer_reg[3][7]  ( .D(n61), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][7] ) );
  DFFRQX2M \mem_Buffer_reg[3][6]  ( .D(n60), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][6] ) );
  DFFRQX2M \mem_Buffer_reg[3][5]  ( .D(n59), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][5] ) );
  DFFRQX2M \mem_Buffer_reg[3][4]  ( .D(n58), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][4] ) );
  DFFRQX2M \mem_Buffer_reg[3][3]  ( .D(n57), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][3] ) );
  DFFRQX2M \mem_Buffer_reg[3][2]  ( .D(n56), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][2] ) );
  DFFRQX2M \mem_Buffer_reg[3][1]  ( .D(n55), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][1] ) );
  DFFRQX2M \mem_Buffer_reg[3][0]  ( .D(n54), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][0] ) );
  BUFX2M U2 ( .A(n17), .Y(n117) );
  BUFX2M U3 ( .A(n19), .Y(n116) );
  BUFX2M U4 ( .A(n20), .Y(n115) );
  BUFX2M U5 ( .A(n13), .Y(n118) );
  NAND3X2M U6 ( .A(n119), .B(n120), .C(n12), .Y(n15) );
  NAND3X2M U7 ( .A(n119), .B(n120), .C(n18), .Y(n21) );
  NOR2X2M U8 ( .A(n112), .B(n113), .Y(n108) );
  NOR2BX2M U9 ( .AN(n16), .B(w_addr[2]), .Y(n18) );
  OAI2BB2X1M U10 ( .B0(n128), .B1(n21), .A0N(\mem_Buffer[0][0] ), .A1N(n21), 
        .Y(n78) );
  OAI2BB2X1M U11 ( .B0(n127), .B1(n21), .A0N(\mem_Buffer[0][1] ), .A1N(n21), 
        .Y(n79) );
  OAI2BB2X1M U12 ( .B0(n126), .B1(n21), .A0N(\mem_Buffer[0][2] ), .A1N(n21), 
        .Y(n80) );
  OAI2BB2X1M U13 ( .B0(n125), .B1(n21), .A0N(\mem_Buffer[0][3] ), .A1N(n21), 
        .Y(n81) );
  OAI2BB2X1M U14 ( .B0(n124), .B1(n21), .A0N(\mem_Buffer[0][4] ), .A1N(n21), 
        .Y(n82) );
  OAI2BB2X1M U15 ( .B0(n123), .B1(n21), .A0N(\mem_Buffer[0][5] ), .A1N(n21), 
        .Y(n83) );
  OAI2BB2X1M U16 ( .B0(n122), .B1(n21), .A0N(\mem_Buffer[0][6] ), .A1N(n21), 
        .Y(n84) );
  OAI2BB2X1M U17 ( .B0(n121), .B1(n21), .A0N(\mem_Buffer[0][7] ), .A1N(n21), 
        .Y(n85) );
  OAI2BB2X1M U18 ( .B0(n128), .B1(n15), .A0N(\mem_Buffer[4][0] ), .A1N(n15), 
        .Y(n46) );
  OAI2BB2X1M U19 ( .B0(n127), .B1(n15), .A0N(\mem_Buffer[4][1] ), .A1N(n15), 
        .Y(n47) );
  OAI2BB2X1M U20 ( .B0(n126), .B1(n15), .A0N(\mem_Buffer[4][2] ), .A1N(n15), 
        .Y(n48) );
  OAI2BB2X1M U21 ( .B0(n125), .B1(n15), .A0N(\mem_Buffer[4][3] ), .A1N(n15), 
        .Y(n49) );
  OAI2BB2X1M U22 ( .B0(n124), .B1(n15), .A0N(\mem_Buffer[4][4] ), .A1N(n15), 
        .Y(n50) );
  OAI2BB2X1M U23 ( .B0(n123), .B1(n15), .A0N(\mem_Buffer[4][5] ), .A1N(n15), 
        .Y(n51) );
  OAI2BB2X1M U24 ( .B0(n122), .B1(n15), .A0N(\mem_Buffer[4][6] ), .A1N(n15), 
        .Y(n52) );
  OAI2BB2X1M U25 ( .B0(n121), .B1(n15), .A0N(\mem_Buffer[4][7] ), .A1N(n15), 
        .Y(n53) );
  OAI2BB2X1M U26 ( .B0(n128), .B1(n117), .A0N(\mem_Buffer[3][0] ), .A1N(n117), 
        .Y(n54) );
  OAI2BB2X1M U27 ( .B0(n127), .B1(n117), .A0N(\mem_Buffer[3][1] ), .A1N(n117), 
        .Y(n55) );
  OAI2BB2X1M U28 ( .B0(n126), .B1(n117), .A0N(\mem_Buffer[3][2] ), .A1N(n117), 
        .Y(n56) );
  OAI2BB2X1M U29 ( .B0(n125), .B1(n117), .A0N(\mem_Buffer[3][3] ), .A1N(n117), 
        .Y(n57) );
  OAI2BB2X1M U30 ( .B0(n124), .B1(n117), .A0N(\mem_Buffer[3][4] ), .A1N(n117), 
        .Y(n58) );
  OAI2BB2X1M U31 ( .B0(n123), .B1(n117), .A0N(\mem_Buffer[3][5] ), .A1N(n117), 
        .Y(n59) );
  OAI2BB2X1M U32 ( .B0(n122), .B1(n117), .A0N(\mem_Buffer[3][6] ), .A1N(n117), 
        .Y(n60) );
  OAI2BB2X1M U33 ( .B0(n121), .B1(n117), .A0N(\mem_Buffer[3][7] ), .A1N(n117), 
        .Y(n61) );
  OAI2BB2X1M U34 ( .B0(n128), .B1(n116), .A0N(\mem_Buffer[2][0] ), .A1N(n116), 
        .Y(n62) );
  OAI2BB2X1M U35 ( .B0(n127), .B1(n116), .A0N(\mem_Buffer[2][1] ), .A1N(n116), 
        .Y(n63) );
  OAI2BB2X1M U36 ( .B0(n126), .B1(n116), .A0N(\mem_Buffer[2][2] ), .A1N(n116), 
        .Y(n64) );
  OAI2BB2X1M U37 ( .B0(n125), .B1(n116), .A0N(\mem_Buffer[2][3] ), .A1N(n116), 
        .Y(n65) );
  OAI2BB2X1M U38 ( .B0(n124), .B1(n116), .A0N(\mem_Buffer[2][4] ), .A1N(n116), 
        .Y(n66) );
  OAI2BB2X1M U39 ( .B0(n123), .B1(n116), .A0N(\mem_Buffer[2][5] ), .A1N(n116), 
        .Y(n67) );
  OAI2BB2X1M U40 ( .B0(n122), .B1(n116), .A0N(\mem_Buffer[2][6] ), .A1N(n116), 
        .Y(n68) );
  OAI2BB2X1M U41 ( .B0(n121), .B1(n116), .A0N(\mem_Buffer[2][7] ), .A1N(n116), 
        .Y(n69) );
  OAI2BB2X1M U42 ( .B0(n128), .B1(n115), .A0N(\mem_Buffer[1][0] ), .A1N(n115), 
        .Y(n70) );
  OAI2BB2X1M U43 ( .B0(n127), .B1(n115), .A0N(\mem_Buffer[1][1] ), .A1N(n115), 
        .Y(n71) );
  OAI2BB2X1M U44 ( .B0(n126), .B1(n115), .A0N(\mem_Buffer[1][2] ), .A1N(n115), 
        .Y(n72) );
  OAI2BB2X1M U45 ( .B0(n125), .B1(n115), .A0N(\mem_Buffer[1][3] ), .A1N(n115), 
        .Y(n73) );
  OAI2BB2X1M U46 ( .B0(n124), .B1(n115), .A0N(\mem_Buffer[1][4] ), .A1N(n115), 
        .Y(n74) );
  OAI2BB2X1M U47 ( .B0(n123), .B1(n115), .A0N(\mem_Buffer[1][5] ), .A1N(n115), 
        .Y(n75) );
  OAI2BB2X1M U48 ( .B0(n122), .B1(n115), .A0N(\mem_Buffer[1][6] ), .A1N(n115), 
        .Y(n76) );
  OAI2BB2X1M U49 ( .B0(n121), .B1(n115), .A0N(\mem_Buffer[1][7] ), .A1N(n115), 
        .Y(n77) );
  NAND3X2M U50 ( .A(w_addr[1]), .B(w_addr[0]), .C(n18), .Y(n17) );
  NAND3X2M U51 ( .A(w_addr[1]), .B(n119), .C(n18), .Y(n19) );
  NOR2BX2M U52 ( .AN(w_inc), .B(w_full), .Y(n16) );
  AND2X2M U53 ( .A(w_addr[2]), .B(n16), .Y(n12) );
  NAND3X2M U54 ( .A(w_addr[0]), .B(n120), .C(n18), .Y(n20) );
  NAND3X2M U55 ( .A(n12), .B(n120), .C(w_addr[0]), .Y(n14) );
  NAND3X2M U56 ( .A(w_addr[0]), .B(n12), .C(w_addr[1]), .Y(n11) );
  INVX2M U57 ( .A(w_addr[1]), .Y(n120) );
  OAI2BB2X1M U58 ( .B0(n11), .B1(n128), .A0N(\mem_Buffer[7][0] ), .A1N(n11), 
        .Y(n22) );
  OAI2BB2X1M U59 ( .B0(n11), .B1(n127), .A0N(\mem_Buffer[7][1] ), .A1N(n11), 
        .Y(n23) );
  OAI2BB2X1M U60 ( .B0(n11), .B1(n126), .A0N(\mem_Buffer[7][2] ), .A1N(n11), 
        .Y(n24) );
  OAI2BB2X1M U61 ( .B0(n11), .B1(n125), .A0N(\mem_Buffer[7][3] ), .A1N(n11), 
        .Y(n25) );
  OAI2BB2X1M U62 ( .B0(n11), .B1(n124), .A0N(\mem_Buffer[7][4] ), .A1N(n11), 
        .Y(n26) );
  OAI2BB2X1M U63 ( .B0(n11), .B1(n123), .A0N(\mem_Buffer[7][5] ), .A1N(n11), 
        .Y(n27) );
  OAI2BB2X1M U64 ( .B0(n11), .B1(n122), .A0N(\mem_Buffer[7][6] ), .A1N(n11), 
        .Y(n28) );
  OAI2BB2X1M U65 ( .B0(n11), .B1(n121), .A0N(\mem_Buffer[7][7] ), .A1N(n11), 
        .Y(n29) );
  OAI2BB2X1M U66 ( .B0(n128), .B1(n14), .A0N(\mem_Buffer[5][0] ), .A1N(n14), 
        .Y(n38) );
  OAI2BB2X1M U67 ( .B0(n127), .B1(n14), .A0N(\mem_Buffer[5][1] ), .A1N(n14), 
        .Y(n39) );
  OAI2BB2X1M U68 ( .B0(n126), .B1(n14), .A0N(\mem_Buffer[5][2] ), .A1N(n14), 
        .Y(n40) );
  OAI2BB2X1M U69 ( .B0(n125), .B1(n14), .A0N(\mem_Buffer[5][3] ), .A1N(n14), 
        .Y(n41) );
  OAI2BB2X1M U70 ( .B0(n124), .B1(n14), .A0N(\mem_Buffer[5][4] ), .A1N(n14), 
        .Y(n42) );
  OAI2BB2X1M U71 ( .B0(n123), .B1(n14), .A0N(\mem_Buffer[5][5] ), .A1N(n14), 
        .Y(n43) );
  OAI2BB2X1M U72 ( .B0(n122), .B1(n14), .A0N(\mem_Buffer[5][6] ), .A1N(n14), 
        .Y(n44) );
  OAI2BB2X1M U73 ( .B0(n121), .B1(n14), .A0N(\mem_Buffer[5][7] ), .A1N(n14), 
        .Y(n45) );
  INVX2M U74 ( .A(w_addr[0]), .Y(n119) );
  OAI2BB2X1M U75 ( .B0(n128), .B1(n118), .A0N(\mem_Buffer[6][0] ), .A1N(n118), 
        .Y(n30) );
  OAI2BB2X1M U76 ( .B0(n127), .B1(n118), .A0N(\mem_Buffer[6][1] ), .A1N(n118), 
        .Y(n31) );
  OAI2BB2X1M U77 ( .B0(n126), .B1(n118), .A0N(\mem_Buffer[6][2] ), .A1N(n118), 
        .Y(n32) );
  OAI2BB2X1M U78 ( .B0(n125), .B1(n118), .A0N(\mem_Buffer[6][3] ), .A1N(n118), 
        .Y(n33) );
  OAI2BB2X1M U79 ( .B0(n124), .B1(n118), .A0N(\mem_Buffer[6][4] ), .A1N(n118), 
        .Y(n34) );
  OAI2BB2X1M U80 ( .B0(n123), .B1(n118), .A0N(\mem_Buffer[6][5] ), .A1N(n118), 
        .Y(n35) );
  OAI2BB2X1M U81 ( .B0(n122), .B1(n118), .A0N(\mem_Buffer[6][6] ), .A1N(n118), 
        .Y(n36) );
  OAI2BB2X1M U82 ( .B0(n121), .B1(n118), .A0N(\mem_Buffer[6][7] ), .A1N(n118), 
        .Y(n37) );
  NAND3X2M U83 ( .A(n12), .B(n119), .C(w_addr[1]), .Y(n13) );
  INVX2M U84 ( .A(w_data[0]), .Y(n128) );
  INVX2M U85 ( .A(w_data[1]), .Y(n127) );
  INVX2M U86 ( .A(w_data[2]), .Y(n126) );
  INVX2M U87 ( .A(w_data[3]), .Y(n125) );
  INVX2M U88 ( .A(w_data[4]), .Y(n124) );
  INVX2M U89 ( .A(w_data[5]), .Y(n123) );
  INVX2M U90 ( .A(w_data[6]), .Y(n122) );
  INVX2M U91 ( .A(w_data[7]), .Y(n121) );
  NOR2X2M U92 ( .A(n113), .B(N12), .Y(n106) );
  NOR2X2M U93 ( .A(n112), .B(N11), .Y(n109) );
  NOR2X2M U94 ( .A(N11), .B(N12), .Y(n105) );
  INVX2M U95 ( .A(N11), .Y(n113) );
  INVX2M U96 ( .A(N12), .Y(n112) );
  INVX2M U97 ( .A(N10), .Y(n114) );
  AO22X1M U98 ( .A0(\mem_Buffer[3][0] ), .A1(n106), .B0(\mem_Buffer[1][0] ), 
        .B1(n105), .Y(n1) );
  AOI221XLM U99 ( .A0(\mem_Buffer[5][0] ), .A1(n109), .B0(\mem_Buffer[7][0] ), 
        .B1(n108), .C0(n1), .Y(n4) );
  AO22X1M U100 ( .A0(\mem_Buffer[2][0] ), .A1(n106), .B0(\mem_Buffer[0][0] ), 
        .B1(n105), .Y(n2) );
  AOI221XLM U101 ( .A0(\mem_Buffer[4][0] ), .A1(n109), .B0(\mem_Buffer[6][0] ), 
        .B1(n108), .C0(n2), .Y(n3) );
  OAI22X1M U102 ( .A0(n114), .A1(n4), .B0(N10), .B1(n3), .Y(r_data[0]) );
  AO22X1M U103 ( .A0(\mem_Buffer[3][1] ), .A1(n106), .B0(\mem_Buffer[1][1] ), 
        .B1(n105), .Y(n5) );
  AOI221XLM U104 ( .A0(\mem_Buffer[5][1] ), .A1(n109), .B0(\mem_Buffer[7][1] ), 
        .B1(n108), .C0(n5), .Y(n8) );
  AO22X1M U105 ( .A0(\mem_Buffer[2][1] ), .A1(n106), .B0(\mem_Buffer[0][1] ), 
        .B1(n105), .Y(n6) );
  AOI221XLM U106 ( .A0(\mem_Buffer[4][1] ), .A1(n109), .B0(\mem_Buffer[6][1] ), 
        .B1(n108), .C0(n6), .Y(n7) );
  OAI22X1M U107 ( .A0(n114), .A1(n8), .B0(N10), .B1(n7), .Y(r_data[1]) );
  AO22X1M U108 ( .A0(\mem_Buffer[3][2] ), .A1(n106), .B0(\mem_Buffer[1][2] ), 
        .B1(n105), .Y(n9) );
  AOI221XLM U109 ( .A0(\mem_Buffer[5][2] ), .A1(n109), .B0(\mem_Buffer[7][2] ), 
        .B1(n108), .C0(n9), .Y(n87) );
  AO22X1M U110 ( .A0(\mem_Buffer[2][2] ), .A1(n106), .B0(\mem_Buffer[0][2] ), 
        .B1(n105), .Y(n10) );
  AOI221XLM U111 ( .A0(\mem_Buffer[4][2] ), .A1(n109), .B0(\mem_Buffer[6][2] ), 
        .B1(n108), .C0(n10), .Y(n86) );
  OAI22X1M U112 ( .A0(n114), .A1(n87), .B0(N10), .B1(n86), .Y(r_data[2]) );
  AO22X1M U113 ( .A0(\mem_Buffer[3][3] ), .A1(n106), .B0(\mem_Buffer[1][3] ), 
        .B1(n105), .Y(n88) );
  AOI221XLM U114 ( .A0(\mem_Buffer[5][3] ), .A1(n109), .B0(\mem_Buffer[7][3] ), 
        .B1(n108), .C0(n88), .Y(n91) );
  AO22X1M U115 ( .A0(\mem_Buffer[2][3] ), .A1(n106), .B0(\mem_Buffer[0][3] ), 
        .B1(n105), .Y(n89) );
  AOI221XLM U116 ( .A0(\mem_Buffer[4][3] ), .A1(n109), .B0(\mem_Buffer[6][3] ), 
        .B1(n108), .C0(n89), .Y(n90) );
  OAI22X1M U117 ( .A0(n114), .A1(n91), .B0(N10), .B1(n90), .Y(r_data[3]) );
  AO22X1M U118 ( .A0(\mem_Buffer[3][4] ), .A1(n106), .B0(\mem_Buffer[1][4] ), 
        .B1(n105), .Y(n92) );
  AOI221XLM U119 ( .A0(\mem_Buffer[5][4] ), .A1(n109), .B0(\mem_Buffer[7][4] ), 
        .B1(n108), .C0(n92), .Y(n95) );
  AO22X1M U120 ( .A0(\mem_Buffer[2][4] ), .A1(n106), .B0(\mem_Buffer[0][4] ), 
        .B1(n105), .Y(n93) );
  AOI221XLM U121 ( .A0(\mem_Buffer[4][4] ), .A1(n109), .B0(\mem_Buffer[6][4] ), 
        .B1(n108), .C0(n93), .Y(n94) );
  OAI22X1M U122 ( .A0(n114), .A1(n95), .B0(N10), .B1(n94), .Y(r_data[4]) );
  AO22X1M U123 ( .A0(\mem_Buffer[3][5] ), .A1(n106), .B0(\mem_Buffer[1][5] ), 
        .B1(n105), .Y(n96) );
  AOI221XLM U124 ( .A0(\mem_Buffer[5][5] ), .A1(n109), .B0(\mem_Buffer[7][5] ), 
        .B1(n108), .C0(n96), .Y(n99) );
  AO22X1M U125 ( .A0(\mem_Buffer[2][5] ), .A1(n106), .B0(\mem_Buffer[0][5] ), 
        .B1(n105), .Y(n97) );
  AOI221XLM U126 ( .A0(\mem_Buffer[4][5] ), .A1(n109), .B0(\mem_Buffer[6][5] ), 
        .B1(n108), .C0(n97), .Y(n98) );
  OAI22X1M U127 ( .A0(n114), .A1(n99), .B0(N10), .B1(n98), .Y(r_data[5]) );
  AO22X1M U128 ( .A0(\mem_Buffer[3][6] ), .A1(n106), .B0(\mem_Buffer[1][6] ), 
        .B1(n105), .Y(n100) );
  AOI221XLM U129 ( .A0(\mem_Buffer[5][6] ), .A1(n109), .B0(\mem_Buffer[7][6] ), 
        .B1(n108), .C0(n100), .Y(n103) );
  AO22X1M U130 ( .A0(\mem_Buffer[2][6] ), .A1(n106), .B0(\mem_Buffer[0][6] ), 
        .B1(n105), .Y(n101) );
  AOI221XLM U131 ( .A0(\mem_Buffer[4][6] ), .A1(n109), .B0(\mem_Buffer[6][6] ), 
        .B1(n108), .C0(n101), .Y(n102) );
  OAI22X1M U132 ( .A0(n114), .A1(n103), .B0(N10), .B1(n102), .Y(r_data[6]) );
  AO22X1M U133 ( .A0(\mem_Buffer[3][7] ), .A1(n106), .B0(\mem_Buffer[1][7] ), 
        .B1(n105), .Y(n104) );
  AOI221XLM U134 ( .A0(\mem_Buffer[5][7] ), .A1(n109), .B0(\mem_Buffer[7][7] ), 
        .B1(n108), .C0(n104), .Y(n111) );
  AO22X1M U135 ( .A0(\mem_Buffer[2][7] ), .A1(n106), .B0(\mem_Buffer[0][7] ), 
        .B1(n105), .Y(n107) );
  AOI221XLM U136 ( .A0(\mem_Buffer[4][7] ), .A1(n109), .B0(\mem_Buffer[6][7] ), 
        .B1(n108), .C0(n107), .Y(n110) );
  OAI22X1M U137 ( .A0(n111), .A1(n114), .B0(N10), .B1(n110), .Y(r_data[7]) );
endmodule


module FIFO_WR_DEPTH8 ( w_clk, w_rst, grey_r_ptr, w_inc, w_addr, grey_w_ptr, 
        w_full );
  input [3:0] grey_r_ptr;
  output [2:0] w_addr;
  output [3:0] grey_w_ptr;
  input w_clk, w_rst, w_inc;
  output w_full;
  wire   \w_ptr[3] , N7, N8, N9, n1, n2, n3, n4, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n5;

  DFFRQX2M \w_ptr_reg[3]  ( .D(n11), .CK(w_clk), .RN(w_rst), .Q(\w_ptr[3] ) );
  DFFRQX2M \grey_w_ptr_reg[0]  ( .D(N9), .CK(w_clk), .RN(w_rst), .Q(
        grey_w_ptr[0]) );
  DFFRQX2M \grey_w_ptr_reg[1]  ( .D(N8), .CK(w_clk), .RN(w_rst), .Q(
        grey_w_ptr[1]) );
  DFFRQX2M \w_ptr_reg[2]  ( .D(n12), .CK(w_clk), .RN(w_rst), .Q(w_addr[2]) );
  DFFRQX2M \w_ptr_reg[0]  ( .D(n14), .CK(w_clk), .RN(w_rst), .Q(w_addr[0]) );
  DFFRQX2M \grey_w_ptr_reg[3]  ( .D(\w_ptr[3] ), .CK(w_clk), .RN(w_rst), .Q(
        grey_w_ptr[3]) );
  DFFRQX2M \grey_w_ptr_reg[2]  ( .D(N7), .CK(w_clk), .RN(w_rst), .Q(
        grey_w_ptr[2]) );
  DFFRQX2M \w_ptr_reg[1]  ( .D(n13), .CK(w_clk), .RN(w_rst), .Q(w_addr[1]) );
  INVX2M U3 ( .A(n1), .Y(w_full) );
  NOR2X2M U4 ( .A(n5), .B(n6), .Y(n4) );
  NAND4X2M U5 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n1) );
  XNOR2X2M U6 ( .A(grey_w_ptr[0]), .B(grey_r_ptr[0]), .Y(n7) );
  XNOR2X2M U7 ( .A(grey_w_ptr[1]), .B(grey_r_ptr[1]), .Y(n8) );
  CLKXOR2X2M U8 ( .A(grey_w_ptr[2]), .B(grey_r_ptr[2]), .Y(n9) );
  CLKXOR2X2M U9 ( .A(grey_w_ptr[3]), .B(grey_r_ptr[3]), .Y(n10) );
  XNOR2X2M U10 ( .A(w_addr[2]), .B(n3), .Y(n12) );
  XNOR2X2M U11 ( .A(w_addr[1]), .B(n5), .Y(N9) );
  XNOR2X2M U12 ( .A(\w_ptr[3] ), .B(n2), .Y(n11) );
  NAND2BX2M U13 ( .AN(n3), .B(w_addr[2]), .Y(n2) );
  XNOR2X2M U14 ( .A(w_addr[0]), .B(n6), .Y(n14) );
  NAND2X2M U15 ( .A(w_addr[1]), .B(n4), .Y(n3) );
  INVX2M U16 ( .A(w_addr[0]), .Y(n5) );
  NAND2X2M U17 ( .A(w_inc), .B(n1), .Y(n6) );
  CLKXOR2X2M U18 ( .A(w_addr[1]), .B(n4), .Y(n13) );
  CLKXOR2X2M U19 ( .A(w_addr[2]), .B(w_addr[1]), .Y(N8) );
  CLKXOR2X2M U20 ( .A(\w_ptr[3] ), .B(w_addr[2]), .Y(N7) );
endmodule


module FIFO_RD_DEPTH8 ( r_clk, r_rst, grey_w_ptr, r_inc, r_addr, grey_r_ptr, 
        r_empty );
  input [3:0] grey_w_ptr;
  output [2:0] r_addr;
  output [3:0] grey_r_ptr;
  input r_clk, r_rst, r_inc;
  output r_empty;
  wire   \r_ptr[3] , N7, N8, N9, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n1;

  DFFRQX2M \grey_r_ptr_reg[0]  ( .D(N9), .CK(r_clk), .RN(r_rst), .Q(
        grey_r_ptr[0]) );
  DFFRQX2M \grey_r_ptr_reg[3]  ( .D(\r_ptr[3] ), .CK(r_clk), .RN(r_rst), .Q(
        grey_r_ptr[3]) );
  DFFRQX2M \grey_r_ptr_reg[2]  ( .D(N7), .CK(r_clk), .RN(r_rst), .Q(
        grey_r_ptr[2]) );
  DFFRQX2M \grey_r_ptr_reg[1]  ( .D(N8), .CK(r_clk), .RN(r_rst), .Q(
        grey_r_ptr[1]) );
  DFFRQX2M \r_ptr_reg[3]  ( .D(n11), .CK(r_clk), .RN(r_rst), .Q(\r_ptr[3] ) );
  DFFRQX2M \r_ptr_reg[0]  ( .D(n14), .CK(r_clk), .RN(r_rst), .Q(r_addr[0]) );
  DFFRQX2M \r_ptr_reg[2]  ( .D(n12), .CK(r_clk), .RN(r_rst), .Q(r_addr[2]) );
  DFFRQX2M \r_ptr_reg[1]  ( .D(n13), .CK(r_clk), .RN(r_rst), .Q(r_addr[1]) );
  NOR2X2M U3 ( .A(n1), .B(n6), .Y(n5) );
  INVX2M U4 ( .A(n2), .Y(r_empty) );
  XNOR2X2M U5 ( .A(grey_w_ptr[1]), .B(grey_r_ptr[1]), .Y(n7) );
  XNOR2X2M U6 ( .A(r_addr[2]), .B(n4), .Y(n12) );
  XNOR2X2M U7 ( .A(\r_ptr[3] ), .B(n3), .Y(n11) );
  NAND2BX2M U8 ( .AN(n4), .B(r_addr[2]), .Y(n3) );
  XNOR2X2M U9 ( .A(r_addr[1]), .B(n1), .Y(N9) );
  XNOR2X2M U10 ( .A(r_addr[0]), .B(n6), .Y(n14) );
  NAND4X2M U11 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n2) );
  XNOR2X2M U12 ( .A(grey_w_ptr[3]), .B(grey_r_ptr[3]), .Y(n9) );
  XNOR2X2M U13 ( .A(grey_w_ptr[2]), .B(grey_r_ptr[2]), .Y(n10) );
  XNOR2X2M U14 ( .A(grey_w_ptr[0]), .B(grey_r_ptr[0]), .Y(n8) );
  NAND2X2M U15 ( .A(r_addr[1]), .B(n5), .Y(n4) );
  NAND2X2M U16 ( .A(r_inc), .B(n2), .Y(n6) );
  INVX2M U17 ( .A(r_addr[0]), .Y(n1) );
  CLKXOR2X2M U18 ( .A(r_addr[1]), .B(n5), .Y(n13) );
  CLKXOR2X2M U19 ( .A(r_addr[2]), .B(r_addr[1]), .Y(N8) );
  CLKXOR2X2M U20 ( .A(\r_ptr[3] ), .B(r_addr[2]), .Y(N7) );
endmodule


module DF_SYNC_DEPTH8_0 ( clk, rst, ptr, sync_ptr );
  input [3:0] ptr;
  output [3:0] sync_ptr;
  input clk, rst;
  wire   \sync_reg[0][3] , \sync_reg[0][2] , \sync_reg[0][1] ,
         \sync_reg[0][0] ;

  DFFRQX2M \sync_reg_reg[1][3]  ( .D(\sync_reg[0][3] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[3]) );
  DFFRQX2M \sync_reg_reg[1][2]  ( .D(\sync_reg[0][2] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[2]) );
  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[0][1] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[1]) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(\sync_reg[0][0] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[0]) );
  DFFRQX2M \sync_reg_reg[0][3]  ( .D(ptr[3]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][3] ) );
  DFFRQX2M \sync_reg_reg[0][2]  ( .D(ptr[2]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][2] ) );
  DFFRQX2M \sync_reg_reg[0][1]  ( .D(ptr[1]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][1] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(ptr[0]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][0] ) );
endmodule


module DF_SYNC_DEPTH8_1 ( clk, rst, ptr, sync_ptr );
  input [3:0] ptr;
  output [3:0] sync_ptr;
  input clk, rst;
  wire   \sync_reg[0][3] , \sync_reg[0][2] , \sync_reg[0][1] ,
         \sync_reg[0][0] ;

  DFFRQX2M \sync_reg_reg[1][1]  ( .D(\sync_reg[0][1] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[1]) );
  DFFRQX2M \sync_reg_reg[1][0]  ( .D(\sync_reg[0][0] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[0]) );
  DFFRQX2M \sync_reg_reg[1][3]  ( .D(\sync_reg[0][3] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[3]) );
  DFFRQX2M \sync_reg_reg[1][2]  ( .D(\sync_reg[0][2] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[2]) );
  DFFRQX2M \sync_reg_reg[0][3]  ( .D(ptr[3]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][3] ) );
  DFFRQX2M \sync_reg_reg[0][2]  ( .D(ptr[2]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][2] ) );
  DFFRQX2M \sync_reg_reg[0][1]  ( .D(ptr[1]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][1] ) );
  DFFRQX2M \sync_reg_reg[0][0]  ( .D(ptr[0]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][0] ) );
endmodule


module FIFO_TOP_DATA_WIDTH8_DEPTH8 ( W_CLK, R_CLK, W_RST, R_RST, W_INC, R_INC, 
        WR_DATA, RD_DATA, EMPTY, FULL );
  input [7:0] WR_DATA;
  output [7:0] RD_DATA;
  input W_CLK, R_CLK, W_RST, R_RST, W_INC, R_INC;
  output EMPTY, FULL;

  wire   [2:0] w_addr;
  wire   [2:0] r_addr;
  wire   [3:0] sync_r_ptr;
  wire   [3:0] grey_w_ptr;
  wire   [3:0] sync_w_ptr;
  wire   [3:0] grey_r_ptr;

  FIFO_MEM_DATA_WIDTH8_DEPTH8 u_fifo_mem ( .w_clk(W_CLK), .w_rst(W_RST), 
        .w_addr(w_addr), .r_addr(r_addr), .w_inc(W_INC), .w_full(FULL), 
        .w_data(WR_DATA), .r_data(RD_DATA) );
  FIFO_WR_DEPTH8 u_fifo_wr ( .w_clk(W_CLK), .w_rst(W_RST), .grey_r_ptr(
        sync_r_ptr), .w_inc(W_INC), .w_addr(w_addr), .grey_w_ptr(grey_w_ptr), 
        .w_full(FULL) );
  FIFO_RD_DEPTH8 u_fifo_rd ( .r_clk(R_CLK), .r_rst(R_RST), .grey_w_ptr(
        sync_w_ptr), .r_inc(R_INC), .r_addr(r_addr), .grey_r_ptr(grey_r_ptr), 
        .r_empty(EMPTY) );
  DF_SYNC_DEPTH8_0 u_sync_w2r ( .clk(R_CLK), .rst(R_RST), .ptr(grey_w_ptr), 
        .sync_ptr(sync_w_ptr) );
  DF_SYNC_DEPTH8_1 u_sync_r2w ( .clk(W_CLK), .rst(W_RST), .ptr(grey_r_ptr), 
        .sync_ptr(sync_r_ptr) );
endmodule


module Data_Bus_Sync_DATA_WIDTH8_Sync_Legnth2 ( Unsync_bus, bus_enable, clk, 
        rst, Sync_bus, enable_pulse );
  input [7:0] Unsync_bus;
  output [7:0] Sync_bus;
  input bus_enable, clk, rst;
  output enable_pulse;
  wire   enable_Reg, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] Bit_Syncronizer;

  DFFRQX2M enable_Reg_reg ( .D(Bit_Syncronizer[0]), .CK(clk), .RN(rst), .Q(
        enable_Reg) );
  DFFRQX2M \Sync_bus_reg[7]  ( .D(n9), .CK(clk), .RN(rst), .Q(Sync_bus[7]) );
  DFFRQX2M \Bit_Syncronizer_reg[0]  ( .D(Bit_Syncronizer[1]), .CK(clk), .RN(
        rst), .Q(Bit_Syncronizer[0]) );
  DFFRQX2M \Sync_bus_reg[3]  ( .D(n5), .CK(clk), .RN(rst), .Q(Sync_bus[3]) );
  DFFRQX2M \Sync_bus_reg[2]  ( .D(n4), .CK(clk), .RN(rst), .Q(Sync_bus[2]) );
  DFFRQX2M \Sync_bus_reg[0]  ( .D(n2), .CK(clk), .RN(rst), .Q(Sync_bus[0]) );
  DFFRQX2M \Sync_bus_reg[6]  ( .D(n8), .CK(clk), .RN(rst), .Q(Sync_bus[6]) );
  DFFRQX2M enable_pulse_reg ( .D(n10), .CK(clk), .RN(rst), .Q(enable_pulse) );
  DFFRQX2M \Sync_bus_reg[4]  ( .D(n6), .CK(clk), .RN(rst), .Q(Sync_bus[4]) );
  DFFRQX2M \Sync_bus_reg[1]  ( .D(n3), .CK(clk), .RN(rst), .Q(Sync_bus[1]) );
  DFFRQX2M \Sync_bus_reg[5]  ( .D(n7), .CK(clk), .RN(rst), .Q(Sync_bus[5]) );
  DFFRQX2M \Bit_Syncronizer_reg[1]  ( .D(bus_enable), .CK(clk), .RN(rst), .Q(
        Bit_Syncronizer[1]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(enable_Reg), .B(Bit_Syncronizer[0]), .Y(n1) );
  AO22X1M U5 ( .A0(Unsync_bus[0]), .A1(n10), .B0(Sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(Unsync_bus[1]), .A1(n10), .B0(Sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(Unsync_bus[2]), .A1(n10), .B0(Sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(Unsync_bus[3]), .A1(n10), .B0(Sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(Unsync_bus[4]), .A1(n10), .B0(Sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(Unsync_bus[5]), .A1(n10), .B0(Sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(Unsync_bus[6]), .A1(n10), .B0(Sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(Unsync_bus[7]), .A1(n10), .B0(Sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module RX_CLK_DIV_MUX ( PRESCALE, RX_CLK_DIV_RATIO );
  input [5:0] PRESCALE;
  output [2:0] RX_CLK_DIV_RATIO;
  wire   n1, n2, n3;

  OAI21X2M U3 ( .A0(n1), .A1(n3), .B0(n2), .Y(RX_CLK_DIV_RATIO[0]) );
  AND2X2M U4 ( .A(n2), .B(n3), .Y(RX_CLK_DIV_RATIO[1]) );
  AND2X2M U5 ( .A(n1), .B(n2), .Y(RX_CLK_DIV_RATIO[2]) );
  NOR3BX2M U6 ( .AN(PRESCALE[4]), .B(PRESCALE[3]), .C(PRESCALE[5]), .Y(n3) );
  NOR3BX2M U7 ( .AN(PRESCALE[3]), .B(PRESCALE[4]), .C(PRESCALE[5]), .Y(n1) );
  NOR3X2M U8 ( .A(PRESCALE[2]), .B(PRESCALE[1]), .C(PRESCALE[0]), .Y(n2) );
endmodule


module I_CLK_DIV_DIV_RATIO_WIDTH8_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module I_CLK_DIV_DIV_RATIO_WIDTH8 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, DIVIDED_CLK, N7, N9, N10, N11, N12, N13, N14, N15, N16, N17, N18,
         N19, N20, N21, N22, N23, N24, N25, N28, N29, N30, N31, N32, N33, N34,
         N35, N56, N57, N58, N59, N60, N61, N62, N63, n10, n11, n12, n13, n14,
         n15, n16, n1, n2, n3, n4, n5, n6, n7, n8, n9, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41, n42, n43;
  wire   [7:0] COUNTER;

  I_CLK_DIV_DIV_RATIO_WIDTH8_DW01_inc_0 r70 ( .A(COUNTER), .SUM({N35, N34, N33, 
        N32, N31, N30, N29, N28}) );
  DFFRQX2M DIVIDED_CLK_reg ( .D(n16), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        DIVIDED_CLK) );
  DFFRQX2M \COUNTER_reg[7]  ( .D(N63), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[7]) );
  DFFRQX2M \COUNTER_reg[0]  ( .D(N56), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[0]) );
  DFFRQX2M \COUNTER_reg[6]  ( .D(N62), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[6]) );
  DFFRQX2M \COUNTER_reg[5]  ( .D(N61), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[5]) );
  DFFRQX2M \COUNTER_reg[4]  ( .D(N60), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[4]) );
  DFFRQX2M \COUNTER_reg[3]  ( .D(N59), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[3]) );
  DFFRQX2M \COUNTER_reg[2]  ( .D(N58), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[2]) );
  DFFRQX2M \COUNTER_reg[1]  ( .D(N57), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[1]) );
  MX2X2M U3 ( .A(i_ref_clk), .B(DIVIDED_CLK), .S0(N1), .Y(o_div_clk) );
  AOI2B1X1M U4 ( .A1N(n10), .A0(N15), .B0(n11), .Y(n13) );
  NOR2BX2M U5 ( .AN(N29), .B(n13), .Y(N57) );
  NOR2BX2M U6 ( .AN(N30), .B(n13), .Y(N58) );
  NOR2BX2M U7 ( .AN(N31), .B(n13), .Y(N59) );
  NOR2BX2M U8 ( .AN(N32), .B(n13), .Y(N60) );
  NOR2BX2M U9 ( .AN(N33), .B(n13), .Y(N61) );
  NOR2BX2M U10 ( .AN(N34), .B(n13), .Y(N62) );
  INVX2M U11 ( .A(n10), .Y(N1) );
  NOR3X2M U12 ( .A(N25), .B(N15), .C(n10), .Y(n11) );
  OAI31X1M U13 ( .A0(n10), .A1(N15), .A2(n11), .B0(n12), .Y(n16) );
  NAND2X2M U14 ( .A(DIVIDED_CLK), .B(n11), .Y(n12) );
  NOR2BX2M U15 ( .AN(N35), .B(n13), .Y(N63) );
  NOR2BX2M U16 ( .AN(N28), .B(n13), .Y(N56) );
  INVX2M U17 ( .A(COUNTER[0]), .Y(n31) );
  OAI2BB1X2M U18 ( .A0N(n14), .A1N(n15), .B0(i_clk_en), .Y(n10) );
  NOR3X2M U19 ( .A(i_div_ratio[1]), .B(i_div_ratio[3]), .C(i_div_ratio[2]), 
        .Y(n14) );
  NOR4X1M U20 ( .A(i_div_ratio[7]), .B(i_div_ratio[6]), .C(i_div_ratio[5]), 
        .D(i_div_ratio[4]), .Y(n15) );
  OR2X2M U21 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n2) );
  OR2X2M U22 ( .A(i_div_ratio[1]), .B(i_div_ratio[0]), .Y(n7) );
  AOI21BX2M U23 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(n2), .Y(n1)
         );
  CLKINVX1M U24 ( .A(i_div_ratio[1]), .Y(N7) );
  OR2X1M U25 ( .A(n2), .B(i_div_ratio[3]), .Y(n3) );
  OAI2BB1X1M U26 ( .A0N(n2), .A1N(i_div_ratio[3]), .B0(n3), .Y(N9) );
  OR2X1M U27 ( .A(n3), .B(i_div_ratio[4]), .Y(n4) );
  OAI2BB1X1M U28 ( .A0N(n3), .A1N(i_div_ratio[4]), .B0(n4), .Y(N10) );
  OR2X1M U29 ( .A(n4), .B(i_div_ratio[5]), .Y(n5) );
  OAI2BB1X1M U30 ( .A0N(n4), .A1N(i_div_ratio[5]), .B0(n5), .Y(N11) );
  XNOR2X1M U31 ( .A(i_div_ratio[6]), .B(n5), .Y(N12) );
  NOR3X1M U32 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n5), .Y(N14) );
  OAI21X1M U33 ( .A0(i_div_ratio[6]), .A1(n5), .B0(i_div_ratio[7]), .Y(n6) );
  NAND2BX1M U34 ( .AN(N14), .B(n6), .Y(N13) );
  CLKINVX1M U35 ( .A(i_div_ratio[0]), .Y(N16) );
  OAI2BB1X1M U36 ( .A0N(i_div_ratio[0]), .A1N(i_div_ratio[1]), .B0(n7), .Y(N17) );
  OR2X1M U37 ( .A(n7), .B(i_div_ratio[2]), .Y(n8) );
  OAI2BB1X1M U38 ( .A0N(n7), .A1N(i_div_ratio[2]), .B0(n8), .Y(N18) );
  OR2X1M U39 ( .A(n8), .B(i_div_ratio[3]), .Y(n9) );
  OAI2BB1X1M U40 ( .A0N(n8), .A1N(i_div_ratio[3]), .B0(n9), .Y(N19) );
  OR2X1M U41 ( .A(n9), .B(i_div_ratio[4]), .Y(n17) );
  OAI2BB1X1M U42 ( .A0N(n9), .A1N(i_div_ratio[4]), .B0(n17), .Y(N20) );
  OR2X1M U43 ( .A(n17), .B(i_div_ratio[5]), .Y(n18) );
  OAI2BB1X1M U44 ( .A0N(n17), .A1N(i_div_ratio[5]), .B0(n18), .Y(N21) );
  OR2X1M U45 ( .A(n18), .B(i_div_ratio[6]), .Y(n19) );
  OAI2BB1X1M U46 ( .A0N(n18), .A1N(i_div_ratio[6]), .B0(n19), .Y(N22) );
  NOR2X1M U47 ( .A(n19), .B(i_div_ratio[7]), .Y(N24) );
  AO21XLM U48 ( .A0(n19), .A1(i_div_ratio[7]), .B0(N24), .Y(N23) );
  XNOR2X1M U49 ( .A(N9), .B(COUNTER[2]), .Y(n30) );
  NOR2X1M U50 ( .A(n31), .B(N7), .Y(n20) );
  OAI22X1M U51 ( .A0(COUNTER[1]), .A1(n20), .B0(n20), .B1(n1), .Y(n29) );
  CLKNAND2X2M U52 ( .A(N7), .B(n31), .Y(n21) );
  AOI22X1M U53 ( .A0(n21), .A1(n1), .B0(n21), .B1(COUNTER[1]), .Y(n22) );
  NOR3X1M U54 ( .A(n22), .B(N14), .C(COUNTER[7]), .Y(n28) );
  CLKXOR2X2M U55 ( .A(N10), .B(COUNTER[3]), .Y(n26) );
  CLKXOR2X2M U56 ( .A(N11), .B(COUNTER[4]), .Y(n25) );
  CLKXOR2X2M U57 ( .A(N12), .B(COUNTER[5]), .Y(n24) );
  CLKXOR2X2M U58 ( .A(N13), .B(COUNTER[6]), .Y(n23) );
  NOR4X1M U59 ( .A(n26), .B(n25), .C(n24), .D(n23), .Y(n27) );
  AND4X1M U60 ( .A(n30), .B(n29), .C(n28), .D(n27), .Y(N15) );
  XNOR2X1M U61 ( .A(N22), .B(COUNTER[6]), .Y(n35) );
  XNOR2X1M U62 ( .A(N21), .B(COUNTER[5]), .Y(n34) );
  XNOR2X1M U63 ( .A(N20), .B(COUNTER[4]), .Y(n33) );
  XNOR2X1M U64 ( .A(N19), .B(COUNTER[3]), .Y(n32) );
  NAND4X1M U65 ( .A(n35), .B(n34), .C(n33), .D(n32), .Y(n43) );
  NOR2BX1M U66 ( .AN(N16), .B(COUNTER[0]), .Y(n36) );
  OAI2B2X1M U67 ( .A1N(COUNTER[1]), .A0(n36), .B0(N17), .B1(n36), .Y(n39) );
  NOR2BX1M U68 ( .AN(COUNTER[0]), .B(N16), .Y(n37) );
  OAI2B2X1M U69 ( .A1N(N17), .A0(n37), .B0(COUNTER[1]), .B1(n37), .Y(n38) );
  NAND3BX1M U70 ( .AN(N24), .B(n39), .C(n38), .Y(n42) );
  CLKXOR2X2M U71 ( .A(N23), .B(COUNTER[7]), .Y(n41) );
  CLKXOR2X2M U72 ( .A(N18), .B(COUNTER[2]), .Y(n40) );
  NOR4X1M U73 ( .A(n43), .B(n42), .C(n41), .D(n40), .Y(N25) );
endmodule


module I_CLK_DIV_DIV_RATIO_WIDTH3 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [2:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   N1, DIVIDED_CLK, N8, N9, N10, N12, N13, N14, N15, N31, N32, N33, n13,
         n14, n15, n16, n17, n18, n19, n20, \eq_27/B[0] , \eq_23/B[0] , n1, n2,
         n3, n4, n5, n6;
  wire   [2:0] COUNTER;

  DFFRQX2M DIVIDED_CLK_reg ( .D(n20), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        DIVIDED_CLK) );
  DFFRQX2M \COUNTER_reg[2]  ( .D(N33), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[2]) );
  DFFRQX2M \COUNTER_reg[1]  ( .D(N32), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[1]) );
  DFFRQX2M \COUNTER_reg[0]  ( .D(N31), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[0]) );
  INVX2M U3 ( .A(N9), .Y(n6) );
  XNOR2X2M U4 ( .A(i_div_ratio[0]), .B(i_div_ratio[1]), .Y(N12) );
  NOR2X2M U5 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(N9) );
  NOR2X2M U6 ( .A(n6), .B(i_div_ratio[0]), .Y(N14) );
  INVX2M U7 ( .A(i_div_ratio[0]), .Y(\eq_27/B[0] ) );
  NAND2BX2M U8 ( .AN(N14), .B(n19), .Y(N13) );
  OAI21X2M U9 ( .A0(i_div_ratio[0]), .A1(i_div_ratio[1]), .B0(i_div_ratio[2]), 
        .Y(n19) );
  INVX2M U10 ( .A(i_div_ratio[1]), .Y(\eq_23/B[0] ) );
  MX2X2M U11 ( .A(i_ref_clk), .B(DIVIDED_CLK), .S0(N1), .Y(o_div_clk) );
  OAI2B1X2M U12 ( .A1N(N15), .A0(N10), .B0(N1), .Y(n16) );
  INVX2M U13 ( .A(n13), .Y(N1) );
  OAI2BB1X2M U14 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n6), .Y(N8)
         );
  NOR2X2M U15 ( .A(n15), .B(n16), .Y(N33) );
  CLKXOR2X2M U16 ( .A(n17), .B(COUNTER[2]), .Y(n15) );
  NAND2X2M U17 ( .A(COUNTER[1]), .B(COUNTER[0]), .Y(n17) );
  NOR2X2M U18 ( .A(n18), .B(n16), .Y(N32) );
  XNOR2X2M U19 ( .A(COUNTER[0]), .B(COUNTER[1]), .Y(n18) );
  NOR2X2M U20 ( .A(COUNTER[0]), .B(n16), .Y(N31) );
  NOR2X2M U21 ( .A(n13), .B(n14), .Y(n20) );
  OAI21BX1M U22 ( .A0(N15), .A1(DIVIDED_CLK), .B0N(N10), .Y(n14) );
  NAND2X2M U23 ( .A(i_clk_en), .B(n6), .Y(n13) );
  CLKXOR2X2M U24 ( .A(\eq_23/B[0] ), .B(COUNTER[0]), .Y(n2) );
  CLKXOR2X2M U25 ( .A(N8), .B(COUNTER[1]), .Y(n1) );
  NOR4X1M U26 ( .A(N9), .B(COUNTER[2]), .C(n2), .D(n1), .Y(N10) );
  CLKXOR2X2M U27 ( .A(\eq_27/B[0] ), .B(COUNTER[0]), .Y(n5) );
  CLKXOR2X2M U28 ( .A(N13), .B(COUNTER[2]), .Y(n4) );
  CLKXOR2X2M U29 ( .A(N12), .B(COUNTER[1]), .Y(n3) );
  NOR4X1M U30 ( .A(N14), .B(n5), .C(n4), .D(n3), .Y(N15) );
endmodule


module pulse_gen ( CLK, RST, Signal, enable_pulse );
  input CLK, RST, Signal;
  output enable_pulse;
  wire   Signal_reg, Gen_Pulse;

  DFFRQX2M Signal_reg_reg ( .D(Signal), .CK(CLK), .RN(RST), .Q(Signal_reg) );
  DFFRQX2M enable_pulse_reg ( .D(Gen_Pulse), .CK(CLK), .RN(RST), .Q(
        enable_pulse) );
  NOR2BX2M U3 ( .AN(Signal), .B(Signal_reg), .Y(Gen_Pulse) );
endmodule


module Reg_File_WIDTH8_ADD_WIDTH4_DEPTH16 ( WrData, Address, WrEn, RdEn, clk, 
        rst, RdData, Rd_D_Valid, REG0, REG1, REG2, REG3 );
  input [7:0] WrData;
  input [3:0] Address;
  output [7:0] RdData;
  output [7:0] REG0;
  output [7:0] REG1;
  output [7:0] REG2;
  output [7:0] REG3;
  input WrEn, RdEn, clk, rst;
  output Rd_D_Valid;
  wire   N10, N11, N12, N13, \RegFile[4][7] , \RegFile[4][6] , \RegFile[4][5] ,
         \RegFile[4][4] , \RegFile[4][3] , \RegFile[4][2] , \RegFile[4][1] ,
         \RegFile[4][0] , \RegFile[5][7] , \RegFile[5][6] , \RegFile[5][5] ,
         \RegFile[5][4] , \RegFile[5][3] , \RegFile[5][2] , \RegFile[5][1] ,
         \RegFile[5][0] , \RegFile[6][7] , \RegFile[6][6] , \RegFile[6][5] ,
         \RegFile[6][4] , \RegFile[6][3] , \RegFile[6][2] , \RegFile[6][1] ,
         \RegFile[6][0] , \RegFile[7][7] , \RegFile[7][6] , \RegFile[7][5] ,
         \RegFile[7][4] , \RegFile[7][3] , \RegFile[7][2] , \RegFile[7][1] ,
         \RegFile[7][0] , \RegFile[8][7] , \RegFile[8][6] , \RegFile[8][5] ,
         \RegFile[8][4] , \RegFile[8][3] , \RegFile[8][2] , \RegFile[8][1] ,
         \RegFile[8][0] , \RegFile[9][7] , \RegFile[9][6] , \RegFile[9][5] ,
         \RegFile[9][4] , \RegFile[9][3] , \RegFile[9][2] , \RegFile[9][1] ,
         \RegFile[9][0] , \RegFile[10][7] , \RegFile[10][6] , \RegFile[10][5] ,
         \RegFile[10][4] , \RegFile[10][3] , \RegFile[10][2] ,
         \RegFile[10][1] , \RegFile[10][0] , \RegFile[11][7] ,
         \RegFile[11][6] , \RegFile[11][5] , \RegFile[11][4] ,
         \RegFile[11][3] , \RegFile[11][2] , \RegFile[11][1] ,
         \RegFile[11][0] , \RegFile[12][7] , \RegFile[12][6] ,
         \RegFile[12][5] , \RegFile[12][4] , \RegFile[12][3] ,
         \RegFile[12][2] , \RegFile[12][1] , \RegFile[12][0] ,
         \RegFile[13][7] , \RegFile[13][6] , \RegFile[13][5] ,
         \RegFile[13][4] , \RegFile[13][3] , \RegFile[13][2] ,
         \RegFile[13][1] , \RegFile[13][0] , \RegFile[14][7] ,
         \RegFile[14][6] , \RegFile[14][5] , \RegFile[14][4] ,
         \RegFile[14][3] , \RegFile[14][2] , \RegFile[14][1] ,
         \RegFile[14][0] , \RegFile[15][7] , \RegFile[15][6] ,
         \RegFile[15][5] , \RegFile[15][4] , \RegFile[15][3] ,
         \RegFile[15][2] , \RegFile[15][1] , \RegFile[15][0] , N35, N36, N37,
         N38, N39, N40, N41, N42, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n38, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293;
  assign N10 = Address[0];
  assign N11 = Address[1];
  assign N12 = Address[2];
  assign N13 = Address[3];

  DFFRQX2M Rd_D_Valid_reg ( .D(n292), .CK(clk), .RN(rst), .Q(Rd_D_Valid) );
  DFFRQX2M \RegFile_reg[5][7]  ( .D(n129), .CK(clk), .RN(rst), .Q(
        \RegFile[5][7] ) );
  DFFRQX2M \RegFile_reg[5][6]  ( .D(n128), .CK(clk), .RN(rst), .Q(
        \RegFile[5][6] ) );
  DFFRQX2M \RegFile_reg[5][5]  ( .D(n127), .CK(clk), .RN(rst), .Q(
        \RegFile[5][5] ) );
  DFFRQX2M \RegFile_reg[5][4]  ( .D(n126), .CK(clk), .RN(rst), .Q(
        \RegFile[5][4] ) );
  DFFRQX2M \RegFile_reg[5][3]  ( .D(n125), .CK(clk), .RN(rst), .Q(
        \RegFile[5][3] ) );
  DFFRQX2M \RegFile_reg[5][2]  ( .D(n124), .CK(clk), .RN(rst), .Q(
        \RegFile[5][2] ) );
  DFFRQX2M \RegFile_reg[5][1]  ( .D(n123), .CK(clk), .RN(rst), .Q(
        \RegFile[5][1] ) );
  DFFRQX2M \RegFile_reg[5][0]  ( .D(n122), .CK(clk), .RN(rst), .Q(
        \RegFile[5][0] ) );
  DFFRQX2M \RegFile_reg[7][7]  ( .D(n113), .CK(clk), .RN(rst), .Q(
        \RegFile[7][7] ) );
  DFFRQX2M \RegFile_reg[7][6]  ( .D(n112), .CK(clk), .RN(rst), .Q(
        \RegFile[7][6] ) );
  DFFRQX2M \RegFile_reg[7][5]  ( .D(n111), .CK(clk), .RN(rst), .Q(
        \RegFile[7][5] ) );
  DFFRQX2M \RegFile_reg[7][4]  ( .D(n110), .CK(clk), .RN(rst), .Q(
        \RegFile[7][4] ) );
  DFFRQX2M \RegFile_reg[7][3]  ( .D(n109), .CK(clk), .RN(rst), .Q(
        \RegFile[7][3] ) );
  DFFRQX2M \RegFile_reg[7][2]  ( .D(n108), .CK(clk), .RN(rst), .Q(
        \RegFile[7][2] ) );
  DFFRQX2M \RegFile_reg[7][1]  ( .D(n107), .CK(clk), .RN(rst), .Q(
        \RegFile[7][1] ) );
  DFFRQX2M \RegFile_reg[7][0]  ( .D(n106), .CK(clk), .RN(rst), .Q(
        \RegFile[7][0] ) );
  DFFRQX2M \RegFile_reg[9][7]  ( .D(n97), .CK(clk), .RN(rst), .Q(
        \RegFile[9][7] ) );
  DFFRQX2M \RegFile_reg[9][6]  ( .D(n96), .CK(clk), .RN(rst), .Q(
        \RegFile[9][6] ) );
  DFFRQX2M \RegFile_reg[9][5]  ( .D(n95), .CK(clk), .RN(rst), .Q(
        \RegFile[9][5] ) );
  DFFRQX2M \RegFile_reg[9][4]  ( .D(n94), .CK(clk), .RN(rst), .Q(
        \RegFile[9][4] ) );
  DFFRQX2M \RegFile_reg[9][3]  ( .D(n93), .CK(clk), .RN(rst), .Q(
        \RegFile[9][3] ) );
  DFFRQX2M \RegFile_reg[9][2]  ( .D(n92), .CK(clk), .RN(rst), .Q(
        \RegFile[9][2] ) );
  DFFRQX2M \RegFile_reg[9][1]  ( .D(n91), .CK(clk), .RN(rst), .Q(
        \RegFile[9][1] ) );
  DFFRQX2M \RegFile_reg[9][0]  ( .D(n90), .CK(clk), .RN(rst), .Q(
        \RegFile[9][0] ) );
  DFFRQX2M \RegFile_reg[11][7]  ( .D(n81), .CK(clk), .RN(rst), .Q(
        \RegFile[11][7] ) );
  DFFRQX2M \RegFile_reg[11][6]  ( .D(n80), .CK(clk), .RN(rst), .Q(
        \RegFile[11][6] ) );
  DFFRQX2M \RegFile_reg[11][5]  ( .D(n79), .CK(clk), .RN(rst), .Q(
        \RegFile[11][5] ) );
  DFFRQX2M \RegFile_reg[11][4]  ( .D(n78), .CK(clk), .RN(rst), .Q(
        \RegFile[11][4] ) );
  DFFRQX2M \RegFile_reg[11][3]  ( .D(n77), .CK(clk), .RN(rst), .Q(
        \RegFile[11][3] ) );
  DFFRQX2M \RegFile_reg[11][2]  ( .D(n76), .CK(clk), .RN(rst), .Q(
        \RegFile[11][2] ) );
  DFFRQX2M \RegFile_reg[11][1]  ( .D(n75), .CK(clk), .RN(rst), .Q(
        \RegFile[11][1] ) );
  DFFRQX2M \RegFile_reg[11][0]  ( .D(n74), .CK(clk), .RN(rst), .Q(
        \RegFile[11][0] ) );
  DFFRQX2M \RegFile_reg[13][7]  ( .D(n65), .CK(clk), .RN(rst), .Q(
        \RegFile[13][7] ) );
  DFFRQX2M \RegFile_reg[13][6]  ( .D(n64), .CK(clk), .RN(rst), .Q(
        \RegFile[13][6] ) );
  DFFRQX2M \RegFile_reg[13][5]  ( .D(n63), .CK(clk), .RN(rst), .Q(
        \RegFile[13][5] ) );
  DFFRQX2M \RegFile_reg[13][4]  ( .D(n62), .CK(clk), .RN(rst), .Q(
        \RegFile[13][4] ) );
  DFFRQX2M \RegFile_reg[13][3]  ( .D(n61), .CK(clk), .RN(rst), .Q(
        \RegFile[13][3] ) );
  DFFRQX2M \RegFile_reg[13][2]  ( .D(n60), .CK(clk), .RN(rst), .Q(
        \RegFile[13][2] ) );
  DFFRQX2M \RegFile_reg[13][1]  ( .D(n59), .CK(clk), .RN(rst), .Q(
        \RegFile[13][1] ) );
  DFFRQX2M \RegFile_reg[13][0]  ( .D(n58), .CK(clk), .RN(rst), .Q(
        \RegFile[13][0] ) );
  DFFRQX2M \RegFile_reg[15][7]  ( .D(n49), .CK(clk), .RN(rst), .Q(
        \RegFile[15][7] ) );
  DFFRQX2M \RegFile_reg[15][6]  ( .D(n48), .CK(clk), .RN(rst), .Q(
        \RegFile[15][6] ) );
  DFFRQX2M \RegFile_reg[15][5]  ( .D(n47), .CK(clk), .RN(rst), .Q(
        \RegFile[15][5] ) );
  DFFRQX2M \RegFile_reg[15][4]  ( .D(n46), .CK(clk), .RN(rst), .Q(
        \RegFile[15][4] ) );
  DFFRQX2M \RegFile_reg[15][3]  ( .D(n45), .CK(clk), .RN(rst), .Q(
        \RegFile[15][3] ) );
  DFFRQX2M \RegFile_reg[15][2]  ( .D(n44), .CK(clk), .RN(rst), .Q(
        \RegFile[15][2] ) );
  DFFRQX2M \RegFile_reg[15][1]  ( .D(n43), .CK(clk), .RN(rst), .Q(
        \RegFile[15][1] ) );
  DFFRQX2M \RegFile_reg[15][0]  ( .D(n42), .CK(clk), .RN(rst), .Q(
        \RegFile[15][0] ) );
  DFFRQX2M \RegFile_reg[4][7]  ( .D(n137), .CK(clk), .RN(rst), .Q(
        \RegFile[4][7] ) );
  DFFRQX2M \RegFile_reg[4][6]  ( .D(n136), .CK(clk), .RN(rst), .Q(
        \RegFile[4][6] ) );
  DFFRQX2M \RegFile_reg[4][5]  ( .D(n135), .CK(clk), .RN(rst), .Q(
        \RegFile[4][5] ) );
  DFFRQX2M \RegFile_reg[4][4]  ( .D(n134), .CK(clk), .RN(rst), .Q(
        \RegFile[4][4] ) );
  DFFRQX2M \RegFile_reg[4][3]  ( .D(n133), .CK(clk), .RN(rst), .Q(
        \RegFile[4][3] ) );
  DFFRQX2M \RegFile_reg[4][2]  ( .D(n132), .CK(clk), .RN(rst), .Q(
        \RegFile[4][2] ) );
  DFFRQX2M \RegFile_reg[4][1]  ( .D(n131), .CK(clk), .RN(rst), .Q(
        \RegFile[4][1] ) );
  DFFRQX2M \RegFile_reg[4][0]  ( .D(n130), .CK(clk), .RN(rst), .Q(
        \RegFile[4][0] ) );
  DFFRQX2M \RegFile_reg[6][7]  ( .D(n121), .CK(clk), .RN(rst), .Q(
        \RegFile[6][7] ) );
  DFFRQX2M \RegFile_reg[6][6]  ( .D(n120), .CK(clk), .RN(rst), .Q(
        \RegFile[6][6] ) );
  DFFRQX2M \RegFile_reg[6][5]  ( .D(n119), .CK(clk), .RN(rst), .Q(
        \RegFile[6][5] ) );
  DFFRQX2M \RegFile_reg[6][4]  ( .D(n118), .CK(clk), .RN(rst), .Q(
        \RegFile[6][4] ) );
  DFFRQX2M \RegFile_reg[6][3]  ( .D(n117), .CK(clk), .RN(rst), .Q(
        \RegFile[6][3] ) );
  DFFRQX2M \RegFile_reg[6][2]  ( .D(n116), .CK(clk), .RN(rst), .Q(
        \RegFile[6][2] ) );
  DFFRQX2M \RegFile_reg[6][1]  ( .D(n115), .CK(clk), .RN(rst), .Q(
        \RegFile[6][1] ) );
  DFFRQX2M \RegFile_reg[6][0]  ( .D(n114), .CK(clk), .RN(rst), .Q(
        \RegFile[6][0] ) );
  DFFRQX2M \RegFile_reg[8][7]  ( .D(n105), .CK(clk), .RN(rst), .Q(
        \RegFile[8][7] ) );
  DFFRQX2M \RegFile_reg[8][6]  ( .D(n104), .CK(clk), .RN(rst), .Q(
        \RegFile[8][6] ) );
  DFFRQX2M \RegFile_reg[8][5]  ( .D(n103), .CK(clk), .RN(rst), .Q(
        \RegFile[8][5] ) );
  DFFRQX2M \RegFile_reg[8][4]  ( .D(n102), .CK(clk), .RN(rst), .Q(
        \RegFile[8][4] ) );
  DFFRQX2M \RegFile_reg[8][3]  ( .D(n101), .CK(clk), .RN(rst), .Q(
        \RegFile[8][3] ) );
  DFFRQX2M \RegFile_reg[8][2]  ( .D(n100), .CK(clk), .RN(rst), .Q(
        \RegFile[8][2] ) );
  DFFRQX2M \RegFile_reg[8][1]  ( .D(n99), .CK(clk), .RN(rst), .Q(
        \RegFile[8][1] ) );
  DFFRQX2M \RegFile_reg[8][0]  ( .D(n98), .CK(clk), .RN(rst), .Q(
        \RegFile[8][0] ) );
  DFFRQX2M \RegFile_reg[10][7]  ( .D(n89), .CK(clk), .RN(rst), .Q(
        \RegFile[10][7] ) );
  DFFRQX2M \RegFile_reg[10][6]  ( .D(n88), .CK(clk), .RN(rst), .Q(
        \RegFile[10][6] ) );
  DFFRQX2M \RegFile_reg[10][5]  ( .D(n87), .CK(clk), .RN(rst), .Q(
        \RegFile[10][5] ) );
  DFFRQX2M \RegFile_reg[10][4]  ( .D(n86), .CK(clk), .RN(rst), .Q(
        \RegFile[10][4] ) );
  DFFRQX2M \RegFile_reg[10][3]  ( .D(n85), .CK(clk), .RN(rst), .Q(
        \RegFile[10][3] ) );
  DFFRQX2M \RegFile_reg[10][2]  ( .D(n84), .CK(clk), .RN(rst), .Q(
        \RegFile[10][2] ) );
  DFFRQX2M \RegFile_reg[10][1]  ( .D(n83), .CK(clk), .RN(rst), .Q(
        \RegFile[10][1] ) );
  DFFRQX2M \RegFile_reg[10][0]  ( .D(n82), .CK(clk), .RN(rst), .Q(
        \RegFile[10][0] ) );
  DFFRQX2M \RegFile_reg[12][7]  ( .D(n73), .CK(clk), .RN(rst), .Q(
        \RegFile[12][7] ) );
  DFFRQX2M \RegFile_reg[12][6]  ( .D(n72), .CK(clk), .RN(rst), .Q(
        \RegFile[12][6] ) );
  DFFRQX2M \RegFile_reg[12][5]  ( .D(n71), .CK(clk), .RN(rst), .Q(
        \RegFile[12][5] ) );
  DFFRQX2M \RegFile_reg[12][4]  ( .D(n70), .CK(clk), .RN(rst), .Q(
        \RegFile[12][4] ) );
  DFFRQX2M \RegFile_reg[12][3]  ( .D(n69), .CK(clk), .RN(rst), .Q(
        \RegFile[12][3] ) );
  DFFRQX2M \RegFile_reg[12][2]  ( .D(n68), .CK(clk), .RN(rst), .Q(
        \RegFile[12][2] ) );
  DFFRQX2M \RegFile_reg[12][1]  ( .D(n67), .CK(clk), .RN(rst), .Q(
        \RegFile[12][1] ) );
  DFFRQX2M \RegFile_reg[12][0]  ( .D(n66), .CK(clk), .RN(rst), .Q(
        \RegFile[12][0] ) );
  DFFRQX2M \RegFile_reg[14][7]  ( .D(n57), .CK(clk), .RN(rst), .Q(
        \RegFile[14][7] ) );
  DFFRQX2M \RegFile_reg[14][6]  ( .D(n56), .CK(clk), .RN(rst), .Q(
        \RegFile[14][6] ) );
  DFFRQX2M \RegFile_reg[14][5]  ( .D(n55), .CK(clk), .RN(rst), .Q(
        \RegFile[14][5] ) );
  DFFRQX2M \RegFile_reg[14][4]  ( .D(n54), .CK(clk), .RN(rst), .Q(
        \RegFile[14][4] ) );
  DFFRQX2M \RegFile_reg[14][3]  ( .D(n53), .CK(clk), .RN(rst), .Q(
        \RegFile[14][3] ) );
  DFFRQX2M \RegFile_reg[14][2]  ( .D(n52), .CK(clk), .RN(rst), .Q(
        \RegFile[14][2] ) );
  DFFRQX2M \RegFile_reg[14][1]  ( .D(n51), .CK(clk), .RN(rst), .Q(
        \RegFile[14][1] ) );
  DFFRQX2M \RegFile_reg[14][0]  ( .D(n50), .CK(clk), .RN(rst), .Q(
        \RegFile[14][0] ) );
  DFFRQX2M \RdData_reg[0]  ( .D(n170), .CK(clk), .RN(rst), .Q(RdData[0]) );
  DFFSQX2M \RegFile_reg[2][0]  ( .D(n146), .CK(clk), .SN(rst), .Q(REG2[0]) );
  DFFRQX2M \RdData_reg[7]  ( .D(n177), .CK(clk), .RN(rst), .Q(RdData[7]) );
  DFFRQX2M \RdData_reg[6]  ( .D(n176), .CK(clk), .RN(rst), .Q(RdData[6]) );
  DFFRQX2M \RdData_reg[5]  ( .D(n175), .CK(clk), .RN(rst), .Q(RdData[5]) );
  DFFRQX2M \RdData_reg[4]  ( .D(n174), .CK(clk), .RN(rst), .Q(RdData[4]) );
  DFFRQX2M \RdData_reg[3]  ( .D(n173), .CK(clk), .RN(rst), .Q(RdData[3]) );
  DFFRQX2M \RdData_reg[2]  ( .D(n172), .CK(clk), .RN(rst), .Q(RdData[2]) );
  DFFRQX2M \RdData_reg[1]  ( .D(n171), .CK(clk), .RN(rst), .Q(RdData[1]) );
  DFFRQX2M \RegFile_reg[2][1]  ( .D(n147), .CK(clk), .RN(rst), .Q(REG2[1]) );
  DFFRQX2M \RegFile_reg[3][0]  ( .D(n138), .CK(clk), .RN(rst), .Q(REG3[0]) );
  DFFRQX2M \RegFile_reg[3][3]  ( .D(n141), .CK(clk), .RN(rst), .Q(REG3[3]) );
  DFFRQX2M \RegFile_reg[3][2]  ( .D(n140), .CK(clk), .RN(rst), .Q(REG3[2]) );
  DFFSQX2M \RegFile_reg[3][5]  ( .D(n143), .CK(clk), .SN(rst), .Q(REG3[5]) );
  DFFRQX2M \RegFile_reg[3][7]  ( .D(n145), .CK(clk), .RN(rst), .Q(REG3[7]) );
  DFFRQX2M \RegFile_reg[3][4]  ( .D(n142), .CK(clk), .RN(rst), .Q(REG3[4]) );
  DFFRQX2M \RegFile_reg[3][6]  ( .D(n144), .CK(clk), .RN(rst), .Q(REG3[6]) );
  DFFRQX2M \RegFile_reg[2][2]  ( .D(n148), .CK(clk), .RN(rst), .Q(REG2[2]) );
  DFFRQX2M \RegFile_reg[3][1]  ( .D(n139), .CK(clk), .RN(rst), .Q(REG3[1]) );
  DFFRQX2M \RegFile_reg[2][3]  ( .D(n149), .CK(clk), .RN(rst), .Q(REG2[3]) );
  DFFSQX2M \RegFile_reg[2][7]  ( .D(n153), .CK(clk), .SN(rst), .Q(REG2[7]) );
  DFFRQX2M \RegFile_reg[2][6]  ( .D(n152), .CK(clk), .RN(rst), .Q(REG2[6]) );
  DFFRQX2M \RegFile_reg[2][4]  ( .D(n150), .CK(clk), .RN(rst), .Q(REG2[4]) );
  DFFRQX2M \RegFile_reg[2][5]  ( .D(n151), .CK(clk), .RN(rst), .Q(REG2[5]) );
  DFFRQX2M \RegFile_reg[0][2]  ( .D(n164), .CK(clk), .RN(rst), .Q(REG0[2]) );
  DFFRQX2M \RegFile_reg[0][1]  ( .D(n163), .CK(clk), .RN(rst), .Q(REG0[1]) );
  DFFRQX2M \RegFile_reg[0][0]  ( .D(n162), .CK(clk), .RN(rst), .Q(REG0[0]) );
  DFFRQX2M \RegFile_reg[0][3]  ( .D(n165), .CK(clk), .RN(rst), .Q(REG0[3]) );
  DFFRQX2M \RegFile_reg[0][4]  ( .D(n166), .CK(clk), .RN(rst), .Q(REG0[4]) );
  DFFRHQX1M \RegFile_reg[1][2]  ( .D(n156), .CK(clk), .RN(rst), .Q(REG1[2]) );
  DFFRHQX1M \RegFile_reg[1][3]  ( .D(n157), .CK(clk), .RN(rst), .Q(REG1[3]) );
  DFFRHQX1M \RegFile_reg[1][0]  ( .D(n154), .CK(clk), .RN(rst), .Q(REG1[0]) );
  DFFRQX2M \RegFile_reg[0][5]  ( .D(n167), .CK(clk), .RN(rst), .Q(REG0[5]) );
  DFFRHQX1M \RegFile_reg[0][6]  ( .D(n168), .CK(clk), .RN(rst), .Q(REG0[6]) );
  DFFRHQX1M \RegFile_reg[0][7]  ( .D(n169), .CK(clk), .RN(rst), .Q(REG0[7]) );
  DFFRHQX4M \RegFile_reg[1][7]  ( .D(n161), .CK(clk), .RN(rst), .Q(REG1[7]) );
  DFFRHQX4M \RegFile_reg[1][6]  ( .D(n160), .CK(clk), .RN(rst), .Q(REG1[6]) );
  DFFRHQX4M \RegFile_reg[1][4]  ( .D(n158), .CK(clk), .RN(rst), .Q(REG1[4]) );
  DFFRHQX4M \RegFile_reg[1][1]  ( .D(n155), .CK(clk), .RN(rst), .Q(REG1[1]) );
  DFFRHQX4M \RegFile_reg[1][5]  ( .D(n159), .CK(clk), .RN(rst), .Q(REG1[5]) );
  NOR2X2M U3 ( .A(n282), .B(n281), .Y(n1) );
  AOI22XLM U4 ( .A0(REG0[1]), .A1(n279), .B0(REG1[1]), .B1(n277), .Y(n185) );
  MX2XLM U5 ( .A(REG1[1]), .B(WrData[1]), .S0(n1), .Y(n155) );
  MX2XLM U6 ( .A(REG1[2]), .B(WrData[2]), .S0(n1), .Y(n156) );
  NOR2X2M U7 ( .A(n270), .B(N12), .Y(n23) );
  NOR2X2M U8 ( .A(n291), .B(N11), .Y(n20) );
  INVX2M U9 ( .A(WrData[3]), .Y(n287) );
  INVX2M U10 ( .A(WrData[4]), .Y(n286) );
  INVX2M U11 ( .A(WrData[1]), .Y(n289) );
  INVX2M U12 ( .A(WrData[2]), .Y(n288) );
  INVX2M U13 ( .A(WrData[6]), .Y(n284) );
  OAI2BB2XLM U14 ( .B0(n286), .B1(n40), .A0N(REG0[4]), .A1N(n40), .Y(n166) );
  MX2XLM U15 ( .A(REG0[6]), .B(WrData[6]), .S0(n280), .Y(n168) );
  MX2XLM U16 ( .A(REG0[5]), .B(WrData[5]), .S0(n280), .Y(n167) );
  INVX2M U17 ( .A(n272), .Y(n273) );
  INVX2M U18 ( .A(n40), .Y(n280) );
  BUFX2M U19 ( .A(n2), .Y(n272) );
  INVX2M U20 ( .A(n274), .Y(n275) );
  INVX2M U21 ( .A(n276), .Y(n277) );
  INVX2M U22 ( .A(n278), .Y(n279) );
  NAND2X2M U23 ( .A(n18), .B(n15), .Y(n17) );
  NAND2X2M U24 ( .A(n33), .B(n15), .Y(n32) );
  NAND2BX2M U25 ( .AN(n282), .B(n33), .Y(n40) );
  OR2X2M U26 ( .A(n270), .B(n269), .Y(n2) );
  BUFX2M U27 ( .A(n4), .Y(n274) );
  BUFX2M U28 ( .A(n5), .Y(n276) );
  BUFX2M U29 ( .A(n3), .Y(n278) );
  NOR2X2M U30 ( .A(n291), .B(n270), .Y(n15) );
  NAND2X2M U31 ( .A(n20), .B(n16), .Y(n19) );
  NAND2X2M U32 ( .A(n20), .B(n18), .Y(n21) );
  NAND2X2M U33 ( .A(n23), .B(n16), .Y(n22) );
  NAND2X2M U34 ( .A(n23), .B(n18), .Y(n24) );
  NAND2X2M U35 ( .A(n26), .B(n16), .Y(n25) );
  NAND2X2M U36 ( .A(n26), .B(n18), .Y(n28) );
  NAND2X2M U37 ( .A(n31), .B(n20), .Y(n34) );
  NAND2X2M U38 ( .A(n33), .B(n20), .Y(n35) );
  NAND2X2M U39 ( .A(n31), .B(n23), .Y(n36) );
  NAND2X2M U40 ( .A(n33), .B(n23), .Y(n37) );
  NAND2X2M U41 ( .A(n31), .B(n15), .Y(n30) );
  NAND2X2M U42 ( .A(n15), .B(n16), .Y(n14) );
  AND2X2M U43 ( .A(n27), .B(n269), .Y(n18) );
  AND2X2M U44 ( .A(n39), .B(n269), .Y(n33) );
  INVX2M U45 ( .A(n41), .Y(n292) );
  INVX2M U46 ( .A(n31), .Y(n281) );
  INVX2M U47 ( .A(n26), .Y(n282) );
  OR2X2M U48 ( .A(N10), .B(N11), .Y(n3) );
  OR2X2M U49 ( .A(n270), .B(N10), .Y(n4) );
  OR2X2M U50 ( .A(n269), .B(N11), .Y(n5) );
  INVX2M U51 ( .A(N11), .Y(n270) );
  INVX2M U52 ( .A(N10), .Y(n269) );
  AO22X1M U53 ( .A0(N42), .A1(n292), .B0(RdData[0]), .B1(n41), .Y(n170) );
  AO22X1M U54 ( .A0(N41), .A1(n292), .B0(RdData[1]), .B1(n41), .Y(n171) );
  AO22X1M U55 ( .A0(N40), .A1(n292), .B0(RdData[2]), .B1(n41), .Y(n172) );
  AO22X1M U56 ( .A0(N39), .A1(n292), .B0(RdData[3]), .B1(n41), .Y(n173) );
  AO22X1M U57 ( .A0(N38), .A1(n292), .B0(RdData[4]), .B1(n41), .Y(n174) );
  AO22X1M U58 ( .A0(N37), .A1(n292), .B0(RdData[5]), .B1(n41), .Y(n175) );
  AO22X1M U59 ( .A0(N36), .A1(n292), .B0(RdData[6]), .B1(n41), .Y(n176) );
  AO22X1M U60 ( .A0(N35), .A1(n292), .B0(RdData[7]), .B1(n41), .Y(n177) );
  NOR2X2M U61 ( .A(N11), .B(N12), .Y(n26) );
  INVX2M U62 ( .A(WrData[0]), .Y(n290) );
  NAND2X2M U63 ( .A(RdEn), .B(n293), .Y(n41) );
  INVX2M U64 ( .A(WrData[5]), .Y(n285) );
  INVX2M U65 ( .A(WrData[7]), .Y(n283) );
  OAI2BB2X1M U66 ( .B0(n14), .B1(n290), .A0N(\RegFile[15][0] ), .A1N(n14), .Y(
        n42) );
  OAI2BB2X1M U67 ( .B0(n14), .B1(n289), .A0N(\RegFile[15][1] ), .A1N(n14), .Y(
        n43) );
  OAI2BB2X1M U68 ( .B0(n14), .B1(n288), .A0N(\RegFile[15][2] ), .A1N(n14), .Y(
        n44) );
  OAI2BB2X1M U69 ( .B0(n14), .B1(n287), .A0N(\RegFile[15][3] ), .A1N(n14), .Y(
        n45) );
  OAI2BB2X1M U70 ( .B0(n14), .B1(n286), .A0N(\RegFile[15][4] ), .A1N(n14), .Y(
        n46) );
  OAI2BB2X1M U71 ( .B0(n14), .B1(n285), .A0N(\RegFile[15][5] ), .A1N(n14), .Y(
        n47) );
  OAI2BB2X1M U72 ( .B0(n14), .B1(n284), .A0N(\RegFile[15][6] ), .A1N(n14), .Y(
        n48) );
  OAI2BB2X1M U73 ( .B0(n14), .B1(n283), .A0N(\RegFile[15][7] ), .A1N(n14), .Y(
        n49) );
  OAI2BB2X1M U74 ( .B0(n290), .B1(n19), .A0N(\RegFile[13][0] ), .A1N(n19), .Y(
        n58) );
  OAI2BB2X1M U75 ( .B0(n289), .B1(n19), .A0N(\RegFile[13][1] ), .A1N(n19), .Y(
        n59) );
  OAI2BB2X1M U76 ( .B0(n288), .B1(n19), .A0N(\RegFile[13][2] ), .A1N(n19), .Y(
        n60) );
  OAI2BB2X1M U77 ( .B0(n287), .B1(n19), .A0N(\RegFile[13][3] ), .A1N(n19), .Y(
        n61) );
  OAI2BB2X1M U78 ( .B0(n286), .B1(n19), .A0N(\RegFile[13][4] ), .A1N(n19), .Y(
        n62) );
  OAI2BB2X1M U79 ( .B0(n285), .B1(n19), .A0N(\RegFile[13][5] ), .A1N(n19), .Y(
        n63) );
  OAI2BB2X1M U80 ( .B0(n284), .B1(n19), .A0N(\RegFile[13][6] ), .A1N(n19), .Y(
        n64) );
  OAI2BB2X1M U81 ( .B0(n283), .B1(n19), .A0N(\RegFile[13][7] ), .A1N(n19), .Y(
        n65) );
  OAI2BB2X1M U82 ( .B0(n290), .B1(n21), .A0N(\RegFile[12][0] ), .A1N(n21), .Y(
        n66) );
  OAI2BB2X1M U83 ( .B0(n289), .B1(n21), .A0N(\RegFile[12][1] ), .A1N(n21), .Y(
        n67) );
  OAI2BB2X1M U84 ( .B0(n288), .B1(n21), .A0N(\RegFile[12][2] ), .A1N(n21), .Y(
        n68) );
  OAI2BB2X1M U85 ( .B0(n287), .B1(n21), .A0N(\RegFile[12][3] ), .A1N(n21), .Y(
        n69) );
  OAI2BB2X1M U86 ( .B0(n286), .B1(n21), .A0N(\RegFile[12][4] ), .A1N(n21), .Y(
        n70) );
  OAI2BB2X1M U87 ( .B0(n285), .B1(n21), .A0N(\RegFile[12][5] ), .A1N(n21), .Y(
        n71) );
  OAI2BB2X1M U88 ( .B0(n284), .B1(n21), .A0N(\RegFile[12][6] ), .A1N(n21), .Y(
        n72) );
  OAI2BB2X1M U89 ( .B0(n283), .B1(n21), .A0N(\RegFile[12][7] ), .A1N(n21), .Y(
        n73) );
  OAI2BB2X1M U90 ( .B0(n290), .B1(n22), .A0N(\RegFile[11][0] ), .A1N(n22), .Y(
        n74) );
  OAI2BB2X1M U91 ( .B0(n289), .B1(n22), .A0N(\RegFile[11][1] ), .A1N(n22), .Y(
        n75) );
  OAI2BB2X1M U92 ( .B0(n288), .B1(n22), .A0N(\RegFile[11][2] ), .A1N(n22), .Y(
        n76) );
  OAI2BB2X1M U93 ( .B0(n287), .B1(n22), .A0N(\RegFile[11][3] ), .A1N(n22), .Y(
        n77) );
  OAI2BB2X1M U94 ( .B0(n286), .B1(n22), .A0N(\RegFile[11][4] ), .A1N(n22), .Y(
        n78) );
  OAI2BB2X1M U95 ( .B0(n285), .B1(n22), .A0N(\RegFile[11][5] ), .A1N(n22), .Y(
        n79) );
  OAI2BB2X1M U96 ( .B0(n284), .B1(n22), .A0N(\RegFile[11][6] ), .A1N(n22), .Y(
        n80) );
  OAI2BB2X1M U97 ( .B0(n283), .B1(n22), .A0N(\RegFile[11][7] ), .A1N(n22), .Y(
        n81) );
  OAI2BB2X1M U98 ( .B0(n290), .B1(n24), .A0N(\RegFile[10][0] ), .A1N(n24), .Y(
        n82) );
  OAI2BB2X1M U99 ( .B0(n289), .B1(n24), .A0N(\RegFile[10][1] ), .A1N(n24), .Y(
        n83) );
  OAI2BB2X1M U100 ( .B0(n288), .B1(n24), .A0N(\RegFile[10][2] ), .A1N(n24), 
        .Y(n84) );
  OAI2BB2X1M U101 ( .B0(n287), .B1(n24), .A0N(\RegFile[10][3] ), .A1N(n24), 
        .Y(n85) );
  OAI2BB2X1M U102 ( .B0(n286), .B1(n24), .A0N(\RegFile[10][4] ), .A1N(n24), 
        .Y(n86) );
  OAI2BB2X1M U103 ( .B0(n285), .B1(n24), .A0N(\RegFile[10][5] ), .A1N(n24), 
        .Y(n87) );
  OAI2BB2X1M U104 ( .B0(n284), .B1(n24), .A0N(\RegFile[10][6] ), .A1N(n24), 
        .Y(n88) );
  OAI2BB2X1M U105 ( .B0(n283), .B1(n24), .A0N(\RegFile[10][7] ), .A1N(n24), 
        .Y(n89) );
  OAI2BB2X1M U106 ( .B0(n290), .B1(n17), .A0N(\RegFile[14][0] ), .A1N(n17), 
        .Y(n50) );
  OAI2BB2X1M U107 ( .B0(n289), .B1(n17), .A0N(\RegFile[14][1] ), .A1N(n17), 
        .Y(n51) );
  OAI2BB2X1M U108 ( .B0(n288), .B1(n17), .A0N(\RegFile[14][2] ), .A1N(n17), 
        .Y(n52) );
  OAI2BB2X1M U109 ( .B0(n287), .B1(n17), .A0N(\RegFile[14][3] ), .A1N(n17), 
        .Y(n53) );
  OAI2BB2X1M U110 ( .B0(n286), .B1(n17), .A0N(\RegFile[14][4] ), .A1N(n17), 
        .Y(n54) );
  OAI2BB2X1M U111 ( .B0(n285), .B1(n17), .A0N(\RegFile[14][5] ), .A1N(n17), 
        .Y(n55) );
  OAI2BB2X1M U112 ( .B0(n284), .B1(n17), .A0N(\RegFile[14][6] ), .A1N(n17), 
        .Y(n56) );
  OAI2BB2X1M U113 ( .B0(n283), .B1(n17), .A0N(\RegFile[14][7] ), .A1N(n17), 
        .Y(n57) );
  OAI2BB2X1M U114 ( .B0(n290), .B1(n30), .A0N(\RegFile[7][0] ), .A1N(n30), .Y(
        n106) );
  OAI2BB2X1M U115 ( .B0(n289), .B1(n30), .A0N(\RegFile[7][1] ), .A1N(n30), .Y(
        n107) );
  OAI2BB2X1M U116 ( .B0(n288), .B1(n30), .A0N(\RegFile[7][2] ), .A1N(n30), .Y(
        n108) );
  OAI2BB2X1M U117 ( .B0(n287), .B1(n30), .A0N(\RegFile[7][3] ), .A1N(n30), .Y(
        n109) );
  OAI2BB2X1M U118 ( .B0(n286), .B1(n30), .A0N(\RegFile[7][4] ), .A1N(n30), .Y(
        n110) );
  OAI2BB2X1M U119 ( .B0(n285), .B1(n30), .A0N(\RegFile[7][5] ), .A1N(n30), .Y(
        n111) );
  OAI2BB2X1M U120 ( .B0(n284), .B1(n30), .A0N(\RegFile[7][6] ), .A1N(n30), .Y(
        n112) );
  OAI2BB2X1M U121 ( .B0(n283), .B1(n30), .A0N(\RegFile[7][7] ), .A1N(n30), .Y(
        n113) );
  OAI2BB2X1M U122 ( .B0(n290), .B1(n32), .A0N(\RegFile[6][0] ), .A1N(n32), .Y(
        n114) );
  OAI2BB2X1M U123 ( .B0(n289), .B1(n32), .A0N(\RegFile[6][1] ), .A1N(n32), .Y(
        n115) );
  OAI2BB2X1M U124 ( .B0(n288), .B1(n32), .A0N(\RegFile[6][2] ), .A1N(n32), .Y(
        n116) );
  OAI2BB2X1M U125 ( .B0(n287), .B1(n32), .A0N(\RegFile[6][3] ), .A1N(n32), .Y(
        n117) );
  OAI2BB2X1M U126 ( .B0(n286), .B1(n32), .A0N(\RegFile[6][4] ), .A1N(n32), .Y(
        n118) );
  OAI2BB2X1M U127 ( .B0(n285), .B1(n32), .A0N(\RegFile[6][5] ), .A1N(n32), .Y(
        n119) );
  OAI2BB2X1M U128 ( .B0(n284), .B1(n32), .A0N(\RegFile[6][6] ), .A1N(n32), .Y(
        n120) );
  OAI2BB2X1M U129 ( .B0(n283), .B1(n32), .A0N(\RegFile[6][7] ), .A1N(n32), .Y(
        n121) );
  OAI2BB2X1M U130 ( .B0(n290), .B1(n34), .A0N(\RegFile[5][0] ), .A1N(n34), .Y(
        n122) );
  OAI2BB2X1M U131 ( .B0(n289), .B1(n34), .A0N(\RegFile[5][1] ), .A1N(n34), .Y(
        n123) );
  OAI2BB2X1M U132 ( .B0(n288), .B1(n34), .A0N(\RegFile[5][2] ), .A1N(n34), .Y(
        n124) );
  OAI2BB2X1M U133 ( .B0(n287), .B1(n34), .A0N(\RegFile[5][3] ), .A1N(n34), .Y(
        n125) );
  OAI2BB2X1M U134 ( .B0(n286), .B1(n34), .A0N(\RegFile[5][4] ), .A1N(n34), .Y(
        n126) );
  OAI2BB2X1M U135 ( .B0(n285), .B1(n34), .A0N(\RegFile[5][5] ), .A1N(n34), .Y(
        n127) );
  OAI2BB2X1M U136 ( .B0(n284), .B1(n34), .A0N(\RegFile[5][6] ), .A1N(n34), .Y(
        n128) );
  OAI2BB2X1M U137 ( .B0(n283), .B1(n34), .A0N(\RegFile[5][7] ), .A1N(n34), .Y(
        n129) );
  OAI2BB2X1M U138 ( .B0(n290), .B1(n35), .A0N(\RegFile[4][0] ), .A1N(n35), .Y(
        n130) );
  OAI2BB2X1M U139 ( .B0(n289), .B1(n35), .A0N(\RegFile[4][1] ), .A1N(n35), .Y(
        n131) );
  OAI2BB2X1M U140 ( .B0(n288), .B1(n35), .A0N(\RegFile[4][2] ), .A1N(n35), .Y(
        n132) );
  OAI2BB2X1M U141 ( .B0(n287), .B1(n35), .A0N(\RegFile[4][3] ), .A1N(n35), .Y(
        n133) );
  OAI2BB2X1M U142 ( .B0(n286), .B1(n35), .A0N(\RegFile[4][4] ), .A1N(n35), .Y(
        n134) );
  OAI2BB2X1M U143 ( .B0(n285), .B1(n35), .A0N(\RegFile[4][5] ), .A1N(n35), .Y(
        n135) );
  OAI2BB2X1M U144 ( .B0(n284), .B1(n35), .A0N(\RegFile[4][6] ), .A1N(n35), .Y(
        n136) );
  OAI2BB2X1M U145 ( .B0(n283), .B1(n35), .A0N(\RegFile[4][7] ), .A1N(n35), .Y(
        n137) );
  OAI2BB2X1M U146 ( .B0(n290), .B1(n36), .A0N(REG3[0]), .A1N(n36), .Y(n138) );
  OAI2BB2X1M U147 ( .B0(n289), .B1(n36), .A0N(REG3[1]), .A1N(n36), .Y(n139) );
  OAI2BB2X1M U148 ( .B0(n288), .B1(n36), .A0N(REG3[2]), .A1N(n36), .Y(n140) );
  OAI2BB2X1M U149 ( .B0(n287), .B1(n36), .A0N(REG3[3]), .A1N(n36), .Y(n141) );
  OAI2BB2X1M U150 ( .B0(n286), .B1(n36), .A0N(REG3[4]), .A1N(n36), .Y(n142) );
  OAI2BB2X1M U151 ( .B0(n284), .B1(n36), .A0N(REG3[6]), .A1N(n36), .Y(n144) );
  OAI2BB2X1M U152 ( .B0(n283), .B1(n36), .A0N(REG3[7]), .A1N(n36), .Y(n145) );
  OAI2BB2X1M U153 ( .B0(n289), .B1(n37), .A0N(REG2[1]), .A1N(n37), .Y(n147) );
  OAI2BB2X1M U154 ( .B0(n288), .B1(n37), .A0N(REG2[2]), .A1N(n37), .Y(n148) );
  OAI2BB2X1M U155 ( .B0(n287), .B1(n37), .A0N(REG2[3]), .A1N(n37), .Y(n149) );
  OAI2BB2X1M U156 ( .B0(n286), .B1(n37), .A0N(REG2[4]), .A1N(n37), .Y(n150) );
  OAI2BB2X1M U157 ( .B0(n285), .B1(n37), .A0N(REG2[5]), .A1N(n37), .Y(n151) );
  OAI2BB2X1M U158 ( .B0(n284), .B1(n37), .A0N(REG2[6]), .A1N(n37), .Y(n152) );
  OAI2BB2X1M U159 ( .B0(n290), .B1(n25), .A0N(\RegFile[9][0] ), .A1N(n25), .Y(
        n90) );
  OAI2BB2X1M U160 ( .B0(n289), .B1(n25), .A0N(\RegFile[9][1] ), .A1N(n25), .Y(
        n91) );
  OAI2BB2X1M U161 ( .B0(n288), .B1(n25), .A0N(\RegFile[9][2] ), .A1N(n25), .Y(
        n92) );
  OAI2BB2X1M U162 ( .B0(n287), .B1(n25), .A0N(\RegFile[9][3] ), .A1N(n25), .Y(
        n93) );
  OAI2BB2X1M U163 ( .B0(n286), .B1(n25), .A0N(\RegFile[9][4] ), .A1N(n25), .Y(
        n94) );
  OAI2BB2X1M U164 ( .B0(n285), .B1(n25), .A0N(\RegFile[9][5] ), .A1N(n25), .Y(
        n95) );
  OAI2BB2X1M U165 ( .B0(n284), .B1(n25), .A0N(\RegFile[9][6] ), .A1N(n25), .Y(
        n96) );
  OAI2BB2X1M U166 ( .B0(n283), .B1(n25), .A0N(\RegFile[9][7] ), .A1N(n25), .Y(
        n97) );
  OAI2BB2X1M U167 ( .B0(n290), .B1(n28), .A0N(\RegFile[8][0] ), .A1N(n28), .Y(
        n98) );
  OAI2BB2X1M U168 ( .B0(n289), .B1(n28), .A0N(\RegFile[8][1] ), .A1N(n28), .Y(
        n99) );
  OAI2BB2X1M U169 ( .B0(n288), .B1(n28), .A0N(\RegFile[8][2] ), .A1N(n28), .Y(
        n100) );
  OAI2BB2X1M U170 ( .B0(n287), .B1(n28), .A0N(\RegFile[8][3] ), .A1N(n28), .Y(
        n101) );
  OAI2BB2X1M U171 ( .B0(n286), .B1(n28), .A0N(\RegFile[8][4] ), .A1N(n28), .Y(
        n102) );
  OAI2BB2X1M U172 ( .B0(n285), .B1(n28), .A0N(\RegFile[8][5] ), .A1N(n28), .Y(
        n103) );
  OAI2BB2X1M U173 ( .B0(n284), .B1(n28), .A0N(\RegFile[8][6] ), .A1N(n28), .Y(
        n104) );
  OAI2BB2X1M U174 ( .B0(n283), .B1(n28), .A0N(\RegFile[8][7] ), .A1N(n28), .Y(
        n105) );
  OAI2BB2X1M U175 ( .B0(n290), .B1(n40), .A0N(REG0[0]), .A1N(n40), .Y(n162) );
  OAI2BB2X1M U176 ( .B0(n289), .B1(n40), .A0N(REG0[1]), .A1N(n40), .Y(n163) );
  OAI2BB2X1M U177 ( .B0(n288), .B1(n40), .A0N(REG0[2]), .A1N(n40), .Y(n164) );
  OAI2BB2X1M U178 ( .B0(n287), .B1(n40), .A0N(REG0[3]), .A1N(n40), .Y(n165) );
  OAI2BB2X1M U179 ( .B0(n285), .B1(n36), .A0N(REG3[5]), .A1N(n36), .Y(n143) );
  OAI2BB2X1M U180 ( .B0(n290), .B1(n37), .A0N(REG2[0]), .A1N(n37), .Y(n146) );
  OAI2BB2X1M U181 ( .B0(n283), .B1(n37), .A0N(REG2[7]), .A1N(n37), .Y(n153) );
  AND2X2M U182 ( .A(n27), .B(N10), .Y(n16) );
  NOR2BX2M U183 ( .AN(n29), .B(N13), .Y(n39) );
  NOR2X2M U184 ( .A(n293), .B(RdEn), .Y(n29) );
  AND2X2M U185 ( .A(n39), .B(N10), .Y(n31) );
  INVX2M U186 ( .A(N12), .Y(n291) );
  MX2XLM U187 ( .A(REG1[3]), .B(WrData[3]), .S0(n1), .Y(n157) );
  MX2XLM U188 ( .A(REG1[4]), .B(WrData[4]), .S0(n1), .Y(n158) );
  MX2XLM U189 ( .A(REG1[5]), .B(WrData[5]), .S0(n1), .Y(n159) );
  MX2XLM U190 ( .A(REG1[7]), .B(WrData[7]), .S0(n1), .Y(n161) );
  INVX2M U191 ( .A(WrEn), .Y(n293) );
  AND2X2M U192 ( .A(N13), .B(n29), .Y(n27) );
  INVX2M U193 ( .A(N13), .Y(n271) );
  AOI22X1M U194 ( .A0(\RegFile[10][0] ), .A1(n275), .B0(\RegFile[11][0] ), 
        .B1(n273), .Y(n7) );
  AOI22X1M U195 ( .A0(\RegFile[8][0] ), .A1(n279), .B0(\RegFile[9][0] ), .B1(
        n277), .Y(n6) );
  CLKNAND2X2M U196 ( .A(N13), .B(n291), .Y(n253) );
  AOI21X1M U197 ( .A0(n7), .A1(n6), .B0(n253), .Y(n180) );
  AOI22X1M U198 ( .A0(\RegFile[14][0] ), .A1(n275), .B0(\RegFile[15][0] ), 
        .B1(n273), .Y(n9) );
  AOI22X1M U199 ( .A0(\RegFile[12][0] ), .A1(n279), .B0(\RegFile[13][0] ), 
        .B1(n277), .Y(n8) );
  CLKNAND2X2M U200 ( .A(N13), .B(N12), .Y(n256) );
  AOI21X1M U201 ( .A0(n9), .A1(n8), .B0(n256), .Y(n179) );
  AOI22X1M U202 ( .A0(REG2[0]), .A1(n275), .B0(REG3[0]), .B1(n273), .Y(n11) );
  CLKNAND2X2M U203 ( .A(n291), .B(n271), .Y(n259) );
  AOI21X1M U204 ( .A0(n11), .A1(n10), .B0(n259), .Y(n178) );
  AOI22X1M U205 ( .A0(\RegFile[6][0] ), .A1(n275), .B0(\RegFile[7][0] ), .B1(
        n273), .Y(n13) );
  AOI22X1M U206 ( .A0(\RegFile[4][0] ), .A1(n279), .B0(\RegFile[5][0] ), .B1(
        n277), .Y(n12) );
  CLKNAND2X2M U207 ( .A(N12), .B(n271), .Y(n262) );
  AOI21X1M U208 ( .A0(n13), .A1(n12), .B0(n262), .Y(n38) );
  OR4X1M U209 ( .A(n180), .B(n179), .C(n178), .D(n38), .Y(N42) );
  AOI22X1M U210 ( .A0(\RegFile[10][1] ), .A1(n275), .B0(\RegFile[11][1] ), 
        .B1(n273), .Y(n182) );
  AOI22X1M U211 ( .A0(\RegFile[8][1] ), .A1(n279), .B0(\RegFile[9][1] ), .B1(
        n277), .Y(n181) );
  AOI21X1M U212 ( .A0(n182), .A1(n181), .B0(n253), .Y(n192) );
  AOI22X1M U213 ( .A0(\RegFile[14][1] ), .A1(n275), .B0(\RegFile[15][1] ), 
        .B1(n273), .Y(n184) );
  AOI22X1M U214 ( .A0(\RegFile[12][1] ), .A1(n279), .B0(\RegFile[13][1] ), 
        .B1(n277), .Y(n183) );
  AOI21X1M U215 ( .A0(n184), .A1(n183), .B0(n256), .Y(n191) );
  AOI22X1M U216 ( .A0(REG2[1]), .A1(n275), .B0(REG3[1]), .B1(n273), .Y(n186)
         );
  AOI21X1M U217 ( .A0(n186), .A1(n185), .B0(n259), .Y(n190) );
  AOI22X1M U218 ( .A0(\RegFile[6][1] ), .A1(n275), .B0(\RegFile[7][1] ), .B1(
        n273), .Y(n188) );
  AOI22X1M U219 ( .A0(\RegFile[4][1] ), .A1(n279), .B0(\RegFile[5][1] ), .B1(
        n277), .Y(n187) );
  AOI21X1M U220 ( .A0(n188), .A1(n187), .B0(n262), .Y(n189) );
  OR4X1M U221 ( .A(n192), .B(n191), .C(n190), .D(n189), .Y(N41) );
  AOI22X1M U222 ( .A0(\RegFile[10][2] ), .A1(n275), .B0(\RegFile[11][2] ), 
        .B1(n273), .Y(n194) );
  AOI22X1M U223 ( .A0(\RegFile[8][2] ), .A1(n279), .B0(\RegFile[9][2] ), .B1(
        n277), .Y(n193) );
  AOI21X1M U224 ( .A0(n194), .A1(n193), .B0(n253), .Y(n204) );
  AOI22X1M U225 ( .A0(\RegFile[14][2] ), .A1(n275), .B0(\RegFile[15][2] ), 
        .B1(n273), .Y(n196) );
  AOI22X1M U226 ( .A0(\RegFile[12][2] ), .A1(n279), .B0(\RegFile[13][2] ), 
        .B1(n277), .Y(n195) );
  AOI21X1M U227 ( .A0(n196), .A1(n195), .B0(n256), .Y(n203) );
  AOI22X1M U228 ( .A0(REG2[2]), .A1(n275), .B0(REG3[2]), .B1(n273), .Y(n198)
         );
  AOI22X1M U229 ( .A0(REG0[2]), .A1(n279), .B0(REG1[2]), .B1(n277), .Y(n197)
         );
  AOI21X1M U230 ( .A0(n198), .A1(n197), .B0(n259), .Y(n202) );
  AOI22X1M U231 ( .A0(\RegFile[6][2] ), .A1(n275), .B0(\RegFile[7][2] ), .B1(
        n273), .Y(n200) );
  AOI22X1M U232 ( .A0(\RegFile[4][2] ), .A1(n279), .B0(\RegFile[5][2] ), .B1(
        n277), .Y(n199) );
  AOI21X1M U233 ( .A0(n200), .A1(n199), .B0(n262), .Y(n201) );
  OR4X1M U234 ( .A(n204), .B(n203), .C(n202), .D(n201), .Y(N40) );
  AOI22X1M U235 ( .A0(\RegFile[10][3] ), .A1(n275), .B0(\RegFile[11][3] ), 
        .B1(n273), .Y(n206) );
  AOI22X1M U236 ( .A0(\RegFile[8][3] ), .A1(n279), .B0(\RegFile[9][3] ), .B1(
        n277), .Y(n205) );
  AOI21X1M U237 ( .A0(n206), .A1(n205), .B0(n253), .Y(n216) );
  AOI22X1M U238 ( .A0(\RegFile[14][3] ), .A1(n275), .B0(\RegFile[15][3] ), 
        .B1(n273), .Y(n208) );
  AOI22X1M U239 ( .A0(\RegFile[12][3] ), .A1(n279), .B0(\RegFile[13][3] ), 
        .B1(n277), .Y(n207) );
  AOI21X1M U240 ( .A0(n208), .A1(n207), .B0(n256), .Y(n215) );
  AOI22X1M U241 ( .A0(REG2[3]), .A1(n275), .B0(REG3[3]), .B1(n273), .Y(n210)
         );
  AOI22X1M U242 ( .A0(REG0[3]), .A1(n279), .B0(REG1[3]), .B1(n277), .Y(n209)
         );
  AOI21X1M U243 ( .A0(n210), .A1(n209), .B0(n259), .Y(n214) );
  AOI22X1M U244 ( .A0(\RegFile[6][3] ), .A1(n275), .B0(\RegFile[7][3] ), .B1(
        n273), .Y(n212) );
  AOI22X1M U245 ( .A0(\RegFile[4][3] ), .A1(n279), .B0(\RegFile[5][3] ), .B1(
        n277), .Y(n211) );
  AOI21X1M U246 ( .A0(n212), .A1(n211), .B0(n262), .Y(n213) );
  OR4X1M U247 ( .A(n216), .B(n215), .C(n214), .D(n213), .Y(N39) );
  AOI22X1M U248 ( .A0(\RegFile[10][4] ), .A1(n275), .B0(\RegFile[11][4] ), 
        .B1(n273), .Y(n218) );
  AOI22X1M U249 ( .A0(\RegFile[8][4] ), .A1(n279), .B0(\RegFile[9][4] ), .B1(
        n277), .Y(n217) );
  AOI21X1M U250 ( .A0(n218), .A1(n217), .B0(n253), .Y(n228) );
  AOI22X1M U251 ( .A0(\RegFile[14][4] ), .A1(n275), .B0(\RegFile[15][4] ), 
        .B1(n273), .Y(n220) );
  AOI22X1M U252 ( .A0(\RegFile[12][4] ), .A1(n279), .B0(\RegFile[13][4] ), 
        .B1(n277), .Y(n219) );
  AOI21X1M U253 ( .A0(n220), .A1(n219), .B0(n256), .Y(n227) );
  AOI22X1M U254 ( .A0(REG2[4]), .A1(n275), .B0(REG3[4]), .B1(n273), .Y(n222)
         );
  AOI22X1M U255 ( .A0(REG0[4]), .A1(n279), .B0(REG1[4]), .B1(n277), .Y(n221)
         );
  AOI21X1M U256 ( .A0(n222), .A1(n221), .B0(n259), .Y(n226) );
  AOI22X1M U257 ( .A0(\RegFile[6][4] ), .A1(n275), .B0(\RegFile[7][4] ), .B1(
        n273), .Y(n224) );
  AOI22X1M U258 ( .A0(\RegFile[4][4] ), .A1(n279), .B0(\RegFile[5][4] ), .B1(
        n277), .Y(n223) );
  AOI21X1M U259 ( .A0(n224), .A1(n223), .B0(n262), .Y(n225) );
  OR4X1M U260 ( .A(n228), .B(n227), .C(n226), .D(n225), .Y(N38) );
  AOI22X1M U261 ( .A0(\RegFile[10][5] ), .A1(n275), .B0(\RegFile[11][5] ), 
        .B1(n273), .Y(n230) );
  AOI22X1M U262 ( .A0(\RegFile[8][5] ), .A1(n279), .B0(\RegFile[9][5] ), .B1(
        n277), .Y(n229) );
  AOI21X1M U263 ( .A0(n230), .A1(n229), .B0(n253), .Y(n240) );
  AOI22X1M U264 ( .A0(\RegFile[14][5] ), .A1(n275), .B0(\RegFile[15][5] ), 
        .B1(n273), .Y(n232) );
  AOI22X1M U265 ( .A0(\RegFile[12][5] ), .A1(n279), .B0(\RegFile[13][5] ), 
        .B1(n277), .Y(n231) );
  AOI21X1M U266 ( .A0(n232), .A1(n231), .B0(n256), .Y(n239) );
  AOI22X1M U267 ( .A0(REG2[5]), .A1(n275), .B0(REG3[5]), .B1(n273), .Y(n234)
         );
  AOI22X1M U268 ( .A0(REG0[5]), .A1(n279), .B0(REG1[5]), .B1(n277), .Y(n233)
         );
  AOI21X1M U269 ( .A0(n234), .A1(n233), .B0(n259), .Y(n238) );
  AOI22X1M U270 ( .A0(\RegFile[6][5] ), .A1(n275), .B0(\RegFile[7][5] ), .B1(
        n273), .Y(n236) );
  AOI22X1M U271 ( .A0(\RegFile[4][5] ), .A1(n279), .B0(\RegFile[5][5] ), .B1(
        n277), .Y(n235) );
  AOI21X1M U272 ( .A0(n236), .A1(n235), .B0(n262), .Y(n237) );
  OR4X1M U273 ( .A(n240), .B(n239), .C(n238), .D(n237), .Y(N37) );
  AOI22X1M U274 ( .A0(\RegFile[10][6] ), .A1(n275), .B0(\RegFile[11][6] ), 
        .B1(n273), .Y(n242) );
  AOI22X1M U275 ( .A0(\RegFile[8][6] ), .A1(n279), .B0(\RegFile[9][6] ), .B1(
        n277), .Y(n241) );
  AOI21X1M U276 ( .A0(n242), .A1(n241), .B0(n253), .Y(n252) );
  AOI22X1M U277 ( .A0(\RegFile[14][6] ), .A1(n275), .B0(\RegFile[15][6] ), 
        .B1(n273), .Y(n244) );
  AOI22X1M U278 ( .A0(\RegFile[12][6] ), .A1(n279), .B0(\RegFile[13][6] ), 
        .B1(n277), .Y(n243) );
  AOI21X1M U279 ( .A0(n244), .A1(n243), .B0(n256), .Y(n251) );
  AOI22X1M U280 ( .A0(REG2[6]), .A1(n275), .B0(REG3[6]), .B1(n273), .Y(n246)
         );
  AOI21X1M U281 ( .A0(n246), .A1(n245), .B0(n259), .Y(n250) );
  AOI22X1M U282 ( .A0(\RegFile[6][6] ), .A1(n275), .B0(\RegFile[7][6] ), .B1(
        n273), .Y(n248) );
  AOI22X1M U283 ( .A0(\RegFile[4][6] ), .A1(n279), .B0(\RegFile[5][6] ), .B1(
        n277), .Y(n247) );
  AOI21X1M U284 ( .A0(n248), .A1(n247), .B0(n262), .Y(n249) );
  OR4X1M U285 ( .A(n252), .B(n251), .C(n250), .D(n249), .Y(N36) );
  AOI22X1M U286 ( .A0(\RegFile[10][7] ), .A1(n275), .B0(\RegFile[11][7] ), 
        .B1(n273), .Y(n255) );
  AOI22X1M U287 ( .A0(\RegFile[8][7] ), .A1(n279), .B0(\RegFile[9][7] ), .B1(
        n277), .Y(n254) );
  AOI21X1M U288 ( .A0(n255), .A1(n254), .B0(n253), .Y(n268) );
  AOI22X1M U289 ( .A0(\RegFile[14][7] ), .A1(n275), .B0(\RegFile[15][7] ), 
        .B1(n273), .Y(n258) );
  AOI22X1M U290 ( .A0(\RegFile[12][7] ), .A1(n279), .B0(\RegFile[13][7] ), 
        .B1(n277), .Y(n257) );
  AOI21X1M U291 ( .A0(n258), .A1(n257), .B0(n256), .Y(n267) );
  AOI22X1M U292 ( .A0(REG2[7]), .A1(n275), .B0(REG3[7]), .B1(n273), .Y(n261)
         );
  AOI21X1M U293 ( .A0(n261), .A1(n260), .B0(n259), .Y(n266) );
  AOI22X1M U294 ( .A0(\RegFile[6][7] ), .A1(n275), .B0(\RegFile[7][7] ), .B1(
        n273), .Y(n264) );
  AOI22X1M U295 ( .A0(\RegFile[4][7] ), .A1(n279), .B0(\RegFile[5][7] ), .B1(
        n277), .Y(n263) );
  AOI21X1M U296 ( .A0(n264), .A1(n263), .B0(n262), .Y(n265) );
  OR4X1M U297 ( .A(n268), .B(n267), .C(n266), .D(n265), .Y(N35) );
  AOI22XLM U298 ( .A0(REG0[7]), .A1(n279), .B0(REG1[7]), .B1(n277), .Y(n260)
         );
  AOI22XLM U299 ( .A0(REG0[0]), .A1(n279), .B0(REG1[0]), .B1(n277), .Y(n10) );
  AOI22XLM U300 ( .A0(REG0[6]), .A1(n279), .B0(REG1[6]), .B1(n277), .Y(n245)
         );
  MX2XLM U301 ( .A(REG1[0]), .B(WrData[0]), .S0(n1), .Y(n154) );
  MX2XLM U302 ( .A(REG0[7]), .B(WrData[7]), .S0(n280), .Y(n169) );
  MX2XLM U303 ( .A(REG1[6]), .B(WrData[6]), .S0(n1), .Y(n160) );
endmodule


module RST_Sync_NUM_STAGES2_0 ( CLK, RST, sync_RST );
  input CLK, RST;
  output sync_RST;
  wire   n2, \sync_reg[1] ;

  DFFRQX2M \sync_reg_reg[0]  ( .D(\sync_reg[1] ), .CK(CLK), .RN(RST), .Q(n2)
         );
  DFFRQX2M \sync_reg_reg[1]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[1] )
         );
  CLKBUFX20M U3 ( .A(n2), .Y(sync_RST) );
endmodule


module RST_Sync_NUM_STAGES2_1 ( CLK, RST, sync_RST );
  input CLK, RST;
  output sync_RST;
  wire   n2, \sync_reg[1] ;

  DFFRQX2M \sync_reg_reg[0]  ( .D(\sync_reg[1] ), .CK(CLK), .RN(RST), .Q(n2)
         );
  DFFRQX2M \sync_reg_reg[1]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[1] )
         );
  CLKBUFX6M U3 ( .A(n2), .Y(sync_RST) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;
  wire   Latch_Out;

  TLATNX2M Latch_Out_reg ( .D(CLK_EN), .GN(CLK), .Q(Latch_Out) );
  AND2X2M U2 ( .A(Latch_Out), .B(CLK), .Y(GATED_CLK) );
endmodule


module Sys_Ctrl_DATA_WIDTH8 ( CLK, RST, ALU_OUT, OUT_VALID, RF_RdData, 
        Rd_D_Valid, RX_P_DATA, RX_D_VALID, FIFO_FULL, ALU_FUN, ALU_EN, CLK_EN, 
        RF_WrData, RF_ADDR, WrEn, RdEn, FIFO_W_INC, FIFO_WR_DATA, CLK_DIV_EN
 );
  input [15:0] ALU_OUT;
  input [7:0] RF_RdData;
  input [7:0] RX_P_DATA;
  output [3:0] ALU_FUN;
  output [7:0] RF_WrData;
  output [3:0] RF_ADDR;
  output [7:0] FIFO_WR_DATA;
  input CLK, RST, OUT_VALID, Rd_D_Valid, RX_D_VALID, FIFO_FULL;
  output ALU_EN, CLK_EN, WrEn, RdEn, FIFO_W_INC, CLK_DIV_EN;
  wire   N175, N176, N177, N178, N179, N180, N181, N182, N183, N184, N191,
         N192, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n81, n82;
  wire   [3:0] Cur_S;
  wire   [3:0] Nx_S;

  DFFRQX2M \FIFO_WR_DATA_reg[0]  ( .D(n65), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[0]) );
  DFFRQX2M \FIFO_WR_DATA_reg[7]  ( .D(n72), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[7]) );
  DFFRQX2M \FIFO_WR_DATA_reg[6]  ( .D(n71), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[6]) );
  DFFRQX2M \FIFO_WR_DATA_reg[5]  ( .D(n70), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[5]) );
  DFFRQX2M \FIFO_WR_DATA_reg[4]  ( .D(n69), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[4]) );
  DFFRQX2M \FIFO_WR_DATA_reg[3]  ( .D(n68), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[3]) );
  DFFRQX2M \FIFO_WR_DATA_reg[2]  ( .D(n67), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[2]) );
  DFFRQX2M \FIFO_WR_DATA_reg[1]  ( .D(n66), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[1]) );
  DFFRQX2M \RF_WrData_reg[4]  ( .D(N181), .CK(CLK), .RN(RST), .Q(RF_WrData[4])
         );
  DFFRQX2M \RF_WrData_reg[3]  ( .D(N180), .CK(CLK), .RN(RST), .Q(RF_WrData[3])
         );
  DFFRQX2M \RF_WrData_reg[2]  ( .D(N179), .CK(CLK), .RN(RST), .Q(RF_WrData[2])
         );
  DFFRQX2M \RF_WrData_reg[1]  ( .D(N178), .CK(CLK), .RN(RST), .Q(RF_WrData[1])
         );
  DFFRQX2M ALU_EN_reg ( .D(N175), .CK(CLK), .RN(RST), .Q(ALU_EN) );
  DFFRQX2M WrEn_reg ( .D(n4), .CK(CLK), .RN(RST), .Q(WrEn) );
  DFFRQX2M FIFO_W_INC_reg ( .D(N192), .CK(CLK), .RN(RST), .Q(FIFO_W_INC) );
  DFFRQX2M \RF_WrData_reg[0]  ( .D(N177), .CK(CLK), .RN(RST), .Q(RF_WrData[0])
         );
  DFFRQX2M RdEn_reg ( .D(N191), .CK(CLK), .RN(RST), .Q(RdEn) );
  DFFRQX2M \RF_WrData_reg[7]  ( .D(N184), .CK(CLK), .RN(RST), .Q(RF_WrData[7])
         );
  DFFRQX2M \RF_WrData_reg[6]  ( .D(N183), .CK(CLK), .RN(RST), .Q(RF_WrData[6])
         );
  DFFRQX2M \RF_WrData_reg[5]  ( .D(N182), .CK(CLK), .RN(RST), .Q(RF_WrData[5])
         );
  DFFRQX2M \RF_ADDR_reg[3]  ( .D(n76), .CK(CLK), .RN(RST), .Q(RF_ADDR[3]) );
  DFFRQX2M \RF_ADDR_reg[2]  ( .D(n75), .CK(CLK), .RN(RST), .Q(RF_ADDR[2]) );
  DFFRQX2M \Cur_S_reg[0]  ( .D(Nx_S[0]), .CK(CLK), .RN(RST), .Q(Cur_S[0]) );
  DFFRQX2M \ALU_FUN_reg[1]  ( .D(n78), .CK(CLK), .RN(RST), .Q(ALU_FUN[1]) );
  DFFRQX2M \Cur_S_reg[3]  ( .D(Nx_S[3]), .CK(CLK), .RN(RST), .Q(Cur_S[3]) );
  DFFRQX2M \Cur_S_reg[1]  ( .D(Nx_S[1]), .CK(CLK), .RN(RST), .Q(Cur_S[1]) );
  DFFRQX2M \Cur_S_reg[2]  ( .D(Nx_S[2]), .CK(CLK), .RN(RST), .Q(Cur_S[2]) );
  DFFRQX2M \RF_ADDR_reg[0]  ( .D(n73), .CK(CLK), .RN(RST), .Q(RF_ADDR[0]) );
  DFFRQX2M \ALU_FUN_reg[0]  ( .D(n77), .CK(CLK), .RN(RST), .Q(ALU_FUN[0]) );
  DFFRQX2M \RF_ADDR_reg[1]  ( .D(n74), .CK(CLK), .RN(RST), .Q(RF_ADDR[1]) );
  DFFRQX2M \ALU_FUN_reg[2]  ( .D(n79), .CK(CLK), .RN(RST), .Q(ALU_FUN[2]) );
  DFFRQX2M \ALU_FUN_reg[3]  ( .D(n80), .CK(CLK), .RN(RST), .Q(ALU_FUN[3]) );
  DFFRQX2M CLK_EN_reg ( .D(N176), .CK(CLK), .RN(RST), .Q(CLK_EN) );
  INVX2M U4 ( .A(1'b0), .Y(CLK_DIV_EN) );
  NOR3BX2M U6 ( .AN(n34), .B(n29), .C(N191), .Y(n33) );
  NOR3X2M U7 ( .A(Cur_S[1]), .B(Cur_S[2]), .C(n9), .Y(n29) );
  OAI21X2M U8 ( .A0(n62), .A1(n5), .B0(RX_D_VALID), .Y(n61) );
  INVX2M U9 ( .A(n38), .Y(n10) );
  INVX2M U10 ( .A(n42), .Y(n5) );
  OR2X2M U11 ( .A(n37), .B(n36), .Y(n35) );
  INVX2M U12 ( .A(n50), .Y(n7) );
  NAND2BX2M U13 ( .AN(N175), .B(n59), .Y(N176) );
  INVX2M U14 ( .A(FIFO_FULL), .Y(n3) );
  NOR2X2M U15 ( .A(N192), .B(n29), .Y(n19) );
  OAI21BX1M U16 ( .A0(n8), .A1(n7), .B0N(n33), .Y(n30) );
  NOR2X2M U17 ( .A(n14), .B(n13), .Y(n60) );
  AOI21X2M U18 ( .A0(n28), .A1(n59), .B0(FIFO_FULL), .Y(N192) );
  NOR2X2M U19 ( .A(n53), .B(n6), .Y(n42) );
  NOR2X2M U20 ( .A(n10), .B(n11), .Y(n59) );
  INVX2M U21 ( .A(n61), .Y(n4) );
  NAND3X2M U22 ( .A(n13), .B(n14), .C(n57), .Y(n50) );
  NAND2X2M U23 ( .A(n60), .B(n63), .Y(n38) );
  NOR2X2M U24 ( .A(n15), .B(n50), .Y(N191) );
  INVX2M U25 ( .A(n63), .Y(n9) );
  INVX2M U26 ( .A(n31), .Y(n6) );
  INVX2M U27 ( .A(n49), .Y(n8) );
  OAI221X1M U28 ( .A0(FIFO_FULL), .A1(n38), .B0(n28), .B1(n3), .C0(n39), .Y(
        Nx_S[3]) );
  NOR2X2M U29 ( .A(N175), .B(n29), .Y(n36) );
  NOR2X2M U30 ( .A(n37), .B(n15), .Y(N175) );
  NAND2X2M U31 ( .A(n57), .B(n60), .Y(n37) );
  AND3X2M U32 ( .A(n37), .B(n38), .C(n39), .Y(n41) );
  NOR2X2M U33 ( .A(n82), .B(n61), .Y(N177) );
  NOR2X2M U34 ( .A(n81), .B(n61), .Y(N178) );
  NOR2X2M U35 ( .A(n18), .B(n61), .Y(N179) );
  NOR2X2M U36 ( .A(n17), .B(n61), .Y(N180) );
  NOR2X2M U37 ( .A(n16), .B(n61), .Y(N181) );
  INVX2M U38 ( .A(n28), .Y(n12) );
  NOR3X2M U39 ( .A(n13), .B(Cur_S[2]), .C(n9), .Y(n62) );
  OAI31X1M U40 ( .A0(n54), .A1(RX_P_DATA[4]), .A2(RX_P_DATA[0]), .B0(n40), .Y(
        n46) );
  NOR2BX2M U41 ( .AN(Cur_S[0]), .B(Cur_S[3]), .Y(n57) );
  NOR3X2M U42 ( .A(n9), .B(Cur_S[1]), .C(n14), .Y(n53) );
  NOR2X2M U43 ( .A(Cur_S[3]), .B(Cur_S[0]), .Y(n63) );
  AND4X2M U44 ( .A(RX_P_DATA[7]), .B(n29), .C(RX_P_DATA[3]), .D(RX_D_VALID), 
        .Y(n44) );
  OAI211X2M U45 ( .A0(n30), .A1(n82), .B0(n31), .C0(n32), .Y(n73) );
  NAND2X2M U46 ( .A(RF_ADDR[0]), .B(n33), .Y(n32) );
  NAND3X2M U47 ( .A(Cur_S[2]), .B(n13), .C(n57), .Y(n31) );
  OAI2BB2X1M U48 ( .B0(n30), .B1(n17), .A0N(RF_ADDR[3]), .A1N(n33), .Y(n76) );
  OAI2BB2X1M U49 ( .B0(n19), .B1(n21), .A0N(FIFO_WR_DATA[1]), .A1N(n19), .Y(
        n66) );
  AOI222X1M U50 ( .A0(RF_RdData[1]), .A1(n12), .B0(ALU_OUT[9]), .B1(n11), .C0(
        ALU_OUT[1]), .C1(n10), .Y(n21) );
  OAI2BB2X1M U51 ( .B0(n19), .B1(n22), .A0N(FIFO_WR_DATA[2]), .A1N(n19), .Y(
        n67) );
  AOI222X1M U52 ( .A0(RF_RdData[2]), .A1(n12), .B0(ALU_OUT[10]), .B1(n11), 
        .C0(ALU_OUT[2]), .C1(n10), .Y(n22) );
  OAI2BB2X1M U53 ( .B0(n19), .B1(n23), .A0N(FIFO_WR_DATA[3]), .A1N(n19), .Y(
        n68) );
  AOI222X1M U54 ( .A0(RF_RdData[3]), .A1(n12), .B0(ALU_OUT[11]), .B1(n11), 
        .C0(ALU_OUT[3]), .C1(n10), .Y(n23) );
  OAI2BB2X1M U55 ( .B0(n19), .B1(n24), .A0N(FIFO_WR_DATA[4]), .A1N(n19), .Y(
        n69) );
  AOI222X1M U56 ( .A0(RF_RdData[4]), .A1(n12), .B0(ALU_OUT[12]), .B1(n11), 
        .C0(ALU_OUT[4]), .C1(n10), .Y(n24) );
  OAI2BB2X1M U57 ( .B0(n19), .B1(n25), .A0N(FIFO_WR_DATA[5]), .A1N(n19), .Y(
        n70) );
  AOI222X1M U58 ( .A0(RF_RdData[5]), .A1(n12), .B0(ALU_OUT[13]), .B1(n11), 
        .C0(ALU_OUT[5]), .C1(n10), .Y(n25) );
  OAI2BB2X1M U59 ( .B0(n19), .B1(n26), .A0N(FIFO_WR_DATA[6]), .A1N(n19), .Y(
        n71) );
  AOI222X1M U60 ( .A0(RF_RdData[6]), .A1(n12), .B0(ALU_OUT[14]), .B1(n11), 
        .C0(ALU_OUT[6]), .C1(n10), .Y(n26) );
  OAI2BB2X1M U61 ( .B0(n19), .B1(n27), .A0N(FIFO_WR_DATA[7]), .A1N(n19), .Y(
        n72) );
  AOI222X1M U62 ( .A0(RF_RdData[7]), .A1(n12), .B0(ALU_OUT[15]), .B1(n11), 
        .C0(ALU_OUT[7]), .C1(n10), .Y(n27) );
  OAI2BB2X1M U63 ( .B0(n30), .B1(n81), .A0N(RF_ADDR[1]), .A1N(n33), .Y(n74) );
  OAI2BB2X1M U64 ( .B0(n30), .B1(n18), .A0N(RF_ADDR[2]), .A1N(n33), .Y(n75) );
  INVX2M U65 ( .A(Cur_S[1]), .Y(n13) );
  INVX2M U66 ( .A(Cur_S[2]), .Y(n14) );
  NAND3X2M U67 ( .A(Cur_S[1]), .B(n14), .C(n57), .Y(n49) );
  NAND4BX1M U68 ( .AN(n51), .B(n31), .C(n50), .D(n52), .Y(Nx_S[0]) );
  OAI32X1M U69 ( .A0(n54), .A1(n82), .A2(n16), .B0(OUT_VALID), .B1(n37), .Y(
        n51) );
  AOI221XLM U70 ( .A0(n53), .A1(RX_D_VALID), .B0(n8), .B1(n15), .C0(n46), .Y(
        n52) );
  AOI21X2M U71 ( .A0(n8), .A1(RX_D_VALID), .B0(n5), .Y(n34) );
  INVX2M U72 ( .A(n64), .Y(n11) );
  NAND3BX2M U73 ( .AN(Cur_S[0]), .B(n60), .C(Cur_S[3]), .Y(n64) );
  NAND3X2M U74 ( .A(RX_P_DATA[5]), .B(n44), .C(n58), .Y(n54) );
  NOR3X2M U75 ( .A(n81), .B(RX_P_DATA[6]), .C(RX_P_DATA[2]), .Y(n58) );
  NAND4X2M U76 ( .A(n40), .B(n41), .C(n42), .D(n43), .Y(Nx_S[2]) );
  NAND4X2M U77 ( .A(n44), .B(RX_P_DATA[2]), .C(RX_P_DATA[6]), .D(n45), .Y(n43)
         );
  NOR4X1M U78 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[4]), .C(RX_P_DATA[1]), .D(
        RX_P_DATA[0]), .Y(n45) );
  OA21X2M U79 ( .A0(n28), .A1(n3), .B0(n55), .Y(n40) );
  NAND4X2M U80 ( .A(RX_P_DATA[4]), .B(n44), .C(RX_P_DATA[6]), .D(n56), .Y(n55)
         );
  NOR4X1M U81 ( .A(RX_P_DATA[5]), .B(RX_P_DATA[1]), .C(n82), .D(n18), .Y(n56)
         );
  NAND3BX2M U82 ( .AN(n46), .B(n41), .C(n47), .Y(Nx_S[1]) );
  AOI21X2M U83 ( .A0(n6), .A1(RX_D_VALID), .B0(n48), .Y(n47) );
  OAI31X1M U84 ( .A0(n13), .A1(RX_D_VALID), .A2(Cur_S[3]), .B0(n49), .Y(n48)
         );
  AND2X2M U85 ( .A(RX_P_DATA[5]), .B(n4), .Y(N182) );
  AND2X2M U86 ( .A(RX_P_DATA[6]), .B(n4), .Y(N183) );
  AND2X2M U87 ( .A(RX_P_DATA[7]), .B(n4), .Y(N184) );
  AOI22X1M U88 ( .A0(n11), .A1(FIFO_FULL), .B0(Rd_D_Valid), .B1(n7), .Y(n39)
         );
  NAND3X2M U89 ( .A(Cur_S[0]), .B(n60), .C(Cur_S[3]), .Y(n28) );
  OAI2BB2X1M U90 ( .B0(n82), .B1(n35), .A0N(ALU_FUN[0]), .A1N(n36), .Y(n77) );
  OAI2BB2X1M U91 ( .B0(n81), .B1(n35), .A0N(ALU_FUN[1]), .A1N(n36), .Y(n78) );
  OAI2BB2X1M U92 ( .B0(n18), .B1(n35), .A0N(ALU_FUN[2]), .A1N(n36), .Y(n79) );
  OAI2BB2X1M U93 ( .B0(n17), .B1(n35), .A0N(ALU_FUN[3]), .A1N(n36), .Y(n80) );
  INVX2M U94 ( .A(RX_P_DATA[0]), .Y(n82) );
  INVX2M U95 ( .A(RX_P_DATA[1]), .Y(n81) );
  INVX2M U96 ( .A(RX_P_DATA[2]), .Y(n18) );
  INVX2M U97 ( .A(RX_D_VALID), .Y(n15) );
  INVX2M U98 ( .A(RX_P_DATA[4]), .Y(n16) );
  INVX2M U99 ( .A(RX_P_DATA[3]), .Y(n17) );
  AOI222X1M U100 ( .A0(RF_RdData[0]), .A1(n12), .B0(ALU_OUT[8]), .B1(n11), 
        .C0(ALU_OUT[0]), .C1(n10), .Y(n20) );
  OAI2BB2X1M U101 ( .B0(n19), .B1(n20), .A0N(FIFO_WR_DATA[0]), .A1N(n19), .Y(
        n65) );
endmodule


module UART_Serializer ( P_DATA_Registered, CLK, ser_en, ser_done, ser_data );
  input [7:0] P_DATA_Registered;
  input CLK, ser_en;
  output ser_done, ser_data;
  wire   N2, N3, N4, N6, N19, n3, n4, n5, n6, n7, n8, n9, n1, n2, n10, n11,
         n12, n13, n14, n15, n16, n17;
  assign ser_done = N19;

  DFFQX2M \Counter_reg[2]  ( .D(n8), .CK(CLK), .Q(N4) );
  DFFQX2M \Counter_reg[1]  ( .D(n7), .CK(CLK), .Q(N3) );
  DFFQX2M \Counter_reg[0]  ( .D(n9), .CK(CLK), .Q(N2) );
  INVX2M U3 ( .A(ser_en), .Y(n16) );
  OAI22X1M U4 ( .A0(n4), .A1(n17), .B0(n16), .B1(n5), .Y(n8) );
  NOR2X2M U5 ( .A(n17), .B(n5), .Y(N19) );
  NAND2X2M U6 ( .A(ser_en), .B(n5), .Y(n4) );
  OR2X2M U7 ( .A(N6), .B(n16), .Y(ser_data) );
  INVX2M U8 ( .A(N2), .Y(n15) );
  INVX2M U9 ( .A(N3), .Y(n14) );
  OAI2B2X1M U10 ( .A1N(n6), .A0(N2), .B0(n16), .B1(n6), .Y(n9) );
  OAI21X2M U11 ( .A0(N4), .A1(n16), .B0(n4), .Y(n6) );
  NAND2X2M U12 ( .A(N3), .B(N2), .Y(n5) );
  OAI2BB2X1M U13 ( .B0(n3), .B1(n4), .A0N(ser_en), .A1N(N19), .Y(n7) );
  NOR2X2M U14 ( .A(N3), .B(N2), .Y(n3) );
  INVX2M U15 ( .A(N4), .Y(n17) );
  AOI22X1M U16 ( .A0(P_DATA_Registered[2]), .A1(n15), .B0(P_DATA_Registered[3]), .B1(N2), .Y(n2) );
  AOI22X1M U17 ( .A0(P_DATA_Registered[0]), .A1(n15), .B0(P_DATA_Registered[1]), .B1(N2), .Y(n1) );
  OA22X1M U18 ( .A0(n14), .A1(n2), .B0(N3), .B1(n1), .Y(n13) );
  AOI22X1M U19 ( .A0(P_DATA_Registered[6]), .A1(n15), .B0(P_DATA_Registered[7]), .B1(N2), .Y(n11) );
  AOI22X1M U20 ( .A0(P_DATA_Registered[4]), .A1(n15), .B0(P_DATA_Registered[5]), .B1(N2), .Y(n10) );
  OAI22X1M U21 ( .A0(n11), .A1(n14), .B0(N3), .B1(n10), .Y(n12) );
  OAI2BB2X1M U22 ( .B0(n13), .B1(N4), .A0N(N4), .A1N(n12), .Y(N6) );
endmodule


module UART_Parity ( PAR_TYP, P_DATA, par_bit );
  input [7:0] P_DATA;
  input PAR_TYP;
  output par_bit;
  wire   n1, n2, n3, n4;

  XNOR2X2M U1 ( .A(P_DATA[7]), .B(P_DATA[6]), .Y(n4) );
  XOR3XLM U2 ( .A(PAR_TYP), .B(n1), .C(n2), .Y(par_bit) );
  XOR3XLM U3 ( .A(P_DATA[1]), .B(P_DATA[0]), .C(n3), .Y(n2) );
  XOR3XLM U4 ( .A(P_DATA[5]), .B(P_DATA[4]), .C(n4), .Y(n1) );
  XNOR2X2M U5 ( .A(P_DATA[3]), .B(P_DATA[2]), .Y(n3) );
endmodule


module UART_TX_FSM ( DATA_VALID, P_DATA, PAR_EN, PAR_TYP, ser_done, CLK, RST, 
        P_DATA_Registered, busy, ser_en, PAR_TYP_Registered, mux_sel );
  input [7:0] P_DATA;
  output [7:0] P_DATA_Registered;
  output [1:0] mux_sel;
  input DATA_VALID, PAR_EN, PAR_TYP, ser_done, CLK, RST;
  output busy, ser_en, PAR_TYP_Registered;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n1;
  wire   [2:0] Cur_S;
  wire   [2:0] Nx_S;

  DFFRX1M PAR_EN_Registered_reg ( .D(n21), .CK(CLK), .RN(RST), .QN(n4) );
  DFFRQX2M PAR_TYP_Registered_reg ( .D(n19), .CK(CLK), .RN(RST), .Q(
        PAR_TYP_Registered) );
  DFFRQX2M \P_DATA_Registered_reg[1]  ( .D(n12), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[1]) );
  DFFRQX2M \P_DATA_Registered_reg[5]  ( .D(n16), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[5]) );
  DFFRQX2M \P_DATA_Registered_reg[4]  ( .D(n15), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[4]) );
  DFFRQX2M \P_DATA_Registered_reg[0]  ( .D(n20), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[0]) );
  DFFRQX2M \P_DATA_Registered_reg[3]  ( .D(n14), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[3]) );
  DFFRQX2M \P_DATA_Registered_reg[7]  ( .D(n18), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[7]) );
  DFFRQX2M \P_DATA_Registered_reg[2]  ( .D(n13), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[2]) );
  DFFRQX2M \P_DATA_Registered_reg[6]  ( .D(n17), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[6]) );
  DFFRQX2M \Cur_S_reg[1]  ( .D(Nx_S[1]), .CK(CLK), .RN(RST), .Q(Cur_S[1]) );
  DFFRQX2M \Cur_S_reg[2]  ( .D(Nx_S[2]), .CK(CLK), .RN(RST), .Q(Cur_S[2]) );
  DFFRX1M \Cur_S_reg[0]  ( .D(Nx_S[0]), .CK(CLK), .RN(RST), .QN(n3) );
  INVX2M U3 ( .A(n5), .Y(ser_en) );
  INVX2M U4 ( .A(n6), .Y(n1) );
  NAND2X2M U5 ( .A(mux_sel[1]), .B(n10), .Y(n5) );
  INVX2M U6 ( .A(n8), .Y(mux_sel[0]) );
  NAND2X2M U7 ( .A(DATA_VALID), .B(n7), .Y(n6) );
  INVX2M U8 ( .A(n7), .Y(busy) );
  NOR2X2M U9 ( .A(n3), .B(Cur_S[2]), .Y(n8) );
  NOR2BX2M U10 ( .AN(Cur_S[1]), .B(Cur_S[2]), .Y(mux_sel[1]) );
  CLKXOR2X2M U11 ( .A(n3), .B(Cur_S[1]), .Y(n10) );
  AO22X1M U12 ( .A0(P_DATA[0]), .A1(n1), .B0(P_DATA_Registered[0]), .B1(n6), 
        .Y(n20) );
  AO22X1M U13 ( .A0(P_DATA[6]), .A1(n1), .B0(P_DATA_Registered[6]), .B1(n6), 
        .Y(n17) );
  AO22X1M U14 ( .A0(P_DATA[5]), .A1(n1), .B0(P_DATA_Registered[5]), .B1(n6), 
        .Y(n16) );
  AO22X1M U15 ( .A0(P_DATA[4]), .A1(n1), .B0(P_DATA_Registered[4]), .B1(n6), 
        .Y(n15) );
  AO22X1M U16 ( .A0(P_DATA[3]), .A1(n1), .B0(P_DATA_Registered[3]), .B1(n6), 
        .Y(n14) );
  AO22X1M U17 ( .A0(P_DATA[2]), .A1(n1), .B0(P_DATA_Registered[2]), .B1(n6), 
        .Y(n13) );
  AO22X1M U18 ( .A0(P_DATA[1]), .A1(n1), .B0(P_DATA_Registered[1]), .B1(n6), 
        .Y(n12) );
  AOI21X2M U19 ( .A0(n3), .A1(Cur_S[1]), .B0(n8), .Y(n7) );
  AO22X1M U20 ( .A0(P_DATA[7]), .A1(n1), .B0(P_DATA_Registered[7]), .B1(n6), 
        .Y(n18) );
  OAI22X1M U21 ( .A0(ser_done), .A1(mux_sel[0]), .B0(Cur_S[1]), .B1(n11), .Y(
        Nx_S[0]) );
  AOI2B1X1M U22 ( .A1N(Cur_S[2]), .A0(DATA_VALID), .B0(n8), .Y(n11) );
  OAI2BB2X1M U23 ( .B0(n1), .B1(n4), .A0N(PAR_EN), .A1N(n1), .Y(n21) );
  OAI21X2M U24 ( .A0(Cur_S[2]), .A1(n10), .B0(n5), .Y(Nx_S[1]) );
  NOR2BX2M U25 ( .AN(mux_sel[1]), .B(n9), .Y(Nx_S[2]) );
  AOI21X2M U26 ( .A0(ser_done), .A1(n4), .B0(n3), .Y(n9) );
  AO22X1M U27 ( .A0(PAR_TYP), .A1(n1), .B0(PAR_TYP_Registered), .B1(n6), .Y(
        n19) );
endmodule


module MUX_4x1 ( mux_sel, IN0, IN1, IN2, IN3, mux_out );
  input [1:0] mux_sel;
  input IN0, IN1, IN2, IN3;
  output mux_out;
  wire   n2, n3, n1;

  OAI2B2X4M U1 ( .A1N(mux_sel[1]), .A0(n2), .B0(mux_sel[1]), .B1(n3), .Y(
        mux_out) );
  AOI22X1M U2 ( .A0(IN0), .A1(n1), .B0(mux_sel[0]), .B1(IN1), .Y(n3) );
  AOI22X1M U3 ( .A0(IN2), .A1(n1), .B0(IN3), .B1(mux_sel[0]), .Y(n2) );
  INVX2M U4 ( .A(mux_sel[0]), .Y(n1) );
endmodule


module UART_TX_TOP ( PAR_EN, PAR_TYP, DATA_VALID, P_DATA, CLK, RST, TX_OUT, 
        busy );
  input [7:0] P_DATA;
  input PAR_EN, PAR_TYP, DATA_VALID, CLK, RST;
  output TX_OUT, busy;
  wire   ser_en, ser_done, ser_data, PAR_TYP_Registered, par_bit;
  wire   [7:0] P_DATA_Registered;
  wire   [1:0] mux_sel;

  UART_Serializer U0_serializer ( .P_DATA_Registered(P_DATA_Registered), .CLK(
        CLK), .ser_en(ser_en), .ser_done(ser_done), .ser_data(ser_data) );
  UART_Parity U1_parity ( .PAR_TYP(PAR_TYP_Registered), .P_DATA(
        P_DATA_Registered), .par_bit(par_bit) );
  UART_TX_FSM U2_FSM ( .DATA_VALID(DATA_VALID), .P_DATA(P_DATA), .PAR_EN(
        PAR_EN), .PAR_TYP(PAR_TYP), .ser_done(ser_done), .CLK(CLK), .RST(RST), 
        .P_DATA_Registered(P_DATA_Registered), .busy(busy), .ser_en(ser_en), 
        .PAR_TYP_Registered(PAR_TYP_Registered), .mux_sel(mux_sel) );
  MUX_4x1 U3_MUX_4x1 ( .mux_sel(mux_sel), .IN0(1'b0), .IN1(1'b1), .IN2(
        ser_data), .IN3(par_bit), .mux_out(TX_OUT) );
endmodule


module Sampler ( Prescale, Edge_Count, RX_IN, Data_Sample_En, CLK, RST, 
        sampled_bit, Sampled_flag );
  input [5:0] Prescale;
  input [4:0] Edge_Count;
  input RX_IN, Data_Sample_En, CLK, RST;
  output sampled_bit, Sampled_flag;
  wire   first_sample, second_sample, third_sample, N32, n17, n18, n19,
         \r71/carry[4] , \r71/carry[3] , \r71/carry[2] , n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39;
  wire   [4:0] first_Edge;
  wire   [4:0] third_Edge;

  DFFSX1M second_sample_reg ( .D(n17), .CK(CLK), .SN(RST), .Q(second_sample), 
        .QN(n6) );
  DFFSX1M first_sample_reg ( .D(n18), .CK(CLK), .SN(RST), .Q(first_sample), 
        .QN(n5) );
  DFFSX1M third_sample_reg ( .D(n19), .CK(CLK), .SN(RST), .Q(third_sample) );
  ADDHX1M U3 ( .A(Prescale[3]), .B(\r71/carry[2] ), .CO(\r71/carry[3] ), .S(
        third_Edge[2]) );
  ADDHX1M U4 ( .A(Prescale[2]), .B(Prescale[1]), .CO(\r71/carry[2] ), .S(
        third_Edge[1]) );
  ADDHX1M U5 ( .A(Prescale[4]), .B(\r71/carry[3] ), .CO(\r71/carry[4] ), .S(
        third_Edge[3]) );
  INVX2M U6 ( .A(Prescale[3]), .Y(n4) );
  ADDHX1M U7 ( .A(Prescale[5]), .B(\r71/carry[4] ), .CO(N32), .S(third_Edge[4]) );
  CLKINVX1M U8 ( .A(Prescale[1]), .Y(first_Edge[0]) );
  NOR2X1M U9 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n1) );
  AO21XLM U10 ( .A0(Prescale[1]), .A1(Prescale[2]), .B0(n1), .Y(first_Edge[1])
         );
  CLKNAND2X2M U11 ( .A(n1), .B(n4), .Y(n2) );
  OAI21X1M U12 ( .A0(n1), .A1(n4), .B0(n2), .Y(first_Edge[2]) );
  XNOR2X1M U13 ( .A(Prescale[4]), .B(n2), .Y(first_Edge[3]) );
  NOR2X1M U14 ( .A(Prescale[4]), .B(n2), .Y(n3) );
  CLKXOR2X2M U15 ( .A(Prescale[5]), .B(n3), .Y(first_Edge[4]) );
  OAI21X1M U16 ( .A0(n5), .A1(n6), .B0(n7), .Y(sampled_bit) );
  OAI21X1M U17 ( .A0(first_sample), .A1(second_sample), .B0(third_sample), .Y(
        n7) );
  CLKMX2X2M U18 ( .A(third_sample), .B(RX_IN), .S0(n8), .Y(n19) );
  NOR4X1M U19 ( .A(n9), .B(n10), .C(n11), .D(n12), .Y(n8) );
  NAND4BBX1M U20 ( .AN(n13), .BN(n14), .C(n15), .D(n16), .Y(n9) );
  NAND4BBX1M U21 ( .AN(n20), .BN(n21), .C(n22), .D(n23), .Y(n15) );
  MXI2X1M U22 ( .A(n5), .B(n24), .S0(n25), .Y(n18) );
  NOR2X1M U23 ( .A(n10), .B(n16), .Y(n25) );
  CLKINVX1M U24 ( .A(Data_Sample_En), .Y(n10) );
  MXI2X1M U25 ( .A(n6), .B(n24), .S0(n26), .Y(n17) );
  NOR4BX1M U26 ( .AN(n16), .B(n27), .C(n20), .D(n21), .Y(n26) );
  CLKXOR2X2M U27 ( .A(Edge_Count[2]), .B(Prescale[3]), .Y(n21) );
  CLKXOR2X2M U28 ( .A(Edge_Count[4]), .B(Prescale[5]), .Y(n20) );
  NAND3X1M U29 ( .A(n22), .B(n23), .C(Data_Sample_En), .Y(n27) );
  AND2X1M U30 ( .A(n28), .B(n29), .Y(n23) );
  XNOR2X1M U31 ( .A(Edge_Count[0]), .B(Prescale[1]), .Y(n29) );
  XNOR2X1M U32 ( .A(Edge_Count[1]), .B(Prescale[2]), .Y(n28) );
  XNOR2X1M U33 ( .A(Edge_Count[3]), .B(Prescale[4]), .Y(n22) );
  NAND4X1M U34 ( .A(n30), .B(n31), .C(n32), .D(n33), .Y(n16) );
  XNOR2X1M U35 ( .A(Edge_Count[0]), .B(first_Edge[0]), .Y(n33) );
  NOR2X1M U36 ( .A(n34), .B(n35), .Y(n32) );
  CLKXOR2X2M U37 ( .A(first_Edge[2]), .B(Edge_Count[2]), .Y(n35) );
  XNOR2X1M U38 ( .A(first_Edge[1]), .B(n36), .Y(n34) );
  CLKINVX1M U39 ( .A(Edge_Count[1]), .Y(n36) );
  XNOR2X1M U40 ( .A(Edge_Count[3]), .B(first_Edge[3]), .Y(n31) );
  XNOR2X1M U41 ( .A(Edge_Count[4]), .B(first_Edge[4]), .Y(n30) );
  CLKINVX1M U42 ( .A(RX_IN), .Y(n24) );
  NOR4X1M U43 ( .A(n37), .B(n13), .C(N32), .D(n14), .Y(Sampled_flag) );
  CLKXOR2X2M U44 ( .A(Edge_Count[2]), .B(third_Edge[2]), .Y(n14) );
  CLKXOR2X2M U45 ( .A(Edge_Count[3]), .B(third_Edge[3]), .Y(n13) );
  OR2X1M U46 ( .A(n12), .B(n11), .Y(n37) );
  CLKNAND2X2M U47 ( .A(n38), .B(n39), .Y(n11) );
  XNOR2X1M U48 ( .A(Edge_Count[0]), .B(first_Edge[0]), .Y(n39) );
  XNOR2X1M U49 ( .A(Edge_Count[1]), .B(third_Edge[1]), .Y(n38) );
  CLKXOR2X2M U50 ( .A(Edge_Count[4]), .B(third_Edge[4]), .Y(n12) );
endmodule


module Edge_Bit_Counter ( Prescale, Count_En, CLK, RST, Edge_Count, Bit_Count
 );
  input [5:0] Prescale;
  output [4:0] Edge_Count;
  output [3:0] Bit_Count;
  input Count_En, CLK, RST;
  wire   N8, N9, N10, N11, N13, N14, N15, N17, N18, N19, N20, N21, N44, N45,
         N46, N47, N48, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, \add_21/carry[4] , \add_21/carry[3] , \add_21/carry[2] , n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n26, n27, n28, n29,
         n30, n31, n32, n33, n34;

  DFFRQX2M \Bit_Count_reg[3]  ( .D(n25), .CK(CLK), .RN(RST), .Q(Bit_Count[3])
         );
  DFFRQX2M \Bit_Count_reg[1]  ( .D(n23), .CK(CLK), .RN(RST), .Q(Bit_Count[1])
         );
  DFFRQX2M \Edge_Count_reg[4]  ( .D(N48), .CK(CLK), .RN(RST), .Q(Edge_Count[4]) );
  DFFRQX2M \Edge_Count_reg[0]  ( .D(N44), .CK(CLK), .RN(RST), .Q(Edge_Count[0]) );
  DFFRQX2M \Edge_Count_reg[1]  ( .D(N45), .CK(CLK), .RN(RST), .Q(Edge_Count[1]) );
  DFFRQX2M \Edge_Count_reg[3]  ( .D(N47), .CK(CLK), .RN(RST), .Q(Edge_Count[3]) );
  DFFRQX2M \Edge_Count_reg[2]  ( .D(N46), .CK(CLK), .RN(RST), .Q(Edge_Count[2]) );
  DFFRQX2M \Bit_Count_reg[2]  ( .D(n28), .CK(CLK), .RN(RST), .Q(Bit_Count[2])
         );
  DFFRQX2M \Bit_Count_reg[0]  ( .D(n24), .CK(CLK), .RN(RST), .Q(Bit_Count[0])
         );
  INVX2M U3 ( .A(n20), .Y(n29) );
  INVX2M U4 ( .A(n16), .Y(n31) );
  NAND2X2M U5 ( .A(N15), .B(Count_En), .Y(n20) );
  AND2X2M U6 ( .A(N19), .B(n29), .Y(N46) );
  AND2X2M U7 ( .A(N20), .B(n29), .Y(N47) );
  AND2X2M U8 ( .A(N18), .B(n29), .Y(N45) );
  NOR2X2M U9 ( .A(n33), .B(n32), .Y(n16) );
  INVX2M U10 ( .A(N11), .Y(n13) );
  INVX2M U11 ( .A(N10), .Y(n12) );
  OAI32X1M U12 ( .A0(n18), .A1(Bit_Count[0]), .A2(n29), .B0(n20), .B1(n32), 
        .Y(n24) );
  OAI32X1M U13 ( .A0(n17), .A1(n32), .A2(n18), .B0(n19), .B1(n33), .Y(n23) );
  NAND2X2M U14 ( .A(n20), .B(n33), .Y(n17) );
  AOI2BB1X2M U15 ( .A0N(n18), .A1N(Bit_Count[0]), .B0(n29), .Y(n19) );
  OAI22X1M U16 ( .A0(n20), .A1(n30), .B0(n21), .B1(n18), .Y(n25) );
  AOI31X2M U17 ( .A0(Bit_Count[2]), .A1(n20), .A2(n16), .B0(Bit_Count[3]), .Y(
        n21) );
  INVX2M U18 ( .A(n14), .Y(n28) );
  AOI32X1M U19 ( .A0(Count_En), .A1(n30), .A2(n15), .B0(n29), .B1(Bit_Count[2]), .Y(n14) );
  OAI32X1M U20 ( .A0(Bit_Count[2]), .A1(N15), .A2(n31), .B0(n34), .B1(n16), 
        .Y(n15) );
  INVX2M U21 ( .A(Bit_Count[2]), .Y(n34) );
  INVX2M U22 ( .A(Edge_Count[2]), .Y(n26) );
  INVX2M U23 ( .A(Edge_Count[3]), .Y(n27) );
  AND2X2M U24 ( .A(N17), .B(n29), .Y(N44) );
  AND2X2M U25 ( .A(N21), .B(n29), .Y(N48) );
  NAND2X2M U26 ( .A(Count_En), .B(n22), .Y(n18) );
  OAI21X2M U27 ( .A0(Bit_Count[2]), .A1(Bit_Count[1]), .B0(Bit_Count[3]), .Y(
        n22) );
  INVX2M U28 ( .A(Bit_Count[1]), .Y(n33) );
  INVX2M U29 ( .A(Bit_Count[0]), .Y(n32) );
  ADDHX1M U30 ( .A(Edge_Count[2]), .B(\add_21/carry[2] ), .CO(
        \add_21/carry[3] ), .S(N19) );
  ADDHX1M U31 ( .A(Edge_Count[1]), .B(Edge_Count[0]), .CO(\add_21/carry[2] ), 
        .S(N18) );
  ADDHX1M U32 ( .A(Edge_Count[3]), .B(\add_21/carry[3] ), .CO(
        \add_21/carry[4] ), .S(N20) );
  INVX2M U33 ( .A(Bit_Count[3]), .Y(n30) );
  OR2X2M U34 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n2) );
  AOI21BX2M U35 ( .A0(n4), .A1(Prescale[4]), .B0N(n5), .Y(n1) );
  CLKINVX1M U36 ( .A(Prescale[0]), .Y(N8) );
  OAI2BB1X1M U37 ( .A0N(Prescale[0]), .A1N(Prescale[1]), .B0(n2), .Y(N9) );
  OR2X1M U38 ( .A(n2), .B(Prescale[2]), .Y(n3) );
  OAI2BB1X1M U39 ( .A0N(n2), .A1N(Prescale[2]), .B0(n3), .Y(N10) );
  OR2X1M U40 ( .A(n3), .B(Prescale[3]), .Y(n4) );
  OAI2BB1X1M U41 ( .A0N(n3), .A1N(Prescale[3]), .B0(n4), .Y(N11) );
  OR2X1M U42 ( .A(n4), .B(Prescale[4]), .Y(n5) );
  NOR2X1M U43 ( .A(n5), .B(Prescale[5]), .Y(N14) );
  AO21XLM U44 ( .A0(n5), .A1(Prescale[5]), .B0(N14), .Y(N13) );
  CLKINVX1M U45 ( .A(Edge_Count[0]), .Y(N17) );
  CLKXOR2X2M U46 ( .A(\add_21/carry[4] ), .B(Edge_Count[4]), .Y(N21) );
  NAND2BX1M U47 ( .AN(Edge_Count[0]), .B(N8), .Y(n7) );
  AOI2BB1X1M U48 ( .A0N(n7), .A1N(Edge_Count[1]), .B0(N9), .Y(n6) );
  AOI221XLM U49 ( .A0(Edge_Count[2]), .A1(n12), .B0(Edge_Count[1]), .B1(n7), 
        .C0(n6), .Y(n8) );
  AOI221XLM U50 ( .A0(N11), .A1(n27), .B0(N10), .B1(n26), .C0(n8), .Y(n9) );
  AOI221XLM U51 ( .A0(Edge_Count[4]), .A1(n1), .B0(Edge_Count[3]), .B1(n13), 
        .C0(n9), .Y(n11) );
  NOR2X1M U52 ( .A(Edge_Count[4]), .B(n1), .Y(n10) );
  OR4X1M U53 ( .A(n11), .B(n10), .C(N14), .D(N13), .Y(N15) );
endmodule


module Deserializer ( deser_En, sampled_bit, Sampled_flag, Bit_Count, CLK, RST, 
        P_DATA );
  input [3:0] Bit_Count;
  output [7:0] P_DATA;
  input deser_En, sampled_bit, Sampled_flag, CLK, RST;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n1,
         n2, n3;

  DFFRQX2M \P_DATA_reg[7]  ( .D(n31), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX2M \P_DATA_reg[6]  ( .D(n30), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  DFFRQX2M \P_DATA_reg[5]  ( .D(n29), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX2M \P_DATA_reg[4]  ( .D(n28), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX2M \P_DATA_reg[3]  ( .D(n27), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  DFFRQX2M \P_DATA_reg[2]  ( .D(n26), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  DFFRQX2M \P_DATA_reg[1]  ( .D(n25), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX2M \P_DATA_reg[0]  ( .D(n24), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  NAND2X2M U3 ( .A(n3), .B(n1), .Y(n19) );
  NAND2BX2M U4 ( .AN(n7), .B(sampled_bit), .Y(n5) );
  NAND2BX2M U5 ( .AN(n10), .B(sampled_bit), .Y(n8) );
  AND2X2M U6 ( .A(deser_En), .B(Sampled_flag), .Y(n21) );
  NAND2X2M U7 ( .A(n21), .B(n2), .Y(n10) );
  NAND2X2M U8 ( .A(n12), .B(n1), .Y(n16) );
  NAND2X2M U9 ( .A(n3), .B(n11), .Y(n13) );
  NAND2X2M U10 ( .A(n11), .B(n12), .Y(n4) );
  INVX2M U11 ( .A(n11), .Y(n1) );
  INVX2M U12 ( .A(n12), .Y(n3) );
  NAND2X2M U13 ( .A(n21), .B(Bit_Count[0]), .Y(n7) );
  OAI21X2M U14 ( .A0(n5), .A1(n13), .B0(n14), .Y(n26) );
  OAI21X2M U15 ( .A0(n7), .A1(n13), .B0(P_DATA[2]), .Y(n14) );
  OAI21X2M U16 ( .A0(n8), .A1(n13), .B0(n15), .Y(n27) );
  OAI21X2M U17 ( .A0(n10), .A1(n13), .B0(P_DATA[3]), .Y(n15) );
  OAI21X2M U18 ( .A0(n5), .A1(n16), .B0(n17), .Y(n28) );
  OAI21X2M U19 ( .A0(n7), .A1(n16), .B0(P_DATA[4]), .Y(n17) );
  OAI21X2M U20 ( .A0(n8), .A1(n16), .B0(n18), .Y(n29) );
  OAI21X2M U21 ( .A0(n10), .A1(n16), .B0(P_DATA[5]), .Y(n18) );
  OAI21X2M U22 ( .A0(n5), .A1(n19), .B0(n20), .Y(n30) );
  OAI21X2M U23 ( .A0(n7), .A1(n19), .B0(P_DATA[6]), .Y(n20) );
  OAI21X2M U24 ( .A0(n8), .A1(n19), .B0(n22), .Y(n31) );
  OAI21X2M U25 ( .A0(n10), .A1(n19), .B0(P_DATA[7]), .Y(n22) );
  OAI21X2M U26 ( .A0(n4), .A1(n5), .B0(n6), .Y(n24) );
  OAI21X2M U27 ( .A0(n7), .A1(n4), .B0(P_DATA[0]), .Y(n6) );
  OAI21X2M U28 ( .A0(n4), .A1(n8), .B0(n9), .Y(n25) );
  OAI21X2M U29 ( .A0(n4), .A1(n10), .B0(P_DATA[1]), .Y(n9) );
  INVX2M U30 ( .A(Bit_Count[0]), .Y(n2) );
  CLKXOR2X2M U31 ( .A(Bit_Count[1]), .B(Bit_Count[0]), .Y(n12) );
  CLKXOR2X2M U32 ( .A(n23), .B(Bit_Count[2]), .Y(n11) );
  NAND2BX2M U33 ( .AN(Bit_Count[1]), .B(n2), .Y(n23) );
endmodule


module Start_Checker ( CLK, RST, sampled_bit, Sampled_flag, Str_Chk_En, 
        start_glitch );
  input CLK, RST, sampled_bit, Sampled_flag, Str_Chk_En;
  output start_glitch;
  wire   n1, n2;

  DFFRQX2M start_glitch_reg ( .D(n2), .CK(CLK), .RN(RST), .Q(start_glitch) );
  AO2B2XLM U2 ( .B0(start_glitch), .B1(n1), .A0(sampled_bit), .A1N(n1), .Y(n2)
         );
  NAND2XLM U3 ( .A(Str_Chk_En), .B(Sampled_flag), .Y(n1) );
endmodule


module Stop_Checker ( CLK, RST, sampled_bit, Sampled_flag, Stp_Chk_En, stp_err
 );
  input CLK, RST, sampled_bit, Sampled_flag, Stp_Chk_En;
  output stp_err;
  wire   n1, n2;

  DFFRQX2M stp_err_reg ( .D(n2), .CK(CLK), .RN(RST), .Q(stp_err) );
  OAI2BB2XLM U2 ( .B0(sampled_bit), .B1(n1), .A0N(stp_err), .A1N(n1), .Y(n2)
         );
  NAND2X2M U3 ( .A(Stp_Chk_En), .B(Sampled_flag), .Y(n1) );
endmodule


module Parity_Checker ( PAR_TYP, PAR_Chk_En, sampled_bit, Bit_Count, CLK, RST, 
        Sampled_flag, par_err );
  input [3:0] Bit_Count;
  input PAR_TYP, PAR_Chk_En, sampled_bit, CLK, RST, Sampled_flag;
  output par_err;
  wire   par_bit, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n1, n2, n3, n4;

  DFFRQX2M par_err_reg ( .D(n13), .CK(CLK), .RN(RST), .Q(par_err) );
  DFFRQX2M par_bit_reg ( .D(n14), .CK(CLK), .RN(RST), .Q(par_bit) );
  AOI2B1X1M U3 ( .A1N(n7), .A0(Sampled_flag), .B0(n2), .Y(n8) );
  INVX2M U4 ( .A(PAR_Chk_En), .Y(n2) );
  INVX2M U5 ( .A(n11), .Y(n4) );
  OAI32X1M U6 ( .A0(n2), .A1(n8), .A2(n9), .B0(n3), .B1(n1), .Y(n14) );
  INVX2M U7 ( .A(par_bit), .Y(n3) );
  AOI22XLM U8 ( .A0(n10), .A1(n11), .B0(sampled_bit), .B1(n4), .Y(n9) );
  INVX2M U9 ( .A(n8), .Y(n1) );
  OAI2BB2X1M U10 ( .B0(n5), .B1(n6), .A0N(par_err), .A1N(n6), .Y(n13) );
  NAND3XLM U11 ( .A(PAR_Chk_En), .B(n7), .C(Sampled_flag), .Y(n6) );
  XNOR2XLM U12 ( .A(par_bit), .B(sampled_bit), .Y(n5) );
  XNOR2X2M U13 ( .A(PAR_TYP), .B(n5), .Y(n10) );
  NAND2X2M U14 ( .A(n12), .B(Bit_Count[0]), .Y(n11) );
  NOR2X2M U15 ( .A(Bit_Count[2]), .B(Bit_Count[1]), .Y(n12) );
  NOR2BX2M U16 ( .AN(Bit_Count[3]), .B(n11), .Y(n7) );
endmodule


module UART_RX_FSM ( RX_IN, PAR_EN, Bit_Count, par_err, stp_err, start_glitch, 
        CLK, RST, PAR_Chk_En, Str_Chk_En, Stp_Chk_En, Count_En, Data_Sample_En, 
        deser_En, DATA_VALID );
  input [3:0] Bit_Count;
  input RX_IN, PAR_EN, par_err, stp_err, start_glitch, CLK, RST;
  output PAR_Chk_En, Str_Chk_En, Stp_Chk_En, Count_En, Data_Sample_En,
         deser_En, DATA_VALID;
  wire   DATA_VALID_Comb, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n3, n4, n5, n6;
  wire   [2:0] Cur_S;
  wire   [2:0] Nx_S;

  DFFRQX2M \Cur_S_reg[0]  ( .D(Nx_S[0]), .CK(CLK), .RN(RST), .Q(Cur_S[0]) );
  DFFRQX2M \Cur_S_reg[1]  ( .D(Nx_S[1]), .CK(CLK), .RN(RST), .Q(Cur_S[1]) );
  DFFRQX2M \Cur_S_reg[2]  ( .D(Nx_S[2]), .CK(CLK), .RN(RST), .Q(Cur_S[2]) );
  DFFRQX2M DATA_VALID_reg ( .D(DATA_VALID_Comb), .CK(CLK), .RN(RST), .Q(
        DATA_VALID) );
  INVX2M U3 ( .A(n11), .Y(deser_En) );
  NAND2X2M U4 ( .A(PAR_Chk_En), .B(n4), .Y(n15) );
  NAND3X2M U5 ( .A(n15), .B(n11), .C(n17), .Y(Nx_S[1]) );
  AOI22X1M U6 ( .A0(n18), .A1(n19), .B0(Stp_Chk_En), .B1(n12), .Y(n17) );
  INVX2M U7 ( .A(n24), .Y(Stp_Chk_En) );
  OAI221X1M U8 ( .A0(RX_IN), .A1(n3), .B0(n11), .B1(n16), .C0(n20), .Y(Nx_S[0]) );
  OAI21X2M U9 ( .A0(n18), .A1(n21), .B0(Str_Chk_En), .Y(n20) );
  INVX2M U10 ( .A(n23), .Y(n3) );
  OAI32X1M U11 ( .A0(Cur_S[1]), .A1(Cur_S[2]), .A2(Cur_S[0]), .B0(n24), .B1(
        n12), .Y(n23) );
  NOR4BX1M U12 ( .AN(Bit_Count[1]), .B(n5), .C(Bit_Count[0]), .D(Bit_Count[2]), 
        .Y(n12) );
  NOR2BX2M U13 ( .AN(Cur_S[1]), .B(Cur_S[2]), .Y(PAR_Chk_En) );
  NOR4X1M U14 ( .A(Bit_Count[0]), .B(Bit_Count[1]), .C(Bit_Count[2]), .D(
        Bit_Count[3]), .Y(n21) );
  NAND3X2M U15 ( .A(Cur_S[1]), .B(n4), .C(Cur_S[2]), .Y(n24) );
  NOR2X2M U16 ( .A(n4), .B(Cur_S[2]), .Y(n19) );
  NAND2X2M U17 ( .A(Cur_S[0]), .B(PAR_Chk_En), .Y(n11) );
  NOR2X2M U18 ( .A(n21), .B(start_glitch), .Y(n18) );
  NAND2BX2M U19 ( .AN(n21), .B(n22), .Y(n16) );
  OAI31X1M U20 ( .A0(Bit_Count[0]), .A1(Bit_Count[2]), .A2(Bit_Count[1]), .B0(
        Bit_Count[3]), .Y(n22) );
  INVX2M U21 ( .A(Cur_S[0]), .Y(n4) );
  INVX2M U22 ( .A(Bit_Count[3]), .Y(n5) );
  NOR2BX2M U23 ( .AN(n19), .B(Cur_S[1]), .Y(Str_Chk_En) );
  AO21XLM U24 ( .A0(n12), .A1(Stp_Chk_En), .B0(n13), .Y(Nx_S[2]) );
  OAI32X1M U25 ( .A0(n11), .A1(PAR_EN), .A2(n6), .B0(n14), .B1(n15), .Y(n13)
         );
  NOR4BX1M U26 ( .AN(Bit_Count[0]), .B(Bit_Count[2]), .C(Bit_Count[1]), .D(n5), 
        .Y(n14) );
  INVX2M U27 ( .A(n16), .Y(n6) );
  NOR4X1M U28 ( .A(stp_err), .B(start_glitch), .C(par_err), .D(n24), .Y(
        DATA_VALID_Comb) );
  BUFX2M U29 ( .A(Data_Sample_En), .Y(Count_En) );
  OR3X2M U30 ( .A(PAR_Chk_En), .B(n19), .C(Stp_Chk_En), .Y(Data_Sample_En) );
endmodule


module UART_RX ( CLK, RST, RX_IN, Prescale, PAR_EN, PAR_TYP, P_DATA, 
        data_valid );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_EN, PAR_TYP;
  output data_valid;
  wire   dat_samp_en, sampled_bit, Sampled_flag, count_en, deser_en,
         strt_chk_en, start_glitch, stp_chk_en, stp_err, par_chk_en, par_err;
  wire   [4:0] Edge_Count;
  wire   [3:0] Bit_Count;

  Sampler u_Sampler ( .Prescale(Prescale), .Edge_Count(Edge_Count), .RX_IN(
        RX_IN), .Data_Sample_En(dat_samp_en), .CLK(CLK), .RST(RST), 
        .sampled_bit(sampled_bit), .Sampled_flag(Sampled_flag) );
  Edge_Bit_Counter u_Edge_Bit_Counter ( .Prescale(Prescale), .Count_En(
        count_en), .CLK(CLK), .RST(RST), .Edge_Count(Edge_Count), .Bit_Count(
        Bit_Count) );
  Deserializer u_Deserializer ( .deser_En(deser_en), .sampled_bit(sampled_bit), 
        .Sampled_flag(Sampled_flag), .Bit_Count(Bit_Count), .CLK(CLK), .RST(
        RST), .P_DATA(P_DATA) );
  Start_Checker u_Start_Checker ( .CLK(CLK), .RST(RST), .sampled_bit(
        sampled_bit), .Sampled_flag(Sampled_flag), .Str_Chk_En(strt_chk_en), 
        .start_glitch(start_glitch) );
  Stop_Checker u_Stop_Checker ( .CLK(CLK), .RST(RST), .sampled_bit(sampled_bit), .Sampled_flag(Sampled_flag), .Stp_Chk_En(stp_chk_en), .stp_err(stp_err) );
  Parity_Checker u_Parity_Checker ( .PAR_TYP(PAR_TYP), .PAR_Chk_En(par_chk_en), 
        .sampled_bit(sampled_bit), .Bit_Count(Bit_Count), .CLK(CLK), .RST(RST), 
        .Sampled_flag(Sampled_flag), .par_err(par_err) );
  UART_RX_FSM u_UART_RX_FSM ( .RX_IN(RX_IN), .PAR_EN(PAR_EN), .Bit_Count(
        Bit_Count), .par_err(par_err), .stp_err(stp_err), .start_glitch(
        start_glitch), .CLK(CLK), .RST(RST), .PAR_Chk_En(par_chk_en), 
        .Str_Chk_En(strt_chk_en), .Stp_Chk_En(stp_chk_en), .Count_En(count_en), 
        .Data_Sample_En(dat_samp_en), .deser_En(deser_en), .DATA_VALID(
        data_valid) );
endmodule


module UART ( TX_CLK, RX_CLK, RST, Prescale, PAR_EN, PAR_TYP, TX_P_DATA, 
        TX_DATA_VALID, TX_OUT, TX_BUSY, RX_IN, RX_P_DATA, RX_DATA_VALID );
  input [5:0] Prescale;
  input [7:0] TX_P_DATA;
  output [7:0] RX_P_DATA;
  input TX_CLK, RX_CLK, RST, PAR_EN, PAR_TYP, TX_DATA_VALID, RX_IN;
  output TX_OUT, TX_BUSY, RX_DATA_VALID;


  UART_TX_TOP u_UART_TX_TOP ( .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .DATA_VALID(
        TX_DATA_VALID), .P_DATA(TX_P_DATA), .CLK(TX_CLK), .RST(RST), .TX_OUT(
        TX_OUT), .busy(TX_BUSY) );
  UART_RX u_UART_RX ( .CLK(RX_CLK), .RST(RST), .RX_IN(RX_IN), .Prescale(
        Prescale), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .P_DATA(RX_P_DATA), 
        .data_valid(RX_DATA_VALID) );
endmodule


module System_Top ( REF_CLK, UART_CLK, RST, RX_IN, TX_OUT, RX_D_VALID );
  input REF_CLK, UART_CLK, RST, RX_IN;
  output TX_OUT, RX_D_VALID;
  wire   ALU_EN, ALU_CLK, SYNC_REF_RST, ALU_OUT_VALID, TX_CLK, SYNC_UART_RST,
         FIFO_WR_INC, FIFO_RD_INC, FIFO_EMPTY, FIFO_FULL, Sync_RX_D_VALID,
         RX_CLK, TX_BUSY, RF_WrEn, RF_RdEn, RF_Rd_Data_Valid, CLK_Gate_EN, n1;
  wire   [7:0] ALU_OP_A;
  wire   [7:0] ALU_OP_B;
  wire   [3:0] ALU_FUN;
  wire   [15:0] ALU_OUT;
  wire   [7:0] FIFO_WR_DATA;
  wire   [7:0] FIFO_RD_DATA;
  wire   [7:0] RX_P_DATA;
  wire   [7:0] Sync_RX_P_DATA;
  wire   [7:0] CONFIG;
  wire   [2:0] RX_CLK_DIV_RATIO;
  wire   [7:0] TX_CLK_DIV_RATIO;
  wire   [7:0] RF_Wr_Data;
  wire   [3:0] RF_ADDR;
  wire   [7:0] RF_Rd_Data;

  ALU_WIDTH8 u_ALU ( .A(ALU_OP_A), .B(ALU_OP_B), .ALU_FUN(ALU_FUN), .Enable(
        ALU_EN), .CLK(ALU_CLK), .RST(SYNC_REF_RST), .ALU_OUT(ALU_OUT), 
        .OUT_VALID(ALU_OUT_VALID) );
  FIFO_TOP_DATA_WIDTH8_DEPTH8 u_FIFO ( .W_CLK(REF_CLK), .R_CLK(TX_CLK), 
        .W_RST(SYNC_REF_RST), .R_RST(SYNC_UART_RST), .W_INC(FIFO_WR_INC), 
        .R_INC(FIFO_RD_INC), .WR_DATA(FIFO_WR_DATA), .RD_DATA(FIFO_RD_DATA), 
        .EMPTY(FIFO_EMPTY), .FULL(FIFO_FULL) );
  Data_Bus_Sync_DATA_WIDTH8_Sync_Legnth2 u_BUS_SYNC ( .Unsync_bus(RX_P_DATA), 
        .bus_enable(RX_D_VALID), .clk(REF_CLK), .rst(SYNC_REF_RST), .Sync_bus(
        Sync_RX_P_DATA), .enable_pulse(Sync_RX_D_VALID) );
  RX_CLK_DIV_MUX u_RX_CLK_DIV_MUX ( .PRESCALE(CONFIG[7:2]), .RX_CLK_DIV_RATIO(
        RX_CLK_DIV_RATIO) );
  I_CLK_DIV_DIV_RATIO_WIDTH8 u_TX_CLK_DIV ( .i_ref_clk(UART_CLK), .i_rst_n(
        SYNC_UART_RST), .i_clk_en(1'b1), .i_div_ratio(TX_CLK_DIV_RATIO), 
        .o_div_clk(TX_CLK) );
  I_CLK_DIV_DIV_RATIO_WIDTH3 u_RX_CLK_DIV ( .i_ref_clk(UART_CLK), .i_rst_n(
        SYNC_UART_RST), .i_clk_en(1'b1), .i_div_ratio(RX_CLK_DIV_RATIO), 
        .o_div_clk(RX_CLK) );
  pulse_gen u_pulse_gen ( .CLK(TX_CLK), .RST(SYNC_UART_RST), .Signal(TX_BUSY), 
        .enable_pulse(FIFO_RD_INC) );
  Reg_File_WIDTH8_ADD_WIDTH4_DEPTH16 u_RegFile ( .WrData(RF_Wr_Data), 
        .Address(RF_ADDR), .WrEn(RF_WrEn), .RdEn(RF_RdEn), .clk(REF_CLK), 
        .rst(SYNC_REF_RST), .RdData(RF_Rd_Data), .Rd_D_Valid(RF_Rd_Data_Valid), 
        .REG0(ALU_OP_A), .REG1(ALU_OP_B), .REG2(CONFIG), .REG3(
        TX_CLK_DIV_RATIO) );
  RST_Sync_NUM_STAGES2_0 u_REF_RST_Sync ( .CLK(REF_CLK), .RST(RST), .sync_RST(
        SYNC_REF_RST) );
  RST_Sync_NUM_STAGES2_1 u_UART_RST_Sync ( .CLK(UART_CLK), .RST(RST), 
        .sync_RST(SYNC_UART_RST) );
  CLK_GATE u_CLK_GATE ( .CLK_EN(CLK_Gate_EN), .CLK(REF_CLK), .GATED_CLK(
        ALU_CLK) );
  Sys_Ctrl_DATA_WIDTH8 u_SysCtrl ( .CLK(REF_CLK), .RST(SYNC_REF_RST), 
        .ALU_OUT(ALU_OUT), .OUT_VALID(ALU_OUT_VALID), .RF_RdData(RF_Rd_Data), 
        .Rd_D_Valid(RF_Rd_Data_Valid), .RX_P_DATA(Sync_RX_P_DATA), 
        .RX_D_VALID(Sync_RX_D_VALID), .FIFO_FULL(FIFO_FULL), .ALU_FUN(ALU_FUN), 
        .ALU_EN(ALU_EN), .CLK_EN(CLK_Gate_EN), .RF_WrData(RF_Wr_Data), 
        .RF_ADDR(RF_ADDR), .WrEn(RF_WrEn), .RdEn(RF_RdEn), .FIFO_W_INC(
        FIFO_WR_INC), .FIFO_WR_DATA(FIFO_WR_DATA) );
  UART u_UART ( .TX_CLK(TX_CLK), .RX_CLK(RX_CLK), .RST(SYNC_UART_RST), 
        .Prescale(CONFIG[7:2]), .PAR_EN(CONFIG[0]), .PAR_TYP(CONFIG[1]), 
        .TX_P_DATA(FIFO_RD_DATA), .TX_DATA_VALID(n1), .TX_OUT(TX_OUT), 
        .TX_BUSY(TX_BUSY), .RX_IN(RX_IN), .RX_P_DATA(RX_P_DATA), 
        .RX_DATA_VALID(RX_D_VALID) );
  INVX2M U2 ( .A(FIFO_EMPTY), .Y(n1) );
endmodule

