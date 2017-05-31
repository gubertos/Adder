//Verilog HDL for "Adder", "inv_BlackCell" "functional"


module inv_BlackCell ( Pin_cur, Gin_cur, Pin_prev, Gin_prev, Pout, Gout );

  input Pin_cur;
  input Gin_cur;
  output Pout;
  input Pin_prev;
  input Gin_prev;
  output Gout;

assign Gout = ~((Pin_cur | Gin_prev) & Gin_cur);
assign Pout = ~(Pin_prev | Pin_cur);

endmodule
