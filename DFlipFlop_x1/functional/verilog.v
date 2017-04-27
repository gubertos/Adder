//Verilog HDL for "Adder_BT", "FlipFlop_x16" "functional"


module DFlipFlop_x1(
	input wire D,
	input wire clk,
	input wire rst,
	output reg Q
);

always @(posedge clk or posedge rst)
begin
	if(rst)
		Q = 0;
	else
		Q = D;
end

endmodule
