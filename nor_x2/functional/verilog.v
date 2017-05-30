//Verilog HDL for "Adder", "and_x2" "functional"


module nand_x2(
	input wire a,
	input wire b,
	output wire y
);

assign y = ~(a | b);

endmodule