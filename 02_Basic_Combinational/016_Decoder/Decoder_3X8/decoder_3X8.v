module decoder_3X8(
input en,
input [2:0]s,
output reg [7:0]y);

always @(*) begin

y = 8'b00000000;

if(en) begin
 case(s) 
	3'd0:y[0]=1'b1;
	3'd1:y[1]=1'b1;
	3'd2:y[2]=1'b1;
	3'd3:y[3]=1'b1;
	3'd4:y[4]=1'b1;
	3'd5:y[5]=1'b1;
	3'd6:y[6]=1'b1;
	3'd7:y[7]=1'b1;
	default:
    ;
endcase
end
end
endmodule


