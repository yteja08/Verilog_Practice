module up_counter_tb();

reg clk;
reg rst;

wire [3:0] count;

up_counter dut(.*);

initial clk = 0;
always #10 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,up_counter_tb);

#10;
rst=1;#10;
rst=0;#50;
rst=1;#10;
rst=0;#60;

$finish;

end

endmodule
