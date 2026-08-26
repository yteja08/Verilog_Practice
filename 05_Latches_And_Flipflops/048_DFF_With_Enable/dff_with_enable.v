module dff_with_enable(
input d,clk,rst,en,
output reg q
);

always @(posedge clk) begin
   
    q<=rst?1'b0:(en?d:q);

end

endmodule
