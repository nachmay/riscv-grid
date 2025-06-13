module ipr_write_router #(
    parameter NB_CORES = 4,
	      DIRECTIONS = 4,
		NUM_PORTS = 16	
)(
///////////////// forward interfaces//////////////////
    IPR_WRITE_IF.slave write_north_if_f_0,
    IPR_WRITE_IF.slave write_north_if_f_1,
    IPR_WRITE_IF.slave write_north_if_f_2,
    IPR_WRITE_IF.slave write_north_if_f_3,

    IPR_WRITE_IF.slave write_south_if_f_0,
    IPR_WRITE_IF.slave write_south_if_f_1,
    IPR_WRITE_IF.slave write_south_if_f_2,
    IPR_WRITE_IF.slave write_south_if_f_3,

    IPR_WRITE_IF.slave write_east_if_f_0,
    IPR_WRITE_IF.slave write_east_if_f_1,
    IPR_WRITE_IF.slave write_east_if_f_2,
    IPR_WRITE_IF.slave write_east_if_f_3,

    IPR_WRITE_IF.slave write_west_if_f_0,
    IPR_WRITE_IF.slave write_west_if_f_1,
    IPR_WRITE_IF.slave write_west_if_f_2,
    IPR_WRITE_IF.slave write_west_if_f_3,



/////////////////////backwards interfaces///////////////////////
    IPR_WRITE_IF.master write_if_b_0_south,
    IPR_WRITE_IF.master write_if_b_1_south,
    IPR_WRITE_IF.master write_if_b_2_south,
    IPR_WRITE_IF.master write_if_b_3_south, 

    IPR_WRITE_IF.master write_if_b_0_north,
    IPR_WRITE_IF.master write_if_b_1_north,
    IPR_WRITE_IF.master write_if_b_2_north,
    IPR_WRITE_IF.master write_if_b_3_north,

    IPR_WRITE_IF.master write_if_b_0_east,
    IPR_WRITE_IF.master write_if_b_1_east,
    IPR_WRITE_IF.master write_if_b_2_east, 
    IPR_WRITE_IF.master write_if_b_3_east,

    IPR_WRITE_IF.master write_if_b_0_west,
    IPR_WRITE_IF.master write_if_b_1_west,
    IPR_WRITE_IF.master write_if_b_2_west,
    IPR_WRITE_IF.master write_if_b_3_west 


    

);



    // North -> South
    always_comb begin
         write_if_b_0_south.req = 1'b0;
         write_if_b_1_south.req = 1'b0;
         write_if_b_2_south.req = 1'b0;
         write_if_b_3_south.req = 1'b0;


        if (write_north_if_f_0.req) begin
            write_if_b_2_south.req   = write_north_if_f_0.req; 
            write_if_b_2_south.addr  = write_north_if_f_0.addr;
            write_if_b_2_south.wdata = write_north_if_f_0.wdata;
            write_if_b_2_south.we    = write_north_if_f_0.we;
            write_if_b_2_south.be    = write_north_if_f_0.be;

            write_north_if_f_0.gnt    = write_if_b_2_south.gnt;
            write_north_if_f_0.rvalid = write_if_b_2_south.rvalid;
            write_north_if_f_0.rdata  = write_if_b_2_south.rdata;

        end 
	if (write_north_if_f_1.req) begin
            write_if_b_3_south.req   = write_north_if_f_1.req;
            write_if_b_3_south.addr  = write_north_if_f_1.addr;
            write_if_b_3_south.wdata = write_north_if_f_1.wdata;
            write_if_b_3_south.we    = write_north_if_f_1.we;
            write_if_b_3_south.be    = write_north_if_f_1.be;

            write_north_if_f_1.gnt    = write_if_b_3_south.gnt;
            write_north_if_f_1.rvalid = write_if_b_3_south.rvalid;
            write_north_if_f_1.rdata  = write_if_b_3_south.rdata;

        end 
	if (write_north_if_f_2.req) begin
            write_if_b_0_south.req   = write_north_if_f_2.req;
            write_if_b_0_south.addr  = write_north_if_f_2.addr;
            write_if_b_0_south.wdata = write_north_if_f_2.wdata;
            write_if_b_0_south.we    = write_north_if_f_2.we;
            write_if_b_0_south.be    = write_north_if_f_2.be;

            write_north_if_f_2.gnt    = write_if_b_0_south.gnt;
            write_north_if_f_2.rvalid = write_if_b_0_south.rvalid;
            write_north_if_f_2.rdata  = write_if_b_0_south.rdata;

        end 
	if (write_north_if_f_3.req) begin
            write_if_b_1_south.req   = write_north_if_f_3.req;
            write_if_b_1_south.addr  = write_north_if_f_3.addr;
            write_if_b_1_south.wdata = write_north_if_f_3.wdata;
            write_if_b_1_south.we    = write_north_if_f_3.we;
            write_if_b_1_south.be    = write_north_if_f_3.be;

            write_north_if_f_3.gnt    = write_if_b_1_south.gnt;
            write_north_if_f_3.rvalid = write_if_b_1_south.rvalid;
            write_north_if_f_3.rdata  = write_if_b_1_south.rdata;
        end
    end





    // South -> North
	always_comb begin
    	write_if_b_0_north.req = 1'b0;
    	write_if_b_1_north.req = 1'b0;
    	write_if_b_2_north.req = 1'b0;
    	write_if_b_3_north.req = 1'b0;

    	if (write_south_if_f_0.req) begin
        	write_if_b_2_north.req   = write_south_if_f_0.req; 
        	write_if_b_2_north.addr  = write_south_if_f_0.addr;
        	write_if_b_2_north.wdata = write_south_if_f_0.wdata;
        	write_if_b_2_north.we    = write_south_if_f_0.we;
        	write_if_b_2_north.be    = write_south_if_f_0.be;

        	write_south_if_f_0.gnt    = write_if_b_2_north.gnt;
        	write_south_if_f_0.rvalid = write_if_b_2_north.rvalid;
        	write_south_if_f_0.rdata  = write_if_b_2_north.rdata;

    end 
    if (write_south_if_f_1.req) begin
        write_if_b_3_north.req   = write_south_if_f_1.req;
        write_if_b_3_north.addr  = write_south_if_f_1.addr;
        write_if_b_3_north.wdata = write_south_if_f_1.wdata;
        write_if_b_3_north.we    = write_south_if_f_1.we;
        write_if_b_3_north.be    = write_south_if_f_1.be;

        write_south_if_f_1.gnt    = write_if_b_3_north.gnt;
        write_south_if_f_1.rvalid = write_if_b_3_north.rvalid;
        write_south_if_f_1.rdata  = write_if_b_3_north.rdata;

    end 
    if (write_south_if_f_2.req) begin
        write_if_b_0_north.req   = write_south_if_f_2.req;
        write_if_b_0_north.addr  = write_south_if_f_2.addr;
        write_if_b_0_north.wdata = write_south_if_f_2.wdata;
        write_if_b_0_north.we    = write_south_if_f_2.we;
        write_if_b_0_north.be    = write_south_if_f_2.be;

        write_south_if_f_2.gnt    = write_if_b_0_north.gnt;
        write_south_if_f_2.rvalid = write_if_b_0_north.rvalid;
        write_south_if_f_2.rdata  = write_if_b_0_north.rdata;

    end 
    if (write_south_if_f_3.req) begin
        write_if_b_1_north.req   = write_south_if_f_3.req;
        write_if_b_1_north.addr  = write_south_if_f_3.addr;
        write_if_b_1_north.wdata = write_south_if_f_3.wdata;
        write_if_b_1_north.we    = write_south_if_f_3.we;
        write_if_b_1_north.be    = write_south_if_f_3.be;

        write_south_if_f_3.gnt    = write_if_b_1_north.gnt;
        write_south_if_f_3.rvalid = write_if_b_1_north.rvalid;
        write_south_if_f_3.rdata  = write_if_b_1_north.rdata;
    end
