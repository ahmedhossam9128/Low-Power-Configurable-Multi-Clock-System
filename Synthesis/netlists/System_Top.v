/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Tue Oct 13 01:38:37 2026
/////////////////////////////////////////////////////////////


module ALU_WIDTH8 ( A, B, ALU_FUN, Enable, CLK, RST, ALU_OUT, OUT_VALID );
  input [7:0] A;
  input [7:0] B;
  input [3:0] ALU_FUN;
  output [15:0] ALU_OUT;
  input Enable, CLK, RST;
  output OUT_VALID;
  wire   \C8/DATA15_0 , \C8/DATA15_1 , \C8/DATA15_2 , \C8/DATA15_3 ,
         \C8/DATA15_4 , \C8/DATA15_5 , \C8/DATA15_6 , \C8/DATA15_7 ,
         \DP_OP_30J1_122_2167/n43 , \DP_OP_30J1_122_2167/n29 ,
         \DP_OP_30J1_122_2167/n28 , \DP_OP_30J1_122_2167/n27 ,
         \DP_OP_30J1_122_2167/n26 , \DP_OP_30J1_122_2167/n25 ,
         \DP_OP_30J1_122_2167/n24 , \DP_OP_30J1_122_2167/n23 ,
         \DP_OP_30J1_122_2167/n22 , \DP_OP_30J1_122_2167/n16 ,
         \DP_OP_30J1_122_2167/n15 , \DP_OP_30J1_122_2167/n14 ,
         \DP_OP_30J1_122_2167/n13 , \DP_OP_30J1_122_2167/n12 ,
         \DP_OP_30J1_122_2167/n11 , \DP_OP_30J1_122_2167/n10 ,
         \DP_OP_30J1_122_2167/n9 , \intadd_0/A[4] , \intadd_0/A[3] ,
         \intadd_0/A[2] , \intadd_0/A[1] , \intadd_0/A[0] , \intadd_0/B[4] ,
         \intadd_0/B[3] , \intadd_0/B[2] , \intadd_0/B[1] , \intadd_0/B[0] ,
         \intadd_0/CI , \intadd_0/SUM[4] , \intadd_0/SUM[3] ,
         \intadd_0/SUM[2] , \intadd_0/SUM[1] , \intadd_0/SUM[0] ,
         \intadd_0/n5 , \intadd_0/n4 , \intadd_0/n3 , \intadd_0/n2 ,
         \intadd_0/n1 , \intadd_1/A[3] , \intadd_1/A[2] , \intadd_1/A[1] ,
         \intadd_1/A[0] , \intadd_1/B[4] , \intadd_1/B[3] , \intadd_1/B[2] ,
         \intadd_1/B[1] , \intadd_1/B[0] , \intadd_1/CI , \intadd_1/SUM[4] ,
         \intadd_1/SUM[3] , \intadd_1/SUM[2] , \intadd_1/SUM[1] ,
         \intadd_1/SUM[0] , \intadd_1/n5 , \intadd_1/n4 , \intadd_1/n3 ,
         \intadd_1/n2 , \intadd_1/n1 , \intadd_2/A[3] , \intadd_2/A[2] ,
         \intadd_2/A[1] , \intadd_2/A[0] , \intadd_2/B[3] , \intadd_2/B[2] ,
         \intadd_2/B[1] , \intadd_2/B[0] , \intadd_2/CI , \intadd_2/SUM[3] ,
         \intadd_2/SUM[2] , \intadd_2/SUM[1] , \intadd_2/SUM[0] ,
         \intadd_2/n4 , \intadd_2/n3 , \intadd_2/n2 , \intadd_2/n1 ,
         \intadd_3/A[3] , \intadd_3/A[2] , \intadd_3/A[1] , \intadd_3/A[0] ,
         \intadd_3/B[2] , \intadd_3/B[1] , \intadd_3/B[0] , \intadd_3/CI ,
         \intadd_3/SUM[2] , \intadd_3/SUM[0] , \intadd_3/n4 , \intadd_3/n3 ,
         \intadd_3/n2 , \intadd_3/n1 , \intadd_4/A[0] , \intadd_4/B[1] ,
         \intadd_4/B[0] , \intadd_4/CI , \intadd_4/SUM[0] , \intadd_4/n3 ,
         \intadd_4/n2 , \intadd_4/n1 , \intadd_5/A[2] , \intadd_5/A[0] ,
         \intadd_5/B[1] , \intadd_5/B[0] , \intadd_5/CI , \intadd_5/n3 ,
         \intadd_5/n2 , \intadd_5/n1 , \intadd_6/A[2] , \intadd_6/A[0] ,
         \intadd_6/B[2] , \intadd_6/B[1] , \intadd_6/B[0] , \intadd_6/CI ,
         \intadd_6/SUM[2] , \intadd_6/SUM[1] , \intadd_6/SUM[0] ,
         \intadd_6/n3 , \intadd_6/n2 , \intadd_6/n1 , \intadd_7/A[1] ,
         \intadd_7/A[0] , \intadd_7/B[2] , \intadd_7/B[1] , \intadd_7/B[0] ,
         \intadd_7/CI , \intadd_7/SUM[2] , \intadd_7/SUM[1] ,
         \intadd_7/SUM[0] , \intadd_7/n3 , \intadd_7/n2 , \intadd_7/n1 , n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446;
  wire   [15:0] Comb_OUT;

  DFFRQX1M OUT_VALID_reg ( .D(Enable), .CK(CLK), .RN(RST), .Q(OUT_VALID) );
  DFFRQX1M \ALU_OUT_reg[15]  ( .D(Comb_OUT[15]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[15]) );
  DFFRQX1M \ALU_OUT_reg[14]  ( .D(Comb_OUT[14]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[14]) );
  DFFRQX1M \ALU_OUT_reg[13]  ( .D(Comb_OUT[13]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[13]) );
  DFFRQX1M \ALU_OUT_reg[12]  ( .D(Comb_OUT[12]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[12]) );
  DFFRQX1M \ALU_OUT_reg[11]  ( .D(Comb_OUT[11]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[11]) );
  DFFRQX1M \ALU_OUT_reg[10]  ( .D(Comb_OUT[10]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[10]) );
  DFFRQX1M \ALU_OUT_reg[9]  ( .D(Comb_OUT[9]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[9]) );
  DFFRQX1M \ALU_OUT_reg[8]  ( .D(Comb_OUT[8]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[8]) );
  DFFRQX1M \ALU_OUT_reg[7]  ( .D(Comb_OUT[7]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[7]) );
  DFFRQX1M \ALU_OUT_reg[6]  ( .D(Comb_OUT[6]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[6]) );
  DFFRQX1M \ALU_OUT_reg[5]  ( .D(Comb_OUT[5]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[5]) );
  DFFRQX1M \ALU_OUT_reg[4]  ( .D(Comb_OUT[4]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[4]) );
  DFFRQX1M \ALU_OUT_reg[3]  ( .D(Comb_OUT[3]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[3]) );
  DFFRQX1M \ALU_OUT_reg[2]  ( .D(Comb_OUT[2]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[2]) );
  DFFRQX1M \ALU_OUT_reg[1]  ( .D(Comb_OUT[1]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[1]) );
  DFFRQX1M \ALU_OUT_reg[0]  ( .D(Comb_OUT[0]), .CK(CLK), .RN(RST), .Q(
        ALU_OUT[0]) );
  ADDFX1M \intadd_3/U3  ( .A(\intadd_3/A[2] ), .B(\intadd_3/B[2] ), .CI(
        \intadd_3/n3 ), .CO(\intadd_3/n2 ), .S(\intadd_3/SUM[2] ) );
  ADDFX1M \intadd_4/U3  ( .A(\intadd_0/SUM[0] ), .B(\intadd_4/B[1] ), .CI(
        \intadd_4/n3 ), .CO(\intadd_4/n2 ), .S(\intadd_1/A[2] ) );
  ADDFX1M \intadd_4/U2  ( .A(\intadd_0/SUM[1] ), .B(\intadd_3/SUM[2] ), .CI(
        \intadd_4/n2 ), .CO(\intadd_4/n1 ), .S(\intadd_1/B[3] ) );
  ADDFX1M \intadd_3/U2  ( .A(\intadd_3/A[3] ), .B(\intadd_0/SUM[2] ), .CI(
        \intadd_3/n2 ), .CO(\intadd_3/n1 ), .S(\intadd_1/B[4] ) );
  ADDFX1M \intadd_6/U3  ( .A(\intadd_1/SUM[0] ), .B(\intadd_6/B[1] ), .CI(
        \intadd_6/n3 ), .CO(\intadd_6/n2 ), .S(\intadd_6/SUM[1] ) );
  ADDFX1M \intadd_6/U2  ( .A(\intadd_6/A[2] ), .B(\intadd_6/B[2] ), .CI(
        \intadd_6/n2 ), .CO(\intadd_6/n1 ), .S(\intadd_6/SUM[2] ) );
  ADDFX1M \intadd_1/U4  ( .A(\intadd_1/A[2] ), .B(\intadd_1/B[2] ), .CI(
        \intadd_1/n4 ), .CO(\intadd_1/n3 ), .S(\intadd_1/SUM[2] ) );
  ADDFX1M \intadd_0/U3  ( .A(\intadd_0/A[3] ), .B(\intadd_0/B[3] ), .CI(
        \intadd_0/n3 ), .CO(\intadd_0/n2 ), .S(\intadd_0/SUM[3] ) );
  ADDFX1M \intadd_2/U3  ( .A(\intadd_2/A[2] ), .B(\intadd_2/B[2] ), .CI(
        \intadd_2/n3 ), .CO(\intadd_2/n2 ), .S(\intadd_2/SUM[2] ) );
  ADDFX1M \intadd_1/U2  ( .A(\intadd_4/n1 ), .B(\intadd_1/B[4] ), .CI(
        \intadd_1/n2 ), .CO(\intadd_1/n1 ), .S(\intadd_1/SUM[4] ) );
  ADDFX1M \DP_OP_30J1_122_2167/U21  ( .A(A[0]), .B(\DP_OP_30J1_122_2167/n43 ), 
        .CI(\DP_OP_30J1_122_2167/n29 ), .CO(\DP_OP_30J1_122_2167/n16 ), .S(
        \C8/DATA15_0 ) );
  ADDFX1M \DP_OP_30J1_122_2167/U20  ( .A(\DP_OP_30J1_122_2167/n28 ), .B(A[1]), 
        .CI(\DP_OP_30J1_122_2167/n16 ), .CO(\DP_OP_30J1_122_2167/n15 ), .S(
        \C8/DATA15_1 ) );
  ADDFX1M \intadd_0/U6  ( .A(\intadd_0/A[0] ), .B(\intadd_0/B[0] ), .CI(
        \intadd_0/CI ), .CO(\intadd_0/n5 ), .S(\intadd_0/SUM[0] ) );
  ADDFX1M \intadd_0/U5  ( .A(\intadd_0/A[1] ), .B(\intadd_0/B[1] ), .CI(
        \intadd_0/n5 ), .CO(\intadd_0/n4 ), .S(\intadd_0/SUM[1] ) );
  ADDFX1M \intadd_3/U5  ( .A(\intadd_3/A[0] ), .B(\intadd_3/B[0] ), .CI(
        \intadd_3/CI ), .CO(\intadd_3/n4 ), .S(\intadd_3/SUM[0] ) );
  ADDFX1M \intadd_3/U4  ( .A(\intadd_3/A[1] ), .B(\intadd_3/B[1] ), .CI(
        \intadd_3/n4 ), .CO(\intadd_3/n3 ), .S(\intadd_1/B[2] ) );
  ADDFX1M \intadd_4/U4  ( .A(\intadd_4/A[0] ), .B(\intadd_4/B[0] ), .CI(
        \intadd_4/CI ), .CO(\intadd_4/n3 ), .S(\intadd_4/SUM[0] ) );
  ADDFX1M \intadd_5/U4  ( .A(\intadd_5/A[0] ), .B(\intadd_5/B[0] ), .CI(
        \intadd_5/CI ), .CO(\intadd_5/n3 ), .S(\intadd_0/A[2] ) );
  ADDFX1M \intadd_0/U4  ( .A(\intadd_0/A[2] ), .B(\intadd_0/B[2] ), .CI(
        \intadd_0/n4 ), .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[2] ) );
  ADDFX1M \intadd_1/U6  ( .A(\intadd_1/A[0] ), .B(\intadd_1/B[0] ), .CI(
        \intadd_1/CI ), .CO(\intadd_1/n5 ), .S(\intadd_1/SUM[0] ) );
  ADDFX1M \intadd_6/U4  ( .A(\intadd_6/A[0] ), .B(\intadd_6/B[0] ), .CI(
        \intadd_6/CI ), .CO(\intadd_6/n3 ), .S(\intadd_6/SUM[0] ) );
  ADDFX1M \intadd_7/U4  ( .A(\intadd_7/A[0] ), .B(\intadd_7/B[0] ), .CI(
        \intadd_7/CI ), .CO(\intadd_7/n3 ), .S(\intadd_7/SUM[0] ) );
  ADDFX1M \intadd_7/U3  ( .A(\intadd_7/A[1] ), .B(\intadd_7/B[1] ), .CI(
        \intadd_7/n3 ), .CO(\intadd_7/n2 ), .S(\intadd_7/SUM[1] ) );
  ADDFX1M \intadd_7/U2  ( .A(\intadd_6/SUM[0] ), .B(\intadd_7/B[2] ), .CI(
        \intadd_7/n2 ), .CO(\intadd_7/n1 ), .S(\intadd_7/SUM[2] ) );
  ADDFX1M \intadd_1/U5  ( .A(\intadd_1/A[1] ), .B(\intadd_1/B[1] ), .CI(
        \intadd_1/n5 ), .CO(\intadd_1/n4 ), .S(\intadd_1/SUM[1] ) );
  ADDFX1M \intadd_1/U3  ( .A(\intadd_1/A[3] ), .B(\intadd_1/B[3] ), .CI(
        \intadd_1/n3 ), .CO(\intadd_1/n2 ), .S(\intadd_1/SUM[3] ) );
  ADDFX1M \intadd_2/U5  ( .A(\intadd_2/A[0] ), .B(\intadd_2/B[0] ), .CI(
        \intadd_2/CI ), .CO(\intadd_2/n4 ), .S(\intadd_2/SUM[0] ) );
  ADDFX1M \intadd_5/U3  ( .A(\intadd_2/SUM[0] ), .B(\intadd_5/B[1] ), .CI(
        \intadd_5/n3 ), .CO(\intadd_5/n2 ), .S(\intadd_0/B[3] ) );
  ADDFX1M \intadd_2/U4  ( .A(\intadd_2/A[1] ), .B(\intadd_2/B[1] ), .CI(
        \intadd_2/n4 ), .CO(\intadd_2/n3 ), .S(\intadd_2/SUM[1] ) );
  ADDFX1M \intadd_5/U2  ( .A(\intadd_5/A[2] ), .B(\intadd_2/SUM[1] ), .CI(
        \intadd_5/n2 ), .CO(\intadd_5/n1 ), .S(\intadd_0/B[4] ) );
  ADDFX1M \intadd_2/U2  ( .A(\intadd_2/A[3] ), .B(\intadd_2/B[3] ), .CI(
        \intadd_2/n2 ), .CO(\intadd_2/n1 ), .S(\intadd_2/SUM[3] ) );
  ADDFX1M \DP_OP_30J1_122_2167/U19  ( .A(\DP_OP_30J1_122_2167/n27 ), .B(A[2]), 
        .CI(\DP_OP_30J1_122_2167/n15 ), .CO(\DP_OP_30J1_122_2167/n14 ), .S(
        \C8/DATA15_2 ) );
  ADDFX1M \DP_OP_30J1_122_2167/U18  ( .A(\DP_OP_30J1_122_2167/n26 ), .B(A[3]), 
        .CI(\DP_OP_30J1_122_2167/n14 ), .CO(\DP_OP_30J1_122_2167/n13 ), .S(
        \C8/DATA15_3 ) );
  ADDFX1M \DP_OP_30J1_122_2167/U17  ( .A(\DP_OP_30J1_122_2167/n25 ), .B(A[4]), 
        .CI(\DP_OP_30J1_122_2167/n13 ), .CO(\DP_OP_30J1_122_2167/n12 ), .S(
        \C8/DATA15_4 ) );
  ADDFX1M \DP_OP_30J1_122_2167/U16  ( .A(\DP_OP_30J1_122_2167/n24 ), .B(A[5]), 
        .CI(\DP_OP_30J1_122_2167/n12 ), .CO(\DP_OP_30J1_122_2167/n11 ), .S(
        \C8/DATA15_5 ) );
  ADDFX1M \DP_OP_30J1_122_2167/U14  ( .A(\DP_OP_30J1_122_2167/n22 ), .B(A[7]), 
        .CI(\DP_OP_30J1_122_2167/n10 ), .CO(\DP_OP_30J1_122_2167/n9 ), .S(
        \C8/DATA15_7 ) );
  ADDFX1M \DP_OP_30J1_122_2167/U15  ( .A(\DP_OP_30J1_122_2167/n23 ), .B(A[6]), 
        .CI(\DP_OP_30J1_122_2167/n11 ), .CO(\DP_OP_30J1_122_2167/n10 ), .S(
        \C8/DATA15_6 ) );
  ADDFX1M \intadd_0/U2  ( .A(\intadd_0/A[4] ), .B(\intadd_0/B[4] ), .CI(
        \intadd_0/n2 ), .CO(\intadd_0/n1 ), .S(\intadd_0/SUM[4] ) );
  OAI2BB1XLM U3 ( .A0N(n161), .A1N(n175), .B0(n160), .Y(n162) );
  MX2XLM U4 ( .A(n367), .B(n366), .S0(n389), .Y(n370) );
  NOR2XLM U5 ( .A(n383), .B(n369), .Y(n378) );
  OAI2BB1XLM U6 ( .A0N(B[0]), .A1N(n113), .B0(A[4]), .Y(n103) );
  OAI21X2M U7 ( .A0(n118), .A1(n105), .B0(n103), .Y(n166) );
  NOR2XLM U8 ( .A(n301), .B(n290), .Y(n388) );
  OA21X2M U9 ( .A0(n91), .A1(n444), .B0(A[6]), .Y(n49) );
  OAI22XLM U10 ( .A0(n151), .A1(n117), .B0(n116), .B1(n345), .Y(n124) );
  OAI21XLM U11 ( .A0(n394), .A1(n393), .B0(n392), .Y(n429) );
  AOI21X1M U12 ( .A0(n387), .A1(n1), .B0(n8), .Y(n394) );
  OAI21X1M U13 ( .A0(n373), .A1(n372), .B0(n371), .Y(n387) );
  OR2X1M U14 ( .A(n386), .B(n385), .Y(n1) );
  AND2X1M U15 ( .A(n386), .B(n385), .Y(n8) );
  AND2X1M U16 ( .A(n370), .B(n369), .Y(n5) );
  AND2X1M U17 ( .A(n368), .B(n396), .Y(n6) );
  OR2X1M U18 ( .A(n370), .B(n369), .Y(n4) );
  OA21XLM U19 ( .A0(n339), .A1(n389), .B0(n338), .Y(n9) );
  MX2XLM U20 ( .A(n362), .B(n361), .S0(n389), .Y(n368) );
  NAND2X2M U21 ( .A(n309), .B(n390), .Y(n389) );
  XNOR2X1M U22 ( .A(n377), .B(n365), .Y(n367) );
  OAI21X1M U23 ( .A0(n308), .A1(n363), .B0(n307), .Y(n309) );
  XOR2X2M U24 ( .A(n288), .B(n287), .Y(n366) );
  OR2X1M U25 ( .A(n388), .B(n385), .Y(n3) );
  OAI2BB1X1M U26 ( .A0N(n302), .A1N(n301), .B0(n300), .Y(n330) );
  AND2X1M U27 ( .A(n388), .B(n385), .Y(n2) );
  XOR2X1M U28 ( .A(n298), .B(n297), .Y(n361) );
  XOR2X1M U29 ( .A(n154), .B(n153), .Y(n172) );
  XOR2X1M U30 ( .A(n167), .B(n166), .Y(n297) );
  XOR2X1M U31 ( .A(n115), .B(n114), .Y(n153) );
  INVX1M U32 ( .A(n113), .Y(n118) );
  OAI21X1M U33 ( .A0(n198), .A1(n197), .B0(n196), .Y(\intadd_2/A[3] ) );
  OAI2BB1X1M U34 ( .A0N(B[0]), .A1N(n85), .B0(A[5]), .Y(n43) );
  NOR2XLM U35 ( .A(n85), .B(n42), .Y(n119) );
  AOI21X1M U36 ( .A0(n22), .A1(n192), .B0(n19), .Y(n26) );
  NOR2X2M U37 ( .A(n121), .B(B[3]), .Y(n33) );
  AND2X1M U38 ( .A(n427), .B(ALU_FUN[0]), .Y(\DP_OP_30J1_122_2167/n43 ) );
  NOR2X2M U39 ( .A(n176), .B(B[5]), .Y(n178) );
  INVX1M U40 ( .A(B[3]), .Y(n345) );
  NAND2BXLM U41 ( .AN(B[1]), .B(A[7]), .Y(n28) );
  INVX1M U42 ( .A(B[1]), .Y(n340) );
  OAI21X2M U43 ( .A0(n41), .A1(n40), .B0(n39), .Y(n85) );
  OAI2BB1X2M U44 ( .A0N(n42), .A1N(n40), .B0(n38), .Y(n39) );
  OAI21X2M U45 ( .A0(n182), .A1(n181), .B0(n180), .Y(n301) );
  OAI21X2M U46 ( .A0(n124), .A1(n123), .B0(n122), .Y(n175) );
  NAND2XLM U47 ( .A(n175), .B(n165), .Y(n167) );
  MXI2XLM U48 ( .A(n159), .B(n158), .S0(n175), .Y(n170) );
  CLKINVX1M U49 ( .A(n155), .Y(n159) );
  NAND2BXLM U50 ( .AN(A[4]), .B(B[0]), .Y(n105) );
  NOR4XLM U51 ( .A(n444), .B(n340), .C(n275), .D(n446), .Y(n241) );
  XNOR2XLM U52 ( .A(n151), .B(B[3]), .Y(n152) );
  NOR4XLM U53 ( .A(n444), .B(n340), .C(n440), .D(n442), .Y(\intadd_1/A[0] ) );
  NAND2XLM U54 ( .A(n291), .B(n3), .Y(n308) );
  AOI21XLM U55 ( .A0(n306), .A1(n3), .B0(n2), .Y(n307) );
  CLKINVX1M U56 ( .A(\intadd_6/n1 ), .Y(n213) );
  CLKINVX1M U57 ( .A(n222), .Y(\intadd_7/B[2] ) );
  OAI21XLM U58 ( .A0(\intadd_0/SUM[3] ), .A1(\intadd_1/n1 ), .B0(\intadd_3/n1 ), .Y(n203) );
  CLKINVX1M U59 ( .A(\intadd_0/n1 ), .Y(n198) );
  OAI2BB1XLM U60 ( .A0N(B[0]), .A1N(n175), .B0(A[3]), .Y(n160) );
  OAI2BB1XLM U61 ( .A0N(B[0]), .A1N(n301), .B0(A[2]), .Y(n300) );
  NAND2XLM U62 ( .A(n301), .B(n286), .Y(n288) );
  XNOR2XLM U63 ( .A(n285), .B(B[3]), .Y(n286) );
  XNOR2XLM U64 ( .A(n360), .B(n359), .Y(n362) );
  OAI21XLM U65 ( .A0(n355), .A1(n354), .B0(n353), .Y(n360) );
  NAND2XLM U66 ( .A(n358), .B(n357), .Y(n359) );
  OAI21XLM U67 ( .A0(n166), .A1(n340), .B0(n104), .Y(n157) );
  NAND2XLM U68 ( .A(n113), .B(n112), .Y(n115) );
  NAND2BXLM U69 ( .AN(A[5]), .B(B[0]), .Y(n47) );
  NOR4XLM U70 ( .A(n444), .B(n340), .C(n240), .D(n442), .Y(\intadd_4/A[0] ) );
  NOR4XLM U71 ( .A(n444), .B(n340), .C(n446), .D(n240), .Y(\intadd_0/A[0] ) );
  NOR2XLM U72 ( .A(n345), .B(n268), .Y(\intadd_1/CI ) );
  NOR2XLM U73 ( .A(n310), .B(n396), .Y(\intadd_1/B[0] ) );
  NOR2XLM U74 ( .A(n369), .B(n268), .Y(\intadd_3/A[1] ) );
  NOR2XLM U75 ( .A(n240), .B(n345), .Y(n237) );
  NOR2XLM U76 ( .A(n310), .B(n390), .Y(n239) );
  NOR2XLM U77 ( .A(n385), .B(n268), .Y(\intadd_0/B[1] ) );
  NOR4XLM U78 ( .A(n340), .B(n275), .C(n446), .D(n443), .Y(n230) );
  CLKINVX1M U79 ( .A(A[1]), .Y(n310) );
  NOR2XLM U80 ( .A(n175), .B(n174), .Y(n289) );
  OAI21XLM U81 ( .A0(n434), .A1(n218), .B0(n219), .Y(n217) );
  NAND2XLM U82 ( .A(n119), .B(n118), .Y(n174) );
  NAND2XLM U83 ( .A(n32), .B(n91), .Y(n42) );
  NOR3XLM U84 ( .A(n435), .B(n443), .C(n436), .Y(n434) );
  NOR2XLM U85 ( .A(n435), .B(n345), .Y(n219) );
  CLKINVX1M U86 ( .A(\intadd_1/SUM[2] ), .Y(n212) );
  NAND2XLM U87 ( .A(n391), .B(n390), .Y(n392) );
  NOR4XLM U88 ( .A(n444), .B(n310), .C(n340), .D(n435), .Y(\intadd_7/A[0] ) );
  OAI21XLM U89 ( .A0(n389), .A1(n321), .B0(n320), .Y(n322) );
  OAI2BB1XLM U90 ( .A0N(n318), .A1N(n399), .B0(n317), .Y(n319) );
  AOI222XLM U91 ( .A0(n216), .A1(n215), .B0(n216), .B1(n214), .C0(n215), .C1(
        n214), .Y(\intadd_6/A[2] ) );
  CLKINVX1M U92 ( .A(\intadd_1/n1 ), .Y(n205) );
  OAI21XLM U93 ( .A0(\intadd_2/SUM[2] ), .A1(\intadd_0/n1 ), .B0(\intadd_5/n1 ), .Y(n196) );
  NOR2XLM U94 ( .A(n339), .B(n340), .Y(n326) );
  NAND2XLM U95 ( .A(n339), .B(n340), .Y(n327) );
  XOR2XLM U96 ( .A(n294), .B(n293), .Y(n335) );
  NAND2XLM U97 ( .A(n301), .B(n292), .Y(n294) );
  MX2XLM U98 ( .A(n331), .B(n330), .S0(n389), .Y(n344) );
  XNOR2XLM U99 ( .A(n330), .B(n329), .Y(n331) );
  MX2XLM U100 ( .A(n336), .B(n335), .S0(n389), .Y(n346) );
  XOR2XLM U101 ( .A(n334), .B(n355), .Y(n336) );
  NAND2XLM U102 ( .A(n332), .B(n353), .Y(n334) );
  CLKINVX1M U103 ( .A(n354), .Y(n332) );
  CLKINVX1M U104 ( .A(n333), .Y(n355) );
  NAND2XLM U105 ( .A(n366), .B(n396), .Y(n374) );
  NOR2XLM U106 ( .A(n366), .B(n396), .Y(n364) );
  NOR2XLM U107 ( .A(n361), .B(n345), .Y(n356) );
  OAI21XLM U108 ( .A0(n303), .A1(n326), .B0(n327), .Y(n333) );
  CLKINVX1M U109 ( .A(n330), .Y(n303) );
  NAND2XLM U110 ( .A(n361), .B(n345), .Y(n357) );
  NOR2XLM U111 ( .A(n335), .B(n443), .Y(n354) );
  NAND2XLM U112 ( .A(n335), .B(n443), .Y(n353) );
  AO22XLM U113 ( .A0(n295), .A1(n169), .B0(n443), .B1(n168), .Y(n285) );
  NAND2XLM U114 ( .A(n297), .B(B[2]), .Y(n169) );
  CLKINVX1M U115 ( .A(n164), .Y(n161) );
  XNOR2XLM U116 ( .A(n51), .B(n50), .Y(n52) );
  NAND2XLM U117 ( .A(n85), .B(n48), .Y(n51) );
  XNOR2XLM U118 ( .A(n47), .B(B[1]), .Y(n48) );
  NOR2XLM U119 ( .A(n435), .B(n390), .Y(n243) );
  NOR2XLM U120 ( .A(n345), .B(n442), .Y(\intadd_0/CI ) );
  NOR2XLM U121 ( .A(n310), .B(n385), .Y(\intadd_0/B[0] ) );
  NOR2XLM U122 ( .A(n344), .B(n443), .Y(n337) );
  NOR2XLM U123 ( .A(n346), .B(n345), .Y(n349) );
  NAND2XLM U124 ( .A(n344), .B(n443), .Y(n348) );
  NAND2XLM U125 ( .A(n346), .B(n345), .Y(n347) );
  OAI21XLM U126 ( .A0(n389), .A1(n444), .B0(A[1]), .Y(n338) );
  NAND2XLM U127 ( .A(n341), .B(n340), .Y(n342) );
  XOR2XLM U128 ( .A(n284), .B(n283), .Y(n383) );
  NAND2XLM U129 ( .A(n301), .B(n282), .Y(n284) );
  CLKINVX1M U130 ( .A(n363), .Y(n377) );
  CLKINVX1M U131 ( .A(n364), .Y(n376) );
  CLKINVX1M U132 ( .A(n374), .Y(n375) );
  NAND2XLM U133 ( .A(n383), .B(n369), .Y(n379) );
  CLKINVX1M U134 ( .A(n378), .Y(n380) );
  NOR2XLM U135 ( .A(n378), .B(n364), .Y(n291) );
  AOI21XLM U136 ( .A0(n305), .A1(n333), .B0(n304), .Y(n363) );
  OAI21XLM U137 ( .A0(n356), .A1(n353), .B0(n357), .Y(n304) );
  NOR2XLM U138 ( .A(n354), .B(n356), .Y(n305) );
  OAI21XLM U139 ( .A0(B[3]), .A1(n287), .B0(n171), .Y(n281) );
  OAI21XLM U140 ( .A0(n170), .A1(n345), .B0(n285), .Y(n171) );
  XOR2XLM U141 ( .A(n109), .B(n108), .Y(n155) );
  CLKINVX1M U142 ( .A(n107), .Y(n108) );
  NAND2XLM U143 ( .A(n113), .B(n106), .Y(n109) );
  OAI21XLM U144 ( .A0(B[1]), .A1(n46), .B0(n45), .Y(n111) );
  CLKINVX1M U145 ( .A(n105), .Y(n46) );
  OAI21XLM U146 ( .A0(n340), .A1(n105), .B0(n107), .Y(n45) );
  NOR2XLM U147 ( .A(n114), .B(n443), .Y(n53) );
  NOR2XLM U148 ( .A(n262), .B(n279), .Y(n60) );
  NOR2XLM U149 ( .A(n390), .B(n268), .Y(n229) );
  NOR2XLM U150 ( .A(n385), .B(n440), .Y(\intadd_5/CI ) );
  NOR2XLM U151 ( .A(n446), .B(n345), .Y(\intadd_5/A[0] ) );
  NOR2XLM U152 ( .A(n390), .B(n440), .Y(\intadd_2/CI ) );
  NOR2XLM U153 ( .A(n275), .B(n345), .Y(\intadd_2/A[0] ) );
  AOI21XLM U154 ( .A0(n352), .A1(n351), .B0(n350), .Y(n373) );
  OAI21XLM U155 ( .A0(n9), .A1(n343), .B0(n342), .Y(n351) );
  OAI21XLM U156 ( .A0(n349), .A1(n348), .B0(n347), .Y(n350) );
  NOR2XLM U157 ( .A(n337), .B(n349), .Y(n352) );
  OR2X1M U158 ( .A(n368), .B(n396), .Y(n7) );
  AOI21XLM U159 ( .A0(n4), .A1(n6), .B0(n5), .Y(n371) );
  MX2XLM U160 ( .A(n384), .B(n383), .S0(n389), .Y(n386) );
  XOR2XLM U161 ( .A(n382), .B(n381), .Y(n384) );
  NAND2XLM U162 ( .A(n380), .B(n379), .Y(n381) );
  AOI21XLM U163 ( .A0(n377), .A1(n376), .B0(n375), .Y(n382) );
  NOR2XLM U164 ( .A(n310), .B(n340), .Y(n316) );
  OAI21XLM U165 ( .A0(B[4]), .A1(n283), .B0(n173), .Y(n179) );
  OAI21XLM U166 ( .A0(n172), .A1(n396), .B0(n281), .Y(n173) );
  OAI21BXLM U167 ( .A0(n67), .A1(n133), .B0N(n60), .Y(n183) );
  NOR2XLM U168 ( .A(n345), .B(n440), .Y(\intadd_4/CI ) );
  NOR2XLM U169 ( .A(n435), .B(n396), .Y(\intadd_6/CI ) );
  AOI21XLM U170 ( .A0(n57), .A1(n56), .B0(n121), .Y(n113) );
  NAND2XLM U171 ( .A(n119), .B(n345), .Y(n56) );
  OAI21XLM U172 ( .A0(n119), .A1(n345), .B0(n55), .Y(n57) );
  AOI2BB1XLM U173 ( .A0N(n111), .A1N(n54), .B0(n53), .Y(n55) );
  NOR2XLM U174 ( .A(n396), .B(n442), .Y(n235) );
  NAND2XLM U175 ( .A(n36), .B(n35), .Y(n37) );
  NAND2XLM U176 ( .A(n49), .B(n340), .Y(n36) );
  CLKINVX1M U177 ( .A(n58), .Y(n38) );
  CLKINVX1M U178 ( .A(\intadd_7/n1 ), .Y(n214) );
  CLKINVX1M U179 ( .A(\intadd_6/SUM[1] ), .Y(n215) );
  NOR2XLM U180 ( .A(n446), .B(n385), .Y(n250) );
  CLKINVX1M U181 ( .A(n430), .Y(n321) );
  NAND2XLM U182 ( .A(n31), .B(n30), .Y(n91) );
  NAND2XLM U183 ( .A(n29), .B(B[1]), .Y(n31) );
  OR2X1M U184 ( .A(ALU_FUN[3]), .B(ALU_FUN[1]), .Y(n62) );
  NOR2XLM U185 ( .A(n310), .B(n369), .Y(\intadd_4/B[0] ) );
  NOR2XLM U186 ( .A(n435), .B(n385), .Y(\intadd_3/CI ) );
  NOR2XLM U187 ( .A(n268), .B(n396), .Y(\intadd_1/B[1] ) );
  NOR2XLM U188 ( .A(n369), .B(n442), .Y(n232) );
  OAI31XLM U189 ( .A0(n230), .A1(n229), .A2(n228), .B0(n227), .Y(
        \intadd_0/B[2] ) );
  OAI21XLM U190 ( .A0(n230), .A1(n228), .B0(n229), .Y(n227) );
  AOI2B1XLM U191 ( .A1N(n228), .A0(n229), .B0(n230), .Y(n208) );
  NOR2XLM U192 ( .A(n390), .B(n442), .Y(n199) );
  NOR2XLM U193 ( .A(n446), .B(n369), .Y(n200) );
  NOR2XLM U194 ( .A(n385), .B(n240), .Y(\intadd_2/B[1] ) );
  CLKINVX1M U195 ( .A(A[6]), .Y(n446) );
  CLKINVX1M U196 ( .A(n183), .Y(n414) );
  CLKINVX1M U197 ( .A(n404), .Y(n393) );
  OAI211XLM U198 ( .A0(n424), .A1(n423), .B0(n422), .C0(n421), .Y(n425) );
  NAND3XLM U199 ( .A(n410), .B(n409), .C(n408), .Y(n422) );
  AOI211XLM U200 ( .A0(n280), .A1(n404), .B0(n279), .C0(n278), .Y(n426) );
  NAND3XLM U201 ( .A(n186), .B(n185), .C(n184), .Y(n187) );
  AOI22XLM U202 ( .A0(A[1]), .A1(n311), .B0(n318), .B1(n397), .Y(n186) );
  OAI31XLM U203 ( .A0(n434), .A1(n219), .A2(n218), .B0(n217), .Y(
        \intadd_7/B[1] ) );
  AO21XLM U204 ( .A0(n124), .A1(n174), .B0(n121), .Y(n122) );
  NAND3XLM U205 ( .A(n127), .B(n126), .C(n125), .Y(n128) );
  NAND2XLM U206 ( .A(n34), .B(n33), .Y(n41) );
  OAI21XLM U207 ( .A0(n49), .A1(n340), .B0(n37), .Y(n40) );
  AOI2B1XLM U208 ( .A1N(n218), .A0(n219), .B0(n434), .Y(n221) );
  NOR2XLM U209 ( .A(n62), .B(ALU_FUN[2]), .Y(n427) );
  AOI22XLM U210 ( .A0(\intadd_1/SUM[2] ), .A1(\intadd_6/n1 ), .B0(n213), .B1(
        n212), .Y(n138) );
  NAND4XLM U211 ( .A(n136), .B(n135), .C(n134), .D(n133), .Y(n137) );
  NAND2XLM U212 ( .A(n210), .B(n138), .Y(n135) );
  NOR3XLM U213 ( .A(n59), .B(n262), .C(n67), .Y(n430) );
  OAI21XLM U214 ( .A0(n213), .A1(n212), .B0(n211), .Y(\intadd_1/A[3] ) );
  OAI21XLM U215 ( .A0(\intadd_1/SUM[2] ), .A1(\intadd_6/n1 ), .B0(n210), .Y(
        n211) );
  CLKINVX1M U216 ( .A(\DP_OP_30J1_122_2167/n43 ), .Y(n15) );
  CLKINVX1M U217 ( .A(n90), .Y(n192) );
  CLKINVX1M U218 ( .A(\intadd_0/SUM[3] ), .Y(n204) );
  NOR2XLM U219 ( .A(n275), .B(n390), .Y(n144) );
  NOR2XLM U220 ( .A(\DP_OP_30J1_122_2167/n9 ), .B(n15), .Y(n22) );
  NOR2XLM U221 ( .A(n414), .B(n194), .Y(n19) );
  CLKINVX1M U222 ( .A(n432), .Y(n188) );
  OAI2BB2XLM U223 ( .B0(n433), .B1(n432), .A0N(Enable), .A1N(n431), .Y(
        Comb_OUT[0]) );
  OAI2BB1XLM U224 ( .A0N(n430), .A1N(n429), .B0(n428), .Y(n431) );
  OAI31XLM U225 ( .A0(\intadd_7/A[0] ), .A1(n325), .A2(n432), .B0(n324), .Y(
        Comb_OUT[1]) );
  OAI31XLM U226 ( .A0(n323), .A1(n426), .A2(n322), .B0(Enable), .Y(n324) );
  AOI211XLM U227 ( .A0(n403), .A1(n263), .B0(n406), .C0(n262), .Y(n323) );
  OAI2BB2XLM U228 ( .B0(n190), .B1(n189), .A0N(n188), .A1N(\intadd_7/SUM[0] ), 
        .Y(n191) );
  OAI21XLM U229 ( .A0(n132), .A1(n194), .B0(n131), .Y(Comb_OUT[3]) );
  AOI21XLM U230 ( .A0(\C8/DATA15_3 ), .A1(n192), .B0(n130), .Y(n131) );
  AOI21XLM U231 ( .A0(n175), .A1(n430), .B0(n128), .Y(n132) );
  OAI2BB2XLM U232 ( .B0(n190), .B1(n129), .A0N(\intadd_7/SUM[1] ), .A1N(n188), 
        .Y(n130) );
  OAI22XLM U233 ( .A0(n150), .A1(n194), .B0(n190), .B1(n149), .Y(Comb_OUT[7])
         );
  AOI2BB1XLM U234 ( .A0N(n138), .A1N(n210), .B0(n137), .Y(n148) );
  OAI2BB1XLM U235 ( .A0N(n192), .A1N(n17), .B0(n16), .Y(n18) );
  XNOR2XLM U236 ( .A(\DP_OP_30J1_122_2167/n9 ), .B(n15), .Y(n17) );
  OAI2BB1XLM U237 ( .A0N(n188), .A1N(\intadd_1/SUM[4] ), .B0(n26), .Y(
        Comb_OUT[9]) );
  OAI2BB1XLM U238 ( .A0N(n188), .A1N(n12), .B0(n26), .Y(Comb_OUT[10]) );
  AOI22XLM U239 ( .A0(\intadd_0/SUM[3] ), .A1(\intadd_1/n1 ), .B0(n205), .B1(
        n204), .Y(n11) );
  OAI2BB1XLM U240 ( .A0N(n188), .A1N(\intadd_0/SUM[4] ), .B0(n26), .Y(
        Comb_OUT[11]) );
  OAI2BB1XLM U241 ( .A0N(n188), .A1N(n14), .B0(n26), .Y(Comb_OUT[12]) );
  AOI22XLM U242 ( .A0(\intadd_2/SUM[2] ), .A1(\intadd_0/n1 ), .B0(n198), .B1(
        n197), .Y(n13) );
  OAI2BB1XLM U243 ( .A0N(n188), .A1N(\intadd_2/SUM[3] ), .B0(n26), .Y(
        Comb_OUT[13]) );
  OAI2BB1XLM U244 ( .A0N(n188), .A1N(n27), .B0(n26), .Y(Comb_OUT[14]) );
  OAI21XLM U245 ( .A0(n144), .A1(n25), .B0(n24), .Y(n27) );
  AOI22XLM U246 ( .A0(n23), .A1(\intadd_2/n1 ), .B0(n144), .B1(n25), .Y(n24)
         );
  NOR2XLM U247 ( .A(n23), .B(\intadd_2/n1 ), .Y(n25) );
  OAI2B11XLM U248 ( .A1N(n22), .A0(n90), .B0(n21), .C0(n20), .Y(Comb_OUT[15])
         );
  OAI211XLM U249 ( .A0(\intadd_2/n1 ), .A1(n23), .B0(n188), .C0(n144), .Y(n21)
         );
  CLKINVX1M U250 ( .A(n356), .Y(n358) );
  NAND2XLM U251 ( .A(n376), .B(n374), .Y(n365) );
  XOR2XLM U252 ( .A(n281), .B(n396), .Y(n282) );
  NAND2XLM U253 ( .A(n301), .B(n296), .Y(n298) );
  NAND2XLM U254 ( .A(n175), .B(n152), .Y(n154) );
  NAND4XLM U255 ( .A(n404), .B(n403), .C(n402), .D(n401), .Y(n405) );
  OAI21XLM U256 ( .A0(n378), .A1(n374), .B0(n379), .Y(n306) );
  NAND2XLM U257 ( .A(n7), .B(n4), .Y(n372) );
  CLKINVX1M U258 ( .A(n279), .Y(n68) );
  NOR2XLM U259 ( .A(n278), .B(n67), .Y(n80) );
  CLKINVX1M U260 ( .A(n149), .Y(n142) );
  NOR2XLM U261 ( .A(n369), .B(n440), .Y(n238) );
  AOI211XLM U262 ( .A0(n420), .A1(n419), .B0(n418), .C0(n417), .Y(n421) );
  NAND2XLM U263 ( .A(n267), .B(n254), .Y(n397) );
  OAI21XLM U264 ( .A0(B[2]), .A1(n157), .B0(n110), .Y(n151) );
  CLKINVX1M U265 ( .A(n419), .Y(n79) );
  NOR2XLM U266 ( .A(n435), .B(n369), .Y(n224) );
  OAI21XLM U267 ( .A0(n62), .A1(n278), .B0(n61), .Y(n419) );
  CLKINVX1M U268 ( .A(n209), .Y(\intadd_5/B[1] ) );
  AOI21XLM U269 ( .A0(\C8/DATA15_1 ), .A1(n427), .B0(n319), .Y(n320) );
  AOI22XLM U270 ( .A0(\intadd_6/A[0] ), .A1(n419), .B0(n189), .B1(n183), .Y(
        n184) );
  NAND2XLM U271 ( .A(n120), .B(n178), .Y(n123) );
  NOR2XLM U272 ( .A(n278), .B(n406), .Y(n311) );
  CLKINVX1M U273 ( .A(n202), .Y(\intadd_5/A[2] ) );
  AOI211XLM U274 ( .A0(n427), .A1(\C8/DATA15_0 ), .B0(n426), .C0(n425), .Y(
        n428) );
  OAI22XLM U275 ( .A0(n100), .A1(n194), .B0(n190), .B1(n99), .Y(n101) );
  OAI21XLM U276 ( .A0(n205), .A1(n204), .B0(n203), .Y(\intadd_0/A[4] ) );
  AOI21XLM U277 ( .A0(\C8/DATA15_2 ), .A1(n192), .B0(n191), .Y(n193) );
  AOI211XLM U278 ( .A0(n427), .A1(\C8/DATA15_7 ), .B0(n148), .C0(n147), .Y(
        n150) );
  OAI21XLM U279 ( .A0(n195), .A1(n194), .B0(n193), .Y(Comb_OUT[2]) );
  CLKINVX1M U280 ( .A(A[5]), .Y(n240) );
  CLKINVX2M U281 ( .A(B[4]), .Y(n396) );
  NOR2XLM U282 ( .A(n240), .B(n396), .Y(\intadd_5/B[0] ) );
  CLKINVX1M U283 ( .A(A[3]), .Y(n440) );
  NOR2XLM U284 ( .A(n440), .B(n396), .Y(\intadd_3/B[1] ) );
  NOR2XLM U285 ( .A(n446), .B(n396), .Y(\intadd_2/B[0] ) );
  CLKINVX1M U286 ( .A(A[2]), .Y(n268) );
  OR2X1M U287 ( .A(ALU_FUN[0]), .B(ALU_FUN[2]), .Y(n64) );
  CLKINVX1M U288 ( .A(n64), .Y(n10) );
  NAND2BXLM U289 ( .AN(ALU_FUN[3]), .B(ALU_FUN[1]), .Y(n67) );
  CLKINVX1M U290 ( .A(n67), .Y(n136) );
  NAND3XLM U291 ( .A(n10), .B(n136), .C(Enable), .Y(n432) );
  NAND2XLM U292 ( .A(n427), .B(Enable), .Y(n90) );
  CLKINVX1M U293 ( .A(ALU_FUN[2]), .Y(n133) );
  NAND2BXLM U294 ( .AN(ALU_FUN[2]), .B(ALU_FUN[0]), .Y(n262) );
  NAND2BXLM U295 ( .AN(ALU_FUN[1]), .B(ALU_FUN[3]), .Y(n279) );
  CLKINVX1M U296 ( .A(Enable), .Y(n194) );
  AOI2BB2XLM U297 ( .B0(\intadd_3/n1 ), .B1(n11), .A0N(\intadd_3/n1 ), .A1N(
        n11), .Y(n12) );
  CLKINVX1M U298 ( .A(\intadd_2/SUM[2] ), .Y(n197) );
  AOI2BB2XLM U299 ( .B0(\intadd_5/n1 ), .B1(n13), .A0N(\intadd_5/n1 ), .A1N(
        n13), .Y(n14) );
  NAND2BXLM U300 ( .AN(ALU_FUN[0]), .B(ALU_FUN[2]), .Y(n278) );
  NAND2XLM U301 ( .A(ALU_FUN[3]), .B(ALU_FUN[1]), .Y(n406) );
  AOI31XLM U302 ( .A0(A[7]), .A1(Enable), .A2(n311), .B0(n19), .Y(n16) );
  AO21XLM U303 ( .A0(\intadd_1/SUM[3] ), .A1(n188), .B0(n18), .Y(Comb_OUT[8])
         );
  CLKINVX1M U304 ( .A(A[7]), .Y(n275) );
  CLKINVX1M U305 ( .A(B[5]), .Y(n369) );
  NOR2XLM U306 ( .A(n275), .B(n369), .Y(n251) );
  CLKINVX1M U307 ( .A(B[6]), .Y(n385) );
  CLKINVX1M U308 ( .A(B[7]), .Y(n390) );
  NOR2XLM U309 ( .A(n390), .B(n240), .Y(n249) );
  NOR2XLM U310 ( .A(n390), .B(n446), .Y(n247) );
  NOR2XLM U311 ( .A(n275), .B(n385), .Y(n246) );
  CLKINVX1M U312 ( .A(n19), .Y(n20) );
  OR2X2M U313 ( .A(B[7]), .B(B[6]), .Y(n176) );
  NAND2X2M U314 ( .A(n178), .B(n396), .Y(n121) );
  INVX2M U315 ( .A(B[2]), .Y(n443) );
  NAND2X2M U316 ( .A(n33), .B(n443), .Y(n58) );
  NOR2X2M U317 ( .A(n58), .B(n28), .Y(n146) );
  OR2X1M U318 ( .A(n275), .B(n146), .Y(n29) );
  CLKINVX1M U319 ( .A(n29), .Y(n32) );
  AOI21XLM U320 ( .A0(B[0]), .A1(n446), .B0(n58), .Y(n30) );
  CLKINVX1M U321 ( .A(n42), .Y(n34) );
  CLKINVX1M U322 ( .A(B[0]), .Y(n444) );
  CLKINVX1M U323 ( .A(n47), .Y(n35) );
  CLKINVX1M U324 ( .A(n85), .Y(n44) );
  OAI21X2M U325 ( .A0(n44), .A1(n47), .B0(n43), .Y(n107) );
  CLKINVX1M U326 ( .A(n49), .Y(n50) );
  NOR2XLM U327 ( .A(n52), .B(B[2]), .Y(n54) );
  CLKINVX1M U328 ( .A(n52), .Y(n114) );
  NOR3XLM U329 ( .A(n58), .B(B[0]), .C(B[1]), .Y(n59) );
  CLKINVX1M U330 ( .A(n311), .Y(n93) );
  CLKINVX1M U331 ( .A(A[4]), .Y(n442) );
  CLKINVX1M U332 ( .A(n60), .Y(n61) );
  NOR2XLM U333 ( .A(B[4]), .B(A[4]), .Y(n63) );
  AOI22XLM U334 ( .A0(n235), .A1(n419), .B0(n63), .B1(n183), .Y(n66) );
  NAND2XLM U335 ( .A(B[4]), .B(n442), .Y(n257) );
  CLKINVX1M U336 ( .A(n257), .Y(n271) );
  NOR2XLM U337 ( .A(B[4]), .B(n442), .Y(n407) );
  NOR2XLM U338 ( .A(n64), .B(n279), .Y(n318) );
  OAI21XLM U339 ( .A0(n271), .A1(n407), .B0(n318), .Y(n65) );
  OAI211XLM U340 ( .A0(n93), .A1(n440), .B0(n66), .C0(n65), .Y(n71) );
  CLKINVX1M U341 ( .A(n80), .Y(n416) );
  AND3XLM U342 ( .A(n68), .B(ALU_FUN[0]), .C(ALU_FUN[2]), .Y(n415) );
  CLKINVX1M U343 ( .A(n415), .Y(n69) );
  OAI22XLM U344 ( .A0(n235), .A1(n416), .B0(n240), .B1(n69), .Y(n70) );
  AOI211XLM U345 ( .A0(n113), .A1(n430), .B0(n71), .C0(n70), .Y(n75) );
  NOR2XLM U346 ( .A(ALU_FUN[1]), .B(ALU_FUN[3]), .Y(n72) );
  NAND3XLM U347 ( .A(ALU_FUN[2]), .B(ALU_FUN[0]), .C(n72), .Y(n423) );
  NOR2XLM U348 ( .A(n194), .B(n423), .Y(n98) );
  OAI21XLM U349 ( .A0(B[4]), .A1(A[4]), .B0(n98), .Y(n74) );
  NAND2XLM U350 ( .A(\intadd_7/SUM[2] ), .B(n188), .Y(n73) );
  OAI211XLM U351 ( .A0(n75), .A1(n194), .B0(n74), .C0(n73), .Y(n76) );
  AO21XLM U352 ( .A0(n192), .A1(\C8/DATA15_4 ), .B0(n76), .Y(Comb_OUT[4]) );
  CLKINVX1M U353 ( .A(A[0]), .Y(n435) );
  NOR2XLM U354 ( .A(n443), .B(n268), .Y(\intadd_6/A[0] ) );
  NAND2XLM U355 ( .A(A[1]), .B(B[2]), .Y(n218) );
  CLKINVX1M U356 ( .A(n316), .Y(n436) );
  NAND2XLM U357 ( .A(A[1]), .B(B[3]), .Y(n220) );
  NAND4XLM U358 ( .A(B[0]), .B(B[1]), .C(A[3]), .D(A[2]), .Y(n437) );
  AOI22XLM U359 ( .A0(\intadd_6/SUM[1] ), .A1(n214), .B0(\intadd_7/n1 ), .B1(
        n215), .Y(n78) );
  AOI21XLM U360 ( .A0(n216), .A1(n78), .B0(n432), .Y(n77) );
  OAI21XLM U361 ( .A0(n216), .A1(n78), .B0(n77), .Y(n89) );
  NAND2XLM U362 ( .A(n369), .B(n240), .Y(n87) );
  NAND2XLM U363 ( .A(B[5]), .B(A[5]), .Y(n206) );
  OAI22XLM U364 ( .A0(n79), .A1(n206), .B0(n414), .B1(n87), .Y(n84) );
  AOI22XLM U365 ( .A0(A[6]), .A1(n415), .B0(n80), .B1(n206), .Y(n82) );
  NAND2XLM U366 ( .A(A[5]), .B(n369), .Y(n402) );
  NAND2XLM U367 ( .A(B[5]), .B(n240), .Y(n395) );
  CLKINVX1M U368 ( .A(n318), .Y(n412) );
  AO21XLM U369 ( .A0(n402), .A1(n395), .B0(n412), .Y(n81) );
  OAI211XLM U370 ( .A0(n93), .A1(n442), .B0(n82), .C0(n81), .Y(n83) );
  AOI211XLM U371 ( .A0(n85), .A1(n430), .B0(n84), .C0(n83), .Y(n86) );
  AOI2BB2XLM U372 ( .B0(n98), .B1(n87), .A0N(n194), .A1N(n86), .Y(n88) );
  OAI2B11XLM U373 ( .A1N(\C8/DATA15_5 ), .A0(n90), .B0(n89), .C0(n88), .Y(
        Comb_OUT[5]) );
  NOR2XLM U374 ( .A(B[6]), .B(n446), .Y(n261) );
  NOR2XLM U375 ( .A(A[6]), .B(n385), .Y(n276) );
  NOR2XLM U376 ( .A(n261), .B(n276), .Y(n409) );
  NOR2XLM U377 ( .A(n321), .B(n91), .Y(n95) );
  NOR2XLM U378 ( .A(A[6]), .B(B[6]), .Y(n99) );
  AOI22XLM U379 ( .A0(n250), .A1(n419), .B0(n99), .B1(n183), .Y(n92) );
  OAI21XLM U380 ( .A0(n93), .A1(n240), .B0(n92), .Y(n94) );
  AOI211XLM U381 ( .A0(n415), .A1(A[7]), .B0(n95), .C0(n94), .Y(n96) );
  OAI21XLM U382 ( .A0(n250), .A1(n416), .B0(n96), .Y(n97) );
  AOI2B1XLM U383 ( .A1N(n409), .A0(n318), .B0(n97), .Y(n100) );
  CLKINVX1M U384 ( .A(n98), .Y(n190) );
  AOI21XLM U385 ( .A0(\C8/DATA15_6 ), .A1(n192), .B0(n101), .Y(n102) );
  OAI2BB1XLM U386 ( .A0N(n188), .A1N(\intadd_6/SUM[2] ), .B0(n102), .Y(
        Comb_OUT[6]) );
  NAND2BXLM U387 ( .AN(A[3]), .B(B[0]), .Y(n164) );
  OAI2BB1X2M U388 ( .A0N(n340), .A1N(n166), .B0(n161), .Y(n104) );
  XNOR2XLM U389 ( .A(n105), .B(B[1]), .Y(n106) );
  OAI2BB1X2M U390 ( .A0N(B[2]), .A1N(n157), .B0(n155), .Y(n110) );
  XOR2XLM U391 ( .A(n111), .B(n443), .Y(n112) );
  NOR2XLM U392 ( .A(n153), .B(B[3]), .Y(n117) );
  CLKINVX1M U393 ( .A(n153), .Y(n116) );
  CLKINVX1M U394 ( .A(n174), .Y(n120) );
  NOR2XLM U395 ( .A(B[3]), .B(n440), .Y(n270) );
  NOR2XLM U396 ( .A(A[3]), .B(n345), .Y(n256) );
  OR2X1M U397 ( .A(n270), .B(n256), .Y(n398) );
  AOI22XLM U398 ( .A0(A[2]), .A1(n311), .B0(n318), .B1(n398), .Y(n127) );
  AOI2BB2XLM U399 ( .B0(A[4]), .B1(n415), .A0N(\intadd_4/CI ), .A1N(n416), .Y(
        n126) );
  NOR2XLM U400 ( .A(B[3]), .B(A[3]), .Y(n129) );
  AOI22XLM U401 ( .A0(\intadd_4/CI ), .A1(n419), .B0(n129), .B1(n183), .Y(n125) );
  CLKINVX1M U402 ( .A(ALU_FUN[0]), .Y(n134) );
  NOR2XLM U403 ( .A(A[7]), .B(B[7]), .Y(n149) );
  AOI2BB2XLM U404 ( .B0(A[6]), .B1(n311), .A0N(n416), .A1N(n144), .Y(n141) );
  NAND2XLM U405 ( .A(A[7]), .B(n390), .Y(n403) );
  NAND2BXLM U406 ( .AN(A[7]), .B(B[7]), .Y(n404) );
  NAND2XLM U407 ( .A(n403), .B(n404), .Y(n139) );
  NAND2XLM U408 ( .A(n318), .B(n139), .Y(n140) );
  OAI211XLM U409 ( .A0(n414), .A1(n142), .B0(n141), .C0(n140), .Y(n143) );
  AOI21XLM U410 ( .A0(n144), .A1(n419), .B0(n143), .Y(n145) );
  OAI2BB1XLM U411 ( .A0N(n146), .A1N(n430), .B0(n145), .Y(n147) );
  CLKINVX1M U412 ( .A(n172), .Y(n283) );
  XOR2XLM U413 ( .A(n159), .B(B[2]), .Y(n156) );
  XOR2XLM U414 ( .A(n157), .B(n156), .Y(n158) );
  CLKINVX1M U415 ( .A(n170), .Y(n287) );
  CLKINVX1M U416 ( .A(n162), .Y(n293) );
  NAND2BXLM U417 ( .AN(A[2]), .B(B[0]), .Y(n299) );
  OAI21X1M U418 ( .A0(n162), .A1(n340), .B0(n299), .Y(n163) );
  OAI21X1M U419 ( .A0(B[1]), .A1(n293), .B0(n163), .Y(n295) );
  XNOR2XLM U420 ( .A(n164), .B(B[1]), .Y(n165) );
  CLKINVX1M U421 ( .A(n297), .Y(n168) );
  CLKINVX1M U422 ( .A(n179), .Y(n182) );
  CLKINVX1M U423 ( .A(n176), .Y(n177) );
  NAND2XLM U424 ( .A(n289), .B(n177), .Y(n181) );
  OAI21X1M U425 ( .A0(n179), .A1(n289), .B0(n178), .Y(n180) );
  NAND2XLM U426 ( .A(A[2]), .B(n443), .Y(n267) );
  NAND2XLM U427 ( .A(B[2]), .B(n268), .Y(n254) );
  AOI2BB2XLM U428 ( .B0(A[3]), .B1(n415), .A0N(\intadd_6/A[0] ), .A1N(n416), 
        .Y(n185) );
  NOR2XLM U429 ( .A(B[2]), .B(A[2]), .Y(n189) );
  AOI21XLM U430 ( .A0(n301), .A1(n430), .B0(n187), .Y(n195) );
  XOR2XLM U431 ( .A(\DP_OP_30J1_122_2167/n43 ), .B(B[2]), .Y(
        \DP_OP_30J1_122_2167/n27 ) );
  XOR2XLM U432 ( .A(\DP_OP_30J1_122_2167/n43 ), .B(B[3]), .Y(
        \DP_OP_30J1_122_2167/n26 ) );
  NOR2XLM U433 ( .A(n275), .B(n396), .Y(n201) );
  ADDFX1M U434 ( .A(n201), .B(n200), .CI(n199), .CO(\intadd_2/A[2] ), .S(
        \intadd_2/A[1] ) );
  NAND2XLM U435 ( .A(A[7]), .B(B[2]), .Y(n228) );
  NAND2XLM U436 ( .A(B[6]), .B(A[4]), .Y(n207) );
  ADDFX1M U437 ( .A(n208), .B(n207), .CI(n206), .CO(n202), .S(n209) );
  NOR2XLM U438 ( .A(n444), .B(n268), .Y(\intadd_7/CI ) );
  ADDFX1M U439 ( .A(n221), .B(n220), .CI(n437), .CO(n216), .S(n222) );
  NOR2XLM U440 ( .A(n440), .B(n443), .Y(n226) );
  NAND2XLM U441 ( .A(B[1]), .B(A[4]), .Y(n223) );
  AOI221XLM U442 ( .A0(n240), .A1(n223), .B0(n444), .B1(n223), .C0(
        \intadd_4/A[0] ), .Y(n225) );
  ADDFX1M U443 ( .A(n226), .B(n225), .CI(n224), .CO(\intadd_1/A[1] ), .S(
        \intadd_6/B[1] ) );
  NAND2XLM U444 ( .A(A[6]), .B(B[2]), .Y(n231) );
  AOI221XLM U445 ( .A0(n275), .A1(n231), .B0(n340), .B1(n231), .C0(n230), .Y(
        n236) );
  ADDFX1M U446 ( .A(n234), .B(n233), .CI(n232), .CO(\intadd_0/A[3] ), .S(
        \intadd_3/A[3] ) );
  ADDFX1M U447 ( .A(n237), .B(n236), .CI(n235), .CO(n234), .S(\intadd_3/B[2] )
         );
  ADDFX1M U448 ( .A(n241), .B(n239), .CI(n238), .CO(n233), .S(\intadd_3/A[2] )
         );
  NOR2XLM U449 ( .A(n240), .B(n443), .Y(n245) );
  NAND2XLM U450 ( .A(B[1]), .B(A[6]), .Y(n242) );
  AOI221XLM U451 ( .A0(n275), .A1(n242), .B0(n444), .B1(n242), .C0(n241), .Y(
        n244) );
  ADDFX1M U452 ( .A(n245), .B(n244), .CI(n243), .CO(\intadd_0/A[1] ), .S(
        \intadd_4/B[1] ) );
  ADDFX1M U453 ( .A(n248), .B(n247), .CI(n246), .CO(n23), .S(\intadd_2/B[3] )
         );
  ADDFX1M U454 ( .A(n251), .B(n250), .CI(n249), .CO(n248), .S(\intadd_2/B[2] )
         );
  AOI22XLM U455 ( .A0(B[0]), .A1(A[1]), .B0(B[1]), .B1(A[0]), .Y(n325) );
  NAND2XLM U456 ( .A(n310), .B(B[1]), .Y(n264) );
  NOR2XLM U457 ( .A(n310), .B(B[1]), .Y(n265) );
  AOI31XLM U458 ( .A0(n444), .A1(n264), .A2(A[0]), .B0(n265), .Y(n252) );
  CLKINVX1M U459 ( .A(n252), .Y(n253) );
  AOI22XLM U460 ( .A0(A[2]), .A1(n443), .B0(n254), .B1(n253), .Y(n255) );
  OAI22XLM U461 ( .A0(n256), .A1(n255), .B0(B[3]), .B1(n440), .Y(n258) );
  AOI32XLM U462 ( .A0(n258), .A1(n395), .A2(n257), .B0(n407), .B1(n395), .Y(
        n259) );
  AOI22XLM U463 ( .A0(n259), .A1(n402), .B0(B[6]), .B1(n446), .Y(n260) );
  OAI22XLM U464 ( .A0(n261), .A1(n260), .B0(A[7]), .B1(n390), .Y(n263) );
  CLKINVX1M U465 ( .A(n407), .Y(n273) );
  OAI31XLM U466 ( .A0(A[0]), .A1(n265), .A2(n444), .B0(n264), .Y(n266) );
  AOI22XLM U467 ( .A0(B[2]), .A1(n268), .B0(n267), .B1(n266), .Y(n269) );
  OAI22XLM U468 ( .A0(A[3]), .A1(n345), .B0(n270), .B1(n269), .Y(n272) );
  AOI32XLM U469 ( .A0(n273), .A1(n402), .A2(n272), .B0(n271), .B1(n402), .Y(
        n274) );
  AOI22XLM U470 ( .A0(A[6]), .A1(n385), .B0(n274), .B1(n395), .Y(n277) );
  OAI22XLM U471 ( .A0(n277), .A1(n276), .B0(B[7]), .B1(n275), .Y(n280) );
  CLKINVX1M U472 ( .A(n289), .Y(n290) );
  XNOR2XLM U473 ( .A(n299), .B(B[1]), .Y(n292) );
  XOR2XLM U474 ( .A(n295), .B(n443), .Y(n296) );
  CLKINVX1M U475 ( .A(n299), .Y(n302) );
  NAND2XLM U476 ( .A(n310), .B(B[0]), .Y(n339) );
  AOI22XLM U477 ( .A0(A[1]), .A1(B[1]), .B0(n340), .B1(n310), .Y(n399) );
  AOI22XLM U478 ( .A0(n415), .A1(A[2]), .B0(A[0]), .B1(n311), .Y(n312) );
  OAI31XLM U479 ( .A0(n414), .A1(B[1]), .A2(A[1]), .B0(n312), .Y(n315) );
  NOR2XLM U480 ( .A(A[1]), .B(B[1]), .Y(n313) );
  OAI22XLM U481 ( .A0(n316), .A1(n416), .B0(n313), .B1(n423), .Y(n314) );
  AOI211XLM U482 ( .A0(n316), .A1(n419), .B0(n315), .C0(n314), .Y(n317) );
  XOR2XLM U483 ( .A(\DP_OP_30J1_122_2167/n43 ), .B(B[0]), .Y(
        \DP_OP_30J1_122_2167/n29 ) );
  XOR2XLM U484 ( .A(\DP_OP_30J1_122_2167/n43 ), .B(B[1]), .Y(
        \DP_OP_30J1_122_2167/n28 ) );
  XOR2XLM U485 ( .A(\DP_OP_30J1_122_2167/n43 ), .B(B[5]), .Y(
        \DP_OP_30J1_122_2167/n24 ) );
  NAND2XLM U486 ( .A(A[0]), .B(B[0]), .Y(n433) );
  CLKINVX1M U487 ( .A(n326), .Y(n328) );
  NAND2XLM U488 ( .A(n328), .B(n327), .Y(n329) );
  NAND2XLM U489 ( .A(n435), .B(B[0]), .Y(n341) );
  NOR2XLM U490 ( .A(n341), .B(n340), .Y(n343) );
  AND2X1M U491 ( .A(n389), .B(n388), .Y(n391) );
  OR2X1M U492 ( .A(A[0]), .B(B[0]), .Y(n413) );
  CLKINVX1M U493 ( .A(n413), .Y(n424) );
  OAI21XLM U494 ( .A0(A[4]), .A1(n396), .B0(n395), .Y(n400) );
  NOR4XLM U495 ( .A(n400), .B(n399), .C(n398), .D(n397), .Y(n410) );
  NAND2XLM U496 ( .A(n413), .B(n433), .Y(n411) );
  NOR2XLM U497 ( .A(ALU_FUN[2]), .B(ALU_FUN[0]), .Y(n401) );
  NOR4BXLM U498 ( .AN(n411), .B(n407), .C(n406), .D(n405), .Y(n408) );
  CLKINVX1M U499 ( .A(n433), .Y(n420) );
  OAI22XLM U500 ( .A0(n414), .A1(n413), .B0(n412), .B1(n411), .Y(n418) );
  OAI2BB2XLM U501 ( .B0(n416), .B1(n420), .A0N(A[1]), .A1N(n415), .Y(n417) );
  XOR2XLM U502 ( .A(\DP_OP_30J1_122_2167/n43 ), .B(B[6]), .Y(
        \DP_OP_30J1_122_2167/n23 ) );
  XOR2XLM U503 ( .A(\DP_OP_30J1_122_2167/n43 ), .B(B[7]), .Y(
        \DP_OP_30J1_122_2167/n22 ) );
  XOR2XLM U504 ( .A(\DP_OP_30J1_122_2167/n43 ), .B(B[4]), .Y(
        \DP_OP_30J1_122_2167/n25 ) );
  AOI221XLM U505 ( .A0(n443), .A1(n436), .B0(n435), .B1(n436), .C0(n434), .Y(
        \intadd_7/B[0] ) );
  NAND2XLM U506 ( .A(B[1]), .B(A[2]), .Y(n439) );
  CLKINVX1M U507 ( .A(n437), .Y(n438) );
  AOI221XLM U508 ( .A0(n440), .A1(n439), .B0(n444), .B1(n439), .C0(n438), .Y(
        \intadd_7/A[1] ) );
  NAND2XLM U509 ( .A(B[1]), .B(A[3]), .Y(n441) );
  AOI221XLM U510 ( .A0(n442), .A1(n441), .B0(n444), .B1(n441), .C0(
        \intadd_1/A[0] ), .Y(\intadd_6/B[0] ) );
  NOR2XLM U511 ( .A(n443), .B(n442), .Y(\intadd_3/A[0] ) );
  NAND2XLM U512 ( .A(B[1]), .B(A[5]), .Y(n445) );
  AOI221XLM U513 ( .A0(n446), .A1(n445), .B0(n444), .B1(n445), .C0(
        \intadd_0/A[0] ), .Y(\intadd_3/B[0] ) );
  ADDFX1M U514 ( .A(\intadd_3/SUM[0] ), .B(\intadd_1/SUM[1] ), .CI(
        \intadd_4/SUM[0] ), .CO(n210), .S(\intadd_6/B[2] ) );
