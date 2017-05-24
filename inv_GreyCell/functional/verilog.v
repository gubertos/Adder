//Verilog HDL for "Adder", "GreyCell" "functional"


module inv_GreyCell(
	input wire	Gin_cur,
	input wire	Pin_cur,
	input wire	Gin_prev,
	
	output wire	Gout
);

assign Gout = ~((Gin_cur | Pin_cur) & Gin_prev);

endmodule
