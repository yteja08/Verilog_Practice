module blocking_assignment (

input  a, b,
output reg x,y

);

always @(*) begin

    x = a+b;  
    y = a-b;   

end

endmodule
