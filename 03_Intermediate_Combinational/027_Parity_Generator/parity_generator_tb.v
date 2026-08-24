module parity_generator_tb();
reg [3:0] a;
wire [4:0] parity;

parity_generator dut(.*);

initial begin 

$dumpfile("waveform.vcd");
$dumpvars(0,parity_generator_tb);

a=4'd12;#10;
a=4'd14;#10;
a=4'd4;#10;
a=4'd8;#10;
a=4'd1;#10;
a=4'd5;#10;
a=4'd10;#10;
a=4'd15;#10;

end
endmodule
