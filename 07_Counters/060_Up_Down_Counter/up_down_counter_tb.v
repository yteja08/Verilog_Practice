module up_down_counter_tb();

reg clk;
reg rst;
reg up;

wire [3:0] count;

up_down_counter dut(.*);

initial clk = 0;
always #10 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,up_down_counter_tb);

#10;
rst=1;up=1;#10;
rst=0;up=1;#50;
rst=0;up=0;#20;
rst=0;up=1;#60;
rst=0;up=0;#40;
rst=1;up=1;#20;

$finish;

end

endmodule
