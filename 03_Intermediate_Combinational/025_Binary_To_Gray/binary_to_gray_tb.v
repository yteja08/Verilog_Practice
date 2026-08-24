module binary_to_gray_tb();
reg  [3:0] binary;
wire [3:0] gray;

binary_to_gray dut(.*);

initial begin 

$dumpfile("waveform.vcd");
$dumpvars(0,binary_to_gray_tb);

binary=4'd12;#10;
binary=4'd14;#10;
binary=4'd4;#10;
binary=4'd8;#10;
binary=4'd1;#10;

end
endmodule
