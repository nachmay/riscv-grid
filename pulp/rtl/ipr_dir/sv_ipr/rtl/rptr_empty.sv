`timescale 1ns / 1ps
`default_nettype none

module rptr_empty #(
    parameter int ADDRSIZE = 4
) (
    input  wire logic                rclk,
    input  wire logic                rrst_n,
    input  wire logic                rinc,
    input  wire logic [ADDRSIZE:0]   rq2_wptr,
    output logic                rempty,
    output logic                arempty,
    output wire logic [ADDRSIZE-1:0] raddr,
    output logic [ADDRSIZE:0]   rptr
);

    logic [ADDRSIZE:0] rbin;
    logic [ADDRSIZE:0] rgraynext;
    logic [ADDRSIZE:0] rbinnext;
    logic [ADDRSIZE:0] rgraynextm1;
    logic              arempty_val;
    logic              rempty_val;

    // GRAYSTYLE2 pointer
    always_ff @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n)
            {rbin, rptr} <= '0;
        else
            {rbin, rptr} <= {rbinnext, rgraynext};
    end

    // Memory read-address pointer
    assign raddr = rbin[ADDRSIZE-1:0];
    assign rbinnext = rbin + (rinc & ~rempty);
    assign rgraynext = (rbinnext >> 1) ^ rbinnext;
    assign rgraynextm1 = ((rbinnext + 1'b1) >> 1) ^ (rbinnext + 1'b1);

    // Empty and almost empty conditions
    assign rempty_val = (rgraynext == rq2_wptr);
    assign arempty_val = (rgraynextm1 == rq2_wptr);

    always_ff @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n) begin
            arempty <= 1'b0;
            rempty <= 1'b1;
        end else begin
            arempty <= arempty_val;
            rempty <= rempty_val;
        end
    end

endmodule

`resetall

/*
`timescale 1ns / 1ps
`default_nettype none

module rptr_empty #(
    parameter int ADDRSIZE = 4
) (
    input  wire logic                rclk,
    input  wire logic                rrst_n,
    input  wire logic                rinc,
    input  wire logic [ADDRSIZE:0]   rq2_wptr,
    output logic                     rempty,
    output logic                     arempty,
    output wire logic [ADDRSIZE-1:0] raddr,
    output logic [ADDRSIZE:0]        rptr
);

    logic [ADDRSIZE:0] rbin;
    logic [ADDRSIZE:0] rgraynext;
    logic [ADDRSIZE:0] rbinnext;
    logic [ADDRSIZE:0] rgraynextm1;
    logic              arempty_val;
    logic              rempty_val;
    logic              rinc_r;

    // Register rinc into rclk domain
    always_ff @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n)
            rinc_r <= 1'b0;
        else
            rinc_r <= rinc;
    end

    // GRAYSTYLE2 pointer
    always_ff @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n)
            {rbin, rptr} <= '0;
        else
            {rbin, rptr} <= {rbinnext, rgraynext};
    end

    // Memory read-address pointer
    assign raddr = rbin[ADDRSIZE-1:0];
    assign rbinnext = rbin + (rinc_r & ~rempty);
    assign rgraynext = (rbinnext >> 1) ^ rbinnext;
    assign rgraynextm1 = ((rbinnext + 1'b1) >> 1) ^ (rbinnext + 1'b1);

    // Empty and almost empty conditions
    assign rempty_val = (rgraynext == rq2_wptr);
    assign arempty_val = (rgraynextm1 == rq2_wptr);

    always_ff @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n) begin
            arempty <= 1'b0;
            rempty <= 1'b1;
        end else begin
            arempty <= arempty_val;
            rempty <= rempty_val;
        end
    end

endmodule

`resetall
*/
