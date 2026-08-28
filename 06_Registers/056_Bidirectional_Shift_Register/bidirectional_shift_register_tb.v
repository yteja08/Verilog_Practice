module bidirectional_shift_register_tb();

reg clk;
reg rst;
reg serial_in;
reg direction;

wire [3:0] q;

bidirectional_shift_register dut(.*);

initial clk = 0;
always #5 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,bidirectional_shift_register_tb);

#5;
rst=1;direction=0;serial_in=0;#10;
rst=0;direction=1;serial_in=1;#10;
rst=0;direction=1;serial_in=1;#10;
rst=0;direction=1;serial_in=1;#10;
rst=0;direction=1;serial_in=0;#10;
rst=0;direction=1;serial_in=1;#10;
rst=0;direction=0;serial_in=1;#10;
rst=0;direction=0;serial_in=1;#10;
rst=1;direction=0;serial_in=0;#10;
rst=1;direction=1;serial_in=1;#10;

$finish;

end

endmodule