endmodule


module FIFO_MEM_DATA_WIDTH8_DEPTH8 ( w_clk, w_rst, w_addr, r_addr, w_inc, 
        w_full, w_data, r_data );
  input [2:0] w_addr;
  input [2:0] r_addr;
  input [7:0] w_data;
  output [7:0] r_data;
  input w_clk, w_rst, w_inc, w_full;
  wire   \mem_Buffer[0][7] , \mem_Buffer[0][6] , \mem_Buffer[0][5] ,
         \mem_Buffer[0][4] , \mem_Buffer[0][3] , \mem_Buffer[0][2] ,
         \mem_Buffer[0][1] , \mem_Buffer[0][0] , \mem_Buffer[1][7] ,
         \mem_Buffer[1][6] , \mem_Buffer[1][5] , \mem_Buffer[1][4] ,
         \mem_Buffer[1][3] , \mem_Buffer[1][2] , \mem_Buffer[1][1] ,
         \mem_Buffer[1][0] , \mem_Buffer[2][7] , \mem_Buffer[2][6] ,
         \mem_Buffer[2][5] , \mem_Buffer[2][4] , \mem_Buffer[2][3] ,
         \mem_Buffer[2][2] , \mem_Buffer[2][1] , \mem_Buffer[2][0] ,
         \mem_Buffer[3][7] , \mem_Buffer[3][6] , \mem_Buffer[3][5] ,
         \mem_Buffer[3][4] , \mem_Buffer[3][3] , \mem_Buffer[3][2] ,
         \mem_Buffer[3][1] , \mem_Buffer[3][0] , \mem_Buffer[4][7] ,
         \mem_Buffer[4][6] , \mem_Buffer[4][5] , \mem_Buffer[4][4] ,
         \mem_Buffer[4][3] , \mem_Buffer[4][2] , \mem_Buffer[4][1] ,
         \mem_Buffer[4][0] , \mem_Buffer[5][7] , \mem_Buffer[5][6] ,
         \mem_Buffer[5][5] , \mem_Buffer[5][4] , \mem_Buffer[5][3] ,
         \mem_Buffer[5][2] , \mem_Buffer[5][1] , \mem_Buffer[5][0] ,
         \mem_Buffer[6][7] , \mem_Buffer[6][6] , \mem_Buffer[6][5] ,
         \mem_Buffer[6][4] , \mem_Buffer[6][3] , \mem_Buffer[6][2] ,
         \mem_Buffer[6][1] , \mem_Buffer[6][0] , \mem_Buffer[7][7] ,
         \mem_Buffer[7][6] , \mem_Buffer[7][5] , \mem_Buffer[7][4] ,
         \mem_Buffer[7][3] , \mem_Buffer[7][2] , \mem_Buffer[7][1] ,
         \mem_Buffer[7][0] , n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67;

  DFFRQX1M \mem_Buffer_reg[0][7]  ( .D(n141), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][7] ) );
  DFFRQX1M \mem_Buffer_reg[0][6]  ( .D(n140), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][6] ) );
  DFFRQX1M \mem_Buffer_reg[0][5]  ( .D(n139), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][5] ) );
  DFFRQX1M \mem_Buffer_reg[0][4]  ( .D(n138), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][4] ) );
  DFFRQX1M \mem_Buffer_reg[0][3]  ( .D(n137), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][3] ) );
  DFFRQX1M \mem_Buffer_reg[0][2]  ( .D(n136), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][2] ) );
  DFFRQX1M \mem_Buffer_reg[0][1]  ( .D(n135), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][1] ) );
  DFFRQX1M \mem_Buffer_reg[0][0]  ( .D(n134), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[0][0] ) );
  DFFRQX1M \mem_Buffer_reg[1][7]  ( .D(n133), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][7] ) );
  DFFRQX1M \mem_Buffer_reg[1][6]  ( .D(n132), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][6] ) );
  DFFRQX1M \mem_Buffer_reg[1][5]  ( .D(n131), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][5] ) );
  DFFRQX1M \mem_Buffer_reg[1][4]  ( .D(n130), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][4] ) );
  DFFRQX1M \mem_Buffer_reg[1][3]  ( .D(n129), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][3] ) );
  DFFRQX1M \mem_Buffer_reg[1][2]  ( .D(n128), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][2] ) );
  DFFRQX1M \mem_Buffer_reg[1][1]  ( .D(n127), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][1] ) );
  DFFRQX1M \mem_Buffer_reg[1][0]  ( .D(n126), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[1][0] ) );
  DFFRQX1M \mem_Buffer_reg[2][7]  ( .D(n125), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][7] ) );
  DFFRQX1M \mem_Buffer_reg[2][6]  ( .D(n124), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][6] ) );
  DFFRQX1M \mem_Buffer_reg[2][5]  ( .D(n123), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][5] ) );
  DFFRQX1M \mem_Buffer_reg[2][4]  ( .D(n122), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][4] ) );
  DFFRQX1M \mem_Buffer_reg[2][3]  ( .D(n121), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][3] ) );
  DFFRQX1M \mem_Buffer_reg[2][2]  ( .D(n120), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][2] ) );
  DFFRQX1M \mem_Buffer_reg[2][1]  ( .D(n119), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][1] ) );
  DFFRQX1M \mem_Buffer_reg[2][0]  ( .D(n118), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[2][0] ) );
  DFFRQX1M \mem_Buffer_reg[3][7]  ( .D(n117), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][7] ) );
  DFFRQX1M \mem_Buffer_reg[3][6]  ( .D(n116), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][6] ) );
  DFFRQX1M \mem_Buffer_reg[3][5]  ( .D(n115), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][5] ) );
  DFFRQX1M \mem_Buffer_reg[3][4]  ( .D(n114), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][4] ) );
  DFFRQX1M \mem_Buffer_reg[3][3]  ( .D(n113), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][3] ) );
  DFFRQX1M \mem_Buffer_reg[3][2]  ( .D(n112), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][2] ) );
  DFFRQX1M \mem_Buffer_reg[3][1]  ( .D(n111), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][1] ) );
  DFFRQX1M \mem_Buffer_reg[3][0]  ( .D(n110), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[3][0] ) );
  DFFRQX1M \mem_Buffer_reg[4][7]  ( .D(n109), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][7] ) );
  DFFRQX1M \mem_Buffer_reg[4][6]  ( .D(n108), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][6] ) );
  DFFRQX1M \mem_Buffer_reg[4][5]  ( .D(n107), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][5] ) );
  DFFRQX1M \mem_Buffer_reg[4][4]  ( .D(n106), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][4] ) );
  DFFRQX1M \mem_Buffer_reg[4][3]  ( .D(n105), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][3] ) );
  DFFRQX1M \mem_Buffer_reg[4][2]  ( .D(n104), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][2] ) );
  DFFRQX1M \mem_Buffer_reg[4][1]  ( .D(n103), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][1] ) );
  DFFRQX1M \mem_Buffer_reg[4][0]  ( .D(n102), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[4][0] ) );
  DFFRQX1M \mem_Buffer_reg[5][7]  ( .D(n101), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][7] ) );
  DFFRQX1M \mem_Buffer_reg[5][6]  ( .D(n100), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][6] ) );
  DFFRQX1M \mem_Buffer_reg[5][5]  ( .D(n99), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][5] ) );
  DFFRQX1M \mem_Buffer_reg[5][4]  ( .D(n98), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][4] ) );
  DFFRQX1M \mem_Buffer_reg[5][3]  ( .D(n97), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][3] ) );
  DFFRQX1M \mem_Buffer_reg[5][2]  ( .D(n96), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][2] ) );
  DFFRQX1M \mem_Buffer_reg[5][1]  ( .D(n95), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][1] ) );
  DFFRQX1M \mem_Buffer_reg[5][0]  ( .D(n94), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[5][0] ) );
  DFFRQX1M \mem_Buffer_reg[6][7]  ( .D(n93), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][7] ) );
  DFFRQX1M \mem_Buffer_reg[6][6]  ( .D(n92), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][6] ) );
  DFFRQX1M \mem_Buffer_reg[6][5]  ( .D(n91), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][5] ) );
  DFFRQX1M \mem_Buffer_reg[6][4]  ( .D(n90), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][4] ) );
  DFFRQX1M \mem_Buffer_reg[6][3]  ( .D(n89), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][3] ) );
  DFFRQX1M \mem_Buffer_reg[6][2]  ( .D(n88), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][2] ) );
  DFFRQX1M \mem_Buffer_reg[6][1]  ( .D(n87), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][1] ) );
  DFFRQX1M \mem_Buffer_reg[6][0]  ( .D(n86), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[6][0] ) );
  DFFRQX1M \mem_Buffer_reg[7][7]  ( .D(n85), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][7] ) );
  DFFRQX1M \mem_Buffer_reg[7][6]  ( .D(n84), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][6] ) );
  DFFRQX1M \mem_Buffer_reg[7][5]  ( .D(n83), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][5] ) );
  DFFRQX1M \mem_Buffer_reg[7][4]  ( .D(n82), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][4] ) );
  DFFRQX1M \mem_Buffer_reg[7][3]  ( .D(n81), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][3] ) );
  DFFRQX1M \mem_Buffer_reg[7][2]  ( .D(n80), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][2] ) );
  DFFRQX1M \mem_Buffer_reg[7][1]  ( .D(n79), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][1] ) );
  DFFRQX1M \mem_Buffer_reg[7][0]  ( .D(n78), .CK(w_clk), .RN(w_rst), .Q(
        \mem_Buffer[7][0] ) );
  NOR3X1M U2 ( .A(w_addr[1]), .B(n54), .C(n57), .Y(n52) );
  NOR3X1M U3 ( .A(n54), .B(n58), .C(n57), .Y(n55) );
  NOR2BXLM U4 ( .AN(w_inc), .B(w_full), .Y(n48) );
  NOR3X2M U5 ( .A(w_addr[1]), .B(w_addr[2]), .C(n54), .Y(n47) );
  NOR3X2M U6 ( .A(w_addr[2]), .B(n58), .C(n56), .Y(n51) );
  NOR3X2M U7 ( .A(w_addr[1]), .B(w_addr[2]), .C(n56), .Y(n49) );
  NOR3X2M U8 ( .A(w_addr[2]), .B(n58), .C(n54), .Y(n50) );
  NOR3X2M U9 ( .A(w_addr[1]), .B(n57), .C(n56), .Y(n53) );
  AOI22XLM U10 ( .A0(n38), .A1(\mem_Buffer[0][4] ), .B0(n37), .B1(
        \mem_Buffer[2][4] ), .Y(n3) );
  AOI22XLM U11 ( .A0(\mem_Buffer[4][7] ), .A1(n38), .B0(\mem_Buffer[6][7] ), 
        .B1(n37), .Y(n16) );
  NOR2XLM U12 ( .A(r_addr[1]), .B(r_addr[0]), .Y(n38) );
  CLKINVX1M U13 ( .A(r_addr[0]), .Y(n1) );
  AND2X1M U14 ( .A(r_addr[1]), .B(n1), .Y(n37) );
  AOI22XLM U15 ( .A0(n38), .A1(\mem_Buffer[4][4] ), .B0(n37), .B1(
        \mem_Buffer[6][4] ), .Y(n6) );
  NOR2XLM U16 ( .A(r_addr[1]), .B(n1), .Y(n40) );
  NOR2BXLM U17 ( .AN(r_addr[1]), .B(n1), .Y(n39) );
  AOI22XLM U18 ( .A0(n40), .A1(\mem_Buffer[5][4] ), .B0(n39), .B1(
        \mem_Buffer[7][4] ), .Y(n5) );
  AOI22XLM U19 ( .A0(n40), .A1(\mem_Buffer[1][4] ), .B0(n39), .B1(
        \mem_Buffer[3][4] ), .Y(n2) );
  AND2X1M U20 ( .A(n3), .B(n2), .Y(n4) );
  CLKINVX1M U21 ( .A(r_addr[2]), .Y(n43) );
  AOI32XLM U22 ( .A0(n6), .A1(r_addr[2]), .A2(n5), .B0(n4), .B1(n43), .Y(
        r_data[4]) );
  AOI22XLM U23 ( .A0(n38), .A1(\mem_Buffer[4][2] ), .B0(n37), .B1(
        \mem_Buffer[6][2] ), .Y(n11) );
  AOI22XLM U24 ( .A0(n40), .A1(\mem_Buffer[5][2] ), .B0(n39), .B1(
        \mem_Buffer[7][2] ), .Y(n10) );
  AOI22XLM U25 ( .A0(n38), .A1(\mem_Buffer[0][2] ), .B0(n37), .B1(
        \mem_Buffer[2][2] ), .Y(n8) );
  AOI22XLM U26 ( .A0(n40), .A1(\mem_Buffer[1][2] ), .B0(n39), .B1(
        \mem_Buffer[3][2] ), .Y(n7) );
  AND2X1M U27 ( .A(n8), .B(n7), .Y(n9) );
  AOI32XLM U28 ( .A0(n11), .A1(r_addr[2]), .A2(n10), .B0(n9), .B1(n43), .Y(
        r_data[2]) );
  AOI22XLM U29 ( .A0(\mem_Buffer[5][7] ), .A1(n40), .B0(\mem_Buffer[7][7] ), 
        .B1(n39), .Y(n15) );
  AOI22XLM U30 ( .A0(n38), .A1(\mem_Buffer[0][7] ), .B0(n37), .B1(
        \mem_Buffer[2][7] ), .Y(n13) );
  AOI22XLM U31 ( .A0(n40), .A1(\mem_Buffer[1][7] ), .B0(n39), .B1(
        \mem_Buffer[3][7] ), .Y(n12) );
  AND2X1M U32 ( .A(n13), .B(n12), .Y(n14) );
  AOI32XLM U33 ( .A0(n16), .A1(r_addr[2]), .A2(n15), .B0(n14), .B1(n43), .Y(
        r_data[7]) );
  AOI22XLM U34 ( .A0(n38), .A1(\mem_Buffer[4][1] ), .B0(n37), .B1(
        \mem_Buffer[6][1] ), .Y(n21) );
  AOI22XLM U35 ( .A0(n40), .A1(\mem_Buffer[5][1] ), .B0(n39), .B1(
        \mem_Buffer[7][1] ), .Y(n20) );
  AOI22XLM U36 ( .A0(n38), .A1(\mem_Buffer[0][1] ), .B0(n37), .B1(
        \mem_Buffer[2][1] ), .Y(n18) );
  AOI22XLM U37 ( .A0(n40), .A1(\mem_Buffer[1][1] ), .B0(n39), .B1(
        \mem_Buffer[3][1] ), .Y(n17) );
  AND2X1M U38 ( .A(n18), .B(n17), .Y(n19) );
  AOI32XLM U39 ( .A0(n21), .A1(r_addr[2]), .A2(n20), .B0(n19), .B1(n43), .Y(
        r_data[1]) );
  AOI22XLM U40 ( .A0(n38), .A1(\mem_Buffer[4][0] ), .B0(n37), .B1(
        \mem_Buffer[6][0] ), .Y(n26) );
  AOI22XLM U41 ( .A0(n40), .A1(\mem_Buffer[5][0] ), .B0(n39), .B1(
        \mem_Buffer[7][0] ), .Y(n25) );
  AOI22XLM U42 ( .A0(n38), .A1(\mem_Buffer[0][0] ), .B0(n37), .B1(
        \mem_Buffer[2][0] ), .Y(n23) );
  AOI22XLM U43 ( .A0(n40), .A1(\mem_Buffer[1][0] ), .B0(n39), .B1(
        \mem_Buffer[3][0] ), .Y(n22) );
  AND2X1M U44 ( .A(n23), .B(n22), .Y(n24) );
  AOI32XLM U45 ( .A0(n26), .A1(r_addr[2]), .A2(n25), .B0(n24), .B1(n43), .Y(
        r_data[0]) );
  AOI22XLM U46 ( .A0(n38), .A1(\mem_Buffer[4][5] ), .B0(n37), .B1(
        \mem_Buffer[6][5] ), .Y(n31) );
  AOI22XLM U47 ( .A0(n40), .A1(\mem_Buffer[5][5] ), .B0(n39), .B1(
        \mem_Buffer[7][5] ), .Y(n30) );
  AOI22XLM U48 ( .A0(n38), .A1(\mem_Buffer[0][5] ), .B0(n37), .B1(
        \mem_Buffer[2][5] ), .Y(n28) );
  AOI22XLM U49 ( .A0(n40), .A1(\mem_Buffer[1][5] ), .B0(n39), .B1(
        \mem_Buffer[3][5] ), .Y(n27) );
  AND2X1M U50 ( .A(n28), .B(n27), .Y(n29) );
  AOI32XLM U51 ( .A0(n31), .A1(r_addr[2]), .A2(n30), .B0(n29), .B1(n43), .Y(
        r_data[5]) );
  AOI22XLM U52 ( .A0(n38), .A1(\mem_Buffer[4][6] ), .B0(n37), .B1(
        \mem_Buffer[6][6] ), .Y(n36) );
  AOI22XLM U53 ( .A0(n40), .A1(\mem_Buffer[5][6] ), .B0(n39), .B1(
        \mem_Buffer[7][6] ), .Y(n35) );
  AOI22XLM U54 ( .A0(n38), .A1(\mem_Buffer[0][6] ), .B0(n37), .B1(
        \mem_Buffer[2][6] ), .Y(n33) );
  AOI22XLM U55 ( .A0(n40), .A1(\mem_Buffer[1][6] ), .B0(n39), .B1(
        \mem_Buffer[3][6] ), .Y(n32) );
  AND2X1M U56 ( .A(n33), .B(n32), .Y(n34) );
  AOI32XLM U57 ( .A0(n36), .A1(r_addr[2]), .A2(n35), .B0(n34), .B1(n43), .Y(
        r_data[6]) );
  AOI22XLM U58 ( .A0(n38), .A1(\mem_Buffer[4][3] ), .B0(n37), .B1(
        \mem_Buffer[6][3] ), .Y(n46) );
  AOI22XLM U59 ( .A0(n40), .A1(\mem_Buffer[5][3] ), .B0(n39), .B1(
        \mem_Buffer[7][3] ), .Y(n45) );
  AOI22XLM U60 ( .A0(n38), .A1(\mem_Buffer[0][3] ), .B0(n37), .B1(
        \mem_Buffer[2][3] ), .Y(n42) );
  AOI22XLM U61 ( .A0(n40), .A1(\mem_Buffer[1][3] ), .B0(n39), .B1(
        \mem_Buffer[3][3] ), .Y(n41) );
  AND2X1M U62 ( .A(n42), .B(n41), .Y(n44) );
  AOI32XLM U63 ( .A0(n46), .A1(r_addr[2]), .A2(n45), .B0(n44), .B1(n43), .Y(
        r_data[3]) );
  NAND2BXLM U64 ( .AN(w_addr[0]), .B(n48), .Y(n54) );
  CLKINVX1M U65 ( .A(w_data[7]), .Y(n59) );
  AOI2BB2XLM U66 ( .B0(n47), .B1(n59), .A0N(\mem_Buffer[0][7] ), .A1N(n47), 
        .Y(n141) );
  CLKINVX1M U67 ( .A(w_data[6]), .Y(n60) );
  AOI2BB2XLM U68 ( .B0(n47), .B1(n60), .A0N(\mem_Buffer[0][6] ), .A1N(n47), 
        .Y(n140) );
  CLKINVX1M U69 ( .A(w_data[5]), .Y(n61) );
  AOI2BB2XLM U70 ( .B0(n47), .B1(n61), .A0N(\mem_Buffer[0][5] ), .A1N(n47), 
        .Y(n139) );
  CLKINVX1M U71 ( .A(w_data[4]), .Y(n62) );
  AOI2BB2XLM U72 ( .B0(n47), .B1(n62), .A0N(\mem_Buffer[0][4] ), .A1N(n47), 
        .Y(n138) );
  CLKINVX1M U73 ( .A(w_data[3]), .Y(n63) );
  AOI2BB2XLM U74 ( .B0(n47), .B1(n63), .A0N(\mem_Buffer[0][3] ), .A1N(n47), 
        .Y(n137) );
  CLKINVX1M U75 ( .A(w_data[2]), .Y(n64) );
  AOI2BB2XLM U76 ( .B0(n47), .B1(n64), .A0N(\mem_Buffer[0][2] ), .A1N(n47), 
        .Y(n136) );
  CLKINVX1M U77 ( .A(w_data[1]), .Y(n65) );
  AOI2BB2XLM U78 ( .B0(n47), .B1(n65), .A0N(\mem_Buffer[0][1] ), .A1N(n47), 
        .Y(n135) );
  CLKINVX1M U79 ( .A(w_data[0]), .Y(n66) );
  AOI2BB2XLM U80 ( .B0(n47), .B1(n66), .A0N(\mem_Buffer[0][0] ), .A1N(n47), 
        .Y(n134) );
  NAND2XLM U81 ( .A(n48), .B(w_addr[0]), .Y(n56) );
  AOI2BB2XLM U82 ( .B0(n49), .B1(n59), .A0N(\mem_Buffer[1][7] ), .A1N(n49), 
        .Y(n133) );
  AOI2BB2XLM U83 ( .B0(n49), .B1(n60), .A0N(\mem_Buffer[1][6] ), .A1N(n49), 
        .Y(n132) );
  AOI2BB2XLM U84 ( .B0(n49), .B1(n61), .A0N(\mem_Buffer[1][5] ), .A1N(n49), 
        .Y(n131) );
  AOI2BB2XLM U85 ( .B0(n49), .B1(n62), .A0N(\mem_Buffer[1][4] ), .A1N(n49), 
        .Y(n130) );
  AOI2BB2XLM U86 ( .B0(n49), .B1(n63), .A0N(\mem_Buffer[1][3] ), .A1N(n49), 
        .Y(n129) );
  AOI2BB2XLM U87 ( .B0(n49), .B1(n64), .A0N(\mem_Buffer[1][2] ), .A1N(n49), 
        .Y(n128) );
  AOI2BB2XLM U88 ( .B0(n49), .B1(n65), .A0N(\mem_Buffer[1][1] ), .A1N(n49), 
        .Y(n127) );
  AOI2BB2XLM U89 ( .B0(n49), .B1(n66), .A0N(\mem_Buffer[1][0] ), .A1N(n49), 
        .Y(n126) );
  CLKINVX1M U90 ( .A(w_addr[1]), .Y(n58) );
  AOI2BB2XLM U91 ( .B0(n50), .B1(n59), .A0N(\mem_Buffer[2][7] ), .A1N(n50), 
        .Y(n125) );
  AOI2BB2XLM U92 ( .B0(n50), .B1(n60), .A0N(\mem_Buffer[2][6] ), .A1N(n50), 
        .Y(n124) );
  AOI2BB2XLM U93 ( .B0(n50), .B1(n61), .A0N(\mem_Buffer[2][5] ), .A1N(n50), 
        .Y(n123) );
  AOI2BB2XLM U94 ( .B0(n50), .B1(n62), .A0N(\mem_Buffer[2][4] ), .A1N(n50), 
        .Y(n122) );
  AOI2BB2XLM U95 ( .B0(n50), .B1(n63), .A0N(\mem_Buffer[2][3] ), .A1N(n50), 
        .Y(n121) );
  AOI2BB2XLM U96 ( .B0(n50), .B1(n64), .A0N(\mem_Buffer[2][2] ), .A1N(n50), 
        .Y(n120) );
  AOI2BB2XLM U97 ( .B0(n50), .B1(n65), .A0N(\mem_Buffer[2][1] ), .A1N(n50), 
        .Y(n119) );
  AOI2BB2XLM U98 ( .B0(n50), .B1(n66), .A0N(\mem_Buffer[2][0] ), .A1N(n50), 
        .Y(n118) );
  AOI2BB2XLM U99 ( .B0(n51), .B1(n59), .A0N(\mem_Buffer[3][7] ), .A1N(n51), 
        .Y(n117) );
  AOI2BB2XLM U100 ( .B0(n51), .B1(n60), .A0N(\mem_Buffer[3][6] ), .A1N(n51), 
        .Y(n116) );
  AOI2BB2XLM U101 ( .B0(n51), .B1(n61), .A0N(\mem_Buffer[3][5] ), .A1N(n51), 
        .Y(n115) );
  AOI2BB2XLM U102 ( .B0(n51), .B1(n62), .A0N(\mem_Buffer[3][4] ), .A1N(n51), 
        .Y(n114) );
  AOI2BB2XLM U103 ( .B0(n51), .B1(n63), .A0N(\mem_Buffer[3][3] ), .A1N(n51), 
        .Y(n113) );
  AOI2BB2XLM U104 ( .B0(n51), .B1(n64), .A0N(\mem_Buffer[3][2] ), .A1N(n51), 
        .Y(n112) );
  AOI2BB2XLM U105 ( .B0(n51), .B1(n65), .A0N(\mem_Buffer[3][1] ), .A1N(n51), 
        .Y(n111) );
  AOI2BB2XLM U106 ( .B0(n51), .B1(n66), .A0N(\mem_Buffer[3][0] ), .A1N(n51), 
        .Y(n110) );
  CLKINVX1M U107 ( .A(w_addr[2]), .Y(n57) );
  AOI2BB2XLM U108 ( .B0(n52), .B1(n59), .A0N(\mem_Buffer[4][7] ), .A1N(n52), 
        .Y(n109) );
  AOI2BB2XLM U109 ( .B0(n52), .B1(n60), .A0N(\mem_Buffer[4][6] ), .A1N(n52), 
        .Y(n108) );
  AOI2BB2XLM U110 ( .B0(n52), .B1(n61), .A0N(\mem_Buffer[4][5] ), .A1N(n52), 
        .Y(n107) );
  AOI2BB2XLM U111 ( .B0(n52), .B1(n62), .A0N(\mem_Buffer[4][4] ), .A1N(n52), 
        .Y(n106) );
  AOI2BB2XLM U112 ( .B0(n52), .B1(n63), .A0N(\mem_Buffer[4][3] ), .A1N(n52), 
        .Y(n105) );
  AOI2BB2XLM U113 ( .B0(n52), .B1(n64), .A0N(\mem_Buffer[4][2] ), .A1N(n52), 
        .Y(n104) );
  AOI2BB2XLM U114 ( .B0(n52), .B1(n65), .A0N(\mem_Buffer[4][1] ), .A1N(n52), 
        .Y(n103) );
  AOI2BB2XLM U115 ( .B0(n52), .B1(n66), .A0N(\mem_Buffer[4][0] ), .A1N(n52), 
        .Y(n102) );
  AOI2BB2XLM U116 ( .B0(n53), .B1(n59), .A0N(\mem_Buffer[5][7] ), .A1N(n53), 
        .Y(n101) );
  AOI2BB2XLM U117 ( .B0(n53), .B1(n60), .A0N(\mem_Buffer[5][6] ), .A1N(n53), 
        .Y(n100) );
  AOI2BB2XLM U118 ( .B0(n53), .B1(n61), .A0N(\mem_Buffer[5][5] ), .A1N(n53), 
        .Y(n99) );
  AOI2BB2XLM U119 ( .B0(n53), .B1(n62), .A0N(\mem_Buffer[5][4] ), .A1N(n53), 
        .Y(n98) );
  AOI2BB2XLM U120 ( .B0(n53), .B1(n63), .A0N(\mem_Buffer[5][3] ), .A1N(n53), 
        .Y(n97) );
  AOI2BB2XLM U121 ( .B0(n53), .B1(n64), .A0N(\mem_Buffer[5][2] ), .A1N(n53), 
        .Y(n96) );
  AOI2BB2XLM U122 ( .B0(n53), .B1(n65), .A0N(\mem_Buffer[5][1] ), .A1N(n53), 
        .Y(n95) );
  AOI2BB2XLM U123 ( .B0(n53), .B1(n66), .A0N(\mem_Buffer[5][0] ), .A1N(n53), 
        .Y(n94) );
  AOI2BB2XLM U124 ( .B0(n55), .B1(n59), .A0N(\mem_Buffer[6][7] ), .A1N(n55), 
        .Y(n93) );
  AOI2BB2XLM U125 ( .B0(n55), .B1(n60), .A0N(\mem_Buffer[6][6] ), .A1N(n55), 
        .Y(n92) );
  AOI2BB2XLM U126 ( .B0(n55), .B1(n61), .A0N(\mem_Buffer[6][5] ), .A1N(n55), 
        .Y(n91) );
  AOI2BB2XLM U127 ( .B0(n55), .B1(n62), .A0N(\mem_Buffer[6][4] ), .A1N(n55), 
        .Y(n90) );
  AOI2BB2XLM U128 ( .B0(n55), .B1(n63), .A0N(\mem_Buffer[6][3] ), .A1N(n55), 
        .Y(n89) );
  AOI2BB2XLM U129 ( .B0(n55), .B1(n64), .A0N(\mem_Buffer[6][2] ), .A1N(n55), 
        .Y(n88) );
  AOI2BB2XLM U130 ( .B0(n55), .B1(n65), .A0N(\mem_Buffer[6][1] ), .A1N(n55), 
        .Y(n87) );
  AOI2BB2XLM U131 ( .B0(n55), .B1(n66), .A0N(\mem_Buffer[6][0] ), .A1N(n55), 
        .Y(n86) );
  NOR3X2M U132 ( .A(n58), .B(n57), .C(n56), .Y(n67) );
  AOI2BB2XLM U133 ( .B0(n67), .B1(n59), .A0N(\mem_Buffer[7][7] ), .A1N(n67), 
        .Y(n85) );
  AOI2BB2XLM U134 ( .B0(n67), .B1(n60), .A0N(\mem_Buffer[7][6] ), .A1N(n67), 
        .Y(n84) );
  AOI2BB2XLM U135 ( .B0(n67), .B1(n61), .A0N(\mem_Buffer[7][5] ), .A1N(n67), 
        .Y(n83) );
  AOI2BB2XLM U136 ( .B0(n67), .B1(n62), .A0N(\mem_Buffer[7][4] ), .A1N(n67), 
        .Y(n82) );
  AOI2BB2XLM U137 ( .B0(n67), .B1(n63), .A0N(\mem_Buffer[7][3] ), .A1N(n67), 
        .Y(n81) );
  AOI2BB2XLM U138 ( .B0(n67), .B1(n64), .A0N(\mem_Buffer[7][2] ), .A1N(n67), 
        .Y(n80) );
  AOI2BB2XLM U139 ( .B0(n67), .B1(n65), .A0N(\mem_Buffer[7][1] ), .A1N(n67), 
        .Y(n79) );
  AOI2BB2XLM U140 ( .B0(n67), .B1(n66), .A0N(\mem_Buffer[7][0] ), .A1N(n67), 
        .Y(n78) );
