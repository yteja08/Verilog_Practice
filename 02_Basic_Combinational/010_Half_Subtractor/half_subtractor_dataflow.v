module half_subtractor(
	input a,b,
	output borrow, difference
);
assign difference=a^b;
assign borrow=(~a)&b;
endmodule
