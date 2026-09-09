module simple_fifo_tb #(parameter depth = 16, width = 8);

reg clk,reset;
reg we,re;
reg [width-1:0] data;

wire [width-1:0] data_out;
wire full, empty;


simple_fifo dut(.*);

initial clk = 0;
initial we = 0;
initial re = 0;
always #5 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,simple_fifo_tb);

$monitor("Time=%0t | clk = %b | reset = %b | we=%b | re=%b | data=%b | data_out=%b | full=%b | empty=%b | r_ptr=%b | w_ptr=%b",
             $time,clk,reset,we,re,data,data_out,full,empty,dut.r_ptr,dut.w_ptr);

reset = 1; #30; reset = 0; 
we = 1;  data = 'd200; #10;
	 data = 'd41; #10;
	 data = 'd152; #10;
	 data = 'd30; #10;
	 data = 'd114; #10;
	 data = 'd75; #10;
	 data = 'd196; #10;
	 data = 'd200; #10;
	 data = 'd41; #10;
	 data = 'd152; #10;
	 data = 'd30; #10;
	 data = 'd114; #10;
	 data = 'd75; #10;
	 data = 'd196; #10;
	 data = 'd240; #10;
	 data = 'd1; #10;
	 data = 'd10; we = 0; #10;
	 data = 'd60; #10;
 re = 1; data = 'd200; #10;
	 data = 'd41; #10;
	 data = 'd152; #10;
we = 1;	 data = 'd30; #10;
	 data = 'd114; #10;
	 data = 'd75; #10;
	 data = 'd196; #10;

we = 0; re = 0; #20;


$finish;

end

endmodule
 
