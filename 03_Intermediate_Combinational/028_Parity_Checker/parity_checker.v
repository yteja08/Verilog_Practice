module parity_checker(

input [3:0] data,
input even_parity, odd_parity,
output reg error, parity_bit

);

always @(*) begin

if (even_parity) begin
    parity_bit=^data;
    error = (^{data,parity_bit});
end

else if (odd_parity) begin
    parity_bit=~(^data);
    error = (~(^{data,parity_bit}));
end

else 
   error=1'bx;

end

endmodule
