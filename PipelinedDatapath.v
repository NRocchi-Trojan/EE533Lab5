////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : PipelinedDatapath.vf
// /___/   /\     Timestamp : 02/14/2026 14:52:53
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w Z:/lab/EE533Lab5/PipelinedDatapath/pipeline/PipelinedDatapath.sch PipelinedDatapath.vf
//Design Name: PipelinedDatapath
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 100 ps / 10 ps

module CB8CE_HXILINX_PipelinedDatapath(CEO, Q, TC, C, CE, CLR);
   
   parameter TERMINAL_COUNT = 8'b1111_1111;
   
   output             CEO;
   output [7:0]       Q;
   output             TC;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   
   reg   [7:0]        Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 8'b0000_0000;
	else if (CE)
	  Q <= Q + 1;
     end
   
   assign CEO = TC & CE;
   assign TC = Q == TERMINAL_COUNT;
   
endmodule
`timescale 1ns / 1ps

module PipelinedDatapath(clk, 
                         wea);

    input clk;
    input wea;
   
   wire [7:0] InstAddr;
   wire [15:0] InstID;
   wire [31:0] InstIF;
   wire [63:0] R1out;
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
   wire XLXN_48;
   wire [63:0] XLXN_50;
   wire XLXN_55;
   wire XLXN_56;
   
   IFISReg XLXI_1 (.clk(clk), 
                   .inst(InstIF[15:0]), 
                   .instOut(InstID[15:0]));
   reg_file XLXI_13 (.clk(clk), 
                     .r0addr(InstID[12:11]), 
                     .r1addr(InstID[9:8]), 
                     .waddr(XLXN_46[1:0]), 
                     .wdata(XLXN_14[63:0]), 
                     .wena(XLXN_44), 
                     .r0data(XLXN_16[63:0]), 
                     .r1data(XLXN_15[63:0]));
   IntStageReg XLXI_16 (.clk(clk), 
                        .REG1I(XLXN_16[63:0]), 
                        .REG2I(XLXN_15[63:0]), 
                        .WMEI(InstID[15]), 
                        .WREG1I(InstID[6:5]), 
                        .WREI(InstID[14]), 
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
                        .REG1O(R1out[63:0]), 
                        .REG2O(XLXN_50[63:0]), 
                        .WMEO(XLXN_48), 
                        .WREG1O(XLXN_45[1:0]), 
                        .WREO(XLXN_43));
   MEMWBStageReg XLXI_20 (.clk(clk), 
                          .WDataI(XLXN_47[63:0]), 
                          .WREG1I(XLXN_45[1:0]), 
                          .WREI(XLXN_43), 
                          .WDataO(XLXN_14[63:0]), 
                          .WREG1O(XLXN_46[1:0]), 
                          .WREO(XLXN_44));
   DMemInterface XLXI_21 (.addra(R1out[7:0]), 
                          .addrb(), 
                          .clka(clk), 
                          .clkb(clk), 
                          .dina(XLXN_50[63:0]), 
                          .wea(XLXN_48), 
                          .doutb(XLXN_47[63:0]));
   CB8CE_HXILINX_PipelinedDatapath XLXI_23 (.C(clk), 
                                            .CE(XLXN_56), 
                                            .CLR(XLXN_55), 
                                            .CEO(), 
                                            .Q(InstAddr[7:0]), 
                                            .TC());
   // synthesis attribute HU_SET of XLXI_23 is "XLXI_23_0"
   GND XLXI_24 (.G(XLXN_55));
   VCC XLXI_25 (.P(XLXN_56));
   IMemInterface XLXI_26 (.addra(InstAddr[7:0]), 
                          .clka(clk), 
                          .dina(), 
                          .wea(wea), 
                          .douta(InstIF[31:0]));
endmodule
