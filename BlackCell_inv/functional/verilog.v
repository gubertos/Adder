//Verilog HDL for "Adder", "BlackCell" "functional"


module BlackCell_inv(
	input wire	Pin_cur,
	input wire	Gin_cur,
	input wire	Pin_prev,
	input wire	Gin_prev,

	output wire	Pout,
	output wire	Gout
);

assign Pout = ~(Pin_cur & Pin_prev);
assign Gout = ~(Gin_cur | (Pin_cur & Gin_prev));

endmodule
