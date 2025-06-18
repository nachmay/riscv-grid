`timescale 1ns / 1ps
`default_nettype none

module sync_w2r #(
    parameter int ASIZE = 4
) (
    input  wire logic             rclk,
    input  wire logic             rrst_n,
    output logic [ASIZE:0]   rq2_wptr,
    input  wire logic [ASIZE:0]   wptr
);

    logic [ASIZE:0] rq1_wptr;

    always_ff @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n)
            {rq2_wptr, rq1_wptr} <= '0;
        else
            {rq2_wptr, rq1_wptr} <= {rq1_wptr, wptr};
    end

endmodule

`resetall
