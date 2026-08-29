module mod_10_counter(
input clk,rst,
output reg [3:0]count);

always @(posedge clk) begin
    if (rst)
        count <= 4'b000;
    else begin
    	if (count==4'd9)
	    count <= 4'b000;
         else 
            count <= count + 1'b1;

end

end

endmodule
