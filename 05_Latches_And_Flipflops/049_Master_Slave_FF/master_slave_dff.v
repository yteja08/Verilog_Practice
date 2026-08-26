module master_slave_dff(

input d, clk, rst,
output reg q, q_bar

);

reg m2s;

always @(*) begin

if (rst)
	m2s <= 1'b0;
else if (!clk)
	m2s <= d;

end

always @(*) begin

if (rst) begin
	q <= 1'b0;
	q_bar <= 1'b1;
end
else if (clk) begin	
	q <= m2s;
	q_bar <= ~m2s;
end

end

endmodule
