module simple_stack_tb #(parameter depth = 8, width = 8);

reg clk,reset;
reg push,pop;
reg [width-1:0] data_in;

wire [width-1:0] data_out;


simple_stack dut(.*);

initial clk = 0;
initial push = 0;
initial pop = 0;
always #5 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,simple_stack_tb);

$monitor("Time=%0t | clk = %b | reset = %b | push=%b | pop=%b | data_in=%b | data_out=%b | s_ptr=%b",
             $time,clk,reset,push,pop,data_in,data_out,dut.s_ptr);

reset = 1; #30; reset = 0; 
push = 1;  data_in = 'd200; #10;
	 data_in = 'd41; #10;
	 data_in = 'd152; #10;
	 data_in = 'd30; #10;
	 data_in = 'd114; #10;
	 data_in = 'd75; #10;

pop = 1; push = 0; #40; push = 1; pop = 0; 
	 data_in = 'd196; #10;
	 data_in = 'd200; #10;
	 data_in = 'd41; #10;
	 data_in = 'd152; #10;
	 data_in = 'd30; #10;

pop = 1; push = 0; #70; reset = 1; #20; reset = 0; push = 1; pop = 0; 
	 data_in = 'd10; #10;
	 data_in = 'd60; #10;
 	 data_in = 'd200; #10;
	 data_in = 'd41; #10;
	 data_in = 'd152; #10;

pop = 1; push = 0; #40; push = 1; pop = 0;
	 data_in = 'd30; #10;
	 data_in = 'd114; #10;
	 data_in = 'd75; #10;
	 data_in = 'd196; #10;
	 data_in = 'd255;

push = 0; pop = 0; #20;


$finish;

end

endmodule
 
