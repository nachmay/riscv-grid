// 
//###############################################################################
//#                                                    
//#        Technology     : TSMC 16nm CMOS Logic FinFet (FFC) HKMG
//#        Memory Type    : TSMC 16nm FFC Two Port Register File with d130 bit cell
//#        Library Name   : ts6n16ffcllsvta64x32m4fw (user specify : ts6n16ffcllsvta64x32m4fw)
//#        Library Version: 170a
//#        Generated Time : 2025/06/18, 11:59:49
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
//****************************************************************************** */
//*                                                                              */
//*      Usage Limitation: PLEASE READ CAREFULLY FOR CORRECT USAGE               */
//*                                                                              */
//* Please be careful when using non 2^n  memory.                                */
//* In a non-fully decoded array, a write cycle to a nonexistent address location*/
//* does not change the memory array contents and output remains the same.       */
//* In a non-fully decoded array, a read cycle to a nonexistent address location */
//* does not change the memory array contents but the output becomes unknown.    */
//*                                                                              */
//* In the verilog model, the behavior of unknown clock will corrupt the         */
//* memory data and make output unknown regardless of WEB/REB signal.But in the  */
//* silicon, the unknown clock at WEB/REB high, the memory and output data will  */
//* be held. The verilog model behavior is more conservative in this condition.  */
//*                                                                              */
//* The model doesn't identify physical column and row address                   */
//*                                                                              */
//* The verilog model provides TSMC_CM_UNIT_DELAY mode for the fast function     */
//* simulation.                                                                  */
//* All timing values in the specification are not checked in the                */
//* TSMC_CM_UNIT_DELAY mode simulation.                                          */
//* The timing values specified in this model do not reflect real circuit        */
//* behavior. For real timing simulation, please back annotate SDF file.         */
//*                                                                              */
//* Please use the verilog simulator version with $recrem timing check support.  */
//* Some earlier simulator versions might support $recovery only, not $recrem.   */
//*                                                                              */
//* Template Version : S_01_23601                                       */
//****************************************************************************** */
//*      Macro Usage       : (+define[MACRO] for Verilog compiliers)             */
//* +TSMC_CM_UNIT_DELAY : Enable fast function simulation.                       */
//* +TSMC_CM_NO_WARNING : Disable all runtime warnings message from this model.  */
//* +TSMC_INITIALIZE_MEM : Initialize the memory data in verilog format.         */
//* +TSMC_INITIALIZE_FAULT : Initialize the memory fault data in verilog format. */
//* +TSMC_NO_TESTPINS_DEFAULT_VALUE_CHECK : Disable the wrong test pins          */
//*                            connection error message if necessary.            */
//* +TSMC_STUCKAT_FAULT : Enable injectSA task. Please don't use this option     */
//*                       with initial options like +vcs+initmem+0/1 or          */
//*                       +vcs+initreg+0/1 ...                                   */
//****************************************************************************** */
`resetall
`celldefine

`timescale 1ns/1ps
`delay_mode_path

`suppress_faults
`enable_portfaults

module TS6N16FFCLLSVTA64X32M4FW (
  AA,
  D,
  BWEB,
  WEB,CLKW,
  AB,
  REB,CLKR,
  VDD,
  VSS,
    RCT,
    WCT,
    KP,
  Q);

// Parameter declarations
parameter  N = 32;
parameter  W = 64;
parameter  M = 6;



`ifdef TSMC_TRWCC
parameter TRWCC = `TSMC_TRWCC;
`else
parameter TRWCC = 1;
`endif

`ifdef TSMC_TWRCC
parameter TWRCC = `TSMC_TWRCC;
`else
parameter TWRCC = 1;
`endif

`ifdef TSMC_CM_UNIT_DELAY
parameter  SRAM_DELAY = 0.0100;
`endif
`ifdef TSMC_INITIALIZE_MEM
parameter INITIAL_MEM_DELAY = 0.01;
`else
  `ifdef TSMC_INITIALIZE_MEM_USING_DEFAULT_TASKS
parameter INITIAL_MEM_DELAY = 0.01;
  `endif
`endif
`ifdef TSMC_INITIALIZE_FAULT
parameter INITIAL_FAULT_DELAY = 0.01;
`endif

// Input-Output declarations

   input [M-1:0] AA;                // Address write bus
   input [N-1:0] D;                 // Date input bus
   input [N-1:0] BWEB;              // BW data input bus
   input         WEB;               // Active-low Write enable
   input         CLKW;              // Clock A
   input [M-1:0] AB;                // Address read bus 
   input         REB;               // Active-low Read enable
   input         CLKR;              // Clock B
// Test Mode
   input [1:0] RCT;
   input [1:0] WCT;
   input [2:0] KP;
   input VDD;
   input VSS;

   output [N-1:0] Q;                 // Data output bus


`ifdef TSMC_CM_NO_WARNING
parameter MES_ALL = "OFF";
`else
parameter MES_ALL = "ON";
`endif

`ifdef TSMC_INITIALIZE_MEM
  parameter cdeFileInit  = "TS6N16FFCLLSVTA64X32M4FW_initial.cde";
`endif
`ifdef TSMC_INITIALIZE_FAULT
   parameter cdeFileFault = "TS6N16FFCLLSVTA64X32M4FW_fault.cde";
`endif

// Registers
reg invalid_rslp;
reg invalid_wslp;
reg invalid_rdslp;
reg invalid_wdslp;
reg invalid_sd_dslp;

reg [N-1:0] DL;

reg [N-1:0] BWEBL;
reg [N-1:0] bBWEBL;

reg [M-1:0] AAL;
reg [M-1:0] ABL;

reg WEBL;
reg REBL;

wire [N-1:0] QL;


wire iSLP = 1'b0;
wire bSLP = 1'b0;
wire iDSLP = 1'b0;
wire bDSLP = 1'b0;
wire bSD = 1'b0;
reg valid_testpin;
reg valid_ckr, valid_ckw;
reg valid_wea;
reg valid_reb;
reg valid_aa;
reg valid_ab;
reg valid_pd;
reg valid_sd_dslp;
reg valid_contention;
reg valid_d31, valid_d30, valid_d29, valid_d28, valid_d27, valid_d26, valid_d25, valid_d24, valid_d23, valid_d22, valid_d21, valid_d20, valid_d19, valid_d18, valid_d17, valid_d16, valid_d15, valid_d14, valid_d13, valid_d12, valid_d11, valid_d10, valid_d9, valid_d8, valid_d7, valid_d6, valid_d5, valid_d4, valid_d3, valid_d2, valid_d1, valid_d0;
reg valid_bw31, valid_bw30, valid_bw29, valid_bw28, valid_bw27, valid_bw26, valid_bw25, valid_bw24, valid_bw23, valid_bw22, valid_bw21, valid_bw20, valid_bw19, valid_bw18, valid_bw17, valid_bw16, valid_bw15, valid_bw14, valid_bw13, valid_bw12, valid_bw11, valid_bw10, valid_bw9, valid_bw8, valid_bw7, valid_bw6, valid_bw5, valid_bw4, valid_bw3, valid_bw2, valid_bw1, valid_bw0;


reg rstb_toggle_flag;




integer clk_count;
integer sd_mode;
integer awt_counter;
integer wk_counter;

reg EN;
reg RDA, RDB;

reg RCLKW,RCLKR;

wire [N-1:0] bBWEB;

wire [N-1:0] bD;

wire [M-1:0] bAA;
wire [M-1:0] bAB;

wire bWEB;
wire bREB;
wire bCLKW,bCLKR;

// Test Mode
wire [1:0] RCT_i;
wire [1:0] WCT_i;
wire [2:0] KP_i;

reg [N-1:0] bQ;
reg [N-1:0] bQ_tmp;
wire [N-1:0] bbQ;

wire bBIST;

wire bDFTBYP;
assign bDFTBYP = 1'b0;
wire bSE;
assign bSE = 1'b0;

integer i;

// Address Inputs
buf sAA0 (bAA[0], AA[0]);
buf sAB0 (bAB[0], AB[0]);
buf sAA1 (bAA[1], AA[1]);
buf sAB1 (bAB[1], AB[1]);
buf sAA2 (bAA[2], AA[2]);
buf sAB2 (bAB[2], AB[2]);
buf sAA3 (bAA[3], AA[3]);
buf sAB3 (bAB[3], AB[3]);
buf sAA4 (bAA[4], AA[4]);
buf sAB4 (bAB[4], AB[4]);
buf sAA5 (bAA[5], AA[5]);
buf sAB5 (bAB[5], AB[5]);


// Bit Write/Data Inputs 
buf sD0 (bD[0], D[0]);
buf sBWEB0 (bBWEB[0], BWEB[0]);
buf sD1 (bD[1], D[1]);
buf sBWEB1 (bBWEB[1], BWEB[1]);
buf sD2 (bD[2], D[2]);
buf sBWEB2 (bBWEB[2], BWEB[2]);
buf sD3 (bD[3], D[3]);
buf sBWEB3 (bBWEB[3], BWEB[3]);
buf sD4 (bD[4], D[4]);
buf sBWEB4 (bBWEB[4], BWEB[4]);
buf sD5 (bD[5], D[5]);
buf sBWEB5 (bBWEB[5], BWEB[5]);
buf sD6 (bD[6], D[6]);
buf sBWEB6 (bBWEB[6], BWEB[6]);
buf sD7 (bD[7], D[7]);
buf sBWEB7 (bBWEB[7], BWEB[7]);
buf sD8 (bD[8], D[8]);
buf sBWEB8 (bBWEB[8], BWEB[8]);
buf sD9 (bD[9], D[9]);
buf sBWEB9 (bBWEB[9], BWEB[9]);
buf sD10 (bD[10], D[10]);
buf sBWEB10 (bBWEB[10], BWEB[10]);
buf sD11 (bD[11], D[11]);
buf sBWEB11 (bBWEB[11], BWEB[11]);
buf sD12 (bD[12], D[12]);
buf sBWEB12 (bBWEB[12], BWEB[12]);
buf sD13 (bD[13], D[13]);
buf sBWEB13 (bBWEB[13], BWEB[13]);
buf sD14 (bD[14], D[14]);
buf sBWEB14 (bBWEB[14], BWEB[14]);
buf sD15 (bD[15], D[15]);
buf sBWEB15 (bBWEB[15], BWEB[15]);
buf sD16 (bD[16], D[16]);
buf sBWEB16 (bBWEB[16], BWEB[16]);
buf sD17 (bD[17], D[17]);
buf sBWEB17 (bBWEB[17], BWEB[17]);
buf sD18 (bD[18], D[18]);
buf sBWEB18 (bBWEB[18], BWEB[18]);
buf sD19 (bD[19], D[19]);
buf sBWEB19 (bBWEB[19], BWEB[19]);
buf sD20 (bD[20], D[20]);
buf sBWEB20 (bBWEB[20], BWEB[20]);
buf sD21 (bD[21], D[21]);
buf sBWEB21 (bBWEB[21], BWEB[21]);
buf sD22 (bD[22], D[22]);
buf sBWEB22 (bBWEB[22], BWEB[22]);
buf sD23 (bD[23], D[23]);
buf sBWEB23 (bBWEB[23], BWEB[23]);
buf sD24 (bD[24], D[24]);
buf sBWEB24 (bBWEB[24], BWEB[24]);
buf sD25 (bD[25], D[25]);
buf sBWEB25 (bBWEB[25], BWEB[25]);
buf sD26 (bD[26], D[26]);
buf sBWEB26 (bBWEB[26], BWEB[26]);
buf sD27 (bD[27], D[27]);
buf sBWEB27 (bBWEB[27], BWEB[27]);
buf sD28 (bD[28], D[28]);
buf sBWEB28 (bBWEB[28], BWEB[28]);
buf sD29 (bD[29], D[29]);
buf sBWEB29 (bBWEB[29], BWEB[29]);
buf sD30 (bD[30], D[30]);
buf sBWEB30 (bBWEB[30], BWEB[30]);
buf sD31 (bD[31], D[31]);
buf sBWEB31 (bBWEB[31], BWEB[31]);


