module decoder_1X2(
input s,
output y0,y1);

assign y0=~s;
assign y1=s;

endmodule

module decoder_3X8(
input x1,x2,x3,en,
output i0,i1,i2,i3,i4,i5,i6,i7);

assign i0=en&~x1&~x2&~x3;
assign i1=en&~x1&~x2&x3;
assign i2=en&~x1&x2&~x3;
assign i3=en&~x1&x2&x3;
assign i4=en&x1&~x2&~x3;
assign i5=en&x1&~x2&x3;
assign i6=en&x1&x2&~x3;
assign i7=en&x1&x2&x3;

endmodule

module decoder_4X16(
input s,x1,x2,x3,
output i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15);

wire a,b;

 decoder_1X2 dc1(.s(s),.y0(a),.y1(b));
 decoder_3X8 dc2(.en(a),.x1(x1),.x2(x2),.x3(x3),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6),.i7(i7));
 decoder_3X8 dc3(.en(b),.x1(x1),.x2(x2),.x3(x3),.i0(i8),.i1(i9),.i2(i10),.i3(i11),.i4(i12),.i5(i13),.i6(i14),.i7(i15));

endmodule

