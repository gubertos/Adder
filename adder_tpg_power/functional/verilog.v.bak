//Verilog HDL for "Adder", "adder_tpg_power" "functional"

`timescale 1ps/1ps

module adder_tpg_power
#(parameter CLK_PERIOD=100_000,
            PATTERNS=128
)
( 
	output reg [15:0] a,
    output reg [15:0] b,
    output reg clk,
    output reg rst
);

localparam CLKP2 = CLK_PERIOD/2.0;

initial begin
	clk = 0;
	rst = 1;
	a = 0;
    b = 0;
end

always begin
   #CLKP2 clk = 0;
   #CLKP2 clk = 1;
end

integer i;

initial begin
	@(negedge clk) rst = 0;
    for(i = 0; i < PATTERNS; i = i + 1) begin:for_loop
		@(negedge clk) 
			a = ((65536 - 1) - (i * 511));
			b = (1 + (i * 511));
		    $display("%0t - Pattern #%0d, a=%h, b=%h",$time,i,a,b);
	end
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	$finish;
end

endmodule
