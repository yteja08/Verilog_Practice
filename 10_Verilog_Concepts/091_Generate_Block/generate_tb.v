module generate_tb #(parameter width = 16);

reg [width-1:0] a,b;
wire [width-1:0] y;

generate_and dut (.*);

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,generate_tb);

$monitor (" Time = %0t | a= %b | b = %b | y=%b", $time, a,b,y);

a='d40000; b='d33765; #10;
a='d54321; b='d20987; #10;
a='d09876; b='d300; #10;
a='d43; b='d64000; #10;

$finish;
end
endmodule


