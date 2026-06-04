module not_gate(
	input a,
	output y
);
always @(*) begin
	y=~a;
end
endmodule
