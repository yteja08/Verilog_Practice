module demux_1X2(
input y,s3,
output i0,i1);

 assign i0=y&~s3;
 assign i1=y&s3;

endmodule 

module demux_1X8(
input y,s2,s1,s0,
output i0,i1,i2,i3,i4,i5,i6,i7);

assign i0=y&~s2&~s1&~s0;
assign i1=y&~s2&~s1&s0;
assign i2=y&~s2&s1&~s0;
assign i3=y&~s2&s1&s0;
assign i4=y&s2&~s1&~s0;
assign i5=y&s2&~s1&s0;
assign i6=y&s2&s1&~s0;
assign i7=y&s2&s1&s0;

endmodule 

module demux_1X16(
input y,s3,s2,s1,s0,
output i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15);
     wire y1,y2;
  demux_1X2 dm1(.y(y),.s3(s3),.i0(y1),.i1(y2));
  demux_1X8 dm2(.y(y1),.s2(s2),.s1(s1),.s0(s0),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6),.i7(i7));
  demux_1X8 dm3(.y(y2),.s2(s2),.s1(s1),.s0(s0),.i0(i8),.i1(i9),.i2(i10),.i3(i11),.i4(i12),.i5(i13),.i6(i14),.i7(i15));

endmodule 
