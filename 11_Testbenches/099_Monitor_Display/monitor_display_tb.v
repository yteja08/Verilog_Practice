module dff_tb();
  reg d, clk;
  wire q;

  dff dut (.*);
  
  initial clk=0;
  always #5 clk=~clk;

  initial begin

   $dumpfile("waveform.vcd");
   $dumpvars(0,dff_tb);

   $display("T=%0t clk=%b d=%b q=%b", $time, clk, d, q);  //$display statement executes when ever we call them.
   
    clk=0;
    #10; d=0;
    #10; d=0;  
    #10; d=1;   
    #10; d=0;   
    #10; d=1;   
    #10; d=0;
    #10; d=0;   
    #10; d=1;   
    #10; d=0;
    #10; $finish;

    end

    initial begin	//$monitor statement executes whenever the monitoring signal changes (clk or d).

    $monitor("Time=%0t clk=%b d=%b q=%b",
          $time, clk, d, q);

    end

 endmodule
