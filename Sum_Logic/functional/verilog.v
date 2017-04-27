//Verilog HDL for "Adder", "Sum_Logic" "functional"


module Sum_Logic (
	input wire	Gin_prev,
	input wire	Pin_cur,

	output wire	Sum
);

assign Sum = Gin_prev ^ Pin_cur;

endmodule
