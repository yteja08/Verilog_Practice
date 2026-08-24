module bcd_adder(

input [3:0] a, b,
input cin,
output [3:0] sum,
output cout

);

wire [4:0] temp;
wire [4:0] corrected;

assign temp = a + b + cin;

assign corrected = (temp>5'd9) ? (temp + 5'd6) : temp;

assign sum = corrected[3:0];
assign cout = corrected[4];

endmodule
