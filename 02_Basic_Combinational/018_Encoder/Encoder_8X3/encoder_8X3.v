
module encoder_8X3(
input [7:0]d,
output[2:0]y);

  assign  y =(d==8'd1)?3'd0:((d==8'd2)?3'd1:((d==8'd4)?3'd2:((d==8'd8)?3'd3:((d==8'd16)?3'd4:((d==8'd32)?3'd5:((d==8'd64)?3'd6:((d==8'd128)?3'd7:3'bxxx)))))));

endmodule 
