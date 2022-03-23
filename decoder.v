module decoder (cs, in, select);
	output reg [3:0] cs;
	input in;
	input [1:0] select;
	always @(select, in)
	begin
case(select)
2'b00 : begin
			cs <= 4'b0001;
			end 
2'b01 : begin
		cs <= 4'b0010;
		end 
2'b10 : begin
		cs <= 4'b0100;
		end
2'b11 : begin

cs <= 4'b1000;
		end
default : begin
	cs <= 4'b0000;
	end
endcase
end 
	endmodule