endmodule


module FIFO_WR_DEPTH8 ( w_clk, w_rst, grey_r_ptr, w_inc, w_addr, grey_w_ptr, 
        w_full );
  input [3:0] grey_r_ptr;
  output [2:0] w_addr;
  output [3:0] grey_w_ptr;
  input w_clk, w_rst, w_inc;
  output w_full;
  wire   \w_ptr[3] , N4, N7, N8, n14, n15, n16, n17, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n18;

  DFFRQX1M \w_ptr_reg[0]  ( .D(n17), .CK(w_clk), .RN(w_rst), .Q(w_addr[0]) );
  DFFRQX1M \w_ptr_reg[3]  ( .D(n16), .CK(w_clk), .RN(w_rst), .Q(\w_ptr[3] ) );
  DFFRQX1M \w_ptr_reg[2]  ( .D(n15), .CK(w_clk), .RN(w_rst), .Q(w_addr[2]) );
  DFFRQX1M \w_ptr_reg[1]  ( .D(n14), .CK(w_clk), .RN(w_rst), .Q(w_addr[1]) );
  DFFRQX1M \grey_w_ptr_reg[3]  ( .D(\w_ptr[3] ), .CK(w_clk), .RN(w_rst), .Q(
        grey_w_ptr[3]) );
  DFFRQX1M \grey_w_ptr_reg[2]  ( .D(N7), .CK(w_clk), .RN(w_rst), .Q(
        grey_w_ptr[2]) );
  DFFRQX1M \grey_w_ptr_reg[1]  ( .D(N8), .CK(w_clk), .RN(w_rst), .Q(
        grey_w_ptr[1]) );
  DFFRQX1M \grey_w_ptr_reg[0]  ( .D(N4), .CK(w_clk), .RN(w_rst), .Q(
        grey_w_ptr[0]) );
  CLKAND2X2M U3 ( .A(n6), .B(n5), .Y(w_full) );
  CLKINVX1M U4 ( .A(n10), .Y(n12) );
  OAI31XLM U5 ( .A0(n10), .A1(\w_ptr[3] ), .A2(n11), .B0(n8), .Y(n16) );
  CLKINVX1M U6 ( .A(grey_w_ptr[1]), .Y(n3) );
  CLKINVX1M U7 ( .A(grey_w_ptr[0]), .Y(n2) );
  OAI22XLM U8 ( .A0(n3), .A1(grey_r_ptr[1]), .B0(n2), .B1(grey_r_ptr[0]), .Y(
        n1) );
  AOI221XLM U9 ( .A0(n3), .A1(grey_r_ptr[1]), .B0(grey_r_ptr[0]), .B1(n2), 
        .C0(n1), .Y(n6) );
  OAI22XLM U10 ( .A0(grey_w_ptr[2]), .A1(grey_r_ptr[2]), .B0(grey_w_ptr[3]), 
        .B1(grey_r_ptr[3]), .Y(n4) );
  AOI221XLM U11 ( .A0(grey_w_ptr[2]), .A1(grey_r_ptr[2]), .B0(grey_r_ptr[3]), 
        .B1(grey_w_ptr[3]), .C0(n4), .Y(n5) );
  NAND2BXLM U12 ( .AN(w_full), .B(w_inc), .Y(n7) );
  CLKINVX1M U13 ( .A(w_addr[0]), .Y(n13) );
  NOR3BXLM U14 ( .AN(w_inc), .B(w_full), .C(n13), .Y(n9) );
  AOI21XLM U15 ( .A0(n7), .A1(n13), .B0(n9), .Y(n17) );
  NAND2XLM U16 ( .A(n9), .B(w_addr[1]), .Y(n10) );
  CLKINVX1M U17 ( .A(w_addr[2]), .Y(n11) );
  OAI21XLM U18 ( .A0(n10), .A1(n11), .B0(\w_ptr[3] ), .Y(n8) );
  AOI2BB1XLM U19 ( .A0N(n9), .A1N(w_addr[1]), .B0(n12), .Y(n14) );
  AOI2BB2XLM U20 ( .B0(w_addr[2]), .B1(\w_ptr[3] ), .A0N(\w_ptr[3] ), .A1N(
        w_addr[2]), .Y(N7) );
  CLKINVX1M U21 ( .A(w_addr[1]), .Y(n18) );
  AOI22XLM U22 ( .A0(w_addr[1]), .A1(w_addr[2]), .B0(n11), .B1(n18), .Y(N8) );
  AOI22XLM U23 ( .A0(n12), .A1(w_addr[2]), .B0(n11), .B1(n10), .Y(n15) );
  AOI22XLM U24 ( .A0(w_addr[0]), .A1(w_addr[1]), .B0(n18), .B1(n13), .Y(N4) );
