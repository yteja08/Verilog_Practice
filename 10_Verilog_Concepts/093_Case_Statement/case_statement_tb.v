module case_statement_tb();

reg [1:0]a;
wire [1:0]b;

case_statement dut (.*);

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,case_statement_tb);

$monitor (" Time = %0t | a= %b | b=%b", $time, a,b);

a=2'd0; #10;
a=2'd1; #10;
a=2'd2; #10;
a=2'd3; #10;

$finish;
end
endmodule


