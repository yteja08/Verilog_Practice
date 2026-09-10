module function_tb();

reg a,b;
wire y;

function_and dut (.*);

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,function_tb);

$monitor (" Time = %0t | a= %b | b = %b | y=%b", $time, a,b,y);

a=0;b=0;#10;
b=1;#10;
a=1;#10;
b=0;#10;

$finish;
end
endmodule