endmodule


module FIFO_RD_DEPTH8 ( r_clk, r_rst, grey_w_ptr, r_inc, r_addr, grey_r_ptr, 
        r_empty );
  input [3:0] grey_w_ptr;
  output [2:0] r_addr;
  output [3:0] grey_r_ptr;
  input r_clk, r_rst, r_inc;
  output r_empty;
  wire   \r_ptr[3] , N4, N7, N8, \eq_x_2/n25 , n16, n17, n18, n19, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n20;
  assign r_empty = \eq_x_2/n25 ;

  DFFRQX1M \r_ptr_reg[0]  ( .D(n19), .CK(r_clk), .RN(r_rst), .Q(r_addr[0]) );
  DFFRQX1M \r_ptr_reg[3]  ( .D(n18), .CK(r_clk), .RN(r_rst), .Q(\r_ptr[3] ) );
  DFFRQX1M \r_ptr_reg[2]  ( .D(n17), .CK(r_clk), .RN(r_rst), .Q(r_addr[2]) );
  DFFRQX1M \r_ptr_reg[1]  ( .D(n16), .CK(r_clk), .RN(r_rst), .Q(r_addr[1]) );
  DFFRQX1M \grey_r_ptr_reg[3]  ( .D(\r_ptr[3] ), .CK(r_clk), .RN(r_rst), .Q(
        grey_r_ptr[3]) );
  DFFRQX1M \grey_r_ptr_reg[2]  ( .D(N7), .CK(r_clk), .RN(r_rst), .Q(
        grey_r_ptr[2]) );
  DFFRQX1M \grey_r_ptr_reg[1]  ( .D(N8), .CK(r_clk), .RN(r_rst), .Q(
        grey_r_ptr[1]) );
  DFFRQX1M \grey_r_ptr_reg[0]  ( .D(N4), .CK(r_clk), .RN(r_rst), .Q(
        grey_r_ptr[0]) );
  CLKINVX1M U3 ( .A(grey_r_ptr[1]), .Y(n7) );
  CLKINVX1M U4 ( .A(r_addr[2]), .Y(n15) );
  CLKINVX1M U5 ( .A(r_addr[1]), .Y(n1) );
  AOI22XLM U6 ( .A0(r_addr[1]), .A1(r_addr[2]), .B0(n15), .B1(n1), .Y(N8) );
  CLKINVX1M U7 ( .A(r_addr[0]), .Y(n10) );
  AOI22XLM U8 ( .A0(r_addr[0]), .A1(r_addr[1]), .B0(n1), .B1(n10), .Y(N4) );
  CLKINVX1M U9 ( .A(grey_r_ptr[3]), .Y(n4) );
  CLKINVX1M U10 ( .A(grey_r_ptr[2]), .Y(n3) );
  OAI22XLM U11 ( .A0(n4), .A1(grey_w_ptr[3]), .B0(n3), .B1(grey_w_ptr[2]), .Y(
        n2) );
  AOI221XLM U12 ( .A0(n4), .A1(grey_w_ptr[3]), .B0(grey_w_ptr[2]), .B1(n3), 
        .C0(n2), .Y(n9) );
  CLKINVX1M U13 ( .A(grey_r_ptr[0]), .Y(n6) );
  OAI22XLM U14 ( .A0(n7), .A1(grey_w_ptr[1]), .B0(n6), .B1(grey_w_ptr[0]), .Y(
        n5) );
  AOI221XLM U15 ( .A0(n7), .A1(grey_w_ptr[1]), .B0(grey_w_ptr[0]), .B1(n6), 
        .C0(n5), .Y(n8) );
  AND2X1M U16 ( .A(n9), .B(n8), .Y(\eq_x_2/n25 ) );
  NAND2BXLM U17 ( .AN(\eq_x_2/n25 ), .B(r_inc), .Y(n11) );
  NOR3BXLM U18 ( .AN(r_inc), .B(\eq_x_2/n25 ), .C(n10), .Y(n13) );
  AOI21XLM U19 ( .A0(n11), .A1(n10), .B0(n13), .Y(n19) );
  NAND2XLM U20 ( .A(n13), .B(r_addr[1]), .Y(n20) );
  CLKINVX1M U21 ( .A(n20), .Y(n12) );
  AOI22XLM U22 ( .A0(n12), .A1(r_addr[2]), .B0(n15), .B1(n20), .Y(n17) );
  AOI2BB1XLM U23 ( .A0N(n13), .A1N(r_addr[1]), .B0(n12), .Y(n16) );
  OAI21XLM U24 ( .A0(n20), .A1(n15), .B0(\r_ptr[3] ), .Y(n14) );
  OAI31XLM U25 ( .A0(n20), .A1(\r_ptr[3] ), .A2(n15), .B0(n14), .Y(n18) );
  AOI2BB2XLM U26 ( .B0(r_addr[2]), .B1(\r_ptr[3] ), .A0N(\r_ptr[3] ), .A1N(
        r_addr[2]), .Y(N7) );
endmodule


module DF_SYNC_DEPTH8_1 ( clk, rst, ptr, sync_ptr );
  input [3:0] ptr;
  output [3:0] sync_ptr;
  input clk, rst;
  wire   \sync_reg[0][3] , \sync_reg[0][2] , \sync_reg[0][1] ,
         \sync_reg[0][0] ;

  DFFRQX1M \sync_reg_reg[0][3]  ( .D(ptr[3]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][3] ) );
  DFFRQX1M \sync_reg_reg[1][3]  ( .D(\sync_reg[0][3] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[3]) );
  DFFRQX1M \sync_reg_reg[0][2]  ( .D(ptr[2]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][2] ) );
  DFFRQX1M \sync_reg_reg[1][2]  ( .D(\sync_reg[0][2] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[2]) );
  DFFRQX1M \sync_reg_reg[0][1]  ( .D(ptr[1]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][1] ) );
  DFFRQX1M \sync_reg_reg[1][1]  ( .D(\sync_reg[0][1] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[1]) );
  DFFRQX1M \sync_reg_reg[0][0]  ( .D(ptr[0]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][0] ) );
  DFFRQX1M \sync_reg_reg[1][0]  ( .D(\sync_reg[0][0] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[0]) );
endmodule


module DF_SYNC_DEPTH8_0 ( clk, rst, ptr, sync_ptr );
  input [3:0] ptr;
  output [3:0] sync_ptr;
  input clk, rst;
  wire   \sync_reg[0][3] , \sync_reg[0][2] , \sync_reg[0][1] ,
         \sync_reg[0][0] ;

  DFFRQX1M \sync_reg_reg[0][3]  ( .D(ptr[3]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][3] ) );
  DFFRQX1M \sync_reg_reg[1][3]  ( .D(\sync_reg[0][3] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[3]) );
  DFFRQX1M \sync_reg_reg[0][2]  ( .D(ptr[2]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][2] ) );
  DFFRQX1M \sync_reg_reg[1][2]  ( .D(\sync_reg[0][2] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[2]) );
  DFFRQX1M \sync_reg_reg[0][1]  ( .D(ptr[1]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][1] ) );
  DFFRQX1M \sync_reg_reg[1][1]  ( .D(\sync_reg[0][1] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[1]) );
  DFFRQX1M \sync_reg_reg[0][0]  ( .D(ptr[0]), .CK(clk), .RN(rst), .Q(
        \sync_reg[0][0] ) );
  DFFRQX1M \sync_reg_reg[1][0]  ( .D(\sync_reg[0][0] ), .CK(clk), .RN(rst), 
        .Q(sync_ptr[0]) );
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
  DF_SYNC_DEPTH8_1 u_sync_w2r ( .clk(R_CLK), .rst(R_RST), .ptr(grey_w_ptr), 
        .sync_ptr(sync_w_ptr) );
  DF_SYNC_DEPTH8_0 u_sync_r2w ( .clk(W_CLK), .rst(W_RST), .ptr(grey_r_ptr), 
        .sync_ptr(sync_r_ptr) );
endmodule


module Data_Bus_Sync_DATA_WIDTH8_Sync_Legnth2 ( Unsync_bus, bus_enable, clk, 
        rst, Sync_bus, enable_pulse );
  input [7:0] Unsync_bus;
  output [7:0] Sync_bus;
  input bus_enable, clk, rst;
  output enable_pulse;
  wire   enable_Reg, Gen_Pulse, n2, n3, n4, n5, n6, n7, n8, n9, n1;
  wire   [1:0] Bit_Syncronizer;

  DFFRQX1M \Bit_Syncronizer_reg[1]  ( .D(bus_enable), .CK(clk), .RN(rst), .Q(
        Bit_Syncronizer[1]) );
  DFFRQX1M \Bit_Syncronizer_reg[0]  ( .D(Bit_Syncronizer[1]), .CK(clk), .RN(
        rst), .Q(Bit_Syncronizer[0]) );
  DFFRQX1M enable_Reg_reg ( .D(Bit_Syncronizer[0]), .CK(clk), .RN(rst), .Q(
        enable_Reg) );
  DFFRQX1M enable_pulse_reg ( .D(Gen_Pulse), .CK(clk), .RN(rst), .Q(
        enable_pulse) );
  DFFRQX1M \Sync_bus_reg[7]  ( .D(n9), .CK(clk), .RN(rst), .Q(Sync_bus[7]) );
  DFFRQX1M \Sync_bus_reg[6]  ( .D(n8), .CK(clk), .RN(rst), .Q(Sync_bus[6]) );
  DFFRQX1M \Sync_bus_reg[5]  ( .D(n7), .CK(clk), .RN(rst), .Q(Sync_bus[5]) );
  DFFRQX1M \Sync_bus_reg[4]  ( .D(n6), .CK(clk), .RN(rst), .Q(Sync_bus[4]) );
  DFFRQX1M \Sync_bus_reg[3]  ( .D(n5), .CK(clk), .RN(rst), .Q(Sync_bus[3]) );
  DFFRQX1M \Sync_bus_reg[2]  ( .D(n4), .CK(clk), .RN(rst), .Q(Sync_bus[2]) );
  DFFRQX1M \Sync_bus_reg[1]  ( .D(n3), .CK(clk), .RN(rst), .Q(Sync_bus[1]) );
  DFFRQX1M \Sync_bus_reg[0]  ( .D(n2), .CK(clk), .RN(rst), .Q(Sync_bus[0]) );
  CLKINVX1M U3 ( .A(Gen_Pulse), .Y(n1) );
  NOR2BXLM U4 ( .AN(Bit_Syncronizer[0]), .B(enable_Reg), .Y(Gen_Pulse) );
  AO22XLM U5 ( .A0(Gen_Pulse), .A1(Unsync_bus[7]), .B0(n1), .B1(Sync_bus[7]), 
        .Y(n9) );
  AO22XLM U6 ( .A0(Gen_Pulse), .A1(Unsync_bus[6]), .B0(n1), .B1(Sync_bus[6]), 
        .Y(n8) );
  AO22XLM U7 ( .A0(Gen_Pulse), .A1(Unsync_bus[5]), .B0(n1), .B1(Sync_bus[5]), 
        .Y(n7) );
  AO22XLM U8 ( .A0(Gen_Pulse), .A1(Unsync_bus[4]), .B0(n1), .B1(Sync_bus[4]), 
        .Y(n6) );
  AO22XLM U9 ( .A0(Gen_Pulse), .A1(Unsync_bus[3]), .B0(n1), .B1(Sync_bus[3]), 
        .Y(n5) );
  AO22XLM U10 ( .A0(Gen_Pulse), .A1(Unsync_bus[2]), .B0(n1), .B1(Sync_bus[2]), 
        .Y(n4) );
  AO22XLM U11 ( .A0(Gen_Pulse), .A1(Unsync_bus[1]), .B0(n1), .B1(Sync_bus[1]), 
        .Y(n3) );
  AO22XLM U12 ( .A0(Gen_Pulse), .A1(Unsync_bus[0]), .B0(n1), .B1(Sync_bus[0]), 
        .Y(n2) );
endmodule


module RX_CLK_DIV_MUX ( PRESCALE, RX_CLK_DIV_RATIO );
  input [5:0] PRESCALE;
  output [2:0] RX_CLK_DIV_RATIO;
  wire   n1, n2, n3;

  NOR4XLM U3 ( .A(PRESCALE[2]), .B(PRESCALE[1]), .C(PRESCALE[0]), .D(
        PRESCALE[5]), .Y(n3) );
  CLKINVX1M U4 ( .A(n3), .Y(n1) );
  NOR3BXLM U5 ( .AN(PRESCALE[3]), .B(PRESCALE[4]), .C(n1), .Y(
        RX_CLK_DIV_RATIO[2]) );
  NOR3BXLM U6 ( .AN(PRESCALE[4]), .B(PRESCALE[3]), .C(n1), .Y(
        RX_CLK_DIV_RATIO[1]) );
  NAND2XLM U7 ( .A(PRESCALE[4]), .B(PRESCALE[3]), .Y(n2) );
  OAI211XLM U8 ( .A0(PRESCALE[4]), .A1(PRESCALE[3]), .B0(n3), .C0(n2), .Y(
        RX_CLK_DIV_RATIO[0]) );
endmodule


module I_CLK_DIV_DIV_RATIO_WIDTH8 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [7:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   I_CLK_EN, DIVIDED_CLK, N56, N57, N58, N59, N60, N61, N62, N63, n6, n1,
         n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70;
  wire   [7:0] COUNTER;

  DFFRQX1M \COUNTER_reg[7]  ( .D(N63), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[7]) );
  DFFRQX1M \COUNTER_reg[6]  ( .D(N62), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[6]) );
  DFFRQX1M \COUNTER_reg[5]  ( .D(N61), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[5]) );
  DFFRQX1M \COUNTER_reg[4]  ( .D(N60), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[4]) );
  DFFRQX1M \COUNTER_reg[3]  ( .D(N59), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[3]) );
  DFFRQX1M \COUNTER_reg[2]  ( .D(N58), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[2]) );
  DFFRQX1M \COUNTER_reg[1]  ( .D(N57), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[1]) );
  DFFRQX1M \COUNTER_reg[0]  ( .D(N56), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[0]) );
  CLKMX2X2M U18 ( .A(i_ref_clk), .B(DIVIDED_CLK), .S0(I_CLK_EN), .Y(o_div_clk)
         );
  DFFRQX1M DIVIDED_CLK_reg ( .D(n6), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        DIVIDED_CLK) );
  NAND2BXLM U3 ( .AN(i_div_ratio[0]), .B(n55), .Y(n4) );
  OAI21XLM U4 ( .A0(COUNTER[4]), .A1(n53), .B0(n44), .Y(n45) );
  CLKINVX1M U5 ( .A(COUNTER[6]), .Y(n52) );
  NOR3XLM U6 ( .A(i_div_ratio[3]), .B(i_div_ratio[1]), .C(i_div_ratio[2]), .Y(
        n55) );
  CLKINVX1M U7 ( .A(n55), .Y(n54) );
  NOR2XLM U8 ( .A(i_div_ratio[4]), .B(n54), .Y(n53) );
  CLKINVX1M U9 ( .A(i_div_ratio[5]), .Y(n44) );
  NAND2XLM U10 ( .A(n53), .B(n44), .Y(n47) );
  NOR2XLM U11 ( .A(i_div_ratio[6]), .B(n47), .Y(n61) );
  CLKINVX1M U12 ( .A(i_div_ratio[7]), .Y(n60) );
  NAND2XLM U13 ( .A(n61), .B(n60), .Y(I_CLK_EN) );
  NOR3XLM U14 ( .A(i_div_ratio[4]), .B(i_div_ratio[0]), .C(n54), .Y(n3) );
  NAND2XLM U15 ( .A(n44), .B(n3), .Y(n9) );
  OA21XLM U16 ( .A0(n44), .A1(n3), .B0(n9), .Y(n25) );
  AOI2BB2XLM U17 ( .B0(i_div_ratio[3]), .B1(COUNTER[3]), .A0N(COUNTER[3]), 
        .A1N(i_div_ratio[3]), .Y(n14) );
  OAI21XLM U19 ( .A0(i_div_ratio[0]), .A1(i_div_ratio[1]), .B0(COUNTER[2]), 
        .Y(n1) );
  OAI31XLM U20 ( .A0(i_div_ratio[0]), .A1(COUNTER[2]), .A2(i_div_ratio[1]), 
        .B0(n1), .Y(n15) );
  AOI2BB1XLM U21 ( .A0N(n14), .A1N(n15), .B0(i_div_ratio[1]), .Y(n2) );
  CLKINVX1M U22 ( .A(COUNTER[1]), .Y(n30) );
  CLKINVX1M U23 ( .A(COUNTER[0]), .Y(n31) );
  AOI221XLM U24 ( .A0(n2), .A1(COUNTER[1]), .B0(i_div_ratio[1]), .B1(n30), 
        .C0(n31), .Y(n23) );
  AOI21XLM U25 ( .A0(i_div_ratio[4]), .A1(n4), .B0(n3), .Y(n21) );
  NOR2XLM U26 ( .A(i_div_ratio[6]), .B(n9), .Y(n5) );
  AOI211XLM U27 ( .A0(n9), .A1(i_div_ratio[6]), .B0(n5), .C0(COUNTER[6]), .Y(
        n7) );
  AOI31XLM U28 ( .A0(n9), .A1(i_div_ratio[6]), .A2(COUNTER[6]), .B0(n7), .Y(n8) );
  OAI31XLM U29 ( .A0(i_div_ratio[6]), .A1(COUNTER[7]), .A2(n9), .B0(n8), .Y(
        n20) );
  CLKINVX1M U30 ( .A(COUNTER[7]), .Y(n50) );
  NAND2BXLM U31 ( .AN(i_div_ratio[6]), .B(COUNTER[6]), .Y(n46) );
  AOI32XLM U32 ( .A0(i_div_ratio[7]), .A1(n50), .A2(n46), .B0(n60), .B1(
        COUNTER[7]), .Y(n17) );
  NOR2XLM U33 ( .A(n31), .B(n30), .Y(n34) );
  CLKINVX1M U34 ( .A(n34), .Y(n32) );
  CLKINVX1M U35 ( .A(n15), .Y(n12) );
  NOR2XLM U36 ( .A(i_div_ratio[1]), .B(COUNTER[1]), .Y(n10) );
  AOI21XLM U37 ( .A0(COUNTER[1]), .A1(i_div_ratio[1]), .B0(n10), .Y(n49) );
  AOI22XLM U38 ( .A0(n49), .A1(i_div_ratio[0]), .B0(i_div_ratio[2]), .B1(n12), 
        .Y(n11) );
  OAI21XLM U39 ( .A0(i_div_ratio[2]), .A1(n12), .B0(n11), .Y(n13) );
  AOI221XLM U40 ( .A0(n15), .A1(n14), .B0(n32), .B1(n14), .C0(n13), .Y(n16) );
  OAI211XLM U41 ( .A0(COUNTER[0]), .A1(i_div_ratio[0]), .B0(n17), .C0(n16), 
        .Y(n18) );
  AOI21XLM U42 ( .A0(COUNTER[4]), .A1(n21), .B0(n18), .Y(n19) );
  OAI211XLM U43 ( .A0(COUNTER[4]), .A1(n21), .B0(n20), .C0(n19), .Y(n22) );
  AOI211XLM U44 ( .A0(COUNTER[5]), .A1(n25), .B0(n23), .C0(n22), .Y(n24) );
  OAI21XLM U45 ( .A0(COUNTER[5]), .A1(n25), .B0(n24), .Y(n70) );
  NAND2XLM U46 ( .A(n70), .B(I_CLK_EN), .Y(n39) );
  NOR2XLM U47 ( .A(COUNTER[0]), .B(n39), .Y(N56) );
  CLKINVX1M U48 ( .A(COUNTER[5]), .Y(n27) );
  NAND3XLM U49 ( .A(COUNTER[3]), .B(COUNTER[2]), .C(n34), .Y(n35) );
  CLKINVX1M U50 ( .A(n35), .Y(n36) );
  NAND2XLM U51 ( .A(COUNTER[4]), .B(n36), .Y(n26) );
  NAND3XLM U52 ( .A(COUNTER[5]), .B(COUNTER[4]), .C(n36), .Y(n38) );
  CLKINVX1M U53 ( .A(n38), .Y(n37) );
  AOI211XLM U54 ( .A0(n27), .A1(n26), .B0(n37), .C0(n39), .Y(N61) );
  CLKINVX1M U55 ( .A(COUNTER[3]), .Y(n29) );
  NAND2XLM U56 ( .A(COUNTER[2]), .B(n34), .Y(n28) );
  AOI211XLM U57 ( .A0(n29), .A1(n28), .B0(n36), .C0(n39), .Y(N59) );
  AOI211XLM U58 ( .A0(n31), .A1(n30), .B0(n34), .C0(n39), .Y(N57) );
  CLKINVX1M U59 ( .A(COUNTER[2]), .Y(n33) );
  AOI221XLM U60 ( .A0(COUNTER[2]), .A1(n34), .B0(n33), .B1(n32), .C0(n39), .Y(
        N58) );
  CLKINVX1M U61 ( .A(COUNTER[4]), .Y(n42) );
  AOI221XLM U62 ( .A0(COUNTER[4]), .A1(n36), .B0(n42), .B1(n35), .C0(n39), .Y(
        N60) );
  AOI221XLM U63 ( .A0(COUNTER[6]), .A1(n37), .B0(n52), .B1(n38), .C0(n39), .Y(
        N62) );
  NOR2XLM U64 ( .A(n52), .B(n38), .Y(n41) );
  CLKINVX1M U65 ( .A(n41), .Y(n40) );
  AOI221XLM U66 ( .A0(COUNTER[7]), .A1(n41), .B0(n50), .B1(n40), .C0(n39), .Y(
        N63) );
  CLKINVX1M U67 ( .A(n53), .Y(n43) );
  AOI221XLM U68 ( .A0(COUNTER[4]), .A1(n43), .B0(n42), .B1(n53), .C0(n44), .Y(
        n68) );
  AOI31XLM U69 ( .A0(COUNTER[4]), .A1(n46), .A2(n53), .B0(n45), .Y(n67) );
  AOI21XLM U70 ( .A0(i_div_ratio[6]), .A1(n47), .B0(n61), .Y(n65) );
  OAI22XLM U71 ( .A0(COUNTER[0]), .A1(i_div_ratio[1]), .B0(i_div_ratio[2]), 
        .B1(n49), .Y(n48) );
  AOI221XLM U72 ( .A0(COUNTER[0]), .A1(i_div_ratio[1]), .B0(n49), .B1(
        i_div_ratio[2]), .C0(n48), .Y(n51) );
  OAI211XLM U73 ( .A0(i_div_ratio[7]), .A1(n52), .B0(n51), .C0(n50), .Y(n63)
         );
  AOI21XLM U74 ( .A0(i_div_ratio[4]), .A1(n54), .B0(n53), .Y(n58) );
  AOI221XLM U75 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[3]), .B0(i_div_ratio[2]), .B1(i_div_ratio[3]), .C0(n55), .Y(n57) );
  OAI22XLM U76 ( .A0(COUNTER[3]), .A1(n58), .B0(COUNTER[2]), .B1(n57), .Y(n56)
         );
  AOI221XLM U77 ( .A0(COUNTER[3]), .A1(n58), .B0(n57), .B1(COUNTER[2]), .C0(
        n56), .Y(n59) );
  OAI31XLM U78 ( .A0(COUNTER[6]), .A1(n61), .A2(n60), .B0(n59), .Y(n62) );
  AOI211XLM U79 ( .A0(n65), .A1(COUNTER[5]), .B0(n63), .C0(n62), .Y(n64) );
  OAI21XLM U80 ( .A0(n65), .A1(COUNTER[5]), .B0(n64), .Y(n66) );
  OAI31XLM U81 ( .A0(n68), .A1(n67), .A2(n66), .B0(I_CLK_EN), .Y(n69) );
  AOI2B1XLM U82 ( .A1N(DIVIDED_CLK), .A0(n70), .B0(n69), .Y(n6) );
