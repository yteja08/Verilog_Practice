module encoder_4X2(
input d0,d1,d2,d3,
output reg y0,y1);

always @(*) begin

if ({d0,d1,d2,d3}==4'b1000)
{y0,y1}=2'b00;

else if ({d0,d1,d2,d3}==4'b0100)
{y0,y1}=2'b01;

else if ({d0,d1,d2,d3}==4'b0010)
{y0,y1}=2'b10;

else if ({d0,d1,d2,d3}==4'b0001)
{y0,y1}=2'b11;

else 
{y0,y1}=2'b00;

end

endmodule