end
    
  // East -> West

always_comb begin
    write_if_b_0_west.req = 1'b0;
    write_if_b_1_west.req = 1'b0;
    write_if_b_2_west.req = 1'b0;
    write_if_b_3_west.req = 1'b0;

    if (write_east_if_f_0.req) begin
        write_if_b_1_west.req   = write_east_if_f_0.req; 
        write_if_b_1_west.addr  = write_east_if_f_0.addr;
        write_if_b_1_west.wdata = write_east_if_f_0.wdata;
        write_if_b_1_west.we    = write_east_if_f_0.we;
        write_if_b_1_west.be    = write_east_if_f_0.be;

        write_east_if_f_0.gnt    = write_if_b_1_west.gnt;
        write_east_if_f_0.rvalid = write_if_b_1_west.rvalid;
        write_east_if_f_0.rdata  = write_if_b_1_west.rdata;

    end 
    if (write_east_if_f_1.req) begin
        write_if_b_0_west.req   = write_east_if_f_1.req;
        write_if_b_0_west.addr  = write_east_if_f_1.addr;
        write_if_b_0_west.wdata = write_east_if_f_1.wdata;
        write_if_b_0_west.we    = write_east_if_f_1.we;
        write_if_b_0_west.be    = write_east_if_f_1.be;

        write_east_if_f_1.gnt    = write_if_b_0_west.gnt;
        write_east_if_f_1.rvalid = write_if_b_0_west.rvalid;
        write_east_if_f_1.rdata  = write_if_b_0_west.rdata;

    end 
    if (write_east_if_f_2.req) begin
        write_if_b_3_west.req   = write_east_if_f_2.req;
        write_if_b_3_west.addr  = write_east_if_f_2.addr;
        write_if_b_3_west.wdata = write_east_if_f_2.wdata;
        write_if_b_3_west.we    = write_east_if_f_2.we;
        write_if_b_3_west.be    = write_east_if_f_2.be;

        write_east_if_f_2.gnt    = write_if_b_3_west.gnt;
        write_east_if_f_2.rvalid = write_if_b_3_west.rvalid;
        write_east_if_f_2.rdata  = write_if_b_3_west.rdata;

    end 
    if (write_east_if_f_3.req) begin
        write_if_b_2_west.req   = write_east_if_f_3.req;
        write_if_b_2_west.addr  = write_east_if_f_3.addr;
        write_if_b_2_west.wdata = write_east_if_f_3.wdata;
        write_if_b_2_west.we    = write_east_if_f_3.we;
        write_if_b_2_west.be    = write_east_if_f_3.be;

        write_east_if_f_3.gnt    = write_if_b_2_west.gnt;
        write_east_if_f_3.rvalid = write_if_b_2_west.rvalid;
        write_east_if_f_3.rdata  = write_if_b_2_west.rdata;
    end
