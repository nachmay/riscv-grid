

`include "read_write_interface.sv"

module ipr_region (
  // Clock & Reset
  input  logic        clk,
  input  logic        rst_n,

  // Core Data‐Memory Interface (input side)
  input  logic [31:0] data_addr_i,
  input  logic [31:0] data_wdata_i,
  input  logic        data_we_i,
  input  logic        data_req_i,
  input  logic [3:0]  data_be_i,

  // Core Data‐Memory Interface (IPR output side)
  output logic [31:0] data_rdata_o,
  output logic        data_gnt_o,
  output logic        data_rvalid_o,

  // “Default” passthrough interface for non‐IPR
  IPR_WRITE_IF.master default_if,

  // IPR Masters (4 reads, 4 writes)
  IPR_READ_IF.master  read_north_if,
  IPR_READ_IF.master  read_south_if,
  IPR_READ_IF.master  read_east_if,
  IPR_READ_IF.master  read_west_if,

  IPR_WRITE_IF.master write_north_if,
  IPR_WRITE_IF.master write_south_if,
  IPR_WRITE_IF.master write_east_if,
  IPR_WRITE_IF.master write_west_if
);

  //--------------------------------------------------------------------------
  // 1) IPR address decode
  //--------------------------------------------------------------------------
  logic is_ipr;
  // IPR range 0x1900_0000–0x1A00_0000  ⇒ top bits [27:24] == 4’h9
  assign is_ipr = (data_addr_i[27:24] == 4'h9) && data_req_i;

  logic [1:0] ipr_select;
  assign ipr_select = data_addr_i[5:4];

  //--------------------------------------------------------------------------
  // 2) In‐flight transaction latch
  //    We only support one IPR at a time.
  //--------------------------------------------------------------------------
  logic        ipr_busy;
  logic        ipr_op_write;  // 1=write, 0=read
  logic [1:0]  ipr_chan;      // which of NORTH/SOUTH/EAST/WEST

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      ipr_busy      <= 1'b0;
      ipr_op_write  <= 1'b0;
      ipr_chan      <= 2'b00;
    end else begin
      // start a new IPR when one arrives and we’re not already busy
      if (is_ipr) begin
        ipr_busy      <= 1'b1;
        ipr_op_write  <= data_we_i;
        ipr_chan      <= ipr_select;
      end
      // clear when the response has been accepted
      else if (ipr_busy && data_rvalid_o) begin
        ipr_busy      <= 1'b0;
      end
    end
  end

  //--------------------------------------------------------------------------
  // 3) Request routing
  //    Send every request either to default_if (non-IPR) or
  //    to one of the 8 IPR masters based on we/select.
  //--------------------------------------------------------------------------
  always_comb begin
    // Default passthrough (non-IPR)
    default_if.req   = data_req_i && !is_ipr;
    default_if.addr  = data_addr_i;
    default_if.wdata = data_wdata_i;
    default_if.we    = data_we_i;
    default_if.be    = data_be_i;

    // Deassert all IPR reqs by default
    read_north_if.req  = 1'b0;
    read_south_if.req  = 1'b0;
    read_east_if.req   = 1'b0;
    read_west_if.req   = 1'b0;
    write_north_if.req = 1'b0;
    write_south_if.req = 1'b0;
    write_east_if.req  = 1'b0;
    write_west_if.req  = 1'b0;

    // --- Always drive addresses & byte-enables (and wdata/we for writes) ---
    read_north_if.addr  = data_addr_i;  read_north_if.be  = data_be_i;
    read_south_if.addr  = data_addr_i;  read_south_if.be  = data_be_i;
    read_east_if.addr   = data_addr_i;  read_east_if.be   = data_be_i;
    read_west_if.addr   = data_addr_i;  read_west_if.be   = data_be_i;
   
    read_north_if.we  = data_we_i;
    read_south_if.we  = data_we_i;
    read_east_if.we  = data_we_i;
    read_west_if.we  = data_we_i;

    write_north_if.addr  = data_addr_i; write_north_if.be  = data_be_i;
    write_south_if.addr  = data_addr_i; write_south_if.be  = data_be_i;
    write_east_if.addr   = data_addr_i; write_east_if.be   = data_be_i;
    write_west_if.addr   = data_addr_i; write_west_if.be   = data_be_i;

    write_north_if.wdata = data_wdata_i; write_north_if.we = data_we_i;
    write_south_if.wdata = data_wdata_i; write_south_if.we = data_we_i;
    write_east_if.wdata  = data_wdata_i; write_east_if.we  = data_we_i;
    write_west_if.wdata  = data_wdata_i; write_west_if.we  = data_we_i;

    if (is_ipr) begin
      if (data_we_i) begin
        // write
        case (ipr_select)
          2'b00: write_north_if.req = data_req_i;
          2'b01: write_south_if.req = data_req_i;
          2'b10: write_east_if.req  = data_req_i;
          2'b11: write_west_if.req  = data_req_i;
        endcase
      end else begin
        // read
        case (ipr_select)
          2'b00: read_north_if.req = data_req_i;
          2'b01: read_south_if.req = data_req_i;
          2'b10: read_east_if.req  = data_req_i;
          2'b11: read_west_if.req  = data_req_i;
        endcase
      end
    end
  end

  //--------------------------------------------------------------------------
  // 4) Response muxing
  //    While ipr_busy is high, grab the response from the channel we latched.
  //    When not ipr_busy, pass through default_if’s response.
  //--------------------------------------------------------------------------
  logic        gnt_selected;
  logic        rvalid_selected;
  logic [31:0] rdata_selected;



  always_comb begin
    if (!is_ipr) begin
      gnt_selected = default_if.gnt;
    end else if (data_we_i) begin
      // write grant comes directly from the latched write channel
      case (ipr_select)
        2'b00: gnt_selected = write_north_if.gnt;
        2'b01: gnt_selected = write_south_if.gnt;
        2'b10: gnt_selected = write_east_if.gnt;
        2'b11: gnt_selected = write_west_if.gnt;
      endcase
    end else begin
      // read grant comes directly from the latched read channel
      case (ipr_select)
        2'b00: gnt_selected = read_north_if.gnt;
        2'b01: gnt_selected = read_south_if.gnt;
        2'b10: gnt_selected = read_east_if.gnt;
        2'b11: gnt_selected = read_west_if.gnt;
      endcase
    end
  end


  always_comb begin
    // defaults
 
    rvalid_selected = default_if.rvalid;
    rdata_selected  = default_if.rdata;

    if (ipr_busy) begin
      if (ipr_op_write) begin
        // write response (no rdata)
        case (ipr_chan)
          2'b00: begin rvalid_selected = write_north_if.rvalid; end
          2'b01: begin                        rvalid_selected = write_south_if.rvalid; end
          2'b10: begin                        rvalid_selected = write_east_if.rvalid;  end
          2'b11: begin                        rvalid_selected = write_west_if.rvalid;  end
        endcase
        // rdata_selected stays 0
      end else begin
        // read response
        case (ipr_chan)
          2'b00: begin 
                   rvalid_selected = read_north_if.rvalid;
                   rdata_selected  = read_north_if.rdata;
                 end
          2'b01: begin 
                   rvalid_selected = read_south_if.rvalid;
                   rdata_selected  = read_south_if.rdata;
                 end
          2'b10: begin 
                   rvalid_selected = read_east_if.rvalid;
                   rdata_selected  = read_east_if.rdata;
                 end
          2'b11: begin 
                   rvalid_selected = read_west_if.rvalid;
                   rdata_selected  = read_west_if.rdata;
                 end
        endcase
      end
    end
  end

/*
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      data_rdata_o = '0;
      latched_is_ipr <= 0;
    end else if () begin
      latched_data_o <= rdata_selected;
      latched_is_ipr <= is_ipr;

    if (is_ipr && data_rvalid_o)

  assign data_rdata_o =  (latched_is_ipr && data_rvalid_o) ? latched_data_o :rdata_selected;
*/
  //--------------------------------------------------------------------------
  // 5) Drive core‐facing outputs
  //--------------------------------------------------------------------------
  assign data_gnt_o    = gnt_selected;
  assign data_rvalid_o = rvalid_selected;
  assign data_rdata_o  = rdata_selected;

/*
  //--------------------------------------------------------------------------
  // Optional debug
  //--------------------------------------------------------------------------
  // synopsys translate_off
  always_ff @(posedge clk) begin
    if (is_ipr && data_req_i)
      $display("%0t [ipr_region] REQ→ chan=%b we=%b", $time, ipr_select, data_we_i);
    if (is_ipr && (data_gnt_o||data_rvalid_o))
      $display("%0t [ipr_region] RSP→ chan=%b gnt=%b rvalid=%b data=0x%08x",
               $time, ipr_chan, data_gnt_o, data_rvalid_o, data_rdata_o);
  end
  // synopsys translate_on
*/

endmodule


