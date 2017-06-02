//Verilog HDL for "ADDER_TEST", "adder_compare" "functional"
`timescale 1ns/1ps



module adder_compare2( 
	input wire clk,
	input wire rst,
	input wire [16:0] result,
	input wire [16:0] ref,
	output reg error,
	output reg [16:0] bit_error
);

always @(posedge clk or posedge rst) begin
	if( rst || (result === ref)) begin
		error <= 0;
				

		$display("[OK] result = %b \n[OK] refxxx = %b",result,ref);
	end
	else begin
		error <= 1;
		$display("[FAILED] result = %b \n[FAILED] refxxx = %b",result,ref);
		// Uncomment the follwing line to stop the simulation when error is detected.
		//#1 $finish;
    end
end

always @(posedge clk or posedge rst) begin
	if(rst)
		bit_error = 0;
	else
		bit_error = result ^ ref;

end

endmodule

