module even_odd_zero_detector(

input clk,rst,x,
output reg y

);

parameter even = 1'b0,
	  odd  = 1'b1;

reg state,next_state;

always @(posedge clk or posedge rst) begin

if (rst)
   state <= even;

else begin
   state <= next_state;
end

end


always @(*) begin 

case (state) 

even: begin
	if (x)
	   next_state <= even;
	else
	   next_state <= odd;
end 

odd: begin
	if (x)
	   next_state <= odd;
	else
	   next_state <= even;
end

default: next_state <= even;

endcase

end

always @(*) begin

case (state) 

even: begin 
	y = 1'b0;
     end 

odd: begin 
	y = 1'b1; 	
     end

default: y = 1'b0;

endcase

end

endmodule





