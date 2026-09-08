module register_file(

input clk,
input we,

input [2:0] write_address,
input [2:0] read_address,
input [7:0] write_data,

output reg [7:0] read_data

);

reg [7:0] register_file [0:7];

always @(posedge clk) begin

if(we)
register_file [write_address] <= write_data;

else 
read_data <= register_file [read_address];

end

endmodule




 
