//* 
//*###############################################################################
//*#                                                    
//*#        Technology     : TSMC 16nm CMOS Logic FinFet (FFC) HKMG
//*#        Memory Type    : TSMC 16nm FFC Two Port Register File with d130 bit cell
//*#        Library Name   : ts6n16ffcllsvta16x32m2fw (user specify : ts6n16ffcllsvta16x32m2fw)
//*#        Library Version: 170a
//*#        Generated Time : 2025/06/18, 12:58:42
//*###############################################################################
//*# STATEMENT OF USE                                                             
//*#                                                                              
//*#  This information contains confidential and proprietary information of TSMC. 
//*# No part of this information may be reproduced, transmitted, transcribed,     
//*# stored in a retrieval system, or translated into any human or computer       
//*# language, in any form or by any means, electronic, mechanical, magnetic,     
//*# optical, chemical, manual, or otherwise, without the prior written permission
//*# of TSMC. This information was prepared for informational purpose and is for  
//*# use by TSMC's customers only. TSMC reserves the right to make changes in the 
//*# inforrmation at any time and without notice.                                 
//*
//*###############################################################################
//*VERSION 5.7 ;
//*BUSBITCHARS "[]" ;
//*DIVIDERCHAR "/" ;
//*******************************************************************************
//* Memory Name: TS6N16FFCLLSVTA16X32M2FW
//* Model Type: Synthesizable Verilog Model
//*                                                                              
//*******************************************************************************
//*                                                                              
//*      Usage Limitation: PLEASE READ CAREFULLY FOR CORRECT USAGE               
//*
//* This is a synthesizable model. This model only support simple functionality
//*       a. read and write operations
//*       b. power mode switch behavior
//*       c. BIST function
//*       d. AWT function
//*       e. column redundancy function
//*                                                                              
//* Please be careful when using non 2^n  memory.                                
//* In a non-fully decoded array, a write cycle to a nonexistent address location
//* does not change the memory array contents and output remains the same.       
//* In a non-fully decoded array, a read cycle to a nonexistent address location 
//* does not change the memory array contents but the output becomes unknown.    
//*
//* The model doesn't identify physical column and row address
//*
//* Template Version : S_02_42001                                       
//*******************************************************************************

`timescale 1ns/1ps

module TS6N16FFCLLSVTA16X32M2FW
  (AA,
  D,
  BWEB,
  WEB,CLKW,
  AB,
  REB,CLKR,
            RCT,
            WCT,
            KP,
  Q);

// Parameter declarations
parameter  numIOBit = 32;
parameter  numWord = 16;
parameter  numWordAddr = 4;

// Input-Output declarations
input [numWordAddr-1:0] AA;                // Address write bus
input [numIOBit-1:0] D;                 // Date input bus
input [numIOBit-1:0] BWEB;              // BW data input bus
input         WEB;               // Active-low Write enable
input         CLKW;              // Clock
input [numWordAddr-1:0] AB;                // Address read bus 
input         REB;               // Active-low Read enable
input         CLKR;              // Clock
// Test Mode
input [1:0] RCT;
input [1:0] WCT;
input [2:0] KP;
output [numIOBit-1:0] Q;                 // Data output bus
             

reg [numIOBit-1:0] mem[numWord-1:0];
reg [numIOBit-1:0] dout_tmp;
reg [numIOBit-1:0] din_tmp;



wire [numWordAddr-1:0] iAA = AA;
wire [numWordAddr-1:0] iAB = AB;
wire [numIOBit-1:0] iD = D;
wire [numIOBit-1:0] iBWEB = BWEB;
wire iREB = REB;
wire iWEB = WEB;

wire pwr_mode = 1'b0;






wire [numIOBit-1:0] Q_int;

assign Q_int = dout_tmp;

assign Q = pwr_mode? {numIOBit{1'b0}} : Q_int;



always @(posedge CLKR) begin
    if (pwr_mode == 1'b0) begin
        if (iREB == 1'b0) begin
            dout_tmp <= mem[iAB];
        end
    end
end

genvar i;
 
generate
for (i=0; i<numIOBit; i=i+1) begin: BIT_WISE
always @(posedge CLKW) begin
        if (iWEB == 1'b0) begin // write
            if (~iBWEB[i]) begin              // write
                mem[iAA][i] <= iD[i]; 
            end
        end
end
end // BIT_WISE
endgenerate


endmodule

