module mealy_fsm(

input clk, rst, x,
output reg y

);

parameter S1 = 2'b00,
          S2 = 2'b01,
          S3 = 2'b10;

reg [1:0] state, next_state;

always @(posedge clk or posedge rst) begin

if (rst)
   state <= S1;
else 
   state <= next_state;

end

always @(*) begin

case (state)

S1: begin

if(x)
next_state = S2;
else
next_state = S1;

end

S2: begin

if(x)
next_state = S3;
else
next_state = S1;

end

S3: begin

if(x)
next_state = S3;
else
next_state = S1;

end

default: next_state = S1;

endcase

end

always @(*) begin
    case (state)

        S1 : y = 1'b0;
        S2 : y = 1'b0;
        S3 : y = x?1'b0:1'b1;

        default : y = 1'b0;

    endcase
end

endmodule
