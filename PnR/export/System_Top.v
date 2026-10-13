/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Fri Oct  9 00:54:49 2026
/////////////////////////////////////////////////////////////
module MUX_2x1_7 (
	IN0, 
	IN1, 
	SEL, 
	OUT);
   input IN0;
   input IN1;
   input SEL;
   output OUT;

   CLKMX2X2M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN1), 
	.A(IN0));
endmodule

module MUX_2x1_6 (
	IN0, 
	IN1, 
	SEL, 
	OUT);
   input IN0;
   input IN1;
   input SEL;
   output OUT;

   MX2XLM U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN1), 
	.A(IN0));
endmodule

module MUX_2x1_5 (
	IN0, 
	IN1, 
	SEL, 
	OUT);
   input IN0;
   input IN1;
   input SEL;
   output OUT;

   MX2XLM U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN1), 
	.A(IN0));
endmodule

module MUX_2x1_4 (
	IN0, 
	IN1, 
	SEL, 
	OUT);
   input IN0;
   input IN1;
   input SEL;
   output OUT;

   CLKMX2X2M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN1), 
	.A(IN0));
endmodule

module MUX_2x1_3 (
	IN0, 
	IN1, 
	SEL, 
	OUT);
   input IN0;
   input IN1;
   input SEL;
   output OUT;

   CLKMX2X2M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN1), 
	.A(IN0));
endmodule

module MUX_2x1_2 (
	IN0, 
	IN1, 
	SEL, 
	OUT);
   input IN0;
   input IN1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN1_RST_N;
   wire FE_PHN0_RST_N;

   DLY4X1M FE_PHC1_RST_N (.Y(FE_PHN1_RST_N), 
	.A(FE_PHN0_RST_N));
   DLY4X1M FE_PHC0_RST_N (.Y(FE_PHN0_RST_N), 
	.A(IN0));
   MX2XLM U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN1), 
	.A(FE_PHN1_RST_N));
endmodule

module MUX_2x1_1 (
	IN0, 
	IN1, 
	SEL, 
	OUT);
   input IN0;
   input IN1;
   input SEL;
   output OUT;

   MX2X6M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN1), 
	.A(IN0));
endmodule

module MUX_2x1_0 (
	IN0, 
	IN1, 
	SEL, 
	OUT);
   input IN0;
   input IN1;
   input SEL;
   output OUT;

   MX2X8M U1 (.Y(OUT), 
	.S0(SEL), 
	.B(IN1), 
	.A(IN0));
endmodule

module ALU_WIDTH8_test_1 (
	A, 
	B, 
	ALU_FUN, 
	Enable, 
	CLK, 
	RST, 
	ALU_OUT, 
	OUT_VALID, 
	test_si, 
	test_se, 
	SPCASCAN_N0, 
	ALU_CLK_M__L3_N1);
   input [7:0] A;
   input [7:0] B;
   input [3:0] ALU_FUN;
   input Enable;
   input CLK;
   input RST;
   output [15:0] ALU_OUT;
   output OUT_VALID;
   input test_si;
   input test_se;
   input SPCASCAN_N0;
   input ALU_CLK_M__L3_N1;

   // Internal wires
   wire FE_RN_538_0;
   wire FE_RN_537_0;
   wire FE_RN_536_0;
   wire FE_RN_535_0;
   wire FE_RN_534_0;
   wire FE_RN_533_0;
   wire FE_RN_532_0;
   wire FE_RN_531_0;
   wire FE_RN_530_0;
   wire FE_RN_529_0;
   wire FE_RN_528_0;
   wire FE_RN_527_0;
   wire FE_RN_526_0;
   wire FE_RN_525_0;
   wire FE_RN_524_0;
   wire FE_RN_523_0;
   wire FE_RN_522_0;
   wire FE_RN_521_0;
   wire FE_RN_520_0;
   wire FE_RN_478_0;
   wire FE_RN_477_0;
   wire FE_RN_476_0;
   wire FE_RN_475_0;
   wire FE_RN_474_0;
   wire FE_RN_473_0;
   wire FE_RN_472_0;
   wire FE_RN_471_0;
   wire FE_RN_470_0;
   wire FE_RN_469_0;
   wire FE_RN_468_0;
   wire FE_RN_467_0;
   wire FE_RN_466_0;
   wire FE_RN_461_0;
   wire FE_RN_460_0;
   wire FE_RN_459_0;
   wire FE_RN_458_0;
   wire FE_RN_457_0;
   wire FE_RN_455_0;
   wire FE_RN_454_0;
   wire FE_RN_453_0;
   wire FE_RN_452_0;
   wire FE_RN_451_0;
   wire FE_RN_450_0;
   wire FE_RN_449_0;
   wire FE_RN_447_0;
   wire FE_RN_438_0;
   wire FE_RN_437_0;
   wire FE_RN_436_0;
   wire FE_RN_435_0;
   wire FE_RN_434_0;
   wire FE_RN_433_0;
   wire FE_RN_432_0;
   wire FE_RN_431_0;
   wire FE_RN_430_0;
   wire FE_RN_429_0;
   wire FE_RN_428_0;
   wire FE_RN_427_0;
   wire FE_RN_426_0;
   wire FE_RN_425_0;
   wire FE_RN_424_0;
   wire FE_RN_388_0;
   wire FE_RN_387_0;
   wire FE_RN_386_0;
   wire FE_RN_385_0;
   wire FE_RN_384_0;
   wire FE_RN_383_0;
   wire FE_RN_382_0;
   wire FE_RN_381_0;
   wire FE_RN_380_0;
   wire FE_RN_379_0;
   wire FE_RN_378_0;
   wire FE_RN_377_0;
   wire FE_RN_376_0;
   wire FE_RN_375_0;
   wire FE_RN_374_0;
   wire FE_RN_373_0;
   wire FE_RN_372_0;
   wire FE_RN_371_0;
   wire FE_RN_370_0;
   wire FE_RN_369_0;
   wire FE_RN_368_0;
   wire FE_RN_367_0;
   wire FE_RN_351_0;
   wire FE_RN_350_0;
   wire FE_RN_349_0;
   wire FE_RN_348_0;
   wire FE_RN_347_0;
   wire FE_RN_346_0;
   wire FE_RN_345_0;
   wire FE_RN_344_0;
   wire FE_RN_343_0;
   wire FE_RN_342_0;
   wire FE_RN_341_0;
   wire FE_RN_340_0;
   wire FE_RN_339_0;
   wire FE_RN_157_0;
   wire FE_RN_156_0;
   wire FE_RN_155_0;
   wire FE_RN_154_0;
   wire FE_RN_153_0;
   wire FE_RN_152_0;
   wire FE_RN_64_0;
   wire FE_RN_63_0;
   wire FE_RN_62_0;
   wire FE_RN_61_0;
   wire FE_RN_60_0;
   wire FE_RN_58_0;
   wire FE_RN_57_0;
   wire FE_RN_56_0;
   wire FE_RN_55_0;
   wire FE_RN_54_0;
   wire FE_RN_53_0;
   wire FE_RN_52_0;
   wire FE_RN_51_0;
   wire FE_RN_50_0;
   wire FE_RN_49_0;
   wire FE_RN_48_0;
   wire FE_RN_47_0;
   wire FE_RN_46_0;
   wire FE_RN_45_0;
   wire FE_RN_44_0;
   wire FE_RN_43_0;
   wire FE_RN_42_0;
   wire FE_RN_41_0;
   wire FE_RN_40_0;
   wire FE_RN_39_0;
   wire FE_RN_38_0;
   wire FE_RN_37_0;
   wire FE_RN_36_0;
   wire FE_RN_28_0;
   wire FE_RN_27_0;
   wire FE_RN_26_0;
   wire FE_RN_25_0;
   wire FE_RN_24_0;
   wire FE_RN_23_0;
   wire FE_RN_22_0;
   wire FE_RN_21_0;
   wire FE_RN_20_0;
   wire FE_RN_19_0;
   wire FE_RN_18_0;
   wire FE_RN_17_0;
   wire FE_RN_2_0;
   wire FE_RN_1_0;
   wire \C8/DATA15_0 ;
   wire \C8/DATA15_1 ;
   wire \C8/DATA15_2 ;
   wire \C8/DATA15_3 ;
   wire \C8/DATA15_4 ;
   wire \C8/DATA15_5 ;
   wire \C8/DATA15_6 ;
   wire \C8/DATA15_7 ;
   wire \DP_OP_30J1_122_2167/n43 ;
   wire \DP_OP_30J1_122_2167/n29 ;
   wire \DP_OP_30J1_122_2167/n28 ;
   wire \DP_OP_30J1_122_2167/n27 ;
   wire \DP_OP_30J1_122_2167/n26 ;
   wire \DP_OP_30J1_122_2167/n25 ;
   wire \DP_OP_30J1_122_2167/n24 ;
   wire \DP_OP_30J1_122_2167/n23 ;
   wire \DP_OP_30J1_122_2167/n22 ;
   wire \DP_OP_30J1_122_2167/n16 ;
   wire \DP_OP_30J1_122_2167/n15 ;
   wire \DP_OP_30J1_122_2167/n14 ;
   wire \DP_OP_30J1_122_2167/n13 ;
   wire \DP_OP_30J1_122_2167/n12 ;
   wire \DP_OP_30J1_122_2167/n11 ;
   wire \DP_OP_30J1_122_2167/n10 ;
   wire \DP_OP_30J1_122_2167/n9 ;
   wire \intadd_0/A[4] ;
   wire \intadd_0/A[3] ;
   wire \intadd_0/A[2] ;
   wire \intadd_0/A[1] ;
   wire \intadd_0/A[0] ;
   wire \intadd_0/B[4] ;
   wire \intadd_0/B[3] ;
   wire \intadd_0/B[2] ;
   wire \intadd_0/B[1] ;
   wire \intadd_0/B[0] ;
   wire \intadd_0/CI ;
   wire \intadd_0/SUM[4] ;
   wire \intadd_0/SUM[3] ;
   wire \intadd_0/SUM[2] ;
   wire \intadd_0/SUM[1] ;
   wire \intadd_0/SUM[0] ;
   wire \intadd_0/n5 ;
   wire \intadd_0/n4 ;
   wire \intadd_0/n3 ;
   wire \intadd_0/n2 ;
   wire \intadd_0/n1 ;
   wire \intadd_1/A[3] ;
   wire \intadd_1/A[2] ;
   wire \intadd_1/A[1] ;
   wire \intadd_1/A[0] ;
   wire \intadd_1/B[4] ;
   wire \intadd_1/B[3] ;
   wire \intadd_1/B[2] ;
   wire \intadd_1/B[1] ;
   wire \intadd_1/B[0] ;
   wire \intadd_1/CI ;
   wire \intadd_1/SUM[4] ;
   wire \intadd_1/SUM[3] ;
   wire \intadd_1/SUM[2] ;
   wire \intadd_1/SUM[1] ;
   wire \intadd_1/SUM[0] ;
   wire \intadd_1/n5 ;
   wire \intadd_1/n4 ;
   wire \intadd_1/n3 ;
   wire \intadd_1/n2 ;
   wire \intadd_1/n1 ;
   wire \intadd_2/A[3] ;
   wire \intadd_2/A[2] ;
   wire \intadd_2/A[1] ;
   wire \intadd_2/A[0] ;
   wire \intadd_2/B[3] ;
   wire \intadd_2/B[2] ;
   wire \intadd_2/B[1] ;
   wire \intadd_2/B[0] ;
   wire \intadd_2/CI ;
   wire \intadd_2/SUM[3] ;
   wire \intadd_2/SUM[2] ;
   wire \intadd_2/SUM[1] ;
   wire \intadd_2/SUM[0] ;
   wire \intadd_2/n4 ;
   wire \intadd_2/n3 ;
   wire \intadd_2/n2 ;
   wire \intadd_2/n1 ;
   wire \intadd_3/A[3] ;
   wire \intadd_3/A[2] ;
   wire \intadd_3/A[1] ;
   wire \intadd_3/A[0] ;
   wire \intadd_3/B[2] ;
   wire \intadd_3/B[1] ;
   wire \intadd_3/B[0] ;
   wire \intadd_3/CI ;
   wire \intadd_3/SUM[2] ;
   wire \intadd_3/SUM[0] ;
   wire \intadd_3/n4 ;
   wire \intadd_3/n3 ;
   wire \intadd_3/n2 ;
   wire \intadd_3/n1 ;
   wire \intadd_4/A[0] ;
   wire \intadd_4/B[1] ;
   wire \intadd_4/B[0] ;
   wire \intadd_4/CI ;
   wire \intadd_4/SUM[0] ;
   wire \intadd_4/n3 ;
   wire \intadd_4/n2 ;
   wire \intadd_4/n1 ;
   wire \intadd_5/A[2] ;
   wire \intadd_5/A[0] ;
   wire \intadd_5/B[1] ;
   wire \intadd_5/B[0] ;
   wire \intadd_5/CI ;
   wire \intadd_5/n3 ;
   wire \intadd_5/n2 ;
   wire \intadd_5/n1 ;
   wire \intadd_6/A[2] ;
   wire \intadd_6/A[0] ;
   wire \intadd_6/B[2] ;
   wire \intadd_6/B[1] ;
   wire \intadd_6/B[0] ;
   wire \intadd_6/CI ;
   wire \intadd_6/SUM[2] ;
   wire \intadd_6/SUM[1] ;
   wire \intadd_6/SUM[0] ;
   wire \intadd_6/n3 ;
   wire \intadd_6/n2 ;
   wire \intadd_6/n1 ;
   wire \intadd_7/A[1] ;
   wire \intadd_7/A[0] ;
   wire \intadd_7/B[2] ;
   wire \intadd_7/B[1] ;
   wire \intadd_7/B[0] ;
   wire \intadd_7/CI ;
   wire \intadd_7/SUM[2] ;
   wire \intadd_7/SUM[1] ;
   wire \intadd_7/SUM[0] ;
   wire \intadd_7/n3 ;
   wire \intadd_7/n2 ;
   wire \intadd_7/n1 ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n8;
   wire n9;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n90;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n294;
   wire n295;
   wire n296;
   wire n298;
   wire n301;
   wire n302;
   wire n304;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire [15:0] Comb_OUT;

   INVX2M FE_RC_660_0 (.Y(FE_RN_538_0), 
	.A(n307));
   NAND2BX2M FE_RC_659_0 (.Y(FE_RN_537_0), 
	.B(FE_RN_538_0), 
	.AN(n306));
   NAND3X2M FE_RC_658_0 (.Y(FE_RN_536_0), 
	.C(FE_RN_520_0), 
	.B(FE_RN_523_0), 
	.A(FE_RN_534_0));
   INVX2M FE_RC_657_0 (.Y(FE_RN_535_0), 
	.A(n307));
   NAND2BX2M FE_RC_656_0 (.Y(FE_RN_534_0), 
	.B(n306), 
	.AN(FE_RN_535_0));
   NAND3X2M FE_RC_655_0 (.Y(FE_RN_533_0), 
	.C(FE_RN_520_0), 
	.B(FE_RN_522_0), 
	.A(FE_RN_534_0));
   NAND3X3M FE_RC_654_0 (.Y(n314), 
	.C(FE_RN_537_0), 
	.B(FE_RN_536_0), 
	.A(FE_RN_533_0));
   INVX2M FE_RC_653_0 (.Y(FE_RN_532_0), 
	.A(n302));
   NAND2BX4M FE_RC_652_0 (.Y(FE_RN_531_0), 
	.B(FE_RN_532_0), 
	.AN(n301));
   INVX2M FE_RC_651_0 (.Y(FE_RN_530_0), 
	.A(n292));
   INVX2M FE_RC_650_0 (.Y(FE_RN_529_0), 
	.A(n294));
   INVX2M FE_RC_649_0 (.Y(FE_RN_528_0), 
	.A(n291));
   AOI32X2M FE_RC_648_0 (.Y(FE_RN_527_0), 
	.B1(n298), 
	.B0(B[2]), 
	.A2(FE_RN_528_0), 
	.A1(FE_RN_529_0), 
	.A0(FE_RN_530_0));
   INVX2M FE_RC_647_0 (.Y(FE_RN_526_0), 
	.A(B[2]));
   NAND2BX4M FE_RC_646_0 (.Y(FE_RN_525_0), 
	.B(FE_RN_526_0), 
	.AN(n298));
   OAI2BB1X1M FE_RC_645_0 (.Y(FE_RN_524_0), 
	.B0(FE_RN_525_0), 
	.A1N(FE_RN_527_0), 
	.A0N(n290));
   AOI22X4M FE_RC_644_0 (.Y(FE_RN_523_0), 
	.B1(n302), 
	.B0(n301), 
	.A1(FE_RN_524_0), 
	.A0(FE_RN_531_0));
   AND2X2M FE_RC_643_0 (.Y(FE_RN_522_0), 
	.B(n304), 
	.A(B[4]));
   INVX2M FE_RC_642_0 (.Y(FE_RN_521_0), 
	.A(B[4]));
   NAND2BX2M FE_RC_641_0 (.Y(FE_RN_520_0), 
	.B(FE_RN_521_0), 
	.AN(n304));
   INVX2M FE_RC_595_0 (.Y(FE_RN_478_0), 
	.A(n344));
   OAI21X4M FE_RC_594_0 (.Y(FE_RN_477_0), 
	.B0(n295), 
	.A1(A[1]), 
	.A0(FE_RN_478_0));
   INVX2M FE_RC_593_0 (.Y(FE_RN_476_0), 
	.A(FE_RN_457_0));
   INVX2M FE_RC_592_0 (.Y(FE_RN_475_0), 
	.A(FE_RN_469_0));
   NOR2X4M FE_RC_591_0 (.Y(FE_RN_474_0), 
	.B(FE_RN_458_0), 
	.A(FE_RN_475_0));
   NAND4X4M FE_RC_590_0 (.Y(FE_RN_473_0), 
	.D(A[1]), 
	.C(FE_RN_447_0), 
	.B(FE_RN_476_0), 
	.A(FE_RN_474_0));
   INVX2M FE_RC_589_0 (.Y(FE_RN_472_0), 
	.A(A[1]));
   INVX2M FE_RC_588_0 (.Y(FE_RN_471_0), 
	.A(n295));
   NAND2X6M FE_RC_587_0 (.Y(FE_RN_470_0), 
	.B(FE_RN_471_0), 
	.A(n344));
   NAND2X2M FE_RC_586_0 (.Y(FE_RN_469_0), 
	.B(n295), 
	.A(n296));
   NAND2X4M FE_RC_585_0 (.Y(FE_RN_468_0), 
	.B(n294), 
	.A(FE_RN_469_0));
   NAND2X4M FE_RC_584_0 (.Y(FE_RN_467_0), 
	.B(FE_RN_470_0), 
	.A(FE_RN_468_0));
   NAND2X4M FE_RC_583_0 (.Y(FE_RN_466_0), 
	.B(FE_RN_472_0), 
	.A(FE_RN_467_0));
   OAI2B11X2M FE_RC_582_0 (.Y(n298), 
	.C0(FE_RN_466_0), 
	.B0(FE_RN_473_0), 
	.A1N(FE_RN_477_0), 
	.A0(n296));
   INVX2M FE_RC_576_0 (.Y(FE_RN_461_0), 
	.A(FE_RN_452_0));
   NAND3BX4M FE_RC_575_0 (.Y(n294), 
	.C(FE_RN_447_0), 
	.B(FE_RN_459_0), 
	.AN(FE_RN_461_0));
   INVX2M FE_RC_574_0 (.Y(FE_RN_460_0), 
	.A(n344));
   NAND2X4M FE_RC_573_0 (.Y(FE_RN_459_0), 
	.B(B[6]), 
	.A(FE_RN_449_0));
   CLKNAND2X4M FE_RC_572_0 (.Y(FE_RN_458_0), 
	.B(FE_RN_460_0), 
	.A(FE_RN_459_0));
   INVX2M FE_RC_571_0 (.Y(FE_RN_457_0), 
	.A(FE_RN_452_0));
   INVX2M FE_RC_568_0 (.Y(FE_RN_455_0), 
	.A(n240));
   OAI21X2M FE_RC_567_0 (.Y(FE_RN_454_0), 
	.B0(FE_RN_449_0), 
	.A1(n316), 
	.A0(B[6]));
   AOI2B1X4M FE_RC_566_0 (.Y(FE_RN_453_0), 
	.B0(FE_RN_454_0), 
	.A1N(B[6]), 
	.A0(FE_RN_455_0));
   NOR2X6M FE_RC_565_0 (.Y(n315), 
	.B(B[7]), 
	.A(FE_RN_453_0));
   INVX2M FE_RC_564_0 (.Y(FE_RN_452_0), 
	.A(B[7]));
   INVX2M FE_RC_563_0 (.Y(FE_RN_451_0), 
	.A(FE_RN_437_0));
   NOR2X4M FE_RC_562_0 (.Y(FE_RN_450_0), 
	.B(n316), 
	.A(FE_RN_451_0));
   NAND3X2M FE_RC_561_0 (.Y(FE_RN_449_0), 
	.C(FE_RN_436_0), 
	.B(FE_RN_430_0), 
	.A(FE_RN_450_0));
   NAND2X3M FE_RC_559_0 (.Y(FE_RN_447_0), 
	.B(n316), 
	.A(n240));
   NAND3X2M FE_RC_548_0 (.Y(n240), 
	.C(FE_RN_430_0), 
	.B(FE_RN_436_0), 
	.A(FE_RN_437_0));
   OAI221X4M FE_RC_546_0 (.Y(n308), 
	.C0(FE_RN_427_0), 
	.B1(FE_RN_431_0), 
	.B0(FE_RN_424_0), 
	.A1(FE_RN_425_0), 
	.A0(FE_RN_431_0));
   INVX2M FE_RC_545_0 (.Y(FE_RN_438_0), 
	.A(n307));
   NAND2BX2M FE_RC_544_0 (.Y(FE_RN_437_0), 
	.B(FE_RN_438_0), 
	.AN(n311));
   NAND4X2M FE_RC_543_0 (.Y(FE_RN_436_0), 
	.D(FE_RN_427_0), 
	.C(FE_RN_424_0), 
	.B(FE_RN_425_0), 
	.A(FE_RN_433_0));
   INVX2M FE_RC_542_0 (.Y(FE_RN_435_0), 
	.A(FE_RN_427_0));
   INVX2M FE_RC_541_0 (.Y(FE_RN_434_0), 
	.A(n307));
   NAND2BX2M FE_RC_540_0 (.Y(FE_RN_433_0), 
	.B(n311), 
	.AN(FE_RN_434_0));
   NAND2X3M FE_RC_539_0 (.Y(FE_RN_432_0), 
	.B(B[4]), 
	.A(n272));
   CLKNAND2X4M FE_RC_538_0 (.Y(FE_RN_431_0), 
	.B(n280), 
	.A(FE_RN_432_0));
   NAND3BX2M FE_RC_537_0 (.Y(FE_RN_430_0), 
	.C(FE_RN_431_0), 
	.B(FE_RN_433_0), 
	.AN(FE_RN_435_0));
   INVX2M FE_RC_535_0 (.Y(n279), 
	.A(FE_RN_425_0));
   INVX2M FE_RC_534_0 (.Y(FE_RN_429_0), 
	.A(n282));
   OAI2BB1X2M FE_RC_533_0 (.Y(n273), 
	.B0(n280), 
	.A1N(FE_RN_425_0), 
	.A0N(FE_RN_429_0));
   INVX2M FE_RC_532_0 (.Y(FE_RN_428_0), 
	.A(B[4]));
   NAND2BX4M FE_RC_531_0 (.Y(FE_RN_427_0), 
	.B(FE_RN_428_0), 
	.AN(n272));
   INVX2M FE_RC_530_0 (.Y(FE_RN_426_0), 
	.A(B[3]));
   NAND2BX2M FE_RC_529_0 (.Y(FE_RN_425_0), 
	.B(FE_RN_426_0), 
	.AN(n232));
   INVX2M FE_RC_528_0 (.Y(FE_RN_424_0), 
	.A(n282));
   AND2X4M FE_RC_481_0 (.Y(FE_RN_388_0), 
	.B(FE_RN_377_0), 
	.A(n90));
   INVX2M FE_RC_480_0 (.Y(FE_RN_387_0), 
	.A(FE_RN_382_0));
   NAND2X2M FE_RC_479_0 (.Y(FE_RN_386_0), 
	.B(FE_RN_367_0), 
	.A(FE_RN_387_0));
   NAND2X5M FE_RC_478_0 (.Y(n238), 
	.B(FE_RN_388_0), 
	.A(FE_RN_386_0));
   INVX2M FE_RC_477_0 (.Y(FE_RN_385_0), 
	.A(FE_RN_383_0));
   INVX2M FE_RC_476_0 (.Y(FE_RN_384_0), 
	.A(n344));
   AND3X6M FE_RC_475_0 (.Y(FE_RN_383_0), 
	.C(FE_RN_384_0), 
	.B(n90), 
	.A(FE_RN_377_0));
   CLKNAND2X4M FE_RC_474_0 (.Y(FE_RN_382_0), 
	.B(FE_RN_339_0), 
	.A(FE_RN_344_0));
   INVX2M FE_RC_473_0 (.Y(FE_RN_381_0), 
	.A(n243));
   AOI21X4M FE_RC_472_0 (.Y(FE_RN_380_0), 
	.B0(FE_RN_381_0), 
	.A1(FE_RN_382_0), 
	.A0(FE_RN_383_0));
   OAI21X2M FE_RC_471_0 (.Y(n221), 
	.B0(FE_RN_380_0), 
	.A1(FE_RN_367_0), 
	.A0(FE_RN_385_0));
   INVX3M FE_RC_470_0 (.Y(n227), 
	.A(FE_RN_375_0));
   INVX2M FE_RC_469_0 (.Y(n230), 
	.A(FE_RN_372_0));
   NAND2X4M FE_RC_468_0 (.Y(FE_RN_379_0), 
	.B(FE_RN_372_0), 
	.A(FE_RN_375_0));
   CLKNAND2X8M FE_RC_467_0 (.Y(n83), 
	.B(n231), 
	.A(FE_RN_379_0));
   INVX2M FE_RC_466_0 (.Y(FE_RN_378_0), 
	.A(n307));
   NAND2BX2M FE_RC_465_0 (.Y(FE_RN_377_0), 
	.B(FE_RN_378_0), 
	.AN(n239));
   INVX2M FE_RC_464_0 (.Y(FE_RN_376_0), 
	.A(B[2]));
   NAND2BX4M FE_RC_463_0 (.Y(FE_RN_375_0), 
	.B(FE_RN_376_0), 
	.AN(n82));
   AND2X4M FE_RC_462_0 (.Y(FE_RN_374_0), 
	.B(n80), 
	.A(n81));
   NAND2X4M FE_RC_461_0 (.Y(FE_RN_373_0), 
	.B(n124), 
	.A(FE_RN_374_0));
   NAND2BX2M FE_RC_460_0 (.Y(FE_RN_372_0), 
	.B(FE_RN_373_0), 
	.AN(n79));
   INVX2M FE_RC_459_0 (.Y(FE_RN_371_0), 
	.A(FE_RN_372_0));
   INVX2M FE_RC_458_0 (.Y(FE_RN_370_0), 
	.A(n231));
   AOI2B1X4M FE_RC_457_0 (.Y(FE_RN_369_0), 
	.B0(FE_RN_370_0), 
	.A1N(FE_RN_371_0), 
	.A0(FE_RN_375_0));
   INVX2M FE_RC_456_0 (.Y(FE_RN_368_0), 
	.A(FE_RN_346_0));
   AOI22X4M FE_RC_455_0 (.Y(FE_RN_367_0), 
	.B1(n239), 
	.B0(n307), 
	.A1(FE_RN_368_0), 
	.A0(FE_RN_369_0));
   INVX2M FE_RC_433_0 (.Y(FE_RN_351_0), 
	.A(B[3]));
   NOR2BX2M FE_RC_432_0 (.Y(n235), 
	.B(n83), 
	.AN(FE_RN_351_0));
   INVX2M FE_RC_431_0 (.Y(FE_RN_350_0), 
	.A(B[3]));
   NAND2BX2M FE_RC_430_0 (.Y(n234), 
	.B(n83), 
	.AN(FE_RN_350_0));
   NAND2X2M FE_RC_429_0 (.Y(FE_RN_349_0), 
	.B(n83), 
	.A(FE_RN_343_0));
   CLKNAND2X4M FE_RC_428_0 (.Y(n215), 
	.B(FE_RN_348_0), 
	.A(FE_RN_349_0));
   NAND2BX2M FE_RC_427_0 (.Y(FE_RN_348_0), 
	.B(B[3]), 
	.AN(n237));
   NAND2X2M FE_RC_426_0 (.Y(FE_RN_347_0), 
	.B(n88), 
	.A(B[4]));
   NAND2X2M FE_RC_425_0 (.Y(FE_RN_346_0), 
	.B(FE_RN_348_0), 
	.A(FE_RN_347_0));
   INVX2M FE_RC_424_0 (.Y(FE_RN_345_0), 
	.A(FE_RN_343_0));
   NAND2BX2M FE_RC_423_0 (.Y(FE_RN_344_0), 
	.B(FE_RN_345_0), 
	.AN(B[4]));
   NAND2BX2M FE_RC_422_0 (.Y(FE_RN_343_0), 
	.B(n237), 
	.AN(B[3]));
   INVX2M FE_RC_421_0 (.Y(FE_RN_342_0), 
	.A(FE_RN_343_0));
   INVX2M FE_RC_420_0 (.Y(FE_RN_341_0), 
	.A(B[4]));
   INVX2M FE_RC_419_0 (.Y(FE_RN_340_0), 
	.A(n88));
   OAI21X2M FE_RC_418_0 (.Y(FE_RN_339_0), 
	.B0(FE_RN_340_0), 
	.A1(FE_RN_341_0), 
	.A0(FE_RN_342_0));
   NAND2X2M FE_RC_203_0 (.Y(FE_RN_157_0), 
	.B(n67), 
	.A(FE_RN_155_0));
   INVX2M FE_RC_202_0 (.Y(FE_RN_156_0), 
	.A(n264));
   NAND2BX2M FE_RC_201_0 (.Y(FE_RN_155_0), 
	.B(FE_RN_156_0), 
	.AN(n69));
   INVX2M FE_RC_200_0 (.Y(FE_RN_154_0), 
	.A(n72));
   INVX2M FE_RC_199_0 (.Y(FE_RN_153_0), 
	.A(B[4]));
   AOI22X2M FE_RC_198_0 (.Y(FE_RN_152_0), 
	.B1(FE_RN_153_0), 
	.B0(FE_RN_154_0), 
	.A1(n68), 
	.A0(FE_RN_155_0));
   AOI21X8M FE_RC_197_0 (.Y(n124), 
	.B0(n70), 
	.A1(FE_RN_152_0), 
	.A0(FE_RN_157_0));
   AND3X4M FE_RC_96_0 (.Y(n58), 
	.C(n19), 
	.B(FE_RN_60_0), 
	.A(n18));
   AND2X4M FE_RC_95_0 (.Y(FE_RN_64_0), 
	.B(n19), 
	.A(B[0]));
   AOI31X4M FE_RC_94_0 (.Y(n57), 
	.B0(A[4]), 
	.A2(FE_RN_60_0), 
	.A1(n18), 
	.A0(FE_RN_64_0));
   INVX2M FE_RC_93_0 (.Y(FE_RN_63_0), 
	.A(n19));
   NAND3BX4M FE_RC_92_0 (.Y(n61), 
	.C(n18), 
	.B(FE_RN_60_0), 
	.AN(FE_RN_63_0));
   INVX2M FE_RC_91_0 (.Y(FE_RN_62_0), 
	.A(n20));
   INVX2M FE_RC_90_0 (.Y(FE_RN_61_0), 
	.A(n69));
   NAND2X4M FE_RC_89_0 (.Y(FE_RN_60_0), 
	.B(FE_RN_62_0), 
	.A(FE_RN_61_0));
   AOI21X4M FE_RC_86_0 (.Y(n15), 
	.B0(n17), 
	.A1(n16), 
	.A0(n105));
   INVX2M FE_RC_85_0 (.Y(FE_RN_58_0), 
	.A(n15));
   NAND2X2M FE_RC_84_0 (.Y(FE_RN_50_0), 
	.B(FE_RN_58_0), 
	.A(FE_RN_48_0));
   CLKNAND2X4M FE_RC_83_0 (.Y(FE_RN_57_0), 
	.B(FE_RN_51_0), 
	.A(FE_RN_55_0));
   OAI21X2M FE_RC_82_0 (.Y(n20), 
	.B0(FE_RN_57_0), 
	.A1(n60), 
	.A0(FE_RN_46_0));
   INVX2M FE_RC_81_0 (.Y(FE_RN_56_0), 
	.A(n15));
   NAND2X4M FE_RC_80_0 (.Y(FE_RN_55_0), 
	.B(FE_RN_48_0), 
	.A(FE_RN_56_0));
   CLKNAND2X4M FE_RC_79_0 (.Y(FE_RN_54_0), 
	.B(FE_RN_51_0), 
	.A(FE_RN_55_0));
   OAI21X2M FE_RC_78_0 (.Y(FE_RN_53_0), 
	.B0(FE_RN_54_0), 
	.A1(n60), 
	.A0(FE_RN_46_0));
   INVX2M FE_RC_77_0 (.Y(FE_RN_52_0), 
	.A(n302));
   OAI2BB1X4M FE_RC_76_0 (.Y(n18), 
	.B0(FE_RN_52_0), 
	.A1N(FE_RN_53_0), 
	.A0N(n69));
   INVX2M FE_RC_75_0 (.Y(n65), 
	.A(FE_RN_50_0));
   INVX2M FE_RC_74_0 (.Y(FE_RN_51_0), 
	.A(B[2]));
   AND2X2M FE_RC_72_0 (.Y(FE_RN_49_0), 
	.B(n16), 
	.A(n17));
   NAND2X5M FE_RC_71_0 (.Y(FE_RN_48_0), 
	.B(FE_RN_49_0), 
	.A(n105));
   CLKNAND2X8M FE_RC_70_0 (.Y(FE_RN_47_0), 
	.B(B[2]), 
	.A(FE_RN_48_0));
   NOR2X3M FE_RC_69_0 (.Y(FE_RN_46_0), 
	.B(n15), 
	.A(FE_RN_47_0));
   OR2X2M FE_RC_67_0 (.Y(FE_RN_45_0), 
	.B(n338), 
	.A(A[7]));
   INVX2M FE_RC_66_0 (.Y(FE_RN_44_0), 
	.A(n9));
   INVX2M FE_RC_65_0 (.Y(FE_RN_43_0), 
	.A(n8));
   INVX2M FE_RC_64_0 (.Y(FE_RN_42_0), 
	.A(A[6]));
   NAND3BX4M FE_RC_63_0 (.Y(FE_RN_41_0), 
	.C(FE_RN_19_0), 
	.B(FE_RN_20_0), 
	.AN(FE_RN_42_0));
   NAND2X4M FE_RC_62_0 (.Y(FE_RN_40_0), 
	.B(FE_RN_43_0), 
	.A(FE_RN_41_0));
   NAND3X4M FE_RC_61_0 (.Y(FE_RN_39_0), 
	.C(FE_RN_45_0), 
	.B(FE_RN_44_0), 
	.A(FE_RN_40_0));
   INVX2M FE_RC_60_0 (.Y(FE_RN_38_0), 
	.A(n9));
   INVX2M FE_RC_59_0 (.Y(FE_RN_37_0), 
	.A(B[2]));
   NAND3BX4M FE_RC_58_0 (.Y(FE_RN_36_0), 
	.C(FE_RN_37_0), 
	.B(FE_RN_38_0), 
	.AN(n11));
   NAND2X4M FE_RC_57_0 (.Y(n105), 
	.B(FE_RN_39_0), 
	.A(FE_RN_36_0));
   NOR2X8M FE_RC_47_0 (.Y(n6), 
	.B(FE_RN_1_0), 
	.A(FE_RN_23_0));
   INVX2M FE_RC_46_0 (.Y(FE_RN_28_0), 
	.A(FE_RN_1_0));
   INVX2M FE_RC_45_0 (.Y(FE_RN_27_0), 
	.A(FE_RN_2_0));
   OAI21X4M FE_RC_44_0 (.Y(FE_RN_26_0), 
	.B0(n5), 
	.A1(A[6]), 
	.A0(n344));
   NOR2X6M FE_RC_43_0 (.Y(FE_RN_25_0), 
	.B(B[5]), 
	.A(FE_RN_26_0));
   NAND4X6M FE_RC_42_0 (.Y(n115), 
	.D(n338), 
	.C(FE_RN_28_0), 
	.B(FE_RN_27_0), 
	.A(FE_RN_25_0));
   CLKNAND2X8M FE_RC_41_0 (.Y(n17), 
	.B(FE_RN_20_0), 
	.A(A[6]));
   INVX2M FE_RC_40_0 (.Y(FE_RN_24_0), 
	.A(FE_RN_2_0));
   NAND3BX4M FE_RC_39_0 (.Y(FE_RN_23_0), 
	.C(n338), 
	.B(FE_RN_24_0), 
	.AN(B[5]));
   NAND2BX4M FE_RC_38_0 (.Y(FE_RN_22_0), 
	.B(n5), 
	.AN(n344));
   NOR2X4M FE_RC_37_0 (.Y(FE_RN_21_0), 
	.B(FE_RN_1_0), 
	.A(FE_RN_22_0));
   NAND2BX8M FE_RC_36_0 (.Y(FE_RN_20_0), 
	.B(FE_RN_21_0), 
	.AN(FE_RN_23_0));
   NAND3X12M FE_RC_35_0 (.Y(FE_RN_19_0), 
	.C(B[0]), 
	.B(n196), 
	.A(B[1]));
   INVX2M FE_RC_33_0 (.Y(FE_RN_18_0), 
	.A(n295));
   NAND2BX4M FE_RC_32_0 (.Y(n360), 
	.B(n6), 
	.AN(FE_RN_18_0));
   INVX2M FE_RC_31_0 (.Y(FE_RN_17_0), 
	.A(n295));
   OAI2B11X4M FE_RC_30_0 (.Y(n11), 
	.C0(A[7]), 
	.B0(n115), 
	.A1N(n6), 
	.A0(FE_RN_17_0));
   INVX6M FE_RC_9_0 (.Y(n307), 
	.A(B[5]));
   NOR2X6M FE_RC_8_0 (.Y(n19), 
	.B(FE_RN_1_0), 
	.A(B[5]));
   INVX2M FE_RC_7_0 (.Y(FE_RN_2_0), 
	.A(n302));
   NAND3X12M FE_RC_5_0 (.Y(n70), 
	.C(n258), 
	.B(n190), 
	.A(n307));
   NAND3BX4M FE_RC_4_0 (.Y(FE_RN_1_0), 
	.C(n190), 
	.B(n258), 
	.AN(B[4]));
   SDFFRQX1M OUT_VALID_reg (.SI(ALU_OUT[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(OUT_VALID), 
	.D(Enable), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[15]  (.SI(OUT_VALID), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[15]), 
	.D(Comb_OUT[15]), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[14]  (.SI(ALU_OUT[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[14]), 
	.D(Comb_OUT[14]), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[13]  (.SI(ALU_OUT[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[13]), 
	.D(Comb_OUT[13]), 
	.CK(ALU_CLK_M__L3_N1));
   SDFFRQX1M \ALU_OUT_reg[12]  (.SI(ALU_OUT[13]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[12]), 
	.D(Comb_OUT[12]), 
	.CK(ALU_CLK_M__L3_N1));
   SDFFRQX1M \ALU_OUT_reg[11]  (.SI(ALU_OUT[12]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[11]), 
	.D(Comb_OUT[11]), 
	.CK(ALU_CLK_M__L3_N1));
   SDFFRQX1M \ALU_OUT_reg[10]  (.SI(ALU_OUT[11]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[10]), 
	.D(Comb_OUT[10]), 
	.CK(ALU_CLK_M__L3_N1));
   SDFFRQX1M \ALU_OUT_reg[9]  (.SI(SPCASCAN_N0), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[9]), 
	.D(Comb_OUT[9]), 
	.CK(ALU_CLK_M__L3_N1));
   SDFFRQX1M \ALU_OUT_reg[8]  (.SI(ALU_OUT[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[8]), 
	.D(Comb_OUT[8]), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[7]  (.SI(ALU_OUT[14]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[7]), 
	.D(Comb_OUT[7]), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[6]  (.SI(ALU_OUT[15]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[6]), 
	.D(Comb_OUT[6]), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[5]  (.SI(ALU_OUT[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[5]), 
	.D(Comb_OUT[5]), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[4]  (.SI(ALU_OUT[9]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[4]), 
	.D(Comb_OUT[4]), 
	.CK(ALU_CLK_M__L3_N1));
   SDFFRQX1M \ALU_OUT_reg[3]  (.SI(ALU_OUT[8]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[3]), 
	.D(Comb_OUT[3]), 
	.CK(CLK));
   SDFFRQX1M \ALU_OUT_reg[2]  (.SI(ALU_OUT[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[2]), 
	.D(Comb_OUT[2]), 
	.CK(ALU_CLK_M__L3_N1));
   SDFFRX4M \ALU_OUT_reg[1]  (.SI(ALU_OUT[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[1]), 
	.D(Comb_OUT[1]), 
	.CK(ALU_CLK_M__L3_N1));
   SDFFRHQX1M \ALU_OUT_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_OUT[0]), 
	.D(Comb_OUT[0]), 
	.CK(CLK));
   ADDFX1M \intadd_3/U3  (.S(\intadd_3/SUM[2] ), 
	.CO(\intadd_3/n2 ), 
	.CI(\intadd_3/n3 ), 
	.B(\intadd_3/B[2] ), 
	.A(\intadd_3/A[2] ));
   ADDFX1M \intadd_4/U3  (.S(\intadd_1/A[2] ), 
	.CO(\intadd_4/n2 ), 
	.CI(\intadd_4/n3 ), 
	.B(\intadd_4/B[1] ), 
	.A(\intadd_0/SUM[0] ));
   ADDFX1M \intadd_4/U2  (.S(\intadd_1/B[3] ), 
	.CO(\intadd_4/n1 ), 
	.CI(\intadd_4/n2 ), 
	.B(\intadd_3/SUM[2] ), 
	.A(\intadd_0/SUM[1] ));
   ADDFX1M \intadd_3/U2  (.S(\intadd_1/B[4] ), 
	.CO(\intadd_3/n1 ), 
	.CI(\intadd_3/n2 ), 
	.B(\intadd_0/SUM[2] ), 
	.A(\intadd_3/A[3] ));
   ADDFX1M \intadd_1/U4  (.S(\intadd_1/SUM[2] ), 
	.CO(\intadd_1/n3 ), 
	.CI(\intadd_1/n4 ), 
	.B(\intadd_1/B[2] ), 
	.A(\intadd_1/A[2] ));
   ADDFX1M \intadd_2/U3  (.S(\intadd_2/SUM[2] ), 
	.CO(\intadd_2/n2 ), 
	.CI(\intadd_2/n3 ), 
	.B(\intadd_2/B[2] ), 
	.A(\intadd_2/A[2] ));
   ADDFX1M \intadd_1/U2  (.S(\intadd_1/SUM[4] ), 
	.CO(\intadd_1/n1 ), 
	.CI(\intadd_1/n2 ), 
	.B(\intadd_1/B[4] ), 
	.A(\intadd_4/n1 ));
   ADDFX1M \DP_OP_30J1_122_2167/U20  (.S(\C8/DATA15_1 ), 
	.CO(\DP_OP_30J1_122_2167/n15 ), 
	.CI(\DP_OP_30J1_122_2167/n16 ), 
	.B(A[1]), 
	.A(\DP_OP_30J1_122_2167/n28 ));
   ADDFX1M \intadd_0/U6  (.S(\intadd_0/SUM[0] ), 
	.CO(\intadd_0/n5 ), 
	.CI(\intadd_0/CI ), 
	.B(\intadd_0/B[0] ), 
	.A(\intadd_0/A[0] ));
   ADDFX1M \intadd_0/U5  (.S(\intadd_0/SUM[1] ), 
	.CO(\intadd_0/n4 ), 
	.CI(\intadd_0/n5 ), 
	.B(\intadd_0/B[1] ), 
	.A(\intadd_0/A[1] ));
   ADDFX1M \intadd_3/U5  (.S(\intadd_3/SUM[0] ), 
	.CO(\intadd_3/n4 ), 
	.CI(\intadd_3/CI ), 
	.B(\intadd_3/B[0] ), 
	.A(\intadd_3/A[0] ));
   ADDFX1M \intadd_3/U4  (.S(\intadd_1/B[2] ), 
	.CO(\intadd_3/n3 ), 
	.CI(\intadd_3/n4 ), 
	.B(\intadd_3/B[1] ), 
	.A(\intadd_3/A[1] ));
   ADDFX1M \intadd_4/U4  (.S(\intadd_4/SUM[0] ), 
	.CO(\intadd_4/n3 ), 
	.CI(\intadd_4/CI ), 
	.B(\intadd_4/B[0] ), 
	.A(\intadd_4/A[0] ));
   ADDFX1M \intadd_5/U4  (.S(\intadd_0/A[2] ), 
	.CO(\intadd_5/n3 ), 
	.CI(\intadd_5/CI ), 
	.B(\intadd_5/B[0] ), 
	.A(\intadd_5/A[0] ));
   ADDFX1M \intadd_0/U4  (.S(\intadd_0/SUM[2] ), 
	.CO(\intadd_0/n3 ), 
	.CI(\intadd_0/n4 ), 
	.B(\intadd_0/B[2] ), 
	.A(\intadd_0/A[2] ));
   ADDFX1M \intadd_6/U4  (.S(\intadd_6/SUM[0] ), 
	.CO(\intadd_6/n3 ), 
	.CI(\intadd_6/CI ), 
	.B(\intadd_6/B[0] ), 
	.A(\intadd_6/A[0] ));
   ADDFX1M \intadd_7/U3  (.S(\intadd_7/SUM[1] ), 
	.CO(\intadd_7/n2 ), 
	.CI(\intadd_7/n3 ), 
	.B(\intadd_7/B[1] ), 
	.A(\intadd_7/A[1] ));
   ADDFX1M \intadd_1/U3  (.S(\intadd_1/SUM[3] ), 
	.CO(\intadd_1/n2 ), 
	.CI(\intadd_1/n3 ), 
	.B(\intadd_1/B[3] ), 
	.A(\intadd_1/A[3] ));
   ADDFX1M \intadd_2/U5  (.S(\intadd_2/SUM[0] ), 
	.CO(\intadd_2/n4 ), 
	.CI(\intadd_2/CI ), 
	.B(\intadd_2/B[0] ), 
	.A(\intadd_2/A[0] ));
   ADDFX1M \intadd_5/U3  (.S(\intadd_0/B[3] ), 
	.CO(\intadd_5/n2 ), 
	.CI(\intadd_5/n3 ), 
	.B(\intadd_5/B[1] ), 
	.A(\intadd_2/SUM[0] ));
   ADDFX1M \intadd_5/U2  (.S(\intadd_0/B[4] ), 
	.CO(\intadd_5/n1 ), 
	.CI(\intadd_5/n2 ), 
	.B(\intadd_2/SUM[1] ), 
	.A(\intadd_5/A[2] ));
   ADDFX1M \intadd_2/U2  (.S(\intadd_2/SUM[3] ), 
	.CO(\intadd_2/n1 ), 
	.CI(\intadd_2/n2 ), 
	.B(\intadd_2/B[3] ), 
	.A(\intadd_2/A[3] ));
   ADDFX1M \DP_OP_30J1_122_2167/U18  (.S(\C8/DATA15_3 ), 
	.CO(\DP_OP_30J1_122_2167/n13 ), 
	.CI(\DP_OP_30J1_122_2167/n14 ), 
	.B(A[3]), 
	.A(\DP_OP_30J1_122_2167/n26 ));
   ADDFX1M \DP_OP_30J1_122_2167/U16  (.S(\C8/DATA15_5 ), 
	.CO(\DP_OP_30J1_122_2167/n11 ), 
	.CI(\DP_OP_30J1_122_2167/n12 ), 
	.B(A[5]), 
	.A(\DP_OP_30J1_122_2167/n24 ));
   ADDFX1M \DP_OP_30J1_122_2167/U15  (.S(\C8/DATA15_6 ), 
	.CO(\DP_OP_30J1_122_2167/n10 ), 
	.CI(\DP_OP_30J1_122_2167/n11 ), 
	.B(A[6]), 
	.A(\DP_OP_30J1_122_2167/n23 ));
   ADDFX1M \DP_OP_30J1_122_2167/U14  (.S(\C8/DATA15_7 ), 
	.CO(\DP_OP_30J1_122_2167/n9 ), 
	.CI(\DP_OP_30J1_122_2167/n10 ), 
	.B(A[7]), 
	.A(\DP_OP_30J1_122_2167/n22 ));
   INVX14M U3 (.Y(n295), 
	.A(B[1]));
   NOR2XLM U4 (.Y(n1), 
	.B(n40), 
	.A(\DP_OP_30J1_122_2167/n9 ));
   AOI31XLM U8 (.Y(n282), 
	.B0(n228), 
	.A2(n229), 
	.A1(n230), 
	.A0(n231));
   NAND2XLM U9 (.Y(n218), 
	.B(n216), 
	.A(n233));
   OAI31X2M U10 (.Y(n306), 
	.B0(n275), 
	.A2(n276), 
	.A1(n277), 
	.A0(n278));
   NOR2XLM U13 (.Y(n162), 
	.B(n338), 
	.A(n341));
   NOR2XLM U14 (.Y(n165), 
	.B(n243), 
	.A(n258));
   NAND2BXLM U15 (.Y(n326), 
	.B(n324), 
	.AN(n325));
   NOR2XLM U17 (.Y(\intadd_6/CI ), 
	.B(n264), 
	.A(n336));
   NAND2XLM U18 (.Y(n9), 
	.B(n302), 
	.A(n19));
   NOR2XLM U19 (.Y(n322), 
	.B(n194), 
	.A(n30));
   INVXLM U20 (.Y(\intadd_5/B[1] ), 
	.A(n146));
   INVXLM U21 (.Y(n212), 
	.A(n22));
   OAI31XLM U22 (.Y(\intadd_7/B[1] ), 
	.B0(n151), 
	.A2(n152), 
	.A1(n153), 
	.A0(n335));
   NOR2BXLM U23 (.Y(n4), 
	.B(n188), 
	.AN(n206));
   AOI222XLM U24 (.Y(\intadd_6/A[2] ), 
	.C1(n148), 
	.C0(n149), 
	.B1(n148), 
	.B0(n150), 
	.A1(n149), 
	.A0(n150));
   NOR2XLM U25 (.Y(n112), 
	.B(n260), 
	.A(n194));
   INVXLM U26 (.Y(\intadd_5/A[2] ), 
	.A(n139));
   AOI211XLM U27 (.Y(n332), 
	.C0(n193), 
	.B0(n194), 
	.A1(n195), 
	.A0(n210));
   OAI22XLM U28 (.Y(n126), 
	.B1(n352), 
	.B0(n243), 
	.A1(n357), 
	.A0(n267));
   OAI21XLM U29 (.Y(n120), 
	.B0(n118), 
	.A1(n119), 
	.A0(n370));
   OAI21XLM U30 (.Y(\intadd_0/A[4] ), 
	.B0(n140), 
	.A1(n141), 
	.A0(n142));
   OAI21XLM U31 (.Y(n110), 
	.B0(n99), 
	.A1(n100), 
	.A0(n150));
   AOI21XLM U32 (.Y(n51), 
	.B0(n41), 
	.A1(n122), 
	.A0(n1));
   OAI2B11XLM U33 (.Y(Comb_OUT[3]), 
	.C0(n130), 
	.B0(n131), 
	.A1N(\C8/DATA15_3 ), 
	.A0(n132));
   OR2X1M U34 (.Y(n2), 
	.B(ALU_FUN[2]), 
	.A(ALU_FUN[1]));
   NOR2XLM U35 (.Y(n365), 
	.B(ALU_FUN[3]), 
	.A(n2));
   NAND2XLM U36 (.Y(n132), 
	.B(Enable), 
	.A(n365));
   CLKINVX6M U37 (.Y(n264), 
	.A(B[4]));
   INVX14M U38 (.Y(n343), 
	.A(A[4]));
   NOR2XLM U39 (.Y(n171), 
	.B(n343), 
	.A(n264));
   INVXLM U40 (.Y(n25), 
	.A(ALU_FUN[3]));
   NAND2XLM U41 (.Y(n30), 
	.B(n25), 
	.A(ALU_FUN[1]));
   INVXLM U42 (.Y(n35), 
	.A(ALU_FUN[0]));
   NAND2XLM U43 (.Y(n194), 
	.B(n35), 
	.A(ALU_FUN[2]));
   INVXLM U44 (.Y(n354), 
	.A(n322));
   INVX14M U45 (.Y(n196), 
	.A(A[5]));
   NOR2XLM U46 (.Y(n21), 
	.B(ALU_FUN[1]), 
	.A(n25));
   NAND3XLM U47 (.Y(n242), 
	.C(n21), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[2]));
   OAI22XLM U48 (.Y(n29), 
	.B1(n242), 
	.B0(n196), 
	.A1(n354), 
	.A0(n171));
   NAND2XLM U49 (.Y(n206), 
	.B(n264), 
	.A(A[4]));
   NOR2XLM U50 (.Y(n188), 
	.B(n264), 
	.A(A[4]));
   NOR2XLM U51 (.Y(n3), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[2]));
   NAND2XLM U52 (.Y(n357), 
	.B(n21), 
	.A(n3));
   INVX8M U53 (.Y(n341), 
	.A(A[3]));
   NAND2XLM U54 (.Y(n260), 
	.B(ALU_FUN[3]), 
	.A(ALU_FUN[1]));
   INVXLM U55 (.Y(n352), 
	.A(n112));
   OAI22XLM U56 (.Y(n28), 
	.B1(n352), 
	.B0(n341), 
	.A1(n357), 
	.A0(n4));
   INVX12M U57 (.Y(n258), 
	.A(B[7]));
   INVX14M U58 (.Y(n190), 
	.A(B[6]));
   INVX14M U62 (.Y(n302), 
	.A(B[3]));
   INVX14M U63 (.Y(n338), 
	.A(B[2]));
   INVXLM U66 (.Y(n24), 
	.A(n30));
   NOR2XLM U67 (.Y(n22), 
	.B(ALU_FUN[2]), 
	.A(n35));
   OAI211X2M U68 (.Y(n361), 
	.C0(n22), 
	.B0(n24), 
	.A1(n360), 
	.A0(B[0]));
   INVX14M U69 (.Y(n344), 
	.A(B[0]));
   CLKINVX16M U70 (.Y(n359), 
	.A(A[7]));
   NAND2X2M U71 (.Y(n5), 
	.B(n359), 
	.A(B[1]));
   AOI21XLM U74 (.Y(n8), 
	.B0(B[1]), 
	.A1(n196), 
	.A0(B[0]));
   NOR2XLM U79 (.Y(n69), 
	.B(n105), 
	.A(n11));
   NAND2XLM U80 (.Y(n53), 
	.B(B[0]), 
	.A(n343));
   AOI21X2M U81 (.Y(n12), 
	.B0(A[5]), 
	.A1(B[0]), 
	.A0(n105));
   AOI31X2M U82 (.Y(n55), 
	.B0(n12), 
	.A2(B[0]), 
	.A1(A[5]), 
	.A0(n105));
   NAND3XLM U83 (.Y(n13), 
	.C(n343), 
	.B(B[0]), 
	.A(B[1]));
   AOI22X2M U84 (.Y(n60), 
	.B1(n13), 
	.B0(n55), 
	.A1(n53), 
	.A0(n295));
   NOR2XLM U85 (.Y(n14), 
	.B(n344), 
	.A(A[5]));
   OAI32XLM U86 (.Y(n16), 
	.B1(n295), 
	.B0(n14), 
	.A2(n344), 
	.A1(A[5]), 
	.A0(B[1]));
   NOR2XLM U91 (.Y(n32), 
	.B(A[4]), 
	.A(B[4]));
   INVXLM U92 (.Y(n193), 
	.A(n21));
   NOR2XLM U93 (.Y(n23), 
	.B(n212), 
	.A(n193));
   AOI21XLM U94 (.Y(n319), 
	.B0(n23), 
	.A1(ALU_FUN[2]), 
	.A0(n24));
   INVXLM U95 (.Y(n363), 
	.A(n319));
   AOI221X4M U96 (.Y(n356), 
	.C0(ALU_FUN[1]), 
	.B1(n194), 
	.B0(n25), 
	.A1(n212), 
	.A0(ALU_FUN[3]));
   AOI22XLM U97 (.Y(n26), 
	.B1(n356), 
	.B0(n171), 
	.A1(n363), 
	.A0(n32));
   OAI21XLM U98 (.Y(n27), 
	.B0(n26), 
	.A1(n61), 
	.A0(n361));
   OAI31XLM U99 (.Y(n34), 
	.B0(Enable), 
	.A2(n27), 
	.A1(n28), 
	.A0(n29));
   NOR3XLM U100 (.Y(n348), 
	.C(n30), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[2]));
   NAND2XLM U101 (.Y(n334), 
	.B(n348), 
	.A(Enable));
   INVXLM U102 (.Y(n129), 
	.A(n334));
   NAND2XLM U103 (.Y(n31), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[2]));
   NOR3X2M U104 (.Y(n320), 
	.C(n31), 
	.B(ALU_FUN[3]), 
	.A(ALU_FUN[1]));
   NAND2XLM U105 (.Y(n370), 
	.B(n320), 
	.A(Enable));
   AOI2BB2XLM U106 (.Y(n33), 
	.B1(n129), 
	.B0(\intadd_7/SUM[2] ), 
	.A1N(n32), 
	.A0N(n370));
   OAI2B11XLM U107 (.Y(Comb_OUT[4]), 
	.C0(n33), 
	.B0(n34), 
	.A1N(\C8/DATA15_4 ), 
	.A0(n132));
   INVXLM U108 (.Y(n36), 
	.A(n365));
   NOR2X2M U109 (.Y(\DP_OP_30J1_122_2167/n43 ), 
	.B(n35), 
	.A(n36));
   INVXLM U110 (.Y(n122), 
	.A(n132));
   INVXLM U111 (.Y(n40), 
	.A(\DP_OP_30J1_122_2167/n43 ));
   XNOR2XLM U112 (.Y(n38), 
	.B(n40), 
	.A(\DP_OP_30J1_122_2167/n9 ));
   NAND2XLM U113 (.Y(n46), 
	.B(Enable), 
	.A(n363));
   INVXLM U114 (.Y(n41), 
	.A(n46));
   AOI31XLM U115 (.Y(n37), 
	.B0(n41), 
	.A2(n112), 
	.A1(Enable), 
	.A0(A[7]));
   OAI2BB1XLM U116 (.Y(n39), 
	.B0(n37), 
	.A1N(n38), 
	.A0N(n122));
   AO21XLM U117 (.Y(Comb_OUT[8]), 
	.B0(n39), 
	.A1(n129), 
	.A0(\intadd_1/SUM[3] ));
   OAI2BB1XLM U118 (.Y(Comb_OUT[9]), 
	.B0(n51), 
	.A1N(\intadd_1/SUM[4] ), 
	.A0N(n129));
   INVXLM U119 (.Y(n142), 
	.A(\intadd_1/n1 ));
   INVXLM U120 (.Y(n141), 
	.A(\intadd_0/SUM[3] ));
   AOI22XLM U121 (.Y(n42), 
	.B1(n141), 
	.B0(n142), 
	.A1(\intadd_1/n1 ), 
	.A0(\intadd_0/SUM[3] ));
   AOI2BB2XLM U122 (.Y(n43), 
	.B1(n42), 
	.B0(\intadd_3/n1 ), 
	.A1N(n42), 
	.A0N(\intadd_3/n1 ));
   OAI2BB1XLM U123 (.Y(Comb_OUT[10]), 
	.B0(n51), 
	.A1N(n43), 
	.A0N(n129));
   OAI2BB1XLM U124 (.Y(Comb_OUT[11]), 
	.B0(n51), 
	.A1N(\intadd_0/SUM[4] ), 
	.A0N(n129));
   INVXLM U125 (.Y(n135), 
	.A(\intadd_0/n1 ));
   INVXLM U126 (.Y(n134), 
	.A(\intadd_2/SUM[2] ));
   AOI22XLM U127 (.Y(n44), 
	.B1(n134), 
	.B0(n135), 
	.A1(\intadd_0/n1 ), 
	.A0(\intadd_2/SUM[2] ));
   AOI2BB2XLM U128 (.Y(n45), 
	.B1(n44), 
	.B0(\intadd_5/n1 ), 
	.A1N(n44), 
	.A0N(\intadd_5/n1 ));
   OAI2BB1XLM U129 (.Y(Comb_OUT[12]), 
	.B0(n51), 
	.A1N(n45), 
	.A0N(n129));
   NOR2XLM U130 (.Y(n186), 
	.B(n307), 
	.A(n359));
   INVXLM U131 (.Y(n353), 
	.A(A[6]));
   NOR2XLM U132 (.Y(n185), 
	.B(n353), 
	.A(n190));
   NOR2XLM U133 (.Y(n184), 
	.B(n196), 
	.A(n258));
   NOR2XLM U134 (.Y(n182), 
	.B(n353), 
	.A(n258));
   NOR2XLM U135 (.Y(n181), 
	.B(n190), 
	.A(n359));
   NOR2XLM U136 (.Y(n355), 
	.B(n258), 
	.A(n359));
   OAI211XLM U137 (.Y(n47), 
	.C0(n129), 
	.B0(n355), 
	.A1(\intadd_2/n1 ), 
	.A0(n48));
   OAI2B11XLM U138 (.Y(Comb_OUT[15]), 
	.C0(n46), 
	.B0(n47), 
	.A1N(n1), 
	.A0(n132));
   OAI2BB1XLM U139 (.Y(Comb_OUT[13]), 
	.B0(n51), 
	.A1N(\intadd_2/SUM[3] ), 
	.A0N(n129));
   NOR2XLM U140 (.Y(n50), 
	.B(\intadd_2/n1 ), 
	.A(n48));
   AOI22XLM U141 (.Y(n49), 
	.B1(n50), 
	.B0(n355), 
	.A1(\intadd_2/n1 ), 
	.A0(n48));
   OAI21XLM U142 (.Y(n52), 
	.B0(n49), 
	.A1(n50), 
	.A0(n355));
   OAI2BB1XLM U143 (.Y(Comb_OUT[14]), 
	.B0(n51), 
	.A1N(n52), 
	.A0N(n129));
   CLKINVX2M U144 (.Y(n243), 
	.A(A[2]));
   NOR2XLM U145 (.Y(\intadd_6/A[0] ), 
	.B(n243), 
	.A(n338));
   OAI22XLM U146 (.Y(n95), 
	.B1(n242), 
	.B0(n341), 
	.A1(n354), 
	.A0(\intadd_6/A[0] ));
   AOI22XLM U147 (.Y(n266), 
	.B1(n338), 
	.B0(A[2]), 
	.A1(n243), 
	.A0(B[2]));
   INVXLM U148 (.Y(n244), 
	.A(A[1]));
   OAI22XLM U149 (.Y(n94), 
	.B1(n352), 
	.B0(n244), 
	.A1(n357), 
	.A0(n266));
   NAND2XLM U150 (.Y(n72), 
	.B(n61), 
	.A(n69));
   INVXLM U151 (.Y(n54), 
	.A(n53));
   AOI221X1M U152 (.Y(n56), 
	.C0(n61), 
	.B1(n53), 
	.B0(n295), 
	.A1(n54), 
	.A0(B[1]));
   XNOR2X2M U153 (.Y(n75), 
	.B(n55), 
	.A(n56));
   AOI31X2M U156 (.Y(n81), 
	.B0(n57), 
	.A2(n58), 
	.A1(A[4]), 
	.A0(B[0]));
   NAND3XLM U157 (.Y(n59), 
	.C(n341), 
	.B(B[1]), 
	.A(B[0]));
   NOR2XLM U158 (.Y(n78), 
	.B(n344), 
	.A(A[3]));
   AOI2BB2X2M U159 (.Y(n73), 
	.B1(n59), 
	.B0(n81), 
	.A1N(n78), 
	.A0N(B[1]));
   NOR2X2M U160 (.Y(n68), 
	.B(n85), 
	.A(B[3]));
   NAND2XLM U161 (.Y(n66), 
	.B(n60), 
	.A(B[2]));
   NOR2XLM U162 (.Y(n62), 
	.B(n60), 
	.A(B[2]));
   NOR2XLM U163 (.Y(n64), 
	.B(n61), 
	.A(n62));
   AOI21XLM U164 (.Y(n63), 
	.B0(n65), 
	.A1(n64), 
	.A0(n66));
   AOI31XLM U165 (.Y(n87), 
	.B0(n63), 
	.A2(n64), 
	.A1(n65), 
	.A0(n66));
   AOI21X2M U166 (.Y(n67), 
	.B0(n87), 
	.A1(n85), 
	.A0(B[3]));
   NOR2XLM U169 (.Y(n239), 
	.B(n124), 
	.A(n72));
   MXI2XLM U171 (.Y(n237), 
	.S0(n124), 
	.B(n74), 
	.A(n75));
   AOI21XLM U172 (.Y(n77), 
	.B0(B[1]), 
	.A1(n243), 
	.A0(B[0]));
   AOI21X2M U173 (.Y(n76), 
	.B0(A[3]), 
	.A1(B[0]), 
	.A0(n124));
   AOI31X2M U174 (.Y(n226), 
	.B0(n76), 
	.A2(B[0]), 
	.A1(A[3]), 
	.A0(n124));
   NOR2XLM U175 (.Y(n223), 
	.B(A[2]), 
	.A(n344));
   OAI2BB2X2M U176 (.Y(n82), 
	.B1(n226), 
	.B0(n77), 
	.A1N(n223), 
	.A0N(B[1]));
   OAI32XLM U178 (.Y(n80), 
	.B1(n295), 
	.B0(n78), 
	.A2(n344), 
	.A1(A[3]), 
	.A0(B[1]));
   AOI21XLM U179 (.Y(n79), 
	.B0(n81), 
	.A1(n80), 
	.A0(n124));
   NAND2X2M U181 (.Y(n231), 
	.B(n82), 
	.A(B[2]));
   NAND2XLM U186 (.Y(n84), 
	.B(n85), 
	.A(B[3]));
   OAI211XLM U187 (.Y(n86), 
	.C0(n84), 
	.B0(n124), 
	.A1(n85), 
	.A0(B[3]));
   XOR2X2M U188 (.Y(n220), 
	.B(n86), 
	.A(n87));
   INVX2M U189 (.Y(n88), 
	.A(n220));
   NOR2XLM U190 (.Y(n90), 
	.B(B[6]), 
	.A(B[7]));
   NOR2XLM U193 (.Y(n96), 
	.B(A[2]), 
	.A(B[2]));
   AOI22XLM U194 (.Y(n92), 
	.B1(n356), 
	.B0(\intadd_6/A[0] ), 
	.A1(n363), 
	.A0(n96));
   OAI21XLM U195 (.Y(n93), 
	.B0(n92), 
	.A1(n361), 
	.A0(n238));
   OAI31X1M U196 (.Y(n98), 
	.B0(Enable), 
	.A2(n93), 
	.A1(n94), 
	.A0(n95));
   AOI2BB2XLM U197 (.Y(n97), 
	.B1(n129), 
	.B0(\intadd_7/SUM[0] ), 
	.A1N(n370), 
	.A0N(n96));
   OAI2B11X2M U198 (.Y(Comb_OUT[2]), 
	.C0(n97), 
	.B0(n98), 
	.A1N(\C8/DATA15_2 ), 
	.A0(n132));
   NAND2XLM U199 (.Y(n152), 
	.B(A[1]), 
	.A(B[2]));
   CLKINVX2M U200 (.Y(n336), 
	.A(A[0]));
   NOR2XLM U201 (.Y(n153), 
	.B(n302), 
	.A(n336));
   NAND2XLM U202 (.Y(n337), 
	.B(A[1]), 
	.A(B[1]));
   NOR3XLM U203 (.Y(n335), 
	.C(n337), 
	.B(n338), 
	.A(n336));
   AOI2B1XLM U204 (.Y(n157), 
	.B0(n335), 
	.A1N(n152), 
	.A0(n153));
   NAND2XLM U205 (.Y(n156), 
	.B(A[1]), 
	.A(B[3]));
   NOR4XLM U206 (.Y(n339), 
	.D(n295), 
	.C(n243), 
	.B(n341), 
	.A(n344));
   INVXLM U207 (.Y(n154), 
	.A(n339));
   INVXLM U208 (.Y(n148), 
	.A(\intadd_7/n1 ));
   INVXLM U209 (.Y(n149), 
	.A(\intadd_6/SUM[1] ));
   AOI22XLM U210 (.Y(n100), 
	.B1(n149), 
	.B0(\intadd_7/n1 ), 
	.A1(n148), 
	.A0(\intadd_6/SUM[1] ));
   AOI21XLM U211 (.Y(n99), 
	.B0(n334), 
	.A1(n100), 
	.A0(n150));
   INVXLM U212 (.Y(n323), 
	.A(n242));
   NAND2XLM U213 (.Y(n143), 
	.B(A[5]), 
	.A(B[5]));
   AOI22XLM U214 (.Y(n104), 
	.B1(n143), 
	.B0(n322), 
	.A1(n323), 
	.A0(A[6]));
   NAND2XLM U215 (.Y(n207), 
	.B(n196), 
	.A(B[5]));
   NAND2XLM U216 (.Y(n263), 
	.B(n307), 
	.A(A[5]));
   AOI21XLM U217 (.Y(n102), 
	.B0(n357), 
	.A1(n263), 
	.A0(n207));
   NAND2XLM U218 (.Y(n107), 
	.B(n196), 
	.A(n307));
   INVXLM U219 (.Y(n245), 
	.A(n356));
   OAI22XLM U220 (.Y(n101), 
	.B1(n143), 
	.B0(n245), 
	.A1(n107), 
	.A0(n319));
   AOI211XLM U221 (.Y(n103), 
	.C0(n101), 
	.B0(n102), 
	.A1(A[4]), 
	.A0(n112));
   OAI2B11XLM U222 (.Y(n108), 
	.C0(n103), 
	.B0(n104), 
	.A1N(n105), 
	.A0(n361));
   INVXLM U223 (.Y(n106), 
	.A(n370));
   AOI22XLM U224 (.Y(n109), 
	.B1(n106), 
	.B0(n107), 
	.A1(Enable), 
	.A0(n108));
   OAI2B11XLM U225 (.Y(Comb_OUT[5]), 
	.C0(n109), 
	.B0(n110), 
	.A1N(\C8/DATA15_5 ), 
	.A0(n132));
   NOR2XLM U226 (.Y(n119), 
	.B(A[6]), 
	.A(B[6]));
   OAI22XLM U227 (.Y(n117), 
	.B1(n242), 
	.B0(n359), 
	.A1(n354), 
	.A0(n185));
   INVXLM U228 (.Y(n111), 
	.A(n357));
   AOI22XLM U229 (.Y(n259), 
	.B1(n190), 
	.B0(n353), 
	.A1(A[6]), 
	.A0(B[6]));
   AOI22XLM U230 (.Y(n114), 
	.B1(n259), 
	.B0(n111), 
	.A1(n112), 
	.A0(A[5]));
   AOI22XLM U231 (.Y(n113), 
	.B1(n356), 
	.B0(n185), 
	.A1(n363), 
	.A0(n119));
   OAI211XLM U232 (.Y(n116), 
	.C0(n113), 
	.B0(n114), 
	.A1(n115), 
	.A0(n361));
   OAI21XLM U233 (.Y(n118), 
	.B0(Enable), 
	.A1(n116), 
	.A0(n117));
   AOI21XLM U234 (.Y(n121), 
	.B0(n120), 
	.A1(n129), 
	.A0(\intadd_6/SUM[2] ));
   OAI2BB1XLM U235 (.Y(Comb_OUT[6]), 
	.B0(n121), 
	.A1N(\C8/DATA15_6 ), 
	.A0N(n122));
   NOR2XLM U236 (.Y(\intadd_4/CI ), 
	.B(n341), 
	.A(n302));
   OAI22XLM U237 (.Y(n127), 
	.B1(n242), 
	.B0(n343), 
	.A1(n354), 
	.A0(\intadd_4/CI ));
   AOI22XLM U238 (.Y(n267), 
	.B1(n302), 
	.B0(A[3]), 
	.A1(n341), 
	.A0(B[3]));
   NOR2XLM U239 (.Y(n128), 
	.B(A[3]), 
	.A(B[3]));
   AOI22XLM U240 (.Y(n123), 
	.B1(n356), 
	.B0(\intadd_4/CI ), 
	.A1(n363), 
	.A0(n128));
   OAI2B1XLM U241 (.Y(n125), 
	.B0(n123), 
	.A1N(n124), 
	.A0(n361));
   OAI31XLM U242 (.Y(n131), 
	.B0(Enable), 
	.A2(n125), 
	.A1(n126), 
	.A0(n127));
   AOI2BB2XLM U243 (.Y(n130), 
	.B1(n129), 
	.B0(\intadd_7/SUM[1] ), 
	.A1N(n128), 
	.A0N(n370));
   XOR2XLM U244 (.Y(\DP_OP_30J1_122_2167/n26 ), 
	.B(B[3]), 
	.A(\DP_OP_30J1_122_2167/n43 ));
   XOR2XLM U245 (.Y(\DP_OP_30J1_122_2167/n25 ), 
	.B(B[4]), 
	.A(\DP_OP_30J1_122_2167/n43 ));
   XOR2XLM U246 (.Y(\DP_OP_30J1_122_2167/n23 ), 
	.B(B[6]), 
	.A(\DP_OP_30J1_122_2167/n43 ));
   XOR2XLM U247 (.Y(\DP_OP_30J1_122_2167/n22 ), 
	.B(B[7]), 
	.A(\DP_OP_30J1_122_2167/n43 ));
   OAI21XLM U248 (.Y(n133), 
	.B0(\intadd_5/n1 ), 
	.A1(\intadd_0/n1 ), 
	.A0(\intadd_2/SUM[2] ));
   OAI21XLM U249 (.Y(\intadd_2/A[3] ), 
	.B0(n133), 
	.A1(n134), 
	.A0(n135));
   NOR2XLM U250 (.Y(\intadd_2/B[1] ), 
	.B(n196), 
	.A(n190));
   NOR2XLM U251 (.Y(n138), 
	.B(n264), 
	.A(n359));
   NOR2XLM U252 (.Y(n137), 
	.B(n307), 
	.A(n353));
   NOR2XLM U253 (.Y(n136), 
	.B(n343), 
	.A(n258));
   ADDFX1M U254 (.S(\intadd_2/A[1] ), 
	.CO(\intadd_2/A[2] ), 
	.CI(n136), 
	.B(n137), 
	.A(n138));
   NAND2XLM U255 (.Y(n164), 
	.B(B[2]), 
	.A(A[7]));
   NOR4XLM U256 (.Y(n166), 
	.D(n295), 
	.C(n338), 
	.B(n353), 
	.A(n359));
   AOI2B1XLM U257 (.Y(n145), 
	.B0(n166), 
	.A1N(n164), 
	.A0(n165));
   NAND2XLM U258 (.Y(n144), 
	.B(A[4]), 
	.A(B[6]));
   OAI21XLM U259 (.Y(n140), 
	.B0(\intadd_3/n1 ), 
	.A1(\intadd_1/n1 ), 
	.A0(\intadd_0/SUM[3] ));
   NOR2XLM U261 (.Y(\intadd_2/CI ), 
	.B(n341), 
	.A(n258));
   NOR2XLM U262 (.Y(\intadd_2/B[0] ), 
	.B(n264), 
	.A(n353));
   NOR2XLM U263 (.Y(\intadd_2/A[0] ), 
	.B(n302), 
	.A(n359));
   INVXLM U264 (.Y(n347), 
	.A(\intadd_6/n1 ));
   INVXLM U265 (.Y(n346), 
	.A(\intadd_1/SUM[2] ));
   OAI21XLM U266 (.Y(n147), 
	.B0(n351), 
	.A1(\intadd_6/n1 ), 
	.A0(\intadd_1/SUM[2] ));
   OAI21XLM U267 (.Y(\intadd_1/A[3] ), 
	.B0(n147), 
	.A1(n346), 
	.A0(n347));
   NOR2XLM U268 (.Y(\intadd_1/B[1] ), 
	.B(n264), 
	.A(n243));
   OAI21XLM U269 (.Y(n151), 
	.B0(n153), 
	.A1(n152), 
	.A0(n335));
   ADDFX1M U270 (.S(n158), 
	.CO(n150), 
	.CI(n154), 
	.B(n156), 
	.A(n157));
   INVXLM U271 (.Y(\intadd_7/B[2] ), 
	.A(n158));
   NOR4XLM U272 (.Y(\intadd_4/A[0] ), 
	.D(n343), 
	.C(n295), 
	.B(n196), 
	.A(n344));
   NAND2XLM U273 (.Y(n159), 
	.B(A[4]), 
	.A(B[1]));
   AOI221XLM U274 (.Y(n161), 
	.C0(\intadd_4/A[0] ), 
	.B1(n159), 
	.B0(n344), 
	.A1(n159), 
	.A0(n196));
   NOR2XLM U275 (.Y(n160), 
	.B(n307), 
	.A(n336));
   ADDFX1M U276 (.S(\intadd_6/B[1] ), 
	.CO(\intadd_1/A[1] ), 
	.CI(n160), 
	.B(n161), 
	.A(n162));
   NOR2XLM U277 (.Y(\intadd_1/CI ), 
	.B(n243), 
	.A(n302));
   NOR2XLM U278 (.Y(\intadd_1/B[0] ), 
	.B(n264), 
	.A(n244));
   NOR4XLM U279 (.Y(\intadd_1/A[0] ), 
	.D(n343), 
	.C(n295), 
	.B(n341), 
	.A(n344));
   OAI21XLM U280 (.Y(n163), 
	.B0(n165), 
	.A1(n164), 
	.A0(n166));
   OAI31XLM U281 (.Y(\intadd_0/B[2] ), 
	.B0(n163), 
	.A2(n164), 
	.A1(n165), 
	.A0(n166));
   NOR2XLM U282 (.Y(\intadd_5/CI ), 
	.B(n341), 
	.A(n190));
   NOR2XLM U283 (.Y(\intadd_5/B[0] ), 
	.B(n264), 
	.A(n196));
   NOR2XLM U284 (.Y(\intadd_5/A[0] ), 
	.B(n302), 
	.A(n353));
   NOR2XLM U285 (.Y(n173), 
	.B(n302), 
	.A(n196));
   NAND2XLM U286 (.Y(n167), 
	.B(B[2]), 
	.A(A[6]));
   AOI221XLM U287 (.Y(n172), 
	.C0(n166), 
	.B1(n167), 
	.B0(n359), 
	.A1(n167), 
	.A0(n295));
   NOR4XLM U288 (.Y(n176), 
	.D(n295), 
	.C(n353), 
	.B(n359), 
	.A(n344));
   NOR2XLM U289 (.Y(n175), 
	.B(n244), 
	.A(n258));
   NOR2XLM U290 (.Y(n174), 
	.B(n341), 
	.A(n307));
   NOR2XLM U291 (.Y(n168), 
	.B(n343), 
	.A(n307));
   ADDFX1M U292 (.S(\intadd_3/A[3] ), 
	.CO(\intadd_0/A[3] ), 
	.CI(n168), 
	.B(n169), 
	.A(n170));
   NOR2XLM U293 (.Y(\intadd_4/B[0] ), 
	.B(n244), 
	.A(n307));
   NOR2XLM U294 (.Y(\intadd_3/CI ), 
	.B(n190), 
	.A(n336));
   NOR2XLM U295 (.Y(\intadd_3/A[0] ), 
	.B(n343), 
	.A(n338));
   NOR2XLM U296 (.Y(\intadd_3/B[1] ), 
	.B(n264), 
	.A(n341));
   NOR2XLM U297 (.Y(\intadd_3/A[1] ), 
	.B(n243), 
	.A(n307));
   ADDFX1M U298 (.S(\intadd_3/B[2] ), 
	.CO(n170), 
	.CI(n171), 
	.B(n172), 
	.A(n173));
   ADDFX1M U299 (.S(\intadd_3/A[2] ), 
	.CO(n169), 
	.CI(n174), 
	.B(n175), 
	.A(n176));
   NOR2XLM U300 (.Y(\intadd_0/CI ), 
	.B(n343), 
	.A(n302));
   NOR2XLM U301 (.Y(\intadd_0/B[0] ), 
	.B(n244), 
	.A(n190));
   NOR4XLM U302 (.Y(\intadd_0/A[0] ), 
	.D(n295), 
	.C(n196), 
	.B(n353), 
	.A(n344));
   NOR2XLM U303 (.Y(\intadd_0/B[1] ), 
	.B(n243), 
	.A(n190));
   NOR2XLM U304 (.Y(n180), 
	.B(n338), 
	.A(n196));
   NAND2XLM U305 (.Y(n177), 
	.B(B[1]), 
	.A(A[6]));
   AOI221XLM U306 (.Y(n179), 
	.C0(n176), 
	.B1(n177), 
	.B0(n344), 
	.A1(n177), 
	.A0(n359));
   NOR2XLM U307 (.Y(n178), 
	.B(n258), 
	.A(n336));
   ADDFX1M U308 (.S(\intadd_4/B[1] ), 
	.CO(\intadd_0/A[1] ), 
	.CI(n178), 
	.B(n179), 
	.A(n180));
   ADDFX1M U309 (.S(\intadd_2/B[3] ), 
	.CO(n48), 
	.CI(n181), 
	.B(n182), 
	.A(n183));
   ADDFX1M U310 (.S(\intadd_2/B[2] ), 
	.CO(n183), 
	.CI(n184), 
	.B(n185), 
	.A(n186));
   NOR2XLM U311 (.Y(\intadd_7/CI ), 
	.B(n243), 
	.A(n344));
   XOR2XLM U312 (.Y(\DP_OP_30J1_122_2167/n27 ), 
	.B(B[2]), 
	.A(\DP_OP_30J1_122_2167/n43 ));
   NOR4X1M U313 (.Y(\intadd_7/A[0] ), 
	.D(n244), 
	.C(n295), 
	.B(n336), 
	.A(n344));
   AOI22XLM U314 (.Y(n256), 
	.B1(B[1]), 
	.B0(A[0]), 
	.A1(A[1]), 
	.A0(B[0]));
   NAND2XLM U315 (.Y(n210), 
	.B(n359), 
	.A(B[7]));
   NAND2XLM U316 (.Y(n211), 
	.B(B[6]), 
	.A(n353));
   NAND2XLM U317 (.Y(n201), 
	.B(n243), 
	.A(B[2]));
   NAND2XLM U318 (.Y(n296), 
	.B(B[0]), 
	.A(n336));
   INVXLM U319 (.Y(n257), 
	.A(n296));
   NAND2XLM U320 (.Y(n199), 
	.B(n338), 
	.A(A[2]));
   NAND2XLM U321 (.Y(n197), 
	.B(n295), 
	.A(A[1]));
   NOR2XLM U322 (.Y(n198), 
	.B(n295), 
	.A(A[1]));
   AOI32XLM U323 (.Y(n187), 
	.B1(n199), 
	.B0(n198), 
	.A2(n197), 
	.A1(n199), 
	.A0(n257));
   NAND2XLM U324 (.Y(n204), 
	.B(n341), 
	.A(B[3]));
   NOR2XLM U325 (.Y(n202), 
	.B(n341), 
	.A(B[3]));
   AOI31XLM U326 (.Y(n189), 
	.B0(n202), 
	.A2(n204), 
	.A1(n187), 
	.A0(n201));
   AOI32XLM U327 (.Y(n191), 
	.B1(n263), 
	.B0(n188), 
	.A2(n206), 
	.A1(n263), 
	.A0(n189));
   AOI22XLM U328 (.Y(n192), 
	.B1(n190), 
	.B0(A[6]), 
	.A1(n207), 
	.A0(n191));
   OAI2B2XLM U329 (.Y(n195), 
	.B1(n359), 
	.B0(B[7]), 
	.A1N(n211), 
	.A0(n192));
   NAND2XLM U330 (.Y(n214), 
	.B(n258), 
	.A(A[7]));
   AOI22XLM U331 (.Y(n262), 
	.B1(n343), 
	.B0(B[4]), 
	.A1(n196), 
	.A0(B[5]));
   OAI31XLM U332 (.Y(n200), 
	.B0(n197), 
	.A2(n336), 
	.A1(n198), 
	.A0(B[0]));
   OAI2BB1XLM U333 (.Y(n203), 
	.B0(n199), 
	.A1N(n200), 
	.A0N(n201));
   AOI32XLM U334 (.Y(n205), 
	.B1(n262), 
	.B0(n202), 
	.A2(n203), 
	.A1(n262), 
	.A0(n204));
   OAI2B11XLM U335 (.Y(n209), 
	.C0(n263), 
	.B0(n205), 
	.A1N(n207), 
	.A0(n206));
   NOR2XLM U336 (.Y(n208), 
	.B(n353), 
	.A(B[6]));
   AOI32XLM U337 (.Y(n213), 
	.B1(n210), 
	.B0(n208), 
	.A2(n209), 
	.A1(n210), 
	.A0(n211));
   AOI211XLM U338 (.Y(n254), 
	.C0(n260), 
	.B0(n212), 
	.A1(n213), 
	.A0(n214));
   NOR2XLM U339 (.Y(n219), 
	.B(n215), 
	.A(B[4]));
   INVXLM U340 (.Y(n233), 
	.A(n238));
   NAND2XLM U341 (.Y(n216), 
	.B(n215), 
	.A(B[4]));
   OAI21XLM U342 (.Y(n217), 
	.B0(n220), 
	.A1(n218), 
	.A0(n219));
   OAI31X1M U343 (.Y(n311), 
	.B0(n217), 
	.A2(n218), 
	.A1(n219), 
	.A0(n220));
   NOR2XLM U344 (.Y(n289), 
	.B(n344), 
	.A(A[1]));
   OAI31X2M U345 (.Y(n292), 
	.B0(n221), 
	.A2(n344), 
	.A1(n243), 
	.A0(n238));
   OAI21XLM U346 (.Y(n222), 
	.B0(n295), 
	.A1(n344), 
	.A0(A[1]));
   AOI22X2M U347 (.Y(n283), 
	.B1(n222), 
	.B0(n292), 
	.A1(n289), 
	.A0(B[1]));
   OAI32XLM U348 (.Y(n225), 
	.B1(n223), 
	.B0(B[1]), 
	.A2(n344), 
	.A1(A[2]), 
	.A0(n295));
   OAI21XLM U349 (.Y(n224), 
	.B0(n226), 
	.A1(n225), 
	.A0(n238));
   OAI31X1M U350 (.Y(n287), 
	.B0(n224), 
	.A2(n225), 
	.A1(n226), 
	.A0(n238));
   AOI222X1M U351 (.Y(n232), 
	.C1(n287), 
	.C0(n338), 
	.B1(n287), 
	.B0(n283), 
	.A1(n338), 
	.A0(n283));
   NOR2XLM U353 (.Y(n229), 
	.B(n238), 
	.A(n227));
   AOI21XLM U354 (.Y(n228), 
	.B0(n230), 
	.A1(n229), 
	.A0(n231));
   NAND2X2M U355 (.Y(n280), 
	.B(n232), 
	.A(B[3]));
   NAND3BXLM U357 (.Y(n236), 
	.C(n233), 
	.B(n234), 
	.AN(n235));
   XOR2X2M U358 (.Y(n272), 
	.B(n236), 
	.A(n237));
   NAND2XLM U361 (.Y(n316), 
	.B(n238), 
	.A(n239));
   NAND2XLM U365 (.Y(n250), 
	.B(n244), 
	.A(n295));
   OAI22XLM U366 (.Y(n248), 
	.B1(n242), 
	.B0(n243), 
	.A1(n352), 
	.A0(n336));
   AOI22XLM U367 (.Y(n265), 
	.B1(n295), 
	.B0(A[1]), 
	.A1(n244), 
	.A0(B[1]));
   OAI2BB2XLM U368 (.Y(n247), 
	.B1(n357), 
	.B0(n265), 
	.A1N(n322), 
	.A0N(n337));
   OAI33XLM U369 (.Y(n246), 
	.B2(n244), 
	.B1(n245), 
	.B0(n295), 
	.A2(n319), 
	.A1(A[1]), 
	.A0(B[1]));
   NOR3XLM U370 (.Y(n249), 
	.C(n246), 
	.B(n247), 
	.A(n248));
   OAI2BB1XLM U371 (.Y(n251), 
	.B0(n249), 
	.A1N(n320), 
	.A0N(n250));
   AOI21XLM U372 (.Y(n252), 
	.B0(n251), 
	.A1(n365), 
	.A0(\C8/DATA15_1 ));
   OAI21XLM U373 (.Y(n253), 
	.B0(n252), 
	.A1(n361), 
	.A0(n294));
   OAI31X1M U374 (.Y(n255), 
	.B0(Enable), 
	.A2(n253), 
	.A1(n254), 
	.A0(n332));
   OAI31X1M U375 (.Y(Comb_OUT[1]), 
	.B0(n255), 
	.A2(n334), 
	.A1(n256), 
	.A0(\intadd_7/A[0] ));
   AOI21XLM U376 (.Y(n271), 
	.B0(n320), 
	.A1(n356), 
	.A0(B[0]));
   AOI21XLM U377 (.Y(n321), 
	.B0(n257), 
	.A1(n344), 
	.A0(A[0]));
   AOI22XLM U378 (.Y(n358), 
	.B1(n359), 
	.B0(B[7]), 
	.A1(n258), 
	.A0(A[7]));
   NOR4XLM U379 (.Y(n261), 
	.D(n259), 
	.C(n260), 
	.B(ALU_FUN[0]), 
	.A(ALU_FUN[2]));
   NAND4XLM U380 (.Y(n270), 
	.D(n261), 
	.C(n358), 
	.B(n321), 
	.A(n262));
   AOI21BXLM U381 (.Y(n268), 
	.B0N(n263), 
	.A1(n264), 
	.A0(A[4]));
   NAND4XLM U382 (.Y(n269), 
	.D(n265), 
	.C(n266), 
	.B(n267), 
	.A(n268));
   OAI22XLM U383 (.Y(n331), 
	.B1(n269), 
	.B0(n270), 
	.A1(n336), 
	.A0(n271));
   NOR2XLM U384 (.Y(n278), 
	.B(n273), 
	.A(B[4]));
   INVXLM U385 (.Y(n277), 
	.A(n272));
   NAND2XLM U386 (.Y(n274), 
	.B(n273), 
	.A(B[4]));
   NAND2XLM U387 (.Y(n276), 
	.B(n274), 
	.A(n315));
   OAI21X1M U388 (.Y(n275), 
	.B0(n277), 
	.A1(n276), 
	.A0(n278));
   NOR3BXLM U389 (.Y(n281), 
	.C(n294), 
	.B(n279), 
	.AN(n280));
   XNOR2XLM U390 (.Y(n304), 
	.B(n281), 
	.A(n282));
   NOR2XLM U391 (.Y(n288), 
	.B(n338), 
	.A(n283));
   NAND2XLM U392 (.Y(n284), 
	.B(n338), 
	.A(n283));
   NAND2XLM U393 (.Y(n286), 
	.B(n284), 
	.A(n315));
   OAI21XLM U394 (.Y(n285), 
	.B0(n287), 
	.A1(n286), 
	.A0(n288));
   OAI31XLM U395 (.Y(n301), 
	.B0(n285), 
	.A2(n286), 
	.A1(n287), 
	.A0(n288));
   OAI32XLM U396 (.Y(n291), 
	.B1(n289), 
	.B0(B[1]), 
	.A2(n344), 
	.A1(A[1]), 
	.A0(n295));
   OAI21XLM U397 (.Y(n290), 
	.B0(n292), 
	.A1(n291), 
	.A0(n294));
   NAND2XLM U403 (.Y(n310), 
	.B(n307), 
	.A(n308));
   OR2X1M U404 (.Y(n309), 
	.B(n307), 
	.A(n308));
   NAND3XLM U405 (.Y(n312), 
	.C(n315), 
	.B(n309), 
	.A(n310));
   XOR2XLM U406 (.Y(n313), 
	.B(n311), 
	.A(n312));
   AOI222X2M U407 (.Y(n318), 
	.C1(n313), 
	.C0(n314), 
	.B1(n313), 
	.B0(B[6]), 
	.A1(n314), 
	.A0(B[6]));
   NOR3XLM U408 (.Y(n317), 
	.C(n315), 
	.B(n316), 
	.A(B[7]));
   OAI2BB2X2M U409 (.Y(n329), 
	.B1(n317), 
	.B0(n318), 
	.A1N(n316), 
	.A0N(B[7]));
   AOI211XLM U410 (.Y(n327), 
	.C0(n319), 
	.B0(A[0]), 
	.A1(B[0]), 
	.A0(n354));
   OAI2BB2XLM U411 (.Y(n325), 
	.B1(n357), 
	.B0(n321), 
	.A1N(n320), 
	.A0N(B[0]));
   AOI22XLM U412 (.Y(n324), 
	.B1(n344), 
	.B0(n322), 
	.A1(A[1]), 
	.A0(n323));
   AOI211XLM U413 (.Y(n328), 
	.C0(n326), 
	.B0(n327), 
	.A1(n365), 
	.A0(\C8/DATA15_0 ));
   OAI21X2M U414 (.Y(n330), 
	.B0(n328), 
	.A1(n361), 
	.A0(n329));
   OAI31X2M U415 (.Y(n333), 
	.B0(Enable), 
	.A2(n330), 
	.A1(n331), 
	.A0(n332));
   OAI31X1M U416 (.Y(Comb_OUT[0]), 
	.B0(n333), 
	.A2(n336), 
	.A1(n334), 
	.A0(n344));
   XOR2XLM U417 (.Y(\DP_OP_30J1_122_2167/n29 ), 
	.B(B[0]), 
	.A(\DP_OP_30J1_122_2167/n43 ));
   XOR2XLM U418 (.Y(\DP_OP_30J1_122_2167/n24 ), 
	.B(B[5]), 
	.A(\DP_OP_30J1_122_2167/n43 ));
   XOR2XLM U419 (.Y(\DP_OP_30J1_122_2167/n28 ), 
	.B(B[1]), 
	.A(\DP_OP_30J1_122_2167/n43 ));
   AOI221XLM U420 (.Y(\intadd_7/B[0] ), 
	.C0(n335), 
	.B1(n337), 
	.B0(n336), 
	.A1(n337), 
	.A0(n338));
   NAND2XLM U421 (.Y(n340), 
	.B(B[1]), 
	.A(A[2]));
   AOI221XLM U422 (.Y(\intadd_7/A[1] ), 
	.C0(n339), 
	.B1(n340), 
	.B0(n344), 
	.A1(n340), 
	.A0(n341));
   NAND2XLM U423 (.Y(n342), 
	.B(B[1]), 
	.A(A[3]));
   AOI221XLM U424 (.Y(\intadd_6/B[0] ), 
	.C0(\intadd_1/A[0] ), 
	.B1(n342), 
	.B0(n344), 
	.A1(n342), 
	.A0(n343));
   NAND2XLM U425 (.Y(n345), 
	.B(B[1]), 
	.A(A[5]));
   AOI221XLM U426 (.Y(\intadd_3/B[0] ), 
	.C0(\intadd_0/A[0] ), 
	.B1(n345), 
	.B0(n344), 
	.A1(n345), 
	.A0(n353));
   ADDFX1M U427 (.S(\intadd_6/B[2] ), 
	.CO(n351), 
	.CI(\intadd_4/SUM[0] ), 
	.B(\intadd_1/SUM[1] ), 
	.A(\intadd_3/SUM[0] ));
   AOI22XLM U428 (.Y(n350), 
	.B1(n346), 
	.B0(n347), 
	.A1(\intadd_6/n1 ), 
	.A0(\intadd_1/SUM[2] ));
   OAI21XLM U429 (.Y(n349), 
	.B0(n348), 
	.A1(n350), 
	.A0(n351));
   AOI21XLM U430 (.Y(n369), 
	.B0(n349), 
	.A1(n350), 
	.A0(n351));
   OAI22XLM U431 (.Y(n368), 
	.B1(n352), 
	.B0(n353), 
	.A1(n354), 
	.A0(n355));
   OAI2BB2XLM U432 (.Y(n367), 
	.B1(n357), 
	.B0(n358), 
	.A1N(n355), 
	.A0N(n356));
   NOR2XLM U433 (.Y(n371), 
	.B(B[7]), 
	.A(A[7]));
   NOR3XLM U434 (.Y(n362), 
	.C(n359), 
	.B(n360), 
	.A(n361));
   AOI21XLM U435 (.Y(n364), 
	.B0(n362), 
	.A1(n371), 
	.A0(n363));
   OAI2BB1XLM U436 (.Y(n366), 
	.B0(n364), 
	.A1N(\C8/DATA15_7 ), 
	.A0N(n365));
   NOR4XLM U437 (.Y(n372), 
	.D(n366), 
	.C(n367), 
	.B(n368), 
	.A(n369));
   OAI2B2XLM U438 (.Y(Comb_OUT[7]), 
	.B1(n370), 
	.B0(n371), 
	.A1N(Enable), 
	.A0(n372));
   ADDFXLM \intadd_0/U2  (.S(\intadd_0/SUM[4] ), 
	.CO(\intadd_0/n1 ), 
	.CI(\intadd_0/n2 ), 
	.B(\intadd_0/B[4] ), 
	.A(\intadd_0/A[4] ));
   ADDFXLM \DP_OP_30J1_122_2167/U17  (.S(\C8/DATA15_4 ), 
	.CO(\DP_OP_30J1_122_2167/n12 ), 
	.CI(\DP_OP_30J1_122_2167/n13 ), 
	.B(A[4]), 
	.A(\DP_OP_30J1_122_2167/n25 ));
   ADDFXLM \DP_OP_30J1_122_2167/U19  (.S(\C8/DATA15_2 ), 
	.CO(\DP_OP_30J1_122_2167/n14 ), 
	.CI(\DP_OP_30J1_122_2167/n15 ), 
	.B(A[2]), 
	.A(\DP_OP_30J1_122_2167/n27 ));
   ADDFXLM \intadd_0/U3  (.S(\intadd_0/SUM[3] ), 
	.CO(\intadd_0/n2 ), 
	.CI(\intadd_0/n3 ), 
	.B(\intadd_0/B[3] ), 
	.A(\intadd_0/A[3] ));
   ADDFXLM \intadd_6/U2  (.S(\intadd_6/SUM[2] ), 
	.CO(\intadd_6/n1 ), 
	.CI(\intadd_6/n2 ), 
	.B(\intadd_6/B[2] ), 
	.A(\intadd_6/A[2] ));
   ADDFXLM \intadd_7/U2  (.S(\intadd_7/SUM[2] ), 
	.CO(\intadd_7/n1 ), 
	.CI(\intadd_7/n2 ), 
	.B(\intadd_7/B[2] ), 
	.A(\intadd_6/SUM[0] ));
   ADDFXLM \intadd_7/U4  (.S(\intadd_7/SUM[0] ), 
	.CO(\intadd_7/n3 ), 
	.CI(\intadd_7/CI ), 
	.B(\intadd_7/B[0] ), 
	.A(\intadd_7/A[0] ));
   ADDFXLM \intadd_2/U4  (.S(\intadd_2/SUM[1] ), 
	.CO(\intadd_2/n3 ), 
	.CI(\intadd_2/n4 ), 
	.B(\intadd_2/B[1] ), 
	.A(\intadd_2/A[1] ));
   ADDFXLM \intadd_1/U5  (.S(\intadd_1/SUM[1] ), 
	.CO(\intadd_1/n4 ), 
	.CI(\intadd_1/n5 ), 
	.B(\intadd_1/B[1] ), 
	.A(\intadd_1/A[1] ));
   ADDFXLM \intadd_6/U3  (.S(\intadd_6/SUM[1] ), 
	.CO(\intadd_6/n2 ), 
	.CI(\intadd_6/n3 ), 
	.B(\intadd_6/B[1] ), 
	.A(\intadd_1/SUM[0] ));
   ADDFXLM \DP_OP_30J1_122_2167/U21  (.S(\C8/DATA15_0 ), 
	.CO(\DP_OP_30J1_122_2167/n16 ), 
	.CI(\DP_OP_30J1_122_2167/n29 ), 
	.B(\DP_OP_30J1_122_2167/n43 ), 
	.A(A[0]));
   ADDFXLM \intadd_1/U6  (.S(\intadd_1/SUM[0] ), 
	.CO(\intadd_1/n5 ), 
	.CI(\intadd_1/CI ), 
	.B(\intadd_1/B[0] ), 
	.A(\intadd_1/A[0] ));
   ADDFHX1M U170 (.S(n74), 
	.CO(n85), 
	.CI(n73), 
	.B(n75), 
	.A(B[2]));
   ADDFXLM U260 (.S(n146), 
	.CO(n139), 
	.CI(n143), 
	.B(n144), 
	.A(n145));
endmodule

module FIFO_MEM_DATA_WIDTH8_DEPTH8_test_1 (
	w_clk, 
	w_rst, 
	w_addr, 
	r_addr, 
	w_inc, 
	w_full, 
	w_data, 
	r_data, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_se, 
	test_so1_BAR, 
	FE_PT1_ALU_OUT_10_, 
	SPCASCAN_N0, 
	FE_PT1_sync_r_ptr_0_, 
	SPCASCAN_N3, 
	FE_PT1_grey_r_ptr_0_, 
	SPCASCAN_N4, 
	FE_OFN3_SYNC_REF_RST_M, 
	SPCBSCAN_N15, 
	REF_CLK_M__L10_N1, 
	REF_CLK_M__L10_N3, 
	REF_CLK_M__L10_N6, 
	REF_CLK_M__L10_N7);
   input w_clk;
   input w_rst;
   input [2:0] w_addr;
   input [2:0] r_addr;
   input w_inc;
   input w_full;
   input [7:0] w_data;
   output [7:0] r_data;
   input test_si2;
   input test_si1;
   output test_so2;
   input test_se;
   output test_so1_BAR;
   input FE_PT1_ALU_OUT_10_;
   output SPCASCAN_N0;
   input FE_PT1_sync_r_ptr_0_;
   output SPCASCAN_N3;
   input FE_PT1_grey_r_ptr_0_;
   output SPCASCAN_N4;
   input FE_OFN3_SYNC_REF_RST_M;
   output SPCBSCAN_N15;
   input REF_CLK_M__L10_N1;
   input REF_CLK_M__L10_N3;
   input REF_CLK_M__L10_N6;
   input REF_CLK_M__L10_N7;

   // Internal wires
   wire FE_OFN18_n67;
   wire FE_OFN17_n53;
   wire FE_OFN16_n51;
   wire FE_OFN15_n49;
   wire FE_OFN14_n55;
   wire FE_OFN13_n52;
   wire FE_OFN12_n50;
   wire FE_OFN11_n47;
   wire \mem_Buffer[0][7] ;
   wire \mem_Buffer[0][6] ;
   wire \mem_Buffer[0][5] ;
   wire \mem_Buffer[0][4] ;
   wire \mem_Buffer[0][3] ;
   wire \mem_Buffer[0][2] ;
   wire \mem_Buffer[0][1] ;
   wire \mem_Buffer[0][0] ;
   wire \mem_Buffer[1][7] ;
   wire \mem_Buffer[1][6] ;
   wire \mem_Buffer[1][5] ;
   wire \mem_Buffer[1][4] ;
   wire \mem_Buffer[1][2] ;
   wire \mem_Buffer[1][1] ;
   wire \mem_Buffer[1][0] ;
   wire \mem_Buffer[2][7] ;
   wire \mem_Buffer[2][6] ;
   wire \mem_Buffer[2][5] ;
   wire \mem_Buffer[2][4] ;
   wire \mem_Buffer[2][3] ;
   wire \mem_Buffer[2][2] ;
   wire \mem_Buffer[2][1] ;
   wire \mem_Buffer[2][0] ;
   wire \mem_Buffer[3][7] ;
   wire \mem_Buffer[3][6] ;
   wire \mem_Buffer[3][5] ;
   wire \mem_Buffer[3][4] ;
   wire \mem_Buffer[3][3] ;
   wire \mem_Buffer[3][2] ;
   wire \mem_Buffer[3][1] ;
   wire \mem_Buffer[3][0] ;
   wire \mem_Buffer[4][7] ;
   wire \mem_Buffer[4][6] ;
   wire \mem_Buffer[4][5] ;
   wire \mem_Buffer[4][4] ;
   wire \mem_Buffer[4][3] ;
   wire \mem_Buffer[4][2] ;
   wire \mem_Buffer[4][1] ;
   wire \mem_Buffer[4][0] ;
   wire \mem_Buffer[5][7] ;
   wire \mem_Buffer[5][6] ;
   wire \mem_Buffer[5][5] ;
   wire \mem_Buffer[5][4] ;
   wire \mem_Buffer[5][3] ;
   wire \mem_Buffer[5][2] ;
   wire \mem_Buffer[5][1] ;
   wire \mem_Buffer[5][0] ;
   wire \mem_Buffer[6][7] ;
   wire \mem_Buffer[6][6] ;
   wire \mem_Buffer[6][5] ;
   wire \mem_Buffer[6][3] ;
   wire \mem_Buffer[6][2] ;
   wire \mem_Buffer[6][1] ;
   wire \mem_Buffer[6][0] ;
   wire \mem_Buffer[7][7] ;
   wire \mem_Buffer[7][6] ;
   wire \mem_Buffer[7][5] ;
   wire \mem_Buffer[7][4] ;
   wire \mem_Buffer[7][3] ;
   wire \mem_Buffer[7][2] ;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n71;
   wire n73;
   wire n75;
   wire n76;
   wire n77;

   assign test_so2 = \mem_Buffer[7][7]  ;
   assign test_so1_BAR = n71 ;

   BUFX2M FE_OFC18_n67 (.Y(FE_OFN18_n67), 
	.A(n67));
   BUFX2M FE_OFC17_n53 (.Y(FE_OFN17_n53), 
	.A(n53));
   BUFX2M FE_OFC16_n51 (.Y(FE_OFN16_n51), 
	.A(n51));
   BUFX2M FE_OFC15_n49 (.Y(FE_OFN15_n49), 
	.A(n49));
   BUFX2M FE_OFC14_n55 (.Y(FE_OFN14_n55), 
	.A(n55));
   BUFX2M FE_OFC13_n52 (.Y(FE_OFN13_n52), 
	.A(n52));
   BUFX2M FE_OFC12_n50 (.Y(FE_OFN12_n50), 
	.A(n50));
   BUFX2M FE_OFC11_n47 (.Y(FE_OFN11_n47), 
	.A(n47));
   SDFFRQX1M \mem_Buffer_reg[0][7]  (.SI(\mem_Buffer[1][5] ), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[0][7] ), 
	.D(n206), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[0][6]  (.SI(\mem_Buffer[2][6] ), 
	.SE(n76), 
	.RN(w_rst), 
	.Q(\mem_Buffer[0][6] ), 
	.D(n205), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[0][5]  (.SI(\mem_Buffer[2][5] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[0][5] ), 
	.D(n204), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[0][4]  (.SI(\mem_Buffer[2][4] ), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[0][4] ), 
	.D(n203), 
	.CK(REF_CLK_M__L10_N3));
   SDFFRQX1M \mem_Buffer_reg[0][3]  (.SI(\mem_Buffer[1][4] ), 
	.SE(n77), 
	.RN(w_rst), 
	.Q(\mem_Buffer[0][3] ), 
	.D(n202), 
	.CK(REF_CLK_M__L10_N1));
   SDFFRQX1M \mem_Buffer_reg[0][2]  (.SI(\mem_Buffer[3][2] ), 
	.SE(n76), 
	.RN(w_rst), 
	.Q(\mem_Buffer[0][2] ), 
	.D(n201), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[0][1]  (.SI(\mem_Buffer[3][5] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[0][1] ), 
	.D(n200), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[0][0]  (.SI(\mem_Buffer[4][3] ), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[0][0] ), 
	.D(n199), 
	.CK(REF_CLK_M__L10_N1));
   SDFFRQX1M \mem_Buffer_reg[1][7]  (.SI(\mem_Buffer[3][4] ), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[1][7] ), 
	.D(n198), 
	.CK(REF_CLK_M__L10_N1));
   SDFFRQX1M \mem_Buffer_reg[1][6]  (.SI(\mem_Buffer[1][2] ), 
	.SE(n76), 
	.RN(w_rst), 
	.Q(\mem_Buffer[1][6] ), 
	.D(n197), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[1][5]  (.SI(\mem_Buffer[3][6] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[1][5] ), 
	.D(n196), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[1][4]  (.SI(\mem_Buffer[0][4] ), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[1][4] ), 
	.D(n195), 
	.CK(REF_CLK_M__L10_N1));
   SDFFRQX1M \mem_Buffer_reg[1][3]  (.SI(\mem_Buffer[0][3] ), 
	.SE(n77), 
	.RN(w_rst), 
	.Q(SPCASCAN_N0), 
	.D(n194), 
	.CK(w_clk));
   SDFFRQX1M \mem_Buffer_reg[1][2]  (.SI(\mem_Buffer[0][2] ), 
	.SE(n76), 
	.RN(w_rst), 
	.Q(\mem_Buffer[1][2] ), 
	.D(n193), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[1][1]  (.SI(\mem_Buffer[4][7] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[1][1] ), 
	.D(n192), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[1][0]  (.SI(\mem_Buffer[3][0] ), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[1][0] ), 
	.D(n191), 
	.CK(REF_CLK_M__L10_N1));
   SDFFRQX1M \mem_Buffer_reg[2][7]  (.SI(\mem_Buffer[3][3] ), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[2][7] ), 
	.D(n190), 
	.CK(w_clk));
   SDFFRQX1M \mem_Buffer_reg[2][6]  (.SI(\mem_Buffer[2][2] ), 
	.SE(n76), 
	.RN(w_rst), 
	.Q(\mem_Buffer[2][6] ), 
	.D(n189), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[2][5]  (.SI(\mem_Buffer[0][6] ), 
	.SE(n75), 
	.RN(w_rst), 
	.Q(\mem_Buffer[2][5] ), 
	.D(n188), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[2][4]  (.SI(\mem_Buffer[2][3] ), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[2][4] ), 
	.D(n187), 
	.CK(REF_CLK_M__L10_N1));
   SDFFRQX1M \mem_Buffer_reg[2][3]  (.SI(\mem_Buffer[1][0] ), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[2][3] ), 
	.D(n186), 
	.CK(REF_CLK_M__L10_N1));
   SDFFRQX1M \mem_Buffer_reg[2][2]  (.SI(\mem_Buffer[1][6] ), 
	.SE(n76), 
	.RN(w_rst), 
	.Q(\mem_Buffer[2][2] ), 
	.D(n185), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[2][1]  (.SI(\mem_Buffer[4][5] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[2][1] ), 
	.D(n184), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[2][0]  (.SI(\mem_Buffer[0][0] ), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[2][0] ), 
	.D(n183), 
	.CK(REF_CLK_M__L10_N1));
   SDFFRQX1M \mem_Buffer_reg[3][7]  (.SI(\mem_Buffer[0][7] ), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[3][7] ), 
	.D(n182), 
	.CK(REF_CLK_M__L10_N1));
   SDFFRQX1M \mem_Buffer_reg[3][6]  (.SI(\mem_Buffer[0][5] ), 
	.SE(n76), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[3][6] ), 
	.D(n181), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[3][5]  (.SI(\mem_Buffer[3][1] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[3][5] ), 
	.D(n180), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[3][4]  (.SI(\mem_Buffer[3][7] ), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[3][4] ), 
	.D(n179), 
	.CK(REF_CLK_M__L10_N1));
   SDFFRQX1M \mem_Buffer_reg[3][3]  (.SI(FE_PT1_ALU_OUT_10_), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[3][3] ), 
	.D(n178), 
	.CK(w_clk));
   SDFFRQX1M \mem_Buffer_reg[3][2]  (.SI(\mem_Buffer[2][7] ), 
	.SE(n76), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[3][2] ), 
	.D(n177), 
	.CK(w_clk));
   SDFFRQX1M \mem_Buffer_reg[3][1]  (.SI(\mem_Buffer[1][1] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[3][1] ), 
	.D(n176), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[3][0]  (.SI(\mem_Buffer[2][0] ), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[3][0] ), 
	.D(n175), 
	.CK(REF_CLK_M__L10_N1));
   SDFFRQX1M \mem_Buffer_reg[4][7]  (.SI(\mem_Buffer[1][7] ), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[4][7] ), 
	.D(n174), 
	.CK(REF_CLK_M__L10_N3));
   SDFFRQX1M \mem_Buffer_reg[4][6]  (.SI(\mem_Buffer[2][1] ), 
	.SE(n76), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[4][6] ), 
	.D(n173), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[4][5]  (.SI(\mem_Buffer[0][1] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[4][5] ), 
	.D(n172), 
	.CK(REF_CLK_M__L10_N6));
   SDFFRQX1M \mem_Buffer_reg[4][4]  (.SI(FE_PT1_sync_r_ptr_0_), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[4][4] ), 
	.D(n171), 
	.CK(REF_CLK_M__L10_N1));
   SDFFRQX1M \mem_Buffer_reg[4][3]  (.SI(\mem_Buffer[4][4] ), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[4][3] ), 
	.D(n170), 
	.CK(REF_CLK_M__L10_N1));
   SDFFRQX1M \mem_Buffer_reg[4][2]  (.SI(\mem_Buffer[4][1] ), 
	.SE(n76), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[4][2] ), 
	.D(n169), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[4][1]  (.SI(\mem_Buffer[4][6] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[4][1] ), 
	.D(n168), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[4][0]  (.SI(\mem_Buffer[4][2] ), 
	.SE(test_se), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[4][0] ), 
	.D(n167), 
	.CK(REF_CLK_M__L10_N3));
   SDFFRQX1M \mem_Buffer_reg[5][7]  (.SI(\mem_Buffer[6][7] ), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[5][7] ), 
	.D(n166), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[5][6]  (.SI(\mem_Buffer[5][7] ), 
	.SE(n76), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[5][6] ), 
	.D(n165), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[5][5]  (.SI(\mem_Buffer[5][6] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[5][5] ), 
	.D(n164), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[5][4]  (.SI(\mem_Buffer[5][3] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[5][4] ), 
	.D(n163), 
	.CK(REF_CLK_M__L10_N3));
   SDFFRQX1M \mem_Buffer_reg[5][3]  (.SI(\mem_Buffer[6][3] ), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[5][3] ), 
	.D(n162), 
	.CK(REF_CLK_M__L10_N3));
   SDFFRQX1M \mem_Buffer_reg[5][2]  (.SI(\mem_Buffer[6][0] ), 
	.SE(n76), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[5][2] ), 
	.D(n161), 
	.CK(REF_CLK_M__L10_N3));
   SDFFRQX1M \mem_Buffer_reg[5][1]  (.SI(\mem_Buffer[6][1] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[5][1] ), 
	.D(n160), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[5][0]  (.SI(\mem_Buffer[4][0] ), 
	.SE(n76), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[5][0] ), 
	.D(n159), 
	.CK(REF_CLK_M__L10_N3));
   SDFFRQX1M \mem_Buffer_reg[6][7]  (.SI(\mem_Buffer[7][3] ), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[6][7] ), 
	.D(n158), 
	.CK(REF_CLK_M__L10_N3));
   SDFFRQX1M \mem_Buffer_reg[6][6]  (.SI(test_si2), 
	.SE(n76), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[6][6] ), 
	.D(n157), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[6][5]  (.SI(\mem_Buffer[7][5] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[6][5] ), 
	.D(n156), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[6][4]  (.SI(r_addr[1]), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(SPCASCAN_N4), 
	.D(n155), 
	.CK(REF_CLK_M__L10_N1));
   SDFFRQX1M \mem_Buffer_reg[6][3]  (.SI(SPCASCAN_N4), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[6][3] ), 
	.D(n154), 
	.CK(REF_CLK_M__L10_N3));
   SDFFRQX1M \mem_Buffer_reg[6][2]  (.SI(\mem_Buffer[7][6] ), 
	.SE(n76), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[6][2] ), 
	.D(n153), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[6][1]  (.SI(\mem_Buffer[6][6] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[6][1] ), 
	.D(n152), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[6][0]  (.SI(\mem_Buffer[7][2] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[6][0] ), 
	.D(n151), 
	.CK(REF_CLK_M__L10_N3));
   SDFFRQX1M \mem_Buffer_reg[7][7]  (.SI(\mem_Buffer[5][2] ), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[7][7] ), 
	.D(n150), 
	.CK(REF_CLK_M__L10_N3));
   SDFFRQX1M \mem_Buffer_reg[7][6]  (.SI(\mem_Buffer[5][1] ), 
	.SE(n76), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[7][6] ), 
	.D(n149), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[7][5]  (.SI(\mem_Buffer[5][5] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[7][5] ), 
	.D(n148), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[7][4]  (.SI(test_so2), 
	.SE(n76), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[7][4] ), 
	.D(n147), 
	.CK(REF_CLK_M__L10_N3));
   SDFFRQX1M \mem_Buffer_reg[7][3]  (.SI(\mem_Buffer[5][4] ), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[7][3] ), 
	.D(n146), 
	.CK(REF_CLK_M__L10_N3));
   SDFFRQX1M \mem_Buffer_reg[7][2]  (.SI(\mem_Buffer[6][2] ), 
	.SE(n76), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(\mem_Buffer[7][2] ), 
	.D(n145), 
	.CK(REF_CLK_M__L10_N3));
   SDFFRQX1M \mem_Buffer_reg[7][1]  (.SI(\mem_Buffer[6][5] ), 
	.SE(n75), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(SPCASCAN_N3), 
	.D(n144), 
	.CK(REF_CLK_M__L10_N7));
   SDFFRQX1M \mem_Buffer_reg[7][0]  (.SI(\mem_Buffer[7][4] ), 
	.SE(n77), 
	.RN(FE_OFN3_SYNC_REF_RST_M), 
	.Q(SPCBSCAN_N15), 
	.D(n143), 
	.CK(REF_CLK_M__L10_N3));
   NOR3X1M U2 (.Y(n47), 
	.C(n54), 
	.B(w_addr[2]), 
	.A(w_addr[1]));
   NOR3X1M U3 (.Y(n49), 
	.C(n56), 
	.B(w_addr[2]), 
	.A(w_addr[1]));
   AOI22XLM U4 (.Y(n28), 
	.B1(\mem_Buffer[2][7] ), 
	.B0(n37), 
	.A1(\mem_Buffer[0][7] ), 
	.A0(n38));
   AOI22XLM U5 (.Y(n46), 
	.B1(SPCASCAN_N4), 
	.B0(n37), 
	.A1(\mem_Buffer[4][4] ), 
	.A0(n38));
   NOR2X2M U6 (.Y(n38), 
	.B(r_addr[0]), 
	.A(r_addr[1]));
   INVXLM U7 (.Y(n1), 
	.A(r_addr[0]));
   AND2X1M U8 (.Y(n37), 
	.B(n1), 
	.A(r_addr[1]));
   AOI22XLM U9 (.Y(n6), 
	.B1(\mem_Buffer[6][5] ), 
	.B0(n37), 
	.A1(\mem_Buffer[4][5] ), 
	.A0(n38));
   NOR2X2M U10 (.Y(n40), 
	.B(n1), 
	.A(r_addr[1]));
   NOR2BX2M U11 (.Y(n39), 
	.B(n1), 
	.AN(r_addr[1]));
   AOI22XLM U12 (.Y(n5), 
	.B1(\mem_Buffer[7][5] ), 
	.B0(n39), 
	.A1(\mem_Buffer[5][5] ), 
	.A0(n40));
   AOI22XLM U13 (.Y(n3), 
	.B1(\mem_Buffer[2][5] ), 
	.B0(n37), 
	.A1(\mem_Buffer[0][5] ), 
	.A0(n38));
   AOI22XLM U14 (.Y(n2), 
	.B1(\mem_Buffer[3][5] ), 
	.B0(n39), 
	.A1(\mem_Buffer[1][5] ), 
	.A0(n40));
   AND2X1M U15 (.Y(n4), 
	.B(n2), 
	.A(n3));
   INVXLM U16 (.Y(n43), 
	.A(r_addr[2]));
   AOI32XLM U17 (.Y(r_data[5]), 
	.B1(n43), 
	.B0(n4), 
	.A2(n5), 
	.A1(r_addr[2]), 
	.A0(n6));
   AOI22XLM U18 (.Y(n11), 
	.B1(\mem_Buffer[6][1] ), 
	.B0(n37), 
	.A1(\mem_Buffer[4][1] ), 
	.A0(n38));
   AOI22XLM U19 (.Y(n10), 
	.B1(SPCASCAN_N3), 
	.B0(n39), 
	.A1(\mem_Buffer[5][1] ), 
	.A0(n40));
   AOI22XLM U20 (.Y(n8), 
	.B1(\mem_Buffer[2][1] ), 
	.B0(n37), 
	.A1(\mem_Buffer[0][1] ), 
	.A0(n38));
   AOI22XLM U21 (.Y(n7), 
	.B1(\mem_Buffer[3][1] ), 
	.B0(n39), 
	.A1(\mem_Buffer[1][1] ), 
	.A0(n40));
   AND2X1M U22 (.Y(n9), 
	.B(n7), 
	.A(n8));
   AOI32XLM U23 (.Y(r_data[1]), 
	.B1(n43), 
	.B0(n9), 
	.A2(n10), 
	.A1(r_addr[2]), 
	.A0(n11));
   AOI22XLM U24 (.Y(n16), 
	.B1(\mem_Buffer[6][2] ), 
	.B0(n37), 
	.A1(\mem_Buffer[4][2] ), 
	.A0(n38));
   AOI22XLM U25 (.Y(n15), 
	.B1(\mem_Buffer[7][2] ), 
	.B0(n39), 
	.A1(\mem_Buffer[5][2] ), 
	.A0(n40));
   AOI22XLM U26 (.Y(n13), 
	.B1(\mem_Buffer[2][2] ), 
	.B0(n37), 
	.A1(\mem_Buffer[0][2] ), 
	.A0(n38));
   AOI22XLM U27 (.Y(n12), 
	.B1(\mem_Buffer[3][2] ), 
	.B0(n39), 
	.A1(\mem_Buffer[1][2] ), 
	.A0(n40));
   AND2X1M U28 (.Y(n14), 
	.B(n12), 
	.A(n13));
   AOI32XLM U29 (.Y(r_data[2]), 
	.B1(n43), 
	.B0(n14), 
	.A2(n15), 
	.A1(r_addr[2]), 
	.A0(n16));
   AOI22XLM U30 (.Y(n21), 
	.B1(\mem_Buffer[6][0] ), 
	.B0(n37), 
	.A1(\mem_Buffer[4][0] ), 
	.A0(n38));
   AOI22XLM U31 (.Y(n20), 
	.B1(SPCBSCAN_N15), 
	.B0(n39), 
	.A1(\mem_Buffer[5][0] ), 
	.A0(n40));
   AOI22XLM U32 (.Y(n18), 
	.B1(\mem_Buffer[2][0] ), 
	.B0(n37), 
	.A1(\mem_Buffer[0][0] ), 
	.A0(n38));
   AOI22XLM U33 (.Y(n17), 
	.B1(\mem_Buffer[3][0] ), 
	.B0(n39), 
	.A1(\mem_Buffer[1][0] ), 
	.A0(n40));
   AND2X1M U34 (.Y(n19), 
	.B(n17), 
	.A(n18));
   AOI32XLM U35 (.Y(r_data[0]), 
	.B1(n43), 
	.B0(n19), 
	.A2(n20), 
	.A1(r_addr[2]), 
	.A0(n21));
   AOI22XLM U36 (.Y(n26), 
	.B1(\mem_Buffer[6][6] ), 
	.B0(n37), 
	.A1(\mem_Buffer[4][6] ), 
	.A0(n38));
   AOI22XLM U37 (.Y(n25), 
	.B1(\mem_Buffer[7][6] ), 
	.B0(n39), 
	.A1(\mem_Buffer[5][6] ), 
	.A0(n40));
   AOI22XLM U38 (.Y(n23), 
	.B1(\mem_Buffer[2][6] ), 
	.B0(n37), 
	.A1(\mem_Buffer[0][6] ), 
	.A0(n38));
   AOI22XLM U39 (.Y(n22), 
	.B1(\mem_Buffer[3][6] ), 
	.B0(n39), 
	.A1(\mem_Buffer[1][6] ), 
	.A0(n40));
   AND2X1M U40 (.Y(n24), 
	.B(n22), 
	.A(n23));
   AOI32XLM U41 (.Y(r_data[6]), 
	.B1(n43), 
	.B0(n24), 
	.A2(n25), 
	.A1(r_addr[2]), 
	.A0(n26));
   AOI22XLM U42 (.Y(n31), 
	.B1(n37), 
	.B0(\mem_Buffer[6][7] ), 
	.A1(n38), 
	.A0(\mem_Buffer[4][7] ));
   AOI22XLM U43 (.Y(n30), 
	.B1(n39), 
	.B0(\mem_Buffer[7][7] ), 
	.A1(n40), 
	.A0(\mem_Buffer[5][7] ));
   AOI22XLM U44 (.Y(n27), 
	.B1(\mem_Buffer[3][7] ), 
	.B0(n39), 
	.A1(\mem_Buffer[1][7] ), 
	.A0(n40));
   AND2X1M U45 (.Y(n29), 
	.B(n27), 
	.A(n28));
   AOI32XLM U46 (.Y(r_data[7]), 
	.B1(n43), 
	.B0(n29), 
	.A2(n30), 
	.A1(r_addr[2]), 
	.A0(n31));
   AOI22XLM U47 (.Y(n36), 
	.B1(\mem_Buffer[6][3] ), 
	.B0(n37), 
	.A1(\mem_Buffer[4][3] ), 
	.A0(n38));
   AOI22XLM U48 (.Y(n35), 
	.B1(\mem_Buffer[7][3] ), 
	.B0(n39), 
	.A1(\mem_Buffer[5][3] ), 
	.A0(n40));
   AOI22XLM U49 (.Y(n33), 
	.B1(\mem_Buffer[2][3] ), 
	.B0(n37), 
	.A1(\mem_Buffer[0][3] ), 
	.A0(n38));
   AOI22XLM U50 (.Y(n32), 
	.B1(\mem_Buffer[3][3] ), 
	.B0(n39), 
	.A1(SPCASCAN_N0), 
	.A0(n40));
   AND2X1M U51 (.Y(n34), 
	.B(n32), 
	.A(n33));
   AOI32XLM U52 (.Y(r_data[3]), 
	.B1(n43), 
	.B0(n34), 
	.A2(n35), 
	.A1(r_addr[2]), 
	.A0(n36));
   AOI22XLM U53 (.Y(n45), 
	.B1(\mem_Buffer[7][4] ), 
	.B0(n39), 
	.A1(\mem_Buffer[5][4] ), 
	.A0(n40));
   AOI22XLM U54 (.Y(n42), 
	.B1(\mem_Buffer[2][4] ), 
	.B0(n37), 
	.A1(\mem_Buffer[0][4] ), 
	.A0(n38));
   AOI22XLM U55 (.Y(n41), 
	.B1(\mem_Buffer[3][4] ), 
	.B0(n39), 
	.A1(\mem_Buffer[1][4] ), 
	.A0(n40));
   AND2X1M U56 (.Y(n44), 
	.B(n41), 
	.A(n42));
   AOI32XLM U57 (.Y(r_data[4]), 
	.B1(n43), 
	.B0(n44), 
	.A2(n45), 
	.A1(r_addr[2]), 
	.A0(n46));
   NOR2BXLM U58 (.Y(n48), 
	.B(w_full), 
	.AN(w_inc));
   NAND2BXLM U59 (.Y(n54), 
	.B(n48), 
	.AN(w_addr[0]));
   INVXLM U60 (.Y(n59), 
	.A(w_data[7]));
   AOI2BB2XLM U61 (.Y(n206), 
	.B1(n59), 
	.B0(FE_OFN11_n47), 
	.A1N(FE_OFN11_n47), 
	.A0N(\mem_Buffer[0][7] ));
   INVXLM U62 (.Y(n60), 
	.A(w_data[6]));
   AOI2BB2XLM U63 (.Y(n205), 
	.B1(n60), 
	.B0(FE_OFN11_n47), 
	.A1N(FE_OFN11_n47), 
	.A0N(\mem_Buffer[0][6] ));
   INVXLM U64 (.Y(n61), 
	.A(w_data[5]));
   AOI2BB2XLM U65 (.Y(n204), 
	.B1(n61), 
	.B0(FE_OFN11_n47), 
	.A1N(FE_OFN11_n47), 
	.A0N(\mem_Buffer[0][5] ));
   INVXLM U66 (.Y(n62), 
	.A(w_data[4]));
   AOI2BB2XLM U67 (.Y(n203), 
	.B1(n62), 
	.B0(FE_OFN11_n47), 
	.A1N(FE_OFN11_n47), 
	.A0N(\mem_Buffer[0][4] ));
   INVXLM U68 (.Y(n63), 
	.A(w_data[3]));
   AOI2BB2XLM U69 (.Y(n202), 
	.B1(n63), 
	.B0(FE_OFN11_n47), 
	.A1N(FE_OFN11_n47), 
	.A0N(\mem_Buffer[0][3] ));
   INVXLM U70 (.Y(n64), 
	.A(w_data[2]));
   AOI2BB2XLM U71 (.Y(n201), 
	.B1(n64), 
	.B0(FE_OFN11_n47), 
	.A1N(FE_OFN11_n47), 
	.A0N(\mem_Buffer[0][2] ));
   INVXLM U72 (.Y(n65), 
	.A(w_data[1]));
   AOI2BB2XLM U73 (.Y(n200), 
	.B1(n65), 
	.B0(FE_OFN11_n47), 
	.A1N(FE_OFN11_n47), 
	.A0N(\mem_Buffer[0][1] ));
   INVXLM U74 (.Y(n66), 
	.A(w_data[0]));
   AOI2BB2XLM U75 (.Y(n199), 
	.B1(n66), 
	.B0(FE_OFN11_n47), 
	.A1N(FE_OFN11_n47), 
	.A0N(\mem_Buffer[0][0] ));
   NAND2XLM U76 (.Y(n56), 
	.B(w_addr[0]), 
	.A(n48));
   AOI2BB2XLM U77 (.Y(n198), 
	.B1(n59), 
	.B0(FE_OFN15_n49), 
	.A1N(FE_OFN15_n49), 
	.A0N(\mem_Buffer[1][7] ));
   AOI2BB2XLM U78 (.Y(n197), 
	.B1(n60), 
	.B0(FE_OFN15_n49), 
	.A1N(FE_OFN15_n49), 
	.A0N(\mem_Buffer[1][6] ));
   AOI2BB2XLM U79 (.Y(n196), 
	.B1(n61), 
	.B0(FE_OFN15_n49), 
	.A1N(FE_OFN15_n49), 
	.A0N(\mem_Buffer[1][5] ));
   AOI2BB2XLM U80 (.Y(n195), 
	.B1(n62), 
	.B0(FE_OFN15_n49), 
	.A1N(FE_OFN15_n49), 
	.A0N(\mem_Buffer[1][4] ));
   AOI2BB2XLM U81 (.Y(n194), 
	.B1(n63), 
	.B0(FE_OFN15_n49), 
	.A1N(FE_OFN15_n49), 
	.A0N(SPCASCAN_N0));
   AOI2BB2XLM U82 (.Y(n193), 
	.B1(n64), 
	.B0(FE_OFN15_n49), 
	.A1N(FE_OFN15_n49), 
	.A0N(\mem_Buffer[1][2] ));
   AOI2BB2XLM U83 (.Y(n192), 
	.B1(n65), 
	.B0(FE_OFN15_n49), 
	.A1N(FE_OFN15_n49), 
	.A0N(\mem_Buffer[1][1] ));
   AOI2BB2XLM U84 (.Y(n191), 
	.B1(n66), 
	.B0(FE_OFN15_n49), 
	.A1N(FE_OFN15_n49), 
	.A0N(\mem_Buffer[1][0] ));
   INVXLM U85 (.Y(n58), 
	.A(w_addr[1]));
   NOR3X1M U86 (.Y(n50), 
	.C(n54), 
	.B(n58), 
	.A(w_addr[2]));
   AOI2BB2XLM U87 (.Y(n190), 
	.B1(n59), 
	.B0(FE_OFN12_n50), 
	.A1N(FE_OFN12_n50), 
	.A0N(\mem_Buffer[2][7] ));
   AOI2BB2XLM U88 (.Y(n189), 
	.B1(n60), 
	.B0(FE_OFN12_n50), 
	.A1N(FE_OFN12_n50), 
	.A0N(\mem_Buffer[2][6] ));
   AOI2BB2XLM U89 (.Y(n188), 
	.B1(n61), 
	.B0(FE_OFN12_n50), 
	.A1N(FE_OFN12_n50), 
	.A0N(\mem_Buffer[2][5] ));
   AOI2BB2XLM U90 (.Y(n187), 
	.B1(n62), 
	.B0(FE_OFN12_n50), 
	.A1N(FE_OFN12_n50), 
	.A0N(\mem_Buffer[2][4] ));
   AOI2BB2XLM U91 (.Y(n186), 
	.B1(n63), 
	.B0(FE_OFN12_n50), 
	.A1N(FE_OFN12_n50), 
	.A0N(\mem_Buffer[2][3] ));
   AOI2BB2XLM U92 (.Y(n185), 
	.B1(n64), 
	.B0(FE_OFN12_n50), 
	.A1N(FE_OFN12_n50), 
	.A0N(\mem_Buffer[2][2] ));
   AOI2BB2XLM U93 (.Y(n184), 
	.B1(n65), 
	.B0(FE_OFN12_n50), 
	.A1N(FE_OFN12_n50), 
	.A0N(\mem_Buffer[2][1] ));
   AOI2BB2XLM U94 (.Y(n183), 
	.B1(n66), 
	.B0(FE_OFN12_n50), 
	.A1N(FE_OFN12_n50), 
	.A0N(\mem_Buffer[2][0] ));
   NOR3X1M U95 (.Y(n51), 
	.C(n56), 
	.B(n58), 
	.A(w_addr[2]));
   AOI2BB2XLM U96 (.Y(n182), 
	.B1(n59), 
	.B0(FE_OFN16_n51), 
	.A1N(FE_OFN16_n51), 
	.A0N(\mem_Buffer[3][7] ));
   AOI2BB2XLM U97 (.Y(n181), 
	.B1(n60), 
	.B0(FE_OFN16_n51), 
	.A1N(FE_OFN16_n51), 
	.A0N(\mem_Buffer[3][6] ));
   AOI2BB2XLM U98 (.Y(n180), 
	.B1(n61), 
	.B0(FE_OFN16_n51), 
	.A1N(FE_OFN16_n51), 
	.A0N(\mem_Buffer[3][5] ));
   AOI2BB2XLM U99 (.Y(n179), 
	.B1(n62), 
	.B0(FE_OFN16_n51), 
	.A1N(FE_OFN16_n51), 
	.A0N(\mem_Buffer[3][4] ));
   AOI2BB2XLM U100 (.Y(n178), 
	.B1(n63), 
	.B0(FE_OFN16_n51), 
	.A1N(FE_OFN16_n51), 
	.A0N(\mem_Buffer[3][3] ));
   AOI2BB2XLM U101 (.Y(n177), 
	.B1(n64), 
	.B0(FE_OFN16_n51), 
	.A1N(FE_OFN16_n51), 
	.A0N(\mem_Buffer[3][2] ));
   AOI2BB2XLM U102 (.Y(n176), 
	.B1(n65), 
	.B0(FE_OFN16_n51), 
	.A1N(FE_OFN16_n51), 
	.A0N(\mem_Buffer[3][1] ));
   AOI2BB2XLM U103 (.Y(n175), 
	.B1(n66), 
	.B0(FE_OFN16_n51), 
	.A1N(FE_OFN16_n51), 
	.A0N(\mem_Buffer[3][0] ));
   INVXLM U104 (.Y(n57), 
	.A(w_addr[2]));
   NOR3X1M U105 (.Y(n52), 
	.C(n57), 
	.B(n54), 
	.A(w_addr[1]));
   AOI2BB2XLM U106 (.Y(n174), 
	.B1(n59), 
	.B0(FE_OFN13_n52), 
	.A1N(FE_OFN13_n52), 
	.A0N(\mem_Buffer[4][7] ));
   AOI2BB2XLM U107 (.Y(n173), 
	.B1(n60), 
	.B0(FE_OFN13_n52), 
	.A1N(FE_OFN13_n52), 
	.A0N(\mem_Buffer[4][6] ));
   AOI2BB2XLM U108 (.Y(n172), 
	.B1(n61), 
	.B0(FE_OFN13_n52), 
	.A1N(FE_OFN13_n52), 
	.A0N(\mem_Buffer[4][5] ));
   AOI2BB2XLM U109 (.Y(n171), 
	.B1(n62), 
	.B0(FE_OFN13_n52), 
	.A1N(FE_OFN13_n52), 
	.A0N(\mem_Buffer[4][4] ));
   AOI2BB2XLM U110 (.Y(n170), 
	.B1(n63), 
	.B0(FE_OFN13_n52), 
	.A1N(FE_OFN13_n52), 
	.A0N(\mem_Buffer[4][3] ));
   AOI2BB2XLM U111 (.Y(n169), 
	.B1(n64), 
	.B0(FE_OFN13_n52), 
	.A1N(FE_OFN13_n52), 
	.A0N(\mem_Buffer[4][2] ));
   AOI2BB2XLM U112 (.Y(n168), 
	.B1(n65), 
	.B0(FE_OFN13_n52), 
	.A1N(FE_OFN13_n52), 
	.A0N(\mem_Buffer[4][1] ));
   AOI2BB2XLM U113 (.Y(n167), 
	.B1(n66), 
	.B0(FE_OFN13_n52), 
	.A1N(FE_OFN13_n52), 
	.A0N(\mem_Buffer[4][0] ));
   NOR3X1M U114 (.Y(n53), 
	.C(n56), 
	.B(n57), 
	.A(w_addr[1]));
   AOI2BB2XLM U115 (.Y(n166), 
	.B1(n59), 
	.B0(FE_OFN17_n53), 
	.A1N(FE_OFN17_n53), 
	.A0N(\mem_Buffer[5][7] ));
   AOI2BB2XLM U116 (.Y(n165), 
	.B1(n60), 
	.B0(FE_OFN17_n53), 
	.A1N(FE_OFN17_n53), 
	.A0N(\mem_Buffer[5][6] ));
   AOI2BB2XLM U117 (.Y(n164), 
	.B1(n61), 
	.B0(FE_OFN17_n53), 
	.A1N(FE_OFN17_n53), 
	.A0N(\mem_Buffer[5][5] ));
   AOI2BB2XLM U118 (.Y(n163), 
	.B1(n62), 
	.B0(FE_OFN17_n53), 
	.A1N(FE_OFN17_n53), 
	.A0N(\mem_Buffer[5][4] ));
   AOI2BB2XLM U119 (.Y(n162), 
	.B1(n63), 
	.B0(FE_OFN17_n53), 
	.A1N(FE_OFN17_n53), 
	.A0N(\mem_Buffer[5][3] ));
   AOI2BB2XLM U120 (.Y(n161), 
	.B1(n64), 
	.B0(FE_OFN17_n53), 
	.A1N(FE_OFN17_n53), 
	.A0N(\mem_Buffer[5][2] ));
   AOI2BB2XLM U121 (.Y(n160), 
	.B1(n65), 
	.B0(FE_OFN17_n53), 
	.A1N(FE_OFN17_n53), 
	.A0N(\mem_Buffer[5][1] ));
   AOI2BB2XLM U122 (.Y(n159), 
	.B1(n66), 
	.B0(FE_OFN17_n53), 
	.A1N(FE_OFN17_n53), 
	.A0N(\mem_Buffer[5][0] ));
   NOR3X1M U123 (.Y(n55), 
	.C(n57), 
	.B(n58), 
	.A(n54));
   AOI2BB2XLM U124 (.Y(n158), 
	.B1(n59), 
	.B0(FE_OFN14_n55), 
	.A1N(FE_OFN14_n55), 
	.A0N(\mem_Buffer[6][7] ));
   AOI2BB2XLM U125 (.Y(n157), 
	.B1(n60), 
	.B0(FE_OFN14_n55), 
	.A1N(FE_OFN14_n55), 
	.A0N(\mem_Buffer[6][6] ));
   AOI2BB2XLM U126 (.Y(n156), 
	.B1(n61), 
	.B0(FE_OFN14_n55), 
	.A1N(FE_OFN14_n55), 
	.A0N(\mem_Buffer[6][5] ));
   AOI2BB2XLM U127 (.Y(n155), 
	.B1(n62), 
	.B0(FE_OFN14_n55), 
	.A1N(FE_OFN14_n55), 
	.A0N(SPCASCAN_N4));
   AOI2BB2XLM U128 (.Y(n154), 
	.B1(n63), 
	.B0(FE_OFN14_n55), 
	.A1N(FE_OFN14_n55), 
	.A0N(\mem_Buffer[6][3] ));
   AOI2BB2XLM U129 (.Y(n153), 
	.B1(n64), 
	.B0(FE_OFN14_n55), 
	.A1N(FE_OFN14_n55), 
	.A0N(\mem_Buffer[6][2] ));
   AOI2BB2XLM U130 (.Y(n152), 
	.B1(n65), 
	.B0(FE_OFN14_n55), 
	.A1N(FE_OFN14_n55), 
	.A0N(\mem_Buffer[6][1] ));
   AOI2BB2XLM U131 (.Y(n151), 
	.B1(n66), 
	.B0(FE_OFN14_n55), 
	.A1N(FE_OFN14_n55), 
	.A0N(\mem_Buffer[6][0] ));
   NOR3X1M U132 (.Y(n67), 
	.C(n56), 
	.B(n57), 
	.A(n58));
   AOI2BB2XLM U133 (.Y(n150), 
	.B1(n59), 
	.B0(FE_OFN18_n67), 
	.A1N(FE_OFN18_n67), 
	.A0N(\mem_Buffer[7][7] ));
   AOI2BB2XLM U134 (.Y(n149), 
	.B1(n60), 
	.B0(FE_OFN18_n67), 
	.A1N(FE_OFN18_n67), 
	.A0N(\mem_Buffer[7][6] ));
   AOI2BB2XLM U135 (.Y(n148), 
	.B1(n61), 
	.B0(FE_OFN18_n67), 
	.A1N(FE_OFN18_n67), 
	.A0N(\mem_Buffer[7][5] ));
   AOI2BB2XLM U136 (.Y(n147), 
	.B1(n62), 
	.B0(FE_OFN18_n67), 
	.A1N(FE_OFN18_n67), 
	.A0N(\mem_Buffer[7][4] ));
   AOI2BB2XLM U137 (.Y(n146), 
	.B1(n63), 
	.B0(FE_OFN18_n67), 
	.A1N(FE_OFN18_n67), 
	.A0N(\mem_Buffer[7][3] ));
   AOI2BB2XLM U138 (.Y(n145), 
	.B1(n64), 
	.B0(FE_OFN18_n67), 
	.A1N(FE_OFN18_n67), 
	.A0N(\mem_Buffer[7][2] ));
   AOI2BB2XLM U139 (.Y(n144), 
	.B1(n65), 
	.B0(FE_OFN18_n67), 
	.A1N(FE_OFN18_n67), 
	.A0N(SPCASCAN_N3));
   AOI2BB2XLM U140 (.Y(n143), 
	.B1(n66), 
	.B0(FE_OFN18_n67), 
	.A1N(FE_OFN18_n67), 
	.A0N(SPCBSCAN_N15));
   INVXLM U142 (.Y(n71), 
	.A(\mem_Buffer[5][0] ));
   INVXLM U144 (.Y(n73), 
	.A(test_se));
   INVX2M U146 (.Y(n75), 
	.A(n73));
   INVX2M U147 (.Y(n76), 
	.A(n73));
   INVX2M U148 (.Y(n77), 
	.A(n73));
endmodule

module FIFO_WR_DEPTH8_test_1 (
	w_clk, 
	w_rst, 
	grey_r_ptr, 
	w_inc, 
	w_addr, 
	grey_w_ptr, 
	w_full, 
	test_si2, 
	test_si1, 
	test_se, 
	FE_PT1_n13, 
	FE_PT1_grey_r_ptr_2_);
   input w_clk;
   input w_rst;
   input [3:0] grey_r_ptr;
   input w_inc;
   output [2:0] w_addr;
   output [3:0] grey_w_ptr;
   output w_full;
   input test_si2;
   input test_si1;
   input test_se;
   input FE_PT1_n13;
   input FE_PT1_grey_r_ptr_2_;

   // Internal wires
   wire \w_ptr[3] ;
   wire N4;
   wire N7;
   wire N8;
   wire n20;
   wire n22;
   wire n24;
   wire n26;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;

   SDFFRQX1M \w_ptr_reg[0]  (.SI(w_addr[1]), 
	.SE(test_se), 
	.RN(w_rst), 
	.Q(w_addr[0]), 
	.D(n26), 
	.CK(w_clk));
   SDFFRQX1M \w_ptr_reg[3]  (.SI(test_si1), 
	.SE(test_se), 
	.RN(w_rst), 
	.Q(\w_ptr[3] ), 
	.D(n24), 
	.CK(w_clk));
   SDFFRQX1M \w_ptr_reg[2]  (.SI(test_si2), 
	.SE(test_se), 
	.RN(w_rst), 
	.Q(w_addr[2]), 
	.D(n22), 
	.CK(w_clk));
   SDFFRQX1M \w_ptr_reg[1]  (.SI(FE_PT1_n13), 
	.SE(test_se), 
	.RN(w_rst), 
	.Q(w_addr[1]), 
	.D(n20), 
	.CK(w_clk));
   SDFFRQX1M \grey_w_ptr_reg[2]  (.SI(w_addr[0]), 
	.SE(test_se), 
	.RN(w_rst), 
	.Q(grey_w_ptr[2]), 
	.D(N7), 
	.CK(w_clk));
   SDFFRQX1M \grey_w_ptr_reg[1]  (.SI(FE_PT1_grey_r_ptr_2_), 
	.SE(test_se), 
	.RN(w_rst), 
	.Q(grey_w_ptr[1]), 
	.D(N8), 
	.CK(w_clk));
   SDFFRQX1M \grey_w_ptr_reg[0]  (.SI(grey_w_ptr[1]), 
	.SE(test_se), 
	.RN(w_rst), 
	.Q(grey_w_ptr[0]), 
	.D(N4), 
	.CK(w_clk));
   DFFRQX1M \grey_w_ptr_reg[3]  (.RN(w_rst), 
	.Q(grey_w_ptr[3]), 
	.D(\w_ptr[3] ), 
	.CK(w_clk));
   INVXLM U3 (.Y(n3), 
	.A(grey_w_ptr[1]));
   INVXLM U4 (.Y(n2), 
	.A(grey_w_ptr[0]));
   OAI22XLM U5 (.Y(n1), 
	.B1(grey_r_ptr[0]), 
	.B0(n2), 
	.A1(grey_r_ptr[1]), 
	.A0(n3));
   AOI221XLM U6 (.Y(n6), 
	.C0(n1), 
	.B1(n2), 
	.B0(grey_r_ptr[0]), 
	.A1(grey_r_ptr[1]), 
	.A0(n3));
   OAI22XLM U7 (.Y(n4), 
	.B1(grey_r_ptr[3]), 
	.B0(grey_w_ptr[3]), 
	.A1(grey_r_ptr[2]), 
	.A0(grey_w_ptr[2]));
   AOI221XLM U8 (.Y(n5), 
	.C0(n4), 
	.B1(grey_w_ptr[3]), 
	.B0(grey_r_ptr[3]), 
	.A1(grey_r_ptr[2]), 
	.A0(grey_w_ptr[2]));
   AND2X1M U9 (.Y(w_full), 
	.B(n5), 
	.A(n6));
   NAND2BXLM U10 (.Y(n7), 
	.B(w_inc), 
	.AN(w_full));
   INVXLM U11 (.Y(n13), 
	.A(w_addr[0]));
   NOR3BXLM U12 (.Y(n9), 
	.C(n13), 
	.B(w_full), 
	.AN(w_inc));
   AOI21XLM U13 (.Y(n26), 
	.B0(n9), 
	.A1(n13), 
	.A0(n7));
   NAND2XLM U14 (.Y(n10), 
	.B(w_addr[1]), 
	.A(n9));
   INVXLM U15 (.Y(n11), 
	.A(w_addr[2]));
   OAI21XLM U16 (.Y(n8), 
	.B0(\w_ptr[3] ), 
	.A1(n11), 
	.A0(n10));
   OAI31XLM U17 (.Y(n24), 
	.B0(n8), 
	.A2(n11), 
	.A1(\w_ptr[3] ), 
	.A0(n10));
   INVXLM U18 (.Y(n12), 
	.A(n10));
   AOI2BB1XLM U19 (.Y(n20), 
	.B0(n12), 
	.A1N(w_addr[1]), 
	.A0N(n9));
   AOI2BB2XLM U20 (.Y(N7), 
	.B1(\w_ptr[3] ), 
	.B0(w_addr[2]), 
	.A1N(w_addr[2]), 
	.A0N(\w_ptr[3] ));
   INVXLM U21 (.Y(n14), 
	.A(w_addr[1]));
   AOI22XLM U22 (.Y(N8), 
	.B1(n14), 
	.B0(n11), 
	.A1(w_addr[2]), 
	.A0(w_addr[1]));
   AOI22XLM U23 (.Y(n22), 
	.B1(n10), 
	.B0(n11), 
	.A1(w_addr[2]), 
	.A0(n12));
   AOI22XLM U24 (.Y(N4), 
	.B1(n13), 
	.B0(n14), 
	.A1(w_addr[1]), 
	.A0(w_addr[0]));
endmodule

module FIFO_RD_DEPTH8_test_1 (
	r_clk, 
	r_rst, 
	grey_w_ptr, 
	r_inc, 
	r_addr, 
	grey_r_ptr, 
	r_empty, 
	test_si2, 
	test_si1, 
	test_se, 
	FE_PT1_grey_w_ptr_0_, 
	SPCASCAN_N3, 
	SPCBSCAN_N15, 
	TX_CLK_M__L4_N1);
   input r_clk;
   input r_rst;
   input [3:0] grey_w_ptr;
   input r_inc;
   output [2:0] r_addr;
   output [3:0] grey_r_ptr;
   output r_empty;
   input test_si2;
   input test_si1;
   input test_se;
   input FE_PT1_grey_w_ptr_0_;
   input SPCASCAN_N3;
   input SPCBSCAN_N15;
   input TX_CLK_M__L4_N1;

   // Internal wires
   wire \r_ptr[3] ;
   wire N4;
   wire N7;
   wire N8;
   wire \eq_x_2/n25 ;
   wire n22;
   wire n24;
   wire n26;
   wire n28;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;

   assign r_empty = \eq_x_2/n25  ;

   SDFFRQX1M \r_ptr_reg[0]  (.SI(SPCASCAN_N3), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(r_addr[0]), 
	.D(n28), 
	.CK(TX_CLK_M__L4_N1));
   SDFFRQX1M \r_ptr_reg[3]  (.SI(test_si1), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(\r_ptr[3] ), 
	.D(n26), 
	.CK(r_clk));
   SDFFRQX1M \r_ptr_reg[2]  (.SI(FE_PT1_grey_w_ptr_0_), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(r_addr[2]), 
	.D(n24), 
	.CK(r_clk));
   SDFFRQX1M \r_ptr_reg[1]  (.SI(SPCBSCAN_N15), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(r_addr[1]), 
	.D(n22), 
	.CK(r_clk));
   SDFFRQX1M \grey_r_ptr_reg[2]  (.SI(r_addr[2]), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(grey_r_ptr[2]), 
	.D(N7), 
	.CK(r_clk));
   SDFFRQX1M \grey_r_ptr_reg[1]  (.SI(r_addr[0]), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(grey_r_ptr[1]), 
	.D(N8), 
	.CK(r_clk));
   SDFFRQX1M \grey_r_ptr_reg[0]  (.SI(test_si2), 
	.SE(test_se), 
	.RN(r_rst), 
	.Q(grey_r_ptr[0]), 
	.D(N4), 
	.CK(r_clk));
   DFFRQX1M \grey_r_ptr_reg[3]  (.RN(r_rst), 
	.Q(grey_r_ptr[3]), 
	.D(\r_ptr[3] ), 
	.CK(r_clk));
   OAI22XLM U3 (.Y(n2), 
	.B1(grey_w_ptr[2]), 
	.B0(n3), 
	.A1(grey_w_ptr[3]), 
	.A0(n4));
   INVXLM U4 (.Y(n12), 
	.A(n16));
   OAI31XLM U5 (.Y(n26), 
	.B0(n14), 
	.A2(n15), 
	.A1(\r_ptr[3] ), 
	.A0(n16));
   INVXLM U6 (.Y(n1), 
	.A(r_addr[1]));
   INVXLM U7 (.Y(n10), 
	.A(r_addr[0]));
   AOI22XLM U8 (.Y(N4), 
	.B1(n10), 
	.B0(n1), 
	.A1(r_addr[1]), 
	.A0(r_addr[0]));
   INVXLM U9 (.Y(n15), 
	.A(r_addr[2]));
   AOI22XLM U10 (.Y(N8), 
	.B1(n1), 
	.B0(n15), 
	.A1(r_addr[2]), 
	.A0(r_addr[1]));
   INVXLM U11 (.Y(n4), 
	.A(grey_r_ptr[3]));
   INVXLM U12 (.Y(n3), 
	.A(grey_r_ptr[2]));
   AOI221XLM U13 (.Y(n9), 
	.C0(n2), 
	.B1(n3), 
	.B0(grey_w_ptr[2]), 
	.A1(grey_w_ptr[3]), 
	.A0(n4));
   INVXLM U14 (.Y(n7), 
	.A(grey_r_ptr[1]));
   INVXLM U15 (.Y(n6), 
	.A(grey_r_ptr[0]));
   OAI22XLM U16 (.Y(n5), 
	.B1(grey_w_ptr[0]), 
	.B0(n6), 
	.A1(grey_w_ptr[1]), 
	.A0(n7));
   AOI221XLM U17 (.Y(n8), 
	.C0(n5), 
	.B1(n6), 
	.B0(grey_w_ptr[0]), 
	.A1(grey_w_ptr[1]), 
	.A0(n7));
   AND2X1M U18 (.Y(\eq_x_2/n25 ), 
	.B(n8), 
	.A(n9));
   NAND2BXLM U19 (.Y(n11), 
	.B(r_inc), 
	.AN(\eq_x_2/n25 ));
   NOR3BXLM U20 (.Y(n13), 
	.C(n10), 
	.B(\eq_x_2/n25 ), 
	.AN(r_inc));
   AOI21XLM U21 (.Y(n28), 
	.B0(n13), 
	.A1(n10), 
	.A0(n11));
   NAND2XLM U22 (.Y(n16), 
	.B(r_addr[1]), 
	.A(n13));
   AOI22XLM U23 (.Y(n24), 
	.B1(n16), 
	.B0(n15), 
	.A1(r_addr[2]), 
	.A0(n12));
   AOI2BB1XLM U24 (.Y(n22), 
	.B0(n12), 
	.A1N(r_addr[1]), 
	.A0N(n13));
   OAI21XLM U25 (.Y(n14), 
	.B0(\r_ptr[3] ), 
	.A1(n15), 
	.A0(n16));
   AOI2BB2XLM U26 (.Y(N7), 
	.B1(\r_ptr[3] ), 
	.B0(r_addr[2]), 
	.A1N(r_addr[2]), 
	.A0N(\r_ptr[3] ));
endmodule

module DF_SYNC_DEPTH8_test_1 (
	clk, 
	rst, 
	ptr, 
	sync_ptr, 
	test_si, 
	test_se, 
	n16);
   input clk;
   input rst;
   input [3:0] ptr;
   output [3:0] sync_ptr;
   input test_si;
   input test_se;
   input n16;

   // Internal wires
   wire \sync_reg[0][3] ;
   wire \sync_reg[0][2] ;
   wire \sync_reg[0][1] ;
   wire \sync_reg[0][0] ;

   SDFFRQX1M \sync_reg_reg[0][3]  (.SI(ptr[3]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][3] ), 
	.D(ptr[3]), 
	.CK(clk));
   SDFFRQX1M \sync_reg_reg[0][2]  (.SI(n16), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][2] ), 
	.D(ptr[2]), 
	.CK(clk));
   SDFFRQX1M \sync_reg_reg[0][1]  (.SI(sync_ptr[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][1] ), 
	.D(ptr[1]), 
	.CK(clk));
   SDFFRQX1M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][0] ), 
	.D(ptr[0]), 
	.CK(clk));
   DFFRQX1M \sync_reg_reg[1][2]  (.RN(rst), 
	.Q(sync_ptr[2]), 
	.D(\sync_reg[0][2] ), 
	.CK(clk));
   DFFRQX1M \sync_reg_reg[1][3]  (.RN(rst), 
	.Q(sync_ptr[3]), 
	.D(\sync_reg[0][3] ), 
	.CK(clk));
   DFFRQX1M \sync_reg_reg[1][0]  (.RN(rst), 
	.Q(sync_ptr[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(clk));
   DFFRQX1M \sync_reg_reg[1][1]  (.RN(rst), 
	.Q(sync_ptr[1]), 
	.D(\sync_reg[0][1] ), 
	.CK(clk));
endmodule

module DF_SYNC_DEPTH8_test_0 (
	clk, 
	rst, 
	ptr, 
	sync_ptr, 
	test_si, 
	test_se, 
	FE_PT1_sync_w_ptr_1_);
   input clk;
   input rst;
   input [3:0] ptr;
   output [3:0] sync_ptr;
   input test_si;
   input test_se;
   input FE_PT1_sync_w_ptr_1_;

   // Internal wires
   wire \sync_reg[0][3] ;
   wire \sync_reg[0][2] ;
   wire \sync_reg[0][1] ;
   wire \sync_reg[0][0] ;

   SDFFRQX1M \sync_reg_reg[0][3]  (.SI(FE_PT1_sync_w_ptr_1_), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][3] ), 
	.D(ptr[3]), 
	.CK(clk));
   SDFFRQX1M \sync_reg_reg[0][2]  (.SI(sync_ptr[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][2] ), 
	.D(ptr[2]), 
	.CK(clk));
   SDFFRQX1M \sync_reg_reg[0][1]  (.SI(sync_ptr[3]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][1] ), 
	.D(ptr[1]), 
	.CK(clk));
   SDFFRQX1M \sync_reg_reg[0][0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(\sync_reg[0][0] ), 
	.D(ptr[0]), 
	.CK(clk));
   DFFRQX1M \sync_reg_reg[1][0]  (.RN(rst), 
	.Q(sync_ptr[0]), 
	.D(\sync_reg[0][0] ), 
	.CK(clk));
   DFFRQX1M \sync_reg_reg[1][1]  (.RN(rst), 
	.Q(sync_ptr[1]), 
	.D(\sync_reg[0][1] ), 
	.CK(clk));
   DFFRQX1M \sync_reg_reg[1][2]  (.RN(rst), 
	.Q(sync_ptr[2]), 
	.D(\sync_reg[0][2] ), 
	.CK(clk));
   DFFRQX1M \sync_reg_reg[1][3]  (.RN(rst), 
	.Q(sync_ptr[3]), 
	.D(\sync_reg[0][3] ), 
	.CK(clk));
endmodule

module FIFO_TOP_DATA_WIDTH8_DEPTH8_test_1 (
	W_CLK, 
	R_CLK, 
	W_RST, 
	R_RST, 
	W_INC, 
	R_INC, 
	WR_DATA, 
	RD_DATA, 
	EMPTY, 
	FULL, 
	test_si3, 
	test_si2, 
	test_si1, 
	test_so3, 
	test_so1, 
	test_se, 
	test_so2_BAR, 
	FE_PT1_ALU_OUT_10_, 
	SPCASCAN_N0, 
	SPCASCAN_N2, 
	TX_CLK_M__L4_N1, 
	REF_CLK_M__L10_N1, 
	REF_CLK_M__L10_N2, 
	REF_CLK_M__L10_N3, 
	REF_CLK_M__L10_N6, 
	REF_CLK_M__L10_N7);
   input W_CLK;
   input R_CLK;
   input W_RST;
   input R_RST;
   input W_INC;
   input R_INC;
   input [7:0] WR_DATA;
   output [7:0] RD_DATA;
   output EMPTY;
   output FULL;
   input test_si3;
   input test_si2;
   input test_si1;
   output test_so3;
   output test_so1;
   input test_se;
   output test_so2_BAR;
   input FE_PT1_ALU_OUT_10_;
   output SPCASCAN_N0;
   output SPCASCAN_N2;
   input TX_CLK_M__L4_N1;
   input REF_CLK_M__L10_N1;
   input REF_CLK_M__L10_N2;
   input REF_CLK_M__L10_N3;
   input REF_CLK_M__L10_N6;
   input REF_CLK_M__L10_N7;

   // Internal wires
   wire SPCBSCAN_N15;
   wire FE_OFN3_SYNC_REF_RST_M;
   wire SPCASCAN_N4;
   wire SPCASCAN_N3;
   wire n2;
   wire test_so2;
   wire [2:0] w_addr;
   wire [2:0] r_addr;
   wire [3:0] sync_r_ptr;
   wire [3:0] grey_w_ptr;
   wire [3:0] sync_w_ptr;
   wire [3:0] grey_r_ptr;

   assign test_so3 = w_addr[2] ;
   assign test_so1 = sync_w_ptr[3] ;
   assign test_so2_BAR = test_so2 ;

   CLKBUFX8M FE_OFC3_SYNC_REF_RST_M (.Y(FE_OFN3_SYNC_REF_RST_M), 
	.A(W_RST));
   FIFO_MEM_DATA_WIDTH8_DEPTH8_test_1 u_fifo_mem (.w_clk(W_CLK), 
	.w_rst(W_RST), 
	.w_addr({ w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.r_addr({ r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.w_inc(W_INC), 
	.w_full(FULL), 
	.w_data({ WR_DATA[7],
		WR_DATA[6],
		WR_DATA[5],
		WR_DATA[4],
		WR_DATA[3],
		WR_DATA[2],
		WR_DATA[1],
		WR_DATA[0] }), 
	.r_data({ RD_DATA[7],
		RD_DATA[6],
		RD_DATA[5],
		RD_DATA[4],
		RD_DATA[3],
		RD_DATA[2],
		RD_DATA[1],
		RD_DATA[0] }), 
	.test_si2(test_si3), 
	.test_si1(test_si2), 
	.test_so2(n2), 
	.test_se(test_se), 
	.test_so1_BAR(test_so2), 
	.FE_PT1_ALU_OUT_10_(FE_PT1_ALU_OUT_10_), 
	.SPCASCAN_N0(SPCASCAN_N0), 
	.FE_PT1_sync_r_ptr_0_(sync_r_ptr[0]), 
	.SPCASCAN_N3(SPCASCAN_N3), 
	.FE_PT1_grey_r_ptr_0_(grey_r_ptr[0]), 
	.SPCASCAN_N4(SPCASCAN_N4), 
	.FE_OFN3_SYNC_REF_RST_M(FE_OFN3_SYNC_REF_RST_M), 
	.SPCBSCAN_N15(SPCBSCAN_N15), 
	.REF_CLK_M__L10_N1(REF_CLK_M__L10_N1), 
	.REF_CLK_M__L10_N3(REF_CLK_M__L10_N3), 
	.REF_CLK_M__L10_N6(REF_CLK_M__L10_N6), 
	.REF_CLK_M__L10_N7(REF_CLK_M__L10_N7));
   FIFO_WR_DEPTH8_test_1 u_fifo_wr (.w_clk(REF_CLK_M__L10_N2), 
	.w_rst(FE_OFN3_SYNC_REF_RST_M), 
	.grey_r_ptr({ sync_r_ptr[3],
		sync_r_ptr[2],
		sync_r_ptr[1],
		sync_r_ptr[0] }), 
	.w_inc(W_INC), 
	.w_addr({ w_addr[2],
		w_addr[1],
		w_addr[0] }), 
	.grey_w_ptr({ grey_w_ptr[3],
		SPCASCAN_N2,
		grey_w_ptr[1],
		grey_w_ptr[0] }), 
	.w_full(FULL), 
	.test_si2(grey_r_ptr[0]), 
	.test_si1(grey_r_ptr[3]), 
	.test_se(test_se), 
	.FE_PT1_n13(test_so3), 
	.FE_PT1_grey_r_ptr_2_(grey_r_ptr[2]));
   FIFO_RD_DEPTH8_test_1 u_fifo_rd (.r_clk(R_CLK), 
	.r_rst(R_RST), 
	.grey_w_ptr({ sync_w_ptr[3],
		sync_w_ptr[2],
		sync_w_ptr[1],
		sync_w_ptr[0] }), 
	.r_inc(R_INC), 
	.r_addr({ r_addr[2],
		r_addr[1],
		r_addr[0] }), 
	.grey_r_ptr({ grey_r_ptr[3],
		grey_r_ptr[2],
		grey_r_ptr[1],
		grey_r_ptr[0] }), 
	.r_empty(EMPTY), 
	.test_si2(grey_w_ptr[0]), 
	.test_si1(test_si1), 
	.test_se(test_se), 
	.FE_PT1_grey_w_ptr_0_(grey_r_ptr[1]), 
	.SPCASCAN_N3(SPCASCAN_N3), 
	.SPCBSCAN_N15(SPCBSCAN_N15), 
	.TX_CLK_M__L4_N1(TX_CLK_M__L4_N1));
   DF_SYNC_DEPTH8_test_1 u_sync_w2r (.clk(R_CLK), 
	.rst(R_RST), 
	.ptr({ grey_w_ptr[3],
		SPCASCAN_N2,
		grey_w_ptr[1],
		grey_w_ptr[0] }), 
	.sync_ptr({ sync_w_ptr[3],
		sync_w_ptr[2],
		sync_w_ptr[1],
		sync_w_ptr[0] }), 
	.test_si(sync_w_ptr[2]), 
	.test_se(test_se), 
	.n16(test_so1));
   DF_SYNC_DEPTH8_test_0 u_sync_r2w (.clk(REF_CLK_M__L10_N2), 
	.rst(FE_OFN3_SYNC_REF_RST_M), 
	.ptr({ grey_r_ptr[3],
		grey_r_ptr[2],
		grey_r_ptr[1],
		grey_r_ptr[0] }), 
	.sync_ptr({ sync_r_ptr[3],
		sync_r_ptr[2],
		sync_r_ptr[1],
		sync_r_ptr[0] }), 
	.test_si(sync_r_ptr[2]), 
	.test_se(test_se), 
	.FE_PT1_sync_w_ptr_1_(sync_w_ptr[1]));
endmodule

module Data_Bus_Sync_DATA_WIDTH8_Sync_Legnth2_test_1 (
	Unsync_bus, 
	bus_enable, 
	clk, 
	rst, 
	Sync_bus, 
	enable_pulse, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	REF_CLK_M__L10_N8);
   input [7:0] Unsync_bus;
   input bus_enable;
   input clk;
   input rst;
   output [7:0] Sync_bus;
   output enable_pulse;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input REF_CLK_M__L10_N8;

   // Internal wires
   wire enable_Reg;
   wire Gen_Pulse;
   wire n4;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n1;
   wire [1:0] Bit_Syncronizer;

   assign test_so1 = enable_Reg ;

   SDFFRQX1M \Bit_Syncronizer_reg[1]  (.SI(test_si1), 
	.SE(test_se), 
	.RN(rst), 
	.Q(Bit_Syncronizer[1]), 
	.D(bus_enable), 
	.CK(clk));
   SDFFRQX1M enable_pulse_reg (.SI(Sync_bus[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(enable_pulse), 
	.D(Gen_Pulse), 
	.CK(clk));
   SDFFRQX1M \Sync_bus_reg[7]  (.SI(Sync_bus[3]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(Sync_bus[7]), 
	.D(n18), 
	.CK(clk));
   SDFFRQX1M \Sync_bus_reg[6]  (.SI(Sync_bus[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(Sync_bus[6]), 
	.D(n16), 
	.CK(clk));
   SDFFRQX1M \Sync_bus_reg[5]  (.SI(Sync_bus[6]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(Sync_bus[5]), 
	.D(n14), 
	.CK(clk));
   SDFFRQX1M \Sync_bus_reg[4]  (.SI(Sync_bus[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(Sync_bus[4]), 
	.D(n12), 
	.CK(clk));
   SDFFRQX1M \Sync_bus_reg[3]  (.SI(Sync_bus[4]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(Sync_bus[3]), 
	.D(n10), 
	.CK(clk));
   SDFFRQX1M \Sync_bus_reg[2]  (.SI(test_so1), 
	.SE(test_se), 
	.RN(rst), 
	.Q(Sync_bus[2]), 
	.D(n8), 
	.CK(clk));
   SDFFRQX1M \Sync_bus_reg[1]  (.SI(Sync_bus[5]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(Sync_bus[1]), 
	.D(n6), 
	.CK(clk));
   SDFFRQX1M \Sync_bus_reg[0]  (.SI(test_si2), 
	.SE(test_se), 
	.RN(rst), 
	.Q(Sync_bus[0]), 
	.D(n4), 
	.CK(clk));
   DFFRQX1M enable_Reg_reg (.RN(rst), 
	.Q(enable_Reg), 
	.D(Bit_Syncronizer[0]), 
	.CK(REF_CLK_M__L10_N8));
   DFFRQX1M \Bit_Syncronizer_reg[0]  (.RN(rst), 
	.Q(Bit_Syncronizer[0]), 
	.D(Bit_Syncronizer[1]), 
	.CK(clk));
   NOR2BX2M U3 (.Y(Gen_Pulse), 
	.B(enable_Reg), 
	.AN(Bit_Syncronizer[0]));
   INVXLM U4 (.Y(n1), 
	.A(Gen_Pulse));
   AO22XLM U5 (.Y(n18), 
	.B1(Sync_bus[7]), 
	.B0(n1), 
	.A1(Unsync_bus[7]), 
	.A0(Gen_Pulse));
   AO22XLM U6 (.Y(n16), 
	.B1(Sync_bus[6]), 
	.B0(n1), 
	.A1(Unsync_bus[6]), 
	.A0(Gen_Pulse));
   AO22XLM U7 (.Y(n14), 
	.B1(Sync_bus[5]), 
	.B0(n1), 
	.A1(Unsync_bus[5]), 
	.A0(Gen_Pulse));
   AO22XLM U8 (.Y(n12), 
	.B1(Sync_bus[4]), 
	.B0(n1), 
	.A1(Unsync_bus[4]), 
	.A0(Gen_Pulse));
   AO22XLM U9 (.Y(n10), 
	.B1(Sync_bus[3]), 
	.B0(n1), 
	.A1(Unsync_bus[3]), 
	.A0(Gen_Pulse));
   AO22XLM U10 (.Y(n8), 
	.B1(Sync_bus[2]), 
	.B0(n1), 
	.A1(Unsync_bus[2]), 
	.A0(Gen_Pulse));
   AO22XLM U11 (.Y(n6), 
	.B1(Sync_bus[1]), 
	.B0(n1), 
	.A1(Unsync_bus[1]), 
	.A0(Gen_Pulse));
   AO22XLM U13 (.Y(n4), 
	.B1(Sync_bus[0]), 
	.B0(n1), 
	.A1(Unsync_bus[0]), 
	.A0(Gen_Pulse));
endmodule

module RX_CLK_DIV_MUX (
	PRESCALE, 
	RX_CLK_DIV_RATIO);
   input [5:0] PRESCALE;
   output [2:0] RX_CLK_DIV_RATIO;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;

   NOR4XLM U3 (.Y(n3), 
	.D(PRESCALE[5]), 
	.C(PRESCALE[0]), 
	.B(PRESCALE[1]), 
	.A(PRESCALE[2]));
   INVXLM U4 (.Y(n1), 
	.A(n3));
   NOR3BXLM U5 (.Y(RX_CLK_DIV_RATIO[2]), 
	.C(n1), 
	.B(PRESCALE[4]), 
	.AN(PRESCALE[3]));
   NOR3BXLM U6 (.Y(RX_CLK_DIV_RATIO[1]), 
	.C(n1), 
	.B(PRESCALE[3]), 
	.AN(PRESCALE[4]));
   NAND2XLM U7 (.Y(n2), 
	.B(PRESCALE[3]), 
	.A(PRESCALE[4]));
   OAI211XLM U8 (.Y(RX_CLK_DIV_RATIO[0]), 
	.C0(n2), 
	.B0(n3), 
	.A1(PRESCALE[3]), 
	.A0(PRESCALE[4]));
endmodule

module I_CLK_DIV_DIV_RATIO_WIDTH8_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	SPCASCAN_N14, 
	FE_PT1_FIFO_WR_DATA_0_, 
	n6__Exclude_0_NET, 
	n6__L1_N0, 
	UART_CLK_M__L1_N0, 
	UART_CLK_M__L7_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   output SPCASCAN_N14;
   input FE_PT1_FIFO_WR_DATA_0_;
   input n6__Exclude_0_NET;
   input n6__L1_N0;
   input UART_CLK_M__L1_N0;
   input UART_CLK_M__L7_N0;

   // Internal wires
   wire FE_PHN5_n6__Exclude_0_NET;
   wire FE_PHN4_n6__Exclude_0_NET;
   wire I_CLK_EN;
   wire DIVIDED_CLK;
   wire N56;
   wire N57;
   wire N58;
   wire N59;
   wire N60;
   wire N61;
   wire N62;
   wire N63;
   wire n7;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire [7:0] COUNTER;

//   assign test_so = DIVIDED_CLK ;

   DLY4X1M FE_PHC5_n6__Exclude_0_NET (.Y(FE_PHN5_n6__Exclude_0_NET), 
	.A(FE_PHN4_n6__Exclude_0_NET));
   DLY4X1M FE_PHC4_n6__Exclude_0_NET (.Y(FE_PHN4_n6__Exclude_0_NET), 
	.A(n6__Exclude_0_NET));
   MX2XLM U19 (.Y(o_div_clk), 
	.S0(I_CLK_EN), 
	.B(n6__L1_N0), 
	.A(UART_CLK_M__L7_N0));
   SDFFRQX1M DIVIDED_CLK_reg (.SI(COUNTER[5]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(test_so), 
	.D(n7), 
	.CK(UART_CLK_M__L1_N0));
   SDFFRQX1M \COUNTER_reg[7]  (.SI(FE_PT1_FIFO_WR_DATA_0_), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(COUNTER[7]), 
	.D(N63), 
	.CK(i_ref_clk));
   SDFFRQX1M \COUNTER_reg[6]  (.SI(COUNTER[7]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(COUNTER[6]), 
	.D(N62), 
	.CK(i_ref_clk));
   SDFFRQX1M \COUNTER_reg[5]  (.SI(COUNTER[6]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(COUNTER[5]), 
	.D(N61), 
	.CK(i_ref_clk));
   SDFFRQX1M \COUNTER_reg[4]  (.SI(COUNTER[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(COUNTER[4]), 
	.D(N60), 
	.CK(i_ref_clk));
   SDFFRQX1M \COUNTER_reg[3]  (.SI(FE_PHN5_n6__Exclude_0_NET), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(COUNTER[3]), 
	.D(N59), 
	.CK(i_ref_clk));
   SDFFRQX1M \COUNTER_reg[2]  (.SI(COUNTER[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(COUNTER[2]), 
	.D(N58), 
	.CK(i_ref_clk));
   SDFFRQX1M \COUNTER_reg[1]  (.SI(COUNTER[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(COUNTER[1]), 
	.D(N57), 
	.CK(i_ref_clk));
   SDFFRQX1M \COUNTER_reg[0]  (.SI(COUNTER[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(SPCASCAN_N14), 
	.D(N56), 
	.CK(i_ref_clk));
   NAND2BXLM U3 (.Y(n47), 
	.B(COUNTER[6]), 
	.AN(i_div_ratio[6]));
   INVXLM U4 (.Y(n32), 
	.A(COUNTER[3]));
   OAI21XLM U5 (.Y(n71), 
	.B0(n25), 
	.A1(n26), 
	.A0(COUNTER[5]));
   NOR3XLM U6 (.Y(n56), 
	.C(i_div_ratio[2]), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[3]));
   INVXLM U7 (.Y(n55), 
	.A(n56));
   NOR2XLM U8 (.Y(n54), 
	.B(n55), 
	.A(i_div_ratio[4]));
   INVXLM U9 (.Y(n45), 
	.A(i_div_ratio[5]));
   NAND2XLM U10 (.Y(n48), 
	.B(n45), 
	.A(n54));
   NOR2XLM U11 (.Y(n62), 
	.B(n48), 
	.A(i_div_ratio[6]));
   INVXLM U12 (.Y(n61), 
	.A(i_div_ratio[7]));
   NAND2XLM U13 (.Y(I_CLK_EN), 
	.B(n61), 
	.A(n62));
   NOR3XLM U14 (.Y(n3), 
	.C(n55), 
	.B(i_div_ratio[0]), 
	.A(i_div_ratio[4]));
   NAND2XLM U15 (.Y(n10), 
	.B(n3), 
	.A(n45));
   OA21XLM U16 (.Y(n26), 
	.B0(n10), 
	.A1(n3), 
	.A0(n45));
   AOI2BB2XLM U17 (.Y(n15), 
	.B1(COUNTER[3]), 
	.B0(i_div_ratio[3]), 
	.A1N(i_div_ratio[3]), 
	.A0N(COUNTER[3]));
   OAI21XLM U18 (.Y(n1), 
	.B0(COUNTER[2]), 
	.A1(i_div_ratio[1]), 
	.A0(i_div_ratio[0]));
   OAI31XLM U20 (.Y(n16), 
	.B0(n1), 
	.A2(i_div_ratio[1]), 
	.A1(COUNTER[2]), 
	.A0(i_div_ratio[0]));
   AOI2BB1XLM U21 (.Y(n2), 
	.B0(i_div_ratio[1]), 
	.A1N(n16), 
	.A0N(n15));
   INVXLM U22 (.Y(n27), 
	.A(COUNTER[1]));
   INVXLM U23 (.Y(n28), 
	.A(SPCASCAN_N14));
   AOI221XLM U24 (.Y(n24), 
	.C0(n28), 
	.B1(n27), 
	.B0(i_div_ratio[1]), 
	.A1(COUNTER[1]), 
	.A0(n2));
   NAND2BXLM U25 (.Y(n4), 
	.B(n56), 
	.AN(i_div_ratio[0]));
   AOI21XLM U26 (.Y(n22), 
	.B0(n3), 
	.A1(n4), 
	.A0(i_div_ratio[4]));
   NOR2XLM U27 (.Y(n5), 
	.B(n10), 
	.A(i_div_ratio[6]));
   AOI211XLM U28 (.Y(n8), 
	.C0(COUNTER[6]), 
	.B0(n5), 
	.A1(i_div_ratio[6]), 
	.A0(n10));
   AOI31XLM U29 (.Y(n9), 
	.B0(n8), 
	.A2(COUNTER[6]), 
	.A1(i_div_ratio[6]), 
	.A0(n10));
   OAI31XLM U30 (.Y(n21), 
	.B0(n9), 
	.A2(n10), 
	.A1(COUNTER[7]), 
	.A0(i_div_ratio[6]));
   INVXLM U31 (.Y(n51), 
	.A(COUNTER[7]));
   AOI32XLM U32 (.Y(n18), 
	.B1(COUNTER[7]), 
	.B0(n61), 
	.A2(n47), 
	.A1(n51), 
	.A0(i_div_ratio[7]));
   NOR2XLM U33 (.Y(n35), 
	.B(n27), 
	.A(n28));
   INVXLM U34 (.Y(n33), 
	.A(n35));
   INVXLM U35 (.Y(n13), 
	.A(n16));
   NOR2XLM U36 (.Y(n11), 
	.B(COUNTER[1]), 
	.A(i_div_ratio[1]));
   AOI21XLM U37 (.Y(n50), 
	.B0(n11), 
	.A1(i_div_ratio[1]), 
	.A0(COUNTER[1]));
   AOI22XLM U38 (.Y(n12), 
	.B1(n13), 
	.B0(i_div_ratio[2]), 
	.A1(i_div_ratio[0]), 
	.A0(n50));
   OAI21XLM U39 (.Y(n14), 
	.B0(n12), 
	.A1(n13), 
	.A0(i_div_ratio[2]));
   AOI221XLM U40 (.Y(n17), 
	.C0(n14), 
	.B1(n15), 
	.B0(n33), 
	.A1(n15), 
	.A0(n16));
   OAI211XLM U41 (.Y(n19), 
	.C0(n17), 
	.B0(n18), 
	.A1(i_div_ratio[0]), 
	.A0(SPCASCAN_N14));
   AOI21XLM U42 (.Y(n20), 
	.B0(n19), 
	.A1(n22), 
	.A0(COUNTER[4]));
   OAI211XLM U43 (.Y(n23), 
	.C0(n20), 
	.B0(n21), 
	.A1(n22), 
	.A0(COUNTER[4]));
   AOI211XLM U44 (.Y(n25), 
	.C0(n23), 
	.B0(n24), 
	.A1(n26), 
	.A0(COUNTER[5]));
   NAND2XLM U45 (.Y(n40), 
	.B(I_CLK_EN), 
	.A(n71));
   NOR2XLM U46 (.Y(N56), 
	.B(n40), 
	.A(SPCASCAN_N14));
   AOI211XLM U47 (.Y(N57), 
	.C0(n40), 
	.B0(n35), 
	.A1(n27), 
	.A0(n28));
   INVXLM U48 (.Y(n30), 
	.A(COUNTER[5]));
   NAND3XLM U49 (.Y(n36), 
	.C(n35), 
	.B(COUNTER[2]), 
	.A(COUNTER[3]));
   INVXLM U50 (.Y(n37), 
	.A(n36));
   NAND2XLM U51 (.Y(n29), 
	.B(n37), 
	.A(COUNTER[4]));
   NAND3XLM U52 (.Y(n39), 
	.C(n37), 
	.B(COUNTER[4]), 
	.A(COUNTER[5]));
   INVXLM U53 (.Y(n38), 
	.A(n39));
   AOI211XLM U54 (.Y(N61), 
	.C0(n40), 
	.B0(n38), 
	.A1(n29), 
	.A0(n30));
   NAND2XLM U55 (.Y(n31), 
	.B(n35), 
	.A(COUNTER[2]));
   AOI211XLM U56 (.Y(N59), 
	.C0(n40), 
	.B0(n37), 
	.A1(n31), 
	.A0(n32));
   INVXLM U57 (.Y(n34), 
	.A(COUNTER[2]));
   AOI221XLM U58 (.Y(N58), 
	.C0(n40), 
	.B1(n33), 
	.B0(n34), 
	.A1(n35), 
	.A0(COUNTER[2]));
   INVXLM U59 (.Y(n43), 
	.A(COUNTER[4]));
   AOI221XLM U60 (.Y(N60), 
	.C0(n40), 
	.B1(n36), 
	.B0(n43), 
	.A1(n37), 
	.A0(COUNTER[4]));
   INVXLM U61 (.Y(n53), 
	.A(COUNTER[6]));
   AOI221XLM U62 (.Y(N62), 
	.C0(n40), 
	.B1(n39), 
	.B0(n53), 
	.A1(n38), 
	.A0(COUNTER[6]));
   NOR2XLM U63 (.Y(n42), 
	.B(n39), 
	.A(n53));
   INVXLM U64 (.Y(n41), 
	.A(n42));
   AOI221XLM U65 (.Y(N63), 
	.C0(n40), 
	.B1(n41), 
	.B0(n51), 
	.A1(n42), 
	.A0(COUNTER[7]));
   INVXLM U66 (.Y(n44), 
	.A(n54));
   AOI221XLM U67 (.Y(n69), 
	.C0(n45), 
	.B1(n54), 
	.B0(n43), 
	.A1(n44), 
	.A0(COUNTER[4]));
   OAI21XLM U68 (.Y(n46), 
	.B0(n45), 
	.A1(n54), 
	.A0(COUNTER[4]));
   AOI31XLM U69 (.Y(n68), 
	.B0(n46), 
	.A2(n54), 
	.A1(n47), 
	.A0(COUNTER[4]));
   AOI21XLM U70 (.Y(n66), 
	.B0(n62), 
	.A1(n48), 
	.A0(i_div_ratio[6]));
   OAI22XLM U71 (.Y(n49), 
	.B1(n50), 
	.B0(i_div_ratio[2]), 
	.A1(i_div_ratio[1]), 
	.A0(SPCASCAN_N14));
   AOI221XLM U72 (.Y(n52), 
	.C0(n49), 
	.B1(i_div_ratio[2]), 
	.B0(n50), 
	.A1(i_div_ratio[1]), 
	.A0(SPCASCAN_N14));
   OAI211XLM U73 (.Y(n64), 
	.C0(n51), 
	.B0(n52), 
	.A1(n53), 
	.A0(i_div_ratio[7]));
   AOI21XLM U74 (.Y(n59), 
	.B0(n54), 
	.A1(n55), 
	.A0(i_div_ratio[4]));
   AOI221XLM U75 (.Y(n58), 
	.C0(n56), 
	.B1(i_div_ratio[3]), 
	.B0(i_div_ratio[2]), 
	.A1(i_div_ratio[3]), 
	.A0(i_div_ratio[1]));
   OAI22XLM U76 (.Y(n57), 
	.B1(n58), 
	.B0(COUNTER[2]), 
	.A1(n59), 
	.A0(COUNTER[3]));
   AOI221XLM U77 (.Y(n60), 
	.C0(n57), 
	.B1(COUNTER[2]), 
	.B0(n58), 
	.A1(n59), 
	.A0(COUNTER[3]));
   OAI31XLM U78 (.Y(n63), 
	.B0(n60), 
	.A2(n61), 
	.A1(n62), 
	.A0(COUNTER[6]));
   AOI211XLM U79 (.Y(n65), 
	.C0(n63), 
	.B0(n64), 
	.A1(COUNTER[5]), 
	.A0(n66));
   OAI21XLM U80 (.Y(n67), 
	.B0(n65), 
	.A1(COUNTER[5]), 
	.A0(n66));
   OAI31XLM U81 (.Y(n70), 
	.B0(I_CLK_EN), 
	.A2(n67), 
	.A1(n68), 
	.A0(n69));
   AOI2B1XLM U82 (.Y(n7), 
	.B0(n70), 
	.A1N(n6__Exclude_0_NET), 
	.A0(n71));
endmodule

module I_CLK_DIV_DIV_RATIO_WIDTH3_test_1 (
	i_ref_clk, 
	i_rst_n, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	SPCASCAN_N1, 
	SPCASCAN_N2, 
	n11__Exclude_0_NET, 
	UART_CLK_M__L3_N0, 
	UART_CLK_M__L7_N0);
   input i_ref_clk;
   input i_rst_n;
   input i_clk_en;
   input [2:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   output SPCASCAN_N1;
   input SPCASCAN_N2;
   input n11__Exclude_0_NET;
   input UART_CLK_M__L3_N0;
   input UART_CLK_M__L7_N0;

   // Internal wires
   wire FE_PHN3_n11__Exclude_0_NET;
   wire FE_PHN2_n11__Exclude_0_NET;
   wire I_CLK_EN;
   wire DIVIDED_CLK;
   wire N31;
   wire N32;
   wire N33;
   wire n29;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire [2:0] COUNTER;

//   assign test_so = DIVIDED_CLK ;

   DLY4X1M FE_PHC3_n11__Exclude_0_NET (.Y(FE_PHN3_n11__Exclude_0_NET), 
	.A(FE_PHN2_n11__Exclude_0_NET));
   DLY4X1M FE_PHC2_n11__Exclude_0_NET (.Y(FE_PHN2_n11__Exclude_0_NET), 
	.A(n11__Exclude_0_NET));
   MX2XLM U32 (.Y(o_div_clk), 
	.S0(I_CLK_EN), 
	.B(test_so), 
	.A(UART_CLK_M__L7_N0));
   SDFFRQX1M \COUNTER_reg[0]  (.SI(COUNTER[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(SPCASCAN_N1), 
	.D(N31), 
	.CK(i_ref_clk));
   SDFFRQX1M \COUNTER_reg[1]  (.SI(COUNTER[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(COUNTER[1]), 
	.D(N32), 
	.CK(i_ref_clk));
   SDFFRQX1M \COUNTER_reg[2]  (.SI(FE_PHN3_n11__Exclude_0_NET), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(COUNTER[2]), 
	.D(N33), 
	.CK(i_ref_clk));
   SDFFRQX1M DIVIDED_CLK_reg (.SI(SPCASCAN_N2), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(test_so), 
	.D(n29), 
	.CK(UART_CLK_M__L3_N0));
   AOI211XLM U3 (.Y(n4), 
	.C0(n2), 
	.B0(n8), 
	.A1(n9), 
	.A0(COUNTER[2]));
   NAND2XLM U4 (.Y(I_CLK_EN), 
	.B(n9), 
	.A(n5));
   NOR2XLM U5 (.Y(N32), 
	.B(n13), 
	.A(n7));
   INVXLM U6 (.Y(n5), 
	.A(i_div_ratio[1]));
   INVXLM U7 (.Y(n9), 
	.A(i_div_ratio[2]));
   INVXLM U8 (.Y(n14), 
	.A(COUNTER[2]));
   NAND2XLM U9 (.Y(n15), 
	.B(COUNTER[1]), 
	.A(SPCASCAN_N1));
   OAI21XLM U10 (.Y(n7), 
	.B0(n15), 
	.A1(COUNTER[1]), 
	.A0(SPCASCAN_N1));
   AOI21XLM U11 (.Y(n6), 
	.B0(n7), 
	.A1(n14), 
	.A0(i_div_ratio[2]));
   AOI21BXLM U12 (.Y(n1), 
	.B0N(COUNTER[1]), 
	.A1(i_div_ratio[2]), 
	.A0(i_div_ratio[1]));
   AOI211XLM U13 (.Y(n8), 
	.C0(n1), 
	.B0(COUNTER[2]), 
	.A1(SPCASCAN_N1), 
	.A0(i_div_ratio[1]));
   AOI221XLM U14 (.Y(n2), 
	.C0(i_div_ratio[0]), 
	.B1(SPCASCAN_N1), 
	.B0(n14), 
	.A1(SPCASCAN_N1), 
	.A0(i_div_ratio[1]));
   AOI32XLM U15 (.Y(n3), 
	.B1(i_div_ratio[0]), 
	.B0(SPCASCAN_N1), 
	.A2(n5), 
	.A1(i_div_ratio[0]), 
	.A0(COUNTER[1]));
   OAI211XLM U16 (.Y(n12), 
	.C0(n3), 
	.B0(n4), 
	.A1(n5), 
	.A0(n6));
   NAND2XLM U17 (.Y(n13), 
	.B(n12), 
	.A(I_CLK_EN));
   NOR2XLM U18 (.Y(N31), 
	.B(n13), 
	.A(SPCASCAN_N1));
   OAI31XLM U19 (.Y(n10), 
	.B0(n8), 
	.A2(n9), 
	.A1(COUNTER[1]), 
	.A0(SPCASCAN_N1));
   NAND2XLM U20 (.Y(n11), 
	.B(n10), 
	.A(n11__Exclude_0_NET));
   AOI21BXLM U21 (.Y(n29), 
	.B0N(I_CLK_EN), 
	.A1(n11), 
	.A0(n12));
   INVXLM U22 (.Y(n16), 
	.A(n15));
   AOI221XLM U23 (.Y(N33), 
	.C0(n13), 
	.B1(n14), 
	.B0(n15), 
	.A1(COUNTER[2]), 
	.A0(n16));
endmodule

module pulse_gen_test_1 (
	CLK, 
	RST, 
	Signal, 
	enable_pulse, 
	test_si, 
	test_se, 
	SPCASCAN_N7, 
	SPCASCAN_N8);
   input CLK;
   input RST;
   input Signal;
   output enable_pulse;
   input test_si;
   input test_se;
   output SPCASCAN_N7;
   input SPCASCAN_N8;

   // Internal wires
   wire Gen_Pulse;

   SDFFRQX1M Signal_reg_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SPCASCAN_N7), 
	.D(Signal), 
	.CK(CLK));
   SDFFRQX1M enable_pulse_reg (.SI(SPCASCAN_N8), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_pulse), 
	.D(Gen_Pulse), 
	.CK(CLK));
   NOR2BXLM U3 (.Y(Gen_Pulse), 
	.B(SPCASCAN_N7), 
	.AN(Signal));
endmodule

module Reg_File_WIDTH8_ADD_WIDTH4_DEPTH16_test_1 (
	WrData, 
	Address, 
	WrEn, 
	RdEn, 
	clk, 
	rst, 
	RdData, 
	Rd_D_Valid, 
	REG0, 
	REG1, 
	REG2, 
	REG3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_se, 
	test_so1_BAR, 
	SYNC_REF_RST, 
	SPCASCAN_N5, 
	FE_OFN0_SYNC_REF_RST_M, 
	FE_OFN1_SYNC_REF_RST_M, 
	REF_CLK_M__L10_N12, 
	REF_CLK_M__L10_N13, 
	REF_CLK_M__L10_N14, 
	REF_CLK_M__L10_N15, 
	REF_CLK_M__L10_N4, 
	REF_CLK_M__L10_N5, 
	REF_CLK_M__L10_N8, 
	REF_CLK_M__L10_N9);
   input [7:0] WrData;
   input [3:0] Address;
   input WrEn;
   input RdEn;
   input clk;
   input rst;
   output [7:0] RdData;
   output Rd_D_Valid;
   output [7:0] REG0;
   output [7:0] REG1;
   output [7:0] REG2;
   output [7:0] REG3;
   input test_si2;
   input test_si1;
   output test_so2;
   input test_se;
   output test_so1_BAR;
   input SYNC_REF_RST;
   output SPCASCAN_N5;
   input FE_OFN0_SYNC_REF_RST_M;
   input FE_OFN1_SYNC_REF_RST_M;
   input REF_CLK_M__L10_N12;
   input REF_CLK_M__L10_N13;
   input REF_CLK_M__L10_N14;
   input REF_CLK_M__L10_N15;
   input REF_CLK_M__L10_N4;
   input REF_CLK_M__L10_N5;
   input REF_CLK_M__L10_N8;
   input REF_CLK_M__L10_N9;

   // Internal wires
   wire FE_OFN30_ALU_OP_A_7_;
   wire FE_OFN29_ALU_OP_A_6_;
   wire FE_OFN28_ALU_OP_A_5_;
   wire FE_OFN27_ALU_OP_A_4_;
   wire FE_OFN26_ALU_OP_A_3_;
   wire FE_OFN25_ALU_OP_A_2_;
   wire FE_OFN24_ALU_OP_B_7_;
   wire FE_OFN23_ALU_OP_B_6_;
   wire FE_OFN22_ALU_OP_B_4_;
   wire FE_OFN21_ALU_OP_B_3_;
   wire FE_OFN20_ALU_OP_B_2_;
   wire FE_OFN19_ALU_OP_B_0_;
   wire FE_OFN10_n99;
   wire FE_OFN9_n101;
   wire FE_OFN8_n104;
   wire FE_OFN7_n107;
   wire FE_OFN6_n110;
   wire FE_OFN5_n118;
   wire FE_OFN4_n97;
   wire FE_OFN2_SYNC_REF_RST_M;
   wire \RegFile[4][7] ;
   wire \RegFile[4][6] ;
   wire \RegFile[4][5] ;
   wire \RegFile[4][4] ;
   wire \RegFile[4][3] ;
   wire \RegFile[4][2] ;
   wire \RegFile[4][1] ;
   wire \RegFile[4][0] ;
   wire \RegFile[5][7] ;
   wire \RegFile[5][6] ;
   wire \RegFile[5][5] ;
   wire \RegFile[5][4] ;
   wire \RegFile[5][3] ;
   wire \RegFile[5][2] ;
   wire \RegFile[5][1] ;
   wire \RegFile[5][0] ;
   wire \RegFile[6][7] ;
   wire \RegFile[6][6] ;
   wire \RegFile[6][5] ;
   wire \RegFile[6][4] ;
   wire \RegFile[6][3] ;
   wire \RegFile[6][2] ;
   wire \RegFile[6][1] ;
   wire \RegFile[6][0] ;
   wire \RegFile[7][7] ;
   wire \RegFile[7][6] ;
   wire \RegFile[7][5] ;
   wire \RegFile[7][4] ;
   wire \RegFile[7][3] ;
   wire \RegFile[7][2] ;
   wire \RegFile[7][1] ;
   wire \RegFile[7][0] ;
   wire \RegFile[8][7] ;
   wire \RegFile[8][6] ;
   wire \RegFile[8][5] ;
   wire \RegFile[8][4] ;
   wire \RegFile[8][3] ;
   wire \RegFile[8][2] ;
   wire \RegFile[8][1] ;
   wire \RegFile[8][0] ;
   wire \RegFile[9][7] ;
   wire \RegFile[9][6] ;
   wire \RegFile[9][5] ;
   wire \RegFile[9][4] ;
   wire \RegFile[9][3] ;
   wire \RegFile[9][2] ;
   wire \RegFile[9][1] ;
   wire \RegFile[9][0] ;
   wire \RegFile[10][7] ;
   wire \RegFile[10][6] ;
   wire \RegFile[10][5] ;
   wire \RegFile[10][4] ;
   wire \RegFile[10][3] ;
   wire \RegFile[10][2] ;
   wire \RegFile[10][1] ;
   wire \RegFile[11][7] ;
   wire \RegFile[11][6] ;
   wire \RegFile[11][5] ;
   wire \RegFile[11][4] ;
   wire \RegFile[11][3] ;
   wire \RegFile[11][2] ;
   wire \RegFile[11][1] ;
   wire \RegFile[11][0] ;
   wire \RegFile[12][7] ;
   wire \RegFile[12][6] ;
   wire \RegFile[12][5] ;
   wire \RegFile[12][4] ;
   wire \RegFile[12][3] ;
   wire \RegFile[12][2] ;
   wire \RegFile[12][1] ;
   wire \RegFile[12][0] ;
   wire \RegFile[13][7] ;
   wire \RegFile[13][6] ;
   wire \RegFile[13][5] ;
   wire \RegFile[13][4] ;
   wire \RegFile[13][3] ;
   wire \RegFile[13][2] ;
   wire \RegFile[13][1] ;
   wire \RegFile[13][0] ;
   wire \RegFile[14][7] ;
   wire \RegFile[14][6] ;
   wire \RegFile[14][5] ;
   wire \RegFile[14][4] ;
   wire \RegFile[14][3] ;
   wire \RegFile[14][2] ;
   wire \RegFile[14][1] ;
   wire \RegFile[14][0] ;
   wire \RegFile[15][7] ;
   wire \RegFile[15][6] ;
   wire \RegFile[15][5] ;
   wire \RegFile[15][4] ;
   wire \RegFile[15][3] ;
   wire \RegFile[15][2] ;
   wire \RegFile[15][1] ;
   wire \RegFile[15][0] ;
   wire N59;
   wire n138;
   wire n140;
   wire n142;
   wire n144;
   wire n146;
   wire n148;
   wire n150;
   wire n152;
   wire n154;
   wire n156;
   wire n158;
   wire n160;
   wire n162;
   wire n164;
   wire n166;
   wire n168;
   wire n170;
   wire n172;
   wire n174;
   wire n176;
   wire n178;
   wire n180;
   wire n182;
   wire n184;
   wire n186;
   wire n188;
   wire n190;
   wire n192;
   wire n194;
   wire n196;
   wire n198;
   wire n200;
   wire n202;
   wire n204;
   wire n206;
   wire n208;
   wire n210;
   wire n212;
   wire n214;
   wire n216;
   wire n218;
   wire n220;
   wire n222;
   wire n224;
   wire n226;
   wire n228;
   wire n230;
   wire n232;
   wire n234;
   wire n236;
   wire n238;
   wire n240;
   wire n242;
   wire n244;
   wire n246;
   wire n248;
   wire n250;
   wire n252;
   wire n254;
   wire n256;
   wire n258;
   wire n260;
   wire n262;
   wire n264;
   wire n266;
   wire n268;
   wire n270;
   wire n272;
   wire n274;
   wire n276;
   wire n278;
   wire n280;
   wire n282;
   wire n284;
   wire n286;
   wire n288;
   wire n290;
   wire n292;
   wire n294;
   wire n296;
   wire n298;
   wire n300;
   wire n302;
   wire n304;
   wire n306;
   wire n308;
   wire n310;
   wire n312;
   wire n314;
   wire n316;
   wire n318;
   wire n320;
   wire n322;
   wire n324;
   wire n326;
   wire n328;
   wire n330;
   wire n332;
   wire n334;
   wire n336;
   wire n338;
   wire n340;
   wire n342;
   wire n344;
   wire n346;
   wire n348;
   wire n350;
   wire n352;
   wire n354;
   wire n356;
   wire n358;
   wire n360;
   wire n362;
   wire n364;
   wire n366;
   wire n368;
   wire n370;
   wire n372;
   wire n374;
   wire n376;
   wire n378;
   wire n380;
   wire n382;
   wire n384;
   wire n386;
   wire n388;
   wire n390;
   wire n392;
   wire n394;
   wire n396;
   wire n398;
   wire n400;
   wire n402;
   wire n404;
   wire n406;
   wire n408;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n133;
   wire n135;
   wire n136;
   wire n137;
   wire n139;

   assign test_so2 = \RegFile[15][7]  ;
   assign test_so1_BAR = n133 ;

   BUFX8M FE_OFC30_ALU_OP_A_7_ (.Y(REG0[7]), 
	.A(FE_OFN30_ALU_OP_A_7_));
   BUFX8M FE_OFC29_ALU_OP_A_6_ (.Y(REG0[6]), 
	.A(FE_OFN29_ALU_OP_A_6_));
   BUFX8M FE_OFC28_ALU_OP_A_5_ (.Y(REG0[5]), 
	.A(FE_OFN28_ALU_OP_A_5_));
   BUFX8M FE_OFC27_ALU_OP_A_4_ (.Y(REG0[4]), 
	.A(FE_OFN27_ALU_OP_A_4_));
   BUFX8M FE_OFC26_ALU_OP_A_3_ (.Y(REG0[3]), 
	.A(FE_OFN26_ALU_OP_A_3_));
   CLKBUFX2M FE_OFC25_ALU_OP_A_2_ (.Y(REG0[2]), 
	.A(FE_OFN25_ALU_OP_A_2_));
   BUFX8M FE_OFC24_ALU_OP_B_7_ (.Y(REG1[7]), 
	.A(FE_OFN24_ALU_OP_B_7_));
   BUFX8M FE_OFC23_ALU_OP_B_6_ (.Y(REG1[6]), 
	.A(FE_OFN23_ALU_OP_B_6_));
   BUFX8M FE_OFC22_ALU_OP_B_4_ (.Y(REG1[4]), 
	.A(FE_OFN22_ALU_OP_B_4_));
   BUFX8M FE_OFC21_ALU_OP_B_3_ (.Y(REG1[3]), 
	.A(FE_OFN21_ALU_OP_B_3_));
   BUFX10M FE_OFC20_ALU_OP_B_2_ (.Y(REG1[2]), 
	.A(FE_OFN20_ALU_OP_B_2_));
   BUFX10M FE_OFC19_ALU_OP_B_0_ (.Y(REG1[0]), 
	.A(FE_OFN19_ALU_OP_B_0_));
   BUFX2M FE_OFC10_n99 (.Y(FE_OFN10_n99), 
	.A(n99));
   BUFX2M FE_OFC9_n101 (.Y(FE_OFN9_n101), 
	.A(n101));
   BUFX2M FE_OFC8_n104 (.Y(FE_OFN8_n104), 
	.A(n104));
   BUFX2M FE_OFC7_n107 (.Y(FE_OFN7_n107), 
	.A(n107));
   BUFX2M FE_OFC6_n110 (.Y(FE_OFN6_n110), 
	.A(n110));
   BUFX2M FE_OFC5_n118 (.Y(FE_OFN5_n118), 
	.A(n118));
   BUFX2M FE_OFC4_n97 (.Y(FE_OFN4_n97), 
	.A(n97));
   BUFX4M FE_OFC2_SYNC_REF_RST_M (.Y(FE_OFN2_SYNC_REF_RST_M), 
	.A(FE_OFN0_SYNC_REF_RST_M));
   SDFFRQX1M Rd_D_Valid_reg (.SI(RdData[0]), 
	.SE(n139), 
	.RN(rst), 
	.Q(Rd_D_Valid), 
	.D(N59), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRHQX1M \RegFile_reg[0][7]  (.SI(REG1[5]), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(FE_OFN30_ALU_OP_A_7_), 
	.D(n408), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRHQX1M \RegFile_reg[0][6]  (.SI(REG0[0]), 
	.SE(n136), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(FE_OFN29_ALU_OP_A_6_), 
	.D(n406), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRHQX1M \RegFile_reg[0][5]  (.SI(REG0[4]), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(FE_OFN28_ALU_OP_A_5_), 
	.D(n404), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRHQX1M \RegFile_reg[0][4]  (.SI(REG0[2]), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(FE_OFN27_ALU_OP_A_4_), 
	.D(n402), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRHQX1M \RegFile_reg[0][3]  (.SI(REG1[1]), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(FE_OFN26_ALU_OP_A_3_), 
	.D(n400), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRQX1M \RegFile_reg[0][2]  (.SI(REG1[0]), 
	.SE(n136), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(FE_OFN25_ALU_OP_A_2_), 
	.D(n398), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRQX1M \RegFile_reg[0][1]  (.SI(REG0[7]), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(REG0[1]), 
	.D(n396), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRQX1M \RegFile_reg[0][0]  (.SI(REG0[5]), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(REG0[0]), 
	.D(n394), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRHQX1M \RegFile_reg[1][7]  (.SI(REG1[2]), 
	.SE(n137), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(FE_OFN24_ALU_OP_B_7_), 
	.D(n392), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRHQX1M \RegFile_reg[1][6]  (.SI(REG1[4]), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(FE_OFN23_ALU_OP_B_6_), 
	.D(n390), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRHQX1M \RegFile_reg[1][5]  (.SI(REG3[5]), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(REG1[5]), 
	.D(n388), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRHQX1M \RegFile_reg[1][4]  (.SI(REG1[3]), 
	.SE(n139), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(FE_OFN22_ALU_OP_B_4_), 
	.D(n386), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRHQX1M \RegFile_reg[1][3]  (.SI(REG1[7]), 
	.SE(n137), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(FE_OFN21_ALU_OP_B_3_), 
	.D(n384), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRHQX1M \RegFile_reg[1][2]  (.SI(REG0[3]), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(FE_OFN20_ALU_OP_B_2_), 
	.D(n382), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRHQX8M \RegFile_reg[1][1]  (.SI(REG0[1]), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(REG1[1]), 
	.D(n380), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRHQX1M \RegFile_reg[1][0]  (.SI(REG1[6]), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(FE_OFN19_ALU_OP_B_0_), 
	.D(n378), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRQX1M \RegFile_reg[2][6]  (.SI(SYNC_REF_RST), 
	.SE(n137), 
	.RN(rst), 
	.Q(REG2[6]), 
	.D(n376), 
	.CK(clk));
   SDFFRQX1M \RegFile_reg[2][5]  (.SI(REG2[3]), 
	.SE(n136), 
	.RN(rst), 
	.Q(REG2[5]), 
	.D(n374), 
	.CK(clk));
   SDFFRQX1M \RegFile_reg[2][4]  (.SI(REG2[2]), 
	.SE(n135), 
	.RN(rst), 
	.Q(REG2[4]), 
	.D(n372), 
	.CK(clk));
   SDFFRQX1M \RegFile_reg[2][3]  (.SI(REG2[7]), 
	.SE(n139), 
	.RN(rst), 
	.Q(REG2[3]), 
	.D(n370), 
	.CK(clk));
   SDFFRQX1M \RegFile_reg[2][2]  (.SI(Rd_D_Valid), 
	.SE(n137), 
	.RN(rst), 
	.Q(REG2[2]), 
	.D(n368), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M \RegFile_reg[2][1]  (.SI(REG2[0]), 
	.SE(n136), 
	.RN(FE_OFN1_SYNC_REF_RST_M), 
	.Q(REG2[1]), 
	.D(n366), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M \RegFile_reg[3][7]  (.SI(RdData[7]), 
	.SE(n135), 
	.RN(FE_OFN1_SYNC_REF_RST_M), 
	.Q(REG3[7]), 
	.D(n364), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M \RegFile_reg[3][6]  (.SI(REG3[0]), 
	.SE(n139), 
	.RN(FE_OFN1_SYNC_REF_RST_M), 
	.Q(REG3[6]), 
	.D(n362), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M \RegFile_reg[3][4]  (.SI(REG3[3]), 
	.SE(n137), 
	.RN(rst), 
	.Q(REG3[4]), 
	.D(n360), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M \RegFile_reg[3][3]  (.SI(REG3[7]), 
	.SE(n136), 
	.RN(rst), 
	.Q(REG3[3]), 
	.D(n358), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M \RegFile_reg[3][2]  (.SI(REG3[1]), 
	.SE(n135), 
	.RN(rst), 
	.Q(REG3[2]), 
	.D(n356), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M \RegFile_reg[3][1]  (.SI(REG3[4]), 
	.SE(n139), 
	.RN(rst), 
	.Q(REG3[1]), 
	.D(n354), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M \RegFile_reg[3][0]  (.SI(REG2[1]), 
	.SE(n137), 
	.RN(FE_OFN1_SYNC_REF_RST_M), 
	.Q(REG3[0]), 
	.D(n352), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M \RegFile_reg[4][7]  (.SI(\RegFile[4][3] ), 
	.SE(n136), 
	.RN(rst), 
	.Q(\RegFile[4][7] ), 
	.D(n350), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RegFile_reg[4][6]  (.SI(\RegFile[4][1] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[4][6] ), 
	.D(n348), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RegFile_reg[4][5]  (.SI(\RegFile[4][4] ), 
	.SE(n139), 
	.RN(rst), 
	.Q(\RegFile[4][5] ), 
	.D(n346), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[4][4]  (.SI(REG2[4]), 
	.SE(n137), 
	.RN(rst), 
	.Q(\RegFile[4][4] ), 
	.D(n344), 
	.CK(clk));
   SDFFRQX1M \RegFile_reg[4][3]  (.SI(\RegFile[4][6] ), 
	.SE(n136), 
	.RN(rst), 
	.Q(\RegFile[4][3] ), 
	.D(n342), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RegFile_reg[4][2]  (.SI(\RegFile[4][0] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[4][2] ), 
	.D(n340), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RegFile_reg[4][1]  (.SI(\RegFile[4][2] ), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[4][1] ), 
	.D(n338), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RegFile_reg[4][0]  (.SI(\RegFile[4][5] ), 
	.SE(n137), 
	.RN(rst), 
	.Q(\RegFile[4][0] ), 
	.D(n336), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[5][7]  (.SI(\RegFile[5][4] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[5][7] ), 
	.D(n334), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRQX1M \RegFile_reg[5][6]  (.SI(\RegFile[7][6] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[5][6] ), 
	.D(n332), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRQX1M \RegFile_reg[5][5]  (.SI(test_si2), 
	.SE(n139), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[5][5] ), 
	.D(n330), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRQX1M \RegFile_reg[5][4]  (.SI(\RegFile[5][3] ), 
	.SE(n137), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[5][4] ), 
	.D(n328), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRQX1M \RegFile_reg[5][3]  (.SI(\RegFile[5][5] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[5][3] ), 
	.D(n326), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRQX1M \RegFile_reg[5][2]  (.SI(\RegFile[5][0] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[5][2] ), 
	.D(n324), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRQX1M \RegFile_reg[5][1]  (.SI(\RegFile[11][4] ), 
	.SE(n139), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[5][1] ), 
	.D(n322), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRQX1M \RegFile_reg[5][0]  (.SI(\RegFile[7][5] ), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[5][0] ), 
	.D(n320), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRQX1M \RegFile_reg[6][7]  (.SI(\RegFile[6][2] ), 
	.SE(n136), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[6][7] ), 
	.D(n318), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RegFile_reg[6][6]  (.SI(\RegFile[6][7] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[6][6] ), 
	.D(n316), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RegFile_reg[6][5]  (.SI(\RegFile[6][1] ), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[6][5] ), 
	.D(n314), 
	.CK(clk));
   SDFFRQX1M \RegFile_reg[6][4]  (.SI(\RegFile[6][3] ), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[6][4] ), 
	.D(n312), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RegFile_reg[6][3]  (.SI(\RegFile[6][6] ), 
	.SE(n136), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[6][3] ), 
	.D(n310), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RegFile_reg[6][2]  (.SI(\RegFile[8][6] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[6][2] ), 
	.D(n308), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RegFile_reg[6][1]  (.SI(\RegFile[6][4] ), 
	.SE(n139), 
	.RN(rst), 
	.Q(\RegFile[6][1] ), 
	.D(n306), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RegFile_reg[6][0]  (.SI(\RegFile[6][5] ), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[6][0] ), 
	.D(n304), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[7][7]  (.SI(\RegFile[5][7] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[7][7] ), 
	.D(n302), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRQX1M \RegFile_reg[7][6]  (.SI(\RegFile[5][2] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[7][6] ), 
	.D(n300), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRQX1M \RegFile_reg[7][5]  (.SI(\RegFile[7][4] ), 
	.SE(n139), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[7][5] ), 
	.D(n298), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRQX1M \RegFile_reg[7][4]  (.SI(\RegFile[5][1] ), 
	.SE(n137), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[7][4] ), 
	.D(n296), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRQX1M \RegFile_reg[7][3]  (.SI(\RegFile[7][7] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[7][3] ), 
	.D(n294), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRQX1M \RegFile_reg[7][2]  (.SI(\RegFile[9][6] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[7][2] ), 
	.D(n292), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[7][1]  (.SI(\RegFile[11][5] ), 
	.SE(n139), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[7][1] ), 
	.D(n290), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[7][0]  (.SI(\RegFile[5][6] ), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[7][0] ), 
	.D(n288), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRQX1M \RegFile_reg[8][7]  (.SI(\RegFile[10][2] ), 
	.SE(n136), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[8][7] ), 
	.D(n286), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[8][6]  (.SI(\RegFile[10][7] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[8][6] ), 
	.D(n284), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[8][5]  (.SI(\RegFile[12][1] ), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[8][5] ), 
	.D(n282), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[8][4]  (.SI(\RegFile[10][4] ), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[8][4] ), 
	.D(n280), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[8][3]  (.SI(\RegFile[10][5] ), 
	.SE(n136), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[8][3] ), 
	.D(n278), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[8][2]  (.SI(\RegFile[8][3] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[8][2] ), 
	.D(n276), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[8][1]  (.SI(\RegFile[12][2] ), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[8][1] ), 
	.D(n274), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[8][0]  (.SI(\RegFile[11][6] ), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[8][0] ), 
	.D(n272), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[9][7]  (.SI(\RegFile[7][1] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[9][7] ), 
	.D(n270), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[9][6]  (.SI(\RegFile[11][1] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[9][6] ), 
	.D(n268), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[9][5]  (.SI(\RegFile[9][7] ), 
	.SE(n139), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[9][5] ), 
	.D(n266), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[9][4]  (.SI(\RegFile[11][3] ), 
	.SE(n137), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[9][4] ), 
	.D(n264), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[9][3]  (.SI(\RegFile[9][4] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[9][3] ), 
	.D(n262), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[9][2]  (.SI(\RegFile[11][2] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[9][2] ), 
	.D(n260), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[9][1]  (.SI(\RegFile[13][5] ), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[9][1] ), 
	.D(n258), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[9][0]  (.SI(\RegFile[9][2] ), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[9][0] ), 
	.D(n256), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[10][7]  (.SI(\RegFile[8][7] ), 
	.SE(n136), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[10][7] ), 
	.D(n254), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[10][6]  (.SI(\RegFile[12][6] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[10][6] ), 
	.D(n252), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[10][5]  (.SI(\RegFile[10][1] ), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[10][5] ), 
	.D(n250), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[10][4]  (.SI(\RegFile[8][5] ), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[10][4] ), 
	.D(n248), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[10][3]  (.SI(\RegFile[8][2] ), 
	.SE(n136), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[10][3] ), 
	.D(n246), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[10][2]  (.SI(\RegFile[10][6] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[10][2] ), 
	.D(n244), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[10][1]  (.SI(\RegFile[6][0] ), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[10][1] ), 
	.D(n242), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[10][0]  (.SI(\RegFile[8][0] ), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(SPCASCAN_N5), 
	.D(n240), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[11][7]  (.SI(\RegFile[7][2] ), 
	.SE(n136), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[11][7] ), 
	.D(n238), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[11][6]  (.SI(\RegFile[11][0] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[11][6] ), 
	.D(n236), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[11][5]  (.SI(\RegFile[7][3] ), 
	.SE(n139), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[11][5] ), 
	.D(n234), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRQX1M \RegFile_reg[11][4]  (.SI(\RegFile[11][7] ), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[11][4] ), 
	.D(n232), 
	.CK(REF_CLK_M__L10_N4));
   SDFFRQX1M \RegFile_reg[11][3]  (.SI(\RegFile[9][5] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[11][3] ), 
	.D(n230), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[11][2]  (.SI(\RegFile[8][4] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[11][2] ), 
	.D(n228), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[11][1]  (.SI(\RegFile[9][1] ), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[11][1] ), 
	.D(n226), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[11][0]  (.SI(\RegFile[7][0] ), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[11][0] ), 
	.D(n224), 
	.CK(REF_CLK_M__L10_N5));
   SDFFRQX1M \RegFile_reg[12][7]  (.SI(\RegFile[14][3] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[12][7] ), 
	.D(n222), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RegFile_reg[12][6]  (.SI(\RegFile[14][6] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[12][6] ), 
	.D(n220), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[12][5]  (.SI(\RegFile[14][0] ), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[12][5] ), 
	.D(n218), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[12][4]  (.SI(\RegFile[12][3] ), 
	.SE(n137), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[12][4] ), 
	.D(n216), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RegFile_reg[12][3]  (.SI(\RegFile[12][7] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[12][3] ), 
	.D(n214), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RegFile_reg[12][2]  (.SI(\RegFile[10][3] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[12][2] ), 
	.D(n212), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[12][1]  (.SI(\RegFile[8][1] ), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[12][1] ), 
	.D(n210), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[12][0]  (.SI(\RegFile[13][6] ), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[12][0] ), 
	.D(n208), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[13][7]  (.SI(test_so2), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[13][7] ), 
	.D(n206), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RegFile_reg[13][6]  (.SI(\RegFile[9][0] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[13][6] ), 
	.D(n204), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[13][5]  (.SI(\RegFile[13][0] ), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[13][5] ), 
	.D(n202), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[13][4]  (.SI(\RegFile[13][1] ), 
	.SE(n137), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[13][4] ), 
	.D(n200), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RegFile_reg[13][3]  (.SI(\RegFile[14][5] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[13][3] ), 
	.D(n198), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RegFile_reg[13][2]  (.SI(\RegFile[15][2] ), 
	.SE(n135), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[13][2] ), 
	.D(n196), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RegFile_reg[13][1]  (.SI(\RegFile[14][4] ), 
	.SE(n139), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[13][1] ), 
	.D(n194), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RegFile_reg[13][0]  (.SI(\RegFile[12][5] ), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[13][0] ), 
	.D(n192), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RegFile_reg[14][7]  (.SI(\RegFile[12][4] ), 
	.SE(n136), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[14][7] ), 
	.D(n190), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[14][6]  (.SI(\RegFile[14][2] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[14][6] ), 
	.D(n188), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[14][5]  (.SI(\RegFile[15][3] ), 
	.SE(n139), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[14][5] ), 
	.D(n186), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RegFile_reg[14][4]  (.SI(\RegFile[15][0] ), 
	.SE(n137), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[14][4] ), 
	.D(n184), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RegFile_reg[14][3]  (.SI(\RegFile[13][7] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[14][3] ), 
	.D(n182), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RegFile_reg[14][2]  (.SI(\RegFile[14][7] ), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[14][2] ), 
	.D(n180), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[14][1]  (.SI(\RegFile[15][6] ), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[14][1] ), 
	.D(n178), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[14][0]  (.SI(\RegFile[14][1] ), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[14][0] ), 
	.D(n176), 
	.CK(REF_CLK_M__L10_N14));
   SDFFRQX1M \RegFile_reg[15][7]  (.SI(\RegFile[13][3] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[15][7] ), 
	.D(n174), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RdData_reg[7]  (.SI(RdData[5]), 
	.SE(n135), 
	.RN(rst), 
	.Q(RdData[7]), 
	.D(n172), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[15][6]  (.SI(\RegFile[12][0] ), 
	.SE(n139), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(\RegFile[15][6] ), 
	.D(n170), 
	.CK(REF_CLK_M__L10_N13));
   SDFFRQX1M \RdData_reg[6]  (.SI(RdData[2]), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(RdData[6]), 
	.D(n168), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[15][5]  (.SI(\RegFile[13][4] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[15][5] ), 
	.D(n166), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RdData_reg[5]  (.SI(RdData[1]), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(RdData[5]), 
	.D(n164), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[15][4]  (.SI(\RegFile[15][1] ), 
	.SE(n139), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[15][4] ), 
	.D(n162), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RdData_reg[4]  (.SI(REG3[2]), 
	.SE(n137), 
	.RN(rst), 
	.Q(RdData[4]), 
	.D(n160), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M \RegFile_reg[15][3]  (.SI(\RegFile[15][4] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[15][3] ), 
	.D(n158), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RdData_reg[3]  (.SI(RdData[6]), 
	.SE(n135), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(RdData[3]), 
	.D(n156), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[15][2]  (.SI(\RegFile[9][3] ), 
	.SE(n139), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[15][2] ), 
	.D(n154), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RdData_reg[2]  (.SI(REG0[6]), 
	.SE(n137), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(RdData[2]), 
	.D(n152), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[15][1]  (.SI(\RegFile[15][5] ), 
	.SE(n136), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[15][1] ), 
	.D(n150), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RdData_reg[1]  (.SI(RdData[3]), 
	.SE(n135), 
	.RN(rst), 
	.Q(RdData[1]), 
	.D(n148), 
	.CK(REF_CLK_M__L10_N15));
   SDFFRQX1M \RegFile_reg[15][0]  (.SI(\RegFile[13][2] ), 
	.SE(n139), 
	.RN(FE_OFN2_SYNC_REF_RST_M), 
	.Q(\RegFile[15][0] ), 
	.D(n146), 
	.CK(REF_CLK_M__L10_N12));
   SDFFRQX1M \RdData_reg[0]  (.SI(test_si1), 
	.SE(test_se), 
	.RN(rst), 
	.Q(RdData[0]), 
	.D(n144), 
	.CK(REF_CLK_M__L10_N9));
   SDFFSQX2M \RegFile_reg[2][7]  (.SN(rst), 
	.SI(REG2[6]), 
	.SE(n137), 
	.Q(REG2[7]), 
	.D(n142), 
	.CK(clk));
   NOR3X1M U3 (.Y(n97), 
	.C(Address[3]), 
	.B(Address[2]), 
	.A(Address[1]));
   NAND4XLM U4 (.Y(n68), 
	.D(n64), 
	.C(n65), 
	.B(n66), 
	.A(n67));
   NAND4XLM U5 (.Y(n46), 
	.D(n42), 
	.C(n43), 
	.B(n44), 
	.A(n45));
   AND4XLM U6 (.Y(n81), 
	.D(n71), 
	.C(n72), 
	.B(n73), 
	.A(n74));
   OAI21XLM U7 (.Y(n152), 
	.B0(n69), 
	.A1(n94), 
	.A0(n70));
   INVXLM U8 (.Y(N59), 
	.A(n90));
   NAND2BXLM U9 (.Y(n90), 
	.B(RdEn), 
	.AN(WrEn));
   INVXLM U10 (.Y(n4), 
	.A(Address[1]));
   INVXLM U11 (.Y(n3), 
	.A(Address[2]));
   INVXLM U12 (.Y(n2), 
	.A(Address[3]));
   NOR3X1M U13 (.Y(n118), 
	.C(n2), 
	.B(n3), 
	.A(n4));
   NAND2XLM U14 (.Y(n1), 
	.B(Address[3]), 
	.A(Address[2]));
   NOR2X2M U15 (.Y(n113), 
	.B(n1), 
	.A(Address[1]));
   AOI22XLM U16 (.Y(n8), 
	.B1(\RegFile[13][0] ), 
	.B0(n113), 
	.A1(\RegFile[15][0] ), 
	.A0(FE_OFN5_n118));
   NOR3X1M U17 (.Y(n110), 
	.C(n2), 
	.B(n4), 
	.A(Address[2]));
   NOR3X1M U18 (.Y(n107), 
	.C(n2), 
	.B(Address[2]), 
	.A(Address[1]));
   AOI22XLM U19 (.Y(n7), 
	.B1(\RegFile[9][0] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[11][0] ), 
	.A0(FE_OFN6_n110));
   NOR3X1M U20 (.Y(n104), 
	.C(n4), 
	.B(n3), 
	.A(Address[3]));
   NOR3X1M U21 (.Y(n101), 
	.C(n3), 
	.B(Address[3]), 
	.A(Address[1]));
   AOI22XLM U22 (.Y(n6), 
	.B1(\RegFile[5][0] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[7][0] ), 
	.A0(FE_OFN8_n104));
   NOR3X1M U23 (.Y(n99), 
	.C(n4), 
	.B(Address[3]), 
	.A(Address[2]));
   AOI22XLM U24 (.Y(n5), 
	.B1(REG1[0]), 
	.B0(FE_OFN4_n97), 
	.A1(REG3[0]), 
	.A0(FE_OFN10_n99));
   AND4XLM U25 (.Y(n15), 
	.D(n5), 
	.C(n6), 
	.B(n7), 
	.A(n8));
   NAND2XLM U26 (.Y(n94), 
	.B(Address[0]), 
	.A(N59));
   NOR2XLM U27 (.Y(n92), 
	.B(n90), 
	.A(Address[0]));
   AOI22XLM U28 (.Y(n12), 
	.B1(\RegFile[12][0] ), 
	.B0(n113), 
	.A1(\RegFile[14][0] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U29 (.Y(n11), 
	.B1(\RegFile[8][0] ), 
	.B0(FE_OFN7_n107), 
	.A1(SPCASCAN_N5), 
	.A0(FE_OFN6_n110));
   AOI22XLM U30 (.Y(n10), 
	.B1(\RegFile[4][0] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[6][0] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U31 (.Y(n9), 
	.B1(REG0[0]), 
	.B0(FE_OFN4_n97), 
	.A1(REG2[0]), 
	.A0(FE_OFN10_n99));
   NAND4XLM U32 (.Y(n13), 
	.D(n9), 
	.C(n10), 
	.B(n11), 
	.A(n12));
   AOI22XLM U33 (.Y(n14), 
	.B1(n90), 
	.B0(RdData[0]), 
	.A1(n13), 
	.A0(n92));
   OAI21XLM U34 (.Y(n144), 
	.B0(n14), 
	.A1(n94), 
	.A0(n15));
   AOI22XLM U35 (.Y(n19), 
	.B1(\RegFile[13][3] ), 
	.B0(n113), 
	.A1(\RegFile[15][3] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U36 (.Y(n18), 
	.B1(\RegFile[9][3] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[11][3] ), 
	.A0(FE_OFN6_n110));
   AOI22XLM U37 (.Y(n17), 
	.B1(\RegFile[5][3] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[7][3] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U38 (.Y(n16), 
	.B1(REG1[3]), 
	.B0(FE_OFN4_n97), 
	.A1(REG3[3]), 
	.A0(FE_OFN10_n99));
   AND4XLM U39 (.Y(n26), 
	.D(n16), 
	.C(n17), 
	.B(n18), 
	.A(n19));
   AOI22XLM U40 (.Y(n23), 
	.B1(\RegFile[12][3] ), 
	.B0(n113), 
	.A1(\RegFile[14][3] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U41 (.Y(n22), 
	.B1(\RegFile[8][3] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[10][3] ), 
	.A0(FE_OFN6_n110));
   AOI22XLM U42 (.Y(n21), 
	.B1(\RegFile[4][3] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[6][3] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U43 (.Y(n20), 
	.B1(REG0[3]), 
	.B0(FE_OFN4_n97), 
	.A1(REG2[3]), 
	.A0(FE_OFN10_n99));
   NAND4XLM U44 (.Y(n24), 
	.D(n20), 
	.C(n21), 
	.B(n22), 
	.A(n23));
   AOI22XLM U45 (.Y(n25), 
	.B1(n90), 
	.B0(RdData[3]), 
	.A1(n24), 
	.A0(n92));
   OAI21XLM U46 (.Y(n156), 
	.B0(n25), 
	.A1(n94), 
	.A0(n26));
   AOI22XLM U47 (.Y(n30), 
	.B1(\RegFile[13][4] ), 
	.B0(n113), 
	.A1(\RegFile[15][4] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U48 (.Y(n29), 
	.B1(\RegFile[9][4] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[11][4] ), 
	.A0(FE_OFN6_n110));
   AOI22XLM U49 (.Y(n28), 
	.B1(\RegFile[5][4] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[7][4] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U50 (.Y(n27), 
	.B1(REG1[4]), 
	.B0(FE_OFN4_n97), 
	.A1(REG3[4]), 
	.A0(FE_OFN10_n99));
   AND4XLM U51 (.Y(n37), 
	.D(n27), 
	.C(n28), 
	.B(n29), 
	.A(n30));
   AOI22XLM U52 (.Y(n34), 
	.B1(\RegFile[12][4] ), 
	.B0(n113), 
	.A1(\RegFile[14][4] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U53 (.Y(n33), 
	.B1(\RegFile[8][4] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[10][4] ), 
	.A0(FE_OFN6_n110));
   AOI22XLM U54 (.Y(n32), 
	.B1(\RegFile[4][4] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[6][4] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U55 (.Y(n31), 
	.B1(REG0[4]), 
	.B0(FE_OFN4_n97), 
	.A1(REG2[4]), 
	.A0(FE_OFN10_n99));
   NAND4XLM U56 (.Y(n35), 
	.D(n31), 
	.C(n32), 
	.B(n33), 
	.A(n34));
   AOI22XLM U57 (.Y(n36), 
	.B1(n90), 
	.B0(RdData[4]), 
	.A1(n35), 
	.A0(n92));
   OAI21XLM U58 (.Y(n160), 
	.B0(n36), 
	.A1(n94), 
	.A0(n37));
   AOI22XLM U59 (.Y(n41), 
	.B1(\RegFile[13][5] ), 
	.B0(n113), 
	.A1(\RegFile[15][5] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U60 (.Y(n40), 
	.B1(\RegFile[9][5] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[11][5] ), 
	.A0(FE_OFN6_n110));
   AOI22XLM U61 (.Y(n39), 
	.B1(\RegFile[5][5] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[7][5] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U62 (.Y(n38), 
	.B1(REG1[5]), 
	.B0(FE_OFN4_n97), 
	.A1(REG3[5]), 
	.A0(FE_OFN10_n99));
   AND4XLM U63 (.Y(n48), 
	.D(n38), 
	.C(n39), 
	.B(n40), 
	.A(n41));
   AOI22XLM U64 (.Y(n45), 
	.B1(\RegFile[12][5] ), 
	.B0(n113), 
	.A1(\RegFile[14][5] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U65 (.Y(n44), 
	.B1(\RegFile[8][5] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[10][5] ), 
	.A0(FE_OFN6_n110));
   AOI22XLM U66 (.Y(n43), 
	.B1(\RegFile[4][5] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[6][5] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U67 (.Y(n42), 
	.B1(REG0[5]), 
	.B0(FE_OFN4_n97), 
	.A1(REG2[5]), 
	.A0(FE_OFN10_n99));
   AOI22XLM U68 (.Y(n47), 
	.B1(n90), 
	.B0(RdData[5]), 
	.A1(n46), 
	.A0(n92));
   OAI21XLM U69 (.Y(n164), 
	.B0(n47), 
	.A1(n94), 
	.A0(n48));
   AOI22XLM U70 (.Y(n52), 
	.B1(\RegFile[13][1] ), 
	.B0(n113), 
	.A1(\RegFile[15][1] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U71 (.Y(n51), 
	.B1(\RegFile[9][1] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[11][1] ), 
	.A0(FE_OFN6_n110));
   AOI22XLM U72 (.Y(n50), 
	.B1(\RegFile[5][1] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[7][1] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U73 (.Y(n49), 
	.B1(REG1[1]), 
	.B0(FE_OFN4_n97), 
	.A1(REG3[1]), 
	.A0(FE_OFN10_n99));
   AND4XLM U74 (.Y(n59), 
	.D(n49), 
	.C(n50), 
	.B(n51), 
	.A(n52));
   AOI22XLM U75 (.Y(n56), 
	.B1(\RegFile[12][1] ), 
	.B0(n113), 
	.A1(\RegFile[14][1] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U76 (.Y(n55), 
	.B1(\RegFile[8][1] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[10][1] ), 
	.A0(FE_OFN6_n110));
   AOI22XLM U77 (.Y(n54), 
	.B1(\RegFile[4][1] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[6][1] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U78 (.Y(n53), 
	.B1(REG0[1]), 
	.B0(FE_OFN4_n97), 
	.A1(REG2[1]), 
	.A0(FE_OFN10_n99));
   NAND4XLM U79 (.Y(n57), 
	.D(n53), 
	.C(n54), 
	.B(n55), 
	.A(n56));
   AOI22XLM U80 (.Y(n58), 
	.B1(n90), 
	.B0(RdData[1]), 
	.A1(n57), 
	.A0(n92));
   OAI21XLM U81 (.Y(n148), 
	.B0(n58), 
	.A1(n94), 
	.A0(n59));
   AOI22XLM U82 (.Y(n63), 
	.B1(\RegFile[13][2] ), 
	.B0(n113), 
	.A1(\RegFile[15][2] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U83 (.Y(n62), 
	.B1(\RegFile[9][2] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[11][2] ), 
	.A0(FE_OFN6_n110));
   AOI22XLM U84 (.Y(n61), 
	.B1(\RegFile[5][2] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[7][2] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U85 (.Y(n60), 
	.B1(REG1[2]), 
	.B0(FE_OFN4_n97), 
	.A1(REG3[2]), 
	.A0(FE_OFN10_n99));
   AND4XLM U86 (.Y(n70), 
	.D(n60), 
	.C(n61), 
	.B(n62), 
	.A(n63));
   AOI22XLM U87 (.Y(n67), 
	.B1(\RegFile[12][2] ), 
	.B0(n113), 
	.A1(\RegFile[14][2] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U88 (.Y(n66), 
	.B1(\RegFile[8][2] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[10][2] ), 
	.A0(FE_OFN6_n110));
   AOI22XLM U89 (.Y(n65), 
	.B1(\RegFile[4][2] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[6][2] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U90 (.Y(n64), 
	.B1(REG0[2]), 
	.B0(FE_OFN4_n97), 
	.A1(REG2[2]), 
	.A0(FE_OFN10_n99));
   AOI22XLM U91 (.Y(n69), 
	.B1(n90), 
	.B0(RdData[2]), 
	.A1(n68), 
	.A0(n92));
   AOI22XLM U92 (.Y(n74), 
	.B1(\RegFile[13][6] ), 
	.B0(n113), 
	.A1(\RegFile[15][6] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U93 (.Y(n73), 
	.B1(\RegFile[9][6] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[11][6] ), 
	.A0(FE_OFN6_n110));
   AOI22XLM U94 (.Y(n72), 
	.B1(\RegFile[5][6] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[7][6] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U95 (.Y(n71), 
	.B1(REG1[6]), 
	.B0(FE_OFN4_n97), 
	.A1(REG3[6]), 
	.A0(FE_OFN10_n99));
   AOI22XLM U96 (.Y(n78), 
	.B1(\RegFile[12][6] ), 
	.B0(n113), 
	.A1(\RegFile[14][6] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U97 (.Y(n77), 
	.B1(\RegFile[8][6] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[10][6] ), 
	.A0(FE_OFN6_n110));
   AOI22XLM U98 (.Y(n76), 
	.B1(\RegFile[4][6] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[6][6] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U99 (.Y(n75), 
	.B1(REG0[6]), 
	.B0(FE_OFN4_n97), 
	.A1(REG2[6]), 
	.A0(FE_OFN10_n99));
   NAND4XLM U100 (.Y(n79), 
	.D(n75), 
	.C(n76), 
	.B(n77), 
	.A(n78));
   AOI22XLM U101 (.Y(n80), 
	.B1(n90), 
	.B0(RdData[6]), 
	.A1(n79), 
	.A0(n92));
   OAI21XLM U102 (.Y(n168), 
	.B0(n80), 
	.A1(n94), 
	.A0(n81));
   AOI22XLM U103 (.Y(n85), 
	.B1(\RegFile[13][7] ), 
	.B0(n113), 
	.A1(\RegFile[15][7] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U104 (.Y(n84), 
	.B1(\RegFile[9][7] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[11][7] ), 
	.A0(FE_OFN6_n110));
   AOI22XLM U105 (.Y(n83), 
	.B1(\RegFile[5][7] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[7][7] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U106 (.Y(n82), 
	.B1(REG1[7]), 
	.B0(FE_OFN4_n97), 
	.A1(REG3[7]), 
	.A0(FE_OFN10_n99));
   AND4XLM U107 (.Y(n95), 
	.D(n82), 
	.C(n83), 
	.B(n84), 
	.A(n85));
   AOI22XLM U108 (.Y(n89), 
	.B1(\RegFile[12][7] ), 
	.B0(n113), 
	.A1(\RegFile[14][7] ), 
	.A0(FE_OFN5_n118));
   AOI22XLM U109 (.Y(n88), 
	.B1(\RegFile[8][7] ), 
	.B0(FE_OFN7_n107), 
	.A1(\RegFile[10][7] ), 
	.A0(FE_OFN6_n110));
   AOI22XLM U110 (.Y(n87), 
	.B1(\RegFile[4][7] ), 
	.B0(FE_OFN9_n101), 
	.A1(\RegFile[6][7] ), 
	.A0(FE_OFN8_n104));
   AOI22XLM U111 (.Y(n86), 
	.B1(REG0[7]), 
	.B0(FE_OFN4_n97), 
	.A1(REG2[7]), 
	.A0(FE_OFN10_n99));
   NAND4XLM U112 (.Y(n91), 
	.D(n86), 
	.C(n87), 
	.B(n88), 
	.A(n89));
   AOI22XLM U113 (.Y(n93), 
	.B1(n90), 
	.B0(RdData[7]), 
	.A1(n91), 
	.A0(n92));
   OAI21XLM U114 (.Y(n172), 
	.B0(n93), 
	.A1(n94), 
	.A0(n95));
   NOR3BX2M U115 (.Y(n115), 
	.C(Address[0]), 
	.B(RdEn), 
	.AN(WrEn));
   AND2X1M U116 (.Y(n96), 
	.B(n115), 
	.A(FE_OFN4_n97));
   CLKINVX2M U117 (.Y(n125), 
	.A(WrData[7]));
   AOI2BB2XLM U118 (.Y(n408), 
	.B1(n125), 
	.B0(n96), 
	.A1N(n96), 
	.A0N(REG0[7]));
   CLKINVX2M U119 (.Y(n119), 
	.A(WrData[6]));
   AOI2BB2XLM U120 (.Y(n406), 
	.B1(n119), 
	.B0(n96), 
	.A1N(n96), 
	.A0N(REG0[6]));
   CLKINVX2M U121 (.Y(n128), 
	.A(WrData[5]));
   AOI2BB2XLM U122 (.Y(n404), 
	.B1(n128), 
	.B0(n96), 
	.A1N(n96), 
	.A0N(REG0[5]));
   CLKINVX2M U123 (.Y(n120), 
	.A(WrData[4]));
   AOI2BB2XLM U124 (.Y(n402), 
	.B1(n120), 
	.B0(n96), 
	.A1N(n96), 
	.A0N(REG0[4]));
   CLKINVX2M U125 (.Y(n121), 
	.A(WrData[3]));
   AOI2BB2XLM U126 (.Y(n400), 
	.B1(n121), 
	.B0(n96), 
	.A1N(n96), 
	.A0N(REG0[3]));
   CLKINVX2M U127 (.Y(n122), 
	.A(WrData[2]));
   AOI2BB2XLM U128 (.Y(n398), 
	.B1(n122), 
	.B0(n96), 
	.A1N(n96), 
	.A0N(REG0[2]));
   CLKINVX2M U129 (.Y(n123), 
	.A(WrData[1]));
   AOI2BB2XLM U130 (.Y(n396), 
	.B1(n123), 
	.B0(n96), 
	.A1N(n96), 
	.A0N(REG0[1]));
   CLKINVX2M U131 (.Y(n126), 
	.A(WrData[0]));
   AOI2BB2XLM U132 (.Y(n394), 
	.B1(n126), 
	.B0(n96), 
	.A1N(n96), 
	.A0N(REG0[0]));
   NAND3BX2M U133 (.Y(n117), 
	.C(Address[0]), 
	.B(WrEn), 
	.AN(RdEn));
   NOR2BX2M U134 (.Y(n98), 
	.B(n117), 
	.AN(FE_OFN4_n97));
   AOI2BB2XLM U135 (.Y(n392), 
	.B1(n125), 
	.B0(n98), 
	.A1N(n98), 
	.A0N(REG1[7]));
   AOI2BB2XLM U136 (.Y(n390), 
	.B1(n119), 
	.B0(n98), 
	.A1N(n98), 
	.A0N(REG1[6]));
   AOI2BB2XLM U137 (.Y(n388), 
	.B1(n128), 
	.B0(n98), 
	.A1N(n98), 
	.A0N(REG1[5]));
   AOI2BB2XLM U138 (.Y(n386), 
	.B1(n120), 
	.B0(n98), 
	.A1N(n98), 
	.A0N(REG1[4]));
   AOI2BB2XLM U139 (.Y(n384), 
	.B1(n121), 
	.B0(n98), 
	.A1N(n98), 
	.A0N(REG1[3]));
   AOI2BB2XLM U140 (.Y(n382), 
	.B1(n122), 
	.B0(n98), 
	.A1N(n98), 
	.A0N(REG1[2]));
   AOI2BB2XLM U141 (.Y(n380), 
	.B1(n123), 
	.B0(n98), 
	.A1N(n98), 
	.A0N(REG1[1]));
   AOI2BB2XLM U142 (.Y(n378), 
	.B1(n126), 
	.B0(n98), 
	.A1N(n98), 
	.A0N(REG1[0]));
   AND2X1M U143 (.Y(n127), 
	.B(n115), 
	.A(FE_OFN10_n99));
   AOI2BB2XLM U144 (.Y(n376), 
	.B1(n119), 
	.B0(n127), 
	.A1N(n127), 
	.A0N(REG2[6]));
   AOI2BB2XLM U145 (.Y(n374), 
	.B1(n128), 
	.B0(n127), 
	.A1N(n127), 
	.A0N(REG2[5]));
   AOI2BB2XLM U146 (.Y(n372), 
	.B1(n120), 
	.B0(n127), 
	.A1N(n127), 
	.A0N(REG2[4]));
   AOI2BB2XLM U147 (.Y(n370), 
	.B1(n121), 
	.B0(n127), 
	.A1N(n127), 
	.A0N(REG2[3]));
   AOI2BB2XLM U148 (.Y(n368), 
	.B1(n122), 
	.B0(n127), 
	.A1N(n127), 
	.A0N(REG2[2]));
   AOI2BB2XLM U149 (.Y(n366), 
	.B1(n123), 
	.B0(n127), 
	.A1N(n127), 
	.A0N(REG2[1]));
   NOR2BX2M U150 (.Y(n129), 
	.B(n117), 
	.AN(FE_OFN10_n99));
   AOI2BB2XLM U151 (.Y(n364), 
	.B1(n125), 
	.B0(n129), 
	.A1N(n129), 
	.A0N(REG3[7]));
   AOI2BB2XLM U152 (.Y(n362), 
	.B1(n119), 
	.B0(n129), 
	.A1N(n129), 
	.A0N(REG3[6]));
   AOI2BB2XLM U153 (.Y(n360), 
	.B1(n120), 
	.B0(n129), 
	.A1N(n129), 
	.A0N(REG3[4]));
   AOI2BB2XLM U154 (.Y(n358), 
	.B1(n121), 
	.B0(n129), 
	.A1N(n129), 
	.A0N(REG3[3]));
   AOI2BB2XLM U155 (.Y(n356), 
	.B1(n122), 
	.B0(n129), 
	.A1N(n129), 
	.A0N(REG3[2]));
   AOI2BB2XLM U156 (.Y(n354), 
	.B1(n123), 
	.B0(n129), 
	.A1N(n129), 
	.A0N(REG3[1]));
   AOI2BB2XLM U157 (.Y(n352), 
	.B1(n126), 
	.B0(n129), 
	.A1N(n129), 
	.A0N(REG3[0]));
   AND2X1M U158 (.Y(n100), 
	.B(n115), 
	.A(FE_OFN9_n101));
   AOI2BB2XLM U159 (.Y(n350), 
	.B1(n125), 
	.B0(n100), 
	.A1N(n100), 
	.A0N(\RegFile[4][7] ));
   AOI2BB2XLM U160 (.Y(n348), 
	.B1(n119), 
	.B0(n100), 
	.A1N(n100), 
	.A0N(\RegFile[4][6] ));
   AOI2BB2XLM U161 (.Y(n346), 
	.B1(n128), 
	.B0(n100), 
	.A1N(n100), 
	.A0N(\RegFile[4][5] ));
   AOI2BB2XLM U162 (.Y(n344), 
	.B1(n120), 
	.B0(n100), 
	.A1N(n100), 
	.A0N(\RegFile[4][4] ));
   AOI2BB2XLM U163 (.Y(n342), 
	.B1(n121), 
	.B0(n100), 
	.A1N(n100), 
	.A0N(\RegFile[4][3] ));
   AOI2BB2XLM U164 (.Y(n340), 
	.B1(n122), 
	.B0(n100), 
	.A1N(n100), 
	.A0N(\RegFile[4][2] ));
   AOI2BB2XLM U165 (.Y(n338), 
	.B1(n123), 
	.B0(n100), 
	.A1N(n100), 
	.A0N(\RegFile[4][1] ));
   AOI2BB2XLM U166 (.Y(n336), 
	.B1(n126), 
	.B0(n100), 
	.A1N(n100), 
	.A0N(\RegFile[4][0] ));
   NOR2BX2M U167 (.Y(n102), 
	.B(n117), 
	.AN(FE_OFN9_n101));
   AOI2BB2XLM U168 (.Y(n334), 
	.B1(n125), 
	.B0(n102), 
	.A1N(n102), 
	.A0N(\RegFile[5][7] ));
   AOI2BB2XLM U169 (.Y(n332), 
	.B1(n119), 
	.B0(n102), 
	.A1N(n102), 
	.A0N(\RegFile[5][6] ));
   AOI2BB2XLM U170 (.Y(n330), 
	.B1(n128), 
	.B0(n102), 
	.A1N(n102), 
	.A0N(\RegFile[5][5] ));
   AOI2BB2XLM U171 (.Y(n328), 
	.B1(n120), 
	.B0(n102), 
	.A1N(n102), 
	.A0N(\RegFile[5][4] ));
   AOI2BB2XLM U172 (.Y(n326), 
	.B1(n121), 
	.B0(n102), 
	.A1N(n102), 
	.A0N(\RegFile[5][3] ));
   AOI2BB2XLM U173 (.Y(n324), 
	.B1(n122), 
	.B0(n102), 
	.A1N(n102), 
	.A0N(\RegFile[5][2] ));
   AOI2BB2XLM U174 (.Y(n322), 
	.B1(n123), 
	.B0(n102), 
	.A1N(n102), 
	.A0N(\RegFile[5][1] ));
   AOI2BB2XLM U175 (.Y(n320), 
	.B1(n126), 
	.B0(n102), 
	.A1N(n102), 
	.A0N(\RegFile[5][0] ));
   AND2X1M U176 (.Y(n103), 
	.B(n115), 
	.A(FE_OFN8_n104));
   AOI2BB2XLM U177 (.Y(n318), 
	.B1(n125), 
	.B0(n103), 
	.A1N(n103), 
	.A0N(\RegFile[6][7] ));
   AOI2BB2XLM U178 (.Y(n316), 
	.B1(n119), 
	.B0(n103), 
	.A1N(n103), 
	.A0N(\RegFile[6][6] ));
   AOI2BB2XLM U179 (.Y(n314), 
	.B1(n128), 
	.B0(n103), 
	.A1N(n103), 
	.A0N(\RegFile[6][5] ));
   AOI2BB2XLM U180 (.Y(n312), 
	.B1(n120), 
	.B0(n103), 
	.A1N(n103), 
	.A0N(\RegFile[6][4] ));
   AOI2BB2XLM U181 (.Y(n310), 
	.B1(n121), 
	.B0(n103), 
	.A1N(n103), 
	.A0N(\RegFile[6][3] ));
   AOI2BB2XLM U182 (.Y(n308), 
	.B1(n122), 
	.B0(n103), 
	.A1N(n103), 
	.A0N(\RegFile[6][2] ));
   AOI2BB2XLM U183 (.Y(n306), 
	.B1(n123), 
	.B0(n103), 
	.A1N(n103), 
	.A0N(\RegFile[6][1] ));
   AOI2BB2XLM U184 (.Y(n304), 
	.B1(n126), 
	.B0(n103), 
	.A1N(n103), 
	.A0N(\RegFile[6][0] ));
   NOR2BX2M U185 (.Y(n105), 
	.B(n117), 
	.AN(FE_OFN8_n104));
   AOI2BB2XLM U186 (.Y(n302), 
	.B1(n125), 
	.B0(n105), 
	.A1N(n105), 
	.A0N(\RegFile[7][7] ));
   AOI2BB2XLM U187 (.Y(n300), 
	.B1(n119), 
	.B0(n105), 
	.A1N(n105), 
	.A0N(\RegFile[7][6] ));
   AOI2BB2XLM U188 (.Y(n298), 
	.B1(n128), 
	.B0(n105), 
	.A1N(n105), 
	.A0N(\RegFile[7][5] ));
   AOI2BB2XLM U189 (.Y(n296), 
	.B1(n120), 
	.B0(n105), 
	.A1N(n105), 
	.A0N(\RegFile[7][4] ));
   AOI2BB2XLM U190 (.Y(n294), 
	.B1(n121), 
	.B0(n105), 
	.A1N(n105), 
	.A0N(\RegFile[7][3] ));
   AOI2BB2XLM U191 (.Y(n292), 
	.B1(n122), 
	.B0(n105), 
	.A1N(n105), 
	.A0N(\RegFile[7][2] ));
   AOI2BB2XLM U192 (.Y(n290), 
	.B1(n123), 
	.B0(n105), 
	.A1N(n105), 
	.A0N(\RegFile[7][1] ));
   AOI2BB2XLM U193 (.Y(n288), 
	.B1(n126), 
	.B0(n105), 
	.A1N(n105), 
	.A0N(\RegFile[7][0] ));
   AND2X1M U194 (.Y(n106), 
	.B(n115), 
	.A(FE_OFN7_n107));
   AOI2BB2XLM U195 (.Y(n286), 
	.B1(n125), 
	.B0(n106), 
	.A1N(n106), 
	.A0N(\RegFile[8][7] ));
   AOI2BB2XLM U196 (.Y(n284), 
	.B1(n119), 
	.B0(n106), 
	.A1N(n106), 
	.A0N(\RegFile[8][6] ));
   AOI2BB2XLM U197 (.Y(n282), 
	.B1(n128), 
	.B0(n106), 
	.A1N(n106), 
	.A0N(\RegFile[8][5] ));
   AOI2BB2XLM U198 (.Y(n280), 
	.B1(n120), 
	.B0(n106), 
	.A1N(n106), 
	.A0N(\RegFile[8][4] ));
   AOI2BB2XLM U199 (.Y(n278), 
	.B1(n121), 
	.B0(n106), 
	.A1N(n106), 
	.A0N(\RegFile[8][3] ));
   AOI2BB2XLM U200 (.Y(n276), 
	.B1(n122), 
	.B0(n106), 
	.A1N(n106), 
	.A0N(\RegFile[8][2] ));
   AOI2BB2XLM U201 (.Y(n274), 
	.B1(n123), 
	.B0(n106), 
	.A1N(n106), 
	.A0N(\RegFile[8][1] ));
   AOI2BB2XLM U202 (.Y(n272), 
	.B1(n126), 
	.B0(n106), 
	.A1N(n106), 
	.A0N(\RegFile[8][0] ));
   NOR2BX2M U203 (.Y(n108), 
	.B(n117), 
	.AN(FE_OFN7_n107));
   AOI2BB2XLM U204 (.Y(n270), 
	.B1(n125), 
	.B0(n108), 
	.A1N(n108), 
	.A0N(\RegFile[9][7] ));
   AOI2BB2XLM U205 (.Y(n268), 
	.B1(n119), 
	.B0(n108), 
	.A1N(n108), 
	.A0N(\RegFile[9][6] ));
   AOI2BB2XLM U206 (.Y(n266), 
	.B1(n128), 
	.B0(n108), 
	.A1N(n108), 
	.A0N(\RegFile[9][5] ));
   AOI2BB2XLM U207 (.Y(n264), 
	.B1(n120), 
	.B0(n108), 
	.A1N(n108), 
	.A0N(\RegFile[9][4] ));
   AOI2BB2XLM U208 (.Y(n262), 
	.B1(n121), 
	.B0(n108), 
	.A1N(n108), 
	.A0N(\RegFile[9][3] ));
   AOI2BB2XLM U209 (.Y(n260), 
	.B1(n122), 
	.B0(n108), 
	.A1N(n108), 
	.A0N(\RegFile[9][2] ));
   AOI2BB2XLM U210 (.Y(n258), 
	.B1(n123), 
	.B0(n108), 
	.A1N(n108), 
	.A0N(\RegFile[9][1] ));
   AOI2BB2XLM U211 (.Y(n256), 
	.B1(n126), 
	.B0(n108), 
	.A1N(n108), 
	.A0N(\RegFile[9][0] ));
   AND2X1M U212 (.Y(n109), 
	.B(n115), 
	.A(FE_OFN6_n110));
   AOI2BB2XLM U213 (.Y(n254), 
	.B1(n125), 
	.B0(n109), 
	.A1N(n109), 
	.A0N(\RegFile[10][7] ));
   AOI2BB2XLM U214 (.Y(n252), 
	.B1(n119), 
	.B0(n109), 
	.A1N(n109), 
	.A0N(\RegFile[10][6] ));
   AOI2BB2XLM U215 (.Y(n250), 
	.B1(n128), 
	.B0(n109), 
	.A1N(n109), 
	.A0N(\RegFile[10][5] ));
   AOI2BB2XLM U216 (.Y(n248), 
	.B1(n120), 
	.B0(n109), 
	.A1N(n109), 
	.A0N(\RegFile[10][4] ));
   AOI2BB2XLM U217 (.Y(n246), 
	.B1(n121), 
	.B0(n109), 
	.A1N(n109), 
	.A0N(\RegFile[10][3] ));
   AOI2BB2XLM U218 (.Y(n244), 
	.B1(n122), 
	.B0(n109), 
	.A1N(n109), 
	.A0N(\RegFile[10][2] ));
   AOI2BB2XLM U219 (.Y(n242), 
	.B1(n123), 
	.B0(n109), 
	.A1N(n109), 
	.A0N(\RegFile[10][1] ));
   AOI2BB2XLM U220 (.Y(n240), 
	.B1(n126), 
	.B0(n109), 
	.A1N(n109), 
	.A0N(SPCASCAN_N5));
   NOR2BX2M U221 (.Y(n111), 
	.B(n117), 
	.AN(FE_OFN6_n110));
   AOI2BB2XLM U222 (.Y(n238), 
	.B1(n125), 
	.B0(n111), 
	.A1N(n111), 
	.A0N(\RegFile[11][7] ));
   AOI2BB2XLM U223 (.Y(n236), 
	.B1(n119), 
	.B0(n111), 
	.A1N(n111), 
	.A0N(\RegFile[11][6] ));
   AOI2BB2XLM U224 (.Y(n234), 
	.B1(n128), 
	.B0(n111), 
	.A1N(n111), 
	.A0N(\RegFile[11][5] ));
   AOI2BB2XLM U225 (.Y(n232), 
	.B1(n120), 
	.B0(n111), 
	.A1N(n111), 
	.A0N(\RegFile[11][4] ));
   AOI2BB2XLM U226 (.Y(n230), 
	.B1(n121), 
	.B0(n111), 
	.A1N(n111), 
	.A0N(\RegFile[11][3] ));
   AOI2BB2XLM U227 (.Y(n228), 
	.B1(n122), 
	.B0(n111), 
	.A1N(n111), 
	.A0N(\RegFile[11][2] ));
   AOI2BB2XLM U228 (.Y(n226), 
	.B1(n123), 
	.B0(n111), 
	.A1N(n111), 
	.A0N(\RegFile[11][1] ));
   AOI2BB2XLM U229 (.Y(n224), 
	.B1(n126), 
	.B0(n111), 
	.A1N(n111), 
	.A0N(\RegFile[11][0] ));
   AND2X1M U230 (.Y(n112), 
	.B(n115), 
	.A(n113));
   AOI2BB2XLM U231 (.Y(n222), 
	.B1(n125), 
	.B0(n112), 
	.A1N(n112), 
	.A0N(\RegFile[12][7] ));
   AOI2BB2XLM U232 (.Y(n220), 
	.B1(n119), 
	.B0(n112), 
	.A1N(n112), 
	.A0N(\RegFile[12][6] ));
   AOI2BB2XLM U233 (.Y(n218), 
	.B1(n128), 
	.B0(n112), 
	.A1N(n112), 
	.A0N(\RegFile[12][5] ));
   AOI2BB2XLM U234 (.Y(n216), 
	.B1(n120), 
	.B0(n112), 
	.A1N(n112), 
	.A0N(\RegFile[12][4] ));
   AOI2BB2XLM U235 (.Y(n214), 
	.B1(n121), 
	.B0(n112), 
	.A1N(n112), 
	.A0N(\RegFile[12][3] ));
   AOI2BB2XLM U236 (.Y(n212), 
	.B1(n122), 
	.B0(n112), 
	.A1N(n112), 
	.A0N(\RegFile[12][2] ));
   AOI2BB2XLM U237 (.Y(n210), 
	.B1(n123), 
	.B0(n112), 
	.A1N(n112), 
	.A0N(\RegFile[12][1] ));
   AOI2BB2XLM U238 (.Y(n208), 
	.B1(n126), 
	.B0(n112), 
	.A1N(n112), 
	.A0N(\RegFile[12][0] ));
   NOR2BX2M U239 (.Y(n114), 
	.B(n117), 
	.AN(n113));
   AOI2BB2XLM U240 (.Y(n206), 
	.B1(n125), 
	.B0(n114), 
	.A1N(n114), 
	.A0N(\RegFile[13][7] ));
   AOI2BB2XLM U241 (.Y(n204), 
	.B1(n119), 
	.B0(n114), 
	.A1N(n114), 
	.A0N(\RegFile[13][6] ));
   AOI2BB2XLM U242 (.Y(n202), 
	.B1(n128), 
	.B0(n114), 
	.A1N(n114), 
	.A0N(\RegFile[13][5] ));
   AOI2BB2XLM U243 (.Y(n200), 
	.B1(n120), 
	.B0(n114), 
	.A1N(n114), 
	.A0N(\RegFile[13][4] ));
   AOI2BB2XLM U244 (.Y(n198), 
	.B1(n121), 
	.B0(n114), 
	.A1N(n114), 
	.A0N(\RegFile[13][3] ));
   AOI2BB2XLM U245 (.Y(n196), 
	.B1(n122), 
	.B0(n114), 
	.A1N(n114), 
	.A0N(\RegFile[13][2] ));
   AOI2BB2XLM U246 (.Y(n194), 
	.B1(n123), 
	.B0(n114), 
	.A1N(n114), 
	.A0N(\RegFile[13][1] ));
   AOI2BB2XLM U247 (.Y(n192), 
	.B1(n126), 
	.B0(n114), 
	.A1N(n114), 
	.A0N(\RegFile[13][0] ));
   AND2X1M U248 (.Y(n116), 
	.B(n115), 
	.A(FE_OFN5_n118));
   AOI2BB2XLM U249 (.Y(n190), 
	.B1(n125), 
	.B0(n116), 
	.A1N(n116), 
	.A0N(\RegFile[14][7] ));
   AOI2BB2XLM U250 (.Y(n188), 
	.B1(n119), 
	.B0(n116), 
	.A1N(n116), 
	.A0N(\RegFile[14][6] ));
   AOI2BB2XLM U251 (.Y(n186), 
	.B1(n128), 
	.B0(n116), 
	.A1N(n116), 
	.A0N(\RegFile[14][5] ));
   AOI2BB2XLM U252 (.Y(n184), 
	.B1(n120), 
	.B0(n116), 
	.A1N(n116), 
	.A0N(\RegFile[14][4] ));
   AOI2BB2XLM U253 (.Y(n182), 
	.B1(n121), 
	.B0(n116), 
	.A1N(n116), 
	.A0N(\RegFile[14][3] ));
   AOI2BB2XLM U254 (.Y(n180), 
	.B1(n122), 
	.B0(n116), 
	.A1N(n116), 
	.A0N(\RegFile[14][2] ));
   AOI2BB2XLM U255 (.Y(n178), 
	.B1(n123), 
	.B0(n116), 
	.A1N(n116), 
	.A0N(\RegFile[14][1] ));
   AOI2BB2XLM U256 (.Y(n176), 
	.B1(n126), 
	.B0(n116), 
	.A1N(n116), 
	.A0N(\RegFile[14][0] ));
   NOR2BX2M U257 (.Y(n124), 
	.B(n117), 
	.AN(FE_OFN5_n118));
   AOI2BB2XLM U258 (.Y(n174), 
	.B1(n125), 
	.B0(n124), 
	.A1N(n124), 
	.A0N(\RegFile[15][7] ));
   AOI2BB2XLM U259 (.Y(n170), 
	.B1(n119), 
	.B0(n124), 
	.A1N(n124), 
	.A0N(\RegFile[15][6] ));
   AOI2BB2XLM U260 (.Y(n166), 
	.B1(n128), 
	.B0(n124), 
	.A1N(n124), 
	.A0N(\RegFile[15][5] ));
   AOI2BB2XLM U261 (.Y(n162), 
	.B1(n120), 
	.B0(n124), 
	.A1N(n124), 
	.A0N(\RegFile[15][4] ));
   AOI2BB2XLM U262 (.Y(n158), 
	.B1(n121), 
	.B0(n124), 
	.A1N(n124), 
	.A0N(\RegFile[15][3] ));
   AOI2BB2XLM U263 (.Y(n154), 
	.B1(n122), 
	.B0(n124), 
	.A1N(n124), 
	.A0N(\RegFile[15][2] ));
   AOI2BB2XLM U264 (.Y(n150), 
	.B1(n123), 
	.B0(n124), 
	.A1N(n124), 
	.A0N(\RegFile[15][1] ));
   AOI2BB2XLM U265 (.Y(n146), 
	.B1(n126), 
	.B0(n124), 
	.A1N(n124), 
	.A0N(\RegFile[15][0] ));
   AOI2BB2XLM U266 (.Y(n142), 
	.B1(n125), 
	.B0(n127), 
	.A1N(n127), 
	.A0N(REG2[7]));
   AOI2BB2XLM U267 (.Y(n140), 
	.B1(n126), 
	.B0(n127), 
	.A1N(n127), 
	.A0N(REG2[0]));
   AOI2BB2XLM U269 (.Y(n138), 
	.B1(n128), 
	.B0(n129), 
	.A1N(n129), 
	.A0N(REG3[5]));
   INVXLM U270 (.Y(n133), 
	.A(\RegFile[4][7] ));
   BUFX4M U272 (.Y(n135), 
	.A(test_se));
   BUFX4M U273 (.Y(n136), 
	.A(test_se));
   BUFX4M U274 (.Y(n137), 
	.A(test_se));
   BUFX4M U275 (.Y(n139), 
	.A(test_se));
   SDFFSQX1M \RegFile_reg[2][0]  (.SN(rst), 
	.SI(REG2[5]), 
	.SE(n136), 
	.Q(REG2[0]), 
	.D(n140), 
	.CK(clk));
   SDFFSQX1M \RegFile_reg[3][5]  (.SN(FE_OFN1_SYNC_REF_RST_M), 
	.SI(REG3[6]), 
	.SE(n135), 
	.Q(REG3[5]), 
	.D(n138), 
	.CK(REF_CLK_M__L10_N9));
endmodule

module RST_Sync_NUM_STAGES2_test_0 (
	CLK, 
	RST, 
	sync_RST, 
	test_si, 
	test_so, 
	test_se, 
	SPCASCAN_N1);
   input CLK;
   input RST;
   output sync_RST;
   input test_si;
   output test_so;
   input test_se;
   input SPCASCAN_N1;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[1] ;

   assign test_so = \sync_reg[1]  ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX1M \sync_reg_reg[1]  (.SI(SPCASCAN_N1), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[1] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_RST), 
	.D(\sync_reg[1] ), 
	.CK(CLK));
endmodule

module RST_Sync_NUM_STAGES2_test_1 (
	CLK, 
	RST, 
	sync_RST, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   output sync_RST;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \sync_reg[1] ;

   assign test_so = \sync_reg[1]  ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX1M \sync_reg_reg[1]  (.SI(sync_RST), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\sync_reg[1] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(CLK));
   SDFFRQX1M \sync_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_RST), 
	.D(\sync_reg[1] ), 
	.CK(CLK));
endmodule

module CLK_GATE (
	CLK_EN, 
	CLK, 
	GATED_CLK);
   input CLK_EN;
   input CLK;
   output GATED_CLK;

   TLATNCAX8M u_CLK_GATE (.ECK(GATED_CLK), 
	.E(CLK_EN), 
	.CK(CLK));
endmodule

module Sys_Ctrl_DATA_WIDTH8_test_1 (
	CLK, 
	RST, 
	ALU_OUT, 
	OUT_VALID, 
	RF_RdData, 
	Rd_D_Valid, 
	RX_P_DATA, 
	RX_D_VALID, 
	FIFO_FULL, 
	ALU_FUN, 
	ALU_EN, 
	CLK_EN, 
	RF_WrData, 
	RF_ADDR, 
	WrEn, 
	RdEn, 
	FIFO_W_INC, 
	FIFO_WR_DATA, 
	CLK_DIV_EN, 
	test_si2, 
	test_si1, 
	test_se, 
	SPCASCAN_N13, 
	SPCASCAN_N14, 
	FE_PT1_SI_0_, 
	FE_OFN0_SYNC_REF_RST_M, 
	FE_OFN1_SYNC_REF_RST_M, 
	REF_CLK_M__L10_N10, 
	REF_CLK_M__L10_N11, 
	REF_CLK_M__L10_N8, 
	REF_CLK_M__L10_N9);
   input CLK;
   input RST;
   input [15:0] ALU_OUT;
   input OUT_VALID;
   input [7:0] RF_RdData;
   input Rd_D_Valid;
   input [7:0] RX_P_DATA;
   input RX_D_VALID;
   input FIFO_FULL;
   output [3:0] ALU_FUN;
   output ALU_EN;
   output CLK_EN;
   output [7:0] RF_WrData;
   output [3:0] RF_ADDR;
   output WrEn;
   output RdEn;
   output FIFO_W_INC;
   output [7:0] FIFO_WR_DATA;
   output CLK_DIV_EN;
   input test_si2;
   input test_si1;
   input test_se;
   output SPCASCAN_N13;
   input SPCASCAN_N14;
   input FE_PT1_SI_0_;
   input FE_OFN0_SYNC_REF_RST_M;
   input FE_OFN1_SYNC_REF_RST_M;
   input REF_CLK_M__L10_N10;
   input REF_CLK_M__L10_N11;
   input REF_CLK_M__L10_N8;
   input REF_CLK_M__L10_N9;

   // Internal wires
   wire N175;
   wire N176;
   wire N177;
   wire N178;
   wire N179;
   wire N180;
   wire N181;
   wire N182;
   wire N183;
   wire N184;
   wire N190;
   wire N191;
   wire N192;
   wire n96;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire [3:0] Cur_S;

   SDFFRQX1M \Cur_S_reg[0]  (.SI(Cur_S[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Cur_S[0]), 
	.D(n114), 
	.CK(REF_CLK_M__L10_N10));
   SDFFRQX1M \Cur_S_reg[2]  (.SI(Cur_S[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SPCASCAN_N13), 
	.D(n115), 
	.CK(REF_CLK_M__L10_N11));
   SDFFRQX1M \Cur_S_reg[3]  (.SI(SPCASCAN_N14), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Cur_S[3]), 
	.D(n113), 
	.CK(REF_CLK_M__L10_N11));
   SDFFRQX1M \Cur_S_reg[1]  (.SI(CLK_EN), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Cur_S[1]), 
	.D(n116), 
	.CK(REF_CLK_M__L10_N11));
   SDFFRQX1M \ALU_FUN_reg[3]  (.SI(ALU_FUN[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_FUN[3]), 
	.D(n112), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M \ALU_FUN_reg[2]  (.SI(ALU_FUN[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_FUN[2]), 
	.D(n111), 
	.CK(CLK));
   SDFFRQX1M \ALU_FUN_reg[1]  (.SI(ALU_FUN[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_FUN[1]), 
	.D(n110), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M \ALU_FUN_reg[0]  (.SI(test_si2), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_FUN[0]), 
	.D(n109), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M ALU_EN_reg (.SI(test_si1), 
	.SE(test_se), 
	.RN(RST), 
	.Q(ALU_EN), 
	.D(N175), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M CLK_EN_reg (.SI(FIFO_W_INC), 
	.SE(test_se), 
	.RN(RST), 
	.Q(CLK_EN), 
	.D(N176), 
	.CK(REF_CLK_M__L10_N11));
   SDFFRQX1M \RF_WrData_reg[7]  (.SI(RF_WrData[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(RF_WrData[7]), 
	.D(N184), 
	.CK(REF_CLK_M__L10_N10));
   SDFFRQX1M \RF_WrData_reg[6]  (.SI(RF_WrData[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(RF_WrData[6]), 
	.D(N183), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RF_WrData_reg[5]  (.SI(RF_WrData[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(RF_WrData[5]), 
	.D(N182), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RF_WrData_reg[4]  (.SI(RF_WrData[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(RF_WrData[4]), 
	.D(N181), 
	.CK(REF_CLK_M__L10_N10));
   SDFFRQX1M \RF_WrData_reg[3]  (.SI(RF_WrData[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(RF_WrData[3]), 
	.D(N180), 
	.CK(REF_CLK_M__L10_N10));
   SDFFRQX1M \RF_WrData_reg[2]  (.SI(RF_WrData[1]), 
	.SE(test_se), 
	.RN(FE_OFN0_SYNC_REF_RST_M), 
	.Q(RF_WrData[2]), 
	.D(N179), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RF_WrData_reg[1]  (.SI(FE_PT1_SI_0_), 
	.SE(test_se), 
	.RN(RST), 
	.Q(RF_WrData[1]), 
	.D(N178), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RF_WrData_reg[0]  (.SI(RF_WrData[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(RF_WrData[0]), 
	.D(N177), 
	.CK(REF_CLK_M__L10_N8));
   SDFFRQX1M \RF_ADDR_reg[2]  (.SI(RdEn), 
	.SE(test_se), 
	.RN(RST), 
	.Q(RF_ADDR[2]), 
	.D(n107), 
	.CK(REF_CLK_M__L10_N10));
   SDFFRQX1M \RF_ADDR_reg[1]  (.SI(RF_ADDR[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(RF_ADDR[1]), 
	.D(n106), 
	.CK(REF_CLK_M__L10_N10));
   SDFFRQX1M \RF_ADDR_reg[0]  (.SI(WrEn), 
	.SE(test_se), 
	.RN(RST), 
	.Q(RF_ADDR[0]), 
	.D(n105), 
	.CK(REF_CLK_M__L10_N9));
   SDFFRQX1M WrEn_reg (.SI(RF_ADDR[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(WrEn), 
	.D(N190), 
	.CK(REF_CLK_M__L10_N10));
   SDFFRQX1M RdEn_reg (.SI(RF_ADDR[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(RdEn), 
	.D(N191), 
	.CK(REF_CLK_M__L10_N10));
   SDFFRQX1M FIFO_W_INC_reg (.SI(Cur_S[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(FIFO_W_INC), 
	.D(N192), 
	.CK(REF_CLK_M__L10_N11));
   SDFFRQX1M \FIFO_WR_DATA_reg[7]  (.SI(FIFO_WR_DATA[1]), 
	.SE(test_se), 
	.RN(FE_OFN1_SYNC_REF_RST_M), 
	.Q(FIFO_WR_DATA[7]), 
	.D(n104), 
	.CK(CLK));
   SDFFRQX1M \FIFO_WR_DATA_reg[6]  (.SI(FIFO_WR_DATA[5]), 
	.SE(test_se), 
	.RN(FE_OFN1_SYNC_REF_RST_M), 
	.Q(FIFO_WR_DATA[6]), 
	.D(n103), 
	.CK(CLK));
   SDFFRQX1M \FIFO_WR_DATA_reg[5]  (.SI(FIFO_WR_DATA[4]), 
	.SE(test_se), 
	.RN(FE_OFN1_SYNC_REF_RST_M), 
	.Q(FIFO_WR_DATA[5]), 
	.D(n102), 
	.CK(CLK));
   SDFFRQX1M \FIFO_WR_DATA_reg[4]  (.SI(ALU_FUN[2]), 
	.SE(test_se), 
	.RN(FE_OFN1_SYNC_REF_RST_M), 
	.Q(FIFO_WR_DATA[4]), 
	.D(n101), 
	.CK(CLK));
   SDFFRQX1M \FIFO_WR_DATA_reg[3]  (.SI(FIFO_WR_DATA[7]), 
	.SE(test_se), 
	.RN(FE_OFN1_SYNC_REF_RST_M), 
	.Q(FIFO_WR_DATA[3]), 
	.D(n100), 
	.CK(CLK));
   SDFFRQX1M \FIFO_WR_DATA_reg[2]  (.SI(FIFO_WR_DATA[6]), 
	.SE(test_se), 
	.RN(FE_OFN1_SYNC_REF_RST_M), 
	.Q(FIFO_WR_DATA[2]), 
	.D(n99), 
	.CK(CLK));
   SDFFRQX1M \FIFO_WR_DATA_reg[1]  (.SI(FIFO_WR_DATA[2]), 
	.SE(test_se), 
	.RN(FE_OFN1_SYNC_REF_RST_M), 
	.Q(FIFO_WR_DATA[1]), 
	.D(n98), 
	.CK(CLK));
   SDFFRQX1M \FIFO_WR_DATA_reg[0]  (.SI(FIFO_WR_DATA[3]), 
	.SE(test_se), 
	.RN(FE_OFN1_SYNC_REF_RST_M), 
	.Q(FIFO_WR_DATA[0]), 
	.D(n96), 
	.CK(CLK));
   SDFFRHQX1M \RF_ADDR_reg[3]  (.SI(RF_WrData[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(RF_ADDR[3]), 
	.D(n108), 
	.CK(REF_CLK_M__L10_N10));
   NOR2XLM U3 (.Y(n11), 
	.B(n41), 
	.A(n32));
   AOI222XLM U4 (.Y(n58), 
	.C1(ALU_OUT[8]), 
	.C0(n54), 
	.B1(ALU_OUT[0]), 
	.B0(n55), 
	.A1(RF_RdData[0]), 
	.A0(n56));
   OAI211XLM U5 (.Y(n39), 
	.C0(n41), 
	.B0(n30), 
	.A1(n31), 
	.A0(n32));
   INVXLM U6 (.Y(n28), 
	.A(N175));
   NOR3XLM U7 (.Y(N192), 
	.C(n44), 
	.B(n8), 
	.A(FIFO_FULL));
   NOR2XLM U8 (.Y(N177), 
	.B(n42), 
	.A(n18));
   OAI2B11XLM U9 (.Y(n113), 
	.C0(n1), 
	.B0(n25), 
	.A1N(n56), 
	.A0(n2));
   NAND2XLM U10 (.Y(n44), 
	.B(SPCASCAN_N13), 
	.A(Cur_S[1]));
   INVXLM U11 (.Y(n45), 
	.A(Cur_S[3]));
   INVXLM U12 (.Y(n40), 
	.A(Cur_S[0]));
   NOR3X2M U13 (.Y(n56), 
	.C(n40), 
	.B(n45), 
	.A(n44));
   INVXLM U14 (.Y(n2), 
	.A(FIFO_FULL));
   NOR2XLM U15 (.Y(n8), 
	.B(n40), 
	.A(Cur_S[3]));
   INVXLM U16 (.Y(n9), 
	.A(n8));
   NOR2XLM U17 (.Y(n33), 
	.B(n9), 
	.A(SPCASCAN_N13));
   INVXLM U18 (.Y(n29), 
	.A(Cur_S[1]));
   NAND3XLM U19 (.Y(n25), 
	.C(n29), 
	.B(Rd_D_Valid), 
	.A(n33));
   AOI21XLM U20 (.Y(n26), 
	.B0(n44), 
	.A1(n2), 
	.A0(Cur_S[3]));
   OAI211XLM U21 (.Y(n1), 
	.C0(n40), 
	.B0(n26), 
	.A1(n2), 
	.A0(Cur_S[3]));
   INVXLM U22 (.Y(n37), 
	.A(RX_P_DATA[1]));
   INVXLM U23 (.Y(n17), 
	.A(RX_P_DATA[5]));
   NOR4XLM U24 (.Y(n3), 
	.D(n17), 
	.C(n37), 
	.B(RX_P_DATA[2]), 
	.A(RX_P_DATA[6]));
   AND2X1M U25 (.Y(n22), 
	.B(RX_P_DATA[0]), 
	.A(RX_P_DATA[4]));
   NOR2XLM U26 (.Y(n23), 
	.B(RX_P_DATA[4]), 
	.A(RX_P_DATA[0]));
   INVXLM U27 (.Y(n35), 
	.A(RX_P_DATA[2]));
   INVXLM U28 (.Y(n16), 
	.A(RX_P_DATA[6]));
   NOR4XLM U29 (.Y(n21), 
	.D(n16), 
	.C(n35), 
	.B(RX_P_DATA[5]), 
	.A(RX_P_DATA[1]));
   AOI22XLM U30 (.Y(n14), 
	.B1(n21), 
	.B0(n22), 
	.A1(n23), 
	.A0(n3));
   AOI21BXLM U31 (.Y(n7), 
	.B0N(n14), 
	.A1(n22), 
	.A0(n3));
   NOR4X1M U32 (.Y(n46), 
	.D(Cur_S[0]), 
	.C(Cur_S[3]), 
	.B(SPCASCAN_N13), 
	.A(Cur_S[1]));
   NAND4XLM U33 (.Y(n19), 
	.D(RX_P_DATA[7]), 
	.C(RX_P_DATA[3]), 
	.B(RX_D_VALID), 
	.A(n46));
   INVXLM U34 (.Y(n32), 
	.A(RX_D_VALID));
   NAND3XLM U35 (.Y(n41), 
	.C(n45), 
	.B(n29), 
	.A(SPCASCAN_N13));
   AOI21XLM U36 (.Y(n6), 
	.B0(n11), 
	.A1(FIFO_FULL), 
	.A0(n56));
   INVXLM U37 (.Y(n10), 
	.A(SPCASCAN_N13));
   OAI21XLM U38 (.Y(n4), 
	.B0(Cur_S[1]), 
	.A1(n10), 
	.A0(OUT_VALID));
   AOI22XLM U39 (.Y(n5), 
	.B1(n32), 
	.B0(n33), 
	.A1(n4), 
	.A0(n8));
   OAI211XLM U40 (.Y(n114), 
	.C0(n5), 
	.B0(n6), 
	.A1(n19), 
	.A0(n7));
   NOR3XLM U41 (.Y(N175), 
	.C(n32), 
	.B(n9), 
	.A(n44));
   AOI221XLM U42 (.Y(n13), 
	.C0(n26), 
	.B1(n33), 
	.B0(Rd_D_Valid), 
	.A1(n33), 
	.A0(Cur_S[1]));
   NAND3XLM U43 (.Y(n15), 
	.C(Cur_S[1]), 
	.B(n45), 
	.A(n10));
   AOI2BB2XLM U44 (.Y(n12), 
	.B1(n11), 
	.B0(Cur_S[0]), 
	.A1N(RX_D_VALID), 
	.A0N(n15));
   OAI211XLM U45 (.Y(n116), 
	.C0(n12), 
	.B0(n13), 
	.A1(n19), 
	.A0(n14));
   AOI221XLM U46 (.Y(N190), 
	.C0(n32), 
	.B1(n41), 
	.B0(n15), 
	.A1(n41), 
	.A0(Cur_S[0]));
   INVXLM U47 (.Y(n18), 
	.A(N190));
   NOR2XLM U48 (.Y(N183), 
	.B(n16), 
	.A(n18));
   INVXLM U49 (.Y(n42), 
	.A(RX_P_DATA[0]));
   NOR2XLM U50 (.Y(N179), 
	.B(n35), 
	.A(n18));
   NOR2XLM U51 (.Y(N178), 
	.B(n37), 
	.A(n18));
   NOR2XLM U52 (.Y(N182), 
	.B(n17), 
	.A(n18));
   INVXLM U53 (.Y(n34), 
	.A(RX_P_DATA[3]));
   NOR2XLM U54 (.Y(N180), 
	.B(n34), 
	.A(n18));
   AND2X1M U55 (.Y(N184), 
	.B(N190), 
	.A(RX_P_DATA[7]));
   AND2X1M U56 (.Y(N181), 
	.B(N190), 
	.A(RX_P_DATA[4]));
   INVXLM U57 (.Y(n31), 
	.A(n33));
   NOR3XLM U58 (.Y(N191), 
	.C(n31), 
	.B(n32), 
	.A(Cur_S[1]));
   AOI221XLM U59 (.Y(N176), 
	.C0(n44), 
	.B1(Cur_S[0]), 
	.B0(n32), 
	.A1(Cur_S[0]), 
	.A0(Cur_S[3]));
   INVXLM U60 (.Y(n20), 
	.A(n19));
   OAI211XLM U61 (.Y(n24), 
	.C0(n20), 
	.B0(n21), 
	.A1(n22), 
	.A0(n23));
   NAND4BXLM U62 (.Y(n115), 
	.D(n24), 
	.C(n25), 
	.B(n41), 
	.AN(n26));
   NOR2XLM U63 (.Y(n27), 
	.B(N175), 
	.A(n46));
   OAI2BB2XLM U64 (.Y(n112), 
	.B1(n28), 
	.B0(n34), 
	.A1N(ALU_FUN[3]), 
	.A0N(n27));
   OAI2BB2XLM U65 (.Y(n111), 
	.B1(n28), 
	.B0(n35), 
	.A1N(ALU_FUN[2]), 
	.A0N(n27));
   OAI2BB2XLM U66 (.Y(n110), 
	.B1(n28), 
	.B0(n37), 
	.A1N(ALU_FUN[1]), 
	.A0N(n27));
   OAI2BB2XLM U67 (.Y(n109), 
	.B1(n28), 
	.B0(n42), 
	.A1N(ALU_FUN[0]), 
	.A0N(n27));
   NAND3XLM U68 (.Y(n30), 
	.C(n40), 
	.B(n45), 
	.A(n29));
   NAND2XLM U69 (.Y(n43), 
	.B(n39), 
	.A(n33));
   INVXLM U70 (.Y(n36), 
	.A(n39));
   OAI2BB2XLM U71 (.Y(n108), 
	.B1(n43), 
	.B0(n34), 
	.A1N(RF_ADDR[3]), 
	.A0N(n36));
   OAI2BB2XLM U72 (.Y(n107), 
	.B1(n43), 
	.B0(n35), 
	.A1N(RF_ADDR[2]), 
	.A0N(n36));
   OAI2BB2XLM U73 (.Y(n106), 
	.B1(n43), 
	.B0(n37), 
	.A1N(RF_ADDR[1]), 
	.A0N(n36));
   INVXLM U74 (.Y(n38), 
	.A(RF_ADDR[0]));
   OAI222XLM U75 (.Y(n105), 
	.C1(n38), 
	.C0(n39), 
	.B1(n40), 
	.B0(n41), 
	.A1(n42), 
	.A0(n43));
   NOR3X2M U76 (.Y(n55), 
	.C(n44), 
	.B(Cur_S[0]), 
	.A(Cur_S[3]));
   NOR3X2M U77 (.Y(n54), 
	.C(n44), 
	.B(n45), 
	.A(Cur_S[0]));
   AOI222XLM U78 (.Y(n47), 
	.C1(ALU_OUT[15]), 
	.C0(n54), 
	.B1(ALU_OUT[7]), 
	.B0(n55), 
	.A1(RF_RdData[7]), 
	.A0(n56));
   OR2X1M U79 (.Y(n57), 
	.B(n46), 
	.A(N192));
   AOI2BB2XLM U80 (.Y(n104), 
	.B1(n57), 
	.B0(n47), 
	.A1N(FIFO_WR_DATA[7]), 
	.A0N(n57));
   AOI222X1M U81 (.Y(n48), 
	.C1(ALU_OUT[14]), 
	.C0(n54), 
	.B1(ALU_OUT[6]), 
	.B0(n55), 
	.A1(RF_RdData[6]), 
	.A0(n56));
   AOI2BB2XLM U82 (.Y(n103), 
	.B1(n57), 
	.B0(n48), 
	.A1N(FIFO_WR_DATA[6]), 
	.A0N(n57));
   AOI222XLM U83 (.Y(n49), 
	.C1(ALU_OUT[13]), 
	.C0(n54), 
	.B1(ALU_OUT[5]), 
	.B0(n55), 
	.A1(RF_RdData[5]), 
	.A0(n56));
   AOI2BB2XLM U84 (.Y(n102), 
	.B1(n57), 
	.B0(n49), 
	.A1N(FIFO_WR_DATA[5]), 
	.A0N(n57));
   AOI222XLM U85 (.Y(n50), 
	.C1(ALU_OUT[12]), 
	.C0(n54), 
	.B1(ALU_OUT[4]), 
	.B0(n55), 
	.A1(RF_RdData[4]), 
	.A0(n56));
   AOI2BB2XLM U86 (.Y(n101), 
	.B1(n57), 
	.B0(n50), 
	.A1N(FIFO_WR_DATA[4]), 
	.A0N(n57));
   AOI222XLM U87 (.Y(n51), 
	.C1(ALU_OUT[11]), 
	.C0(n54), 
	.B1(ALU_OUT[3]), 
	.B0(n55), 
	.A1(RF_RdData[3]), 
	.A0(n56));
   AOI2BB2XLM U88 (.Y(n100), 
	.B1(n57), 
	.B0(n51), 
	.A1N(FIFO_WR_DATA[3]), 
	.A0N(n57));
   AOI222XLM U89 (.Y(n52), 
	.C1(ALU_OUT[10]), 
	.C0(n54), 
	.B1(ALU_OUT[2]), 
	.B0(n55), 
	.A1(RF_RdData[2]), 
	.A0(n56));
   AOI2BB2XLM U90 (.Y(n99), 
	.B1(n57), 
	.B0(n52), 
	.A1N(FIFO_WR_DATA[2]), 
	.A0N(n57));
   AOI222XLM U91 (.Y(n53), 
	.C1(ALU_OUT[9]), 
	.C0(n54), 
	.B1(ALU_OUT[1]), 
	.B0(n55), 
	.A1(RF_RdData[1]), 
	.A0(n56));
   AOI2BB2XLM U92 (.Y(n98), 
	.B1(n57), 
	.B0(n53), 
	.A1N(FIFO_WR_DATA[1]), 
	.A0N(n57));
   AOI2BB2XLM U93 (.Y(n96), 
	.B1(n57), 
	.B0(n58), 
	.A1N(FIFO_WR_DATA[0]), 
	.A0N(n57));
endmodule

module UART_Serializer_test_1 (
	P_DATA_Registered, 
	CLK, 
	ser_en, 
	ser_done, 
	ser_data, 
	test_si, 
	test_so, 
	test_se, 
	SPCASCAN_N9, 
	SPCBSCAN_N17, 
	SPCBSCAN_N18);
   input [7:0] P_DATA_Registered;
   input CLK;
   input ser_en;
   output ser_done;
   output ser_data;
   input test_si;
   output test_so;
   input test_se;
   output SPCASCAN_N9;
   output SPCBSCAN_N17;
   input SPCBSCAN_N18;

   // Internal wires
   wire N19;
   wire n21;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire [2:0] Counter;

   assign ser_done = N19 ;
   assign test_so = n16 ;

   SDFFX1M \Counter_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.QN(n18), 
	.Q(SPCBSCAN_N17), 
	.D(n21), 
	.CK(CLK));
   SDFFX1M \Counter_reg[2]  (.SI(SPCBSCAN_N18), 
	.SE(test_se), 
	.QN(n16), 
	.Q(Counter[2]), 
	.D(n14), 
	.CK(CLK));
   SDFFX1M \Counter_reg[1]  (.SI(test_so), 
	.SE(test_se), 
	.QN(SPCASCAN_N9), 
	.Q(Counter[1]), 
	.D(n12), 
	.CK(CLK));
   NAND2XLM U3 (.Y(n3), 
	.B(n18), 
	.A(P_DATA_Registered[6]));
   OAI21XLM U4 (.Y(n5), 
	.B0(ser_en), 
	.A1(n3), 
	.A0(n4));
   AOI211XLM U5 (.Y(n7), 
	.C0(n5), 
	.B0(n6), 
	.A1(N19), 
	.A0(P_DATA_Registered[7]));
   OAI31XLM U6 (.Y(ser_data), 
	.B0(n7), 
	.A2(n8), 
	.A1(SPCASCAN_N9), 
	.A0(Counter[2]));
   NOR2XLM U7 (.Y(N19), 
	.B(n4), 
	.A(n18));
   OAI32XLM U8 (.Y(n12), 
	.B1(SPCASCAN_N9), 
	.B0(n9), 
	.A2(n10), 
	.A1(n18), 
	.A0(Counter[1]));
   NAND2XLM U12 (.Y(n4), 
	.B(Counter[2]), 
	.A(Counter[1]));
   INVXLM U13 (.Y(n10), 
	.A(ser_en));
   AOI21XLM U14 (.Y(n21), 
	.B0(n10), 
	.A1(n4), 
	.A0(SPCBSCAN_N17));
   AOI22XLM U15 (.Y(n8), 
	.B1(n18), 
	.B0(P_DATA_Registered[2]), 
	.A1(P_DATA_Registered[3]), 
	.A0(SPCBSCAN_N17));
   AOI22XLM U16 (.Y(n2), 
	.B1(n18), 
	.B0(P_DATA_Registered[4]), 
	.A1(P_DATA_Registered[5]), 
	.A0(SPCBSCAN_N17));
   AOI22XLM U17 (.Y(n1), 
	.B1(n18), 
	.B0(P_DATA_Registered[0]), 
	.A1(P_DATA_Registered[1]), 
	.A0(SPCBSCAN_N17));
   AOI221XLM U18 (.Y(n6), 
	.C0(Counter[1]), 
	.B1(n16), 
	.B0(n1), 
	.A1(Counter[2]), 
	.A0(n2));
   INVXLM U19 (.Y(n9), 
	.A(n21));
   AOI221XLM U20 (.Y(n14), 
	.C0(n10), 
	.B1(n16), 
	.B0(SPCASCAN_N9), 
	.A1(n16), 
	.A0(n18));
endmodule

module UART_Parity (
	PAR_TYP, 
	P_DATA, 
	par_bit);
   input PAR_TYP;
   input [7:0] P_DATA;
   output par_bit;

   // Internal wires
   wire n1;
   wire n2;
   wire n3;

   XOR3XLM U1 (.Y(n1), 
	.C(P_DATA[0]), 
	.B(P_DATA[1]), 
	.A(P_DATA[6]));
   XOR3XLM U2 (.Y(n2), 
	.C(n1), 
	.B(P_DATA[7]), 
	.A(P_DATA[4]));
   XOR3XLM U3 (.Y(n3), 
	.C(n2), 
	.B(P_DATA[3]), 
	.A(P_DATA[5]));
   XOR3XLM U4 (.Y(par_bit), 
	.C(n3), 
	.B(PAR_TYP), 
	.A(P_DATA[2]));
endmodule

module UART_TX_FSM_test_1 (
	DATA_VALID, 
	P_DATA, 
	PAR_EN, 
	PAR_TYP, 
	ser_done, 
	CLK, 
	RST, 
	P_DATA_Registered, 
	busy, 
	ser_en, 
	PAR_TYP_Registered, 
	mux_sel, 
	test_si, 
	test_se, 
	SPCASCAN_N8, 
	SPCASCAN_N9, 
	FE_PT1_n5, 
	SPCASCAN_N10, 
	SPCBSCAN_N16, 
	SPCBSCAN_N17, 
	SPCBSCAN_N18);
   input DATA_VALID;
   input [7:0] P_DATA;
   input PAR_EN;
   input PAR_TYP;
   input ser_done;
   input CLK;
   input RST;
   output [7:0] P_DATA_Registered;
   output busy;
   output ser_en;
   output PAR_TYP_Registered;
   output [1:0] mux_sel;
   input test_si;
   input test_se;
   output SPCASCAN_N8;
   input SPCASCAN_N9;
   input FE_PT1_n5;
   input SPCASCAN_N10;
   output SPCBSCAN_N16;
   input SPCBSCAN_N17;
   output SPCBSCAN_N18;

   // Internal wires
   wire \Nx_S[2] ;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n9;
   wire n10;
   wire [2:0] Cur_S;

   SDFFRQX1M PAR_EN_Registered_reg (.SI(PAR_TYP_Registered), 
	.SE(n10), 
	.RN(RST), 
	.Q(SPCBSCAN_N16), 
	.D(n30), 
	.CK(CLK));
   SDFFRQX1M \Cur_S_reg[2]  (.SI(SPCASCAN_N10), 
	.SE(n10), 
	.RN(RST), 
	.Q(Cur_S[2]), 
	.D(\Nx_S[2] ), 
	.CK(CLK));
   SDFFRQX1M \Cur_S_reg[1]  (.SI(Cur_S[2]), 
	.SE(n10), 
	.RN(RST), 
	.Q(SPCBSCAN_N18), 
	.D(n31), 
	.CK(CLK));
   SDFFRQX1M \Cur_S_reg[0]  (.SI(test_si), 
	.SE(n10), 
	.RN(RST), 
	.Q(SPCASCAN_N8), 
	.D(n32), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_Registered_reg[0]  (.SI(P_DATA_Registered[2]), 
	.SE(n10), 
	.RN(RST), 
	.Q(P_DATA_Registered[0]), 
	.D(n29), 
	.CK(CLK));
   SDFFRQX1M PAR_TYP_Registered_reg (.SI(SPCASCAN_N8), 
	.SE(n10), 
	.RN(RST), 
	.Q(PAR_TYP_Registered), 
	.D(n28), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_Registered_reg[7]  (.SI(P_DATA_Registered[5]), 
	.SE(n10), 
	.RN(RST), 
	.Q(P_DATA_Registered[7]), 
	.D(n27), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_Registered_reg[6]  (.SI(SPCBSCAN_N17), 
	.SE(n10), 
	.RN(RST), 
	.Q(P_DATA_Registered[6]), 
	.D(n26), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_Registered_reg[5]  (.SI(P_DATA_Registered[1]), 
	.SE(n10), 
	.RN(RST), 
	.Q(P_DATA_Registered[5]), 
	.D(n25), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_Registered_reg[4]  (.SI(P_DATA_Registered[3]), 
	.SE(n10), 
	.RN(RST), 
	.Q(P_DATA_Registered[4]), 
	.D(n24), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_Registered_reg[3]  (.SI(SPCASCAN_N9), 
	.SE(n10), 
	.RN(RST), 
	.Q(P_DATA_Registered[3]), 
	.D(n23), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_Registered_reg[2]  (.SI(FE_PT1_n5), 
	.SE(n10), 
	.RN(RST), 
	.Q(P_DATA_Registered[2]), 
	.D(n22), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_Registered_reg[1]  (.SI(P_DATA_Registered[6]), 
	.SE(n10), 
	.RN(RST), 
	.Q(P_DATA_Registered[1]), 
	.D(n21), 
	.CK(CLK));
   NOR2XLM U3 (.Y(ser_en), 
	.B(mux_sel[0]), 
	.A(n2));
   NAND2BXLM U4 (.Y(mux_sel[0]), 
	.B(SPCASCAN_N8), 
	.AN(Cur_S[2]));
   INVXLM U5 (.Y(n2), 
	.A(SPCBSCAN_N18));
   NOR2XLM U6 (.Y(mux_sel[1]), 
	.B(n2), 
	.A(Cur_S[2]));
   INVXLM U7 (.Y(n3), 
	.A(mux_sel[1]));
   NAND2XLM U8 (.Y(n31), 
	.B(n3), 
	.A(mux_sel[0]));
   OAI21BXLM U9 (.Y(n1), 
	.B0N(Cur_S[2]), 
	.A1(DATA_VALID), 
	.A0(SPCASCAN_N8));
   OAI22XLM U10 (.Y(n32), 
	.B1(mux_sel[0]), 
	.B0(ser_done), 
	.A1(n1), 
	.A0(SPCBSCAN_N18));
   OAI21XLM U11 (.Y(busy), 
	.B0(mux_sel[0]), 
	.A1(n2), 
	.A0(SPCASCAN_N8));
   NOR2BX2M U12 (.Y(n6), 
	.B(busy), 
	.AN(DATA_VALID));
   INVXLM U13 (.Y(n5), 
	.A(n6));
   AO22XLM U14 (.Y(n25), 
	.B1(P_DATA_Registered[5]), 
	.B0(n5), 
	.A1(P_DATA[5]), 
	.A0(n6));
   AO22XLM U15 (.Y(n21), 
	.B1(P_DATA_Registered[1]), 
	.B0(n5), 
	.A1(P_DATA[1]), 
	.A0(n6));
   AO22XLM U16 (.Y(n22), 
	.B1(P_DATA_Registered[2]), 
	.B0(n5), 
	.A1(P_DATA[2]), 
	.A0(n6));
   AO22XLM U17 (.Y(n29), 
	.B1(P_DATA_Registered[0]), 
	.B0(n5), 
	.A1(P_DATA[0]), 
	.A0(n6));
   AO22XLM U18 (.Y(n26), 
	.B1(P_DATA_Registered[6]), 
	.B0(n5), 
	.A1(P_DATA[6]), 
	.A0(n6));
   AO22XLM U19 (.Y(n27), 
	.B1(P_DATA_Registered[7]), 
	.B0(n5), 
	.A1(P_DATA[7]), 
	.A0(n6));
   AO22XLM U20 (.Y(n23), 
	.B1(P_DATA_Registered[3]), 
	.B0(n5), 
	.A1(P_DATA[3]), 
	.A0(n6));
   AO22XLM U21 (.Y(n24), 
	.B1(P_DATA_Registered[4]), 
	.B0(n5), 
	.A1(P_DATA[4]), 
	.A0(n6));
   INVXLM U22 (.Y(n4), 
	.A(ser_done));
   AOI221XLM U23 (.Y(\Nx_S[2] ), 
	.C0(n3), 
	.B1(SPCASCAN_N8), 
	.B0(n4), 
	.A1(SPCASCAN_N8), 
	.A0(SPCBSCAN_N16));
   AO22XLM U24 (.Y(n30), 
	.B1(SPCBSCAN_N16), 
	.B0(n5), 
	.A1(PAR_EN), 
	.A0(n6));
   AO22XLM U25 (.Y(n28), 
	.B1(PAR_TYP_Registered), 
	.B0(n5), 
	.A1(PAR_TYP), 
	.A0(n6));
   INVXLM U27 (.Y(n9), 
	.A(test_se));
   CLKINVX2M U28 (.Y(n10), 
	.A(n9));
endmodule

module MUX_4x1 (
	mux_sel, 
	IN0, 
	IN1, 
	IN2, 
	IN3, 
	mux_out);
   input [1:0] mux_sel;
   input IN0;
   input IN1;
   input IN2;
   input IN3;
   output mux_out;

   // Internal wires
   wire n7;
   wire n3;
   wire n5;
   wire n6;

   INVXLM U1 (.Y(n3), 
	.A(n7));
   CLKINVX12M U2 (.Y(mux_out), 
	.A(n3));
   AOI31XLM U3 (.Y(n7), 
	.B0(n5), 
	.A2(mux_sel[1]), 
	.A1(mux_sel[0]), 
	.A0(n6));
   AOI21XLM U4 (.Y(n5), 
	.B0(mux_sel[0]), 
	.A1(IN2), 
	.A0(mux_sel[1]));
   INVXLM U5 (.Y(n6), 
	.A(IN3));
endmodule

module UART_TX_TOP_test_1 (
	PAR_EN, 
	PAR_TYP, 
	DATA_VALID, 
	P_DATA, 
	CLK, 
	RST, 
	TX_OUT, 
	busy, 
	test_si, 
	test_so, 
	test_se, 
	SPCASCAN_N8, 
	SPCASCAN_N10, 
	SPCBSCAN_N16);
   input PAR_EN;
   input PAR_TYP;
   input DATA_VALID;
   input [7:0] P_DATA;
   input CLK;
   input RST;
   output TX_OUT;
   output busy;
   input test_si;
   output test_so;
   input test_se;
   output SPCASCAN_N8;
   input SPCASCAN_N10;
   output SPCBSCAN_N16;

   // Internal wires
   wire SPCBSCAN_N18;
   wire SPCBSCAN_N17;
   wire SPCASCAN_N9;
   wire ser_en;
   wire ser_done;
   wire ser_data;
   wire PAR_TYP_Registered;
   wire par_bit;
   wire n2;
   wire [7:0] P_DATA_Registered;
   wire [1:0] mux_sel;

   assign test_so = P_DATA_Registered[7] ;

   UART_Serializer_test_1 U0_serializer (.P_DATA_Registered({ P_DATA_Registered[7],
		P_DATA_Registered[6],
		P_DATA_Registered[5],
		P_DATA_Registered[4],
		P_DATA_Registered[3],
		P_DATA_Registered[2],
		P_DATA_Registered[1],
		P_DATA_Registered[0] }), 
	.CLK(CLK), 
	.ser_en(ser_en), 
	.ser_done(ser_done), 
	.ser_data(ser_data), 
	.test_si(SPCASCAN_N9), 
	.test_so(n2), 
	.test_se(test_se), 
	.SPCASCAN_N9(SPCASCAN_N9), 
	.SPCBSCAN_N17(SPCBSCAN_N17), 
	.SPCBSCAN_N18(SPCBSCAN_N18));
   UART_Parity U1_parity (.PAR_TYP(PAR_TYP_Registered), 
	.P_DATA({ P_DATA_Registered[7],
		P_DATA_Registered[6],
		P_DATA_Registered[5],
		P_DATA_Registered[4],
		P_DATA_Registered[3],
		P_DATA_Registered[2],
		P_DATA_Registered[1],
		P_DATA_Registered[0] }), 
	.par_bit(par_bit));
   UART_TX_FSM_test_1 U2_FSM (.DATA_VALID(DATA_VALID), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.PAR_EN(PAR_EN), 
	.PAR_TYP(PAR_TYP), 
	.ser_done(ser_done), 
	.CLK(CLK), 
	.RST(RST), 
	.P_DATA_Registered({ P_DATA_Registered[7],
		P_DATA_Registered[6],
		P_DATA_Registered[5],
		P_DATA_Registered[4],
		P_DATA_Registered[3],
		P_DATA_Registered[2],
		P_DATA_Registered[1],
		P_DATA_Registered[0] }), 
	.busy(busy), 
	.ser_en(ser_en), 
	.PAR_TYP_Registered(PAR_TYP_Registered), 
	.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.test_si(P_DATA_Registered[4]), 
	.test_se(test_se), 
	.SPCASCAN_N8(SPCASCAN_N8), 
	.SPCASCAN_N9(P_DATA_Registered[0]), 
	.FE_PT1_n5(test_so), 
	.SPCASCAN_N10(SPCASCAN_N10), 
	.SPCBSCAN_N16(SPCBSCAN_N16), 
	.SPCBSCAN_N17(SPCBSCAN_N17), 
	.SPCBSCAN_N18(SPCBSCAN_N18));
   MUX_4x1 U3_MUX_4x1 (.mux_sel({ mux_sel[1],
		mux_sel[0] }), 
	.IN0(1'b0), 
	.IN1(1'b1), 
	.IN2(ser_data), 
	.IN3(par_bit), 
	.mux_out(TX_OUT));
endmodule

module Sampler_test_1 (
	Prescale, 
	Edge_Count, 
	RX_IN, 
	Data_Sample_En, 
	CLK, 
	RST, 
	sampled_bit, 
	Sampled_flag, 
	test_si, 
	test_so, 
	test_se, 
	SPCASCAN_N11, 
	SPCASCAN_N12);
   input [5:0] Prescale;
   input [4:0] Edge_Count;
   input RX_IN;
   input Data_Sample_En;
   input CLK;
   input RST;
   output sampled_bit;
   output Sampled_flag;
   input test_si;
   output test_so;
   input test_se;
   output SPCASCAN_N11;
   input SPCASCAN_N12;

   // Internal wires
   wire second_sample;
   wire third_sample;
   wire n19;
   wire n20;
   wire n21;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;

   assign test_so = third_sample ;

   SDFFSQX2M third_sample_reg (.SN(RST), 
	.SI(SPCASCAN_N12), 
	.SE(test_se), 
	.Q(third_sample), 
	.D(n21), 
	.CK(CLK));
   SDFFSQX2M first_sample_reg (.SN(RST), 
	.SI(second_sample), 
	.SE(test_se), 
	.Q(SPCASCAN_N11), 
	.D(n20), 
	.CK(CLK));
   INVXLM U3 (.Y(n8), 
	.A(n34));
   NAND3XLM U4 (.Y(n7), 
	.C(n27), 
	.B(n4), 
	.A(n14));
   OAI21XLM U5 (.Y(n21), 
	.B0(n35), 
	.A1(n36), 
	.A0(n37));
   NAND4XLM U6 (.Y(n9), 
	.D(Prescale[4]), 
	.C(Prescale[3]), 
	.B(Prescale[2]), 
	.A(Prescale[1]));
   INVXLM U7 (.Y(n3), 
	.A(Prescale[1]));
   MXI2XLM U8 (.Y(n14), 
	.S0(Edge_Count[0]), 
	.B(Prescale[1]), 
	.A(n3));
   NAND2XLM U9 (.Y(n2), 
	.B(Prescale[2]), 
	.A(Prescale[1]));
   XOR2XLM U10 (.Y(n30), 
	.B(Prescale[3]), 
	.A(Edge_Count[2]));
   XOR2XLM U11 (.Y(n26), 
	.B(Prescale[5]), 
	.A(Edge_Count[4]));
   OAI22XLM U12 (.Y(n1), 
	.B1(n2), 
	.B0(n30), 
	.A1(n9), 
	.A0(n26));
   AOI221XLM U13 (.Y(n4), 
	.C0(n1), 
	.B1(n26), 
	.B0(n9), 
	.A1(n30), 
	.A0(n2));
   XOR2XLM U14 (.Y(n10), 
	.B(Prescale[2]), 
	.A(Edge_Count[1]));
   MXI2XLM U15 (.Y(n27), 
	.S0(n10), 
	.B(n3), 
	.A(Prescale[1]));
   NAND3XLM U16 (.Y(n5), 
	.C(Prescale[3]), 
	.B(Prescale[2]), 
	.A(Prescale[1]));
   NOR2BXLM U17 (.Y(n17), 
	.B(Edge_Count[3]), 
	.AN(Prescale[4]));
   AOI2B1XLM U18 (.Y(n15), 
	.B0(n17), 
	.A1N(Prescale[4]), 
	.A0(Edge_Count[3]));
   XOR2XLM U19 (.Y(n6), 
	.B(n15), 
	.A(n5));
   NOR2XLM U20 (.Y(n34), 
	.B(n6), 
	.A(n7));
   AOI2B1XLM U21 (.Y(Sampled_flag), 
	.B0(n8), 
	.A1N(n9), 
	.A0(Prescale[5]));
   NOR3XLM U22 (.Y(n11), 
	.C(n26), 
	.B(n30), 
	.A(n10));
   NAND4BXLM U23 (.Y(n13), 
	.D(n11), 
	.C(n15), 
	.B(Data_Sample_En), 
	.AN(n14));
   INVXLM U24 (.Y(n36), 
	.A(RX_IN));
   NAND2XLM U25 (.Y(n12), 
	.B(second_sample), 
	.A(n13));
   OAI21XLM U26 (.Y(n19), 
	.B0(n12), 
	.A1(n36), 
	.A0(n13));
   OR2X1M U27 (.Y(n31), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   NAND2BXLM U28 (.Y(n25), 
	.B(Edge_Count[3]), 
	.AN(Prescale[4]));
   NAND2XLM U29 (.Y(n24), 
	.B(n14), 
	.A(Data_Sample_En));
   NOR3XLM U30 (.Y(n16), 
	.C(Prescale[3]), 
	.B(Prescale[2]), 
	.A(Prescale[1]));
   INVXLM U31 (.Y(n22), 
	.A(n16));
   OAI32XLM U32 (.Y(n23), 
	.B1(n15), 
	.B0(n16), 
	.A2(n17), 
	.A1(n26), 
	.A0(n22));
   AOI211XLM U33 (.Y(n29), 
	.C0(n23), 
	.B0(n24), 
	.A1(n25), 
	.A0(n26));
   AOI21XLM U34 (.Y(n28), 
	.B0(n27), 
	.A1(n30), 
	.A0(n31));
   OAI211XLM U35 (.Y(n33), 
	.C0(n28), 
	.B0(n29), 
	.A1(n30), 
	.A0(n31));
   NAND2XLM U36 (.Y(n32), 
	.B(SPCASCAN_N11), 
	.A(n33));
   OAI21XLM U37 (.Y(n20), 
	.B0(n32), 
	.A1(n36), 
	.A0(n33));
   NAND2XLM U38 (.Y(n37), 
	.B(n34), 
	.A(Data_Sample_En));
   NAND2XLM U39 (.Y(n35), 
	.B(third_sample), 
	.A(n37));
   OAI21XLM U40 (.Y(n38), 
	.B0(SPCASCAN_N11), 
	.A1(second_sample), 
	.A0(third_sample));
   OAI2BB1XLM U41 (.Y(sampled_bit), 
	.B0(n38), 
	.A1N(second_sample), 
	.A0N(third_sample));
   SDFFSQX1M second_sample_reg (.SN(RST), 
	.SI(test_so), 
	.SE(test_se), 
	.Q(second_sample), 
	.D(n19), 
	.CK(CLK));
endmodule

module Edge_Bit_Counter_test_1 (
	Prescale, 
	Count_En, 
	CLK, 
	RST, 
	Edge_Count, 
	Bit_Count, 
	test_si, 
	test_se, 
	SPCASCAN_N7, 
	SPCASCAN_N11, 
	RX_D_VALID, 
	FE_PT1_RX_P_DATA_6_, 
	FE_PT1_RX_D_VALID, 
	RX_CLK_M__L4_N1);
   input [5:0] Prescale;
   input Count_En;
   input CLK;
   input RST;
   output [4:0] Edge_Count;
   output [3:0] Bit_Count;
   input test_si;
   input test_se;
   input SPCASCAN_N7;
   input SPCASCAN_N11;
   input RX_D_VALID;
   input FE_PT1_RX_P_DATA_6_;
   input FE_PT1_RX_D_VALID;
   input RX_CLK_M__L4_N1;

   // Internal wires
   wire N44;
   wire N45;
   wire N46;
   wire N47;
   wire N48;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;

   SDFFRQX1M \Bit_Count_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Bit_Count[0]), 
	.D(n30), 
	.CK(CLK));
   SDFFRQX1M \Bit_Count_reg[3]  (.SI(RX_D_VALID), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Bit_Count[3]), 
	.D(n27), 
	.CK(RX_CLK_M__L4_N1));
   SDFFRQX1M \Bit_Count_reg[1]  (.SI(FE_PT1_RX_P_DATA_6_), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Bit_Count[1]), 
	.D(n29), 
	.CK(RX_CLK_M__L4_N1));
   SDFFRQX1M \Bit_Count_reg[2]  (.SI(FE_PT1_RX_D_VALID), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Bit_Count[2]), 
	.D(n28), 
	.CK(RX_CLK_M__L4_N1));
   SDFFRQX1M \Edge_Count_reg[4]  (.SI(Edge_Count[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Edge_Count[4]), 
	.D(N48), 
	.CK(CLK));
   SDFFRQX1M \Edge_Count_reg[3]  (.SI(Edge_Count[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Edge_Count[3]), 
	.D(N47), 
	.CK(CLK));
   SDFFRQX1M \Edge_Count_reg[2]  (.SI(Edge_Count[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Edge_Count[2]), 
	.D(N46), 
	.CK(CLK));
   SDFFRQX1M \Edge_Count_reg[1]  (.SI(SPCASCAN_N7), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Edge_Count[1]), 
	.D(N45), 
	.CK(CLK));
   SDFFRQX1M \Edge_Count_reg[0]  (.SI(SPCASCAN_N11), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Edge_Count[0]), 
	.D(N44), 
	.CK(CLK));
   INVXLM U3 (.Y(n4), 
	.A(n5));
   AOI211XLM U4 (.Y(n13), 
	.C0(n10), 
	.B0(n11), 
	.A1(n12), 
	.A0(Edge_Count[2]));
   INVXLM U5 (.Y(n41), 
	.A(Edge_Count[1]));
   NAND2XLM U6 (.Y(n45), 
	.B(n20), 
	.A(Count_En));
   INVXLM U7 (.Y(n25), 
	.A(Bit_Count[0]));
   INVXLM U8 (.Y(n39), 
	.A(Bit_Count[2]));
   INVXLM U9 (.Y(n37), 
	.A(Bit_Count[3]));
   INVXLM U10 (.Y(n31), 
	.A(Bit_Count[1]));
   OAI221XLM U11 (.Y(n23), 
	.C0(Count_En), 
	.B1(n37), 
	.B0(n31), 
	.A1(n37), 
	.A0(n39));
   INVXLM U12 (.Y(n33), 
	.A(n23));
   NOR3XLM U13 (.Y(n5), 
	.C(Prescale[0]), 
	.B(Prescale[1]), 
	.A(Prescale[2]));
   NOR2XLM U14 (.Y(n3), 
	.B(n4), 
	.A(Prescale[3]));
   INVXLM U15 (.Y(n2), 
	.A(n3));
   NOR2XLM U16 (.Y(n1), 
	.B(n2), 
	.A(Prescale[4]));
   INVXLM U17 (.Y(n19), 
	.A(n1));
   AOI21XLM U18 (.Y(n16), 
	.B0(n1), 
	.A1(n2), 
	.A0(Prescale[4]));
   AOI21XLM U19 (.Y(n14), 
	.B0(n3), 
	.A1(n4), 
	.A0(Prescale[3]));
   INVXLM U20 (.Y(n44), 
	.A(Edge_Count[3]));
   NOR2XLM U21 (.Y(n6), 
	.B(Prescale[0]), 
	.A(Prescale[1]));
   AOI2B1XLM U22 (.Y(n12), 
	.B0(n5), 
	.A1N(n6), 
	.A0(Prescale[2]));
   NOR2BXLM U23 (.Y(n11), 
	.B(n44), 
	.AN(n14));
   INVXLM U24 (.Y(n35), 
	.A(Edge_Count[2]));
   AOI21XLM U25 (.Y(n8), 
	.B0(n6), 
	.A1(Prescale[1]), 
	.A0(Prescale[0]));
   AOI211XLM U26 (.Y(n7), 
	.C0(Edge_Count[0]), 
	.B0(Prescale[0]), 
	.A1(Edge_Count[1]), 
	.A0(n8));
   OAI21BXLM U27 (.Y(n9), 
	.B0N(n7), 
	.A1(n8), 
	.A0(Edge_Count[1]));
   AOI2B1XLM U28 (.Y(n10), 
	.B0(n9), 
	.A1N(n12), 
	.A0(n35));
   AOI2B1XLM U29 (.Y(n15), 
	.B0(n13), 
	.A1N(n14), 
	.A0(n44));
   AOI222XLM U30 (.Y(n17), 
	.C1(n15), 
	.C0(n16), 
	.B1(n15), 
	.B0(Edge_Count[4]), 
	.A1(n16), 
	.A0(Edge_Count[4]));
   AOI21XLM U31 (.Y(n18), 
	.B0(n17), 
	.A1(n19), 
	.A0(Prescale[5]));
   OAI21XLM U32 (.Y(n20), 
	.B0(n18), 
	.A1(n19), 
	.A0(Prescale[5]));
   NAND2XLM U33 (.Y(n22), 
	.B(n45), 
	.A(n33));
   INVXLM U34 (.Y(n24), 
	.A(n45));
   AOI21XLM U35 (.Y(n21), 
	.B0(n24), 
	.A1(n25), 
	.A0(n33));
   OAI32XLM U36 (.Y(n29), 
	.B1(n31), 
	.B0(n21), 
	.A2(n22), 
	.A1(n25), 
	.A0(Bit_Count[1]));
   OAI32XLM U37 (.Y(n30), 
	.B1(n45), 
	.B0(n25), 
	.A2(n23), 
	.A1(Bit_Count[0]), 
	.A0(n24));
   AOI221XLM U38 (.Y(n36), 
	.C0(n24), 
	.B1(n33), 
	.B0(n25), 
	.A1(n33), 
	.A0(n31));
   NOR3XLM U39 (.Y(n32), 
	.C(n24), 
	.B(n25), 
	.A(n31));
   NAND2XLM U40 (.Y(n38), 
	.B(n32), 
	.A(n33));
   AOI22XLM U41 (.Y(n28), 
	.B1(n39), 
	.B0(n38), 
	.A1(n36), 
	.A0(Bit_Count[2]));
   NAND2XLM U42 (.Y(n34), 
	.B(Edge_Count[0]), 
	.A(Edge_Count[1]));
   NAND3XLM U43 (.Y(n43), 
	.C(Edge_Count[0]), 
	.B(Edge_Count[1]), 
	.A(Edge_Count[2]));
   INVXLM U44 (.Y(n42), 
	.A(n43));
   AOI211XLM U45 (.Y(N46), 
	.C0(n45), 
	.B0(n42), 
	.A1(n34), 
	.A0(n35));
   OAI22XLM U46 (.Y(n27), 
	.B1(n36), 
	.B0(n37), 
	.A1(n38), 
	.A0(n39));
   NOR2XLM U47 (.Y(N44), 
	.B(n45), 
	.A(Edge_Count[0]));
   INVXLM U48 (.Y(n40), 
	.A(Edge_Count[0]));
   AOI221XLM U49 (.Y(N45), 
	.C0(n45), 
	.B1(n40), 
	.B0(n41), 
	.A1(Edge_Count[0]), 
	.A0(Edge_Count[1]));
   AOI221XLM U50 (.Y(N47), 
	.C0(n45), 
	.B1(n43), 
	.B0(n44), 
	.A1(n42), 
	.A0(Edge_Count[3]));
   NOR2XLM U51 (.Y(n48), 
	.B(n43), 
	.A(n44));
   INVXLM U52 (.Y(n47), 
	.A(Edge_Count[4]));
   INVXLM U53 (.Y(n46), 
	.A(n48));
   AOI221XLM U54 (.Y(N48), 
	.C0(n45), 
	.B1(n46), 
	.B0(n47), 
	.A1(n48), 
	.A0(Edge_Count[4]));
endmodule

module Deserializer_test_1 (
	deser_En, 
	sampled_bit, 
	Sampled_flag, 
	Bit_Count, 
	CLK, 
	RST, 
	P_DATA, 
	test_si, 
	test_se, 
	FE_PT1_n4);
   input deser_En;
   input sampled_bit;
   input Sampled_flag;
   input [3:0] Bit_Count;
   input CLK;
   input RST;
   output [7:0] P_DATA;
   input test_si;
   input test_se;
   input FE_PT1_n4;

   // Internal wires
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;

   SDFFRQX1M \P_DATA_reg[7]  (.SI(FE_PT1_n4), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[7]), 
	.D(n40), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_reg[6]  (.SI(P_DATA[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[6]), 
	.D(n39), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_reg[5]  (.SI(P_DATA[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[5]), 
	.D(n38), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_reg[4]  (.SI(P_DATA[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[4]), 
	.D(n37), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_reg[3]  (.SI(P_DATA[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[3]), 
	.D(n36), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_reg[2]  (.SI(P_DATA[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[2]), 
	.D(n35), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_reg[1]  (.SI(P_DATA[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[1]), 
	.D(n34), 
	.CK(CLK));
   SDFFRQX1M \P_DATA_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(P_DATA[0]), 
	.D(n33), 
	.CK(CLK));
   INVXLM U3 (.Y(n20), 
	.A(n13));
   OAI21XLM U4 (.Y(n4), 
	.B0(P_DATA[0]), 
	.A1(n15), 
	.A0(n9));
   OAI21XLM U5 (.Y(n40), 
	.B0(n18), 
	.A1(n19), 
	.A0(n23));
   NAND2XLM U6 (.Y(n12), 
	.B(deser_En), 
	.A(Sampled_flag));
   NAND2BXLM U7 (.Y(n9), 
	.B(Bit_Count[0]), 
	.AN(n12));
   NAND2BXLM U8 (.Y(n11), 
	.B(sampled_bit), 
	.AN(n9));
   NAND2XLM U9 (.Y(n1), 
	.B(Bit_Count[0]), 
	.A(Bit_Count[2]));
   OAI21XLM U10 (.Y(n6), 
	.B0(n1), 
	.A1(Bit_Count[2]), 
	.A0(Bit_Count[0]));
   NOR2XLM U11 (.Y(n2), 
	.B(Bit_Count[1]), 
	.A(Bit_Count[0]));
   AOI21XLM U12 (.Y(n8), 
	.B0(n2), 
	.A1(Bit_Count[0]), 
	.A0(Bit_Count[1]));
   INVXLM U13 (.Y(n5), 
	.A(n8));
   NAND2BXLM U14 (.Y(n17), 
	.B(n5), 
	.AN(n6));
   OAI21XLM U15 (.Y(n3), 
	.B0(P_DATA[2]), 
	.A1(n17), 
	.A0(n9));
   OAI21XLM U16 (.Y(n35), 
	.B0(n3), 
	.A1(n17), 
	.A0(n11));
   NAND2BXLM U17 (.Y(n15), 
	.B(n8), 
	.AN(Bit_Count[2]));
   OAI21XLM U18 (.Y(n33), 
	.B0(n4), 
	.A1(n15), 
	.A0(n11));
   NAND2XLM U19 (.Y(n19), 
	.B(n5), 
	.A(n6));
   OAI21XLM U20 (.Y(n7), 
	.B0(P_DATA[6]), 
	.A1(n19), 
	.A0(n9));
   OAI21XLM U21 (.Y(n39), 
	.B0(n7), 
	.A1(n19), 
	.A0(n11));
   NAND2XLM U22 (.Y(n22), 
	.B(Bit_Count[2]), 
	.A(n8));
   OAI21XLM U23 (.Y(n10), 
	.B0(P_DATA[4]), 
	.A1(n22), 
	.A0(n9));
   OAI21XLM U24 (.Y(n37), 
	.B0(n10), 
	.A1(n22), 
	.A0(n11));
   NOR2XLM U25 (.Y(n13), 
	.B(n12), 
	.A(Bit_Count[0]));
   NAND2XLM U26 (.Y(n23), 
	.B(sampled_bit), 
	.A(n13));
   OAI21XLM U27 (.Y(n14), 
	.B0(P_DATA[1]), 
	.A1(n15), 
	.A0(n20));
   OAI21XLM U28 (.Y(n34), 
	.B0(n14), 
	.A1(n15), 
	.A0(n23));
   OAI21XLM U29 (.Y(n16), 
	.B0(P_DATA[3]), 
	.A1(n17), 
	.A0(n20));
   OAI21XLM U30 (.Y(n36), 
	.B0(n16), 
	.A1(n17), 
	.A0(n23));
   OAI21XLM U31 (.Y(n18), 
	.B0(P_DATA[7]), 
	.A1(n19), 
	.A0(n20));
   OAI21XLM U32 (.Y(n21), 
	.B0(P_DATA[5]), 
	.A1(n22), 
	.A0(n20));
   OAI21XLM U33 (.Y(n38), 
	.B0(n21), 
	.A1(n22), 
	.A0(n23));
endmodule

module Start_Checker_test_1 (
	CLK, 
	RST, 
	sampled_bit, 
	Sampled_flag, 
	Str_Chk_En, 
	start_glitch, 
	test_si, 
	test_se);
   input CLK;
   input RST;
   input sampled_bit;
   input Sampled_flag;
   input Str_Chk_En;
   output start_glitch;
   input test_si;
   input test_se;

   // Internal wires
   wire n4;
   wire n1;

   SDFFRQX1M start_glitch_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(start_glitch), 
	.D(n4), 
	.CK(CLK));
   NAND2XLM U2 (.Y(n1), 
	.B(Str_Chk_En), 
	.A(Sampled_flag));
   MX2XLM U3 (.Y(n4), 
	.S0(n1), 
	.B(start_glitch), 
	.A(sampled_bit));
endmodule

module Stop_Checker_test_1 (
	CLK, 
	RST, 
	sampled_bit, 
	Sampled_flag, 
	Stp_Chk_En, 
	stp_err, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input sampled_bit;
   input Sampled_flag;
   input Stp_Chk_En;
   output stp_err;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire n7;
   wire n5;
   wire n1;
   wire n3;
   wire n6;

   assign test_so = n7 ;

   SDFFRHQX1M stp_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(n7), 
	.D(n5), 
	.CK(CLK));
   CLKINVX12M U3 (.Y(stp_err), 
	.A(n1));
   NAND2XLM U4 (.Y(n6), 
	.B(Stp_Chk_En), 
	.A(Sampled_flag));
   NAND2XLM U5 (.Y(n3), 
	.B(stp_err), 
	.A(n6));
   OAI21XLM U6 (.Y(n5), 
	.B0(n3), 
	.A1(sampled_bit), 
	.A0(n6));
   INVXLM U2 (.Y(n1), 
	.A(n7));
endmodule

module Parity_Checker_test_1 (
	PAR_TYP, 
	PAR_Chk_En, 
	sampled_bit, 
	Bit_Count, 
	CLK, 
	RST, 
	Sampled_flag, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	par_err_BAR);
   input PAR_TYP;
   input PAR_Chk_En;
   input sampled_bit;
   input [3:0] Bit_Count;
   input CLK;
   input RST;
   input Sampled_flag;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   output par_err_BAR;

   // Internal wires
   wire par_err;
   wire par_bit;
   wire n15;
   wire n16;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n17;
   wire n18;

   assign test_so1 = par_bit ;
   assign par_err_BAR = n17 ;

   SDFFRQX1M par_bit_reg (.SI(test_si1), 
	.SE(test_se), 
	.RN(RST), 
	.Q(par_bit), 
	.D(n16), 
	.CK(CLK));
   OAI21XLM U3 (.Y(n15), 
	.B0(n9), 
	.A1(n10), 
	.A0(n11));
   INVXLM U4 (.Y(n2), 
	.A(sampled_bit));
   AOI2BB2XLM U5 (.Y(n10), 
	.B1(n2), 
	.B0(par_bit), 
	.A1N(par_bit), 
	.A0N(n2));
   NOR3BXLM U6 (.Y(n3), 
	.C(Bit_Count[2]), 
	.B(Bit_Count[1]), 
	.AN(Bit_Count[0]));
   NOR2XLM U7 (.Y(n1), 
	.B(n10), 
	.A(PAR_TYP));
   AOI211XLM U8 (.Y(n6), 
	.C0(n1), 
	.B0(n3), 
	.A1(n10), 
	.A0(PAR_TYP));
   OA21XLM U9 (.Y(n5), 
	.B0(n3), 
	.A1(n2), 
	.A0(Bit_Count[3]));
   NAND2XLM U10 (.Y(n8), 
	.B(Sampled_flag), 
	.A(PAR_Chk_En));
   AND2X1M U11 (.Y(n7), 
	.B(n3), 
	.A(Bit_Count[3]));
   OAI2B11XLM U12 (.Y(n4), 
	.C0(PAR_Chk_En), 
	.B0(par_bit), 
	.A1N(Sampled_flag), 
	.A0(n7));
   OAI31XLM U13 (.Y(n16), 
	.B0(n4), 
	.A2(n8), 
	.A1(n5), 
	.A0(n6));
   NAND2BXLM U14 (.Y(n11), 
	.B(n7), 
	.AN(n8));
   NAND2XLM U15 (.Y(n9), 
	.B(n18), 
	.A(n11));
   INVXLM U17 (.Y(n17), 
	.A(par_err));
   INVXLM U18 (.Y(n18), 
	.A(n17));
   SDFFRHQX1M par_err_reg (.SI(test_si2), 
	.SE(test_se), 
	.RN(RST), 
	.Q(par_err), 
	.D(n15), 
	.CK(CLK));
endmodule

module UART_RX_FSM_test_1 (
	RX_IN, 
	PAR_EN, 
	Bit_Count, 
	par_err, 
	stp_err, 
	start_glitch, 
	CLK, 
	RST, 
	PAR_Chk_En, 
	Str_Chk_En, 
	Stp_Chk_En, 
	Count_En, 
	Data_Sample_En, 
	deser_En, 
	DATA_VALID, 
	test_si, 
	test_se, 
	SPCASCAN_N6, 
	FE_PT1_Edge_Count_4_, 
	SPCASCAN_N12, 
	RX_CLK_M__L4_N1);
   input RX_IN;
   input PAR_EN;
   input [3:0] Bit_Count;
   input par_err;
   input stp_err;
   input start_glitch;
   input CLK;
   input RST;
   output PAR_Chk_En;
   output Str_Chk_En;
   output Stp_Chk_En;
   output Count_En;
   output Data_Sample_En;
   output deser_En;
   output DATA_VALID;
   input test_si;
   input test_se;
   output SPCASCAN_N6;
   input FE_PT1_Edge_Count_4_;
   output SPCASCAN_N12;
   input RX_CLK_M__L4_N1;

   // Internal wires
   wire DATA_VALID_Comb;
   wire n23;
   wire n24;
   wire n25;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire [2:0] Cur_S;

   SDFFRQX1M \Cur_S_reg[0]  (.SI(Cur_S[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SPCASCAN_N12), 
	.D(n23), 
	.CK(CLK));
   SDFFRQX1M DATA_VALID_reg (.SI(Bit_Count[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(DATA_VALID), 
	.D(DATA_VALID_Comb), 
	.CK(RX_CLK_M__L4_N1));
   SDFFRQX1M \Cur_S_reg[2]  (.SI(FE_PT1_Edge_Count_4_), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SPCASCAN_N6), 
	.D(n24), 
	.CK(CLK));
   SDFFRQX1M \Cur_S_reg[1]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(Cur_S[1]), 
	.D(n25), 
	.CK(CLK));
   INVXLM U3 (.Y(n11), 
	.A(Stp_Chk_En));
   INVXLM U4 (.Y(n13), 
	.A(SPCASCAN_N12));
   NAND2XLM U5 (.Y(n9), 
	.B(n13), 
	.A(Cur_S[1]));
   OAI21XLM U6 (.Y(Count_En), 
	.B0(n9), 
	.A1(n13), 
	.A0(SPCASCAN_N6));
   CLKBUFX1M U7 (.Y(Data_Sample_En), 
	.A(Count_En));
   INVXLM U8 (.Y(n1), 
	.A(SPCASCAN_N6));
   NOR2XLM U9 (.Y(Stp_Chk_En), 
	.B(n9), 
	.A(n1));
   NOR4XLM U10 (.Y(DATA_VALID_Comb), 
	.D(n11), 
	.C(stp_err), 
	.B(start_glitch), 
	.A(par_err));
   NAND2XLM U11 (.Y(n18), 
	.B(Cur_S[1]), 
	.A(n1));
   NOR2XLM U12 (.Y(deser_En), 
	.B(n18), 
	.A(n13));
   NOR3XLM U13 (.Y(Str_Chk_En), 
	.C(n13), 
	.B(SPCASCAN_N6), 
	.A(Cur_S[1]));
   NAND4BBXLM U14 (.Y(n12), 
	.D(Bit_Count[1]), 
	.C(Bit_Count[3]), 
	.BN(Bit_Count[0]), 
	.AN(Bit_Count[2]));
   NOR3XLM U15 (.Y(n2), 
	.C(SPCASCAN_N6), 
	.B(Cur_S[1]), 
	.A(SPCASCAN_N12));
   AOI21XLM U16 (.Y(n6), 
	.B0(n2), 
	.A1(n12), 
	.A0(Stp_Chk_En));
   NOR4XLM U17 (.Y(n7), 
	.D(Bit_Count[1]), 
	.C(Bit_Count[3]), 
	.B(Bit_Count[0]), 
	.A(Bit_Count[2]));
   NAND2BXLM U18 (.Y(n4), 
	.B(start_glitch), 
	.AN(n7));
   OR3X1M U19 (.Y(n3), 
	.C(Bit_Count[1]), 
	.B(Bit_Count[0]), 
	.A(Bit_Count[2]));
   AOI21XLM U20 (.Y(n17), 
	.B0(n7), 
	.A1(n3), 
	.A0(Bit_Count[3]));
   AOI22XLM U21 (.Y(n5), 
	.B1(n17), 
	.B0(deser_En), 
	.A1(n4), 
	.A0(Str_Chk_En));
   OAI21XLM U22 (.Y(n23), 
	.B0(n5), 
	.A1(n6), 
	.A0(RX_IN));
   OR4X1M U23 (.Y(n8), 
	.D(SPCASCAN_N6), 
	.C(n7), 
	.B(n13), 
	.A(start_glitch));
   OAI211XLM U24 (.Y(n25), 
	.C0(n8), 
	.B0(n18), 
	.A1(n9), 
	.A0(n12));
   INVXLM U25 (.Y(n16), 
	.A(deser_En));
   NOR2XLM U26 (.Y(n10), 
	.B(Bit_Count[1]), 
	.A(Bit_Count[2]));
   AOI31XLM U27 (.Y(n14), 
	.B0(n18), 
	.A2(n10), 
	.A1(Bit_Count[3]), 
	.A0(Bit_Count[0]));
   AOI2BB2XLM U28 (.Y(n15), 
	.B1(n13), 
	.B0(n14), 
	.A1N(n11), 
	.A0N(n12));
   OAI31XLM U29 (.Y(n24), 
	.B0(n15), 
	.A2(n16), 
	.A1(PAR_EN), 
	.A0(n17));
   INVXLM U30 (.Y(PAR_Chk_En), 
	.A(n18));
endmodule

module UART_RX_test_1 (
	CLK, 
	RST, 
	RX_IN, 
	Prescale, 
	PAR_EN, 
	PAR_TYP, 
	P_DATA, 
	stp_err, 
	data_valid, 
	test_si2, 
	test_si1, 
	test_se, 
	par_err_BAR, 
	SPCASCAN_N7, 
	SPCASCAN_N10, 
	FE_PT1_n4, 
	RX_CLK_M__L4_N1);
   input CLK;
   input RST;
   input RX_IN;
   input [5:0] Prescale;
   input PAR_EN;
   input PAR_TYP;
   output [7:0] P_DATA;
   output stp_err;
   output data_valid;
   input test_si2;
   input test_si1;
   input test_se;
   output par_err_BAR;
   input SPCASCAN_N7;
   output SPCASCAN_N10;
   input FE_PT1_n4;
   input RX_CLK_M__L4_N1;

   // Internal wires
   wire SPCASCAN_N12;
   wire SPCASCAN_N11;
   wire SPCASCAN_N6;
   wire par_err;
   wire dat_samp_en;
   wire sampled_bit;
   wire Sampled_flag;
   wire count_en;
   wire deser_en;
   wire strt_chk_en;
   wire start_glitch;
   wire stp_chk_en;
   wire par_chk_en;
   wire n4;
   wire n5;
   wire n6;
   wire n10;
   wire [4:0] Edge_Count;
   wire [3:0] Bit_Count;

   assign par_err_BAR = par_err ;

   INVXLM U4 (.Y(n10), 
	.A(par_err));
   Sampler_test_1 u_Sampler (.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		1'b0 }), 
	.Edge_Count({ Edge_Count[4],
		Edge_Count[3],
		Edge_Count[2],
		Edge_Count[1],
		SPCASCAN_N10 }), 
	.RX_IN(RX_IN), 
	.Data_Sample_En(dat_samp_en), 
	.CLK(CLK), 
	.RST(RST), 
	.sampled_bit(sampled_bit), 
	.Sampled_flag(Sampled_flag), 
	.test_si(n6), 
	.test_so(n5), 
	.test_se(test_se), 
	.SPCASCAN_N11(SPCASCAN_N11), 
	.SPCASCAN_N12(SPCASCAN_N12));
   Edge_Bit_Counter_test_1 u_Edge_Bit_Counter (.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.Count_En(count_en), 
	.CLK(CLK), 
	.RST(RST), 
	.Edge_Count({ Edge_Count[4],
		Edge_Count[3],
		Edge_Count[2],
		Edge_Count[1],
		SPCASCAN_N10 }), 
	.Bit_Count({ Bit_Count[3],
		Bit_Count[2],
		Bit_Count[1],
		Bit_Count[0] }), 
	.test_si(start_glitch), 
	.test_se(test_se), 
	.SPCASCAN_N7(SPCASCAN_N7), 
	.SPCASCAN_N11(SPCASCAN_N11), 
	.RX_D_VALID(Bit_Count[2]), 
	.FE_PT1_RX_P_DATA_6_(P_DATA[6]), 
	.FE_PT1_RX_D_VALID(data_valid), 
	.RX_CLK_M__L4_N1(RX_CLK_M__L4_N1));
   Deserializer_test_1 u_Deserializer (.deser_En(deser_en), 
	.sampled_bit(sampled_bit), 
	.Sampled_flag(Sampled_flag), 
	.Bit_Count({ 1'b0,
		Bit_Count[2],
		Bit_Count[1],
		Bit_Count[0] }), 
	.CLK(RX_CLK_M__L4_N1), 
	.RST(RST), 
	.P_DATA({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_si(test_si1), 
	.test_se(test_se), 
	.FE_PT1_n4(FE_PT1_n4));
   Start_Checker_test_1 u_Start_Checker (.CLK(CLK), 
	.RST(RST), 
	.sampled_bit(sampled_bit), 
	.Sampled_flag(Sampled_flag), 
	.Str_Chk_En(strt_chk_en), 
	.start_glitch(start_glitch), 
	.test_si(Bit_Count[3]), 
	.test_se(test_se));
   Stop_Checker_test_1 u_Stop_Checker (.CLK(CLK), 
	.RST(RST), 
	.sampled_bit(sampled_bit), 
	.Sampled_flag(Sampled_flag), 
	.Stp_Chk_En(stp_chk_en), 
	.stp_err(stp_err), 
	.test_si(Bit_Count[0]), 
	.test_so(n4), 
	.test_se(test_se));
   Parity_Checker_test_1 u_Parity_Checker (.PAR_TYP(PAR_TYP), 
	.PAR_Chk_En(par_chk_en), 
	.sampled_bit(sampled_bit), 
	.Bit_Count({ Bit_Count[3],
		Bit_Count[2],
		Bit_Count[1],
		Bit_Count[0] }), 
	.CLK(RX_CLK_M__L4_N1), 
	.RST(RST), 
	.Sampled_flag(Sampled_flag), 
	.test_si2(n6), 
	.test_si1(SPCASCAN_N6), 
	.test_so1(n6), 
	.test_se(test_se), 
	.par_err_BAR(par_err));
   UART_RX_FSM_test_1 u_UART_RX_FSM (.RX_IN(RX_IN), 
	.PAR_EN(PAR_EN), 
	.Bit_Count({ Bit_Count[3],
		Bit_Count[2],
		Bit_Count[1],
		Bit_Count[0] }), 
	.par_err(n10), 
	.stp_err(stp_err), 
	.start_glitch(start_glitch), 
	.CLK(CLK), 
	.RST(RST), 
	.PAR_Chk_En(par_chk_en), 
	.Str_Chk_En(strt_chk_en), 
	.Stp_Chk_En(stp_chk_en), 
	.Count_En(count_en), 
	.Data_Sample_En(dat_samp_en), 
	.deser_En(deser_en), 
	.DATA_VALID(data_valid), 
	.test_si(n4), 
	.test_se(test_se), 
	.SPCASCAN_N6(SPCASCAN_N6), 
	.FE_PT1_Edge_Count_4_(Edge_Count[4]), 
	.SPCASCAN_N12(SPCASCAN_N12), 
	.RX_CLK_M__L4_N1(RX_CLK_M__L4_N1));
endmodule

module UART_test_1 (
	TX_CLK, 
	RX_CLK, 
	RST, 
	Prescale, 
	PAR_EN, 
	PAR_TYP, 
	TX_P_DATA, 
	TX_DATA_VALID, 
	TX_OUT, 
	TX_BUSY, 
	RX_IN, 
	RX_P_DATA, 
	framing_error, 
	RX_DATA_VALID, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	parity_error_BAR, 
	SPCASCAN_N7, 
	SPCASCAN_N8, 
	FE_PT1_n4, 
	SPCBSCAN_N16, 
	FE_PT1_SPCASCAN_N7, 
	SPCBSCAN_N19, 
	RX_CLK_M__L4_N1);
   input TX_CLK;
   input RX_CLK;
   input RST;
   input [5:0] Prescale;
   input PAR_EN;
   input PAR_TYP;
   input [7:0] TX_P_DATA;
   input TX_DATA_VALID;
   output TX_OUT;
   output TX_BUSY;
   input RX_IN;
   output [7:0] RX_P_DATA;
   output framing_error;
   output RX_DATA_VALID;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   output parity_error_BAR;
   input SPCASCAN_N7;
   output SPCASCAN_N8;
   input FE_PT1_n4;
   output SPCBSCAN_N16;
   input FE_PT1_SPCASCAN_N7;
   output SPCBSCAN_N19;
   input RX_CLK_M__L4_N1;

   // Internal wires
   wire parity_error;

   assign parity_error_BAR = parity_error ;

   UART_TX_TOP_test_1 u_UART_TX_TOP (.PAR_EN(PAR_EN), 
	.PAR_TYP(PAR_TYP), 
	.DATA_VALID(TX_DATA_VALID), 
	.P_DATA({ TX_P_DATA[7],
		TX_P_DATA[6],
		TX_P_DATA[5],
		TX_P_DATA[4],
		TX_P_DATA[3],
		TX_P_DATA[2],
		TX_P_DATA[1],
		TX_P_DATA[0] }), 
	.CLK(TX_CLK), 
	.RST(RST), 
	.TX_OUT(TX_OUT), 
	.busy(TX_BUSY), 
	.test_si(RX_DATA_VALID), 
	.test_so(test_so1), 
	.test_se(test_se), 
	.SPCASCAN_N8(SPCASCAN_N8), 
	.SPCASCAN_N10(FE_PT1_SPCASCAN_N7), 
	.SPCBSCAN_N16(SPCBSCAN_N16));
   UART_RX_test_1 u_UART_RX (.CLK(RX_CLK), 
	.RST(RST), 
	.RX_IN(RX_IN), 
	.Prescale({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.PAR_EN(PAR_EN), 
	.PAR_TYP(PAR_TYP), 
	.P_DATA({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.stp_err(framing_error), 
	.data_valid(RX_DATA_VALID), 
	.test_si2(test_si2), 
	.test_si1(test_si1), 
	.test_se(test_se), 
	.par_err_BAR(parity_error), 
	.SPCASCAN_N7(SPCASCAN_N7), 
	.SPCASCAN_N10(SPCBSCAN_N19), 
	.FE_PT1_n4(FE_PT1_n4), 
	.RX_CLK_M__L4_N1(RX_CLK_M__L4_N1));
endmodule

module System_Top (
	REF_CLK, 
	UART_CLK, 
	RST_N, 
	UART_RX_IN, 
	SE, 
	test_mode, 
	scan_clk, 
	scan_rst, 
	SI, 
	SO, 
	UART_TX_O, 
	framing_error, 
	parity_error);
   input REF_CLK;
   input UART_CLK;
   input RST_N;
   input UART_RX_IN;
   input SE;
   input test_mode;
   input scan_clk;
   input scan_rst;
   input [3:0] SI;
   output [3:0] SO;
   output UART_TX_O;
   output framing_error;
   output parity_error;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_clk__L12_N0;
   wire scan_clk__L11_N0;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N1;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N1;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N1;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N1;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N1;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N1;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N1;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire REF_CLK_M__L10_N15;
   wire REF_CLK_M__L10_N14;
   wire REF_CLK_M__L10_N13;
   wire REF_CLK_M__L10_N12;
   wire REF_CLK_M__L10_N11;
   wire REF_CLK_M__L10_N10;
   wire REF_CLK_M__L10_N9;
   wire REF_CLK_M__L10_N8;
   wire REF_CLK_M__L10_N7;
   wire REF_CLK_M__L10_N6;
   wire REF_CLK_M__L10_N5;
   wire REF_CLK_M__L10_N4;
   wire REF_CLK_M__L10_N3;
   wire REF_CLK_M__L10_N2;
   wire REF_CLK_M__L10_N1;
   wire REF_CLK_M__L10_N0;
   wire REF_CLK_M__L9_N7;
   wire REF_CLK_M__L9_N6;
   wire REF_CLK_M__L9_N5;
   wire REF_CLK_M__L9_N4;
   wire REF_CLK_M__L9_N3;
   wire REF_CLK_M__L9_N2;
   wire REF_CLK_M__L9_N1;
   wire REF_CLK_M__L9_N0;
   wire REF_CLK_M__L8_N3;
   wire REF_CLK_M__L8_N2;
   wire REF_CLK_M__L8_N1;
   wire REF_CLK_M__L8_N0;
   wire REF_CLK_M__L7_N3;
   wire REF_CLK_M__L7_N2;
   wire REF_CLK_M__L7_N1;
   wire REF_CLK_M__L7_N0;
   wire REF_CLK_M__L6_N1;
   wire REF_CLK_M__L6_N0;
   wire REF_CLK_M__L5_N0;
   wire REF_CLK_M__L4_N0;
   wire REF_CLK_M__L3_N1;
   wire REF_CLK_M__L3_N0;
   wire REF_CLK_M__L2_N1;
   wire REF_CLK_M__L2_N0;
   wire REF_CLK_M__L1_N0;
   wire ALU_CLK_M__L3_N1;
   wire ALU_CLK_M__L3_N0;
   wire ALU_CLK_M__L2_N0;
   wire ALU_CLK_M__L1_N0;
   wire UART_CLK_M__L14_N0;
   wire UART_CLK_M__L13_N0;
   wire UART_CLK_M__L12_N0;
   wire UART_CLK_M__L11_N0;
   wire UART_CLK_M__L10_N0;
   wire UART_CLK_M__L9_N0;
   wire UART_CLK_M__L8_N0;
   wire UART_CLK_M__L7_N1;
   wire UART_CLK_M__L7_N0;
   wire UART_CLK_M__L6_N0;
   wire UART_CLK_M__L5_N0;
   wire UART_CLK_M__L4_N0;
   wire UART_CLK_M__L3_N1;
   wire UART_CLK_M__L3_N0;
   wire UART_CLK_M__L2_N0;
   wire UART_CLK_M__L1_N0;
   wire n6__L1_N0;
   wire n6__Exclude_0_NET;
   wire TX_CLK__L1_N0;
   wire n11__Exclude_0_NET;
   wire TX_CLK_M__L4_N1;
   wire TX_CLK_M__L4_N0;
   wire TX_CLK_M__L3_N0;
   wire TX_CLK_M__L2_N0;
   wire TX_CLK_M__L1_N0;
   wire RX_CLK_M__L4_N1;
   wire RX_CLK_M__L4_N0;
   wire RX_CLK_M__L3_N0;
   wire RX_CLK_M__L2_N0;
   wire RX_CLK_M__L1_N0;
   wire SPCBSCAN_N19;
   wire SPCBSCAN_N16;
   wire FE_OFN1_SYNC_REF_RST_M;
   wire FE_OFN0_SYNC_REF_RST_M;
   wire SPCASCAN_N14;
   wire SPCASCAN_N13;
   wire SPCASCAN_N8;
   wire SPCASCAN_N7;
   wire SPCASCAN_N5;
   wire SPCASCAN_N2;
   wire SPCASCAN_N1;
   wire SPCASCAN_N0;
   wire n55;
   wire REF_CLK_M;
   wire ALU_CLK;
   wire ALU_CLK_M;
   wire UART_CLK_M;
   wire TX_CLK;
   wire TX_CLK_M;
   wire RX_CLK;
   wire RX_CLK_M;
   wire RST_M;
   wire SYNC_REF_RST;
   wire SYNC_REF_RST_M;
   wire SYNC_UART_RST;
   wire SYNC_UART_RST_M;
   wire ALU_EN;
   wire ALU_OUT_VALID;
   wire FIFO_WR_INC;
   wire FIFO_RD_INC;
   wire FIFO_EMPTY;
   wire FIFO_FULL;
   wire RX_D_VALID;
   wire Sync_RX_D_VALID;
   wire TX_BUSY;
   wire RF_WrEn;
   wire RF_RdEn;
   wire RF_Rd_Data_Valid;
   wire _0_net_;
   wire CLK_Gate_EN;
   wire n1;
   wire n4;
   wire n5;
   wire n6;
   wire n8;
   wire n54;
   wire n11;
   wire n12;
   wire n13;
   wire n53;
   wire n16;
   wire n17;
   wire n23;
   wire n25;
   wire n26;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n36;
   wire n37;
   wire n38;
   wire n44;
   wire [7:0] ALU_OP_A;
   wire [7:0] ALU_OP_B;
   wire [3:0] ALU_FUN;
   wire [15:0] ALU_OUT;
   wire [7:0] FIFO_WR_DATA;
   wire [7:0] FIFO_RD_DATA;
   wire [7:0] RX_P_DATA;
   wire [7:0] Sync_RX_P_DATA;
   wire [7:0] CONFIG;
   wire [2:0] RX_CLK_DIV_RATIO;
   wire [7:0] TX_CLK_DIV_RATIO;
   wire [7:0] RF_Wr_Data;
   wire [3:0] RF_ADDR;
   wire [7:0] RF_Rd_Data;

   CLKINVX40M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX40M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX6M scan_clk__L12_I0 (.Y(scan_clk__L12_N0), 
	.A(scan_clk__L11_N0));
   CLKBUFX20M scan_clk__L11_I0 (.Y(scan_clk__L11_N0), 
	.A(scan_clk__L10_N0));
   CLKBUFX20M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N0));
   CLKBUFX20M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N1));
   CLKBUFX20M scan_clk__L8_I1 (.Y(scan_clk__L8_N1), 
	.A(scan_clk__L7_N1));
   CLKINVX6M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N0));
   CLKBUFX20M scan_clk__L7_I1 (.Y(scan_clk__L7_N1), 
	.A(scan_clk__L6_N1));
   CLKBUFX20M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX20M scan_clk__L6_I1 (.Y(scan_clk__L6_N1), 
	.A(scan_clk__L5_N1));
   CLKBUFX20M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX20M scan_clk__L5_I1 (.Y(scan_clk__L5_N1), 
	.A(scan_clk__L4_N1));
   CLKBUFX20M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX20M scan_clk__L4_I1 (.Y(scan_clk__L4_N1), 
	.A(scan_clk__L3_N1));
   CLKBUFX20M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX20M scan_clk__L3_I1 (.Y(scan_clk__L3_N1), 
	.A(scan_clk__L2_N1));
   CLKBUFX20M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N1));
   CLKBUFX20M scan_clk__L2_I1 (.Y(scan_clk__L2_N1), 
	.A(scan_clk__L1_N0));
   CLKINVX6M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX32M REF_CLK_M__L10_I15 (.Y(REF_CLK_M__L10_N15), 
	.A(REF_CLK_M__L9_N7));
   CLKINVX32M REF_CLK_M__L10_I14 (.Y(REF_CLK_M__L10_N14), 
	.A(REF_CLK_M__L9_N7));
   CLKINVX32M REF_CLK_M__L10_I13 (.Y(REF_CLK_M__L10_N13), 
	.A(REF_CLK_M__L9_N6));
   CLKINVX32M REF_CLK_M__L10_I12 (.Y(REF_CLK_M__L10_N12), 
	.A(REF_CLK_M__L9_N6));
   CLKINVX32M REF_CLK_M__L10_I11 (.Y(REF_CLK_M__L10_N11), 
	.A(REF_CLK_M__L9_N5));
   CLKINVX32M REF_CLK_M__L10_I10 (.Y(REF_CLK_M__L10_N10), 
	.A(REF_CLK_M__L9_N5));
   CLKINVX32M REF_CLK_M__L10_I9 (.Y(REF_CLK_M__L10_N9), 
	.A(REF_CLK_M__L9_N4));
   CLKINVX32M REF_CLK_M__L10_I8 (.Y(REF_CLK_M__L10_N8), 
	.A(REF_CLK_M__L9_N4));
   CLKINVX32M REF_CLK_M__L10_I7 (.Y(REF_CLK_M__L10_N7), 
	.A(REF_CLK_M__L9_N3));
   CLKINVX32M REF_CLK_M__L10_I6 (.Y(REF_CLK_M__L10_N6), 
	.A(REF_CLK_M__L9_N3));
   CLKINVX32M REF_CLK_M__L10_I5 (.Y(REF_CLK_M__L10_N5), 
	.A(REF_CLK_M__L9_N2));
   CLKINVX32M REF_CLK_M__L10_I4 (.Y(REF_CLK_M__L10_N4), 
	.A(REF_CLK_M__L9_N2));
   CLKINVX32M REF_CLK_M__L10_I3 (.Y(REF_CLK_M__L10_N3), 
	.A(REF_CLK_M__L9_N1));
   CLKINVX32M REF_CLK_M__L10_I2 (.Y(REF_CLK_M__L10_N2), 
	.A(REF_CLK_M__L9_N1));
   CLKINVX32M REF_CLK_M__L10_I1 (.Y(REF_CLK_M__L10_N1), 
	.A(REF_CLK_M__L9_N0));
   CLKINVX32M REF_CLK_M__L10_I0 (.Y(REF_CLK_M__L10_N0), 
	.A(REF_CLK_M__L9_N0));
   CLKINVX24M REF_CLK_M__L9_I7 (.Y(REF_CLK_M__L9_N7), 
	.A(REF_CLK_M__L8_N3));
   CLKINVX24M REF_CLK_M__L9_I6 (.Y(REF_CLK_M__L9_N6), 
	.A(REF_CLK_M__L8_N3));
   CLKINVX24M REF_CLK_M__L9_I5 (.Y(REF_CLK_M__L9_N5), 
	.A(REF_CLK_M__L8_N2));
   CLKINVX24M REF_CLK_M__L9_I4 (.Y(REF_CLK_M__L9_N4), 
	.A(REF_CLK_M__L8_N2));
   CLKINVX24M REF_CLK_M__L9_I3 (.Y(REF_CLK_M__L9_N3), 
	.A(REF_CLK_M__L8_N1));
   CLKINVX24M REF_CLK_M__L9_I2 (.Y(REF_CLK_M__L9_N2), 
	.A(REF_CLK_M__L8_N1));
   CLKINVX24M REF_CLK_M__L9_I1 (.Y(REF_CLK_M__L9_N1), 
	.A(REF_CLK_M__L8_N0));
   CLKINVX24M REF_CLK_M__L9_I0 (.Y(REF_CLK_M__L9_N0), 
	.A(REF_CLK_M__L8_N0));
   CLKINVX20M REF_CLK_M__L8_I3 (.Y(REF_CLK_M__L8_N3), 
	.A(REF_CLK_M__L7_N3));
   CLKINVX20M REF_CLK_M__L8_I2 (.Y(REF_CLK_M__L8_N2), 
	.A(REF_CLK_M__L7_N2));
   CLKINVX20M REF_CLK_M__L8_I1 (.Y(REF_CLK_M__L8_N1), 
	.A(REF_CLK_M__L7_N1));
   CLKINVX20M REF_CLK_M__L8_I0 (.Y(REF_CLK_M__L8_N0), 
	.A(REF_CLK_M__L7_N0));
   CLKINVX16M REF_CLK_M__L7_I3 (.Y(REF_CLK_M__L7_N3), 
	.A(REF_CLK_M__L6_N1));
   CLKINVX16M REF_CLK_M__L7_I2 (.Y(REF_CLK_M__L7_N2), 
	.A(REF_CLK_M__L6_N1));
   CLKINVX16M REF_CLK_M__L7_I1 (.Y(REF_CLK_M__L7_N1), 
	.A(REF_CLK_M__L6_N0));
   CLKINVX16M REF_CLK_M__L7_I0 (.Y(REF_CLK_M__L7_N0), 
	.A(REF_CLK_M__L6_N0));
   CLKINVX32M REF_CLK_M__L6_I1 (.Y(REF_CLK_M__L6_N1), 
	.A(REF_CLK_M__L5_N0));
   CLKINVX32M REF_CLK_M__L6_I0 (.Y(REF_CLK_M__L6_N0), 
	.A(REF_CLK_M__L5_N0));
   CLKINVX32M REF_CLK_M__L5_I0 (.Y(REF_CLK_M__L5_N0), 
	.A(REF_CLK_M__L4_N0));
   CLKBUFX20M REF_CLK_M__L4_I0 (.Y(REF_CLK_M__L4_N0), 
	.A(REF_CLK_M__L3_N1));
   CLKBUFX20M REF_CLK_M__L3_I1 (.Y(REF_CLK_M__L3_N1), 
	.A(REF_CLK_M__L2_N1));
   CLKINVX32M REF_CLK_M__L3_I0 (.Y(REF_CLK_M__L3_N0), 
	.A(REF_CLK_M__L2_N0));
   BUFX32M REF_CLK_M__L2_I1 (.Y(REF_CLK_M__L2_N1), 
	.A(REF_CLK_M__L1_N0));
   CLKINVX16M REF_CLK_M__L2_I0 (.Y(REF_CLK_M__L2_N0), 
	.A(REF_CLK_M__L1_N0));
   CLKBUFX12M REF_CLK_M__L1_I0 (.Y(REF_CLK_M__L1_N0), 
	.A(REF_CLK_M));
   CLKINVX40M ALU_CLK_M__L3_I1 (.Y(ALU_CLK_M__L3_N1), 
	.A(ALU_CLK_M__L2_N0));
   CLKINVX40M ALU_CLK_M__L3_I0 (.Y(ALU_CLK_M__L3_N0), 
	.A(ALU_CLK_M__L2_N0));
   CLKINVX32M ALU_CLK_M__L2_I0 (.Y(ALU_CLK_M__L2_N0), 
	.A(ALU_CLK_M__L1_N0));
   CLKBUFX12M ALU_CLK_M__L1_I0 (.Y(ALU_CLK_M__L1_N0), 
	.A(ALU_CLK_M));
   CLKINVX32M UART_CLK_M__L14_I0 (.Y(UART_CLK_M__L14_N0), 
	.A(UART_CLK_M__L13_N0));
   CLKBUFX20M UART_CLK_M__L13_I0 (.Y(UART_CLK_M__L13_N0), 
	.A(UART_CLK_M__L12_N0));
   CLKBUFX20M UART_CLK_M__L12_I0 (.Y(UART_CLK_M__L12_N0), 
	.A(UART_CLK_M__L11_N0));
   CLKBUFX20M UART_CLK_M__L11_I0 (.Y(UART_CLK_M__L11_N0), 
	.A(UART_CLK_M__L10_N0));
   CLKBUFX20M UART_CLK_M__L10_I0 (.Y(UART_CLK_M__L10_N0), 
	.A(UART_CLK_M__L9_N0));
   CLKBUFX20M UART_CLK_M__L9_I0 (.Y(UART_CLK_M__L9_N0), 
	.A(UART_CLK_M__L8_N0));
   CLKBUFX20M UART_CLK_M__L8_I0 (.Y(UART_CLK_M__L8_N0), 
	.A(UART_CLK_M__L7_N1));
   CLKBUFX20M UART_CLK_M__L7_I1 (.Y(UART_CLK_M__L7_N1), 
	.A(UART_CLK_M__L6_N0));
   CLKINVX32M UART_CLK_M__L7_I0 (.Y(UART_CLK_M__L7_N0), 
	.A(UART_CLK_M__L6_N0));
   CLKINVX32M UART_CLK_M__L6_I0 (.Y(UART_CLK_M__L6_N0), 
	.A(UART_CLK_M__L5_N0));
   CLKBUFX40M UART_CLK_M__L5_I0 (.Y(UART_CLK_M__L5_N0), 
	.A(UART_CLK_M__L4_N0));
   CLKBUFX24M UART_CLK_M__L4_I0 (.Y(UART_CLK_M__L4_N0), 
	.A(UART_CLK_M__L3_N1));
   CLKBUFX24M UART_CLK_M__L3_I1 (.Y(UART_CLK_M__L3_N1), 
	.A(UART_CLK_M__L2_N0));
   CLKBUFX24M UART_CLK_M__L3_I0 (.Y(UART_CLK_M__L3_N0), 
	.A(UART_CLK_M__L2_N0));
   CLKBUFX24M UART_CLK_M__L2_I0 (.Y(UART_CLK_M__L2_N0), 
	.A(UART_CLK_M__L1_N0));
   CLKBUFX12M UART_CLK_M__L1_I0 (.Y(UART_CLK_M__L1_N0), 
	.A(UART_CLK_M));
   CLKBUFX12M n6__L1_I0 (.Y(n6__L1_N0), 
	.A(n6));
   BUFX8M n6__Exclude_0 (.Y(n6__Exclude_0_NET), 
	.A(n6));
   CLKBUFX12M TX_CLK__L1_I0 (.Y(TX_CLK__L1_N0), 
	.A(TX_CLK));
   BUFX8M n11__Exclude_0 (.Y(n11__Exclude_0_NET), 
	.A(n11));
   CLKINVX32M TX_CLK_M__L4_I1 (.Y(TX_CLK_M__L4_N1), 
	.A(TX_CLK_M__L3_N0));
   CLKINVX32M TX_CLK_M__L4_I0 (.Y(TX_CLK_M__L4_N0), 
	.A(TX_CLK_M__L3_N0));
   CLKINVX40M TX_CLK_M__L3_I0 (.Y(TX_CLK_M__L3_N0), 
	.A(TX_CLK_M__L2_N0));
   CLKBUFX40M TX_CLK_M__L2_I0 (.Y(TX_CLK_M__L2_N0), 
	.A(TX_CLK_M__L1_N0));
   CLKBUFX12M TX_CLK_M__L1_I0 (.Y(TX_CLK_M__L1_N0), 
	.A(TX_CLK_M));
   CLKINVX40M RX_CLK_M__L4_I1 (.Y(RX_CLK_M__L4_N1), 
	.A(RX_CLK_M__L3_N0));
   CLKINVX40M RX_CLK_M__L4_I0 (.Y(RX_CLK_M__L4_N0), 
	.A(RX_CLK_M__L3_N0));
   CLKINVX40M RX_CLK_M__L3_I0 (.Y(RX_CLK_M__L3_N0), 
	.A(RX_CLK_M__L2_N0));
   CLKBUFX12M RX_CLK_M__L2_I0 (.Y(RX_CLK_M__L2_N0), 
	.A(RX_CLK_M__L1_N0));
   BUFX12M RX_CLK_M__L1_I0 (.Y(RX_CLK_M__L1_N0), 
	.A(RX_CLK_M));
   BUFX4M FE_OFC1_SYNC_REF_RST_M (.Y(FE_OFN1_SYNC_REF_RST_M), 
	.A(SYNC_REF_RST_M));
   CLKBUFX8M FE_OFC0_SYNC_REF_RST_M (.Y(FE_OFN0_SYNC_REF_RST_M), 
	.A(SYNC_REF_RST_M));
   INVXLM U3 (.Y(n1), 
	.A(FIFO_EMPTY));
   OR2X1M U4 (.Y(_0_net_), 
	.B(test_mode), 
	.A(CLK_Gate_EN));
   CLKBUFX2M U7 (.Y(SO[1]), 
	.A(ALU_EN));
   BUFX4M U9 (.Y(n23), 
	.A(n25));
   CLKINVX2M U11 (.Y(n25), 
	.A(n44));
   BUFX4M U12 (.Y(n26), 
	.A(SE));
   INVXLM U16 (.Y(n30), 
	.A(n44));
   INVXLM U17 (.Y(n31), 
	.A(n44));
   INVXLM U18 (.Y(n32), 
	.A(n44));
   INVXLM U19 (.Y(n33), 
	.A(n44));
   BUFX2M U20 (.Y(n34), 
	.A(n36));
   INVXLM U22 (.Y(n36), 
	.A(n44));
   INVXLM U23 (.Y(n37), 
	.A(n44));
   CLKINVX2M U24 (.Y(n38), 
	.A(n44));
   CLKINVX2M U30 (.Y(n44), 
	.A(SE));
   MUX_2x1_7 u_ref_clk_mux (.IN0(REF_CLK__L2_N0), 
	.IN1(scan_clk__L8_N0), 
	.SEL(test_mode), 
	.OUT(REF_CLK_M));
   MUX_2x1_6 u_alu_clk_mux (.IN0(ALU_CLK), 
	.IN1(scan_clk__L12_N0), 
	.SEL(test_mode), 
	.OUT(ALU_CLK_M));
   MUX_2x1_5 u_uart_clk_mux (.IN0(UART_CLK__L2_N0), 
	.IN1(scan_clk__L2_N0), 
	.SEL(test_mode), 
	.OUT(UART_CLK_M));
   MUX_2x1_4 u_tx_clk_mux (.IN0(TX_CLK__L1_N0), 
	.IN1(scan_clk__L12_N0), 
	.SEL(test_mode), 
	.OUT(TX_CLK_M));
   MUX_2x1_3 u_rx_clk_mux (.IN0(RX_CLK), 
	.IN1(scan_clk__L12_N0), 
	.SEL(test_mode), 
	.OUT(RX_CLK_M));
   MUX_2x1_2 u_rst_mux (.IN0(RST_N), 
	.IN1(scan_rst), 
	.SEL(test_mode), 
	.OUT(RST_M));
   MUX_2x1_1 u_ref_rst_mux (.IN0(SYNC_REF_RST), 
	.IN1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_REF_RST_M));
   MUX_2x1_0 u_uart_rst_mux (.IN0(SYNC_UART_RST), 
	.IN1(scan_rst), 
	.SEL(test_mode), 
	.OUT(SYNC_UART_RST_M));
   ALU_WIDTH8_test_1 u_ALU (.A({ ALU_OP_A[7],
		ALU_OP_A[6],
		ALU_OP_A[5],
		ALU_OP_A[4],
		ALU_OP_A[3],
		ALU_OP_A[2],
		ALU_OP_A[1],
		ALU_OP_A[0] }), 
	.B({ ALU_OP_B[7],
		ALU_OP_B[6],
		ALU_OP_B[5],
		ALU_OP_B[4],
		ALU_OP_B[3],
		ALU_OP_B[2],
		ALU_OP_B[1],
		ALU_OP_B[0] }), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.Enable(ALU_EN), 
	.CLK(ALU_CLK_M__L3_N0), 
	.RST(FE_OFN1_SYNC_REF_RST_M), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_VALID(ALU_OUT_VALID), 
	.test_si(ALU_OUT[6]), 
	.test_se(n38), 
	.SPCASCAN_N0(SPCASCAN_N0), 
	.ALU_CLK_M__L3_N1(ALU_CLK_M__L3_N1));
   FIFO_TOP_DATA_WIDTH8_DEPTH8_test_1 u_FIFO (.W_CLK(REF_CLK_M__L10_N0), 
	.R_CLK(TX_CLK_M__L4_N0), 
	.W_RST(FE_OFN1_SYNC_REF_RST_M), 
	.R_RST(SYNC_UART_RST_M), 
	.W_INC(FIFO_WR_INC), 
	.R_INC(FIFO_RD_INC), 
	.WR_DATA({ FIFO_WR_DATA[7],
		FIFO_WR_DATA[6],
		FIFO_WR_DATA[5],
		FIFO_WR_DATA[4],
		FIFO_WR_DATA[3],
		FIFO_WR_DATA[2],
		FIFO_WR_DATA[1],
		FIFO_WR_DATA[0] }), 
	.RD_DATA({ FIFO_RD_DATA[7],
		FIFO_RD_DATA[6],
		FIFO_RD_DATA[5],
		FIFO_RD_DATA[4],
		FIFO_RD_DATA[3],
		FIFO_RD_DATA[2],
		FIFO_RD_DATA[1],
		FIFO_RD_DATA[0] }), 
	.EMPTY(FIFO_EMPTY), 
	.FULL(FIFO_FULL), 
	.test_si3(SI[2]), 
	.test_si2(Sync_RX_D_VALID), 
	.test_si1(Sync_RX_P_DATA[7]), 
	.test_so3(n13), 
	.test_so1(n16), 
	.test_se(n34), 
	.test_so2_BAR(n53), 
	.FE_PT1_ALU_OUT_10_(ALU_OUT[10]), 
	.SPCASCAN_N0(SPCASCAN_N0), 
	.SPCASCAN_N2(SPCASCAN_N2), 
	.TX_CLK_M__L4_N1(TX_CLK_M__L4_N1), 
	.REF_CLK_M__L10_N1(REF_CLK_M__L10_N1), 
	.REF_CLK_M__L10_N2(REF_CLK_M__L10_N2), 
	.REF_CLK_M__L10_N3(REF_CLK_M__L10_N3), 
	.REF_CLK_M__L10_N6(REF_CLK_M__L10_N6), 
	.REF_CLK_M__L10_N7(REF_CLK_M__L10_N7));
   Data_Bus_Sync_DATA_WIDTH8_Sync_Legnth2_test_1 u_BUS_SYNC (.Unsync_bus({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.bus_enable(RX_D_VALID), 
	.clk(REF_CLK_M__L10_N11), 
	.rst(SYNC_REF_RST_M), 
	.Sync_bus({ Sync_RX_P_DATA[7],
		Sync_RX_P_DATA[6],
		Sync_RX_P_DATA[5],
		Sync_RX_P_DATA[4],
		Sync_RX_P_DATA[3],
		Sync_RX_P_DATA[2],
		Sync_RX_P_DATA[1],
		Sync_RX_P_DATA[0] }), 
	.enable_pulse(Sync_RX_D_VALID), 
	.test_si2(Sync_RX_D_VALID), 
	.test_si1(SI[3]), 
	.test_so1(n17), 
	.test_se(n25), 
	.REF_CLK_M__L10_N8(REF_CLK_M__L10_N8));
   RX_CLK_DIV_MUX u_RX_CLK_DIV_MUX (.PRESCALE({ CONFIG[7],
		CONFIG[6],
		CONFIG[5],
		CONFIG[4],
		CONFIG[3],
		CONFIG[2] }), 
	.RX_CLK_DIV_RATIO({ RX_CLK_DIV_RATIO[2],
		RX_CLK_DIV_RATIO[1],
		RX_CLK_DIV_RATIO[0] }));
   I_CLK_DIV_DIV_RATIO_WIDTH8_test_1 u_TX_CLK_DIV (.i_ref_clk(UART_CLK_M__L14_N0), 
	.i_rst_n(SYNC_UART_RST_M), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ TX_CLK_DIV_RATIO[7],
		TX_CLK_DIV_RATIO[6],
		TX_CLK_DIV_RATIO[5],
		TX_CLK_DIV_RATIO[4],
		TX_CLK_DIV_RATIO[3],
		TX_CLK_DIV_RATIO[2],
		TX_CLK_DIV_RATIO[1],
		TX_CLK_DIV_RATIO[0] }), 
	.o_div_clk(TX_CLK), 
	.test_si(RF_WrEn), 
	.test_so(n6), 
	.test_se(n33), 
	.SPCASCAN_N14(SPCASCAN_N14), 
	.FE_PT1_FIFO_WR_DATA_0_(FIFO_WR_DATA[0]), 
	.n6__Exclude_0_NET(n6__Exclude_0_NET), 
	.n6__L1_N0(n6__L1_N0), 
	.UART_CLK_M__L1_N0(UART_CLK_M__L1_N0), 
	.UART_CLK_M__L7_N0(UART_CLK_M__L7_N0));
   I_CLK_DIV_DIV_RATIO_WIDTH3_test_1 u_RX_CLK_DIV (.i_ref_clk(UART_CLK_M__L14_N0), 
	.i_rst_n(SYNC_UART_RST_M), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ RX_CLK_DIV_RATIO[2],
		RX_CLK_DIV_RATIO[1],
		RX_CLK_DIV_RATIO[0] }), 
	.o_div_clk(RX_CLK), 
	.test_si(n12), 
	.test_so(n11), 
	.test_se(n32), 
	.SPCASCAN_N1(SPCASCAN_N1), 
	.SPCASCAN_N2(SPCASCAN_N2), 
	.n11__Exclude_0_NET(n11__Exclude_0_NET), 
	.UART_CLK_M__L3_N0(UART_CLK_M__L3_N0), 
	.UART_CLK_M__L7_N0(UART_CLK_M__L7_N0));
   pulse_gen_test_1 u_pulse_gen (.CLK(TX_CLK_M__L4_N0), 
	.RST(SYNC_UART_RST_M), 
	.Signal(TX_BUSY), 
	.enable_pulse(FIFO_RD_INC), 
	.test_si(SPCBSCAN_N19), 
	.test_se(n36), 
	.SPCASCAN_N7(SPCASCAN_N7), 
	.SPCASCAN_N8(SPCBSCAN_N16));
   Reg_File_WIDTH8_ADD_WIDTH4_DEPTH16_test_1 u_RegFile (.WrData({ RF_Wr_Data[7],
		RF_Wr_Data[6],
		RF_Wr_Data[5],
		RF_Wr_Data[4],
		RF_Wr_Data[3],
		RF_Wr_Data[2],
		RF_Wr_Data[1],
		RF_Wr_Data[0] }), 
	.Address({ RF_ADDR[3],
		RF_ADDR[2],
		RF_ADDR[1],
		RF_ADDR[0] }), 
	.WrEn(RF_WrEn), 
	.RdEn(RF_RdEn), 
	.clk(REF_CLK_M__L10_N10), 
	.rst(SYNC_REF_RST_M), 
	.RdData({ RF_Rd_Data[7],
		RF_Rd_Data[6],
		RF_Rd_Data[5],
		RF_Rd_Data[4],
		RF_Rd_Data[3],
		RF_Rd_Data[2],
		RF_Rd_Data[1],
		RF_Rd_Data[0] }), 
	.Rd_D_Valid(RF_Rd_Data_Valid), 
	.REG0({ ALU_OP_A[7],
		ALU_OP_A[6],
		ALU_OP_A[5],
		ALU_OP_A[4],
		ALU_OP_A[3],
		ALU_OP_A[2],
		ALU_OP_A[1],
		ALU_OP_A[0] }), 
	.REG1({ ALU_OP_B[7],
		ALU_OP_B[6],
		ALU_OP_B[5],
		ALU_OP_B[4],
		ALU_OP_B[3],
		ALU_OP_B[2],
		ALU_OP_B[1],
		ALU_OP_B[0] }), 
	.REG2({ CONFIG[7],
		CONFIG[6],
		CONFIG[5],
		CONFIG[4],
		CONFIG[3],
		CONFIG[2],
		CONFIG[1],
		CONFIG[0] }), 
	.REG3({ TX_CLK_DIV_RATIO[7],
		TX_CLK_DIV_RATIO[6],
		TX_CLK_DIV_RATIO[5],
		TX_CLK_DIV_RATIO[4],
		TX_CLK_DIV_RATIO[3],
		TX_CLK_DIV_RATIO[2],
		TX_CLK_DIV_RATIO[1],
		TX_CLK_DIV_RATIO[0] }), 
	.test_si2(SI[1]), 
	.test_si1(RF_Rd_Data[4]), 
	.test_so2(n8), 
	.test_se(n30), 
	.test_so1_BAR(n54), 
	.SYNC_REF_RST(SYNC_REF_RST), 
	.SPCASCAN_N5(SPCASCAN_N5), 
	.FE_OFN0_SYNC_REF_RST_M(FE_OFN0_SYNC_REF_RST_M), 
	.FE_OFN1_SYNC_REF_RST_M(FE_OFN1_SYNC_REF_RST_M), 
	.REF_CLK_M__L10_N12(REF_CLK_M__L10_N12), 
	.REF_CLK_M__L10_N13(REF_CLK_M__L10_N13), 
	.REF_CLK_M__L10_N14(REF_CLK_M__L10_N14), 
	.REF_CLK_M__L10_N15(REF_CLK_M__L10_N15), 
	.REF_CLK_M__L10_N4(REF_CLK_M__L10_N4), 
	.REF_CLK_M__L10_N5(REF_CLK_M__L10_N5), 
	.REF_CLK_M__L10_N8(REF_CLK_M__L10_N8), 
	.REF_CLK_M__L10_N9(REF_CLK_M__L10_N9));
   RST_Sync_NUM_STAGES2_test_0 u_REF_RST_Sync (.CLK(REF_CLK_M__L10_N11), 
	.RST(RST_M), 
	.sync_RST(SYNC_REF_RST), 
	.test_si(n12), 
	.test_so(n12), 
	.test_se(n31), 
	.SPCASCAN_N1(SPCASCAN_N1));
   RST_Sync_NUM_STAGES2_test_1 u_UART_RST_Sync (.CLK(UART_CLK_M__L14_N0), 
	.RST(RST_M), 
	.sync_RST(SYNC_UART_RST), 
	.test_si(SPCASCAN_N13), 
	.test_so(n4), 
	.test_se(n37));
   CLK_GATE u_CLK_GATE (.CLK_EN(_0_net_), 
	.CLK(REF_CLK_M__L3_N0), 
	.GATED_CLK(ALU_CLK));
   Sys_Ctrl_DATA_WIDTH8_test_1 u_SysCtrl (.CLK(REF_CLK_M__L10_N0), 
	.RST(SYNC_REF_RST_M), 
	.ALU_OUT({ ALU_OUT[15],
		ALU_OUT[14],
		ALU_OUT[13],
		ALU_OUT[12],
		ALU_OUT[11],
		ALU_OUT[10],
		ALU_OUT[9],
		ALU_OUT[8],
		ALU_OUT[7],
		ALU_OUT[6],
		ALU_OUT[5],
		ALU_OUT[4],
		ALU_OUT[3],
		ALU_OUT[2],
		ALU_OUT[1],
		ALU_OUT[0] }), 
	.OUT_VALID(ALU_OUT_VALID), 
	.RF_RdData({ RF_Rd_Data[7],
		RF_Rd_Data[6],
		RF_Rd_Data[5],
		RF_Rd_Data[4],
		RF_Rd_Data[3],
		RF_Rd_Data[2],
		RF_Rd_Data[1],
		RF_Rd_Data[0] }), 
	.Rd_D_Valid(RF_Rd_Data_Valid), 
	.RX_P_DATA({ Sync_RX_P_DATA[7],
		Sync_RX_P_DATA[6],
		Sync_RX_P_DATA[5],
		Sync_RX_P_DATA[4],
		Sync_RX_P_DATA[3],
		Sync_RX_P_DATA[2],
		Sync_RX_P_DATA[1],
		Sync_RX_P_DATA[0] }), 
	.RX_D_VALID(Sync_RX_D_VALID), 
	.FIFO_FULL(FIFO_FULL), 
	.ALU_FUN({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.ALU_EN(ALU_EN), 
	.CLK_EN(CLK_Gate_EN), 
	.RF_WrData({ RF_Wr_Data[7],
		RF_Wr_Data[6],
		RF_Wr_Data[5],
		RF_Wr_Data[4],
		RF_Wr_Data[3],
		RF_Wr_Data[2],
		RF_Wr_Data[1],
		RF_Wr_Data[0] }), 
	.RF_ADDR({ RF_ADDR[3],
		RF_ADDR[2],
		RF_ADDR[1],
		RF_ADDR[0] }), 
	.WrEn(RF_WrEn), 
	.RdEn(RF_RdEn), 
	.FIFO_W_INC(FIFO_WR_INC), 
	.FIFO_WR_DATA({ FIFO_WR_DATA[7],
		FIFO_WR_DATA[6],
		FIFO_WR_DATA[5],
		FIFO_WR_DATA[4],
		FIFO_WR_DATA[3],
		FIFO_WR_DATA[2],
		FIFO_WR_DATA[1],
		FIFO_WR_DATA[0] }), 
	.test_si2(RF_ADDR[0]), 
	.test_si1(SPCASCAN_N5), 
	.test_se(n23), 
	.SPCASCAN_N13(SPCASCAN_N13), 
	.SPCASCAN_N14(SPCASCAN_N14), 
	.FE_PT1_SI_0_(SI[0]), 
	.FE_OFN0_SYNC_REF_RST_M(FE_OFN0_SYNC_REF_RST_M), 
	.FE_OFN1_SYNC_REF_RST_M(FE_OFN1_SYNC_REF_RST_M), 
	.REF_CLK_M__L10_N10(REF_CLK_M__L10_N10), 
	.REF_CLK_M__L10_N11(REF_CLK_M__L10_N11), 
	.REF_CLK_M__L10_N8(REF_CLK_M__L10_N8), 
	.REF_CLK_M__L10_N9(REF_CLK_M__L10_N9));
   UART_test_1 u_UART (.TX_CLK(TX_CLK_M__L4_N1), 
	.RX_CLK(RX_CLK_M__L4_N0), 
	.RST(SYNC_UART_RST_M), 
	.Prescale({ CONFIG[7],
		CONFIG[6],
		CONFIG[5],
		CONFIG[4],
		CONFIG[3],
		CONFIG[2] }), 
	.PAR_EN(CONFIG[0]), 
	.PAR_TYP(CONFIG[1]), 
	.TX_P_DATA({ FIFO_RD_DATA[7],
		FIFO_RD_DATA[6],
		FIFO_RD_DATA[5],
		FIFO_RD_DATA[4],
		FIFO_RD_DATA[3],
		FIFO_RD_DATA[2],
		FIFO_RD_DATA[1],
		FIFO_RD_DATA[0] }), 
	.TX_DATA_VALID(n1), 
	.TX_OUT(UART_TX_O), 
	.TX_BUSY(TX_BUSY), 
	.RX_IN(UART_RX_IN), 
	.RX_P_DATA({ RX_P_DATA[7],
		RX_P_DATA[6],
		RX_P_DATA[5],
		RX_P_DATA[4],
		RX_P_DATA[3],
		RX_P_DATA[2],
		RX_P_DATA[1],
		RX_P_DATA[0] }), 
	.framing_error(framing_error), 
	.RX_DATA_VALID(RX_D_VALID), 
	.test_si2(FIFO_RD_INC), 
	.test_si1(n4), 
	.test_so1(n5), 
	.test_se(n26), 
	.parity_error_BAR(n55), 
	.SPCASCAN_N7(FIFO_RD_INC), 
	.SPCASCAN_N8(SPCASCAN_N8), 
	.FE_PT1_n4(RX_P_DATA[3]), 
	.SPCBSCAN_N16(SPCBSCAN_N16), 
	.FE_PT1_SPCASCAN_N7(SPCASCAN_N7), 
	.SPCBSCAN_N19(SPCBSCAN_N19), 
	.RX_CLK_M__L4_N1(RX_CLK_M__L4_N1));
   CLKINVX2M U6 (.Y(SO[3]), 
	.A(n53));
   CLKINVX2M U10 (.Y(SO[2]), 
	.A(n54));
   CLKINVX12M U13 (.Y(parity_error), 
	.A(n55));
   CLKINVX2M U14 (.Y(SO[0]), 
	.A(n55));
endmodule

