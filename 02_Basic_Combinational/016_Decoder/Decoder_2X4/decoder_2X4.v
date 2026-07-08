module decoder_2X4(
input en,s1,s2,
output y0,y1,y2,y3);

assign y0=en&~s1&~s2;
assign y1=en&~s1&s2;
assign y2=en&s1&~s2;
assign y3=en&s1&s2;

endmodule

