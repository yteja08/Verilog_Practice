module comparator_1bit_tb();
reg a,b;
wire a_greaterthan_b, a_equals_b, a_lessthan_b;

comparator_1bit dut(.*);

initial begin

$display("TIME=%0t a=%0b b=%0b",$time,a,b);
$dumpfile("waveform.vcd");
$dumpvars(0,comparator_1bit_tb);

  a=0;b=0;#10;
  a=1;#10;
  b=1;#10;
  a=0;#10;
   
$finish;

end
endmodule
