module odd_even_detector_tb();
reg [3:0] a;
wire odd, even;

odd_even_detector dut(.*);

initial begin 

$dumpfile("waveform.vcd");
$dumpvars(0,odd_even_detector_tb);

a=4'd12;#10;
a=4'd11;#10;
a=4'd4;#10;
a=4'd7;#10;
a=4'd1;#10;
a=4'd5;#10;
a=4'd10;#10;
a=4'd14;#10;

end
endmodule
