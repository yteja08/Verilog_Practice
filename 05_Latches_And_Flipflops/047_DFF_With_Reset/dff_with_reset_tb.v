module dff_with_reset_tb();
  reg rst, d, clk;
  wire q;

  dff_with_reset dut (.*);

  always #5 clk=~clk;

  initial begin

   $dumpfile("waveform.vcd");
   $dumpvars(0,dff_with_reset_tb);
   
    clk=0;
    #10; rst=0; d=0;
    #10; rst=1; d=0;  
    #10; rst=0; d=1;   
    #10; rst=0; d=0;   
    #10; rst=1; d=1;   
    #10; rst=0; d=0;
    #10; rst=0; d=1;   
    #10; rst=1; d=0;   
    #10; rst=0; d=0;

    #10; $finish;
  end
 endmodule
