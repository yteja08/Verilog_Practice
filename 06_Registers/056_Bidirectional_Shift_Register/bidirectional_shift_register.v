module bidirectional_shift_register(

input clk, rst, serial_in, direction,
output reg [3:0]q

);

always @(posedge clk or posedge rst) begin

if(rst) begin
q <= 4'b0000;
end

else if(direction) begin    //right shift
q <= {serial_in, q[3:1]};
end

else
q <= {q[2:0],serial_in};   //left shift

end

endmodule
