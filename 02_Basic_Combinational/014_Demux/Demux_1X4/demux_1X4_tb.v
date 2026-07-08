`timescale 1ns/1ps

module demux_1X4_tb();
reg y,en;
reg [1:0]s;
wire [3:0]I;

demux_1X4 dut(
.y(y),
.en(en),
.s(s),
.I(I)
);

initial begin 

$monitor("TIME=%0t y=%b en=%b s=%b I=%b ",$time,y,en,s,I);
$dumpfile("waveform.vcd");
$dumpvars(0,demux_1X4_tb);

en=0;#10;
en=1;y=1;s=00;#10;
y=1;s=01;#10;
y=1;s=10;#10;
y=1;s=11;#10;

$finish;

end

endmodule


