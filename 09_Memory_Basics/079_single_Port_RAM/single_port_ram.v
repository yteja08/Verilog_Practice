module single_port_ram (

input clk, we,
input [2:0] address,
input [3:0] data_in,

output reg [3:0] data_out

);


reg [3:0] mem [0:7];

always @(posedge clk) begin

if(we) begin

mem[address] <= data_in;

end

else begin

data_out <= mem[address] ;

end


end

endmodule
