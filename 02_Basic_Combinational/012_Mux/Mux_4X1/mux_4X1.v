module mux_4X1(
	input i0,i1,i2,i3,en,s0,s1,
	output y);
wire w1;
assign w1=s1?(s0?i3:i2):(s0?i1:i0);
assign y=(en&w1);
endmodule
 
