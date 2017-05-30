//Verilog HDL for "Adder", "and_x2" "functional"


module xor_x2(
	input wire A,
	input wire B,
	output wire Y
);

assign Y = (A & (~B)) | ((~A) & B);

endmodule
