module d_flipflop_tb();
  reg en, d, clk;
  wire q;

  d_flipflop dut (.*);

  always #5 clk=~clk;

  initial begin

   $dumpfile("waveform.vcd");
   $dumpvars(0,d_flipflop_tb);
   
    clk=0;
    #10; en=0; d=0;
    #10; en=1; d=0;  
    #10; en=1; d=1;   
    #10; en=0; d=0;   
    #10; en=1; d=1;   
    #10; en=0; d=0;
    #10; en=1; d=0;   
    #10; en=1; d=1;   
    #10; en=0; d=0;

    #10; $finish;
  end
 endmodule
