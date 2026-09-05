module moore_fsm_tb();

reg clk, rst, x;
wire y;

moore_fsm dut (.*);

initial clk = 0;
always #5 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,moore_fsm_tb);

$monitor ("Time = %0t | rst = %b | x = %b | y = %b|", $time , rst, x, y);

rst = 1;x = 0;#10;
rst = 0;x = 1; #10;
        x = 1; #10;
        x = 1; #10;
	x = 0; #10;
	x = 0; #10;
        x = 1; #10;
        x = 1; #10;
        x = 0; #30;

$finish;

end

endmodule
