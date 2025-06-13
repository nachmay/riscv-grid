/*
`include "pulp_soc_defines.sv"

module ipr_fifo (
  input  logic        clk,
  input  logic        rst_n,

  // LSU‐side Read Interface
  IPR_READ_IF.slave   read_if,
  // LSU‐side Write Interface
  IPR_WRITE_IF.slave  write_if
);

  // ------------------------------------------------------------------------
  // 1) Single‐word storage
  // ------------------------------------------------------------------------
  logic [31:0] fifo_data;
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      fifo_data <= 32'd0;
    else if (write_if.req && write_if.we)
      fifo_data <= write_if.wdata;
  end

  // ------------------------------------------------------------------------
  // 2) Track “in-flight” so we know when to issue the next grant
  // ------------------------------------------------------------------------
  logic read_inflight,  write_inflight;
  logic read_gnt_evt,  write_gnt_evt;
  logic read_gnt_dly,  write_gnt_dly;

  // a) Detect new requests only when not already in-flight
  assign read_gnt_evt  = read_if.req  && !read_inflight;
  assign write_gnt_evt = write_if.req && write_if.we && !write_inflight;

  // b) One‐cycle delay for rvalid
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      read_gnt_dly  <= 1'b0;
      write_gnt_dly <= 1'b0;
    end else begin
      read_gnt_dly  <= read_gnt_evt;
      write_gnt_dly <= write_gnt_evt;
    end
  end

  // c) Track in-flight: set on gnt_evt, clear when rvalid (delayed)
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      read_inflight  <= 1'b0;
      write_inflight <= 1'b0;
    end else begin
      if (read_gnt_evt)   read_inflight  <= 1'b1;
      else if (read_gnt_dly) read_inflight  <= 1'b0;

      if (write_gnt_evt)   write_inflight <= 1'b1;
      else if (write_gnt_dly) write_inflight <= 1'b0;
    end
  end

  // ------------------------------------------------------------------------
  // 3) Hook up exactly the five LSU signals
  // ------------------------------------------------------------------------
  // read data
  assign read_if.rdata   = fifo_data;

  // grant = one‐cycle pulse when new request
  assign read_if.gnt     = read_gnt_evt;
  assign write_if.gnt    = write_gnt_evt;

  // valid = one‐cycle pulse one cycle after grant
  assign read_if.rvalid  = read_gnt_dly;
  assign write_if.rvalid = write_gnt_dly;

endmodule
*/

`include "pulp_soc_defines.sv"

module ipr_fifo (
  input  logic        clk,
  input  logic        rst_n,

  // LSU‐side Read Interface
  IPR_READ_IF.slave   read_if,
  // LSU‐side Write Interface
  IPR_WRITE_IF.slave  write_if
);

  // ------------------------------------------------------------------------
  // 1) FIFO Storage
  // ------------------------------------------------------------------------
  localparam int FIFO_DEPTH = 50;
  localparam int FIFO_ADDR_WIDTH = $clog2(FIFO_DEPTH);

  logic [31:0] fifo_mem [0:FIFO_DEPTH-1];

  logic [FIFO_ADDR_WIDTH-1:0] read_ptr, write_ptr;
  logic [FIFO_ADDR_WIDTH:0]   fifo_count;

  logic fifo_empty, fifo_full;

  assign fifo_empty = (fifo_count == 0);
  assign fifo_full  = (fifo_count == FIFO_DEPTH);

  // ------------------------------------------------------------------------
  // 2) Grant Event Logic (same as original)
  // ------------------------------------------------------------------------
  logic read_inflight,  write_inflight;
  logic read_gnt_evt,   write_gnt_evt;
  logic read_gnt_dly,   write_gnt_dly;

  assign read_gnt_evt  = read_if.req  && !read_inflight  && !fifo_empty;
  assign write_gnt_evt = write_if.req && write_if.we && !write_inflight && !fifo_full;

  // ------------------------------------------------------------------------
  // 3) Pipelined Valid Signal (1-cycle after grant)
  // ------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      read_gnt_dly  <= 1'b0;
      write_gnt_dly <= 1'b0;
    end else begin
      read_gnt_dly  <= read_gnt_evt;
      write_gnt_dly <= write_gnt_evt;
    end
  end

  // ------------------------------------------------------------------------
  // 4) Inflight Tracking
  // ------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      read_inflight  <= 1'b0;
      write_inflight <= 1'b0;
    end else begin
      if (read_gnt_evt)       read_inflight  <= 1'b1;
      else if (read_gnt_dly)  read_inflight  <= 1'b0;

      if (write_gnt_evt)      write_inflight <= 1'b1;
      else if (write_gnt_dly) write_inflight <= 1'b0;
    end
  end

  // ------------------------------------------------------------------------
  // 5) Write and Read Logic
  // ------------------------------------------------------------------------
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      write_ptr  <= '0;
      read_ptr   <= '0;
      fifo_count <= '0;
    end else begin
      if (write_if.req && write_if.we && !fifo_full) begin
        fifo_mem[write_ptr] <= write_if.wdata;
        write_ptr <= (write_ptr + 1) % FIFO_DEPTH;
	fifo_count <= fifo_count + 1;
      end

      if (read_gnt_dly) begin
        read_ptr <= (read_ptr + 1) % FIFO_DEPTH;
	fifo_count <= fifo_count - 1;

      end

    end
  end

  // ------------------------------------------------------------------------
  // 6) LSU Interface Hooks
  // ------------------------------------------------------------------------
  assign read_if.rdata   = fifo_mem[read_ptr];  // Valid when rvalid = 1
  assign read_if.gnt     = read_gnt_evt;
  assign read_if.rvalid  = read_gnt_dly;

  assign write_if.gnt    = write_gnt_evt;
  assign write_if.rvalid = write_gnt_dly;

endmodule

