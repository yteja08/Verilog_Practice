module parameter_tb#(parameter width = 4);

reg [width-1:0]a;
reg [width-1:0]b;

wire [width-1:0]y;

parameter_and dut(.a(a),.b(b),.y(y));

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,parameter_tb);

$monitor (" Time = %0t | a= %b | b = %b | y=%b", $time, a,b,y);

a='d5; b='d4; #10;
a='d10; b='d1; #10;
a='d12; b='d7; #10;
a='d6; b='d3; #10;

$finish;
end
endmodule


