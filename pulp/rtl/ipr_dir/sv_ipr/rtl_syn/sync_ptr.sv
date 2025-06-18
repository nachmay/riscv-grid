`timescale 1ns / 1ps
`default_nettype none

module sync_ptr #(
    parameter int ASIZE = 4
) (
    input wire logic             dest_clk,
    input  wire logic             dest_rst_n,
    input  logic [ASIZE:0]   src_ptr,
    output logic [ASIZE:0]   dest_ptr
);

    logic [ASIZE:0] ptr_x;

    always_ff @(posedge dest_clk or negedge dest_rst_n) begin
        if (!dest_rst_n)
            {dest_ptr, ptr_x} <= '0;
        else
            {dest_ptr, ptr_x} <= {ptr_x, src_ptr};
    end

endmodule

`resetall
