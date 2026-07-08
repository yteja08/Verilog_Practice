module demux_1x2(
input y,s,
output i0,i1);

assign i0=y&~s;
assign i1=y&s;

endmodule
