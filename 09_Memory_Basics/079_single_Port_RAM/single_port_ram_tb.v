module single_port_ram_tb();

reg clk;
reg we;
reg [2:0] address;
reg [3:0] data_in;

wire [3:0] data_out;

single_port_ram dut(.*);

initial clk = 0;
always #5 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,single_port_ram_tb);

$monitor("Time=%0t | clk = %b | we=%b | address=%d | data_in=%b | data_out=%b",
             $time,clk,we, address,data_in,data_out);

we = 1; address = 3'd0; data_in = 4'd1; #10;
	address = 3'd1; data_in = 4'd2; #10;
	address = 3'd2; data_in = 4'd3; #10;
	address = 3'd3; data_in = 4'd4; #10;
	address = 3'd4; data_in = 4'd5; #10;
	address = 3'd5; data_in = 4'd6; #10;

we = 0; address = 3'd2; #10;
	address = 3'd4; #10;
	address = 3'd0; #10;
	address = 3'd6; #10;
	address = 3'd7; #10;
	address = 3'd0; #20;


$finish;

end

endmodule
 
