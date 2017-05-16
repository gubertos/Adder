//Verilog HDL for "ADDER_TEST", "adder_compare" "functional"
`timescale 1ns/1ps



module adder_compare ( 
	input wire clk,
	input wire rst,
	input wire [16:0] result,
	input wire [16:0] ref,
	output reg error
);

always @(posedge clk or posedge rst)
	if( rst || (result === ref)) error <= 0;
	else begin
		error <= 1;
// Uncomment the follwing line to stop the simulation when error is detected.
		#1 $finish;
    end

endmodule
