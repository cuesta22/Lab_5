module RAM_256x64 (rw, address, clk, out, data_in);

	input rw; 
	//input cs1; 
	input [7:0] address; 
	input clk;
	input [31:0] data_in;
	wire  [31:0] data_out1;
	wire [31:0] data_out2;
	wire [31:0] data_out4;
	wire [31:0] data_out3;
	output [31:0] out; 
	wire [3:0] cs;
	decoder utt(cs, 1'b1, address [7:6]);
	
 RAMLab5 a1(rw, cs [0], address, clk, data_out1 [7:0], data_in [7:0]);
 RAMLab5 a2(rw, cs [0], address, clk, data_out1 [15:8], data_in [15:8]);
 RAMLab5 a3(rw, cs [0], address, clk, data_out1 [23:16], data_in [23:16]);
 RAMLab5 a4(rw, cs [0], address, clk, data_out1 [31:24],  data_in [31:24]);
 
 RAMLab5 b1(rw, cs [1], address, clk, data_out2 [7:0], data_in [7:0]);
 RAMLab5 b2(rw, cs [1], address, clk, data_out2 [15:8], data_in [15:8]);
 RAMLab5 b3(rw, cs [1], address, clk, data_out2 [23:16], data_in [23:16]);
 RAMLab5 b4(rw, cs [1], address, clk, data_out2 [31:24],  data_in [31:24]);
 
 RAMLab5 c1(rw, cs [2], address, clk, data_out3 [7:0], data_in [7:0]);
 RAMLab5 c2(rw, cs [2], address, clk, data_out3 [15:8], data_in [15:8]);
 RAMLab5 c3(rw, cs [2], address, clk, data_out3 [23:16], data_in [23:16]);
 RAMLab5 c4(rw, cs [2], address, clk, data_out3 [31:24],  data_in [31:24]);
 
 RAMLab5 d1(rw, cs [3], address, clk, data_out4 [7:0], data_in [7:0]);
 RAMLab5 d2(rw, cs [3], address, clk, data_out4 [15:8], data_in [15:8]);
 RAMLab5 d3(rw, cs [3], address, clk, data_out4 [23:16], data_in [23:16]);
 RAMLab5 d4(rw, cs [3], address, clk, data_out4 [31:24],  data_in [31:24]);
 assign out = cs[0]?  data_out1 : 0;
 assign out = cs[1]?  data_out2 : 0;
 assign out = cs[2]?  data_out3 : 0;
 assign out = cs[3]?  data_out4 : 0; 
 endmodule 