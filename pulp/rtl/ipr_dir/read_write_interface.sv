// Copyright 2025, All Rights Reserved
// Module: read_write_interface


// Read Interface Definition
interface IPR_READ_IF (
  input logic clk, rst_n
);
  logic        req;
  logic [31:0] addr;
  logic        we;
  logic [3:0]  be;
  logic        gnt;
  logic        rvalid;
  logic [31:0] rdata;

  modport master (
    output req, addr, be, we,
    input  gnt, rvalid, rdata
  );
  modport slave (
    input  req, addr, be, we,
    output gnt, rvalid, rdata
  );
endinterface

// Write Interface Definition
interface IPR_WRITE_IF (
  input logic clk, rst_n
);
  logic        req;
  logic [31:0] addr;
  logic [31:0] wdata;
  logic        we;
  logic [3:0]  be;
  logic        gnt;
  logic        rvalid;
  logic [31:0] rdata;


  modport master (
    output req, addr, wdata, we, be,
    input  gnt, rvalid, rdata
  );
  modport slave (
    input  req, addr, wdata, we, be,
    output gnt, rvalid, rdata
  );
endinterface