// Input Controls
buf sWEB (bWEB, WEB);
buf sREB (bREB, REB);
buf sCLKW (bCLKW, CLKW);
buf sCLKR (bCLKR, CLKR);

buf sWE (WE, !bWEB);
wire WE_nopd = WE & ~bSD & ~bDSLP & ~bSLP & ~bDFTBYP & ~bSE;
buf sRE (RE, !bREB);
wire RE_nopd = RE & ~bSD & ~bDSLP & ~bSLP & ~bDFTBYP & ~bSE;



assign bBIST = 1'b0;

// Test Mode
buf sRCT0 (RCT_i[0], RCT[0]);
buf sRCT1 (RCT_i[1], RCT[1]);
buf sWCT0 (WCT_i[0], WCT[0]);
buf sWCT1 (WCT_i[1], WCT[1]);
buf sKP0 (KP_i[0], KP[0]);
buf sKP1 (KP_i[1], KP[1]);
buf sKP2 (KP_i[2], KP[2]);

// Output Data
buf sQ0 (Q[0], bbQ[0]);
//nmos (Q[0], bbQ[0], 1'b1);
buf sQ1 (Q[1], bbQ[1]);
//nmos (Q[1], bbQ[1], 1'b1);
buf sQ2 (Q[2], bbQ[2]);
//nmos (Q[2], bbQ[2], 1'b1);
buf sQ3 (Q[3], bbQ[3]);
//nmos (Q[3], bbQ[3], 1'b1);
buf sQ4 (Q[4], bbQ[4]);
//nmos (Q[4], bbQ[4], 1'b1);
buf sQ5 (Q[5], bbQ[5]);
//nmos (Q[5], bbQ[5], 1'b1);
buf sQ6 (Q[6], bbQ[6]);
//nmos (Q[6], bbQ[6], 1'b1);
buf sQ7 (Q[7], bbQ[7]);
//nmos (Q[7], bbQ[7], 1'b1);
buf sQ8 (Q[8], bbQ[8]);
//nmos (Q[8], bbQ[8], 1'b1);
buf sQ9 (Q[9], bbQ[9]);
//nmos (Q[9], bbQ[9], 1'b1);
buf sQ10 (Q[10], bbQ[10]);
//nmos (Q[10], bbQ[10], 1'b1);
buf sQ11 (Q[11], bbQ[11]);
//nmos (Q[11], bbQ[11], 1'b1);
buf sQ12 (Q[12], bbQ[12]);
//nmos (Q[12], bbQ[12], 1'b1);
buf sQ13 (Q[13], bbQ[13]);
//nmos (Q[13], bbQ[13], 1'b1);
buf sQ14 (Q[14], bbQ[14]);
//nmos (Q[14], bbQ[14], 1'b1);
buf sQ15 (Q[15], bbQ[15]);
//nmos (Q[15], bbQ[15], 1'b1);
buf sQ16 (Q[16], bbQ[16]);
//nmos (Q[16], bbQ[16], 1'b1);
buf sQ17 (Q[17], bbQ[17]);
//nmos (Q[17], bbQ[17], 1'b1);
buf sQ18 (Q[18], bbQ[18]);
//nmos (Q[18], bbQ[18], 1'b1);
buf sQ19 (Q[19], bbQ[19]);
//nmos (Q[19], bbQ[19], 1'b1);
buf sQ20 (Q[20], bbQ[20]);
//nmos (Q[20], bbQ[20], 1'b1);
buf sQ21 (Q[21], bbQ[21]);
//nmos (Q[21], bbQ[21], 1'b1);
buf sQ22 (Q[22], bbQ[22]);
//nmos (Q[22], bbQ[22], 1'b1);
buf sQ23 (Q[23], bbQ[23]);
//nmos (Q[23], bbQ[23], 1'b1);
buf sQ24 (Q[24], bbQ[24]);
//nmos (Q[24], bbQ[24], 1'b1);
buf sQ25 (Q[25], bbQ[25]);
//nmos (Q[25], bbQ[25], 1'b1);
buf sQ26 (Q[26], bbQ[26]);
//nmos (Q[26], bbQ[26], 1'b1);
buf sQ27 (Q[27], bbQ[27]);
//nmos (Q[27], bbQ[27], 1'b1);
buf sQ28 (Q[28], bbQ[28]);
//nmos (Q[28], bbQ[28], 1'b1);
buf sQ29 (Q[29], bbQ[29]);
//nmos (Q[29], bbQ[29], 1'b1);
buf sQ30 (Q[30], bbQ[30]);
//nmos (Q[30], bbQ[30], 1'b1);
buf sQ31 (Q[31], bbQ[31]);
//nmos (Q[31], bbQ[31], 1'b1);


assign bbQ=bQ;

wire check_nopd = ~bSD & ~bDSLP & ~bSLP;
wire mem_nopd = ~bSD & ~bDSLP & ~bSLP & ~bDFTBYP & ~bSE;

wire AeqB, BeqA;
wire AbeforeB, BbeforeA;
wire check_twrcc, check_trwcc;

real CLKR_time, CLKW_time;
real tw_ff;
real tr_ff;
 
wire CLK_same;   
assign CLK_same = ((CLKR_time == CLKW_time)?1'b1:1'b0);

wire AeqBL;
assign AeqBL = ( (AAL == ABL) ) ? 1'b1:1'b0;
`ifdef TSMC_CM_UNIT_DELAY
`else

assign AeqB = (((bAA == bAB) && CLK_same) || ((AAL == bAB) && !CLK_same)) ? 1'b1:1'b0;
assign BeqA = (((bAB == bAA) && CLK_same) || ((ABL == bAA) && !CLK_same)) ? 1'b1:1'b0;
 
