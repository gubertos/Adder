//Verilog HDL for "Adder", "adder" "functional"

module Adder_HC_inv(
	input wire [15:0] A,
	input wire [15:0] B,

	output reg [15:0] Y,
	output reg Cout
);

always @* {Cout,Y} = A + B;

endmodule
