module register_file_tb();

reg clk;
reg we;
reg [2:0] write_address;
reg [7:0] write_data;
reg [2:0] read_address;

wire [7:0] read_data;

register_file dut(.*);

initial clk = 0;
always #5 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,register_file_tb);

$monitor("Time=%0t | clk = %b | we=%b | write_address=%d | write_data=%b | read_address=%d | read_data=%b",
             $time,clk,we, write_address,write_data,read_address, read_data);

we = 1; read_address = 3'd0;
	write_address = 3'd0; write_data = 8'd41; #10;
	write_address = 3'd1; write_data = 8'd152; #10;
	write_address = 3'd2; write_data = 8'd30; #10;
	write_address = 3'd3; write_data = 8'd114; #10;
	write_address = 3'd4; write_data = 8'd75; #10;
	write_address = 3'd5; write_data = 8'd196; #10;

we = 0; read_address = 3'd2; #10;
	read_address = 3'd4; #10;
	read_address = 3'd0; #10;
	read_address = 3'd6; #10;
	read_address = 3'd7; #10;
	read_address = 3'd0; #20;


$finish;

end

endmodule
 
