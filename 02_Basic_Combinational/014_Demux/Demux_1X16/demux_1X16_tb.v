module demux_1X16_tb();
 reg y,s3,s2,s1,s0;
 wire i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15;

demux_1X16 dut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6),.i7(i7),.i8(i8),.i9(i9),.i10(i10),.i11(i11),.i12(i12),.i13(i13),.i14(i14),.i15(i15),.s0(s0),.s1(s1),.s2(s2),.s3(s3),.y(y));

  initial begin 

  $monitor("TIME=%0t  || I0=%B I1=%B I2=%B I3=%B I4=%B I5=%B I6=%B I7=%B I8=%B I9=%B I10=%B I11=%B I12=%B I13=%B I14=%B I15=%B ||S3=%B S2=%B S1=%B S0=%b  ||  Y=%B",$time,i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,s3,s2,s1,s0,y);
  $dumpfile("waveform.vcd");
  $dumpvars(0,demux_1X16_tb);

	y=1;
 
        s3=0;s2=0;s1=0;s0=0;#10;
        s0=1;#10;
	s1=1;s0=0;#10;
	s0=1;#10;
	s2=1;s1=0;s0=0;#10;
	s0=1;#10;
	s1=1;s0=0;#10;
	s0=1;#10;
	s3=1;s2=0;s1=0;s0=0;#10;
	s0=1;#10;
	s1=1;s0=0;#10;
	s0=1;#10;
	s2=1;s1=0;s0=0;#10;
	s0=1;#10;
	s1=1;s0=0;#10;
	s0=1;#10;
 
  $finish;
end
endmodule
