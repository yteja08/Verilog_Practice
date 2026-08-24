module parity_checker_tb();

reg [3:0] data;
reg even_parity, odd_parity ;
wire error, parity_bit;

parity_checker dut(.data(data),.even_parity(even_parity),.odd_parity(odd_parity),.error(error),.parity_bit(parity_bit));

initial begin 

$dumpfile("waveform.vcd");
$dumpvars(0,parity_checker_tb);

even_parity=0;
odd_parity=0;

data=4'd12;#10;
data=4'd3;even_parity=1;#10;
data=4'd14;#10;
data=4'd4;#10;
data=4'd8;#10;
data=4'd1;odd_parity=1;even_parity=0;#10;
data=4'd5;#10;
data=4'd10;#10;
data=4'd15;#10;

end
endmodule