end
    
//west > east

always_comb begin
    write_if_b_0_east.req = 1'b0;
    write_if_b_1_east.req = 1'b0;
    write_if_b_2_east.req = 1'b0;
    write_if_b_3_east.req = 1'b0;

    if (write_west_if_f_0.req) begin
        write_if_b_1_east.req   = write_west_if_f_0.req; 
        write_if_b_1_east.addr  = write_west_if_f_0.addr;
        write_if_b_1_east.wdata = write_west_if_f_0.wdata;
        write_if_b_1_east.we    = write_west_if_f_0.we;
        write_if_b_1_east.be    = write_west_if_f_0.be;

        write_west_if_f_0.gnt    = write_if_b_1_east.gnt;
        write_west_if_f_0.rvalid = write_if_b_1_east.rvalid;
        write_west_if_f_0.rdata  = write_if_b_1_east.rdata;

    end 
    if (write_west_if_f_1.req) begin
        write_if_b_0_east.req   = write_west_if_f_1.req;
        write_if_b_0_east.addr  = write_west_if_f_1.addr;
        write_if_b_0_east.wdata = write_west_if_f_1.wdata;
        write_if_b_0_east.we    = write_west_if_f_1.we;
        write_if_b_0_east.be    = write_west_if_f_1.be;

        write_west_if_f_1.gnt    = write_if_b_0_east.gnt;
        write_west_if_f_1.rvalid = write_if_b_0_east.rvalid;
        write_west_if_f_1.rdata  = write_if_b_0_east.rdata;

    end 
    if (write_west_if_f_2.req) begin
        write_if_b_3_east.req   = write_west_if_f_2.req;
        write_if_b_3_east.addr  = write_west_if_f_2.addr;
        write_if_b_3_east.wdata = write_west_if_f_2.wdata;
        write_if_b_3_east.we    = write_west_if_f_2.we;
        write_if_b_3_east.be    = write_west_if_f_2.be;

        write_west_if_f_2.gnt    = write_if_b_3_east.gnt;
        write_west_if_f_2.rvalid = write_if_b_3_east.rvalid;
        write_west_if_f_2.rdata  = write_if_b_3_east.rdata;

    end 
    if (write_west_if_f_3.req) begin
        write_if_b_2_east.req   = write_west_if_f_3.req;
        write_if_b_2_east.addr  = write_west_if_f_3.addr;
        write_if_b_2_east.wdata = write_west_if_f_3.wdata;
        write_if_b_2_east.we    = write_west_if_f_3.we;
        write_if_b_2_east.be    = write_west_if_f_3.be;

        write_west_if_f_3.gnt    = write_if_b_2_east.gnt;
        write_west_if_f_3.rvalid = write_if_b_2_east.rvalid;
        write_west_if_f_3.rdata  = write_if_b_2_east.rdata;
    end
end


endmodule

