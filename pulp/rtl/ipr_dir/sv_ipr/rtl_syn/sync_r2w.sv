`timescale 1ns / 1ps
`default_nettype none

module sync_r2w #(
    parameter int ASIZE = 4
) (
    input  wire logic             wclk,
    input  wire logic             wrst_n,
    input  wire logic [ASIZE:0]   rptr,
    output logic [ASIZE:0]   wq2_rptr
);

    logic [ASIZE:0] wq1_rptr;

    always_ff @(posedge wclk or negedge wrst_n) begin
        if (!wrst_n)
            {wq2_rptr, wq1_rptr} <= '0;
        else
            {wq2_rptr, wq1_rptr} <= {wq1_rptr, rptr};
    end

endmodule

`resetall
