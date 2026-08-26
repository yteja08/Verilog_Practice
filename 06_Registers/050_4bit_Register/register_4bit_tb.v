module register_4bit_tb();
  reg rst, clk;
  reg [3:0]d;
  wire [3:0]q;

  register_4bit dut (.*);

  always #5 clk=~clk;

  initial begin

   $dumpfile("waveform.vcd");
   $dumpvars(0,register_4bit_tb);
   
    clk=0;
    #10; rst=1; d=4'd0;
    #10; rst=1; d=4'd1;  
    #10; rst=0; d=4'd2;   
    #10; rst=0; d=4'd3;   
    #10; rst=0; d=4'd4;   
    #10; rst=0; d=4'd5;
    #10; rst=0; d=4'd6;   
    #10; rst=0; d=4'd7;   
    #10; rst=0; d=4'd8;
    #10; rst=1; d=4'd9;
    #10; rst=1; d=4'd10;

    #10; $finish;
  end
 endmodule
