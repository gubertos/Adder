//Verilog HDL for "Adder_BT", "FlipFlop_x16" "functional"


module DFlipFlop_x16(
	input wire [15:0] D,
	input wire clk,
	input wire rst,
	output reg [15:0] Q
);

always @(posedge clk or posedge rst)
begin
	if(rst)
		Q = 0;
	else
		Q = D;
end

endmodule
