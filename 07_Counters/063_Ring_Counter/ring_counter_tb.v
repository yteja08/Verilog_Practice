module ring_counter_tb();

reg clk;
reg rst;

wire [3:0] q;

ring_counter dut(.*);

initial clk = 0;
always #10 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,ring_counter_tb);

#10;
rst=1;#10;
rst=0;#220;

$finish;

end

endmodule
