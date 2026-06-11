module mux_8X1_tb();
reg i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
wire y;

mux_8x1 uut(
	.i0(i0),
	.i1(i1),
	.i2(i2),
	.i3(i3),
	.i4(i4),
	.i5(i5),
	.i6(i6),
	.i7(i7),
	.s0(s0),
	.s1(s1),
	.s2(s2),
	.y(y));

initial begin
	i0=0;i1=1;i2=0;i3=1;i4=0;i5=1;i6=0;i7=1;s0=0;s1=0;s2=0;
	$monitor("Time=%0t | i0=%b i1=%b i2=%b i3=%b i4=%b i5=%b i6=%b i7=%b s0=%b s1=%b s2=%b y=%b", $time, i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);
	$dumpfile("sim.vcd");
	$dumpvars(0, mux_8X1_tb);

	s2=0;s1=0;s0=1;#10;
	s2=0;s1=1;s0=0;#10;
	s2=0;s1=1;s0=1;#10;
	s2=1;s1=0;s0=0;#10;
	s2=1;s1=0;s0=1;#10;
	s2=1;s1=1;s0=0;#10;
	s2=1;s1=1;s0=1;#10;

	$finish;
end
endmodule

