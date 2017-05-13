//Verilog HDL for "Adder", "Bit_PG_Logic" "functional"


module Bit_PG_Logic (
	input wire	A,
	input wire	B,

	output wire	P,
	output wire	G
);

assign P = A ^ B;
assign G = A & B;

endmodule