endmodule


module I_CLK_DIV_DIV_RATIO_WIDTH3 ( i_ref_clk, i_rst_n, i_clk_en, i_div_ratio, 
        o_div_clk );
  input [2:0] i_div_ratio;
  input i_ref_clk, i_rst_n, i_clk_en;
  output o_div_clk;
  wire   I_CLK_EN, DIVIDED_CLK, N31, N32, N33, n24, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16;
  wire   [2:0] COUNTER;

  DFFRQX1M \COUNTER_reg[0]  ( .D(N31), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[0]) );
  DFFRQX1M \COUNTER_reg[1]  ( .D(N32), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[1]) );
  DFFRQX1M \COUNTER_reg[2]  ( .D(N33), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        COUNTER[2]) );
  MX2XLM U31 ( .A(i_ref_clk), .B(DIVIDED_CLK), .S0(I_CLK_EN), .Y(o_div_clk) );
  DFFRQX1M DIVIDED_CLK_reg ( .D(n24), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        DIVIDED_CLK) );
  NAND2XLM U3 ( .A(I_CLK_EN), .B(n12), .Y(n13) );
  CLKINVX1M U4 ( .A(i_div_ratio[1]), .Y(n5) );
  CLKINVX1M U5 ( .A(i_div_ratio[2]), .Y(n9) );
  NAND2XLM U6 ( .A(n5), .B(n9), .Y(I_CLK_EN) );
  CLKINVX1M U7 ( .A(COUNTER[2]), .Y(n14) );
  NAND2XLM U8 ( .A(COUNTER[0]), .B(COUNTER[1]), .Y(n15) );
  OAI21XLM U9 ( .A0(COUNTER[0]), .A1(COUNTER[1]), .B0(n15), .Y(n7) );
  AOI21XLM U10 ( .A0(i_div_ratio[2]), .A1(n14), .B0(n7), .Y(n6) );
  AOI21BXLM U11 ( .A0(i_div_ratio[1]), .A1(i_div_ratio[2]), .B0N(COUNTER[1]), 
        .Y(n1) );
  AOI211XLM U12 ( .A0(i_div_ratio[1]), .A1(COUNTER[0]), .B0(COUNTER[2]), .C0(
        n1), .Y(n8) );
  AOI221XLM U13 ( .A0(i_div_ratio[1]), .A1(COUNTER[0]), .B0(n14), .B1(
        COUNTER[0]), .C0(i_div_ratio[0]), .Y(n2) );
  AOI211XLM U14 ( .A0(COUNTER[2]), .A1(n9), .B0(n8), .C0(n2), .Y(n4) );
  AOI32XLM U15 ( .A0(COUNTER[1]), .A1(i_div_ratio[0]), .A2(n5), .B0(COUNTER[0]), .B1(i_div_ratio[0]), .Y(n3) );
  OAI211XLM U16 ( .A0(n6), .A1(n5), .B0(n4), .C0(n3), .Y(n12) );
  NOR2XLM U17 ( .A(COUNTER[0]), .B(n13), .Y(N31) );
  NOR2XLM U18 ( .A(n7), .B(n13), .Y(N32) );
  OAI31XLM U19 ( .A0(COUNTER[0]), .A1(COUNTER[1]), .A2(n9), .B0(n8), .Y(n10)
         );
  NAND2XLM U20 ( .A(DIVIDED_CLK), .B(n10), .Y(n11) );
  AOI21BXLM U21 ( .A0(n12), .A1(n11), .B0N(I_CLK_EN), .Y(n24) );
  CLKINVX1M U22 ( .A(n15), .Y(n16) );
  AOI221XLM U23 ( .A0(n16), .A1(COUNTER[2]), .B0(n15), .B1(n14), .C0(n13), .Y(
        N33) );
endmodule


