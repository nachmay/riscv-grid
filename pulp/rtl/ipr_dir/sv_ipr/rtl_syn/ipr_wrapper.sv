module ipr_wrapper #(
    parameter int DSIZE = 8,            // Data width (int for SV)
    parameter int ASIZE = 4,            // Address size (FIFO depth = 2^ASIZE)
    parameter bit FALLTHROUGH = 1, // First word fall-through (string type)
    parameter int WATCHDOG_LIMIT = 100,  // Cycles without rinc to trigger flush
    parameter int BULK_NUMBER = 10
) (  input  logic        w_clk,
  input  logic        w_rst_n,
  input  logic        r_clk,
  input  logic        r_rst_n,
  output logic error_flag,

  // LSU‐side Read Interface
  IPR_READ_IF.slave   read_if,
  // LSU‐side Write Interface
  IPR_WRITE_IF.slave  write_if
);

logic [DSIZE-1:0] wdata;

logic [DSIZE-1:0] rdata;
logic we, re;
logic [ASIZE-1:0] waddr;
logic [ASIZE-1:0] raddr;
logic w_full;



    // Dual-clock FIFO memory
    fifomem #(DSIZE, ASIZE, FALLTHROUGH) fifomem_inst (
        .rclken(re),
        .rclk(r_clk),
        .rdata(rdata),
        .wdata(wdata),
        .waddr(waddr),
        .raddr(raddr),
        .wclken(we),
        .wfull(w_full),
//.rrst_n(rrst_n),
        .wclk(w_clk)
    );



    ipr_cntrl #(
    .DSIZE(DSIZE),            // Data width (int for SV)
    .ASIZE(ASIZE),            // Address size (FIFO depth = 2^ASIZE)
    .FALLTHROUGH(1), // First word fall-through (string type)
    .WATCHDOG_LIMIT( 100),  // Cycles without rinc to trigger flush
    .BULK_NUMBER  (10)
) ipr_cntrl_inst(  .w_clk(w_clk),
   .w_rst_n(w_rst_n),
   .r_clk(r_clk),
   .r_rst_n(r_rst_n),
   .error_flag(error_flag),
   .we (we),
   .re(re),
   .rdata(rdata),
   .wdata(wdata),
   .waddr(waddr),
   .raddr(raddr),
   .fifo_full(w_full),

  

  // LSU‐side Read Interface
  .read_if(read_if),
  // LSU‐side Write Interface
  .write_if(write_if)
);
endmodule




