module mux_2X1_tb();
reg i0,i1,s;
wire y;

mux_2X1 uut(
	.i0(i0),
	.i1(i1),
	.s(s),
	.y(y)
);

initial begin 
	$monitor("Time=%0t | i0=% i1=%b s=%b | y=%b", $time, i0, i1, s, y);
	$dumpfile("sim.vcd");
	$dumpvars(0, mux_2X1_tb);

	s=0;i0=0;i1=0;#10;
	s=0;i0=1;i1=0;#10;
	s=1;i0=0;i1=0;#10;
	s=1;i0=0;i1=1;#10;
end
endmodule




