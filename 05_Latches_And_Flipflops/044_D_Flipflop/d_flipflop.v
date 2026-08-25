module d_flipflop(
input d,clk,en,
output reg q
);

always @(posedge clk) begin
   if(en)
      q<=d;
   else
      q<=q;

end

endmodule
