module t_flipflop_tb();
  reg en, t, clk;
  wire q;

  t_flipflop dut (.*);

  always #5 clk=~clk;

  initial begin

   $dumpfile("waveform.vcd");
   $dumpvars(0,t_flipflop_tb);
   
    clk=0;
    #10; en=0; t=0;
    #10; en=1; t=0;  
    #10; en=1; t=1;   
    #10; en=0; t=0;   
    #10; en=1; t=1;   
    #10; en=0; t=0;
    #10; en=1; t=0;   
    #10; en=1; t=1;   
    #10; en=0; t=0;

    #10; $finish;
  end
 endmodule
