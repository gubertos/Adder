//Verilog HDL for "Adder", "GreyCell" "functional"


module GreyCell_inv(
	input wire	Gin_cur,
	input wire	Pin_cur,
	input wire	Gin_prev,
	
	output wire	Gout
);

assign Gout = ~(Gin_cur | (Pin_cur & Gin_prev));

endmodule
