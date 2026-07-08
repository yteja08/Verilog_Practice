module decoder_4X16_tb();
reg s,x1,x2,x3;
wire i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15;

decoder_4X16 dut(
.s(s),.x1(x1),.x2(x2),.x3(x3),.i0(i0),.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6),.i7(i7),.i8(i8),.i9(i9),.i10(i10),.i11(i11),.i12(i12),.i13(i13),.i14(i14),.i15(i15));

initial begin

 $monitor("TIME=%0t s=%b x1=%b x2=%b x3=%b i0=%b i1=%b i2=%b i3=%b i4=%b i5=%b i6=%b i7=%b i8=%b i9=%b i10=%b i11=%b i12=%b i13=%b i14=%b i15=%b",$time,s,x1,x2,x3,i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15);
  $dumpfile("waveform.vcd");
  $dumpvars(0,decoder_4X16_tb);

 
	s=0;x1=0;x2=0;x3=0;#10;
        x3=1;#10;
	x2=1;x3=0;#10;
	x3=1;#10;
	x1=1;x2=0;x3=0;#10;
	x3=1;#10;
	x2=1;x3=0;#10;
	x3=1;#10;
	s=1;x1=0;x2=0;x3=0;#10;
	x3=1;#10;
	x2=1;x3=0;#10;
	x3=1;#10;
	x1=1;x2=0;x3=0;#10;
	x3=1;#10;
	x2=1;x3=0;#10;
	x3=1;#10;

$finish;
end
endmodule

