// 
//###############################################################################
//#                                                    
//#        Technology     : TSMC 16nm CMOS Logic FinFet (FFC) HKMG
//#        Memory Type    : TSMC 16nm FFC Two Port Register File with d130 bit cell
//#        Library Name   : ts6n16ffcllsvta8x32m1fw (user specify : ts6n16ffcllsvta8x32m1fw)
//#        Library Version: 170a
//#        Generated Time : 2025/06/18, 13:10:29
//###############################################################################
//# STATEMENT OF USE                                                             
//#                                                                              
//#  This information contains confidential and proprietary information of TSMC. 
//# No part of this information may be reproduced, transmitted, transcribed,     
//# stored in a retrieval system, or translated into any human or computer       
//# language, in any form or by any means, electronic, mechanical, magnetic,     
//# optical, chemical, manual, or otherwise, without the prior written permission
//# of TSMC. This information was prepared for informational purpose and is for  
//# use by TSMC's customers only. TSMC reserves the right to make changes in the 
//# inforrmation at any time and without notice.                                 
//
//###############################################################################
//VERSION 5.7 ;
//BUSBITCHARS "[]" ;
//DIVIDERCHAR "/" ;
//* Template Version : S_05_52401                                               */
//****************************************************************************** */

`resetall

`timescale 1ns/1ps

//-------- Top module --------//

`enable_portfaults
`suppress_faults

module TS6N16FFCLLSVTA8X32M1FW (
  CLKW,
  CLKR,
  WEB,
  REB,
  AA,
  AB,
  D,
  Q,
  BWEB,
  RCT,
  WCT,
  KP
);

//-------- IO Ports --------//
input CLKW;
input CLKR;
input WEB;
input REB;
input [2:0] AA;
input [2:0] AB;
input [31:0] D;
output [31:0] Q;
input [31:0] BWEB;
input [1:0] RCT;
input [1:0] WCT;
input [2:0] KP;

//-------- Declare reg & wire --------//
wire b_CLKW;
wire b_CLKR;
wire b_WEB;
wire b_REB;
wire [2:0] b_AA;
wire [2:0] b_AB;
wire [31:0] b_D;
wire [31:0] b_Q;
wire [31:0] b_BWEB;

