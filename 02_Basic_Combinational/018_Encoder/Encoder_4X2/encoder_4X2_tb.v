module encoder_4X2_tb();
reg d0,d1,d2,d3;
wire y0,y1;

encoder_4X2 dut(
.d0(d0),.d1(d1),.d2(d2),.d3(d3),.y0(y0),.y1(y1));

initial begin

$display("TIME=%0t d0=%0b d1=%0b d2=%0b d3=%0b y0=%b y1=%b",$time,d0,d1,d2,d3,y0,y1);
$dumpfile("waveform.vcd");
$dumpvars(0,encoder_4X2_tb);

{d0,d1,d2,d3}=4'd1;#10;
{d0,d1,d2,d3}=4'd2;#10;
{d0,d1,d2,d3}=4'd4;#10;
{d0,d1,d2,d3}=4'd8;#10;
{d0,d1,d2,d3}=4'd5;#10;

end

endmodule

