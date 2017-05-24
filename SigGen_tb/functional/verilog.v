//Verilog HDL for "Adder_BT", "Adder_tb" "functional"
`timescale 1ns/1ns

module SigGen_tb(
	output reg [3:0] A,
	output reg clk = 0,
	output reg rst = 0
);

localparam CLK_HALF_P = 10;

reg [3:0] counter = 'b0;

integer seed,i,j;

always
begin
	clk = 1;
	#CLK_HALF_P;
	clk = 0;
	#CLK_HALF_P;
end

always @(negedge clk)
begin
	A = counter;
end

always @(posedge clk)
begin
	counter = counter + 1;
end

// For random number generation
/*
always @(negedge clk)
begin

	A = $urandom%(2**4-1);
	//#3;
	B = $urandom%(2**4-1);
end
*/
endmodule
