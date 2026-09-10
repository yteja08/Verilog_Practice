module case_statement(

input [1:0]a,
output reg [1:0]b

);

always @(*) begin 

case(a)

2'b00:b=2'b11;
2'b01:b=2'b10;
2'b10:b=2'b01;
2'b11:b=2'b00;

default:b=00;

endcase

end

endmodule