//-------- input buffering --------//
buf ub_CLKW (b_CLKW, CLKW);
buf ub_CLKR (b_CLKR, CLKR);
buf ub_WEB (b_WEB, WEB);
buf ub_REB (b_REB, REB);
buf ub_AA0 (b_AA[0], AA[0]);
buf ub_AA1 (b_AA[1], AA[1]);
buf ub_AA2 (b_AA[2], AA[2]);
buf ub_AB0 (b_AB[0], AB[0]);
buf ub_AB1 (b_AB[1], AB[1]);
buf ub_AB2 (b_AB[2], AB[2]);
buf ub_D0 (b_D[0], D[0]);
buf ub_D1 (b_D[1], D[1]);
buf ub_D2 (b_D[2], D[2]);
buf ub_D3 (b_D[3], D[3]);
buf ub_D4 (b_D[4], D[4]);
buf ub_D5 (b_D[5], D[5]);
buf ub_D6 (b_D[6], D[6]);
buf ub_D7 (b_D[7], D[7]);
buf ub_D8 (b_D[8], D[8]);
buf ub_D9 (b_D[9], D[9]);
buf ub_D10 (b_D[10], D[10]);
buf ub_D11 (b_D[11], D[11]);
buf ub_D12 (b_D[12], D[12]);
buf ub_D13 (b_D[13], D[13]);
buf ub_D14 (b_D[14], D[14]);
buf ub_D15 (b_D[15], D[15]);
buf ub_D16 (b_D[16], D[16]);
buf ub_D17 (b_D[17], D[17]);
buf ub_D18 (b_D[18], D[18]);
buf ub_D19 (b_D[19], D[19]);
buf ub_D20 (b_D[20], D[20]);
buf ub_D21 (b_D[21], D[21]);
buf ub_D22 (b_D[22], D[22]);
buf ub_D23 (b_D[23], D[23]);
buf ub_D24 (b_D[24], D[24]);
buf ub_D25 (b_D[25], D[25]);
buf ub_D26 (b_D[26], D[26]);
buf ub_D27 (b_D[27], D[27]);
buf ub_D28 (b_D[28], D[28]);
buf ub_D29 (b_D[29], D[29]);
buf ub_D30 (b_D[30], D[30]);
buf ub_D31 (b_D[31], D[31]);
buf ub_BWEB0 (b_BWEB[0], BWEB[0]);
buf ub_BWEB1 (b_BWEB[1], BWEB[1]);
buf ub_BWEB2 (b_BWEB[2], BWEB[2]);
buf ub_BWEB3 (b_BWEB[3], BWEB[3]);
buf ub_BWEB4 (b_BWEB[4], BWEB[4]);
buf ub_BWEB5 (b_BWEB[5], BWEB[5]);
buf ub_BWEB6 (b_BWEB[6], BWEB[6]);
buf ub_BWEB7 (b_BWEB[7], BWEB[7]);
buf ub_BWEB8 (b_BWEB[8], BWEB[8]);
buf ub_BWEB9 (b_BWEB[9], BWEB[9]);
buf ub_BWEB10 (b_BWEB[10], BWEB[10]);
buf ub_BWEB11 (b_BWEB[11], BWEB[11]);
buf ub_BWEB12 (b_BWEB[12], BWEB[12]);
buf ub_BWEB13 (b_BWEB[13], BWEB[13]);
buf ub_BWEB14 (b_BWEB[14], BWEB[14]);
buf ub_BWEB15 (b_BWEB[15], BWEB[15]);
buf ub_BWEB16 (b_BWEB[16], BWEB[16]);
buf ub_BWEB17 (b_BWEB[17], BWEB[17]);
buf ub_BWEB18 (b_BWEB[18], BWEB[18]);
buf ub_BWEB19 (b_BWEB[19], BWEB[19]);
buf ub_BWEB20 (b_BWEB[20], BWEB[20]);
buf ub_BWEB21 (b_BWEB[21], BWEB[21]);
buf ub_BWEB22 (b_BWEB[22], BWEB[22]);
buf ub_BWEB23 (b_BWEB[23], BWEB[23]);
buf ub_BWEB24 (b_BWEB[24], BWEB[24]);
buf ub_BWEB25 (b_BWEB[25], BWEB[25]);
buf ub_BWEB26 (b_BWEB[26], BWEB[26]);
buf ub_BWEB27 (b_BWEB[27], BWEB[27]);
buf ub_BWEB28 (b_BWEB[28], BWEB[28]);
buf ub_BWEB29 (b_BWEB[29], BWEB[29]);
buf ub_BWEB30 (b_BWEB[30], BWEB[30]);
buf ub_BWEB31 (b_BWEB[31], BWEB[31]);



//  internal SRAM IO signals
wire i_WEB;
wire i_REB;
wire [2:0] i_AA, i_AB;
wire [31:0] i_D;
wire [31:0] i_BWEB;
wire [31:0] ram_bweb;

//  optional pins

//  power control pins
wire peri_off;

//  Internal Wires
wire mode_sram_op;
wire ram_clk_w, ram_clk_r;

//  output pins
wire [31:0] Q_RAM;

//---- existing wire assignment after buffering

//-------- BIST pin selection --------//

