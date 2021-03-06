//Verilog HDL for "Adder_BT", "Adder_tb" "functional"
`timescale 1ps/1ps

module SignalGenerator_tb(
	output reg [15:0] A,
	output reg [15:0] B,
	output reg clk = 0,
	output reg rst = 0
);

integer seed,i,j;

always
begin
	clk = 1;
	#10_000;
	clk = 0;
	#10_000;
end

always @(negedge clk)
begin

	A = $urandom%(2**16-1);
	//#3;
	B = $urandom%(2**16-1);
end

endmodule
