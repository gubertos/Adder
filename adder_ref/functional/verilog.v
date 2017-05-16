//Verilog HDL for "ADDER_TEST", "adder_ref" "functional"


module adder_ref ( 
  	input wire [15:0] a,
  	input wire [15:0] b,
	input wire clk,
	input wire rst,
  	output reg [16:0] s
);

reg [15:0] a_i;
reg [15:0] b_i;

always @(posedge clk or negedge rst)
	if(rst) begin
		a_i <= 0;
		b_i <= 0;
		s <= 0;
	end
	else begin
		a_i <= a;
		b_i <= b;
		s <= a_i + b_i;
	end

endmodule
