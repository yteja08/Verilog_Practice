module full_adder(
	input a, b, c,
	output sum,  carry
);
wire xor_out, and_out1, and_out2;

xor(xor_out, a, b);
xor(sum,xor_out,c);
and(and_out1,xor_out,c);
and(and_out2, a, b);
or(carry, and_out1, and_out2);

endmodule