module pulse_gen ( CLK, RST, Signal, enable_pulse );
  input CLK, RST, Signal;
  output enable_pulse;
  wire   Signal_reg, Gen_Pulse;

  DFFRQX1M Signal_reg_reg ( .D(Signal), .CK(CLK), .RN(RST), .Q(Signal_reg) );
  DFFRQX1M enable_pulse_reg ( .D(Gen_Pulse), .CK(CLK), .RN(RST), .Q(
        enable_pulse) );
  NOR2BXLM U3 ( .AN(Signal), .B(Signal_reg), .Y(Gen_Pulse) );
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
  wire   \RegFile[4][7] , \RegFile[4][6] , \RegFile[4][5] , \RegFile[4][4] ,
         \RegFile[4][3] , \RegFile[4][2] , \RegFile[4][1] , \RegFile[4][0] ,
         \RegFile[5][7] , \RegFile[5][6] , \RegFile[5][5] , \RegFile[5][4] ,
         \RegFile[5][3] , \RegFile[5][2] , \RegFile[5][1] , \RegFile[5][0] ,
         \RegFile[6][7] , \RegFile[6][6] , \RegFile[6][5] , \RegFile[6][4] ,
         \RegFile[6][3] , \RegFile[6][2] , \RegFile[6][1] , \RegFile[6][0] ,
         \RegFile[7][7] , \RegFile[7][6] , \RegFile[7][5] , \RegFile[7][4] ,
         \RegFile[7][3] , \RegFile[7][2] , \RegFile[7][1] , \RegFile[7][0] ,
         \RegFile[8][7] , \RegFile[8][6] , \RegFile[8][5] , \RegFile[8][4] ,
         \RegFile[8][3] , \RegFile[8][2] , \RegFile[8][1] , \RegFile[8][0] ,
         \RegFile[9][7] , \RegFile[9][6] , \RegFile[9][5] , \RegFile[9][4] ,
         \RegFile[9][3] , \RegFile[9][2] , \RegFile[9][1] , \RegFile[9][0] ,
         \RegFile[10][7] , \RegFile[10][6] , \RegFile[10][5] ,
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
         \RegFile[15][2] , \RegFile[15][1] , \RegFile[15][0] , N59, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131;

  DFFRQX1M Rd_D_Valid_reg ( .D(N59), .CK(clk), .RN(rst), .Q(Rd_D_Valid) );
  DFFRQX1M \RegFile_reg[0][5]  ( .D(n269), .CK(clk), .RN(rst), .Q(REG0[5]) );
  DFFRQX1M \RegFile_reg[0][4]  ( .D(n268), .CK(clk), .RN(rst), .Q(REG0[4]) );
  DFFRQX1M \RegFile_reg[0][3]  ( .D(n267), .CK(clk), .RN(rst), .Q(REG0[3]) );
  DFFRQX1M \RegFile_reg[0][2]  ( .D(n266), .CK(clk), .RN(rst), .Q(REG0[2]) );
  DFFRQX1M \RegFile_reg[0][1]  ( .D(n265), .CK(clk), .RN(rst), .Q(REG0[1]) );
  DFFRQX1M \RegFile_reg[0][0]  ( .D(n264), .CK(clk), .RN(rst), .Q(REG0[0]) );
  DFFRQX1M \RegFile_reg[2][6]  ( .D(n255), .CK(clk), .RN(rst), .Q(REG2[6]) );
  DFFRQX1M \RegFile_reg[2][5]  ( .D(n254), .CK(clk), .RN(rst), .Q(REG2[5]) );
  DFFRQX1M \RegFile_reg[2][4]  ( .D(n253), .CK(clk), .RN(rst), .Q(REG2[4]) );
  DFFRQX1M \RegFile_reg[2][3]  ( .D(n252), .CK(clk), .RN(rst), .Q(REG2[3]) );
  DFFRQX1M \RegFile_reg[2][2]  ( .D(n251), .CK(clk), .RN(rst), .Q(REG2[2]) );
  DFFRQX1M \RegFile_reg[2][1]  ( .D(n250), .CK(clk), .RN(rst), .Q(REG2[1]) );
  DFFRQX1M \RegFile_reg[3][7]  ( .D(n249), .CK(clk), .RN(rst), .Q(REG3[7]) );
  DFFRQX1M \RegFile_reg[3][6]  ( .D(n248), .CK(clk), .RN(rst), .Q(REG3[6]) );
  DFFRQX1M \RegFile_reg[3][4]  ( .D(n247), .CK(clk), .RN(rst), .Q(REG3[4]) );
  DFFRQX1M \RegFile_reg[3][3]  ( .D(n246), .CK(clk), .RN(rst), .Q(REG3[3]) );
  DFFRQX1M \RegFile_reg[3][2]  ( .D(n245), .CK(clk), .RN(rst), .Q(REG3[2]) );
  DFFRQX1M \RegFile_reg[3][1]  ( .D(n244), .CK(clk), .RN(rst), .Q(REG3[1]) );
  DFFRQX1M \RegFile_reg[3][0]  ( .D(n243), .CK(clk), .RN(rst), .Q(REG3[0]) );
  DFFRQX1M \RegFile_reg[4][7]  ( .D(n242), .CK(clk), .RN(rst), .Q(
        \RegFile[4][7] ) );
  DFFRQX1M \RegFile_reg[4][6]  ( .D(n241), .CK(clk), .RN(rst), .Q(
        \RegFile[4][6] ) );
  DFFRQX1M \RegFile_reg[4][5]  ( .D(n240), .CK(clk), .RN(rst), .Q(
        \RegFile[4][5] ) );
  DFFRQX1M \RegFile_reg[4][4]  ( .D(n239), .CK(clk), .RN(rst), .Q(
        \RegFile[4][4] ) );
  DFFRQX1M \RegFile_reg[4][3]  ( .D(n238), .CK(clk), .RN(rst), .Q(
        \RegFile[4][3] ) );
  DFFRQX1M \RegFile_reg[4][2]  ( .D(n237), .CK(clk), .RN(rst), .Q(
        \RegFile[4][2] ) );
  DFFRQX1M \RegFile_reg[4][1]  ( .D(n236), .CK(clk), .RN(rst), .Q(
        \RegFile[4][1] ) );
  DFFRQX1M \RegFile_reg[4][0]  ( .D(n235), .CK(clk), .RN(rst), .Q(
        \RegFile[4][0] ) );
  DFFRQX1M \RegFile_reg[5][7]  ( .D(n234), .CK(clk), .RN(rst), .Q(
        \RegFile[5][7] ) );
  DFFRQX1M \RegFile_reg[5][6]  ( .D(n233), .CK(clk), .RN(rst), .Q(
        \RegFile[5][6] ) );
  DFFRQX1M \RegFile_reg[5][5]  ( .D(n232), .CK(clk), .RN(rst), .Q(
        \RegFile[5][5] ) );
  DFFRQX1M \RegFile_reg[5][4]  ( .D(n231), .CK(clk), .RN(rst), .Q(
        \RegFile[5][4] ) );
  DFFRQX1M \RegFile_reg[5][3]  ( .D(n230), .CK(clk), .RN(rst), .Q(
        \RegFile[5][3] ) );
  DFFRQX1M \RegFile_reg[5][2]  ( .D(n229), .CK(clk), .RN(rst), .Q(
        \RegFile[5][2] ) );
  DFFRQX1M \RegFile_reg[5][1]  ( .D(n228), .CK(clk), .RN(rst), .Q(
        \RegFile[5][1] ) );
  DFFRQX1M \RegFile_reg[5][0]  ( .D(n227), .CK(clk), .RN(rst), .Q(
        \RegFile[5][0] ) );
  DFFRQX1M \RegFile_reg[6][7]  ( .D(n226), .CK(clk), .RN(rst), .Q(
        \RegFile[6][7] ) );
  DFFRQX1M \RegFile_reg[6][6]  ( .D(n225), .CK(clk), .RN(rst), .Q(
        \RegFile[6][6] ) );
  DFFRQX1M \RegFile_reg[6][5]  ( .D(n224), .CK(clk), .RN(rst), .Q(
        \RegFile[6][5] ) );
  DFFRQX1M \RegFile_reg[6][4]  ( .D(n223), .CK(clk), .RN(rst), .Q(
        \RegFile[6][4] ) );
  DFFRQX1M \RegFile_reg[6][3]  ( .D(n222), .CK(clk), .RN(rst), .Q(
        \RegFile[6][3] ) );
  DFFRQX1M \RegFile_reg[6][2]  ( .D(n221), .CK(clk), .RN(rst), .Q(
        \RegFile[6][2] ) );
  DFFRQX1M \RegFile_reg[6][1]  ( .D(n220), .CK(clk), .RN(rst), .Q(
        \RegFile[6][1] ) );
  DFFRQX1M \RegFile_reg[6][0]  ( .D(n219), .CK(clk), .RN(rst), .Q(
        \RegFile[6][0] ) );
  DFFRQX1M \RegFile_reg[7][7]  ( .D(n218), .CK(clk), .RN(rst), .Q(
        \RegFile[7][7] ) );
  DFFRQX1M \RegFile_reg[7][6]  ( .D(n217), .CK(clk), .RN(rst), .Q(
        \RegFile[7][6] ) );
  DFFRQX1M \RegFile_reg[7][5]  ( .D(n216), .CK(clk), .RN(rst), .Q(
        \RegFile[7][5] ) );
  DFFRQX1M \RegFile_reg[7][4]  ( .D(n215), .CK(clk), .RN(rst), .Q(
        \RegFile[7][4] ) );
  DFFRQX1M \RegFile_reg[7][3]  ( .D(n214), .CK(clk), .RN(rst), .Q(
        \RegFile[7][3] ) );
  DFFRQX1M \RegFile_reg[7][2]  ( .D(n213), .CK(clk), .RN(rst), .Q(
        \RegFile[7][2] ) );
  DFFRQX1M \RegFile_reg[7][1]  ( .D(n212), .CK(clk), .RN(rst), .Q(
        \RegFile[7][1] ) );
  DFFRQX1M \RegFile_reg[7][0]  ( .D(n211), .CK(clk), .RN(rst), .Q(
        \RegFile[7][0] ) );
  DFFRQX1M \RegFile_reg[8][7]  ( .D(n210), .CK(clk), .RN(rst), .Q(
        \RegFile[8][7] ) );
  DFFRQX1M \RegFile_reg[8][6]  ( .D(n209), .CK(clk), .RN(rst), .Q(
        \RegFile[8][6] ) );
  DFFRQX1M \RegFile_reg[8][5]  ( .D(n208), .CK(clk), .RN(rst), .Q(
        \RegFile[8][5] ) );
  DFFRQX1M \RegFile_reg[8][4]  ( .D(n207), .CK(clk), .RN(rst), .Q(
        \RegFile[8][4] ) );
  DFFRQX1M \RegFile_reg[8][3]  ( .D(n206), .CK(clk), .RN(rst), .Q(
        \RegFile[8][3] ) );
  DFFRQX1M \RegFile_reg[8][2]  ( .D(n205), .CK(clk), .RN(rst), .Q(
        \RegFile[8][2] ) );
  DFFRQX1M \RegFile_reg[8][1]  ( .D(n204), .CK(clk), .RN(rst), .Q(
        \RegFile[8][1] ) );
  DFFRQX1M \RegFile_reg[8][0]  ( .D(n203), .CK(clk), .RN(rst), .Q(
        \RegFile[8][0] ) );
  DFFRQX1M \RegFile_reg[9][7]  ( .D(n202), .CK(clk), .RN(rst), .Q(
        \RegFile[9][7] ) );
  DFFRQX1M \RegFile_reg[9][6]  ( .D(n201), .CK(clk), .RN(rst), .Q(
        \RegFile[9][6] ) );
  DFFRQX1M \RegFile_reg[9][5]  ( .D(n200), .CK(clk), .RN(rst), .Q(
        \RegFile[9][5] ) );
  DFFRQX1M \RegFile_reg[9][4]  ( .D(n199), .CK(clk), .RN(rst), .Q(
        \RegFile[9][4] ) );
  DFFRQX1M \RegFile_reg[9][3]  ( .D(n198), .CK(clk), .RN(rst), .Q(
        \RegFile[9][3] ) );
  DFFRQX1M \RegFile_reg[9][2]  ( .D(n197), .CK(clk), .RN(rst), .Q(
        \RegFile[9][2] ) );
  DFFRQX1M \RegFile_reg[9][1]  ( .D(n196), .CK(clk), .RN(rst), .Q(
        \RegFile[9][1] ) );
  DFFRQX1M \RegFile_reg[9][0]  ( .D(n195), .CK(clk), .RN(rst), .Q(
        \RegFile[9][0] ) );
  DFFRQX1M \RegFile_reg[10][7]  ( .D(n194), .CK(clk), .RN(rst), .Q(
        \RegFile[10][7] ) );
  DFFRQX1M \RegFile_reg[10][6]  ( .D(n193), .CK(clk), .RN(rst), .Q(
        \RegFile[10][6] ) );
  DFFRQX1M \RegFile_reg[10][5]  ( .D(n192), .CK(clk), .RN(rst), .Q(
        \RegFile[10][5] ) );
  DFFRQX1M \RegFile_reg[10][4]  ( .D(n191), .CK(clk), .RN(rst), .Q(
        \RegFile[10][4] ) );
  DFFRQX1M \RegFile_reg[10][3]  ( .D(n190), .CK(clk), .RN(rst), .Q(
        \RegFile[10][3] ) );
  DFFRQX1M \RegFile_reg[10][2]  ( .D(n189), .CK(clk), .RN(rst), .Q(
        \RegFile[10][2] ) );
  DFFRQX1M \RegFile_reg[10][1]  ( .D(n188), .CK(clk), .RN(rst), .Q(
        \RegFile[10][1] ) );
  DFFRQX1M \RegFile_reg[10][0]  ( .D(n187), .CK(clk), .RN(rst), .Q(
        \RegFile[10][0] ) );
  DFFRQX1M \RegFile_reg[11][7]  ( .D(n186), .CK(clk), .RN(rst), .Q(
        \RegFile[11][7] ) );
  DFFRQX1M \RegFile_reg[11][6]  ( .D(n185), .CK(clk), .RN(rst), .Q(
        \RegFile[11][6] ) );
  DFFRQX1M \RegFile_reg[11][5]  ( .D(n184), .CK(clk), .RN(rst), .Q(
        \RegFile[11][5] ) );
  DFFRQX1M \RegFile_reg[11][4]  ( .D(n183), .CK(clk), .RN(rst), .Q(
        \RegFile[11][4] ) );
  DFFRQX1M \RegFile_reg[11][3]  ( .D(n182), .CK(clk), .RN(rst), .Q(
        \RegFile[11][3] ) );
  DFFRQX1M \RegFile_reg[11][2]  ( .D(n181), .CK(clk), .RN(rst), .Q(
        \RegFile[11][2] ) );
  DFFRQX1M \RegFile_reg[11][1]  ( .D(n180), .CK(clk), .RN(rst), .Q(
        \RegFile[11][1] ) );
  DFFRQX1M \RegFile_reg[11][0]  ( .D(n179), .CK(clk), .RN(rst), .Q(
        \RegFile[11][0] ) );
  DFFRQX1M \RegFile_reg[12][7]  ( .D(n178), .CK(clk), .RN(rst), .Q(
        \RegFile[12][7] ) );
  DFFRQX1M \RegFile_reg[12][6]  ( .D(n177), .CK(clk), .RN(rst), .Q(
        \RegFile[12][6] ) );
  DFFRQX1M \RegFile_reg[12][5]  ( .D(n176), .CK(clk), .RN(rst), .Q(
        \RegFile[12][5] ) );
  DFFRQX1M \RegFile_reg[12][4]  ( .D(n175), .CK(clk), .RN(rst), .Q(
        \RegFile[12][4] ) );
  DFFRQX1M \RegFile_reg[12][3]  ( .D(n174), .CK(clk), .RN(rst), .Q(
        \RegFile[12][3] ) );
  DFFRQX1M \RegFile_reg[12][2]  ( .D(n173), .CK(clk), .RN(rst), .Q(
        \RegFile[12][2] ) );
  DFFRQX1M \RegFile_reg[12][1]  ( .D(n172), .CK(clk), .RN(rst), .Q(
        \RegFile[12][1] ) );
  DFFRQX1M \RegFile_reg[12][0]  ( .D(n171), .CK(clk), .RN(rst), .Q(
        \RegFile[12][0] ) );
  DFFRQX1M \RegFile_reg[13][7]  ( .D(n170), .CK(clk), .RN(rst), .Q(
        \RegFile[13][7] ) );
  DFFRQX1M \RegFile_reg[13][6]  ( .D(n169), .CK(clk), .RN(rst), .Q(
        \RegFile[13][6] ) );
  DFFRQX1M \RegFile_reg[13][5]  ( .D(n168), .CK(clk), .RN(rst), .Q(
        \RegFile[13][5] ) );
  DFFRQX1M \RegFile_reg[13][4]  ( .D(n167), .CK(clk), .RN(rst), .Q(
        \RegFile[13][4] ) );
  DFFRQX1M \RegFile_reg[13][3]  ( .D(n166), .CK(clk), .RN(rst), .Q(
        \RegFile[13][3] ) );
  DFFRQX1M \RegFile_reg[13][2]  ( .D(n165), .CK(clk), .RN(rst), .Q(
        \RegFile[13][2] ) );
  DFFRQX1M \RegFile_reg[13][1]  ( .D(n164), .CK(clk), .RN(rst), .Q(
        \RegFile[13][1] ) );
  DFFRQX1M \RegFile_reg[13][0]  ( .D(n163), .CK(clk), .RN(rst), .Q(
        \RegFile[13][0] ) );
  DFFRQX1M \RegFile_reg[14][7]  ( .D(n162), .CK(clk), .RN(rst), .Q(
        \RegFile[14][7] ) );
  DFFRQX1M \RegFile_reg[14][6]  ( .D(n161), .CK(clk), .RN(rst), .Q(
        \RegFile[14][6] ) );
  DFFRQX1M \RegFile_reg[14][5]  ( .D(n160), .CK(clk), .RN(rst), .Q(
        \RegFile[14][5] ) );
  DFFRQX1M \RegFile_reg[14][4]  ( .D(n159), .CK(clk), .RN(rst), .Q(
        \RegFile[14][4] ) );
  DFFRQX1M \RegFile_reg[14][3]  ( .D(n158), .CK(clk), .RN(rst), .Q(
        \RegFile[14][3] ) );
  DFFRQX1M \RegFile_reg[14][2]  ( .D(n157), .CK(clk), .RN(rst), .Q(
        \RegFile[14][2] ) );
  DFFRQX1M \RegFile_reg[14][1]  ( .D(n156), .CK(clk), .RN(rst), .Q(
        \RegFile[14][1] ) );
  DFFRQX1M \RegFile_reg[14][0]  ( .D(n155), .CK(clk), .RN(rst), .Q(
        \RegFile[14][0] ) );
  DFFRQX1M \RegFile_reg[15][7]  ( .D(n154), .CK(clk), .RN(rst), .Q(
        \RegFile[15][7] ) );
  DFFRQX1M \RdData_reg[7]  ( .D(n153), .CK(clk), .RN(rst), .Q(RdData[7]) );
  DFFRQX1M \RegFile_reg[15][6]  ( .D(n152), .CK(clk), .RN(rst), .Q(
        \RegFile[15][6] ) );
  DFFRQX1M \RdData_reg[6]  ( .D(n151), .CK(clk), .RN(rst), .Q(RdData[6]) );
  DFFRQX1M \RegFile_reg[15][5]  ( .D(n150), .CK(clk), .RN(rst), .Q(
        \RegFile[15][5] ) );
  DFFRQX1M \RdData_reg[5]  ( .D(n149), .CK(clk), .RN(rst), .Q(RdData[5]) );
  DFFRQX1M \RegFile_reg[15][4]  ( .D(n148), .CK(clk), .RN(rst), .Q(
        \RegFile[15][4] ) );
  DFFRQX1M \RdData_reg[4]  ( .D(n147), .CK(clk), .RN(rst), .Q(RdData[4]) );
  DFFRQX1M \RegFile_reg[15][3]  ( .D(n146), .CK(clk), .RN(rst), .Q(
        \RegFile[15][3] ) );
  DFFRQX1M \RdData_reg[3]  ( .D(n145), .CK(clk), .RN(rst), .Q(RdData[3]) );
  DFFRQX1M \RegFile_reg[15][2]  ( .D(n144), .CK(clk), .RN(rst), .Q(
        \RegFile[15][2] ) );
  DFFRQX1M \RdData_reg[2]  ( .D(n143), .CK(clk), .RN(rst), .Q(RdData[2]) );
  DFFRQX1M \RegFile_reg[15][1]  ( .D(n142), .CK(clk), .RN(rst), .Q(
        \RegFile[15][1] ) );
  DFFRQX1M \RdData_reg[1]  ( .D(n141), .CK(clk), .RN(rst), .Q(RdData[1]) );
  DFFRQX1M \RegFile_reg[15][0]  ( .D(n140), .CK(clk), .RN(rst), .Q(
        \RegFile[15][0] ) );
  DFFRQX1M \RdData_reg[0]  ( .D(n139), .CK(clk), .RN(rst), .Q(RdData[0]) );
  DFFSQX2M \RegFile_reg[2][7]  ( .D(n138), .CK(clk), .SN(rst), .Q(REG2[7]) );
  DFFSQX2M \RegFile_reg[2][0]  ( .D(n137), .CK(clk), .SN(rst), .Q(REG2[0]) );
  DFFSQX2M \RegFile_reg[3][5]  ( .D(n136), .CK(clk), .SN(rst), .Q(REG3[5]) );
  DFFRQX1M \RegFile_reg[1][0]  ( .D(n256), .CK(clk), .RN(rst), .Q(REG1[0]) );
  DFFRQX1M \RegFile_reg[1][2]  ( .D(n258), .CK(clk), .RN(rst), .Q(REG1[2]) );
  DFFRQX1M \RegFile_reg[1][5]  ( .D(n261), .CK(clk), .RN(rst), .Q(REG1[5]) );
  DFFRQX1M \RegFile_reg[1][3]  ( .D(n259), .CK(clk), .RN(rst), .Q(REG1[3]) );
  DFFRQX1M \RegFile_reg[0][7]  ( .D(n271), .CK(clk), .RN(rst), .Q(REG0[7]) );
  DFFRQX1M \RegFile_reg[0][6]  ( .D(n270), .CK(clk), .RN(rst), .Q(REG0[6]) );
  DFFRQX1M \RegFile_reg[1][7]  ( .D(n263), .CK(clk), .RN(rst), .Q(REG1[7]) );
  DFFRQX1M \RegFile_reg[1][6]  ( .D(n262), .CK(clk), .RN(rst), .Q(REG1[6]) );
  DFFRQX1M \RegFile_reg[1][4]  ( .D(n260), .CK(clk), .RN(rst), .Q(REG1[4]) );
  DFFRQX1M \RegFile_reg[1][1]  ( .D(n257), .CK(clk), .RN(rst), .Q(REG1[1]) );
  NOR2XLM U3 ( .A(n99), .B(n98), .Y(n101) );
  NOR3X2M U4 ( .A(Address[2]), .B(Address[3]), .C(n4), .Y(n1) );
  AND2X1M U5 ( .A(n1), .B(n117), .Y(n129) );
  AND2X1M U6 ( .A(n109), .B(n117), .Y(n108) );
  AND2X1M U7 ( .A(n112), .B(n117), .Y(n111) );
  AND2X1M U8 ( .A(n106), .B(n117), .Y(n105) );
  AND2X1M U9 ( .A(n103), .B(n117), .Y(n102) );
  AND2X1M U10 ( .A(n115), .B(n117), .Y(n114) );
  AND2X1M U11 ( .A(n120), .B(n117), .Y(n118) );
  NOR2X1M U12 ( .A(Address[1]), .B(n5), .Y(n115) );
  NAND3BX1M U13 ( .AN(RdEn), .B(WrEn), .C(Address[0]), .Y(n119) );
  NOR3BX1M U14 ( .AN(WrEn), .B(RdEn), .C(Address[0]), .Y(n117) );
  NOR2BXLM U15 ( .AN(n120), .B(n119), .Y(n126) );
  NOR2BXLM U16 ( .AN(n115), .B(n119), .Y(n116) );
  NOR2BXLM U17 ( .AN(n109), .B(n119), .Y(n110) );
  NOR2BXLM U18 ( .AN(n103), .B(n119), .Y(n104) );
  NOR2BXLM U19 ( .AN(n1), .B(n119), .Y(n131) );
  NOR2XLM U20 ( .A(n98), .B(n119), .Y(n100) );
  CLKINVX1M U21 ( .A(n117), .Y(n99) );
  NAND4XLM U22 ( .A(n24), .B(n23), .C(n22), .D(n21), .Y(n25) );
  OAI21XLM U23 ( .A0(n71), .A1(n95), .B0(n70), .Y(n141) );
  OAI21XLM U24 ( .A0(n16), .A1(n95), .B0(n15), .Y(n143) );
  NAND4XLM U25 ( .A(n13), .B(n12), .C(n11), .D(n10), .Y(n14) );
  NAND4XLM U26 ( .A(n46), .B(n45), .C(n44), .D(n43), .Y(n47) );
  OAI21XLM U27 ( .A0(n38), .A1(n95), .B0(n37), .Y(n147) );
  OAI21XLM U28 ( .A0(n60), .A1(n95), .B0(n59), .Y(n149) );
  NAND4XLM U29 ( .A(n57), .B(n56), .C(n55), .D(n54), .Y(n58) );
  OAI21XLM U30 ( .A0(n82), .A1(n95), .B0(n81), .Y(n151) );
  NAND4XLM U31 ( .A(n79), .B(n78), .C(n77), .D(n76), .Y(n80) );
  OAI21XLM U32 ( .A0(n96), .A1(n95), .B0(n94), .Y(n153) );
  NOR3X2M U33 ( .A(Address[1]), .B(Address[2]), .C(Address[3]), .Y(n97) );
  NOR2BXLM U34 ( .AN(n112), .B(n119), .Y(n113) );
  NOR3X2M U35 ( .A(Address[2]), .B(n4), .C(n2), .Y(n112) );
  NOR3X2M U36 ( .A(Address[1]), .B(Address[3]), .C(n3), .Y(n103) );
  NOR2BXLM U37 ( .AN(n106), .B(n119), .Y(n107) );
  NOR3X2M U38 ( .A(Address[3]), .B(n3), .C(n4), .Y(n106) );
  NOR3X2M U39 ( .A(Address[1]), .B(Address[2]), .C(n2), .Y(n109) );
  AOI22XLM U40 ( .A0(n106), .A1(\RegFile[6][0] ), .B0(n103), .B1(
        \RegFile[4][0] ), .Y(n22) );
  AOI22XLM U41 ( .A0(n112), .A1(\RegFile[10][3] ), .B0(n109), .B1(
        \RegFile[8][3] ), .Y(n45) );
  AOI22XLM U42 ( .A0(n120), .A1(\RegFile[14][7] ), .B0(n115), .B1(
        \RegFile[12][7] ), .Y(n88) );
  NAND4XLM U43 ( .A(n68), .B(n67), .C(n66), .D(n65), .Y(n69) );
  NAND4XLM U44 ( .A(n35), .B(n34), .C(n33), .D(n32), .Y(n36) );
  NAND4XLM U45 ( .A(n90), .B(n89), .C(n88), .D(n87), .Y(n92) );
  CLKINVX1M U46 ( .A(n97), .Y(n98) );
  AND4XLM U47 ( .A(n9), .B(n8), .C(n7), .D(n6), .Y(n16) );
  OAI21XLM U48 ( .A0(n27), .A1(n95), .B0(n26), .Y(n139) );
  OAI21XLM U49 ( .A0(n49), .A1(n95), .B0(n48), .Y(n145) );
  CLKINVX1M U50 ( .A(n91), .Y(N59) );
  NAND2BXLM U51 ( .AN(WrEn), .B(RdEn), .Y(n91) );
  CLKINVX1M U52 ( .A(Address[1]), .Y(n4) );
  AOI22XLM U53 ( .A0(n1), .A1(REG3[2]), .B0(n97), .B1(REG1[2]), .Y(n9) );
  CLKINVX1M U54 ( .A(Address[2]), .Y(n3) );
  AOI22XLM U55 ( .A0(n106), .A1(\RegFile[7][2] ), .B0(n103), .B1(
        \RegFile[5][2] ), .Y(n8) );
  CLKINVX1M U56 ( .A(Address[3]), .Y(n2) );
  AOI22XLM U57 ( .A0(n112), .A1(\RegFile[11][2] ), .B0(n109), .B1(
        \RegFile[9][2] ), .Y(n7) );
  NOR3X2M U58 ( .A(n4), .B(n3), .C(n2), .Y(n120) );
  NAND2XLM U59 ( .A(Address[2]), .B(Address[3]), .Y(n5) );
  AOI22XLM U60 ( .A0(n120), .A1(\RegFile[15][2] ), .B0(n115), .B1(
        \RegFile[13][2] ), .Y(n6) );
  NAND2XLM U61 ( .A(N59), .B(Address[0]), .Y(n95) );
  NOR2XLM U62 ( .A(Address[0]), .B(n91), .Y(n93) );
  AOI22XLM U63 ( .A0(n120), .A1(\RegFile[14][2] ), .B0(n115), .B1(
        \RegFile[12][2] ), .Y(n13) );
  AOI22XLM U64 ( .A0(n112), .A1(\RegFile[10][2] ), .B0(n109), .B1(
        \RegFile[8][2] ), .Y(n12) );
  AOI22XLM U65 ( .A0(n106), .A1(\RegFile[6][2] ), .B0(n103), .B1(
        \RegFile[4][2] ), .Y(n11) );
  AOI22XLM U66 ( .A0(n1), .A1(REG2[2]), .B0(n97), .B1(REG0[2]), .Y(n10) );
  AOI22XLM U67 ( .A0(n93), .A1(n14), .B0(RdData[2]), .B1(n91), .Y(n15) );
  AOI22XLM U68 ( .A0(n1), .A1(REG3[0]), .B0(n97), .B1(REG1[0]), .Y(n20) );
  AOI22XLM U69 ( .A0(n106), .A1(\RegFile[7][0] ), .B0(n103), .B1(
        \RegFile[5][0] ), .Y(n19) );
  AOI22XLM U70 ( .A0(n112), .A1(\RegFile[11][0] ), .B0(n109), .B1(
        \RegFile[9][0] ), .Y(n18) );
  AOI22XLM U71 ( .A0(n120), .A1(\RegFile[15][0] ), .B0(n115), .B1(
        \RegFile[13][0] ), .Y(n17) );
  AND4XLM U72 ( .A(n20), .B(n19), .C(n18), .D(n17), .Y(n27) );
  AOI22XLM U73 ( .A0(n120), .A1(\RegFile[14][0] ), .B0(n115), .B1(
        \RegFile[12][0] ), .Y(n24) );
  AOI22XLM U74 ( .A0(n112), .A1(\RegFile[10][0] ), .B0(n109), .B1(
        \RegFile[8][0] ), .Y(n23) );
  AOI22XLM U75 ( .A0(n1), .A1(REG2[0]), .B0(n97), .B1(REG0[0]), .Y(n21) );
  AOI22XLM U76 ( .A0(n93), .A1(n25), .B0(RdData[0]), .B1(n91), .Y(n26) );
  AOI22XLM U77 ( .A0(n1), .A1(REG3[4]), .B0(n97), .B1(REG1[4]), .Y(n31) );
  AOI22XLM U78 ( .A0(n106), .A1(\RegFile[7][4] ), .B0(n103), .B1(
        \RegFile[5][4] ), .Y(n30) );
  AOI22XLM U79 ( .A0(n112), .A1(\RegFile[11][4] ), .B0(n109), .B1(
        \RegFile[9][4] ), .Y(n29) );
  AOI22XLM U80 ( .A0(n120), .A1(\RegFile[15][4] ), .B0(n115), .B1(
        \RegFile[13][4] ), .Y(n28) );
  AND4XLM U81 ( .A(n31), .B(n30), .C(n29), .D(n28), .Y(n38) );
  AOI22XLM U82 ( .A0(n120), .A1(\RegFile[14][4] ), .B0(n115), .B1(
        \RegFile[12][4] ), .Y(n35) );
  AOI22XLM U83 ( .A0(n112), .A1(\RegFile[10][4] ), .B0(n109), .B1(
        \RegFile[8][4] ), .Y(n34) );
  AOI22XLM U84 ( .A0(n106), .A1(\RegFile[6][4] ), .B0(n103), .B1(
        \RegFile[4][4] ), .Y(n33) );
  AOI22XLM U85 ( .A0(n1), .A1(REG2[4]), .B0(n97), .B1(REG0[4]), .Y(n32) );
  AOI22XLM U86 ( .A0(n93), .A1(n36), .B0(RdData[4]), .B1(n91), .Y(n37) );
  AOI22XLM U87 ( .A0(n1), .A1(REG3[3]), .B0(n97), .B1(REG1[3]), .Y(n42) );
  AOI22XLM U88 ( .A0(n106), .A1(\RegFile[7][3] ), .B0(n103), .B1(
        \RegFile[5][3] ), .Y(n41) );
  AOI22XLM U89 ( .A0(n112), .A1(\RegFile[11][3] ), .B0(n109), .B1(
        \RegFile[9][3] ), .Y(n40) );
  AOI22XLM U90 ( .A0(n120), .A1(\RegFile[15][3] ), .B0(n115), .B1(
        \RegFile[13][3] ), .Y(n39) );
  AND4XLM U91 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(n49) );
  AOI22XLM U92 ( .A0(n120), .A1(\RegFile[14][3] ), .B0(n115), .B1(
        \RegFile[12][3] ), .Y(n46) );
  AOI22XLM U93 ( .A0(n106), .A1(\RegFile[6][3] ), .B0(n103), .B1(
        \RegFile[4][3] ), .Y(n44) );
  AOI22XLM U94 ( .A0(n1), .A1(REG2[3]), .B0(n97), .B1(REG0[3]), .Y(n43) );
  AOI22XLM U95 ( .A0(n93), .A1(n47), .B0(RdData[3]), .B1(n91), .Y(n48) );
  AOI22XLM U96 ( .A0(n1), .A1(REG3[5]), .B0(n97), .B1(REG1[5]), .Y(n53) );
  AOI22XLM U97 ( .A0(n106), .A1(\RegFile[7][5] ), .B0(n103), .B1(
        \RegFile[5][5] ), .Y(n52) );
  AOI22XLM U98 ( .A0(n112), .A1(\RegFile[11][5] ), .B0(n109), .B1(
        \RegFile[9][5] ), .Y(n51) );
  AOI22XLM U99 ( .A0(n120), .A1(\RegFile[15][5] ), .B0(n115), .B1(
        \RegFile[13][5] ), .Y(n50) );
  AND4XLM U100 ( .A(n53), .B(n52), .C(n51), .D(n50), .Y(n60) );
  AOI22XLM U101 ( .A0(n120), .A1(\RegFile[14][5] ), .B0(n115), .B1(
        \RegFile[12][5] ), .Y(n57) );
  AOI22XLM U102 ( .A0(n112), .A1(\RegFile[10][5] ), .B0(n109), .B1(
        \RegFile[8][5] ), .Y(n56) );
  AOI22XLM U103 ( .A0(n106), .A1(\RegFile[6][5] ), .B0(n103), .B1(
        \RegFile[4][5] ), .Y(n55) );
  AOI22XLM U104 ( .A0(n1), .A1(REG2[5]), .B0(n97), .B1(REG0[5]), .Y(n54) );
  AOI22XLM U105 ( .A0(n93), .A1(n58), .B0(RdData[5]), .B1(n91), .Y(n59) );
  AOI22XLM U106 ( .A0(n1), .A1(REG3[1]), .B0(n97), .B1(REG1[1]), .Y(n64) );
  AOI22XLM U107 ( .A0(n106), .A1(\RegFile[7][1] ), .B0(n103), .B1(
        \RegFile[5][1] ), .Y(n63) );
  AOI22XLM U108 ( .A0(n112), .A1(\RegFile[11][1] ), .B0(n109), .B1(
        \RegFile[9][1] ), .Y(n62) );
  AOI22XLM U109 ( .A0(n120), .A1(\RegFile[15][1] ), .B0(n115), .B1(
        \RegFile[13][1] ), .Y(n61) );
  AND4XLM U110 ( .A(n64), .B(n63), .C(n62), .D(n61), .Y(n71) );
  AOI22XLM U111 ( .A0(n120), .A1(\RegFile[14][1] ), .B0(n115), .B1(
        \RegFile[12][1] ), .Y(n68) );
  AOI22XLM U112 ( .A0(n112), .A1(\RegFile[10][1] ), .B0(n109), .B1(
        \RegFile[8][1] ), .Y(n67) );
  AOI22XLM U113 ( .A0(n106), .A1(\RegFile[6][1] ), .B0(n103), .B1(
        \RegFile[4][1] ), .Y(n66) );
  AOI22XLM U114 ( .A0(n1), .A1(REG2[1]), .B0(n97), .B1(REG0[1]), .Y(n65) );
  AOI22XLM U115 ( .A0(n93), .A1(n69), .B0(RdData[1]), .B1(n91), .Y(n70) );
  AOI22XLM U116 ( .A0(n1), .A1(REG3[6]), .B0(n97), .B1(REG1[6]), .Y(n75) );
  AOI22XLM U117 ( .A0(n106), .A1(\RegFile[7][6] ), .B0(n103), .B1(
        \RegFile[5][6] ), .Y(n74) );
  AOI22XLM U118 ( .A0(n112), .A1(\RegFile[11][6] ), .B0(n109), .B1(
        \RegFile[9][6] ), .Y(n73) );
  AOI22XLM U119 ( .A0(n120), .A1(\RegFile[15][6] ), .B0(n115), .B1(
        \RegFile[13][6] ), .Y(n72) );
  AND4XLM U120 ( .A(n75), .B(n74), .C(n73), .D(n72), .Y(n82) );
  AOI22XLM U121 ( .A0(n106), .A1(\RegFile[6][6] ), .B0(n103), .B1(
        \RegFile[4][6] ), .Y(n79) );
  AOI22XLM U122 ( .A0(n112), .A1(\RegFile[10][6] ), .B0(n109), .B1(
        \RegFile[8][6] ), .Y(n78) );
  AOI22XLM U123 ( .A0(n120), .A1(\RegFile[14][6] ), .B0(n115), .B1(
        \RegFile[12][6] ), .Y(n77) );
  AOI22XLM U124 ( .A0(n1), .A1(REG2[6]), .B0(n97), .B1(REG0[6]), .Y(n76) );
  AOI22XLM U125 ( .A0(n93), .A1(n80), .B0(RdData[6]), .B1(n91), .Y(n81) );
  AOI22XLM U126 ( .A0(n1), .A1(REG3[7]), .B0(REG1[7]), .B1(n97), .Y(n86) );
  AOI22XLM U127 ( .A0(n106), .A1(\RegFile[7][7] ), .B0(n103), .B1(
        \RegFile[5][7] ), .Y(n85) );
  AOI22XLM U128 ( .A0(n112), .A1(\RegFile[11][7] ), .B0(n109), .B1(
        \RegFile[9][7] ), .Y(n84) );
  AOI22XLM U129 ( .A0(n120), .A1(\RegFile[15][7] ), .B0(n115), .B1(
        \RegFile[13][7] ), .Y(n83) );
  AND4XLM U130 ( .A(n86), .B(n85), .C(n84), .D(n83), .Y(n96) );
  AOI22XLM U131 ( .A0(n106), .A1(\RegFile[6][7] ), .B0(n103), .B1(
        \RegFile[4][7] ), .Y(n90) );
  AOI22XLM U132 ( .A0(n112), .A1(\RegFile[10][7] ), .B0(n109), .B1(
        \RegFile[8][7] ), .Y(n89) );
  AOI22XLM U133 ( .A0(n1), .A1(REG2[7]), .B0(n97), .B1(REG0[7]), .Y(n87) );
  AOI22XLM U134 ( .A0(n93), .A1(n92), .B0(RdData[7]), .B1(n91), .Y(n94) );
  MX2XLM U135 ( .A(REG1[5]), .B(WrData[5]), .S0(n100), .Y(n261) );
  MX2XLM U136 ( .A(REG1[3]), .B(WrData[3]), .S0(n100), .Y(n259) );
  MX2XLM U137 ( .A(REG1[7]), .B(WrData[7]), .S0(n100), .Y(n263) );
  MX2XLM U138 ( .A(REG0[6]), .B(WrData[6]), .S0(n101), .Y(n270) );
  MX2XLM U139 ( .A(REG1[2]), .B(WrData[2]), .S0(n100), .Y(n258) );
  MX2XLM U140 ( .A(REG1[1]), .B(WrData[1]), .S0(n100), .Y(n257) );
  MX2XLM U141 ( .A(REG1[4]), .B(WrData[4]), .S0(n100), .Y(n260) );
  MX2XLM U142 ( .A(REG1[6]), .B(WrData[6]), .S0(n100), .Y(n262) );
  MX2XLM U143 ( .A(REG1[0]), .B(WrData[0]), .S0(n100), .Y(n256) );
  MX2XLM U144 ( .A(REG0[7]), .B(WrData[7]), .S0(n101), .Y(n271) );
  CLKINVX1M U145 ( .A(WrData[5]), .Y(n130) );
  AOI2BB2XLM U146 ( .B0(n101), .B1(n130), .A0N(REG0[5]), .A1N(n101), .Y(n269)
         );
  CLKINVX1M U147 ( .A(WrData[4]), .Y(n122) );
  AOI2BB2XLM U148 ( .B0(n101), .B1(n122), .A0N(REG0[4]), .A1N(n101), .Y(n268)
         );
  CLKINVX1M U149 ( .A(WrData[3]), .Y(n123) );
  AOI2BB2XLM U150 ( .B0(n101), .B1(n123), .A0N(REG0[3]), .A1N(n101), .Y(n267)
         );
  CLKINVX1M U151 ( .A(WrData[2]), .Y(n124) );
  AOI2BB2XLM U152 ( .B0(n101), .B1(n124), .A0N(REG0[2]), .A1N(n101), .Y(n266)
         );
  CLKINVX1M U153 ( .A(WrData[1]), .Y(n125) );
  AOI2BB2XLM U154 ( .B0(n101), .B1(n125), .A0N(REG0[1]), .A1N(n101), .Y(n265)
         );
  CLKINVX1M U155 ( .A(WrData[0]), .Y(n128) );
  AOI2BB2XLM U156 ( .B0(n101), .B1(n128), .A0N(REG0[0]), .A1N(n101), .Y(n264)
         );
  CLKINVX1M U157 ( .A(WrData[6]), .Y(n121) );
  AOI2BB2XLM U158 ( .B0(n129), .B1(n121), .A0N(REG2[6]), .A1N(n129), .Y(n255)
         );
  AOI2BB2XLM U159 ( .B0(n129), .B1(n130), .A0N(REG2[5]), .A1N(n129), .Y(n254)
         );
  AOI2BB2XLM U160 ( .B0(n129), .B1(n122), .A0N(REG2[4]), .A1N(n129), .Y(n253)
         );
  AOI2BB2XLM U161 ( .B0(n129), .B1(n123), .A0N(REG2[3]), .A1N(n129), .Y(n252)
         );
  AOI2BB2XLM U162 ( .B0(n129), .B1(n124), .A0N(REG2[2]), .A1N(n129), .Y(n251)
         );
  AOI2BB2XLM U163 ( .B0(n129), .B1(n125), .A0N(REG2[1]), .A1N(n129), .Y(n250)
         );
  CLKINVX1M U164 ( .A(WrData[7]), .Y(n127) );
  AOI2BB2XLM U165 ( .B0(n131), .B1(n127), .A0N(REG3[7]), .A1N(n131), .Y(n249)
         );
  AOI2BB2XLM U166 ( .B0(n131), .B1(n121), .A0N(REG3[6]), .A1N(n131), .Y(n248)
         );
  AOI2BB2XLM U167 ( .B0(n131), .B1(n122), .A0N(REG3[4]), .A1N(n131), .Y(n247)
         );
  AOI2BB2XLM U168 ( .B0(n131), .B1(n123), .A0N(REG3[3]), .A1N(n131), .Y(n246)
         );
  AOI2BB2XLM U169 ( .B0(n131), .B1(n124), .A0N(REG3[2]), .A1N(n131), .Y(n245)
         );
  AOI2BB2XLM U170 ( .B0(n131), .B1(n125), .A0N(REG3[1]), .A1N(n131), .Y(n244)
         );
  AOI2BB2XLM U171 ( .B0(n131), .B1(n128), .A0N(REG3[0]), .A1N(n131), .Y(n243)
         );
  AOI2BB2XLM U172 ( .B0(n102), .B1(n127), .A0N(\RegFile[4][7] ), .A1N(n102), 
        .Y(n242) );
  AOI2BB2XLM U173 ( .B0(n102), .B1(n121), .A0N(\RegFile[4][6] ), .A1N(n102), 
        .Y(n241) );
  AOI2BB2XLM U174 ( .B0(n102), .B1(n130), .A0N(\RegFile[4][5] ), .A1N(n102), 
        .Y(n240) );
  AOI2BB2XLM U175 ( .B0(n102), .B1(n122), .A0N(\RegFile[4][4] ), .A1N(n102), 
        .Y(n239) );
  AOI2BB2XLM U176 ( .B0(n102), .B1(n123), .A0N(\RegFile[4][3] ), .A1N(n102), 
        .Y(n238) );
  AOI2BB2XLM U177 ( .B0(n102), .B1(n124), .A0N(\RegFile[4][2] ), .A1N(n102), 
        .Y(n237) );
  AOI2BB2XLM U178 ( .B0(n102), .B1(n125), .A0N(\RegFile[4][1] ), .A1N(n102), 
        .Y(n236) );
  AOI2BB2XLM U179 ( .B0(n102), .B1(n128), .A0N(\RegFile[4][0] ), .A1N(n102), 
        .Y(n235) );
  AOI2BB2XLM U180 ( .B0(n104), .B1(n127), .A0N(\RegFile[5][7] ), .A1N(n104), 
        .Y(n234) );
  AOI2BB2XLM U181 ( .B0(n104), .B1(n121), .A0N(\RegFile[5][6] ), .A1N(n104), 
        .Y(n233) );
  AOI2BB2XLM U182 ( .B0(n104), .B1(n130), .A0N(\RegFile[5][5] ), .A1N(n104), 
        .Y(n232) );
  AOI2BB2XLM U183 ( .B0(n104), .B1(n122), .A0N(\RegFile[5][4] ), .A1N(n104), 
        .Y(n231) );
  AOI2BB2XLM U184 ( .B0(n104), .B1(n123), .A0N(\RegFile[5][3] ), .A1N(n104), 
        .Y(n230) );
  AOI2BB2XLM U185 ( .B0(n104), .B1(n124), .A0N(\RegFile[5][2] ), .A1N(n104), 
        .Y(n229) );
  AOI2BB2XLM U186 ( .B0(n104), .B1(n125), .A0N(\RegFile[5][1] ), .A1N(n104), 
        .Y(n228) );
  AOI2BB2XLM U187 ( .B0(n104), .B1(n128), .A0N(\RegFile[5][0] ), .A1N(n104), 
        .Y(n227) );
  AOI2BB2XLM U188 ( .B0(n105), .B1(n127), .A0N(\RegFile[6][7] ), .A1N(n105), 
        .Y(n226) );
  AOI2BB2XLM U189 ( .B0(n105), .B1(n121), .A0N(\RegFile[6][6] ), .A1N(n105), 
        .Y(n225) );
  AOI2BB2XLM U190 ( .B0(n105), .B1(n130), .A0N(\RegFile[6][5] ), .A1N(n105), 
        .Y(n224) );
  AOI2BB2XLM U191 ( .B0(n105), .B1(n122), .A0N(\RegFile[6][4] ), .A1N(n105), 
        .Y(n223) );
  AOI2BB2XLM U192 ( .B0(n105), .B1(n123), .A0N(\RegFile[6][3] ), .A1N(n105), 
        .Y(n222) );
  AOI2BB2XLM U193 ( .B0(n105), .B1(n124), .A0N(\RegFile[6][2] ), .A1N(n105), 
        .Y(n221) );
  AOI2BB2XLM U194 ( .B0(n105), .B1(n125), .A0N(\RegFile[6][1] ), .A1N(n105), 
        .Y(n220) );
  AOI2BB2XLM U195 ( .B0(n105), .B1(n128), .A0N(\RegFile[6][0] ), .A1N(n105), 
        .Y(n219) );
  AOI2BB2XLM U196 ( .B0(n107), .B1(n127), .A0N(\RegFile[7][7] ), .A1N(n107), 
        .Y(n218) );
  AOI2BB2XLM U197 ( .B0(n107), .B1(n121), .A0N(\RegFile[7][6] ), .A1N(n107), 
        .Y(n217) );
  AOI2BB2XLM U198 ( .B0(n107), .B1(n130), .A0N(\RegFile[7][5] ), .A1N(n107), 
        .Y(n216) );
  AOI2BB2XLM U199 ( .B0(n107), .B1(n122), .A0N(\RegFile[7][4] ), .A1N(n107), 
        .Y(n215) );
  AOI2BB2XLM U200 ( .B0(n107), .B1(n123), .A0N(\RegFile[7][3] ), .A1N(n107), 
        .Y(n214) );
  AOI2BB2XLM U201 ( .B0(n107), .B1(n124), .A0N(\RegFile[7][2] ), .A1N(n107), 
        .Y(n213) );
  AOI2BB2XLM U202 ( .B0(n107), .B1(n125), .A0N(\RegFile[7][1] ), .A1N(n107), 
        .Y(n212) );
  AOI2BB2XLM U203 ( .B0(n107), .B1(n128), .A0N(\RegFile[7][0] ), .A1N(n107), 
        .Y(n211) );
  AOI2BB2XLM U204 ( .B0(n108), .B1(n127), .A0N(\RegFile[8][7] ), .A1N(n108), 
        .Y(n210) );
  AOI2BB2XLM U205 ( .B0(n108), .B1(n121), .A0N(\RegFile[8][6] ), .A1N(n108), 
        .Y(n209) );
  AOI2BB2XLM U206 ( .B0(n108), .B1(n130), .A0N(\RegFile[8][5] ), .A1N(n108), 
        .Y(n208) );
  AOI2BB2XLM U207 ( .B0(n108), .B1(n122), .A0N(\RegFile[8][4] ), .A1N(n108), 
        .Y(n207) );
  AOI2BB2XLM U208 ( .B0(n108), .B1(n123), .A0N(\RegFile[8][3] ), .A1N(n108), 
        .Y(n206) );
  AOI2BB2XLM U209 ( .B0(n108), .B1(n124), .A0N(\RegFile[8][2] ), .A1N(n108), 
        .Y(n205) );
  AOI2BB2XLM U210 ( .B0(n108), .B1(n125), .A0N(\RegFile[8][1] ), .A1N(n108), 
        .Y(n204) );
  AOI2BB2XLM U211 ( .B0(n108), .B1(n128), .A0N(\RegFile[8][0] ), .A1N(n108), 
        .Y(n203) );
  AOI2BB2XLM U212 ( .B0(n110), .B1(n127), .A0N(\RegFile[9][7] ), .A1N(n110), 
        .Y(n202) );
  AOI2BB2XLM U213 ( .B0(n110), .B1(n121), .A0N(\RegFile[9][6] ), .A1N(n110), 
        .Y(n201) );
  AOI2BB2XLM U214 ( .B0(n110), .B1(n130), .A0N(\RegFile[9][5] ), .A1N(n110), 
        .Y(n200) );
  AOI2BB2XLM U215 ( .B0(n110), .B1(n122), .A0N(\RegFile[9][4] ), .A1N(n110), 
        .Y(n199) );
  AOI2BB2XLM U216 ( .B0(n110), .B1(n123), .A0N(\RegFile[9][3] ), .A1N(n110), 
        .Y(n198) );
  AOI2BB2XLM U217 ( .B0(n110), .B1(n124), .A0N(\RegFile[9][2] ), .A1N(n110), 
        .Y(n197) );
  AOI2BB2XLM U218 ( .B0(n110), .B1(n125), .A0N(\RegFile[9][1] ), .A1N(n110), 
        .Y(n196) );
  AOI2BB2XLM U219 ( .B0(n110), .B1(n128), .A0N(\RegFile[9][0] ), .A1N(n110), 
        .Y(n195) );
  AOI2BB2XLM U220 ( .B0(n111), .B1(n127), .A0N(\RegFile[10][7] ), .A1N(n111), 
        .Y(n194) );
  AOI2BB2XLM U221 ( .B0(n111), .B1(n121), .A0N(\RegFile[10][6] ), .A1N(n111), 
        .Y(n193) );
  AOI2BB2XLM U222 ( .B0(n111), .B1(n130), .A0N(\RegFile[10][5] ), .A1N(n111), 
        .Y(n192) );
  AOI2BB2XLM U223 ( .B0(n111), .B1(n122), .A0N(\RegFile[10][4] ), .A1N(n111), 
        .Y(n191) );
  AOI2BB2XLM U224 ( .B0(n111), .B1(n123), .A0N(\RegFile[10][3] ), .A1N(n111), 
        .Y(n190) );
  AOI2BB2XLM U225 ( .B0(n111), .B1(n124), .A0N(\RegFile[10][2] ), .A1N(n111), 
        .Y(n189) );
  AOI2BB2XLM U226 ( .B0(n111), .B1(n125), .A0N(\RegFile[10][1] ), .A1N(n111), 
        .Y(n188) );
  AOI2BB2XLM U227 ( .B0(n111), .B1(n128), .A0N(\RegFile[10][0] ), .A1N(n111), 
        .Y(n187) );
  AOI2BB2XLM U228 ( .B0(n113), .B1(n127), .A0N(\RegFile[11][7] ), .A1N(n113), 
        .Y(n186) );
  AOI2BB2XLM U229 ( .B0(n113), .B1(n121), .A0N(\RegFile[11][6] ), .A1N(n113), 
        .Y(n185) );
  AOI2BB2XLM U230 ( .B0(n113), .B1(n130), .A0N(\RegFile[11][5] ), .A1N(n113), 
        .Y(n184) );
  AOI2BB2XLM U231 ( .B0(n113), .B1(n122), .A0N(\RegFile[11][4] ), .A1N(n113), 
        .Y(n183) );
  AOI2BB2XLM U232 ( .B0(n113), .B1(n123), .A0N(\RegFile[11][3] ), .A1N(n113), 
        .Y(n182) );
  AOI2BB2XLM U233 ( .B0(n113), .B1(n124), .A0N(\RegFile[11][2] ), .A1N(n113), 
        .Y(n181) );
  AOI2BB2XLM U234 ( .B0(n113), .B1(n125), .A0N(\RegFile[11][1] ), .A1N(n113), 
        .Y(n180) );
  AOI2BB2XLM U235 ( .B0(n113), .B1(n128), .A0N(\RegFile[11][0] ), .A1N(n113), 
        .Y(n179) );
  AOI2BB2XLM U236 ( .B0(n114), .B1(n127), .A0N(\RegFile[12][7] ), .A1N(n114), 
        .Y(n178) );
  AOI2BB2XLM U237 ( .B0(n114), .B1(n121), .A0N(\RegFile[12][6] ), .A1N(n114), 
        .Y(n177) );
  AOI2BB2XLM U238 ( .B0(n114), .B1(n130), .A0N(\RegFile[12][5] ), .A1N(n114), 
        .Y(n176) );
  AOI2BB2XLM U239 ( .B0(n114), .B1(n122), .A0N(\RegFile[12][4] ), .A1N(n114), 
        .Y(n175) );
  AOI2BB2XLM U240 ( .B0(n114), .B1(n123), .A0N(\RegFile[12][3] ), .A1N(n114), 
        .Y(n174) );
  AOI2BB2XLM U241 ( .B0(n114), .B1(n124), .A0N(\RegFile[12][2] ), .A1N(n114), 
        .Y(n173) );
  AOI2BB2XLM U242 ( .B0(n114), .B1(n125), .A0N(\RegFile[12][1] ), .A1N(n114), 
        .Y(n172) );
  AOI2BB2XLM U243 ( .B0(n114), .B1(n128), .A0N(\RegFile[12][0] ), .A1N(n114), 
        .Y(n171) );
  AOI2BB2XLM U244 ( .B0(n116), .B1(n127), .A0N(\RegFile[13][7] ), .A1N(n116), 
        .Y(n170) );
  AOI2BB2XLM U245 ( .B0(n116), .B1(n121), .A0N(\RegFile[13][6] ), .A1N(n116), 
        .Y(n169) );
  AOI2BB2XLM U246 ( .B0(n116), .B1(n130), .A0N(\RegFile[13][5] ), .A1N(n116), 
        .Y(n168) );
  AOI2BB2XLM U247 ( .B0(n116), .B1(n122), .A0N(\RegFile[13][4] ), .A1N(n116), 
        .Y(n167) );
  AOI2BB2XLM U248 ( .B0(n116), .B1(n123), .A0N(\RegFile[13][3] ), .A1N(n116), 
        .Y(n166) );
  AOI2BB2XLM U249 ( .B0(n116), .B1(n124), .A0N(\RegFile[13][2] ), .A1N(n116), 
        .Y(n165) );
  AOI2BB2XLM U250 ( .B0(n116), .B1(n125), .A0N(\RegFile[13][1] ), .A1N(n116), 
        .Y(n164) );
  AOI2BB2XLM U251 ( .B0(n116), .B1(n128), .A0N(\RegFile[13][0] ), .A1N(n116), 
        .Y(n163) );
  AOI2BB2XLM U252 ( .B0(n118), .B1(n127), .A0N(\RegFile[14][7] ), .A1N(n118), 
        .Y(n162) );
  AOI2BB2XLM U253 ( .B0(n118), .B1(n121), .A0N(\RegFile[14][6] ), .A1N(n118), 
        .Y(n161) );
  AOI2BB2XLM U254 ( .B0(n118), .B1(n130), .A0N(\RegFile[14][5] ), .A1N(n118), 
        .Y(n160) );
  AOI2BB2XLM U255 ( .B0(n118), .B1(n122), .A0N(\RegFile[14][4] ), .A1N(n118), 
        .Y(n159) );
  AOI2BB2XLM U256 ( .B0(n118), .B1(n123), .A0N(\RegFile[14][3] ), .A1N(n118), 
        .Y(n158) );
  AOI2BB2XLM U257 ( .B0(n118), .B1(n124), .A0N(\RegFile[14][2] ), .A1N(n118), 
        .Y(n157) );
  AOI2BB2XLM U258 ( .B0(n118), .B1(n125), .A0N(\RegFile[14][1] ), .A1N(n118), 
        .Y(n156) );
  AOI2BB2XLM U259 ( .B0(n118), .B1(n128), .A0N(\RegFile[14][0] ), .A1N(n118), 
        .Y(n155) );
  AOI2BB2XLM U260 ( .B0(n126), .B1(n127), .A0N(\RegFile[15][7] ), .A1N(n126), 
        .Y(n154) );
  AOI2BB2XLM U261 ( .B0(n126), .B1(n121), .A0N(\RegFile[15][6] ), .A1N(n126), 
        .Y(n152) );
  AOI2BB2XLM U262 ( .B0(n126), .B1(n130), .A0N(\RegFile[15][5] ), .A1N(n126), 
        .Y(n150) );
  AOI2BB2XLM U263 ( .B0(n126), .B1(n122), .A0N(\RegFile[15][4] ), .A1N(n126), 
        .Y(n148) );
  AOI2BB2XLM U264 ( .B0(n126), .B1(n123), .A0N(\RegFile[15][3] ), .A1N(n126), 
        .Y(n146) );
  AOI2BB2XLM U265 ( .B0(n126), .B1(n124), .A0N(\RegFile[15][2] ), .A1N(n126), 
        .Y(n144) );
  AOI2BB2XLM U266 ( .B0(n126), .B1(n125), .A0N(\RegFile[15][1] ), .A1N(n126), 
        .Y(n142) );
  AOI2BB2XLM U267 ( .B0(n126), .B1(n128), .A0N(\RegFile[15][0] ), .A1N(n126), 
        .Y(n140) );
  AOI2BB2XLM U268 ( .B0(n129), .B1(n127), .A0N(REG2[7]), .A1N(n129), .Y(n138)
         );
  AOI2BB2XLM U269 ( .B0(n129), .B1(n128), .A0N(REG2[0]), .A1N(n129), .Y(n137)
         );
  AOI2BB2XLM U270 ( .B0(n131), .B1(n130), .A0N(REG3[5]), .A1N(n131), .Y(n136)
         );
