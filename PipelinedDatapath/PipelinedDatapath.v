////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : PipelinedDatapath.vf
// /___/   /\     Timestamp : 02/17/2026 18:13:02
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w Z:/shared/SharedProjects/EE533Lab5-main/PipelinedDatapath/PipelinedDatapath.sch PipelinedDatapath.vf
//Design Name: PipelinedDatapath
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module FTCE_MXILINX_PipelinedDatapath(C, 
                                      CE, 
                                      CLR, 
                                      T, 
                                      Q);

    input C;
    input CE;
    input CLR;
    input T;
   output Q;
   
   wire TQ;
   wire Q_DUMMY;
   
   assign Q = Q_DUMMY;
   XOR2 I_36_32 (.I0(T), 
                 .I1(Q_DUMMY), 
                 .O(TQ));
   FDCE I_36_35 (.C(C), 
                 .CE(CE), 
                 .CLR(CLR), 
                 .D(TQ), 
                 .Q(Q_DUMMY));
   // synthesis attribute RLOC of I_36_35 is "X0Y0"
   defparam I_36_35.INIT = 1'b0;
endmodule
`timescale 1ns / 1ps

module CB8CE_MXILINX_PipelinedDatapath(C, 
                                       CE, 
                                       CLR, 
                                       CEO, 
                                       Q, 
                                       TC);

    input C;
    input CE;
    input CLR;
   output CEO;
   output [7:0] Q;
   output TC;
   
   wire T2;
   wire T3;
   wire T4;
   wire T5;
   wire T6;
   wire T7;
   wire XLXN_1;
   wire [7:0] Q_DUMMY;
   wire TC_DUMMY;
   
   assign Q[7:0] = Q_DUMMY[7:0];
   assign TC = TC_DUMMY;
   FTCE_MXILINX_PipelinedDatapath I_Q0 (.C(C), 
                                        .CE(CE), 
                                        .CLR(CLR), 
                                        .T(XLXN_1), 
                                        .Q(Q_DUMMY[0]));
   // synthesis attribute HU_SET of I_Q0 is "I_Q0_6"
   FTCE_MXILINX_PipelinedDatapath I_Q1 (.C(C), 
                                        .CE(CE), 
                                        .CLR(CLR), 
                                        .T(Q_DUMMY[0]), 
                                        .Q(Q_DUMMY[1]));
   // synthesis attribute HU_SET of I_Q1 is "I_Q1_7"
   FTCE_MXILINX_PipelinedDatapath I_Q2 (.C(C), 
                                        .CE(CE), 
                                        .CLR(CLR), 
                                        .T(T2), 
                                        .Q(Q_DUMMY[2]));
   // synthesis attribute HU_SET of I_Q2 is "I_Q2_3"
   FTCE_MXILINX_PipelinedDatapath I_Q3 (.C(C), 
                                        .CE(CE), 
                                        .CLR(CLR), 
                                        .T(T3), 
                                        .Q(Q_DUMMY[3]));
   // synthesis attribute HU_SET of I_Q3 is "I_Q3_4"
   FTCE_MXILINX_PipelinedDatapath I_Q4 (.C(C), 
                                        .CE(CE), 
                                        .CLR(CLR), 
                                        .T(T4), 
                                        .Q(Q_DUMMY[4]));
   // synthesis attribute HU_SET of I_Q4 is "I_Q4_5"
   FTCE_MXILINX_PipelinedDatapath I_Q5 (.C(C), 
                                        .CE(CE), 
                                        .CLR(CLR), 
                                        .T(T5), 
                                        .Q(Q_DUMMY[5]));
   // synthesis attribute HU_SET of I_Q5 is "I_Q5_2"
   FTCE_MXILINX_PipelinedDatapath I_Q6 (.C(C), 
                                        .CE(CE), 
                                        .CLR(CLR), 
                                        .T(T6), 
                                        .Q(Q_DUMMY[6]));
   // synthesis attribute HU_SET of I_Q6 is "I_Q6_1"
   FTCE_MXILINX_PipelinedDatapath I_Q7 (.C(C), 
                                        .CE(CE), 
                                        .CLR(CLR), 
                                        .T(T7), 
                                        .Q(Q_DUMMY[7]));
   // synthesis attribute HU_SET of I_Q7 is "I_Q7_0"
   AND5 I_36_1 (.I0(Q_DUMMY[7]), 
                .I1(Q_DUMMY[6]), 
                .I2(Q_DUMMY[5]), 
                .I3(Q_DUMMY[4]), 
                .I4(T4), 
                .O(TC_DUMMY));
   AND2 I_36_2 (.I0(Q_DUMMY[4]), 
                .I1(T4), 
                .O(T5));
   AND3 I_36_11 (.I0(Q_DUMMY[5]), 
                 .I1(Q_DUMMY[4]), 
                 .I2(T4), 
                 .O(T6));
   AND4 I_36_15 (.I0(Q_DUMMY[3]), 
                 .I1(Q_DUMMY[2]), 
                 .I2(Q_DUMMY[1]), 
                 .I3(Q_DUMMY[0]), 
                 .O(T4));
   VCC I_36_16 (.P(XLXN_1));
   AND2 I_36_24 (.I0(Q_DUMMY[1]), 
                 .I1(Q_DUMMY[0]), 
                 .O(T2));
   AND3 I_36_26 (.I0(Q_DUMMY[2]), 
                 .I1(Q_DUMMY[1]), 
                 .I2(Q_DUMMY[0]), 
                 .O(T3));
   AND4 I_36_28 (.I0(Q_DUMMY[6]), 
                 .I1(Q_DUMMY[5]), 
                 .I2(Q_DUMMY[4]), 
                 .I3(T4), 
                 .O(T7));
   AND2 I_36_31 (.I0(CE), 
                 .I1(TC_DUMMY), 
                 .O(CEO));
endmodule
`timescale 1ns / 1ps

