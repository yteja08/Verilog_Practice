module basic_alu(
  input clk, rst,
  input [3:0]a,b,
  input[3:0]sel,
  output reg [15:0]out
);

always @(posedge clk) begin

if(rst) begin
    out<=16'd0;
end

else if (sel[3]) begin

case({sel[2],sel[1],sel[0]})

3'b000:out<=(a&b);
3'b001:out<=(a|b);
3'b010:out<=~(a&b);
3'b011:out<=~(a|b);
3'b100:out<=(a^b);
3'b101:out<=~(a^b);
3'b110:out<=(~a);
3'b111:out<=(~b);
default:out<=16'd0;

endcase

end

else if (sel[3]==1'b0) begin

case({sel[2],sel[1],sel[0]})

3'b000:out<=(a+b);
3'b001:out<=(a-b);
3'b010:out<=(a*b);
3'b011:begin out<=(b==4'd0)?16'd0:(a/b); end
3'b100:begin out<=(b==4'd0)?16'd0:(a%b); end
3'b101:out<=(a<<1);
3'b110:out<=(a>>1);
3'b111:out<=(a<<2);
default:out<=16'd0;

endcase

end

else begin

out<=16'd0;

end

end

endmodule

