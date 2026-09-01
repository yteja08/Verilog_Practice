module non_blocking_assignment (

input d,
input clk,
output reg q
);

always @(posedge clk) begin

q <= d;

end

endmodule
