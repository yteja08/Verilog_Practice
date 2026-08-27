module siso_register(

input clk, rst, serial_in,
output serial_out

);

reg [3:0] q;

always @(posedge clk or posedge rst) begin

if(rst) begin
q <= 4'b0000;
end

else begin
q <= { serial_in, q[3:1]};
end

end

assign serial_out = q[3];

endmodule
