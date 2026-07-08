module demux_1X8(
input y,en,
input [2:0]s,
output reg [7:0]I
);

always @(*) begin

	I=8'b00000000;

if(en) begin
   if(s==3'd0)begin
	I[0]=y;
end
   else if(s==3'd1)begin
	I[1]=y;
end
  else if(s==3'd2)begin
	I[2]=y;
end
   else if(s==3'd3)begin
	I[3]=y;
end
 else if(s==3'd4)begin
	I[4]=y;
end
 else if(s==3'd5)begin
	I[5]=y;
end
 else if(s==3'd6)begin
	I[6]=y;
end
 else if(s==3'd7)begin
	I[7]=y;
end
else begin
	I=8'b00000000;
end

end 

end

endmodule
