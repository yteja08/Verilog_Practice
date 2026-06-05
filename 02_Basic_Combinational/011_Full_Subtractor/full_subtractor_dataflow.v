module full_subtractor(
	input a,b,c,
	output borrow, difference
);
assign borrow=((~a&b)|(~a&c)|(b&c));
assign difference=a^b^c;
endmodule