assign AbeforeB = (((!bWEB && !bREB && CLK_same) || (!WEBL && !bREB && !CLK_same)) && AeqB && !bSD && !bDSLP && !bSLP) ? 1'b1:1'b0;
assign BbeforeA = (((!bREB && !bWEB && CLK_same) || (!REBL && !bWEB && !CLK_same)) && BeqA && !bSD && !bDSLP && !bSLP) ? 1'b1:1'b0;
`endif

assign check_twrcc = AbeforeB;
assign check_trwcc = BbeforeA;

wire iREB = (bBIST) ? bREB :bREB;
wire iWEB = (bBIST) ? bREB :bWEB;
wire [N-1:0] iBWEB = bBWEB;
wire [N-1:0] iD = bD;
wire [M-1:0] iAA = bAA;
wire [M-1:0] iAB = bAB;
reg RREB, RWEB;


wire check_web = ~iWEB & ~bSD && !bDSLP & ~bSLP & ~bDFTBYP & ~bSE;
wire check_reb = ~iREB & ~bSD && !bDSLP & ~bSLP & ~bDFTBYP & ~bSE;


wire check_noidle_r = ~REBL & ~bSD && !bDSLP & ~bSLP;
wire check_idle_r = REBL & ~bSD && !bDSLP & ~bSLP;
wire check_noidle_w = ~WEBL & ~bSD && !bDSLP & ~bSLP;
wire check_idle_w = WEBL & ~bSD && !bDSLP & ~bSLP;





`ifdef TSMC_CM_UNIT_DELAY
`else

`ifdef TSMC_CM_ACCESS
`else
`define TSMC_CM_ACCESS 0.02
`endif
`ifdef TSMC_CM_RETAIN
`else
`define TSMC_CM_RETAIN 0.015
`endif
`ifdef TSMC_CM_SETUP
`else
`define TSMC_CM_SETUP 0.001
`endif
`ifdef TSMC_CM_HOLD
`else
`define TSMC_CM_HOLD 0.001
`endif
`ifdef TSMC_CM_PERIOD
`else
`define TSMC_CM_PERIOD 1
`endif
`ifdef TSMC_CM_WIDTH
`else
`define TSMC_CM_WIDTH 0.5
`endif
`ifdef TSMC_CM_CONTENTION
`else
`define TSMC_CM_CONTENTION 0.001
`endif

specify
    specparam PATHPULSE$ = ( 0, 0.001 );

specparam
tckl = (`TSMC_CM_WIDTH),
tckh = (`TSMC_CM_WIDTH),
twcyc = (`TSMC_CM_PERIOD),
trcyc = (`TSMC_CM_PERIOD),
trwcc = (`TSMC_CM_CONTENTION),
twrcc = (`TSMC_CM_CONTENTION),


taas = (`TSMC_CM_SETUP),
taah = (`TSMC_CM_HOLD),
tabs = (`TSMC_CM_SETUP),
tabh = (`TSMC_CM_HOLD),
tds = (`TSMC_CM_SETUP),
tdh = (`TSMC_CM_HOLD),
tws = (`TSMC_CM_SETUP),
twh = (`TSMC_CM_HOLD),
trs = (`TSMC_CM_SETUP),
trh = (`TSMC_CM_HOLD),
tbws = (`TSMC_CM_SETUP),
tbwh = (`TSMC_CM_HOLD),
ttests = (`TSMC_CM_SETUP),
ttesth = (`TSMC_CM_HOLD),





tcd = (`TSMC_CM_ACCESS),
`ifdef TSMC_CM_READ_X_SQUASHING
thold = (`TSMC_CM_ACCESS);
`else
thold = (`TSMC_CM_RETAIN);
`endif


$recrem (posedge CLKW, posedge CLKR &&& check_twrcc, twrcc, 0, valid_contention);
$recrem (posedge CLKR, posedge CLKW &&& check_trwcc, trwcc, 0, valid_contention);


    $setuphold (posedge CLKW &&& check_noidle_w, posedge RCT[0], ttests, 0, valid_testpin); 
    $setuphold (posedge CLKW &&& check_noidle_w, negedge RCT[0], ttests, 0, valid_testpin);
    $setuphold (posedge CLKW &&& check_idle_w, posedge RCT[0], 0, ttesth, valid_testpin); 
    $setuphold (posedge CLKW &&& check_idle_w, negedge RCT[0], 0, ttesth, valid_testpin);
    $setuphold (posedge CLKW &&& check_noidle_w, posedge RCT[1], ttests, 0, valid_testpin); 
    $setuphold (posedge CLKW &&& check_noidle_w, negedge RCT[1], ttests, 0, valid_testpin);
    $setuphold (posedge CLKW &&& check_idle_w, posedge RCT[1], 0, ttesth, valid_testpin); 
    $setuphold (posedge CLKW &&& check_idle_w, negedge RCT[1], 0, ttesth, valid_testpin);
    $setuphold (posedge CLKW &&& check_noidle_w, posedge WCT[0], ttests, 0, valid_testpin); 
    $setuphold (posedge CLKW &&& check_noidle_w, negedge WCT[0], ttests, 0, valid_testpin);
    $setuphold (posedge CLKW &&& check_idle_w, posedge WCT[0], 0, ttesth, valid_testpin); 
    $setuphold (posedge CLKW &&& check_idle_w, negedge WCT[0], 0, ttesth, valid_testpin);
    $setuphold (posedge CLKW &&& check_noidle_w, posedge WCT[1], ttests, 0, valid_testpin); 
    $setuphold (posedge CLKW &&& check_noidle_w, negedge WCT[1], ttests, 0, valid_testpin);
    $setuphold (posedge CLKW &&& check_idle_w, posedge WCT[1], 0, ttesth, valid_testpin); 
    $setuphold (posedge CLKW &&& check_idle_w, negedge WCT[1], 0, ttesth, valid_testpin);
    $setuphold (posedge CLKW &&& check_noidle_w, posedge KP[0], ttests, 0, valid_testpin); 
    $setuphold (posedge CLKW &&& check_noidle_w, negedge KP[0], ttests, 0, valid_testpin);
    $setuphold (posedge CLKW &&& check_idle_w, posedge KP[0], 0, ttesth, valid_testpin); 
    $setuphold (posedge CLKW &&& check_idle_w, negedge KP[0], 0, ttesth, valid_testpin);
    $setuphold (posedge CLKW &&& check_noidle_w, posedge KP[1], ttests, 0, valid_testpin); 
    $setuphold (posedge CLKW &&& check_noidle_w, negedge KP[1], ttests, 0, valid_testpin);
    $setuphold (posedge CLKW &&& check_idle_w, posedge KP[1], 0, ttesth, valid_testpin); 
    $setuphold (posedge CLKW &&& check_idle_w, negedge KP[1], 0, ttesth, valid_testpin);
    $setuphold (posedge CLKW &&& check_noidle_w, posedge KP[2], ttests, 0, valid_testpin); 
    $setuphold (posedge CLKW &&& check_noidle_w, negedge KP[2], ttests, 0, valid_testpin);
    $setuphold (posedge CLKW &&& check_idle_w, posedge KP[2], 0, ttesth, valid_testpin); 
    $setuphold (posedge CLKW &&& check_idle_w, negedge KP[2], 0, ttesth, valid_testpin);
    $setuphold (posedge CLKR &&& check_noidle_r, posedge RCT[0], ttests, 0, valid_testpin); 
    $setuphold (posedge CLKR &&& check_noidle_r, negedge RCT[0], ttests, 0, valid_testpin);
    $setuphold (posedge CLKR &&& check_idle_r, posedge RCT[0], 0, ttesth, valid_testpin); 
    $setuphold (posedge CLKR &&& check_idle_r, negedge RCT[0], 0, ttesth, valid_testpin);
    $setuphold (posedge CLKR &&& check_noidle_r, posedge RCT[1], ttests, 0, valid_testpin); 
    $setuphold (posedge CLKR &&& check_noidle_r, negedge RCT[1], ttests, 0, valid_testpin);
    $setuphold (posedge CLKR &&& check_idle_r, posedge RCT[1], 0, ttesth, valid_testpin); 
    $setuphold (posedge CLKR &&& check_idle_r, negedge RCT[1], 0, ttesth, valid_testpin);
    $setuphold (posedge CLKR &&& check_noidle_r, posedge WCT[0], ttests, 0, valid_testpin); 
    $setuphold (posedge CLKR &&& check_noidle_r, negedge WCT[0], ttests, 0, valid_testpin);
    $setuphold (posedge CLKR &&& check_idle_r, posedge WCT[0], 0, ttesth, valid_testpin); 
    $setuphold (posedge CLKR &&& check_idle_r, negedge WCT[0], 0, ttesth, valid_testpin);
    $setuphold (posedge CLKR &&& check_noidle_r, posedge WCT[1], ttests, 0, valid_testpin); 
    $setuphold (posedge CLKR &&& check_noidle_r, negedge WCT[1], ttests, 0, valid_testpin);
    $setuphold (posedge CLKR &&& check_idle_r, posedge WCT[1], 0, ttesth, valid_testpin); 
    $setuphold (posedge CLKR &&& check_idle_r, negedge WCT[1], 0, ttesth, valid_testpin);
    $setuphold (posedge CLKR &&& check_noidle_r, posedge KP[0], ttests, 0, valid_testpin); 
    $setuphold (posedge CLKR &&& check_noidle_r, negedge KP[0], ttests, 0, valid_testpin);
    $setuphold (posedge CLKR &&& check_idle_r, posedge KP[0], 0, ttesth, valid_testpin); 
    $setuphold (posedge CLKR &&& check_idle_r, negedge KP[0], 0, ttesth, valid_testpin);
    $setuphold (posedge CLKR &&& check_noidle_r, posedge KP[1], ttests, 0, valid_testpin); 
    $setuphold (posedge CLKR &&& check_noidle_r, negedge KP[1], ttests, 0, valid_testpin);
    $setuphold (posedge CLKR &&& check_idle_r, posedge KP[1], 0, ttesth, valid_testpin); 
    $setuphold (posedge CLKR &&& check_idle_r, negedge KP[1], 0, ttesth, valid_testpin);
    $setuphold (posedge CLKR &&& check_noidle_r, posedge KP[2], ttests, 0, valid_testpin); 
    $setuphold (posedge CLKR &&& check_noidle_r, negedge KP[2], ttests, 0, valid_testpin);
    $setuphold (posedge CLKR &&& check_idle_r, posedge KP[2], 0, ttesth, valid_testpin); 
    $setuphold (posedge CLKR &&& check_idle_r, negedge KP[2], 0, ttesth, valid_testpin);





  $setuphold (posedge CLKW &&& WE_nopd, posedge AA[0], taas, taah, valid_aa);
  $setuphold (posedge CLKW &&& WE_nopd, negedge AA[0], taas, taah, valid_aa);
  $setuphold (posedge CLKR &&& RE_nopd, posedge AB[0], tabs, tabh, valid_ab);
  $setuphold (posedge CLKR &&& RE_nopd, negedge AB[0], tabs, tabh, valid_ab);

  $setuphold (posedge CLKW &&& WE_nopd, posedge AA[1], taas, taah, valid_aa);
  $setuphold (posedge CLKW &&& WE_nopd, negedge AA[1], taas, taah, valid_aa);
  $setuphold (posedge CLKR &&& RE_nopd, posedge AB[1], tabs, tabh, valid_ab);
  $setuphold (posedge CLKR &&& RE_nopd, negedge AB[1], tabs, tabh, valid_ab);

  $setuphold (posedge CLKW &&& WE_nopd, posedge AA[2], taas, taah, valid_aa);
  $setuphold (posedge CLKW &&& WE_nopd, negedge AA[2], taas, taah, valid_aa);
  $setuphold (posedge CLKR &&& RE_nopd, posedge AB[2], tabs, tabh, valid_ab);
  $setuphold (posedge CLKR &&& RE_nopd, negedge AB[2], tabs, tabh, valid_ab);

  $setuphold (posedge CLKW &&& WE_nopd, posedge AA[3], taas, taah, valid_aa);
  $setuphold (posedge CLKW &&& WE_nopd, negedge AA[3], taas, taah, valid_aa);
  $setuphold (posedge CLKR &&& RE_nopd, posedge AB[3], tabs, tabh, valid_ab);
  $setuphold (posedge CLKR &&& RE_nopd, negedge AB[3], tabs, tabh, valid_ab);

  $setuphold (posedge CLKW &&& WE_nopd, posedge AA[4], taas, taah, valid_aa);
  $setuphold (posedge CLKW &&& WE_nopd, negedge AA[4], taas, taah, valid_aa);
  $setuphold (posedge CLKR &&& RE_nopd, posedge AB[4], tabs, tabh, valid_ab);
  $setuphold (posedge CLKR &&& RE_nopd, negedge AB[4], tabs, tabh, valid_ab);

  $setuphold (posedge CLKW &&& WE_nopd, posedge AA[5], taas, taah, valid_aa);
  $setuphold (posedge CLKW &&& WE_nopd, negedge AA[5], taas, taah, valid_aa);
  $setuphold (posedge CLKR &&& RE_nopd, posedge AB[5], tabs, tabh, valid_ab);
  $setuphold (posedge CLKR &&& RE_nopd, negedge AB[5], tabs, tabh, valid_ab);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[0], tds, tdh, valid_d0);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[0], tds, tdh, valid_d0);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[0], tbws, tbwh, valid_bw0);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[0], tbws, tbwh, valid_bw0);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[1], tds, tdh, valid_d1);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[1], tds, tdh, valid_d1);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[1], tbws, tbwh, valid_bw1);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[1], tbws, tbwh, valid_bw1);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[2], tds, tdh, valid_d2);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[2], tds, tdh, valid_d2);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[2], tbws, tbwh, valid_bw2);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[2], tbws, tbwh, valid_bw2);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[3], tds, tdh, valid_d3);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[3], tds, tdh, valid_d3);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[3], tbws, tbwh, valid_bw3);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[3], tbws, tbwh, valid_bw3);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[4], tds, tdh, valid_d4);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[4], tds, tdh, valid_d4);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[4], tbws, tbwh, valid_bw4);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[4], tbws, tbwh, valid_bw4);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[5], tds, tdh, valid_d5);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[5], tds, tdh, valid_d5);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[5], tbws, tbwh, valid_bw5);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[5], tbws, tbwh, valid_bw5);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[6], tds, tdh, valid_d6);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[6], tds, tdh, valid_d6);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[6], tbws, tbwh, valid_bw6);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[6], tbws, tbwh, valid_bw6);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[7], tds, tdh, valid_d7);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[7], tds, tdh, valid_d7);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[7], tbws, tbwh, valid_bw7);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[7], tbws, tbwh, valid_bw7);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[8], tds, tdh, valid_d8);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[8], tds, tdh, valid_d8);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[8], tbws, tbwh, valid_bw8);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[8], tbws, tbwh, valid_bw8);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[9], tds, tdh, valid_d9);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[9], tds, tdh, valid_d9);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[9], tbws, tbwh, valid_bw9);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[9], tbws, tbwh, valid_bw9);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[10], tds, tdh, valid_d10);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[10], tds, tdh, valid_d10);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[10], tbws, tbwh, valid_bw10);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[10], tbws, tbwh, valid_bw10);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[11], tds, tdh, valid_d11);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[11], tds, tdh, valid_d11);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[11], tbws, tbwh, valid_bw11);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[11], tbws, tbwh, valid_bw11);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[12], tds, tdh, valid_d12);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[12], tds, tdh, valid_d12);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[12], tbws, tbwh, valid_bw12);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[12], tbws, tbwh, valid_bw12);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[13], tds, tdh, valid_d13);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[13], tds, tdh, valid_d13);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[13], tbws, tbwh, valid_bw13);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[13], tbws, tbwh, valid_bw13);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[14], tds, tdh, valid_d14);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[14], tds, tdh, valid_d14);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[14], tbws, tbwh, valid_bw14);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[14], tbws, tbwh, valid_bw14);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[15], tds, tdh, valid_d15);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[15], tds, tdh, valid_d15);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[15], tbws, tbwh, valid_bw15);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[15], tbws, tbwh, valid_bw15);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[16], tds, tdh, valid_d16);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[16], tds, tdh, valid_d16);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[16], tbws, tbwh, valid_bw16);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[16], tbws, tbwh, valid_bw16);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[17], tds, tdh, valid_d17);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[17], tds, tdh, valid_d17);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[17], tbws, tbwh, valid_bw17);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[17], tbws, tbwh, valid_bw17);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[18], tds, tdh, valid_d18);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[18], tds, tdh, valid_d18);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[18], tbws, tbwh, valid_bw18);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[18], tbws, tbwh, valid_bw18);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[19], tds, tdh, valid_d19);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[19], tds, tdh, valid_d19);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[19], tbws, tbwh, valid_bw19);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[19], tbws, tbwh, valid_bw19);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[20], tds, tdh, valid_d20);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[20], tds, tdh, valid_d20);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[20], tbws, tbwh, valid_bw20);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[20], tbws, tbwh, valid_bw20);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[21], tds, tdh, valid_d21);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[21], tds, tdh, valid_d21);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[21], tbws, tbwh, valid_bw21);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[21], tbws, tbwh, valid_bw21);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[22], tds, tdh, valid_d22);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[22], tds, tdh, valid_d22);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[22], tbws, tbwh, valid_bw22);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[22], tbws, tbwh, valid_bw22);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[23], tds, tdh, valid_d23);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[23], tds, tdh, valid_d23);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[23], tbws, tbwh, valid_bw23);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[23], tbws, tbwh, valid_bw23);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[24], tds, tdh, valid_d24);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[24], tds, tdh, valid_d24);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[24], tbws, tbwh, valid_bw24);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[24], tbws, tbwh, valid_bw24);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[25], tds, tdh, valid_d25);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[25], tds, tdh, valid_d25);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[25], tbws, tbwh, valid_bw25);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[25], tbws, tbwh, valid_bw25);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[26], tds, tdh, valid_d26);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[26], tds, tdh, valid_d26);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[26], tbws, tbwh, valid_bw26);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[26], tbws, tbwh, valid_bw26);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[27], tds, tdh, valid_d27);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[27], tds, tdh, valid_d27);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[27], tbws, tbwh, valid_bw27);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[27], tbws, tbwh, valid_bw27);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[28], tds, tdh, valid_d28);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[28], tds, tdh, valid_d28);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[28], tbws, tbwh, valid_bw28);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[28], tbws, tbwh, valid_bw28);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[29], tds, tdh, valid_d29);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[29], tds, tdh, valid_d29);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[29], tbws, tbwh, valid_bw29);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[29], tbws, tbwh, valid_bw29);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[30], tds, tdh, valid_d30);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[30], tds, tdh, valid_d30);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[30], tbws, tbwh, valid_bw30);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[30], tbws, tbwh, valid_bw30);


  $setuphold (posedge CLKW &&& WE_nopd, posedge D[31], tds, tdh, valid_d31);
  $setuphold (posedge CLKW &&& WE_nopd, negedge D[31], tds, tdh, valid_d31);
 
  $setuphold (posedge CLKW &&& WE_nopd, posedge BWEB[31], tbws, tbwh, valid_bw31);
  $setuphold (posedge CLKW &&& WE_nopd, negedge BWEB[31], tbws, tbwh, valid_bw31);


  $setuphold (posedge CLKW &&& mem_nopd, posedge WEB, tws, twh, valid_wea);
  $setuphold (posedge CLKW &&& mem_nopd, negedge WEB, tws, twh, valid_wea);
  $setuphold (posedge CLKR &&& mem_nopd, posedge REB, trs, trh, valid_reb);
  $setuphold (posedge CLKR &&& mem_nopd, negedge REB, trs, trh, valid_reb);
 
  $period (posedge CLKW &&& check_web, twcyc, valid_ckw);
  $period (negedge CLKW &&& check_web, twcyc, valid_ckw);
  $width (negedge CLKW &&& check_web, tckl, 0, valid_ckw);
  $width (posedge CLKW &&& check_web, tckh, 0, valid_ckw);
  $period (posedge CLKR &&& check_reb, trcyc, valid_ckr);
  $period (negedge CLKR &&& check_reb, trcyc, valid_ckr);
  $width (negedge CLKR &&& check_reb, tckl, 0, valid_ckr);
  $width (posedge CLKR &&& check_reb, tckh, 0, valid_ckr);
  




 if (!REB) (posedge CLKR => (Q[0] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[1] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[2] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[3] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[4] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[5] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[6] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[7] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[8] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[9] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[10] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[11] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[12] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[13] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[14] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[15] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[16] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[17] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[18] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[19] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[20] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[21] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[22] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[23] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[24] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[25] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[26] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[27] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[28] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[29] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[30] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);
 if (!REB) (posedge CLKR => (Q[31] : 1'bx)) = (tcd,tcd,thold,tcd,thold,tcd);

endspecify
`endif

