module full_subtractor(
	input a,b, c,
	output borrow, difference, not_out, and_out1, and_out2, and_out3
);
xor(difference, a, b, c);
not(not_out, a);
and(and_out1, not_out, b);
and(and_out2, not_out, c);
and(and_out3, b,c);
or(borrow, and_out1, and_out2, and_out3);
endmodule