endmodule


module RST_Sync_NUM_STAGES2_1 ( CLK, RST, sync_RST );
  input CLK, RST;
  output sync_RST;
  wire   n2, \sync_reg[1] ;

  DFFRQX1M \sync_reg_reg[1]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[1] )
         );
  DFFRQX1M \sync_reg_reg[0]  ( .D(\sync_reg[1] ), .CK(CLK), .RN(RST), .Q(n2)
         );
  BUFX24M U4 ( .A(n2), .Y(sync_RST) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX8M u_CLK_GATE ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
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
  wire   N175, N176, N177, N178, N179, N180, N181, N182, N183, N184, N190,
         N191, N192, n62, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58;
  wire   [3:0] Cur_S;

  DFFRQX1M \Cur_S_reg[0]  ( .D(n80), .CK(CLK), .RN(RST), .Q(Cur_S[0]) );
  DFFRQX1M \Cur_S_reg[2]  ( .D(n81), .CK(CLK), .RN(RST), .Q(Cur_S[2]) );
  DFFRQX1M \Cur_S_reg[3]  ( .D(n79), .CK(CLK), .RN(RST), .Q(Cur_S[3]) );
  DFFRQX1M \Cur_S_reg[1]  ( .D(n82), .CK(CLK), .RN(RST), .Q(Cur_S[1]) );
  DFFRQX1M \ALU_FUN_reg[3]  ( .D(n78), .CK(CLK), .RN(RST), .Q(ALU_FUN[3]) );
  DFFRQX1M \ALU_FUN_reg[2]  ( .D(n77), .CK(CLK), .RN(RST), .Q(ALU_FUN[2]) );
  DFFRQX1M \ALU_FUN_reg[1]  ( .D(n76), .CK(CLK), .RN(RST), .Q(ALU_FUN[1]) );
  DFFRQX1M \ALU_FUN_reg[0]  ( .D(n75), .CK(CLK), .RN(RST), .Q(ALU_FUN[0]) );
  DFFRQX1M ALU_EN_reg ( .D(N175), .CK(CLK), .RN(RST), .Q(ALU_EN) );
  DFFRQX1M CLK_EN_reg ( .D(N176), .CK(CLK), .RN(RST), .Q(CLK_EN) );
  DFFRQX1M \RF_WrData_reg[7]  ( .D(N184), .CK(CLK), .RN(RST), .Q(RF_WrData[7])
         );
  DFFRQX1M \RF_WrData_reg[6]  ( .D(N183), .CK(CLK), .RN(RST), .Q(RF_WrData[6])
         );
  DFFRQX1M \RF_WrData_reg[5]  ( .D(N182), .CK(CLK), .RN(RST), .Q(RF_WrData[5])
         );
  DFFRQX1M \RF_WrData_reg[4]  ( .D(N181), .CK(CLK), .RN(RST), .Q(RF_WrData[4])
         );
  DFFRQX1M \RF_WrData_reg[3]  ( .D(N180), .CK(CLK), .RN(RST), .Q(RF_WrData[3])
         );
  DFFRQX1M \RF_WrData_reg[2]  ( .D(N179), .CK(CLK), .RN(RST), .Q(RF_WrData[2])
         );
  DFFRQX1M \RF_WrData_reg[1]  ( .D(N178), .CK(CLK), .RN(RST), .Q(RF_WrData[1])
         );
  DFFRQX1M \RF_WrData_reg[0]  ( .D(N177), .CK(CLK), .RN(RST), .Q(RF_WrData[0])
         );
  DFFRQX1M \RF_ADDR_reg[3]  ( .D(n74), .CK(CLK), .RN(RST), .Q(RF_ADDR[3]) );
  DFFRQX1M \RF_ADDR_reg[2]  ( .D(n73), .CK(CLK), .RN(RST), .Q(RF_ADDR[2]) );
  DFFRQX1M \RF_ADDR_reg[1]  ( .D(n72), .CK(CLK), .RN(RST), .Q(RF_ADDR[1]) );
  DFFRQX1M \RF_ADDR_reg[0]  ( .D(n71), .CK(CLK), .RN(RST), .Q(RF_ADDR[0]) );
  DFFRQX1M WrEn_reg ( .D(N190), .CK(CLK), .RN(RST), .Q(WrEn) );
  DFFRQX1M RdEn_reg ( .D(N191), .CK(CLK), .RN(RST), .Q(RdEn) );
  DFFRQX1M FIFO_W_INC_reg ( .D(N192), .CK(CLK), .RN(RST), .Q(FIFO_W_INC) );
  DFFRQX1M \FIFO_WR_DATA_reg[7]  ( .D(n70), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[7]) );
  DFFRQX1M \FIFO_WR_DATA_reg[6]  ( .D(n69), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[6]) );
  DFFRQX1M \FIFO_WR_DATA_reg[5]  ( .D(n68), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[5]) );
  DFFRQX1M \FIFO_WR_DATA_reg[4]  ( .D(n67), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[4]) );
  DFFRQX1M \FIFO_WR_DATA_reg[3]  ( .D(n66), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[3]) );
  DFFRQX1M \FIFO_WR_DATA_reg[2]  ( .D(n65), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[2]) );
  DFFRQX1M \FIFO_WR_DATA_reg[1]  ( .D(n64), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[1]) );
  DFFRQX1M \FIFO_WR_DATA_reg[0]  ( .D(n62), .CK(CLK), .RN(RST), .Q(
        FIFO_WR_DATA[0]) );
  OR2X1M U3 ( .A(N192), .B(n46), .Y(n57) );
  OAI211XLM U4 ( .A0(n32), .A1(n31), .B0(n30), .C0(n41), .Y(n39) );
  NAND2XLM U5 ( .A(n33), .B(n39), .Y(n43) );
  NOR3XLM U6 ( .A(n44), .B(n45), .C(n40), .Y(n56) );
  OAI222XLM U7 ( .A0(n43), .A1(n42), .B0(n41), .B1(n40), .C0(n39), .C1(n38), 
        .Y(n71) );
  NOR3XLM U8 ( .A(n44), .B(n1), .C(n32), .Y(N175) );
  NOR2XLM U9 ( .A(n32), .B(n41), .Y(n9) );
  AOI222XLM U10 ( .A0(n56), .A1(RF_RdData[0]), .B0(n55), .B1(ALU_OUT[0]), .C0(
        n54), .C1(ALU_OUT[8]), .Y(n58) );
  AOI222XLM U11 ( .A0(n56), .A1(RF_RdData[4]), .B0(n55), .B1(ALU_OUT[4]), .C0(
        n54), .C1(ALU_OUT[12]), .Y(n50) );
  CLKINVX1M U12 ( .A(N190), .Y(n18) );
  CLKINVX1M U13 ( .A(FIFO_FULL), .Y(n3) );
  NOR3XLM U14 ( .A(FIFO_FULL), .B(n12), .C(n44), .Y(N192) );
  NOR2XLM U15 ( .A(n18), .B(n17), .Y(N183) );
  NAND2XLM U16 ( .A(Cur_S[1]), .B(Cur_S[2]), .Y(n44) );
  CLKINVX1M U17 ( .A(Cur_S[0]), .Y(n40) );
  NOR2XLM U18 ( .A(Cur_S[3]), .B(n40), .Y(n12) );
  CLKINVX1M U19 ( .A(n12), .Y(n1) );
  CLKINVX1M U20 ( .A(RX_D_VALID), .Y(n32) );
  CLKINVX1M U21 ( .A(Cur_S[3]), .Y(n45) );
  NOR2XLM U22 ( .A(Cur_S[2]), .B(n1), .Y(n33) );
  CLKINVX1M U23 ( .A(Cur_S[1]), .Y(n29) );
  NAND3XLM U24 ( .A(n33), .B(Rd_D_Valid), .C(n29), .Y(n25) );
  AOI21XLM U25 ( .A0(Cur_S[3]), .A1(n3), .B0(n44), .Y(n26) );
  OAI211XLM U26 ( .A0(Cur_S[3]), .A1(n3), .B0(n26), .C0(n40), .Y(n2) );
  OAI2B11XLM U27 ( .A1N(n56), .A0(n3), .B0(n25), .C0(n2), .Y(n79) );
  NAND3XLM U28 ( .A(Cur_S[2]), .B(n29), .C(n45), .Y(n41) );
  CLKINVX1M U29 ( .A(Cur_S[2]), .Y(n10) );
  NAND3XLM U30 ( .A(n10), .B(n45), .C(Cur_S[1]), .Y(n4) );
  AOI221XLM U31 ( .A0(Cur_S[0]), .A1(n41), .B0(n4), .B1(n41), .C0(n32), .Y(
        N190) );
  CLKINVX1M U32 ( .A(RX_P_DATA[1]), .Y(n37) );
  CLKINVX1M U33 ( .A(RX_P_DATA[5]), .Y(n16) );
  NOR4XLM U34 ( .A(RX_P_DATA[6]), .B(RX_P_DATA[2]), .C(n37), .D(n16), .Y(n8)
         );
  NOR2XLM U35 ( .A(RX_P_DATA[0]), .B(RX_P_DATA[4]), .Y(n23) );
  AND2X1M U36 ( .A(RX_P_DATA[4]), .B(RX_P_DATA[0]), .Y(n22) );
  CLKINVX1M U37 ( .A(RX_P_DATA[2]), .Y(n35) );
  CLKINVX1M U38 ( .A(RX_P_DATA[6]), .Y(n17) );
  NOR4XLM U39 ( .A(RX_P_DATA[1]), .B(RX_P_DATA[5]), .C(n35), .D(n17), .Y(n21)
         );
  AOI22XLM U40 ( .A0(n8), .A1(n23), .B0(n22), .B1(n21), .Y(n7) );
  NOR4XLM U41 ( .A(Cur_S[1]), .B(Cur_S[2]), .C(Cur_S[3]), .D(Cur_S[0]), .Y(n46) );
  NAND4XLM U42 ( .A(n46), .B(RX_D_VALID), .C(RX_P_DATA[3]), .D(RX_P_DATA[7]), 
        .Y(n19) );
  AOI221XLM U43 ( .A0(Cur_S[1]), .A1(n33), .B0(Rd_D_Valid), .B1(n33), .C0(n26), 
        .Y(n6) );
  AOI2BB2XLM U44 ( .B0(Cur_S[0]), .B1(n9), .A0N(n4), .A1N(RX_D_VALID), .Y(n5)
         );
  OAI211XLM U45 ( .A0(n7), .A1(n19), .B0(n6), .C0(n5), .Y(n82) );
  AOI21BXLM U46 ( .A0(n8), .A1(n22), .B0N(n7), .Y(n15) );
  AOI21XLM U47 ( .A0(n56), .A1(FIFO_FULL), .B0(n9), .Y(n14) );
  OAI21XLM U48 ( .A0(OUT_VALID), .A1(n10), .B0(Cur_S[1]), .Y(n11) );
  AOI22XLM U49 ( .A0(n12), .A1(n11), .B0(n33), .B1(n32), .Y(n13) );
  OAI211XLM U50 ( .A0(n15), .A1(n19), .B0(n14), .C0(n13), .Y(n80) );
  CLKINVX1M U51 ( .A(RX_P_DATA[0]), .Y(n42) );
  NOR2XLM U52 ( .A(n18), .B(n42), .Y(N177) );
  NOR2XLM U53 ( .A(n18), .B(n37), .Y(N178) );
  NOR2XLM U54 ( .A(n18), .B(n16), .Y(N182) );
  NOR2XLM U55 ( .A(n18), .B(n35), .Y(N179) );
  CLKINVX1M U56 ( .A(RX_P_DATA[3]), .Y(n34) );
  NOR2XLM U57 ( .A(n18), .B(n34), .Y(N180) );
  AND2X1M U58 ( .A(RX_P_DATA[4]), .B(N190), .Y(N181) );
  AND2X1M U59 ( .A(RX_P_DATA[7]), .B(N190), .Y(N184) );
  CLKINVX1M U60 ( .A(n33), .Y(n31) );
  NOR3XLM U61 ( .A(Cur_S[1]), .B(n32), .C(n31), .Y(N191) );
  AOI221XLM U62 ( .A0(Cur_S[3]), .A1(Cur_S[0]), .B0(n32), .B1(Cur_S[0]), .C0(
        n44), .Y(N176) );
  CLKINVX1M U63 ( .A(n19), .Y(n20) );
  OAI211XLM U64 ( .A0(n23), .A1(n22), .B0(n21), .C0(n20), .Y(n24) );
  NAND4BXLM U65 ( .AN(n26), .B(n41), .C(n25), .D(n24), .Y(n81) );
  CLKINVX1M U66 ( .A(N175), .Y(n28) );
  NOR2XLM U67 ( .A(n46), .B(N175), .Y(n27) );
  OAI2BB2XLM U68 ( .B0(n34), .B1(n28), .A0N(n27), .A1N(ALU_FUN[3]), .Y(n78) );
  OAI2BB2XLM U69 ( .B0(n35), .B1(n28), .A0N(n27), .A1N(ALU_FUN[2]), .Y(n77) );
  OAI2BB2XLM U70 ( .B0(n37), .B1(n28), .A0N(n27), .A1N(ALU_FUN[1]), .Y(n76) );
  OAI2BB2XLM U71 ( .B0(n42), .B1(n28), .A0N(n27), .A1N(ALU_FUN[0]), .Y(n75) );
  NAND3XLM U72 ( .A(n29), .B(n45), .C(n40), .Y(n30) );
  CLKINVX1M U73 ( .A(n39), .Y(n36) );
  OAI2BB2XLM U74 ( .B0(n34), .B1(n43), .A0N(n36), .A1N(RF_ADDR[3]), .Y(n74) );
  OAI2BB2XLM U75 ( .B0(n35), .B1(n43), .A0N(n36), .A1N(RF_ADDR[2]), .Y(n73) );
  OAI2BB2XLM U76 ( .B0(n37), .B1(n43), .A0N(n36), .A1N(RF_ADDR[1]), .Y(n72) );
  CLKINVX1M U77 ( .A(RF_ADDR[0]), .Y(n38) );
  NOR3XLM U78 ( .A(Cur_S[3]), .B(Cur_S[0]), .C(n44), .Y(n55) );
  NOR3XLM U79 ( .A(Cur_S[0]), .B(n45), .C(n44), .Y(n54) );
  AOI222XLM U80 ( .A0(n56), .A1(RF_RdData[7]), .B0(n55), .B1(ALU_OUT[7]), .C0(
        n54), .C1(ALU_OUT[15]), .Y(n47) );
  AOI2BB2XLM U81 ( .B0(n47), .B1(n57), .A0N(n57), .A1N(FIFO_WR_DATA[7]), .Y(
        n70) );
  AOI222XLM U82 ( .A0(n56), .A1(RF_RdData[6]), .B0(n55), .B1(ALU_OUT[6]), .C0(
        n54), .C1(ALU_OUT[14]), .Y(n48) );
  AOI2BB2XLM U83 ( .B0(n48), .B1(n57), .A0N(n57), .A1N(FIFO_WR_DATA[6]), .Y(
        n69) );
  AOI222XLM U84 ( .A0(n56), .A1(RF_RdData[5]), .B0(n55), .B1(ALU_OUT[5]), .C0(
        n54), .C1(ALU_OUT[13]), .Y(n49) );
  AOI2BB2XLM U85 ( .B0(n49), .B1(n57), .A0N(n57), .A1N(FIFO_WR_DATA[5]), .Y(
        n68) );
  AOI2BB2XLM U86 ( .B0(n50), .B1(n57), .A0N(n57), .A1N(FIFO_WR_DATA[4]), .Y(
        n67) );
  AOI222XLM U87 ( .A0(n56), .A1(RF_RdData[3]), .B0(n55), .B1(ALU_OUT[3]), .C0(
        n54), .C1(ALU_OUT[11]), .Y(n51) );
  AOI2BB2XLM U88 ( .B0(n51), .B1(n57), .A0N(n57), .A1N(FIFO_WR_DATA[3]), .Y(
        n66) );
  AOI222XLM U89 ( .A0(n56), .A1(RF_RdData[2]), .B0(n55), .B1(ALU_OUT[2]), .C0(
        n54), .C1(ALU_OUT[10]), .Y(n52) );
  AOI2BB2XLM U90 ( .B0(n52), .B1(n57), .A0N(n57), .A1N(FIFO_WR_DATA[2]), .Y(
        n65) );
  AOI222XLM U91 ( .A0(n56), .A1(RF_RdData[1]), .B0(n55), .B1(ALU_OUT[1]), .C0(
        n54), .C1(ALU_OUT[9]), .Y(n53) );
  AOI2BB2XLM U92 ( .B0(n53), .B1(n57), .A0N(n57), .A1N(FIFO_WR_DATA[1]), .Y(
        n64) );
  AOI2BB2XLM U93 ( .B0(n58), .B1(n57), .A0N(n57), .A1N(FIFO_WR_DATA[0]), .Y(
        n62) );
endmodule


module UART_Serializer ( P_DATA_Registered, CLK, ser_en, ser_done, ser_data );
  input [7:0] P_DATA_Registered;
  input CLK, ser_en;
  output ser_done, ser_data;
  wire   N19, n15, n16, n17, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13;
  wire   [2:0] Counter;
  assign ser_done = N19;

  DFFQX1M \Counter_reg[0]  ( .D(n17), .CK(CLK), .Q(Counter[0]) );
  DFFQX1M \Counter_reg[1]  ( .D(n15), .CK(CLK), .Q(Counter[1]) );
  DFFQX1M \Counter_reg[2]  ( .D(n16), .CK(CLK), .Q(Counter[2]) );
  NAND2XLM U3 ( .A(P_DATA_Registered[6]), .B(n13), .Y(n4) );
  OAI21XLM U4 ( .A0(n5), .A1(n4), .B0(ser_en), .Y(n6) );
  AOI211XLM U5 ( .A0(P_DATA_Registered[7]), .A1(N19), .B0(n7), .C0(n6), .Y(n8)
         );
  OAI31XLM U6 ( .A0(Counter[2]), .A1(n11), .A2(n9), .B0(n8), .Y(ser_data) );
  NAND2XLM U7 ( .A(Counter[1]), .B(Counter[2]), .Y(n5) );
  CLKINVX1M U8 ( .A(ser_en), .Y(n10) );
  AOI21XLM U9 ( .A0(Counter[0]), .A1(n5), .B0(n10), .Y(n17) );
  CLKINVX1M U10 ( .A(Counter[0]), .Y(n13) );
  NOR2XLM U11 ( .A(n13), .B(n5), .Y(N19) );
  CLKINVX1M U12 ( .A(n17), .Y(n1) );
  CLKINVX1M U13 ( .A(Counter[1]), .Y(n11) );
  OAI32XLM U14 ( .A0(Counter[1]), .A1(n13), .A2(n10), .B0(n1), .B1(n11), .Y(
        n15) );
  AOI22XLM U15 ( .A0(Counter[0]), .A1(P_DATA_Registered[3]), .B0(
        P_DATA_Registered[2]), .B1(n13), .Y(n9) );
  AOI22XLM U16 ( .A0(Counter[0]), .A1(P_DATA_Registered[5]), .B0(
        P_DATA_Registered[4]), .B1(n13), .Y(n3) );
  AOI22XLM U17 ( .A0(Counter[0]), .A1(P_DATA_Registered[1]), .B0(
        P_DATA_Registered[0]), .B1(n13), .Y(n2) );
  CLKINVX1M U18 ( .A(Counter[2]), .Y(n12) );
  AOI221XLM U19 ( .A0(n3), .A1(Counter[2]), .B0(n2), .B1(n12), .C0(Counter[1]), 
        .Y(n7) );
  AOI221XLM U20 ( .A0(n13), .A1(n12), .B0(n11), .B1(n12), .C0(n10), .Y(n16) );
endmodule


module UART_Parity ( PAR_TYP, P_DATA, par_bit );
  input [7:0] P_DATA;
  input PAR_TYP;
  output par_bit;
  wire   n1, n2, n3;

  XOR3XLM U1 ( .A(P_DATA[6]), .B(P_DATA[1]), .C(P_DATA[0]), .Y(n1) );
  XOR3XLM U2 ( .A(P_DATA[4]), .B(P_DATA[7]), .C(n1), .Y(n2) );
  XOR3XLM U3 ( .A(P_DATA[5]), .B(P_DATA[3]), .C(n2), .Y(n3) );
  XOR3XLM U4 ( .A(P_DATA[2]), .B(PAR_TYP), .C(n3), .Y(par_bit) );
endmodule


module UART_TX_FSM ( DATA_VALID, P_DATA, PAR_EN, PAR_TYP, ser_done, CLK, RST, 
        P_DATA_Registered, busy, ser_en, PAR_TYP_Registered, mux_sel );
  input [7:0] P_DATA;
  output [7:0] P_DATA_Registered;
  output [1:0] mux_sel;
  input DATA_VALID, PAR_EN, PAR_TYP, ser_done, CLK, RST;
  output busy, ser_en, PAR_TYP_Registered;
  wire   \Nx_S[2] , PAR_EN_Registered, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n1, n2, n3, n4, n5, n6;
  wire   [2:0] Cur_S;

  DFFRQX1M PAR_EN_Registered_reg ( .D(n16), .CK(CLK), .RN(RST), .Q(
        PAR_EN_Registered) );
  DFFRQX1M \Cur_S_reg[2]  ( .D(\Nx_S[2] ), .CK(CLK), .RN(RST), .Q(Cur_S[2]) );
  DFFRQX1M \Cur_S_reg[1]  ( .D(n17), .CK(CLK), .RN(RST), .Q(Cur_S[1]) );
  DFFRQX1M \Cur_S_reg[0]  ( .D(n18), .CK(CLK), .RN(RST), .Q(Cur_S[0]) );
  DFFRQX1M PAR_TYP_Registered_reg ( .D(n14), .CK(CLK), .RN(RST), .Q(
        PAR_TYP_Registered) );
  DFFRQX1M \P_DATA_Registered_reg[7]  ( .D(n13), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[7]) );
  DFFRQX1M \P_DATA_Registered_reg[5]  ( .D(n11), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[5]) );
  DFFRQX1M \P_DATA_Registered_reg[3]  ( .D(n9), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[3]) );
  DFFRQX1M \P_DATA_Registered_reg[2]  ( .D(n8), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[2]) );
  DFFRQX1M \P_DATA_Registered_reg[1]  ( .D(n7), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[1]) );
  DFFRQX1M \P_DATA_Registered_reg[6]  ( .D(n12), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[6]) );
  DFFRQX1M \P_DATA_Registered_reg[0]  ( .D(n15), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[0]) );
  DFFRQX1M \P_DATA_Registered_reg[4]  ( .D(n10), .CK(CLK), .RN(RST), .Q(
        P_DATA_Registered[4]) );
  CLKINVX1M U3 ( .A(ser_done), .Y(n4) );
  NAND2XLM U4 ( .A(mux_sel[0]), .B(n3), .Y(n17) );
  NAND2BXLM U5 ( .AN(Cur_S[2]), .B(Cur_S[0]), .Y(mux_sel[0]) );
  CLKINVX1M U6 ( .A(Cur_S[1]), .Y(n2) );
  NOR2XLM U7 ( .A(Cur_S[2]), .B(n2), .Y(mux_sel[1]) );
  CLKINVX1M U8 ( .A(mux_sel[1]), .Y(n3) );
  OAI21BXLM U9 ( .A0(Cur_S[0]), .A1(DATA_VALID), .B0N(Cur_S[2]), .Y(n1) );
  OAI22XLM U10 ( .A0(Cur_S[1]), .A1(n1), .B0(ser_done), .B1(mux_sel[0]), .Y(
        n18) );
  OAI21XLM U11 ( .A0(Cur_S[0]), .A1(n2), .B0(mux_sel[0]), .Y(busy) );
  NOR2BXLM U12 ( .AN(DATA_VALID), .B(busy), .Y(n6) );
  CLKINVX1M U13 ( .A(n6), .Y(n5) );
  AO22XLM U14 ( .A0(n6), .A1(P_DATA[4]), .B0(n5), .B1(P_DATA_Registered[4]), 
        .Y(n10) );
  AO22XLM U15 ( .A0(n6), .A1(P_DATA[2]), .B0(n5), .B1(P_DATA_Registered[2]), 
        .Y(n8) );
  AO22XLM U16 ( .A0(n6), .A1(P_DATA[7]), .B0(n5), .B1(P_DATA_Registered[7]), 
        .Y(n13) );
  AO22XLM U17 ( .A0(n6), .A1(P_DATA[1]), .B0(n5), .B1(P_DATA_Registered[1]), 
        .Y(n7) );
  AO22XLM U18 ( .A0(n6), .A1(P_DATA[0]), .B0(n5), .B1(P_DATA_Registered[0]), 
        .Y(n15) );
  AO22XLM U19 ( .A0(n6), .A1(P_DATA[5]), .B0(n5), .B1(P_DATA_Registered[5]), 
        .Y(n11) );
  AO22XLM U20 ( .A0(n6), .A1(P_DATA[6]), .B0(n5), .B1(P_DATA_Registered[6]), 
        .Y(n12) );
  AO22XLM U21 ( .A0(n6), .A1(P_DATA[3]), .B0(n5), .B1(P_DATA_Registered[3]), 
        .Y(n9) );
  NOR2XLM U22 ( .A(n2), .B(mux_sel[0]), .Y(ser_en) );
  AOI221XLM U23 ( .A0(PAR_EN_Registered), .A1(Cur_S[0]), .B0(n4), .B1(Cur_S[0]), .C0(n3), .Y(\Nx_S[2] ) );
  AO22XLM U24 ( .A0(n6), .A1(PAR_EN), .B0(n5), .B1(PAR_EN_Registered), .Y(n16)
         );
  AO22XLM U25 ( .A0(n6), .A1(PAR_TYP), .B0(n5), .B1(PAR_TYP_Registered), .Y(
        n14) );
