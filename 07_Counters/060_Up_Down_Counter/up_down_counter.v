module up_down_counter(

input clk,rst,up,
output reg [3:0]count

);

always @(posedge clk) begin

    if (rst)
        count <= 4'b0000;
    else if (up)
        count <= count + 1'b1;  //UP COUNTER
    else
        count <= count - 1'b1;  //DOWN COUNTER

end

endmodule
