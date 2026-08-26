module pipo_register_tb();
  reg rst, clk;
  reg [3:0]d;
  wire [3:0]q;

  pipo_register dut (.*);

  always #5 clk=~clk;

  initial begin

   $dumpfile("waveform.vcd");
   $dumpvars(0,pipo_register_tb);
   
    clk=0;
    #10; rst=1; d=4'd0;
    #10; rst=1; d=4'd1;  
    #10; rst=0; d=4'd2;   
    #10; rst=0; d=4'd14;   
    #10; rst=0; d=4'd4;   
    #10; rst=0; d=4'd15;
    #10; rst=0; d=4'd6;   
    #10; rst=0; d=4'd12;   
    #10; rst=0; d=4'd8;
    #10; rst=1; d=4'd9;
    #10; rst=1; d=4'd10;

    #10; $finish;
  end
 endmodule
