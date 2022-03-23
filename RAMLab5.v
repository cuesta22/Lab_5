module RAMLab5 (rw, cs, address, clk, data_out, data_in);

	input rw; 
	input cs; 
	input [5:0] address; 
	input clk;
	input [7:0] data_in;
	output reg [7:0] data_out;

	reg[7:0] memout; //to store output
	reg[7:0] mem[0:5]; //8 bit memory array registers
	
	//writing 
	always @ (posedge clk) begin
		if (cs && rw)
			mem[address]=data_in;
		end
		
		always @ (posedge clk) begin
			memout=mem[address];
			data_out <= cs? memout: 8'b0;
			end
		endmodule
		