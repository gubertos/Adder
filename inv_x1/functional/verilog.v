//Verilog HDL for "Adder", "inv_x1" "functional"


module inv_x1 ( out, in );

  input in;
  output out;

assign out = ~in;

endmodule
