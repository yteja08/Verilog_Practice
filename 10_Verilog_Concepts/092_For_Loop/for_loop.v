module forloop_and #(parameter width = 16)(

input [width-1:0] a,b,
output [width-1:0] y

);

assign y = a & b;

endmodule
