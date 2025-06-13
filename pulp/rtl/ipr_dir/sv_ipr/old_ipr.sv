`include "pulp_soc_defines.sv"


module ipr #(
    parameter int DSIZE = 8,            // Data width (int for SV)
    parameter int ASIZE = 4,            // Address size (FIFO depth = 2^ASIZE)
    parameter string FALLTHROUGH = "TRUE", // First word fall-through (string type)
    parameter int WATCHDOG_LIMIT = 100  // Cycles without rinc to trigger flush
) (  input  logic        w_clk,
  input  logic        w_rst_n,
  input  logic        r_clk,
  input  logic        r_rst_n,

  // LSU‐side Read Interface
  IPR_READ_IF.slave   read_if,
  // LSU‐side Write Interface
  IPR_WRITE_IF.slave  write_if
);



// ------------------------------------------------------------------------
  // 2) Grant Event Logic (same as original)
  // ------------------------------------------------------------------------
  logic read_inflight,  write_inflight;
  logic read_gnt_evt,   write_gnt_evt;
  logic read_gnt_dly,   write_gnt_dly;
  logic fifo_empty, fifo_full;
  logic fifo_almost_empty, fifo_almost_full;
  logic we, re;

  assign read_gnt_evt  = read_if.req  && !read_inflight  && !fifo_empty;
  assign write_gnt_evt = write_if.req && write_if.we && !write_inflight && !fifo_full;

  assign we = write_if.req && write_if.we;

  async_fifo  #(
      .DSIZE (DSIZE),
      .ASIZE (ASIZE),
      .FALLTHROUGH (FALLTHROUGH)
  )async_fifo_i (
      .wclk(w_clk),
      .wrst_n(w_rst_n),
      .winc(we),
      .wdata(write_if.wdata),
      .wfull(fifo_full),
      .awfull(fifo_almost_full),
      .rclk(r_clk),
      .rrst_n(r_rst_n),
      .rinc(read_gnt_dly),
      .rdata(read_if.rdata ),
      .rempty(fifo_empty),
      .arempty(fifo_almost_empty)
  );

  
  // ------------------------------------------------------------------------
  // 3) Pipelined Valid Signal (1-cycle after grant)
  // ------------------------------------------------------------------------
  always_ff @(posedge w_clk or negedge w_rst_n) begin
    if (!w_rst_n) begin
      write_gnt_dly <= 1'b0;
    end else begin
      write_gnt_dly <= write_gnt_evt;
    end
  end


  always_ff @(posedge r_clk or negedge r_rst_n) begin
    if (!r_rst_n) begin
      read_gnt_dly  <= 1'b0;
    end else begin
      read_gnt_dly  <= read_gnt_evt;
    end
  end



  // ------------------------------------------------------------------------
  // 4) Inflight Tracking
  // ------------------------------------------------------------------------
  always_ff @(posedge w_clk or negedge w_rst_n) begin
    if (!w_rst_n) begin
      write_inflight <= 1'b0;
    end else begin
      if (write_gnt_evt)      write_inflight <= 1'b1;
      else if (write_gnt_dly) write_inflight <= 1'b0;
    end
  end

  always_ff @(posedge r_clk or negedge r_rst_n) begin
    if (!r_rst_n) begin
      read_inflight  <= 1'b0;
    end else begin
      if (read_gnt_evt)       read_inflight  <= 1'b1;
      else if (read_gnt_dly)  read_inflight  <= 1'b0;
    end
  end


  assign read_if.gnt     = read_gnt_evt;
  assign read_if.rvalid  = read_gnt_dly;

  assign write_if.gnt    = write_gnt_evt;
  assign write_if.rvalid = write_gnt_dly;






endmodule


