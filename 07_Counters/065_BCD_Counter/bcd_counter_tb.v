module bcd_counter_tb();

reg clk;
reg rst;

wire [3:0] q;

bcd_counter dut(.*);

initial clk = 0;
always #10 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,bcd_counter_tb);

#10;
rst=1;#30;
rst=0;#250;

$finish;

end

endmodule
