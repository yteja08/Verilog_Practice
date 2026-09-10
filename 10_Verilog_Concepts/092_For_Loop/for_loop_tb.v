module forloop_tb #(parameter width = 16);

reg [width-1:0]a,b;
wire [width-1:0] y;

forloop_and dut(.*);

integer i;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,forloop_tb);

$monitor (" Time = %0t | a= %b | b = %b | y=%b", $time, a,b,y);

for(i=0; i<width; i=i+1) begin
    a = $random;
    b = $random;
    #10;
end

$finish;
end
endmodule

