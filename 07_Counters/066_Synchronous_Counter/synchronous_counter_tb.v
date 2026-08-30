module synchronous_counter_tb();

reg clk;
reg rst;

wire [3:0] q;

synchronous_counter dut(.*);

initial clk = 0;
always #10 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,synchronous_counter_tb);

#10;
rst=1;#30;
rst=0;#74;
rst=1;#16;
rst=0;#100;

$finish;

end

endmodule
