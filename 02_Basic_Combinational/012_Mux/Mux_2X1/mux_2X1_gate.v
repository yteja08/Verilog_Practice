module mux_2X1(
	input i0,i1,s,
	output y);
wire snot, and1, and2;
not(snot, s);
and(and1,i0,snot);
and(and2,i1,s);
or(y,and1,and2);
endmodule
