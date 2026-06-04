module and_gate(
	input a, 
	input b,
	output y
);
always @(*) begin
	y=a&b;
end
endmodule
