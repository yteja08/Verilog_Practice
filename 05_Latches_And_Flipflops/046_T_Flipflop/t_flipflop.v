module t_flipflop(
input t,clk,en,
output reg q
);

always @(posedge clk) begin
   if(en)
      q<=~t;
   else
      q<=q;

end

endmodule
