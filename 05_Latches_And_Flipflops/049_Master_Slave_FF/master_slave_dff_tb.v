module master_slave_dff_tb();
  reg rst, d, clk;
  wire q, q_bar;

  master_slave_dff dut (.*);

  always #5 clk=~clk;

  initial begin

   $dumpfile("waveform.vcd");
   $dumpvars(0,master_slave_dff_tb);
   
    clk=0;rst=1;d=0;
    #10; rst=1; d=1;
    #10; rst=0; d=0;
    #10; rst=0; d=1;  
    #10; rst=0; d=1;   
    #10; rst=0; d=0;   
    #10; rst=0; d=1; 
    #10; rst=0; d=1;   
    #10; rst=0; d=1;   
    #10; rst=0; d=1;   
    #10; rst=0; d=0;
    #10; rst=0; d=1;   
    #10; rst=0; d=1;   
    #10; rst=0; d=0; 
    #10; rst=0; d=1;
    #10; rst=1; d=1;   
    #10; rst=1; d=0;   
    #10; rst=1; d=1;

    #10; $finish;
  end
 endmodule