endmodule


module MUX_4x1 ( mux_sel, IN0, IN1, IN2, IN3, mux_out );
  input [1:0] mux_sel;
  input IN0, IN1, IN2, IN3;
  output mux_out;
  wire   n3, n4;

  AOI31X4M U1 ( .A0(n4), .A1(mux_sel[0]), .A2(mux_sel[1]), .B0(n3), .Y(mux_out) );
  AOI21XLM U2 ( .A0(mux_sel[1]), .A1(IN2), .B0(mux_sel[0]), .Y(n3) );
  CLKINVX1M U3 ( .A(IN3), .Y(n4) );
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
  wire   first_sample, second_sample, third_sample, n18, n19, n20, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37;

  DFFSQX2M third_sample_reg ( .D(n20), .CK(CLK), .SN(RST), .Q(third_sample) );
  DFFSQX2M first_sample_reg ( .D(n19), .CK(CLK), .SN(RST), .Q(first_sample) );
  DFFSQX2M second_sample_reg ( .D(n18), .CK(CLK), .SN(RST), .Q(second_sample)
         );
  CLKINVX1M U3 ( .A(n10), .Y(n8) );
  NAND3XLM U4 ( .A(n17), .B(n4), .C(n29), .Y(n7) );
  AOI21XLM U5 ( .A0(n33), .A1(n32), .B0(n29), .Y(n30) );
  OAI211XLM U6 ( .A0(n33), .A1(n32), .B0(n31), .C0(n30), .Y(n36) );
  OAI21XLM U7 ( .A0(n16), .A1(n35), .B0(n15), .Y(n18) );
  NAND4XLM U8 ( .A(Prescale[1]), .B(Prescale[2]), .C(Prescale[3]), .D(
        Prescale[4]), .Y(n9) );
  CLKINVX1M U9 ( .A(Prescale[1]), .Y(n3) );
  MXI2XLM U10 ( .A(n3), .B(Prescale[1]), .S0(Edge_Count[0]), .Y(n17) );
  NAND2XLM U11 ( .A(Prescale[1]), .B(Prescale[2]), .Y(n2) );
  XOR2XLM U12 ( .A(Edge_Count[2]), .B(Prescale[3]), .Y(n32) );
  XOR2XLM U13 ( .A(Edge_Count[4]), .B(Prescale[5]), .Y(n28) );
  OAI22XLM U14 ( .A0(n28), .A1(n9), .B0(n32), .B1(n2), .Y(n1) );
  AOI221XLM U15 ( .A0(n2), .A1(n32), .B0(n9), .B1(n28), .C0(n1), .Y(n4) );
  XOR2XLM U16 ( .A(Edge_Count[1]), .B(Prescale[2]), .Y(n13) );
  MXI2XLM U17 ( .A(Prescale[1]), .B(n3), .S0(n13), .Y(n29) );
  NAND3XLM U18 ( .A(Prescale[1]), .B(Prescale[2]), .C(Prescale[3]), .Y(n5) );
  NOR2BXLM U19 ( .AN(Prescale[4]), .B(Edge_Count[3]), .Y(n23) );
  AOI2B1XLM U20 ( .A1N(Prescale[4]), .A0(Edge_Count[3]), .B0(n23), .Y(n21) );
  XOR2XLM U21 ( .A(n5), .B(n21), .Y(n6) );
  NOR2XLM U22 ( .A(n7), .B(n6), .Y(n10) );
  AOI2B1XLM U23 ( .A1N(n9), .A0(Prescale[5]), .B0(n8), .Y(Sampled_flag) );
  NAND2XLM U24 ( .A(Data_Sample_En), .B(n10), .Y(n12) );
  CLKINVX1M U25 ( .A(RX_IN), .Y(n35) );
  NAND2XLM U26 ( .A(n12), .B(third_sample), .Y(n11) );
  OAI21XLM U27 ( .A0(n12), .A1(n35), .B0(n11), .Y(n20) );
  NOR3XLM U28 ( .A(n13), .B(n32), .C(n28), .Y(n14) );
  NAND4BXLM U29 ( .AN(n17), .B(Data_Sample_En), .C(n21), .D(n14), .Y(n16) );
  NAND2XLM U30 ( .A(n16), .B(second_sample), .Y(n15) );
  OR2X1M U31 ( .A(Prescale[2]), .B(Prescale[1]), .Y(n33) );
  NAND2BXLM U32 ( .AN(Prescale[4]), .B(Edge_Count[3]), .Y(n27) );
  NAND2XLM U33 ( .A(Data_Sample_En), .B(n17), .Y(n26) );
  NOR3XLM U34 ( .A(Prescale[1]), .B(Prescale[2]), .C(Prescale[3]), .Y(n22) );
  CLKINVX1M U35 ( .A(n22), .Y(n24) );
  OAI32XLM U36 ( .A0(n24), .A1(n28), .A2(n23), .B0(n22), .B1(n21), .Y(n25) );
  AOI211XLM U37 ( .A0(n28), .A1(n27), .B0(n26), .C0(n25), .Y(n31) );
  NAND2XLM U38 ( .A(n36), .B(first_sample), .Y(n34) );
  OAI21XLM U39 ( .A0(n36), .A1(n35), .B0(n34), .Y(n19) );
  OAI21XLM U40 ( .A0(third_sample), .A1(second_sample), .B0(first_sample), .Y(
        n37) );
  OAI2BB1XLM U41 ( .A0N(third_sample), .A1N(second_sample), .B0(n37), .Y(
        sampled_bit) );
endmodule


module Edge_Bit_Counter ( Prescale, Count_En, CLK, RST, Edge_Count, Bit_Count
 );
  input [5:0] Prescale;
  output [4:0] Edge_Count;
  output [3:0] Bit_Count;
  input Count_En, CLK, RST;
  wire   N44, N45, N46, N47, N48, n26, n27, n28, n29, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47;

  DFFRQX1M \Bit_Count_reg[0]  ( .D(n29), .CK(CLK), .RN(RST), .Q(Bit_Count[0])
         );
  DFFRQX1M \Bit_Count_reg[3]  ( .D(n26), .CK(CLK), .RN(RST), .Q(Bit_Count[3])
         );
  DFFRQX1M \Bit_Count_reg[1]  ( .D(n28), .CK(CLK), .RN(RST), .Q(Bit_Count[1])
         );
  DFFRQX1M \Bit_Count_reg[2]  ( .D(n27), .CK(CLK), .RN(RST), .Q(Bit_Count[2])
         );
  DFFRQX1M \Edge_Count_reg[4]  ( .D(N48), .CK(CLK), .RN(RST), .Q(Edge_Count[4]) );
  DFFRQX1M \Edge_Count_reg[3]  ( .D(N47), .CK(CLK), .RN(RST), .Q(Edge_Count[3]) );
  DFFRQX1M \Edge_Count_reg[2]  ( .D(N46), .CK(CLK), .RN(RST), .Q(Edge_Count[2]) );
  DFFRQX1M \Edge_Count_reg[1]  ( .D(N45), .CK(CLK), .RN(RST), .Q(Edge_Count[1]) );
  DFFRQX1M \Edge_Count_reg[0]  ( .D(N44), .CK(CLK), .RN(RST), .Q(Edge_Count[0]) );
  AOI211XLM U3 ( .A0(Edge_Count[2]), .A1(n12), .B0(n11), .C0(n10), .Y(n13) );
  NOR2XLM U4 ( .A(n43), .B(n42), .Y(n47) );
  NOR3XLM U5 ( .A(Prescale[2]), .B(Prescale[1]), .C(Prescale[0]), .Y(n5) );
  CLKINVX1M U6 ( .A(n5), .Y(n4) );
  NOR2XLM U7 ( .A(Prescale[3]), .B(n4), .Y(n3) );
  CLKINVX1M U8 ( .A(n3), .Y(n2) );
  NOR2XLM U9 ( .A(Prescale[4]), .B(n2), .Y(n1) );
  CLKINVX1M U10 ( .A(n1), .Y(n19) );
  AOI21XLM U11 ( .A0(Prescale[4]), .A1(n2), .B0(n1), .Y(n16) );
  AOI21XLM U12 ( .A0(Prescale[3]), .A1(n4), .B0(n3), .Y(n14) );
  CLKINVX1M U13 ( .A(Edge_Count[3]), .Y(n43) );
  NOR2XLM U14 ( .A(Prescale[1]), .B(Prescale[0]), .Y(n6) );
  AOI2B1XLM U15 ( .A1N(n6), .A0(Prescale[2]), .B0(n5), .Y(n12) );
  NOR2BXLM U16 ( .AN(n14), .B(n43), .Y(n11) );
  CLKINVX1M U17 ( .A(Edge_Count[2]), .Y(n34) );
  AOI21XLM U18 ( .A0(Prescale[0]), .A1(Prescale[1]), .B0(n6), .Y(n8) );
  AOI211XLM U19 ( .A0(n8), .A1(Edge_Count[1]), .B0(Prescale[0]), .C0(
        Edge_Count[0]), .Y(n7) );
  OAI21BXLM U20 ( .A0(Edge_Count[1]), .A1(n8), .B0N(n7), .Y(n9) );
  AOI2B1XLM U21 ( .A1N(n12), .A0(n34), .B0(n9), .Y(n10) );
  AOI2B1XLM U22 ( .A1N(n14), .A0(n43), .B0(n13), .Y(n15) );
  AOI222XLM U23 ( .A0(Edge_Count[4]), .A1(n16), .B0(Edge_Count[4]), .B1(n15), 
        .C0(n16), .C1(n15), .Y(n17) );
  AOI21XLM U24 ( .A0(Prescale[5]), .A1(n19), .B0(n17), .Y(n18) );
  OAI21XLM U25 ( .A0(Prescale[5]), .A1(n19), .B0(n18), .Y(n20) );
  NAND2XLM U26 ( .A(Count_En), .B(n20), .Y(n44) );
  CLKINVX1M U27 ( .A(n44), .Y(n24) );
  CLKINVX1M U28 ( .A(Bit_Count[2]), .Y(n38) );
  CLKINVX1M U29 ( .A(Bit_Count[3]), .Y(n36) );
  CLKINVX1M U30 ( .A(Bit_Count[1]), .Y(n30) );
  OAI221XLM U31 ( .A0(n38), .A1(n36), .B0(n30), .B1(n36), .C0(Count_En), .Y(
        n21) );
  CLKINVX1M U32 ( .A(Bit_Count[0]), .Y(n25) );
  OAI32XLM U33 ( .A0(n24), .A1(Bit_Count[0]), .A2(n21), .B0(n25), .B1(n44), 
        .Y(n29) );
  CLKINVX1M U34 ( .A(n21), .Y(n32) );
  NAND2XLM U35 ( .A(n32), .B(n44), .Y(n23) );
  AOI21XLM U36 ( .A0(n32), .A1(n25), .B0(n24), .Y(n22) );
  OAI32XLM U37 ( .A0(Bit_Count[1]), .A1(n25), .A2(n23), .B0(n22), .B1(n30), 
        .Y(n28) );
  AOI221XLM U38 ( .A0(n30), .A1(n32), .B0(n25), .B1(n32), .C0(n24), .Y(n35) );
  NOR3XLM U39 ( .A(n30), .B(n25), .C(n24), .Y(n31) );
  NAND2XLM U40 ( .A(n32), .B(n31), .Y(n37) );
  AOI22XLM U41 ( .A0(Bit_Count[2]), .A1(n35), .B0(n37), .B1(n38), .Y(n27) );
  NAND2XLM U42 ( .A(Edge_Count[1]), .B(Edge_Count[0]), .Y(n33) );
  NAND3XLM U43 ( .A(Edge_Count[2]), .B(Edge_Count[1]), .C(Edge_Count[0]), .Y(
        n42) );
  CLKINVX1M U44 ( .A(n42), .Y(n41) );
  AOI211XLM U45 ( .A0(n34), .A1(n33), .B0(n41), .C0(n44), .Y(N46) );
  OAI22XLM U46 ( .A0(n38), .A1(n37), .B0(n36), .B1(n35), .Y(n26) );
  NOR2XLM U47 ( .A(Edge_Count[0]), .B(n44), .Y(N44) );
  CLKINVX1M U48 ( .A(Edge_Count[1]), .Y(n40) );
  CLKINVX1M U49 ( .A(Edge_Count[0]), .Y(n39) );
  AOI221XLM U50 ( .A0(Edge_Count[1]), .A1(Edge_Count[0]), .B0(n40), .B1(n39), 
        .C0(n44), .Y(N45) );
  AOI221XLM U51 ( .A0(Edge_Count[3]), .A1(n41), .B0(n43), .B1(n42), .C0(n44), 
        .Y(N47) );
  CLKINVX1M U52 ( .A(Edge_Count[4]), .Y(n46) );
  CLKINVX1M U53 ( .A(n47), .Y(n45) );
  AOI221XLM U54 ( .A0(Edge_Count[4]), .A1(n47), .B0(n46), .B1(n45), .C0(n44), 
        .Y(N48) );
endmodule


module Deserializer ( deser_En, sampled_bit, Sampled_flag, Bit_Count, CLK, RST, 
        P_DATA );
  input [3:0] Bit_Count;
  output [7:0] P_DATA;
  input deser_En, sampled_bit, Sampled_flag, CLK, RST;
  wire   n24, n25, n26, n27, n28, n29, n30, n31, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23;

  DFFRQX1M \P_DATA_reg[7]  ( .D(n31), .CK(CLK), .RN(RST), .Q(P_DATA[7]) );
  DFFRQX1M \P_DATA_reg[6]  ( .D(n30), .CK(CLK), .RN(RST), .Q(P_DATA[6]) );
  DFFRQX1M \P_DATA_reg[5]  ( .D(n29), .CK(CLK), .RN(RST), .Q(P_DATA[5]) );
  DFFRQX1M \P_DATA_reg[4]  ( .D(n28), .CK(CLK), .RN(RST), .Q(P_DATA[4]) );
  DFFRQX1M \P_DATA_reg[3]  ( .D(n27), .CK(CLK), .RN(RST), .Q(P_DATA[3]) );
  DFFRQX1M \P_DATA_reg[2]  ( .D(n26), .CK(CLK), .RN(RST), .Q(P_DATA[2]) );
  DFFRQX1M \P_DATA_reg[1]  ( .D(n25), .CK(CLK), .RN(RST), .Q(P_DATA[1]) );
  DFFRQX1M \P_DATA_reg[0]  ( .D(n24), .CK(CLK), .RN(RST), .Q(P_DATA[0]) );
  OAI21XLM U3 ( .A0(n20), .A1(n19), .B0(P_DATA[6]), .Y(n18) );
  OAI21XLM U4 ( .A0(n12), .A1(n17), .B0(n3), .Y(n25) );
  NAND2XLM U5 ( .A(Sampled_flag), .B(deser_En), .Y(n13) );
  NOR2XLM U6 ( .A(Bit_Count[0]), .B(n13), .Y(n2) );
  NAND2XLM U7 ( .A(n2), .B(sampled_bit), .Y(n12) );
  NOR2XLM U8 ( .A(Bit_Count[0]), .B(Bit_Count[1]), .Y(n1) );
  AOI21XLM U9 ( .A0(Bit_Count[1]), .A1(Bit_Count[0]), .B0(n1), .Y(n9) );
  NAND2BXLM U10 ( .AN(Bit_Count[2]), .B(n9), .Y(n17) );
  CLKINVX1M U11 ( .A(n2), .Y(n10) );
  OAI21XLM U12 ( .A0(n10), .A1(n17), .B0(P_DATA[1]), .Y(n3) );
  NAND2XLM U13 ( .A(Bit_Count[2]), .B(Bit_Count[0]), .Y(n4) );
  OAI21XLM U14 ( .A0(Bit_Count[2]), .A1(Bit_Count[1]), .B0(n4), .Y(n7) );
  CLKINVX1M U15 ( .A(n9), .Y(n6) );
  NAND2XLM U16 ( .A(n7), .B(n6), .Y(n19) );
  OAI21XLM U17 ( .A0(n10), .A1(n19), .B0(P_DATA[7]), .Y(n5) );
  OAI21XLM U18 ( .A0(n12), .A1(n19), .B0(n5), .Y(n31) );
  NAND2BXLM U19 ( .AN(n7), .B(n6), .Y(n22) );
  OAI21XLM U20 ( .A0(n10), .A1(n22), .B0(P_DATA[3]), .Y(n8) );
  OAI21XLM U21 ( .A0(n12), .A1(n22), .B0(n8), .Y(n27) );
  NAND2XLM U22 ( .A(n9), .B(Bit_Count[2]), .Y(n15) );
  OAI21XLM U23 ( .A0(n10), .A1(n15), .B0(P_DATA[5]), .Y(n11) );
  OAI21XLM U24 ( .A0(n12), .A1(n15), .B0(n11), .Y(n29) );
  NAND2BXLM U25 ( .AN(n13), .B(Bit_Count[0]), .Y(n20) );
  NAND2BXLM U26 ( .AN(n20), .B(sampled_bit), .Y(n23) );
  OAI21XLM U27 ( .A0(n20), .A1(n15), .B0(P_DATA[4]), .Y(n14) );
  OAI21XLM U28 ( .A0(n23), .A1(n15), .B0(n14), .Y(n28) );
  OAI21XLM U29 ( .A0(n20), .A1(n17), .B0(P_DATA[0]), .Y(n16) );
  OAI21XLM U30 ( .A0(n23), .A1(n17), .B0(n16), .Y(n24) );
  OAI21XLM U31 ( .A0(n23), .A1(n19), .B0(n18), .Y(n30) );
  OAI21XLM U32 ( .A0(n20), .A1(n22), .B0(P_DATA[2]), .Y(n21) );
  OAI21XLM U33 ( .A0(n23), .A1(n22), .B0(n21), .Y(n26) );
endmodule


module Start_Checker ( CLK, RST, sampled_bit, Sampled_flag, Str_Chk_En, 
        start_glitch );
  input CLK, RST, sampled_bit, Sampled_flag, Str_Chk_En;
  output start_glitch;
  wire   n2, n1;

  DFFRQX1M start_glitch_reg ( .D(n2), .CK(CLK), .RN(RST), .Q(start_glitch) );
  NAND2XLM U2 ( .A(Sampled_flag), .B(Str_Chk_En), .Y(n1) );
  MX2XLM U3 ( .A(sampled_bit), .B(start_glitch), .S0(n1), .Y(n2) );
endmodule


module Stop_Checker ( CLK, RST, sampled_bit, Sampled_flag, Stp_Chk_En, stp_err
 );
  input CLK, RST, sampled_bit, Sampled_flag, Stp_Chk_En;
  output stp_err;
  wire   n3, n1, n2;

  DFFRQX1M stp_err_reg ( .D(n3), .CK(CLK), .RN(RST), .Q(stp_err) );
  NAND2XLM U2 ( .A(Sampled_flag), .B(Stp_Chk_En), .Y(n2) );
  NAND2XLM U3 ( .A(n2), .B(stp_err), .Y(n1) );
  OAI21XLM U4 ( .A0(n2), .A1(sampled_bit), .B0(n1), .Y(n3) );
endmodule


module Parity_Checker ( PAR_TYP, PAR_Chk_En, sampled_bit, Bit_Count, CLK, RST, 
        Sampled_flag, par_err );
  input [3:0] Bit_Count;
  input PAR_TYP, PAR_Chk_En, sampled_bit, CLK, RST, Sampled_flag;
  output par_err;
  wire   par_bit, n12, n13, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  DFFRQX1M par_bit_reg ( .D(n13), .CK(CLK), .RN(RST), .Q(par_bit) );
  DFFRQX1M par_err_reg ( .D(n12), .CK(CLK), .RN(RST), .Q(par_err) );
  NAND2XLM U3 ( .A(PAR_Chk_En), .B(Sampled_flag), .Y(n8) );
  CLKINVX1M U4 ( .A(sampled_bit), .Y(n2) );
  AOI2BB2XLM U5 ( .B0(par_bit), .B1(n2), .A0N(n2), .A1N(par_bit), .Y(n10) );
  NOR3BXLM U6 ( .AN(Bit_Count[0]), .B(Bit_Count[1]), .C(Bit_Count[2]), .Y(n3)
         );
  NOR2XLM U7 ( .A(PAR_TYP), .B(n10), .Y(n1) );
  AOI211XLM U8 ( .A0(PAR_TYP), .A1(n10), .B0(n3), .C0(n1), .Y(n6) );
  OA21XLM U9 ( .A0(Bit_Count[3]), .A1(n2), .B0(n3), .Y(n5) );
  AND2X1M U10 ( .A(Bit_Count[3]), .B(n3), .Y(n7) );
  OAI2B11XLM U11 ( .A1N(Sampled_flag), .A0(n7), .B0(par_bit), .C0(PAR_Chk_En), 
        .Y(n4) );
  OAI31XLM U12 ( .A0(n6), .A1(n5), .A2(n8), .B0(n4), .Y(n13) );
  NAND2BXLM U13 ( .AN(n8), .B(n7), .Y(n11) );
  NAND2XLM U14 ( .A(n11), .B(par_err), .Y(n9) );
  OAI21XLM U15 ( .A0(n11), .A1(n10), .B0(n9), .Y(n12) );
endmodule


module UART_RX_FSM ( RX_IN, PAR_EN, Bit_Count, par_err, stp_err, start_glitch, 
        CLK, RST, PAR_Chk_En, Str_Chk_En, Stp_Chk_En, Count_En, Data_Sample_En, 
        deser_En, DATA_VALID );
  input [3:0] Bit_Count;
  input RX_IN, PAR_EN, par_err, stp_err, start_glitch, CLK, RST;
  output PAR_Chk_En, Str_Chk_En, Stp_Chk_En, Count_En, Data_Sample_En,
         deser_En, DATA_VALID;
  wire   DATA_VALID_Comb, n18, n19, n20, n1, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n21;
  wire   [2:0] Cur_S;

  DFFRQX1M \Cur_S_reg[0]  ( .D(n18), .CK(CLK), .RN(RST), .Q(Cur_S[0]) );
  DFFRQX1M DATA_VALID_reg ( .D(DATA_VALID_Comb), .CK(CLK), .RN(RST), .Q(
        DATA_VALID) );
  DFFRQX1M \Cur_S_reg[2]  ( .D(n19), .CK(CLK), .RN(RST), .Q(Cur_S[2]) );
  DFFRQX1M \Cur_S_reg[1]  ( .D(n20), .CK(CLK), .RN(RST), .Q(Cur_S[1]) );
  CLKINVX1M U3 ( .A(Cur_S[0]), .Y(n13) );
  NAND2XLM U4 ( .A(Cur_S[1]), .B(n13), .Y(n9) );
  OAI21XLM U5 ( .A0(Cur_S[2]), .A1(n13), .B0(n9), .Y(Count_En) );
  CLKBUFX1M U6 ( .A(Count_En), .Y(Data_Sample_En) );
  CLKINVX1M U7 ( .A(Cur_S[2]), .Y(n1) );
  NOR2XLM U8 ( .A(n1), .B(n9), .Y(Stp_Chk_En) );
  NOR3XLM U9 ( .A(Cur_S[1]), .B(Cur_S[2]), .C(n13), .Y(Str_Chk_En) );
  NAND2XLM U10 ( .A(n1), .B(Cur_S[1]), .Y(n21) );
  NOR2XLM U11 ( .A(n13), .B(n21), .Y(deser_En) );
  NAND4BBXLM U12 ( .AN(Bit_Count[2]), .BN(Bit_Count[0]), .C(Bit_Count[3]), .D(
        Bit_Count[1]), .Y(n12) );
  NOR3XLM U13 ( .A(Cur_S[0]), .B(Cur_S[1]), .C(Cur_S[2]), .Y(n2) );
  AOI21XLM U14 ( .A0(Stp_Chk_En), .A1(n12), .B0(n2), .Y(n6) );
  NOR4XLM U15 ( .A(Bit_Count[2]), .B(Bit_Count[0]), .C(Bit_Count[3]), .D(
        Bit_Count[1]), .Y(n7) );
  NAND2BXLM U16 ( .AN(n7), .B(start_glitch), .Y(n4) );
  OR3X1M U17 ( .A(Bit_Count[2]), .B(Bit_Count[0]), .C(Bit_Count[1]), .Y(n3) );
  AOI21XLM U18 ( .A0(Bit_Count[3]), .A1(n3), .B0(n7), .Y(n17) );
  AOI22XLM U19 ( .A0(Str_Chk_En), .A1(n4), .B0(deser_En), .B1(n17), .Y(n5) );
  OAI21XLM U20 ( .A0(RX_IN), .A1(n6), .B0(n5), .Y(n18) );
  CLKINVX1M U21 ( .A(Stp_Chk_En), .Y(n11) );
  NOR4XLM U22 ( .A(par_err), .B(start_glitch), .C(stp_err), .D(n11), .Y(
        DATA_VALID_Comb) );
  OR4X1M U23 ( .A(start_glitch), .B(n13), .C(n7), .D(Cur_S[2]), .Y(n8) );
  OAI211XLM U24 ( .A0(n12), .A1(n9), .B0(n21), .C0(n8), .Y(n20) );
  CLKINVX1M U25 ( .A(deser_En), .Y(n16) );
  NOR2XLM U26 ( .A(Bit_Count[2]), .B(Bit_Count[1]), .Y(n10) );
  AOI31XLM U27 ( .A0(Bit_Count[0]), .A1(Bit_Count[3]), .A2(n10), .B0(n21), .Y(
        n14) );
  AOI2BB2XLM U28 ( .B0(n14), .B1(n13), .A0N(n12), .A1N(n11), .Y(n15) );
  OAI31XLM U29 ( .A0(n17), .A1(PAR_EN), .A2(n16), .B0(n15), .Y(n19) );
  CLKINVX1M U30 ( .A(n21), .Y(PAR_Chk_En) );
endmodule


module UART_RX ( CLK, RST, RX_IN, Prescale, PAR_EN, PAR_TYP, P_DATA, par_err, 
        stp_err, data_valid );
  input [5:0] Prescale;
  output [7:0] P_DATA;
  input CLK, RST, RX_IN, PAR_EN, PAR_TYP;
  output par_err, stp_err, data_valid;
  wire   n3, n4, dat_samp_en, sampled_bit, Sampled_flag, count_en, deser_en,
         strt_chk_en, start_glitch, stp_chk_en, par_chk_en;
  wire   [4:0] Edge_Count;
  wire   [3:0] Bit_Count;

  Sampler u_Sampler ( .Prescale({Prescale[5:1], 1'b0}), .Edge_Count(Edge_Count), .RX_IN(RX_IN), .Data_Sample_En(dat_samp_en), .CLK(CLK), .RST(RST), 
        .sampled_bit(sampled_bit), .Sampled_flag(Sampled_flag) );
  Edge_Bit_Counter u_Edge_Bit_Counter ( .Prescale(Prescale), .Count_En(
        count_en), .CLK(CLK), .RST(RST), .Edge_Count(Edge_Count), .Bit_Count(
        Bit_Count) );
  Deserializer u_Deserializer ( .deser_En(deser_en), .sampled_bit(sampled_bit), 
        .Sampled_flag(Sampled_flag), .Bit_Count({1'b0, Bit_Count[2:0]}), .CLK(
        CLK), .RST(RST), .P_DATA(P_DATA) );
  Start_Checker u_Start_Checker ( .CLK(CLK), .RST(RST), .sampled_bit(
        sampled_bit), .Sampled_flag(Sampled_flag), .Str_Chk_En(strt_chk_en), 
        .start_glitch(start_glitch) );
  Stop_Checker u_Stop_Checker ( .CLK(CLK), .RST(RST), .sampled_bit(sampled_bit), .Sampled_flag(Sampled_flag), .Stp_Chk_En(stp_chk_en), .stp_err(n4) );
  Parity_Checker u_Parity_Checker ( .PAR_TYP(PAR_TYP), .PAR_Chk_En(par_chk_en), 
        .sampled_bit(sampled_bit), .Bit_Count(Bit_Count), .CLK(CLK), .RST(RST), 
        .Sampled_flag(Sampled_flag), .par_err(n3) );
  UART_RX_FSM u_UART_RX_FSM ( .RX_IN(RX_IN), .PAR_EN(PAR_EN), .Bit_Count(
        Bit_Count), .par_err(n3), .stp_err(n4), .start_glitch(start_glitch), 
        .CLK(CLK), .RST(RST), .PAR_Chk_En(par_chk_en), .Str_Chk_En(strt_chk_en), .Stp_Chk_En(stp_chk_en), .Count_En(count_en), .Data_Sample_En(dat_samp_en), 
        .deser_En(deser_en), .DATA_VALID(data_valid) );
endmodule


module UART ( TX_CLK, RX_CLK, RST, Prescale, PAR_EN, PAR_TYP, TX_P_DATA, 
        TX_DATA_VALID, TX_OUT, TX_BUSY, RX_IN, RX_P_DATA, parity_error, 
        framing_error, RX_DATA_VALID );
  input [5:0] Prescale;
  input [7:0] TX_P_DATA;
  output [7:0] RX_P_DATA;
  input TX_CLK, RX_CLK, RST, PAR_EN, PAR_TYP, TX_DATA_VALID, RX_IN;
  output TX_OUT, TX_BUSY, parity_error, framing_error, RX_DATA_VALID;


  UART_TX_TOP u_UART_TX_TOP ( .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .DATA_VALID(
        TX_DATA_VALID), .P_DATA(TX_P_DATA), .CLK(TX_CLK), .RST(RST), .TX_OUT(
        TX_OUT), .busy(TX_BUSY) );
  UART_RX u_UART_RX ( .CLK(RX_CLK), .RST(RST), .RX_IN(RX_IN), .Prescale(
        Prescale), .PAR_EN(PAR_EN), .PAR_TYP(PAR_TYP), .P_DATA(RX_P_DATA), 
        .data_valid(RX_DATA_VALID) );
endmodule


module RST_Sync_NUM_STAGES2_0 ( CLK, RST, sync_RST );
  input CLK, RST;
  output sync_RST;
  wire   \sync_reg[1] ;

  DFFRQX1M \sync_reg_reg[1]  ( .D(1'b1), .CK(CLK), .RN(RST), .Q(\sync_reg[1] )
         );
  DFFRHQX8M \sync_reg_reg[0]  ( .D(\sync_reg[1] ), .CK(CLK), .RN(RST), .Q(
        sync_RST) );
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
  RST_Sync_NUM_STAGES2_1 u_REF_RST_Sync ( .CLK(REF_CLK), .RST(RST), .sync_RST(
        SYNC_REF_RST) );
  RST_Sync_NUM_STAGES2_0 u_UART_RST_Sync ( .CLK(UART_CLK), .RST(RST), 
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
  CLKINVX1M U1 ( .A(FIFO_EMPTY), .Y(n1) );
endmodule

