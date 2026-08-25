module sr_flipflop_tb();
  reg s, r, clk;
  wire q;

  sr_flipflop dut (.*);

  always #5 clk=~clk;

  initial begin

   $dumpfile("waveform.vcd");
   $dumpvars(0,sr_flipflop_tb);
   
    clk=0;
    #10; s=0; r=0;
    #10; s=1; r=0;  
    #10; s=0; r=1;   
    #10; s=0; r=0;   
    #10; s=1; r=1;   
    #10; s=0; r=0;
    #10; s=1; r=0;   
    #10; s=0; r=1;   
    #10; s=0; r=0;

    #10; $finish;
  end
 endmodule
