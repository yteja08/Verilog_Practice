module comparator_4bit_tb();
reg [3:0] a,b;
wire a_greaterthan_b, a_equals_b, a_lessthan_b;

comparator_4bit dut(.*);

initial begin

$dumpfile("waveform.vcd");
$dumpvars(0,comparator_4bit_tb);

  a=4'd5;b=4'd7;#10;
  a=4'd9;b=4'd5;#10;
  a=4'd3;b=4'd3;#10;
  a=4'd6;b=4'd12;#10;
  a=4'd14;b=4'd11;#10;  

$finish;

end
endmodule
