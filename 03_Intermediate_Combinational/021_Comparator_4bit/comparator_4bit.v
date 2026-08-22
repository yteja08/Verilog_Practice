module comparator_4bit(
input [3:0]a,b,
output a_greaterthan_b, a_equals_b, a_lessthan_b
);

assign a_greaterthan_b  = (a > b);
assign a_equals_b       = (a == b);
assign a_lessthan_b     = (a < b);

endmodule
