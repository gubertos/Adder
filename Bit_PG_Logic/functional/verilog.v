//Verilog HDL for "Adder", "Bit_PG_Logic" "functional"


module Bit_PG_Logic (
	input wire	a,
	input wire	b,

	output wire	P,
	output wire	G
);

assign P = a ^ b;
assign G = a & b;

endmodule
