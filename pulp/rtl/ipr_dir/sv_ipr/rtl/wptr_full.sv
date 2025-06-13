`timescale 1ns / 1ps
`default_nettype none

module wptr_full #(
    parameter int ADDRSIZE = 4  // Address size (int for SV)
) (
    input  wire logic                wclk,       // Write clock
    input  wire logic                wrst_n,     // Write reset (active-low)
    input  wire logic                winc,       // Write increment
    input  wire logic [ADDRSIZE:0]   wq2_rptr,   // Synchronized read pointer
    output logic                wfull,      // Write full
    output logic                awfull,     // Almost full
    output wire logic [ADDRSIZE-1:0] waddr,      // Write address
    output logic [ADDRSIZE:0]   wptr        // Write pointer (Gray code)
);

    // Internal signals
    logic [ADDRSIZE:0] wbin;  // Binary write pointer
    logic [ADDRSIZE:0] wgraynext;  // Next Gray code pointer
    logic [ADDRSIZE:0] wbinnext;   // Next binary pointer
    logic [ADDRSIZE:0] wgraynextp1; // Next+1 Gray code for almost full
    logic              awfull_val;  // Almost full condition
    logic              wfull_val;   // Full condition

    // GRAYSTYLE2 pointer (sequential logic)
    always_ff @(posedge wclk or negedge wrst_n) begin
        if (!wrst_n) 
            {wbin, wptr} <= '0;  // SV zero-fill
        else 
            {wbin, wptr} <= {wbinnext, wgraynext};
    end

    // Combinational logic
    assign waddr = wbin[ADDRSIZE-1:0];  // Memory address from binary pointer
    assign wbinnext = wbin + (winc & ~wfull);  // Increment if not full
    assign wgraynext = (wbinnext >> 1) ^ wbinnext;  // Binary to Gray conversion
    assign wgraynextp1 = ((wbinnext + 1'b1) >> 1) ^ (wbinnext + 1'b1);  // Next+1 Gray

    // Full and almost full conditions
    assign wfull_val = (wgraynext == {~wq2_rptr[ADDRSIZE:ADDRSIZE-1], wq2_rptr[ADDRSIZE-2:0]});
    assign awfull_val = (wgraynextp1 == {~wq2_rptr[ADDRSIZE:ADDRSIZE-1], wq2_rptr[ADDRSIZE-2:0]});

    // Output registers for full and almost full
    always_ff @(posedge wclk or negedge wrst_n) begin
        if (!wrst_n) begin
            wfull <= 1'b0;
            awfull <= 1'b0;
        end else begin
            wfull <= wfull_val;
            awfull <= awfull_val;
        end
    end

endmodule

`resetall
