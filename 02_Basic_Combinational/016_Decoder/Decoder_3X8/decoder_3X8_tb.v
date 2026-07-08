module decoder_3X8_tb();
reg en;
reg [2:0]s;
wire [7:0]y;

decoder_3X8 dut(
.en(en),.s(s),.y(y));

initial begin 

$monitor("TIME=%0t en=%b s=%b y=%b",$time,en,s,y);
$dumpfile("waveform.vcd");
$dumpvars(0,decoder_3X8_tb);

en=0;s=3'b101;#10;
en=1;s=3'b000;#10
s=3'b001;#10
s=3'b010;#10
s=3'b011;#10
s=3'b100;#10
s=3'b101;#10
s=3'b110;#10
s=3'b111;#10

$finish;

end

endmodule
