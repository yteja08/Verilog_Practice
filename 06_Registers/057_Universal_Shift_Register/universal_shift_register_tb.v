module universal_shift_register_tb();

reg clk;
reg rst;
reg serial_in;
reg [1:0]sel;
reg [3:0]parallel_in;

wire [3:0] q;

universal_shift_register dut(.*);

initial clk = 0;
always #5 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,universal_shift_register_tb);

#5;
rst=1;sel=2'b11;parallel_in=4'b1101;#10;
rst=0;sel=2'b01;serial_in=1;#10;
rst=0;sel=2'b01;serial_in=0;#10;
rst=0;sel=2'b10;serial_in=1;#10;
rst=0;sel=2'b00;parallel_in=4'b0110;#10;
rst=0;sel=2'b10;serial_in=1;#10;
rst=0;sel=2'b11;parallel_in=4'b1010;#10;
rst=0;sel=2'b00;serial_in=1;#10;
rst=1;sel=2'b11;serial_in=0;#10;
rst=1;sel=2'b01;serial_in=1;#10;

$finish;

end

endmodule
