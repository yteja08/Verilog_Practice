module parity_generator(

input [3:0] a,
output [4:0] parity

);

wire parity_bit;

assign parity_bit = a[3] ^ a[2] ^ a[1] ^ a[0];
assign parity = {a,parity_bit};

endmodule
