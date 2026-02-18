////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : ALU8Bit.vf
// /___/   /\     Timestamp : 02/17/2026 16:25:16
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/shared/SharedProjects/EE533Lab5-main/PipelinedDatapath/ALU8Bit.sch ALU8Bit.vf
//Design Name: ALU8Bit
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module M2_1_MXILINX_ALU8Bit(D0, 
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

module ALU8Bit(a, 
               b, 
               cin, 
               op, 
               cout, 
               res);

    input [7:0] a;
    input [7:0] b;
    input cin;
    input [2:0] op;
   output cout;
   output [7:0] res;
   
   wire Car0;
   wire Car1;
   wire Car2;
   wire Car3;
   wire Car4;
   wire Car5;
   wire Car6;
   wire Car7;
   wire XLXN_65;
   wire XLXN_66;
   wire XLXN_69;
   wire XLXN_70;
   wire XLXN_81;
   wire XLXN_82;
   wire [7:0] res_DUMMY;
   
   assign res[7:0] = res_DUMMY[7:0];
   ALU1Bit XLXI_1 (.a(a[0]), 
                   .b(b[0]), 
                   .cin(XLXN_65), 
                   .op(op[2:0]), 
                   .cout(Car0), 
                   .res(res_DUMMY[0]));
   ALU1Bit XLXI_2 (.a(a[1]), 
                   .b(b[1]), 
                   .cin(Car0), 
                   .op(op[2:0]), 
                   .cout(Car1), 
                   .res(res_DUMMY[1]));
   ALU1Bit XLXI_3 (.a(a[2]), 
                   .b(b[2]), 
                   .cin(Car1), 
                   .op(op[2:0]), 
                   .cout(Car2), 
                   .res(res_DUMMY[2]));
   ALU1Bit XLXI_4 (.a(a[3]), 
                   .b(b[3]), 
                   .cin(Car2), 
                   .op(op[2:0]), 
                   .cout(Car3), 
                   .res(res_DUMMY[3]));
   ALU1Bit XLXI_5 (.a(a[4]), 
                   .b(b[4]), 
                   .cin(Car3), 
                   .op(op[2:0]), 
                   .cout(Car4), 
                   .res(res_DUMMY[4]));
   ALU1Bit XLXI_6 (.a(a[5]), 
                   .b(b[5]), 
                   .cin(Car4), 
                   .op(op[2:0]), 
                   .cout(Car5), 
                   .res(res_DUMMY[5]));
   ALU1Bit XLXI_7 (.a(a[6]), 
                   .b(b[6]), 
                   .cin(Car5), 
                   .op(op[2:0]), 
                   .cout(Car6), 
                   .res(res_DUMMY[6]));
   ALU1Bit XLXI_8 (.a(a[7]), 
                   .b(b[7]), 
                   .cin(Car6), 
                   .op(op[2:0]), 
                   .cout(Car7), 
                   .res(res_DUMMY[7]));
   AND2B1 XLXI_9 (.I0(XLXN_66), 
                  .I1(cin), 
                  .O(XLXN_65));
   AND2 XLXI_10 (.I0(op[2]), 
                 .I1(op[1]), 
                 .O(XLXN_66));
   AND4 XLXI_11 (.I0(res_DUMMY[4]), 
                 .I1(res_DUMMY[5]), 
                 .I2(res_DUMMY[6]), 
                 .I3(res_DUMMY[7]), 
                 .O(XLXN_69));
   AND4 XLXI_12 (.I0(res_DUMMY[0]), 
                 .I1(res_DUMMY[1]), 
                 .I2(res_DUMMY[2]), 
                 .I3(res_DUMMY[3]), 
                 .O(XLXN_70));
   AND2 XLXI_13 (.I0(XLXN_70), 
                 .I1(XLXN_69), 
                 .O(XLXN_81));
   M2_1_MXILINX_ALU8Bit XLXI_14 (.D0(Car7), 
                                 .D1(XLXN_81), 
                                 .S0(XLXN_82), 
                                 .O(cout));
   // synthesis attribute HU_SET of XLXI_14 is "XLXI_14_0"
   AND3B1 XLXI_16 (.I0(op[1]), 
                   .I1(op[2]), 
                   .I2(op[0]), 
                   .O(XLXN_82));
endmodule
