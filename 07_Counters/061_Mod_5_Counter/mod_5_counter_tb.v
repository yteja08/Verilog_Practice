module mod_5_counter_tb();

reg clk;
reg rst;

wire [2:0] count;

mod_5_counter dut(.*);

initial clk = 0;
always #10 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,mod_5_counter_tb);

#10;
rst=1;#10;
rst=0;#120;
rst=0;#10;
rst=0;#140;

$finish;

end

endmodule
