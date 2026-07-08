module decoder_2X4_tb();
reg en,s1,s2;
wire y0,y1,y2,y3;

decoder_2X4 dut(
.en(en),.s1(s1),.s2(s2),.y0(y0),.y1(y1),.y2(y2),.y3(y3));

initial begin

$monitor("TIME=%0t en=%b s1=%b s2=%b y0=%b y1=%b y2=%b y3=%b",$time,en,s1,s2,y0,y1,y2,y3);
$dumpfile("waveform.vcd");
$dumpvars(0,decoder_2X4_tb);

en=0;#10;
en=1;s1=0;s2=0;#10;
s1=0;s2=1;#10;
s1=1;s2=0;#10;
s1=1;s2=1;#10;

end

endmodule

