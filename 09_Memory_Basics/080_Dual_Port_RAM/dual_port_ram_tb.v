module dual_port_ram_tb();

reg clk_a;
reg we_a;
reg [2:0] address_a;
reg [3:0] data_in_a;
wire [3:0] data_out_a;

reg clk_b;
reg we_b;
reg [2:0] address_b;
reg [3:0] data_in_b;
wire [3:0] data_out_b;

dual_port_ram dut(.*);

initial clk_a = 0;
initial clk_b = 0;
always #5 clk_a = ~clk_a;
always #5 clk_b = ~clk_b;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,dual_port_ram_tb);

$monitor("Time=%0t | clk_a = %b | we_a=%b | address_a=%d | data_in_a=%b | data_out_a=%b",
             $time,clk_a,we_a, address_a,data_in_a,data_out_a);

$monitor("Time=%0t | clk_b = %b | we_b=%b | address_b=%d | data_in_b=%b | data_out_b=%b",
             $time,clk_b,we_b, address_b,data_in_b,data_out_b);

we_a = 1; we_b = 1; address_a = 3'd0; data_in_a = 4'd1; #10;
	address_a = 3'd1; data_in_a = 4'd2; #10;
	address_a = 3'd2; data_in_a = 4'd3; #10; data_in_a = 1'dx;
	address_b = 3'd3; data_in_b = 4'd4; #10;
	address_b = 3'd4; data_in_b = 4'd5; #10;
	address_b = 3'd5; data_in_b = 4'd6; #10;data_in_b = 1'dx;

we_a = 0; we_b = 0; address_a = 3'd2; #10;
	address_b = 3'd4; #10;
	address_a = 3'd0; #10;
	address_b = 3'd6; #10;
	address_a = 3'd7; #10;
	address_a = 3'd0; #20;


$finish;

end

endmodule
 
