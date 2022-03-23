module RAM_256x64_tb(rw, address, clk, out, data_in);
output reg clk;
output reg rw;
output reg [7:0] address;
output reg [31:0] data_in;
output wire [31:0] out;

RAM_256x64 uut(rw, address, clk, out, data_in);
initial begin
rw <= 1;
address <= 8'd0;
data_in <= $random;
clk <= 0;
#10
clk <= 1;
#10
clk <= 0;
#10
address <= 8'd4;
data_in <= $random;
clk <= 1;
#10
clk <= 0;
#10
rw <= 0;
#10
address <= 8'd0;
clk <= 1;
#10
clk <= 0;
#10
address <= 8'd4;
clk <= 1;
#10
clk <= 0;
end

endmodule