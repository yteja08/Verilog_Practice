module demux_1X8_tb();

reg y,en;
reg [2:0]s;
wire [7:0]I;

demux_1X8 dut(
.y(y),
.en(en),
.s(s),
.I(I)
);

initial begin
$monitor("TIME=%0t y=%b en=%b s=%b I=%b", $time,y,en,s,I);
$dumpfile("waveform.vcd");
$dumpvars(0, demux_1X8_tb);

en=0;#10;
en=1;y=1;s=3'b000;#10;
s=3'b001;#10;
s=3'b010;#10;
s=3'b011;#10;
s=3'b100;#10;
s=3'b101;#10;
s=3'b110;#10;
s=3'b111;#10;

$finish;

end

endmodule

