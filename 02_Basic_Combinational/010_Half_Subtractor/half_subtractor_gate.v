module half_subtractor(
	input a,
	input b,
	output difference,
	output borrow, not_out
);
xor(difference, a, b);
not(not_out,a);
and(borrow, not_out , b);
endmodule