initial
begin
  assign EN = 1;
  clk_count = 0;
  RDB = 1'b0;
  BWEBL =  {N{1'b1}};
  valid_contention = 0;
  tw_ff = 0;
  tr_ff = 0;
  WEBL = 1'b1;
  REBL = 1'b1;
  sd_mode = 0;
  awt_counter = 0;
  wk_counter = 0;  
  rstb_toggle_flag = 1'b1;
  invalid_rslp = 1'b0;
  invalid_wslp = 1'b0;
  invalid_rdslp = 1'b0;
  invalid_wdslp = 1'b0;
  invalid_sd_dslp = 1'b0;
end

`ifdef TSMC_INITIALIZE_MEM_USING_DEFAULT_TASKS
initial begin
    #(INITIAL_MEM_DELAY) ;
`ifdef TSMC_MEM_LOAD_0
    zeroMemoryAll;
`else
 `ifdef TSMC_MEM_LOAD_1
    oneMemoryAll;
 `else
  `ifdef TSMC_MEM_LOAD_RANDOM
    randomMemoryAll;
  `else
    xMemoryAll;
  `endif
 `endif
`endif    
end
`endif //`ifdef TSMC_INITIALIZE_MEM_USING_DEFAULT_TASKS

`ifdef TSMC_INITIALIZE_MEM
initial
   begin 
`ifdef TSMC_INITIALIZE_FORMAT_BINARY
     #(INITIAL_MEM_DELAY)  $readmemb(cdeFileInit, MX.mem, 0, W-1);
`else
     #(INITIAL_MEM_DELAY)  $readmemh(cdeFileInit, MX.mem, 0, W-1);
`endif
   end
`endif //  `ifdef TSMC_INITIALIZE_MEM
   
`ifdef TSMC_INITIALIZE_FAULT
initial
   begin
`ifdef TSMC_INITIALIZE_FORMAT_BINARY
     #(INITIAL_FAULT_DELAY) $readmemb(cdeFileFault, MX.mem_fault, 0, W-1);
`else
     #(INITIAL_FAULT_DELAY) $readmemh(cdeFileFault, MX.mem_fault, 0, W-1);
`endif
   end
`endif //  `ifdef TSMC_INITIALIZE_FAULT

always @(VDD or VSS) begin
    if(VDD !== 1'b1 || VSS !== 1'b0) begin
        bQ = #0.01 {N{1'bx}};        
        xMemoryAll;
	WEBL = 1'b1;
        REBL = 1'b1;
    end
end

always @(posedge CLKR) CLKR_time = $realtime;
always @(posedge CLKW) CLKW_time = $realtime;
always @(RCT_i) begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
    if (bSLP === 1'b0 && bDSLP === 1'b0 && bSD === 1'b0) begin
        if(($realtime > 0) && (!REBL || !WEBL) && bDFTBYP === 1'b0 && bSE === 1'b0) begin
`ifdef TSMC_CM_NO_WARNING
`else        
            $display("\tWarning %m : input RCT should not be toggled when REB/WEB is low at simulation time %t\n", $realtime);
`endif            
    `ifdef TSMC_CM_UNIT_DELAY
            #(SRAM_DELAY);
    `endif
            bQ = {N{1'bx}};        
            xMemoryAll;
        end
    end
  end
end
always @(WCT_i) begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
    if (bSLP === 1'b0 && bDSLP === 1'b0 && bSD === 1'b0) begin
        if(($realtime > 0) && (!REBL || !WEBL) && bDFTBYP === 1'b0 && bSE === 1'b0) begin
`ifdef TSMC_CM_NO_WARNING
`else        
            $display("\tWarning %m : input WCT should not be toggled when REB/WEB is low at simulation time %t\n", $realtime);
`endif            
    `ifdef TSMC_CM_UNIT_DELAY
            #(SRAM_DELAY);
    `endif
            bQ = {N{1'bx}};        
            xMemoryAll;
        end
    end
  end
end
always @(KP_i) begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
    if (bSLP === 1'b0 && bDSLP === 1'b0 && bSD === 1'b0) begin
        if(($realtime > 0) && (!REBL || !WEBL) && bDFTBYP === 1'b0 && bSE === 1'b0) begin
`ifdef TSMC_CM_NO_WARNING
`else        
            $display("\tWarning %m : input KP should not be toggled when REB/WEB is low at simulation time %t\n", $realtime);
`endif            
    `ifdef TSMC_CM_UNIT_DELAY
            #(SRAM_DELAY);
    `endif
            bQ = {N{1'bx}};        
            xMemoryAll;
        end
    end
  end
end

`ifdef TSMC_NO_TESTPINS_DEFAULT_VALUE_CHECK
`else
always @(bCLKW or bCLKR or RCT_i) begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
    if (bSLP == 1'b0 && bDSLP == 1'b0 && bSD == 1'b0) begin
        if((RCT_i !== 2'b01) && ($realtime > 0)) begin
            $display("\tError %m : input RCT should be set to 2'b01 at simulation time %t\n", $realtime);
            $display("\tError %m : Please refer the datasheet/databook for the RCT setting in the different segment and mux configuration\n");
            
            if(bDFTBYP === 1'b0 && bSE === 1'b0) begin
                AAL <= {M{1'bx}};
                BWEBL <= {N{1'b0}};
                bQ = #0.01 {N{1'bx}};
            end
        end
    end
  end
end

always @(bCLKW or bCLKR or WCT_i) begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
    if (bSLP == 1'b0 && bDSLP == 1'b0 && bSD == 1'b0) begin
        if((WCT_i !== 2'b01) && ($realtime > 0)) begin
            $display("\tError %m : input WCT should be set to 2'b01 at simulation time %t\n", $realtime);
            $display("\tError %m : Please refer the datasheet/databook for the WCT setting in the different segment and mux configuration\n");
            
            if(bDFTBYP === 1'b0 && bSE === 1'b0) begin
                AAL <= {M{1'bx}};
                BWEBL <= {N{1'b0}};
                bQ = #0.01 {N{1'bx}};
            end
        end
    end
  end
end

always @(bCLKW or bCLKR or KP_i) begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
    if (bSLP == 1'b0 && bDSLP == 1'b0 && bSD == 1'b0) begin
        if((KP_i !== 3'b011) && ($realtime > 0)) begin
            $display("\tError %m : input KP should be set to 3'b011 at simulation time %t\n", $realtime);
            $display("\tError %m : Please refer the datasheet/databook for the KP setting in the different segment and mux configuration\n");
            
            if(bDFTBYP === 1'b0 && bSE === 1'b0) begin
                AAL <= {M{1'bx}};
                BWEBL <= {N{1'b0}};
                bQ = #0.01 {N{1'bx}};
            end
        end
    end
  end
end

`endif




always @(bCLKW)
begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
    if (bSLP === 1'b0 && bDSLP === 1'b0 && bSD === 1'b0 && bDFTBYP === 1'b0 && bSE === 1'b0) begin

    if (bCLKW === 1'bx) begin
        if( MES_ALL=="ON" && $realtime != 0) $display("\nWarning %m CLKW unknown at %t.>>", $realtime);
            AAL <= {M{1'bx}};
            BWEBL <= {N{1'b0}};
            xMemoryAll;
        end
        else if (bCLKW === 1'b1 && RCLKW === 1'b0)
        begin
            WEBL = bWEB;
            AAL = bAA;
            if (bWEB === 1'bx) begin
                if( MES_ALL=="ON" && $realtime != 0) $display("\nWarning %m WEB unknown at %t. >>", $realtime);
                xMemoryAll;
            end
            if (^bAA === 1'bx && bWEB === 1'b0) begin
                if( MES_ALL=="ON" && $realtime != 0) $display("\nWarning %m WRITE AA unknown at %t. >>", $realtime);
                xMemoryAll;
            end
            else begin
            if (bWEB !== 1'b1) DL = bD;
            if (bWEB !== 1'b1) begin                         // begin if (bWEB !== 1'b1) 
                bBWEBL = bBWEB;
                if (^bBWEB === 1'bx) begin
                    if( MES_ALL=="ON" && $realtime != 0) $display("\nWarning %m BWEB unknown at %t. >>", $realtime);
                end
                for (i = 0; i < N; i = i + 1) 
                begin                      // begin for...
                    if (rstb_toggle_flag == 1'b1 && !bBWEB[i] && !bWEB) BWEBL[i] = 1'b0;
                    if ((bWEB===1'bx) || (bBWEB[i] ===1'bx))
                    begin                   // if (((...
                        BWEBL[i] = 1'b0; 
                        DL[i] = 1'bx;
                    end                     // end if (((...
                end                        // end for (
            end
        end // else: !if(^bAA === 1'bx && bWEB === 1'b0 && !bSLP)
    end // if (bCLKW === 1'b1 && RCLKW === 1'b0)
    end
    RCLKW = bCLKW;
  end
end // always @ (bCLKW)

always @(bCLKR)
begin
    if(VDD === 1'b1 && VSS === 1'b0) begin
        if (bSLP === 1'b0 && bDSLP === 1'b0 && bSD === 1'b0 && bDFTBYP === 1'b0 && bSE === 1'b0) begin

            if (bCLKR === 1'bx) begin
                if( MES_ALL=="ON" && $realtime != 0) $display("\nWarning %m CLKR unknown at %t.>>", $realtime);
      
                bQ = #0.01 {N{1'bx}};
            end
            else if (bCLKR === 1'b1 && RCLKR === 1'b0)
            begin
                REBL = bREB;
                if (bREB === 1'bx) begin
                    if( MES_ALL=="ON" && $realtime != 0)
                        $display("\nWarning %m REB unknown at %t. >>", $realtime);
                    bQ = #0.01 {N{1'bx}};
                end
                else if (^bAB === 1'bx && bREB === 1'b0) begin
                    `ifndef TSMC_CM_NO_XADDR_WARNING
		    if( MES_ALL=="ON" && $realtime != 0) $display("\nWarning %m READ AB unknown at %t. >>", $realtime);
		    `endif
          
                    bQ = #0.01 {N{1'bx}};
                    //xMemoryAll;
                end
                else begin
                    if (rstb_toggle_flag == 1'b1 && !bREB) begin
                        ABL = bAB;
                        RDB = ~RDB;
                    end
                end 
            end
        end
        RCLKR = bCLKR;
    end
end

//---- Contention Check ----//
real		Contention_Window_CLKW, Contention_Window_CLKR, time_rose_CLKW, time_rose_CLKR;
wire		f_rose_same_time, ram_wen, ram_ren, addr_AeqB, mode_sram_func;
wire	[M-1:0]	m_AA, m_AB;
wire	[N-1:0]	m_BWEB;
reg		p_ram_wen, p_ram_ren;
reg	[M-1:0]	p_AA, p_AB;
reg	[N-1:0]	p_BWEB;

//  flag
assign f_rose_same_time = time_rose_CLKW == time_rose_CLKR;
assign mode_sram_func   = !bSD && !bDSLP && !bSLP && !bDFTBYP && !bSE;
assign ram_wen = ~bWEB;
assign ram_ren = ~bREB;
assign m_AA    = bAA;
assign m_AB    = bAB;
assign m_BWEB  = bBWEB;
assign addr_AeqB = m_AA == m_AB;

//  Record time
always @(posedge bCLKW) begin
  Contention_Window_CLKW = $realtime + TWRCC;
  time_rose_CLKW = $realtime;
end

always @(posedge bCLKR) begin
  Contention_Window_CLKR = $realtime + TRWCC;
  time_rose_CLKR = $realtime;
end

//  Input Latches
always @(posedge bCLKW) begin
  if (bSD | bDSLP | bSLP) p_ram_wen <= 1'b0;
  else                    p_ram_wen <= ram_wen;
end

always @(posedge bCLKW) begin
  p_AA     <= m_AA;
  p_BWEB   <= bBWEB;
end

always @(posedge bCLKR) begin
  if (bSD | bDSLP | bSLP) p_ram_ren <= 1'b0;
  else                    p_ram_ren <= ram_ren;
end

always @(posedge bCLKR) begin
  p_AB     <= m_AB;
end
`ifndef TSMC_DISABLE_CONTENTION_BEHAVIORAL_CHECK
//  Write-port checking
always @(posedge bCLKW) begin
  #0;
  //---- CLKW/CLKR rise at the same time
  if (VDD === 1'b1 && !VSS && f_rose_same_time && mode_sram_func) begin
    if (ram_wen && ram_ren && addr_AeqB) begin
      // mask all
      if (&m_BWEB) begin
      end
      // open all
      else if (!(|m_BWEB)) begin
      `ifndef TSMC_DISABLE_CONTENTION_MESSAGE
        `ifdef TSMC_FULL_CONTENTION_WARNING
          $display("\tWARNING %m : Contention Failure when CLKW/CLKR rise at the same time at %t", $realtime);
        `else
          $display("\tERROR %m : Contention Failure when CLKW/CLKR rise at the same time at %t", $realtime);
        `endif  //  end TSMC_FULL_CONTENTION_WARNING
      `endif  //  end TSMC_DISABLE_CONTENTION_MESSAGE
        #0.01;
	for (i = 0; i < N; i = i + 1) begin
	  bQ[i] <= 1'bx;
	end
      end  //  end open all
      // partially mask
      else begin
      `ifndef TSMC_DISABLE_CONTENTION_MESSAGE
        `ifdef TSMC_PARTIAL_CONTENTION_WARNING
          $display("\tWARNING %m : Contention Failure when CLKW/CLKR rise at the same time at %t", $realtime);
        `else
          $display("\tERROR %m : Contention Failure when CLKW/CLKR rise at the same time at %t", $realtime);
        `endif  //  end TSMC_PARTIAL_CONTENTION_WARNING
      `endif  //  end TSMC_DISABLE_CONTENTION_MESSAGE
        #0.01;
	for (i = 0; i < N; i = i + 1) begin
	  if (m_BWEB[i] !== 1'b1) bQ[i] <= 1'bx;
	end
      end  //  end partially mask
    end
  end
  //---- CLKW rises during the span of contention checking window
  else if (VDD === 1'b1 && !VSS && $realtime <= Contention_Window_CLKR && mode_sram_func && m_AA == p_AB && ram_wen && p_ram_ren) begin
      // mask all
      if (&m_BWEB) begin
      end
      // open all
      else if (!(|m_BWEB)) begin
      `ifndef TSMC_DISABLE_CONTENTION_MESSAGE
        `ifdef TSMC_FULL_CONTENTION_WARNING
          $display("\tWARNING %m : TRWCC failure at %t", $realtime);
        `else
          $display("\tERROR %m : TRWCC failed at %t", $realtime);
        `endif  //  end TSMC_FULL_CONTENTION_WARNING
      `endif  //  end TSMC_DISABLE_CONTENTION_MESSAGE
        #0.01;
	for (i = 0; i < N; i = i + 1) begin
	  bQ[i] <= 1'bx;
	end
      end  //  end open all
      // partially mask
      else begin
      `ifndef TSMC_DISABLE_CONTENTION_MESSAGE
        `ifdef TSMC_PARTIAL_CONTENTION_WARNING
          $display("\tWARNING %m : Partial TRWCC failure at %t", $realtime);
        `else
          $display("\tERROR %m : Partial TRWCC failure at %t", $realtime);
        `endif  //  end TSMC_PARTIAL_CONTENTION_WARNING
      `endif  //  end TSMC_DISABLE_CONTENTION_MESSAGE
        #0.01;
	for (i = 0; i < N; i = i + 1) begin
	  if (m_BWEB[i] !== 1'b1) bQ[i] <= 1'bx;
	end
      end  //  end partially mask
  end
end

//  Read-port checking
always @(posedge bCLKR) begin
  #0;
  //---- CLKW/CLKR rise at the same time
  if (VDD === 1'b1 && !VSS && f_rose_same_time && mode_sram_func) begin
    if (ram_wen && ram_ren && addr_AeqB) begin
      // mask all
      if (&m_BWEB) begin
      end
      // open all
      else if (!(|m_BWEB)) begin
      `ifndef TSMC_DISABLE_CONTENTION_MESSAGE
        `ifdef TSMC_FULL_CONTENTION_WARNING
          $display("\tWARNING %m : Contention Failure when CLKW/CLKR rise at the same time at %t", $realtime);
        `else
          $display("\tERROR %m : Contention Failure when CLKW/CLKR rise at the same time at %t", $realtime);
        `endif  //  end TSMC_FULL_CONTENTION_WARNING
      `endif  //  end TSMC_DISABLE_CONTENTION_MESSAGE
        #0.01;
	for (i = 0; i < N; i = i + 1) begin
	  bQ[i] <= 1'bx;
	end
      end  //  end open all
      // partially mask
      else begin
      `ifndef TSMC_DISABLE_CONTENTION_MESSAGE
        `ifdef TSMC_PARTIAL_CONTENTION_WARNING
          $display("\tWARNING %m : Contention Failure when CLKW/CLKR rise at the same time at %t", $realtime);
        `else
          $display("\tERROR %m : Contention Failure when CLKW/CLKR rise at the same time at %t", $realtime);
        `endif  //  end TSMC_PARTIAL_CONTENTION_WARNING
      `endif  //  end TSMC_DISABLE_CONTENTION_MESSAGE
        #0.01;
	for (i = 0; i < N; i = i + 1) begin
	  if (m_BWEB[i] !== 1'b1) bQ[i] <= 1'bx;
	end
      end  //  end partially mask
    end
  end
  //---- CLKR rises during the span of contention checking window
  else if (VDD === 1'b1 && !VSS && $realtime <= Contention_Window_CLKW && mode_sram_func && p_AA == m_AB && p_ram_wen && ram_ren) begin
      // mask all
      if (&p_BWEB) begin
      end
      // open all
      else if (!(|p_BWEB)) begin
      `ifndef TSMC_DISABLE_CONTENTION_MESSAGE
        `ifdef TSMC_FULL_CONTENTION_WARNING
          $display("\tWARNING %m : TWRCC failure at %t", $realtime);
        `else
          $display("\tERROR %m : TWRCC failed at %t", $realtime);
        `endif  //  end TSMC_FULL_CONTENTION_WARNING
      `endif  //  end TSMC_DISABLE_CONTENTION_MESSAGE
        #0.01;
	for (i = 0; i < N; i = i + 1) begin
	  bQ[i] <= 1'bx;
	end
      end  //  end open all
      // partially mask
      else begin
      `ifndef TSMC_DISABLE_CONTENTION_MESSAGE
        `ifdef TSMC_PARTIAL_CONTENTION_WARNING
          $display("\tWARNING %m : Partial TWRCC failure at %t", $realtime);
        `else
          $display("\tERROR %m : Partial TWRCC failure at %t", $realtime);
        `endif  //  end TSMC_PARTIAL_CONTENTION_WARNING
      `endif  //  end TSMC_DISABLE_CONTENTION_MESSAGE
        #0.01;
	for (i = 0; i < N; i = i + 1) begin
	  if (p_BWEB[i] !== 1'b1) bQ[i] <= 1'bx;
	end
      end  //  end partially mask
  end
end
`endif
always @(RDB or QL) 
begin : CLKROP2
  if(VDD === 1'b1 && VSS === 1'b0) begin
    if (bSLP === 1'b0 && bDSLP === 1'b0 && bSD === 1'b0) begin
`ifdef TSMC_CM_UNIT_DELAY
            #(SRAM_DELAY);
`else
            bQ = {N{1'bx}};
            #0.01;
`endif
            bQ = QL;
    end
  end
end // always @ (RDB or QL)






always @(BWEBL) BWEBL = #0.01 {N{1'b1}};



`ifdef TSMC_CM_UNIT_DELAY
`else
always @(valid_aa)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin
      AAL = {M{1'bx}};
      BWEBL = {N{1'b0}};
  end
  end
   end

always @(valid_ab)
begin
    if(VDD === 1'b1 && VSS === 1'b0) begin
    if(bDFTBYP === 1'b0 && bSE === 1'b0) begin
        AAL = {M{1'bx}};
        BWEBL = {N{1'b0}};
        #0.01; 
            bQ = {N{1'bx}};
    end
    else if(bDFTBYP === 1'b0) begin
            bQ = #0.01 {N{1'bx}};
    end
    end
end

always @(valid_contention)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
    #0.01;
    for (i=0; i<N; i=i+1)
      begin
         if(!iBWEB[i] || !BWEBL[i] || (iBWEB[i]===1'bx) || (BWEBL[i]===1'bx)) begin
           bQ[i] = 1'bx;
         end
      end
  end
   end

always @(valid_ckw)
begin
    if(VDD === 1'b1 && VSS === 1'b0) begin
    if (bDFTBYP === 1'b0 && bSE === 1'b0) begin
        AAL = {M{1'bx}};
        BWEBL = {N{1'b0}};
    end
    end
end
always @(valid_ckr)
begin
    if(VDD === 1'b1 && VSS === 1'b0) begin
    if (bDFTBYP === 1'b0 && bSE === 1'b0) begin
        #0.01
            bQ = {N{1'bx}};
    end
    else if(bDFTBYP === 1'b0) begin     
            bQ = #0.01 {N{1'bx}};
    end
    end
end

always @(valid_d0)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[0] = 1'bx;
      BWEBL[0] = 1'b0;
  end 
  end
   end

always @(valid_bw0)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[0] = 1'bx;
      BWEBL[0] = 1'b0;
  end
  end
   end

always @(valid_d1)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[1] = 1'bx;
      BWEBL[1] = 1'b0;
  end 
  end
   end

always @(valid_bw1)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[1] = 1'bx;
      BWEBL[1] = 1'b0;
  end
  end
   end

always @(valid_d2)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[2] = 1'bx;
      BWEBL[2] = 1'b0;
  end 
  end
   end

always @(valid_bw2)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[2] = 1'bx;
      BWEBL[2] = 1'b0;
  end
  end
   end

always @(valid_d3)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[3] = 1'bx;
      BWEBL[3] = 1'b0;
  end 
  end
   end

always @(valid_bw3)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[3] = 1'bx;
      BWEBL[3] = 1'b0;
  end
  end
   end

always @(valid_d4)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[4] = 1'bx;
      BWEBL[4] = 1'b0;
  end 
  end
   end

always @(valid_bw4)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[4] = 1'bx;
      BWEBL[4] = 1'b0;
  end
  end
   end

always @(valid_d5)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[5] = 1'bx;
      BWEBL[5] = 1'b0;
  end 
  end
   end

always @(valid_bw5)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[5] = 1'bx;
      BWEBL[5] = 1'b0;
  end
  end
   end

always @(valid_d6)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[6] = 1'bx;
      BWEBL[6] = 1'b0;
  end 
  end
   end

always @(valid_bw6)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[6] = 1'bx;
      BWEBL[6] = 1'b0;
  end
  end
   end

always @(valid_d7)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[7] = 1'bx;
      BWEBL[7] = 1'b0;
  end 
  end
   end

always @(valid_bw7)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[7] = 1'bx;
      BWEBL[7] = 1'b0;
  end
  end
   end

always @(valid_d8)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[8] = 1'bx;
      BWEBL[8] = 1'b0;
  end 
  end
   end

always @(valid_bw8)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[8] = 1'bx;
      BWEBL[8] = 1'b0;
  end
  end
   end

always @(valid_d9)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[9] = 1'bx;
      BWEBL[9] = 1'b0;
  end 
  end
   end

always @(valid_bw9)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[9] = 1'bx;
      BWEBL[9] = 1'b0;
  end
  end
   end

always @(valid_d10)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[10] = 1'bx;
      BWEBL[10] = 1'b0;
  end 
  end
   end

always @(valid_bw10)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[10] = 1'bx;
      BWEBL[10] = 1'b0;
  end
  end
   end

always @(valid_d11)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[11] = 1'bx;
      BWEBL[11] = 1'b0;
  end 
  end
   end

always @(valid_bw11)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[11] = 1'bx;
      BWEBL[11] = 1'b0;
  end
  end
   end

always @(valid_d12)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[12] = 1'bx;
      BWEBL[12] = 1'b0;
  end 
  end
   end

always @(valid_bw12)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[12] = 1'bx;
      BWEBL[12] = 1'b0;
  end
  end
   end

always @(valid_d13)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[13] = 1'bx;
      BWEBL[13] = 1'b0;
  end 
  end
   end

always @(valid_bw13)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[13] = 1'bx;
      BWEBL[13] = 1'b0;
  end
  end
   end

always @(valid_d14)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[14] = 1'bx;
      BWEBL[14] = 1'b0;
  end 
  end
   end

always @(valid_bw14)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[14] = 1'bx;
      BWEBL[14] = 1'b0;
  end
  end
   end

always @(valid_d15)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[15] = 1'bx;
      BWEBL[15] = 1'b0;
  end 
  end
   end

always @(valid_bw15)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[15] = 1'bx;
      BWEBL[15] = 1'b0;
  end
  end
   end

always @(valid_d16)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[16] = 1'bx;
      BWEBL[16] = 1'b0;
  end 
  end
   end

always @(valid_bw16)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[16] = 1'bx;
      BWEBL[16] = 1'b0;
  end
  end
   end

always @(valid_d17)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[17] = 1'bx;
      BWEBL[17] = 1'b0;
  end 
  end
   end

always @(valid_bw17)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[17] = 1'bx;
      BWEBL[17] = 1'b0;
  end
  end
   end

always @(valid_d18)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[18] = 1'bx;
      BWEBL[18] = 1'b0;
  end 
  end
   end

always @(valid_bw18)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[18] = 1'bx;
      BWEBL[18] = 1'b0;
  end
  end
   end

always @(valid_d19)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[19] = 1'bx;
      BWEBL[19] = 1'b0;
  end 
  end
   end

always @(valid_bw19)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[19] = 1'bx;
      BWEBL[19] = 1'b0;
  end
  end
   end

always @(valid_d20)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[20] = 1'bx;
      BWEBL[20] = 1'b0;
  end 
  end
   end

always @(valid_bw20)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[20] = 1'bx;
      BWEBL[20] = 1'b0;
  end
  end
   end

always @(valid_d21)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[21] = 1'bx;
      BWEBL[21] = 1'b0;
  end 
  end
   end

always @(valid_bw21)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[21] = 1'bx;
      BWEBL[21] = 1'b0;
  end
  end
   end

always @(valid_d22)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[22] = 1'bx;
      BWEBL[22] = 1'b0;
  end 
  end
   end

always @(valid_bw22)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[22] = 1'bx;
      BWEBL[22] = 1'b0;
  end
  end
   end

always @(valid_d23)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[23] = 1'bx;
      BWEBL[23] = 1'b0;
  end 
  end
   end

always @(valid_bw23)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[23] = 1'bx;
      BWEBL[23] = 1'b0;
  end
  end
   end

always @(valid_d24)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[24] = 1'bx;
      BWEBL[24] = 1'b0;
  end 
  end
   end

always @(valid_bw24)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[24] = 1'bx;
      BWEBL[24] = 1'b0;
  end
  end
   end

always @(valid_d25)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[25] = 1'bx;
      BWEBL[25] = 1'b0;
  end 
  end
   end

always @(valid_bw25)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[25] = 1'bx;
      BWEBL[25] = 1'b0;
  end
  end
   end

always @(valid_d26)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[26] = 1'bx;
      BWEBL[26] = 1'b0;
  end 
  end
   end

always @(valid_bw26)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[26] = 1'bx;
      BWEBL[26] = 1'b0;
  end
  end
   end

always @(valid_d27)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[27] = 1'bx;
      BWEBL[27] = 1'b0;
  end 
  end
   end

always @(valid_bw27)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[27] = 1'bx;
      BWEBL[27] = 1'b0;
  end
  end
   end

always @(valid_d28)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[28] = 1'bx;
      BWEBL[28] = 1'b0;
  end 
  end
   end

always @(valid_bw28)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[28] = 1'bx;
      BWEBL[28] = 1'b0;
  end
  end
   end

always @(valid_d29)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[29] = 1'bx;
      BWEBL[29] = 1'b0;
  end 
  end
   end

always @(valid_bw29)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[29] = 1'bx;
      BWEBL[29] = 1'b0;
  end
  end
   end

always @(valid_d30)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[30] = 1'bx;
      BWEBL[30] = 1'b0;
  end 
  end
   end

always @(valid_bw30)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[30] = 1'bx;
      BWEBL[30] = 1'b0;
  end
  end
   end

always @(valid_d31)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin           
      DL[31] = 1'bx;
      BWEBL[31] = 1'b0;
  end 
  end
   end

always @(valid_bw31)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin      
      DL[31] = 1'bx;
      BWEBL[31] = 1'b0;
  end
  end
   end

 
always @(valid_wea)
   begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
  if(bDFTBYP === 1'b0 && bSE === 1'b0) begin
      AAL = {M{1'bx}};
      BWEBL = {N{1'b0}};
  end
  end
   end
 
always @(valid_reb)
begin
    if(VDD === 1'b1 && VSS === 1'b0) begin
    if(bDFTBYP === 1'b0) begin 
            bQ = #0.01 {N{1'bx}};
    end
    end
end
`endif

always @(valid_testpin) begin
  if(VDD === 1'b1 && VSS === 1'b0) begin
    if(bDFTBYP === 1'b0 && bSE === 1'b0) begin
      AAL <= {M{1'bx}};
      BWEBL <= {N{1'b0}};
      bQ = #0.01 {N{1'bx}};
    end
    else if(bDFTBYP === 1'b0) begin
          bQ = #0.01 {N{1'bx}};
    end     
  end
end



// Task for printing the memory between specified addresses..
task printMemoryFromTo;     
    input [M - 1:0] from;   // memory content are printed, start from this address.
    input [M - 1:0] to;     // memory content are printed, end at this address.
    begin 
        MX.printMemoryFromTo(from, to);
    end 
endtask

// Task for printing entire memory, including normal array and redundancy array.
task printMemory;   
    begin
        MX.printMemory;
    end
endtask

task xMemoryAll;   
    begin
       MX.xMemoryAll;  
    end
endtask

task zeroMemoryAll;   
    begin
       MX.zeroMemoryAll;   
    end
endtask

task oneMemoryAll;   
    begin
       MX.oneMemoryAll;   
    end
endtask

task randomMemoryAll;   
    begin
       MX.randomMemoryAll;   
    end
endtask

// Task for Loading a perdefined set of data from an external file.
task preloadData;   
    input [256*8:1] infile;  // Max 256 character File Name
    begin
        MX.preloadData(infile);  
    end
endtask


`ifdef TSMC_STUCKAT_FAULT
task injectSA;     
    input [M - 1:0] address;
    input [5 - 1:0] index;
    input stuck_at;
    begin 
        MX.injectSA(address, index, stuck_at);
    end 
endtask
`endif

TS6N16FFCLLSVTA64X32M4FW_Int_Array #(1,1,W,N,M,MES_ALL) MX (.D({DL}),.BW({BWEBL}),
         .AW({AAL}),.EN(EN),.RDB(RDB),.AR({ABL}),.Q({QL}));




endmodule

`disable_portfaults
`nosuppress_faults
`endcelldefine


/*
   The module ports are parameterizable vectors.
*/
module TS6N16FFCLLSVTA64X32M4FW_Int_Array (D, BW, AW, EN, RDB, AR, Q);
parameter Nread = 2;   // Number of Read Ports
parameter Nwrite = 2;  // Number of Write Ports
parameter Nword = 2;   // Number of Words
parameter Ndata = 1;   // Number of Data Bits / Word
parameter Naddr = 1;   // Number of Address Bits / Word
parameter MES_ALL = "ON";
parameter dly = 0.000;
// Cannot define inputs/outputs as memories
input  [Ndata*Nwrite-1:0] D;  // Data Word(s)
input  [Ndata*Nwrite-1:0] BW; // Negative Bit Write Enable
input  [Naddr*Nwrite-1:0] AW; // Write Address(es)
input  EN;                    // Positive Write Enable
input  RDB;                   // Read Toggle
input  [Naddr*Nread-1:0] AR;  // Read Address(es)
output [Ndata*Nread-1:0] Q;   // Output Data Word(s)
reg    [Ndata*Nread-1:0] Q;
reg [Ndata-1:0] mem [Nword-1:0];
reg [Ndata-1:0] mem_fault [Nword-1:0];
reg chgmem;            // Toggled when write to mem
reg [Nwrite-1:0] wwe;  // Positive Word Write Enable for each Port
reg we;                // Positive Write Enable for all Ports
integer waddr[Nwrite-1:0]; // Write Address for each Enabled Port
integer address;       // Current address
reg [Naddr-1:0] abuf;  // Address of current port
reg [Ndata-1:0] dbuf;  // Data for current port
reg [Naddr-1:0] abuf_r;  // Address of current port
reg [Ndata-1:0] dbuf_r;  // Data for current port
reg [Ndata-1:0] bwbuf; // Bit Write enable for current port
reg dup;               // Is the address a duplicate?
integer log;           // Log file descriptor
integer ip, ip2, ip_r, ib, ib_r, iw, iw_r, iwb, i; // Vector indices

// M-by-N core memory
`ifdef TSMC_STUCKAT_FAULT
reg [Ndata - 1:0] mem_sa0[Nword - 1:0];
reg [Ndata - 1:0] mem_sa1[Nword - 1:0];
`endif

initial
   begin
   if (log[0] === 1'bx)
      log = 1;
   chgmem = 1'b0;
   end

`ifdef TSMC_STUCKAT_FAULT
initial
begin
    #(0.001);
    for ( i = 0; i < Nword; i = i + 1) begin
        mem_sa0[i] = {Ndata{1'b1}};
        mem_sa1[i] = {Ndata{1'b0}};
    end
end
`endif

always @(D or BW or AW or EN)
   begin: WRITE //{
   if (EN !== 1'b0)
      begin //{ Possible write
      we = 1'b0;
      // Mark any write enabled ports & get write addresses
      for (ip = 0 ; ip < Nwrite ; ip = ip + 1)
         begin //{
         ib = ip * Ndata;
         iw = ib + Ndata;
         while (ib < iw && BW[ib] === 1'b1)
            ib = ib + 1;
         if (ib == iw)
            wwe[ip] = 1'b0;
         else
            begin //{ ip write enabled
            iw = ip * Naddr;
            for (ib = 0 ; ib < Naddr ; ib = ib + 1)
               begin //{
               abuf[ib] = AW[iw+ib];
               if (abuf[ib] !== 1'b0 && abuf[ib] !== 1'b1)
                  ib = Naddr;
               end //}
            if (ib == Naddr)
               begin //{
               if (abuf < Nword)
                  begin //{ Valid address
                  waddr[ip] = abuf;
                  wwe[ip] = 1'b1;
                  if (we == 1'b0)
                     begin
                     chgmem = ~chgmem;
                     we = EN;
                     end
                  end //}
               else
                  begin //{ Out of range address
                  wwe[ip] = 1'b0;
                  if( MES_ALL=="ON" && $realtime != 0)
                       $fdisplay (log,
                             "\nWarning! Int_Array instance, %m:",
                             "\n\t Port %0d", ip,
                             " write address x'%0h'", abuf,
                             " out of range at time %t.", $realtime,
                             "\n\t Port %0d data not written to memory.", ip);
                  end //}
               end //}
            else
               begin //{ unknown write address

               for (ib = 0 ; ib < Ndata ; ib = ib + 1)
                  dbuf[ib] = 1'bx;
               for (iw = 0 ; iw < Nword ; iw = iw + 1)
                  mem[iw] = dbuf;
               chgmem = ~chgmem;
               disable WRITE;
               end //}
            end //} ip write enabled
         end //} for ip
      if (we === 1'b1)
         begin //{ active write enable
         for (ip = 0 ; ip < Nwrite ; ip = ip + 1)
            begin //{
            if (wwe[ip])
               begin //{ write enabled bits of write port ip
               address = waddr[ip];
               dbuf = mem[address];
               iw = ip * Ndata;
               for (ib = 0 ; ib < Ndata ; ib = ib + 1)
                  begin //{
                  iwb = iw + ib;
                  if (BW[iwb] === 1'b0)
                     dbuf[ib] = D[iwb];
                  else if (BW[iwb] !== 1'b1)
                     dbuf[ib] = 1'bx;
                  end //}
               // Check other ports for same address &
               // common write enable bits active
               dup = 0;
               for (ip2 = ip + 1 ; ip2 < Nwrite ; ip2 = ip2 + 1)
                  begin //{
                  if (wwe[ip2] && address == waddr[ip2])
                     begin //{
                     // initialize bwbuf if first dup
                     if (!dup)
                        begin
                        for (ib = 0 ; ib < Ndata ; ib = ib + 1)
                           bwbuf[ib] = BW[iw+ib];
                        dup = 1;
                        end
                     iw = ip2 * Ndata;
                     for (ib = 0 ; ib < Ndata ; ib = ib + 1)
                        begin //{
                        iwb = iw + ib;
                        // New: Always set X if BW X
                        if (BW[iwb] === 1'b0)
                           begin //{
                           if (bwbuf[ib] !== 1'b1)
                              begin
                              if (D[iwb] !== dbuf[ib])
                                 dbuf[ib] = 1'bx;
                              end
                           else
                              begin
                              dbuf[ib] = D[iwb];
                              bwbuf[ib] = 1'b0;
                              end
                           end //}
                        else if (BW[iwb] !== 1'b1)
                           begin
                           dbuf[ib] = 1'bx;
                           bwbuf[ib] = 1'bx;
                           end
                        end //} for each bit
                        wwe[ip2] = 1'b0;
                     end //} Port ip2 address matches port ip
                  end //} for each port beyond ip (ip2=ip+1)
               // Write dbuf to memory
               mem[address] = dbuf;
               end //} wwe[ip] - write port ip enabled
            end //} for each write port ip
         end //} active write enable
      else if (we !== 1'b0)
         begin //{ unknown write enable
         for (ip = 0 ; ip < Nwrite ; ip = ip + 1)
            begin //{
            if (wwe[ip])
               begin //{ write X to enabled bits of write port ip
               address = waddr[ip];
               dbuf = mem[address];
               iw = ip * Ndata;
               for (ib = 0 ; ib < Ndata ; ib = ib + 1)
                  begin //{ 
                 if (BW[iw+ib] !== 1'b1)
                     dbuf[ib] = 1'bx;
                  end //} 
               mem[address] = dbuf;
               if( MES_ALL=="ON" && $realtime != 0)
                    $fdisplay (log,
                          "\nWarning! Int_Array instance, %m:",
                          "\n\t Enable pin unknown at time %t.", $realtime,
                          "\n\t Enabled bits at port %0d", ip,
                          " write address x'%0h' set unknown.", address);
               end //} wwe[ip] - write port ip enabled
            end //} for each write port ip
         end //} unknown write enable
      end //} possible write (EN != 0)
   end //} always @(D or BW or AW or EN)


// Read memory
always @(RDB or AR)
   begin //{
   for (ip_r = 0 ; ip_r < Nread ; ip_r = ip_r + 1)
      begin //{
      iw_r = ip_r * Naddr;
      for (ib_r = 0 ; ib_r < Naddr ; ib_r = ib_r + 1)
         begin
         abuf_r[ib_r] = AR[iw_r+ib_r];
         if (abuf_r[ib_r] !== 0 && abuf_r[ib_r] !== 1)
            ib_r = Naddr;
         end
      iw_r = ip_r * Ndata;
      if (ib_r == Naddr && abuf_r < Nword)
         begin //{ Read valid address
`ifdef TSMC_INITIALIZE_FAULT
         dbuf_r = mem[abuf_r]  ^ mem_fault[abuf_r];
`else
         dbuf_r = mem[abuf_r];
         `ifdef TSMC_STUCKAT_FAULT
         dbuf_r = (mem[abuf_r] & mem_sa0[abuf_r] | mem_sa1[abuf_r]);
         `else
         dbuf_r = mem[abuf_r];
         `endif
`endif
         for (ib_r = 0 ; ib_r < Ndata ; ib_r = ib_r + 1)
            begin
            if (Q[iw_r+ib_r] == dbuf_r[ib_r])
                Q[iw_r+ib_r] <= #(dly) dbuf_r[ib_r];
            else
                begin
                Q[iw_r+ib_r] <= #(dly) dbuf_r[ib_r];
//                Q[iw_r+ib_r] <= dbuf_r[ib_r];
                end // else
            end // for
         end //} valid address
      else
         begin //{ Invalid address
         if( MES_ALL=="ON" && $realtime != 0)
               $fwrite (log, "\nWarning! Int_Array instance, %m:",
                       "\n\t Port %0d read address", ip_r);
         if (ib_r > Naddr)
         begin
         if( MES_ALL=="ON" && $realtime != 0)
            $fwrite (log, " unknown");
         end
         else
         begin
         if( MES_ALL=="ON" && $realtime != 0)
            $fwrite (log, " x'%0h' out of range", abuf_r);
         end
         if( MES_ALL=="ON" && $realtime != 0)
            $fdisplay (log,
                    " at time %t.", $realtime,
                    "\n\t Port %0d outputs set to unknown.", ip_r);
         for (ib_r = 0 ; ib_r < Ndata ; ib_r = ib_r + 1)
            Q[iw_r+ib_r] <= #(dly) 1'bx;
         end //} invalid address
      end //} for each read port ip_r
   end //} always @(chgmem or AR)

// Task for printing the memory between specified addresses..
task printMemoryFromTo;     
    input [Naddr - 1:0] from;   // memory content are printed, start from this address.
    input [Naddr - 1:0] to;     // memory content are printed, end at this address.
    integer i;
    begin 
        $display ("Dumping register file...");
        $display("@    Address, content-----");
        for (i = from; i <= to; i = i + 1) begin
`ifdef TSMC_STUCKAT_FAULT
            $display("@%d, %b", i, (mem[i] & mem_sa0[i]) | mem_sa1[i]);
`else
            $display("@%d, %b", i, mem[i]);
`endif
        end 
    end
endtask

// Task for printing entire memory, including normal array and redundancy array.
task printMemory;   
    integer i;
    begin
        $display ("Dumping register file...");
        $display("@    Address, content-----");
        for (i = 0; i < Nword; i = i + 1) begin
`ifdef TSMC_STUCKAT_FAULT
            $display("@%d, %b", i, (mem[i] & mem_sa0[i]) | mem_sa1[i]);
`else
            $display("@%d, %b", i, mem[i]);
`endif
        end 
    end
endtask

task xMemoryAll;   
    begin
       for (ib = 0 ; ib < Ndata ; ib = ib + 1)
          dbuf[ib] = 1'bx;
       for (iw = 0 ; iw < Nword ; iw = iw + 1)
          mem[iw] = dbuf;
       if( MES_ALL=="ON" && $realtime != 0) $display("\nInfo : Set Memory Content to all x at %t.>>", $realtime); 
    end
endtask

task zeroMemoryAll;   
    begin
       for (ib = 0 ; ib < Ndata ; ib = ib + 1)
          dbuf[ib] = 1'b0;
       for (iw = 0 ; iw < Nword ; iw = iw + 1)
          mem[iw] = dbuf;
       if( MES_ALL=="ON" && $realtime != 0) $display("\nInfo : Set Memory Content to all 0 at %t.>>", $realtime); 
    end
endtask

task oneMemoryAll;   
    begin
       for (ib = 0 ; ib < Ndata ; ib = ib + 1)
          dbuf[ib] = 1'b1;
       for (iw = 0 ; iw < Nword ; iw = iw + 1)
          mem[iw] = dbuf;
       if( MES_ALL=="ON" && $realtime != 0) $display("\nInfo : Set Memory Content to all 1 at %t.>>", $realtime); 
    end
endtask

task randomMemoryAll;   
    begin
       for (ib = 0 ; ib < Ndata ; ib = ib + 1)
          dbuf[ib] = $random;
       for (iw = 0 ; iw < Nword ; iw = iw + 1)
          mem[iw] = dbuf; 
       if( MES_ALL=="ON" && $realtime != 0) $display("\nInfo : Set Memory Content to random patterns at %t.>>", $realtime);
    end
endtask

// Task for Loading a perdefined set of data from an external file.
task preloadData;   
    input [256*8:1] infile;  // Max 256 character File Name
    begin
        $display ("%m: Reading file, %0s, into the register file", infile);
`ifdef TSMC_INITIALIZE_FORMAT_BINARY
        $readmemb (infile, mem, 0, Nword-1);
`else
        $readmemh (infile, mem, 0, Nword-1);
`endif
    end
endtask

`ifdef TSMC_STUCKAT_FAULT
task injectSA;     
    input [Naddr - 1:0] address;
    input [5 - 1:0] index;
    input stuck_at;
    integer sum;
    integer i;
    reg sa1;
    reg sa0;
    begin 
        if (stuck_at === 1'b0) begin
            mem_sa0[address][index] = 1'b0;
            mem_sa1[address][index] = 1'b0;
            sum = 0;
            for (i = 0; i < Nword; i = i + 1) begin
                sa0 = ~mem_sa0[address][i];
                sa1 = mem_sa1[address][i];
                sum = sa0 + sa1 + sum;
            end
            $display ("A s-a-0 error injected at address location %d = %b, current SA errors in this address is %d", address, ({Ndata{1'bx}} &
            mem_sa0[address]) | mem_sa1[address], sum);
        end 
        else if (stuck_at === 1'b1) begin
            mem_sa1[address][index] = 1'b1;
            mem_sa0[address][index] = 1'b1;
            sum = 0;
            for (i = 0; i < Nword; i = i + 1) begin
                sa0 = ~mem_sa0[address][i];
                sa1 = mem_sa1[address][i];
                sum = sa0 + sa1 + sum;
            end
            $display ("A s-a-1 error injected at address location %d = %b, current SA errors in this address is %d", address, ({Ndata{1'bx}} &
            mem_sa0[address]) | mem_sa1[address], sum);
        end
    end 
endtask
`endif

endmodule