module PipelinedDatapath(clk, 
                         InstData, 
                         rst, 
                         wea);

    input clk;
    input [31:0] InstData;
    input rst;
    input wea;
   
   wire [7:0] InstAddr;
   wire [31:0] InstID;
   wire [31:0] InstIF;
   wire [63:0] RegData1;
   wire [1:0] XLXN_3;
   wire [63:0] XLXN_4;
   wire [63:0] XLXN_5;
   wire XLXN_6;
   wire XLXN_7;
   wire [63:0] XLXN_14;
   wire [63:0] XLXN_15;
   wire [63:0] XLXN_16;
   wire XLXN_43;
   wire XLXN_44;
   wire [1:0] XLXN_45;
   wire [1:0] XLXN_46;
   wire [63:0] XLXN_47;
   wire [63:0] XLXN_50;
   wire XLXN_65;
   
   reg_file XLXI_13 (.clk(clk), 
                     .r0addr(InstID[9:8]), 
                     .r1addr(InstID[11:10]), 
                     .waddr(XLXN_46[1:0]), 
                     .wdata(XLXN_14[63:0]), 
                     .wena(XLXN_44), 
                     .r0data(XLXN_16[63:0]), 
                     .r1data(XLXN_15[63:0]));
   IntStageReg XLXI_16 (.clk(clk), 
                        .REG1I(XLXN_16[63:0]), 
                        .REG2I(XLXN_15[63:0]), 
                        .WMEI(InstID[31]), 
                        .WREG1I(InstID[29:28]), 
                        .WREI(InstID[30]), 
                        .REG1O(XLXN_5[63:0]), 
                        .REG2O(XLXN_4[63:0]), 
                        .WMEO(XLXN_7), 
                        .WREG1O(XLXN_3[1:0]), 
                        .WREO(XLXN_6));
   IntStageReg XLXI_19 (.clk(clk), 
                        .REG1I(XLXN_5[63:0]), 
                        .REG2I(XLXN_4[63:0]), 
                        .WMEI(XLXN_7), 
                        .WREG1I(XLXN_3[1:0]), 
                        .WREI(XLXN_6), 
                        .REG1O(RegData1[63:0]), 
                        .REG2O(XLXN_50[63:0]), 
                        .WMEO(XLXN_65), 
                        .WREG1O(XLXN_45[1:0]), 
                        .WREO(XLXN_43));
   MEMWBStageReg XLXI_20 (.clk(clk), 
                          .WDataI(XLXN_47[63:0]), 
                          .WREG1I(XLXN_45[1:0]), 
                          .WREI(XLXN_43), 
                          .WDataO(XLXN_14[63:0]), 
                          .WREG1O(XLXN_46[1:0]), 
                          .WREO(XLXN_44));
   IFISReg XLXI_29 (.clk(clk), 
                    .Inst(InstIF[31:0]), 
                    .InstOut(InstID[31:0]));
   InstructionMem XLXI_32 (.addr(InstAddr[7:0]), 
                           .clk(clk), 
                           .din(InstData[31:0]), 
                           .we(wea), 
                           .dout(InstIF[31:0]));
   DataMemory XLXI_34 (.addra(RegData1[7:0]), 
                       .addrb(RegData1[7:0]), 
                       .clka(clk), 
                       .clkb(clk), 
                       .dina(XLXN_50[63:0]), 
                       .wea(XLXN_65), 
                       .doutb(XLXN_47[63:0]));
   CB8CE_MXILINX_PipelinedDatapath XLXI_35 (.C(clk), 
                                            .CE(clk), 
                                            .CLR(rst), 
                                            .CEO(), 
                                            .Q(InstAddr[7:0]), 
                                            .TC());
   // synthesis attribute HU_SET of XLXI_35 is "XLXI_35_8"
endmodule
