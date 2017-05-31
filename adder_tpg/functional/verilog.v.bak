//Verilog HDL for "ADDER_TEST", "adder_tpg" "functional"
`timescale 1ps/1ps

module adder_tpg
#(parameter CLK_PERIOD=10_000,
            PATTERNS=100
)
( 
	output reg [15:0] a,
    output reg [15:0] b,
    output reg clk,
    output reg rst
);

reg [15:0] sh;
wire feedback = sh[15] ^ sh[14] ^ sh[13] ^ sh[4];

localparam CLKP2 = CLK_PERIOD/2.0;

initial begin
	clk = 0;
	rst = 1;
	a = 0;
    b = 0;
	sh = 1;
end

always begin
   #CLKP2 clk = 0;
   #CLKP2 clk = 1;
end

always @(posedge clk) sh = {sh[14:0],feedback};


integer i;

initial begin
	@(negedge clk) rst = 0;
    for(i = 0; i < PATTERNS; i = i + 1) begin:for_loop
		@(negedge clk) 
			a = (65535 - (i * 511)) ^ sh;
			b = (1 + (i * 509)) ^ sh;
		    $display("%0t - Pattern #%0d, a=%h, b=%h",$time,i,a,b);
	end
	@(negedge clk);
	@(negedge clk);
	@(negedge clk);
	$finish;
end


endmodule
