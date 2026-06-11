module mux_16x1(
	input [15:0]I, input [3:0]s, input en,
	output reg y);

always@(*) begin
	if(!en)
		y=1'b0;
	else
		y=I[s];
end
endmodule

