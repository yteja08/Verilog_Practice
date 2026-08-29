module johnson_counter_tb();

reg clk;
reg rst;

wire [3:0] q;

johnson_counter dut(.*);

initial clk = 0;
always #10 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,johnson_counter_tb);

#10;
rst=1;#30;
rst=0;#320;

$finish;

end

endmodule
