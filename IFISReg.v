////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : IFISReg.vf
// /___/   /\     Timestamp : 02/14/2026 14:52:33
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w Z:/lab/EE533Lab5/pipe/IFISReg.sch IFISReg.vf
//Design Name: IFISReg
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 100 ps / 10 ps

module FD16CE_HXILINX_IFISReg(Q, C, CE, CLR, D);

   
   output [15:0]      Q;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   input  [15:0]      D;
   
   reg    [15:0]      Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 16'b0000_0000_0000_0000;
	else if (CE)
          Q <= D;
     end
   
   
endmodule
`timescale 1ns / 1ps

module IFISReg(clk, 
               inst, 
               instOut);

    input clk;
    input [15:0] inst;
   output [15:0] instOut;
   
   wire XLXN_2;
   wire XLXN_4;
   
   FD16CE_HXILINX_IFISReg XLXI_1 (.C(clk), 
                                  .CE(XLXN_2), 
                                  .CLR(XLXN_4), 
                                  .D(inst[15:0]), 
                                  .Q(instOut[15:0]));
   // synthesis attribute HU_SET of XLXI_1 is "XLXI_1_0"
   GND XLXI_2 (.G(XLXN_4));
   VCC XLXI_3 (.P(XLXN_2));
endmodule
