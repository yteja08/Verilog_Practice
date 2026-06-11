module mux_2x1(
       input i0,i1,s,
       output y);
assign y=s?i1:i0;
endmodule

module mux_4x1(
	input i0,i1,i2,i3,s0,s1,
	output y);
assign y=s1?(s0?i3:i2):(s0?i1:i0);
endmodule

module mux_8x1(
	input i0,i1,i2,i3,i4,i5,i6,i7,s2,s1,s0,
	output y);
wire y1,y2;

mux_4x1 m1(
	.i0(i0),
	.i1(i1),
	.i2(i2),
	.i3(i3),
	.s1(s1),
	.s0(s0),
	.y(y1));
mux_4x1 m2(
	.i0(i4),
	.i1(i5),
	.i2(i6),
	.i3(i7),
	.s1(s1),
	.s0(s0),
	.y(y2));
mux_2x1 m3(
	.i0(y1),
	.i1(y2),
	.y(y));
endmodule
