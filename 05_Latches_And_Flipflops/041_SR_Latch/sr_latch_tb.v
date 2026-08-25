module sr_latch_tb();
  reg s, r;
  wire q;

  sr_latch dut (.*);

  initial begin

   $dumpfile("waveform.vcd");
   $dumpvars(0,sr_latch_tb);
   
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