buf ub_iWEB (i_WEB, b_WEB);
buf ub_iREB (i_REB, b_REB);
buf ub_iAA0 (i_AA[0], b_AA[0]);
buf ub_iAB0 (i_AB[0], b_AB[0]);
buf ub_iAA1 (i_AA[1], b_AA[1]);
buf ub_iAB1 (i_AB[1], b_AB[1]);
buf ub_iAA2 (i_AA[2], b_AA[2]);
buf ub_iAB2 (i_AB[2], b_AB[2]);
buf ub_iD0  (i_D[0], b_D[0]);
buf ub_iD1  (i_D[1], b_D[1]);
buf ub_iD2  (i_D[2], b_D[2]);
buf ub_iD3  (i_D[3], b_D[3]);
buf ub_iD4  (i_D[4], b_D[4]);
buf ub_iD5  (i_D[5], b_D[5]);
buf ub_iD6  (i_D[6], b_D[6]);
buf ub_iD7  (i_D[7], b_D[7]);
buf ub_iD8  (i_D[8], b_D[8]);
buf ub_iD9  (i_D[9], b_D[9]);
buf ub_iD10  (i_D[10], b_D[10]);
buf ub_iD11  (i_D[11], b_D[11]);
buf ub_iD12  (i_D[12], b_D[12]);
buf ub_iD13  (i_D[13], b_D[13]);
buf ub_iD14  (i_D[14], b_D[14]);
buf ub_iD15  (i_D[15], b_D[15]);
buf ub_iD16  (i_D[16], b_D[16]);
buf ub_iD17  (i_D[17], b_D[17]);
buf ub_iD18  (i_D[18], b_D[18]);
buf ub_iD19  (i_D[19], b_D[19]);
buf ub_iD20  (i_D[20], b_D[20]);
buf ub_iD21  (i_D[21], b_D[21]);
buf ub_iD22  (i_D[22], b_D[22]);
buf ub_iD23  (i_D[23], b_D[23]);
buf ub_iD24  (i_D[24], b_D[24]);
buf ub_iD25  (i_D[25], b_D[25]);
buf ub_iD26  (i_D[26], b_D[26]);
buf ub_iD27  (i_D[27], b_D[27]);
buf ub_iD28  (i_D[28], b_D[28]);
buf ub_iD29  (i_D[29], b_D[29]);
buf ub_iD30  (i_D[30], b_D[30]);
buf ub_iD31  (i_D[31], b_D[31]);
buf ub_iBWEB0  (i_BWEB[0], b_BWEB[0]);
buf ub_iBWEB1  (i_BWEB[1], b_BWEB[1]);
buf ub_iBWEB2  (i_BWEB[2], b_BWEB[2]);
buf ub_iBWEB3  (i_BWEB[3], b_BWEB[3]);
buf ub_iBWEB4  (i_BWEB[4], b_BWEB[4]);
buf ub_iBWEB5  (i_BWEB[5], b_BWEB[5]);
buf ub_iBWEB6  (i_BWEB[6], b_BWEB[6]);
buf ub_iBWEB7  (i_BWEB[7], b_BWEB[7]);
buf ub_iBWEB8  (i_BWEB[8], b_BWEB[8]);
buf ub_iBWEB9  (i_BWEB[9], b_BWEB[9]);
buf ub_iBWEB10  (i_BWEB[10], b_BWEB[10]);
buf ub_iBWEB11  (i_BWEB[11], b_BWEB[11]);
buf ub_iBWEB12  (i_BWEB[12], b_BWEB[12]);
buf ub_iBWEB13  (i_BWEB[13], b_BWEB[13]);
buf ub_iBWEB14  (i_BWEB[14], b_BWEB[14]);
buf ub_iBWEB15  (i_BWEB[15], b_BWEB[15]);
buf ub_iBWEB16  (i_BWEB[16], b_BWEB[16]);
buf ub_iBWEB17  (i_BWEB[17], b_BWEB[17]);
buf ub_iBWEB18  (i_BWEB[18], b_BWEB[18]);
buf ub_iBWEB19  (i_BWEB[19], b_BWEB[19]);
buf ub_iBWEB20  (i_BWEB[20], b_BWEB[20]);
buf ub_iBWEB21  (i_BWEB[21], b_BWEB[21]);
buf ub_iBWEB22  (i_BWEB[22], b_BWEB[22]);
buf ub_iBWEB23  (i_BWEB[23], b_BWEB[23]);
buf ub_iBWEB24  (i_BWEB[24], b_BWEB[24]);
buf ub_iBWEB25  (i_BWEB[25], b_BWEB[25]);
buf ub_iBWEB26  (i_BWEB[26], b_BWEB[26]);
buf ub_iBWEB27  (i_BWEB[27], b_BWEB[27]);
buf ub_iBWEB28  (i_BWEB[28], b_BWEB[28]);
buf ub_iBWEB29  (i_BWEB[29], b_BWEB[29]);
buf ub_iBWEB30  (i_BWEB[30], b_BWEB[30]);
buf ub_iBWEB31  (i_BWEB[31], b_BWEB[31]);
//  Internal ram bweb
buf ub_ram_bweb0 (ram_bweb[0], i_BWEB[0]);
buf ub_ram_bweb1 (ram_bweb[1], i_BWEB[1]);
buf ub_ram_bweb2 (ram_bweb[2], i_BWEB[2]);
buf ub_ram_bweb3 (ram_bweb[3], i_BWEB[3]);
buf ub_ram_bweb4 (ram_bweb[4], i_BWEB[4]);
buf ub_ram_bweb5 (ram_bweb[5], i_BWEB[5]);
buf ub_ram_bweb6 (ram_bweb[6], i_BWEB[6]);
buf ub_ram_bweb7 (ram_bweb[7], i_BWEB[7]);
buf ub_ram_bweb8 (ram_bweb[8], i_BWEB[8]);
buf ub_ram_bweb9 (ram_bweb[9], i_BWEB[9]);
buf ub_ram_bweb10 (ram_bweb[10], i_BWEB[10]);
buf ub_ram_bweb11 (ram_bweb[11], i_BWEB[11]);
buf ub_ram_bweb12 (ram_bweb[12], i_BWEB[12]);
buf ub_ram_bweb13 (ram_bweb[13], i_BWEB[13]);
buf ub_ram_bweb14 (ram_bweb[14], i_BWEB[14]);
buf ub_ram_bweb15 (ram_bweb[15], i_BWEB[15]);
buf ub_ram_bweb16 (ram_bweb[16], i_BWEB[16]);
buf ub_ram_bweb17 (ram_bweb[17], i_BWEB[17]);
buf ub_ram_bweb18 (ram_bweb[18], i_BWEB[18]);
buf ub_ram_bweb19 (ram_bweb[19], i_BWEB[19]);
buf ub_ram_bweb20 (ram_bweb[20], i_BWEB[20]);
buf ub_ram_bweb21 (ram_bweb[21], i_BWEB[21]);
buf ub_ram_bweb22 (ram_bweb[22], i_BWEB[22]);
buf ub_ram_bweb23 (ram_bweb[23], i_BWEB[23]);
buf ub_ram_bweb24 (ram_bweb[24], i_BWEB[24]);
buf ub_ram_bweb25 (ram_bweb[25], i_BWEB[25]);
buf ub_ram_bweb26 (ram_bweb[26], i_BWEB[26]);
buf ub_ram_bweb27 (ram_bweb[27], i_BWEB[27]);
buf ub_ram_bweb28 (ram_bweb[28], i_BWEB[28]);
buf ub_ram_bweb29 (ram_bweb[29], i_BWEB[29]);
buf ub_ram_bweb30 (ram_bweb[30], i_BWEB[30]);
buf ub_ram_bweb31 (ram_bweb[31], i_BWEB[31]);

