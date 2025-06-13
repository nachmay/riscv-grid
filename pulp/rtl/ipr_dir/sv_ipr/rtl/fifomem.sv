
`timescale 1ns / 1ps
`default_nettype none

module fifomem #(
    parameter int DATASIZE = 8,     // Memory data word width
    parameter int ADDRSIZE = 4,     // Number of mem address bits
    parameter string FALLTHROUGH = "TRUE" // First word fall-through
) (
    input  wire logic                wclk,
    input  wire logic                wclken,
    input  wire logic [ADDRSIZE-1:0] waddr,
    input  wire logic [DATASIZE-1:0] wdata,
    input  wire logic                wfull,
    input  wire logic                rclk,
    input  wire logic                rclken,
    input  wire logic [ADDRSIZE-1:0] raddr,
    output logic [DATASIZE-1:0] rdata
);

    localparam int DEPTH = 1 << ADDRSIZE;

    logic [DATASIZE-1:0] mem [0:DEPTH-1];
    logic [DATASIZE-1:0] rdata_r;

    always_ff @(posedge wclk) begin
        if (wclken && !wfull)
            mem[waddr] <= wdata;
    end

    generate
        if (FALLTHROUGH == "TRUE") begin : fallthrough
            assign rdata = mem[raddr];
        end else begin : registered_read
            always_ff @(posedge rclk) begin
                if (rclken)
                    rdata_r <= mem[raddr];
            end
            assign rdata = rdata_r;
        end
    endgenerate

endmodule

`resetall

/*
`timescale 1ns / 1ps
`default_nettype none

module fifomem #(
    parameter int DATASIZE = 8,
    parameter int ADDRSIZE = 4,
    parameter string FALLTHROUGH = "TRUE"
) (
    input  wire logic                wclk,
    input  wire logic                wclken,
    input  wire logic [ADDRSIZE-1:0] waddr,
    input  wire logic [DATASIZE-1:0] wdata,
    input  wire logic                wfull,
    input  wire logic                rclk,
    input  wire logic                rclken,
    input  wire logic [ADDRSIZE-1:0] raddr,
input wire rrst_n,
    output logic [DATASIZE-1:0]      rdata
);

    localparam int DEPTH = 1 << ADDRSIZE;

    logic [DATASIZE-1:0] mem [0:DEPTH-1];
    logic [DATASIZE-1:0] rdata_r;

    always_ff @(posedge wclk) begin
        if (wclken && !wfull)
            mem[waddr] <= wdata;
    end

    generate
        if (FALLTHROUGH == "TRUE") begin : fallthrough
            assign rdata = mem[raddr];
        end else begin : registered_read
            always_ff @(posedge rclk or negedge rrst_n) begin
                if (!rrst_n)
                    rdata_r <= '0;
                else if (rclken)
                    rdata_r <= mem[raddr];
            end
            assign rdata = rdata_r;
        end
    endgenerate

endmodule

`resetall
*/
