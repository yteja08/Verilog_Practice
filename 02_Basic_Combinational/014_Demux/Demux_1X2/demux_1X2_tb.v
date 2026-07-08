`timescale 1ns/1ps

module demux_1x2_tb();

reg y,s;
wire i0,i1;

demux_1x2 dut(
.y(y),
.s(s),
.i0(i0),
.i1(i1)
);

initial begin

$monitor("TIME=%0t y=%b s=%b i0=%b i1=%b ",$time,y,s,i0,i1);
$dumpfile("waveform.vcd");
$dumpvars(0, demux_1x2_tb);

y=0;s=0;#10;
y=0;s=1;#10;
y=1;s=0;#10;
y=1;s=1;#10;

$finish;

end

endmodule


