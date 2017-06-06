//Verilog HDL for "Adder_BT", "Adder_tb" "functional"
`timescale 1ps/1ps

module SigGen_tb
#(parameter CLK_PERIOD=10_000)
(
	output reg [3:0] A,
	output reg clk = 0,
	output reg rst = 0
);

localparam CLK_HALF_P = CLK_PERIOD/2.0;

reg [3:0] counter = 'b0;

integer seed,i,j;

always
begin
   #CLK_HALF_P clk = 0;
   #CLK_HALF_P clk = 1;
end

always @(negedge clk)
begin
	A = counter;
end

always @(posedge clk)
begin
	counter = counter + 1;
end

initial
begin
	if(counter == 15)
		$finish;
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
