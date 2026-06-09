module mux_4X1_tb();
reg i0,i1,i2,i3,s0,s1,en;
wire y;

mux_4X1 uut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.en(en),.y(y));

initial begin
	$monitor("Time=%0t | i0=%b i1=%b i2=%b i3=%b s0=%b s1=%b en=%b y=%y", $time, i0, i1,i2,i3,s0,s1,en,y);
	$dumpfile("sim.vcd");
	$dumpvars(0, mux_4X1_tb);

	en=0;s1=0;s0=0;i3=0;i2=0;i1=0;i0=0;#10;
	en=1;s1=0;s0=0;i3=0;i2=0;i1=0;i0=1;#10;
	en=1;s1=0;s0=1;i3=0;i2=0;i1=1;i0=0;#10;
	en=1;s1=1;s0=0;i3=0;i2=1;i1=0;i0=0;#10;
	en=1;s1=1;s0=1;i3=1;i2=0;i1=0;i0=0;#10;

end
endmodule


