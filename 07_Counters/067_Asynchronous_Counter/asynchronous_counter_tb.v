module asynchronous_counter_tb();

reg clk;
reg rst;

wire [3:0] q;

asynchronous_counter dut(.*);

initial clk = 0;
always #10 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,asynchronous_counter_tb);

#10;
rst=1;#30;
rst=0;#350;

$finish;

end

endmodule
