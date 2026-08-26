module register_8bit_tb();
  reg rst, clk;
  reg [7:0]d;
  wire [7:0]q;

  register_8bit dut (.*);

  always #5 clk=~clk;

  initial begin

   $dumpfile("waveform.vcd");
   $dumpvars(0,register_8bit_tb);
   
    clk=0;
    #10; rst=1; d=8'd0;
    #10; rst=1; d=8'd100;  
    #10; rst=0; d=8'd200;   
    #10; rst=0; d=8'd233;   
    #10; rst=0; d=8'd142;   
    #10; rst=0; d=8'd58;
    #10; rst=0; d=8'd169;   
    #10; rst=0; d=8'd7;   
    #10; rst=0; d=8'd18;
    #10; rst=1; d=8'd95;
    #10; rst=1; d=8'd38;

    #10; $finish;
  end
 endmodule
