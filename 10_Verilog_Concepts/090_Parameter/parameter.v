module parameter_and #(

parameter width = 4

)(

input [width-1:0] a,
input [width-1:0] b,

output [width-1:0] y

);

assign y = a & b;

endmodule
