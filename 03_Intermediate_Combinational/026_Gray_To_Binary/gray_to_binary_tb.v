module gray_to_binary_tb();
reg  [3:0] gray;
wire [3:0] binary;

gray_to_binary dut(.*);

initial begin 

$dumpfile("waveform.vcd");
$dumpvars(0,gray_to_binary_tb);

gray=4'd12;#10;
gray=4'd14;#10;
gray=4'd4;#10;
gray=4'd8;#10;
gray=4'd1;#10;

end
endmodule
