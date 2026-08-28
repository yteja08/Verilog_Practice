module mod_5_counter(
input clk,rst,
output reg [2:0]count);

always @(posedge clk) begin
    if (rst)
        count <= 3'b000;
    else begin
    	if (count==3'd4)
	    count <= 3'b000;
         else 
            count <= count + 1'b1;

end

end

endmodule
