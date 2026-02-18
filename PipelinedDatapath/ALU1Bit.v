////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : ALU1Bit.vf
// /___/   /\     Timestamp : 02/17/2026 16:25:11
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/shared/SharedProjects/EE533Lab5-main/PipelinedDatapath/ALU1Bit.sch ALU1Bit.vf
//Design Name: ALU1Bit
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module M2_1_MXILINX_ALU1Bit(D0, 
                            D1, 
                            S0, 
                            O);

    input D0;
    input D1;
    input S0;
   output O;
   
   wire M0;
   wire M1;
   
   AND2B1 I_36_7 (.I0(S0), 
                  .I1(D0), 
                  .O(M0));
   OR2 I_36_8 (.I0(M1), 
               .I1(M0), 
               .O(O));
   AND2 I_36_9 (.I0(D1), 
                .I1(S0), 
                .O(M1));
endmodule
`timescale 1ns / 1ps

module M2_1E_MXILINX_ALU1Bit(D0, 
                             D1, 
                             E, 
                             S0, 
                             O);

    input D0;
    input D1;
    input E;
    input S0;
   output O;
   
   wire M0;
   wire M1;
   
   AND3 I_36_30 (.I0(D1), 
                 .I1(E), 
                 .I2(S0), 
                 .O(M1));
   AND3B1 I_36_31 (.I0(S0), 
                   .I1(E), 
                   .I2(D0), 
                   .O(M0));
   OR2 I_36_38 (.I0(M1), 
                .I1(M0), 
                .O(O));
endmodule
`timescale 1ns / 1ps

module M8_1E_MXILINX_ALU1Bit(D0, 
                             D1, 
                             D2, 
                             D3, 
                             D4, 
                             D5, 
                             D6, 
                             D7, 
                             E, 
                             S0, 
                             S1, 
                             S2, 
                             O);

    input D0;
    input D1;
    input D2;
    input D3;
    input D4;
    input D5;
    input D6;
    input D7;
    input E;
    input S0;
    input S1;
    input S2;
   output O;
   
   wire M01;
   wire M03;
   wire M23;
   wire M45;
   wire M47;
   wire M67;
   
   M2_1E_MXILINX_ALU1Bit I_M01 (.D0(D0), 
                                .D1(D1), 
                                .E(E), 
                                .S0(S0), 
                                .O(M01));
   // synthesis attribute HU_SET of I_M01 is "I_M01_3"
   MUXF5_L I_M03 (.I0(M01), 
                  .I1(M23), 
                  .S(S1), 
                  .LO(M03));
   M2_1E_MXILINX_ALU1Bit I_M23 (.D0(D2), 
                                .D1(D3), 
                                .E(E), 
                                .S0(S0), 
                                .O(M23));
   // synthesis attribute HU_SET of I_M23 is "I_M23_2"
   M2_1E_MXILINX_ALU1Bit I_M45 (.D0(D4), 
                                .D1(D5), 
                                .E(E), 
                                .S0(S0), 
                                .O(M45));
   // synthesis attribute HU_SET of I_M45 is "I_M45_1"
   MUXF5_L I_M47 (.I0(M45), 
                  .I1(M67), 
                  .S(S1), 
                  .LO(M47));
   M2_1E_MXILINX_ALU1Bit I_M67 (.D0(D6), 
                                .D1(D7), 
                                .E(E), 
                                .S0(S0), 
                                .O(M67));
   // synthesis attribute HU_SET of I_M67 is "I_M67_0"
   MUXF6 I_O (.I0(M03), 
              .I1(M47), 
              .S(S2), 
              .O(O));
endmodule
`timescale 1ns / 1ps

module ALU1Bit(a, 
               b, 
               cin, 
               op, 
               cout, 
               res);

    input a;
    input b;
    input cin;
    input [2:0] op;
   output cout;
   output res;
   
   wire ANDRes;
   wire ORRes;
   wire SUM;
   wire XLXN_9;
   wire XLXN_15;
   wire XLXN_20;
   wire XLXN_21;
   wire XLXN_32;
   wire XLXN_46;
   wire XLXN_49;
   wire XLXN_84;
   wire XLXN_93;
   
   AND2 XLXI_1 (.I0(b), 
                .I1(a), 
                .O(ANDRes));
   OR2 XLXI_2 (.I0(b), 
               .I1(a), 
               .O(ORRes));
   XOR3 XLXI_3 (.I0(cin), 
                .I1(b), 
                .I2(a), 
                .O(SUM));
   VCC XLXI_5 (.P(XLXN_9));
   OR2 XLXI_6 (.I0(XLXN_21), 
               .I1(XLXN_20), 
               .O(XLXN_32));
   AND2 XLXI_7 (.I0(cin), 
                .I1(XLXN_15), 
                .O(XLXN_20));
   AND2 XLXI_8 (.I0(b), 
                .I1(XLXN_93), 
                .O(XLXN_21));
   XOR2 XLXI_9 (.I0(b), 
                .I1(XLXN_93), 
                .O(XLXN_15));
   M2_1_MXILINX_ALU1Bit XLXI_15 (.D0(XLXN_32), 
                                 .D1(a), 
                                 .S0(XLXN_49), 
                                 .O(cout));
   // synthesis attribute HU_SET of XLXI_15 is "XLXI_15_5"
   M8_1E_MXILINX_ALU1Bit XLXI_18 (.D0(ANDRes), 
                                  .D1(ORRes), 
                                  .D2(SUM), 
                                  .D3(SUM), 
                                  .D4(XLXN_46), 
                                  .D5(XLXN_46), 
                                  .D6(cin), 
                                  .D7(cin), 
                                  .E(XLXN_9), 
                                  .S0(op[0]), 
                                  .S1(op[1]), 
                                  .S2(op[2]), 
                                  .O(res));
   // synthesis attribute HU_SET of XLXI_18 is "XLXI_18_4"
   XNOR2 XLXI_22 (.I0(b), 
                  .I1(a), 
                  .O(XLXN_46));
   AND2 XLXI_24 (.I0(op[1]), 
                 .I1(op[2]), 
                 .O(XLXN_49));
   XOR2 XLXI_39 (.I0(XLXN_84), 
                 .I1(a), 
                 .O(XLXN_93));
   AND2 XLXI_40 (.I0(op[1]), 
                 .I1(op[0]), 
                 .O(XLXN_84));
endmodule