//-------- Combinational Network --------//
buf  u_peri_off (peri_off, 1'b0);

//-------- Functional Module Instantiation --------//
//---- Mode Decision
_INV u_mode_sram_op (peri_off, mode_sram_op);

//---- Clock Gating
buf ub_ram_clk_w (ram_clk_w, b_CLKW);
buf ub_ram_clk_r (ram_clk_r, b_CLKR);

//---- RAM Enable
TS6N16FFCLLSVTA8X32M1FW_RAM_Enable_handle u_RAM_Enable_handle (
  .MODE_SRAM_OP ( mode_sram_op),
  .RAM_WEB      ( i_WEB),
  .RAM_REB      ( i_REB),
  .RAM_WRITE    ( i_WRITE),
  .RAM_READ     ( i_READ)
);

//---- RAM Core
TS6N16FFCLLSVTA8X32M1FW_RAM_Core u_RAM_Core (
  //---- clock
  .RAM_CLKW      ( ram_clk_w),
  .RAM_CLKR      ( ram_clk_r),
  //---- RAM IO
  .RAM_D        ( i_D),
  .RAM_AA       ( i_AA),
  .RAM_AB       ( i_AB),
  .RAM_WRITE    ( i_WRITE),
  .RAM_READ     ( i_READ),
  .RAM_BWEB     ( ram_bweb),
  //---- output
  .RAM_Q        ( Q_RAM)
);

//---- Q Buffering
buf ub_QRAM0 (b_Q[0], Q_RAM[0]);
buf ub_QRAM1 (b_Q[1], Q_RAM[1]);
buf ub_QRAM2 (b_Q[2], Q_RAM[2]);
buf ub_QRAM3 (b_Q[3], Q_RAM[3]);
buf ub_QRAM4 (b_Q[4], Q_RAM[4]);
buf ub_QRAM5 (b_Q[5], Q_RAM[5]);
buf ub_QRAM6 (b_Q[6], Q_RAM[6]);
buf ub_QRAM7 (b_Q[7], Q_RAM[7]);
buf ub_QRAM8 (b_Q[8], Q_RAM[8]);
buf ub_QRAM9 (b_Q[9], Q_RAM[9]);
buf ub_QRAM10 (b_Q[10], Q_RAM[10]);
buf ub_QRAM11 (b_Q[11], Q_RAM[11]);
buf ub_QRAM12 (b_Q[12], Q_RAM[12]);
buf ub_QRAM13 (b_Q[13], Q_RAM[13]);
buf ub_QRAM14 (b_Q[14], Q_RAM[14]);
buf ub_QRAM15 (b_Q[15], Q_RAM[15]);
buf ub_QRAM16 (b_Q[16], Q_RAM[16]);
buf ub_QRAM17 (b_Q[17], Q_RAM[17]);
buf ub_QRAM18 (b_Q[18], Q_RAM[18]);
buf ub_QRAM19 (b_Q[19], Q_RAM[19]);
buf ub_QRAM20 (b_Q[20], Q_RAM[20]);
buf ub_QRAM21 (b_Q[21], Q_RAM[21]);
buf ub_QRAM22 (b_Q[22], Q_RAM[22]);
buf ub_QRAM23 (b_Q[23], Q_RAM[23]);
buf ub_QRAM24 (b_Q[24], Q_RAM[24]);
buf ub_QRAM25 (b_Q[25], Q_RAM[25]);
buf ub_QRAM26 (b_Q[26], Q_RAM[26]);
buf ub_QRAM27 (b_Q[27], Q_RAM[27]);
buf ub_QRAM28 (b_Q[28], Q_RAM[28]);
buf ub_QRAM29 (b_Q[29], Q_RAM[29]);
buf ub_QRAM30 (b_Q[30], Q_RAM[30]);
buf ub_QRAM31 (b_Q[31], Q_RAM[31]);


//---- Q assignment
_MUX um_Q0 (peri_off, b_Q[0], 1'bx, Q[0]);
_MUX um_Q1 (peri_off, b_Q[1], 1'bx, Q[1]);
_MUX um_Q2 (peri_off, b_Q[2], 1'bx, Q[2]);
_MUX um_Q3 (peri_off, b_Q[3], 1'bx, Q[3]);
_MUX um_Q4 (peri_off, b_Q[4], 1'bx, Q[4]);
_MUX um_Q5 (peri_off, b_Q[5], 1'bx, Q[5]);
_MUX um_Q6 (peri_off, b_Q[6], 1'bx, Q[6]);
_MUX um_Q7 (peri_off, b_Q[7], 1'bx, Q[7]);
_MUX um_Q8 (peri_off, b_Q[8], 1'bx, Q[8]);
_MUX um_Q9 (peri_off, b_Q[9], 1'bx, Q[9]);
_MUX um_Q10 (peri_off, b_Q[10], 1'bx, Q[10]);
_MUX um_Q11 (peri_off, b_Q[11], 1'bx, Q[11]);
_MUX um_Q12 (peri_off, b_Q[12], 1'bx, Q[12]);
_MUX um_Q13 (peri_off, b_Q[13], 1'bx, Q[13]);
_MUX um_Q14 (peri_off, b_Q[14], 1'bx, Q[14]);
_MUX um_Q15 (peri_off, b_Q[15], 1'bx, Q[15]);
_MUX um_Q16 (peri_off, b_Q[16], 1'bx, Q[16]);
_MUX um_Q17 (peri_off, b_Q[17], 1'bx, Q[17]);
_MUX um_Q18 (peri_off, b_Q[18], 1'bx, Q[18]);
_MUX um_Q19 (peri_off, b_Q[19], 1'bx, Q[19]);
_MUX um_Q20 (peri_off, b_Q[20], 1'bx, Q[20]);
_MUX um_Q21 (peri_off, b_Q[21], 1'bx, Q[21]);
_MUX um_Q22 (peri_off, b_Q[22], 1'bx, Q[22]);
_MUX um_Q23 (peri_off, b_Q[23], 1'bx, Q[23]);
_MUX um_Q24 (peri_off, b_Q[24], 1'bx, Q[24]);
_MUX um_Q25 (peri_off, b_Q[25], 1'bx, Q[25]);
_MUX um_Q26 (peri_off, b_Q[26], 1'bx, Q[26]);
_MUX um_Q27 (peri_off, b_Q[27], 1'bx, Q[27]);
_MUX um_Q28 (peri_off, b_Q[28], 1'bx, Q[28]);
_MUX um_Q29 (peri_off, b_Q[29], 1'bx, Q[29]);
_MUX um_Q30 (peri_off, b_Q[30], 1'bx, Q[30]);
_MUX um_Q31 (peri_off, b_Q[31], 1'bx, Q[31]);

endmodule
`nosuppress_faults
`disable_portfaults


//-------- Functional Module Definition --------//
`celldefine
//-------- Memory Core Data Handling --------//
module TS6N16FFCLLSVTA8X32M1FW_RAM_D_handle ( MEM, D, BWEB, Z );

//-------- Declare IO --------//
input [31:0] MEM;
input [31:0] D;
input [31:0] BWEB;

output [31:0] Z;

//-------- BWEB handling -------//
_MUX m_0 (BWEB[0], D[0], MEM[0], Z[0]);
_MUX m_1 (BWEB[1], D[1], MEM[1], Z[1]);
_MUX m_2 (BWEB[2], D[2], MEM[2], Z[2]);
_MUX m_3 (BWEB[3], D[3], MEM[3], Z[3]);
_MUX m_4 (BWEB[4], D[4], MEM[4], Z[4]);
_MUX m_5 (BWEB[5], D[5], MEM[5], Z[5]);
_MUX m_6 (BWEB[6], D[6], MEM[6], Z[6]);
_MUX m_7 (BWEB[7], D[7], MEM[7], Z[7]);
_MUX m_8 (BWEB[8], D[8], MEM[8], Z[8]);
_MUX m_9 (BWEB[9], D[9], MEM[9], Z[9]);
_MUX m_10 (BWEB[10], D[10], MEM[10], Z[10]);
_MUX m_11 (BWEB[11], D[11], MEM[11], Z[11]);
_MUX m_12 (BWEB[12], D[12], MEM[12], Z[12]);
_MUX m_13 (BWEB[13], D[13], MEM[13], Z[13]);
_MUX m_14 (BWEB[14], D[14], MEM[14], Z[14]);
_MUX m_15 (BWEB[15], D[15], MEM[15], Z[15]);
_MUX m_16 (BWEB[16], D[16], MEM[16], Z[16]);
_MUX m_17 (BWEB[17], D[17], MEM[17], Z[17]);
_MUX m_18 (BWEB[18], D[18], MEM[18], Z[18]);
_MUX m_19 (BWEB[19], D[19], MEM[19], Z[19]);
_MUX m_20 (BWEB[20], D[20], MEM[20], Z[20]);
_MUX m_21 (BWEB[21], D[21], MEM[21], Z[21]);
_MUX m_22 (BWEB[22], D[22], MEM[22], Z[22]);
_MUX m_23 (BWEB[23], D[23], MEM[23], Z[23]);
_MUX m_24 (BWEB[24], D[24], MEM[24], Z[24]);
_MUX m_25 (BWEB[25], D[25], MEM[25], Z[25]);
_MUX m_26 (BWEB[26], D[26], MEM[26], Z[26]);
_MUX m_27 (BWEB[27], D[27], MEM[27], Z[27]);
_MUX m_28 (BWEB[28], D[28], MEM[28], Z[28]);
_MUX m_29 (BWEB[29], D[29], MEM[29], Z[29]);
_MUX m_30 (BWEB[30], D[30], MEM[30], Z[30]);
_MUX m_31 (BWEB[31], D[31], MEM[31], Z[31]);

endmodule
//-------- Memory Write/Read-En Function --------//
module TS6N16FFCLLSVTA8X32M1FW_RAM_Enable_handle (
  MODE_SRAM_OP,
  RAM_WEB,
  RAM_REB,
  RAM_WRITE,
  RAM_READ
);

//-------- Declare IO --------//
input MODE_SRAM_OP;
input RAM_WEB;
input RAM_REB;

output RAM_WRITE;
output RAM_READ;

//---- function ----//
and u_write (RAM_WRITE, MODE_SRAM_OP, !RAM_WEB);
and u_read  (RAM_READ,  MODE_SRAM_OP, !RAM_REB);

endmodule

//-------- Memory Core Function --------//
module TS6N16FFCLLSVTA8X32M1FW_RAM_Core (
  //---- clock
  RAM_CLKW,
  RAM_CLKR,
  //---- RAM IO
  RAM_D,
  RAM_AA,
  RAM_AB,
  RAM_WRITE,
  RAM_READ,
  RAM_BWEB,
  //---- output
  RAM_Q
);

//-------- Declare IO --------//
input RAM_CLKW, RAM_CLKR;
input RAM_WRITE;
input RAM_READ;
input [31:0] RAM_D;
input [31:0] RAM_BWEB;
input [2:0] RAM_AA, RAM_AB;

output [31:0] RAM_Q;

//-------- Declare reg & wire --------//
//---- memory
reg [31:0] MEMORY[7:0];
reg [31:0] RAM_Q;

//---- Data
wire [31:0] data_in;
reg  [31:0] data_mem;

//---- Addr
wire [2:0] i_RAM_AB;

event write_OP;

//-------- Combinational Network --------//
//---- input data handling
TS6N16FFCLLSVTA8X32M1FW_RAM_D_handle u_RDH0 (.MEM(data_mem), .D(RAM_D), .BWEB(RAM_BWEB), .Z(data_in));

//-------- W/R contention handling --------//
//---- compare AA to AB
xor u_comAddr0 (AcomB[0], RAM_AA[0], RAM_AB[0]);
xor u_comAddr1 (AcomB[1], RAM_AA[1], RAM_AB[1]);
xor u_comAddr2 (AcomB[2], RAM_AA[2], RAM_AB[2]);
//---- check sram_contention
nor u_eqA (AeqB, AcomB[0], AcomB[1], AcomB[2]);
and u_con (sram_contention, AeqB, RAM_WRITE, RAM_READ);

//-------- RAM Core Operation --------//

//---- Write
always @(posedge RAM_CLKW)
  if (RAM_WRITE) begin
    MEMORY[RAM_AA] = data_in;
    #0; -> write_OP;
  end

//---- Read original data for write operation
always @(RAM_WRITE or RAM_AA or RAM_CLKW or write_OP)
  if (RAM_WRITE) begin
    data_mem = MEMORY[RAM_AA];
  end

//---- illegal case handling ----//
_MUX m_x_AA0 (sram_contention, RAM_AB[0], 1'bx, i_RAM_AB[0]);
_MUX m_x_AA1 (sram_contention, RAM_AB[1], 1'bx, i_RAM_AB[1]);
_MUX m_x_AA2 (sram_contention, RAM_AB[2], 1'bx, i_RAM_AB[2]);

//---- Read
always @(posedge RAM_CLKR)
  if (RAM_READ) begin
    RAM_Q = MEMORY[i_RAM_AB];
  end

endmodule


`endcelldefine
