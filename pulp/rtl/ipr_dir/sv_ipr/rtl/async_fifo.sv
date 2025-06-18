

`timescale 1ns / 1ps
`default_nettype none

module async_fifo #(
    parameter int DSIZE = 8,
    parameter int ASIZE = 10,
    parameter bit FALLTHROUGH = 1,
    parameter int WATCHDOG_LIMIT = 100,  // Cycles without rinc to trigger flush
    parameter int BULK_NUMBER = 10

) (
    input  wire logic             wclk,
    input  wire logic             wrst_n,
    input  wire logic             winc,
    input  wire logic [DSIZE-1:0] wdata,
    output logic                  wfull,
    output logic                  awfull,
    input  wire logic             rclk,
    input  wire logic             rrst_n,
    input  wire logic             rinc,
    output logic [DSIZE-1:0]      rdata,
    output logic                  rempty,
    output logic                  arempty,
    input logic rinc_mem
);

    logic [ASIZE-1:0] waddr, raddr;
    logic [ASIZE:0]   wptr, rptr, wq2_rptr, rq2_wptr;
    logic             winc_r;

    // Register winc into wclk domain
    always_ff @(posedge wclk or negedge wrst_n) begin
        if (!wrst_n)
            winc_r <= 1'b0;
        else
            winc_r <= winc;
    end

    // Synchronize read pointer to write domain
    sync_r2w #(ASIZE) sync_r2w_inst (
        .wq2_rptr(wq2_rptr),
        .rptr(rptr),
        .wclk(wclk),
        .wrst_n(wrst_n)
    );

    // Synchronize write pointer to read domain
    sync_w2r #(ASIZE) sync_w2r_inst (
        .rq2_wptr(rq2_wptr),
        .wptr(wptr),
        .rclk(rclk),
        .rrst_n(rrst_n)
    );

    // Write pointer and full logic
    wptr_full #(ASIZE) wptr_full_inst (
        .awfull(awfull),
        .wfull(wfull),
        .waddr(waddr),
        .wptr(wptr),
        .wq2_rptr(wq2_rptr),
        .winc(winc),
        .wclk(wclk),
        .wrst_n(wrst_n)
    );

    // Dual-clock FIFO memory
    fifomem #(DSIZE, ASIZE, FALLTHROUGH) fifomem_inst (
        .rclken(rinc_mem),
        .rclk(rclk),
        .rdata(rdata),
        .wdata(wdata),
        .waddr(waddr),
        .raddr(raddr),
        .wclken(winc),
        .wfull(wfull),
//.rrst_n(rrst_n),
        .wclk(wclk)
    );

    // Read pointer and empty logic
    rptr_empty #(ASIZE) rptr_empty_inst (
        .arempty(arempty),
        .rempty(rempty),
        .raddr(raddr),
        .rptr(rptr),
        .rq2_wptr(rq2_wptr),
        .rinc(rinc),
        .rclk(rclk),
        .rrst_n(rrst_n)
    );

endmodule

`resetall

