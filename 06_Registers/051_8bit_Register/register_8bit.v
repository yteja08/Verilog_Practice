module register_8bit(
    input clk, rst,
    input [7:0] d,
    output reg [7:0] q
);

always @(posedge clk) begin

if(rst)
    q <= 7'd0;
else
    q<=d;

end

endmodule
