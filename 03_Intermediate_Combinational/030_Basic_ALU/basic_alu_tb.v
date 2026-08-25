module basic_alu_tb();
  reg clk,rst;
  reg [3:0] a,b;
  reg[3:0]sel;
  wire [15:0] out;

  integer i;

  basic_alu dut(.*);
  
  always #5 clk=~clk;

  initial begin

    $dumpfile("waveform.vcd");
    $dumpvars(0,basic_alu_tb);

    clk=0;rst=0;a=4'b0111;b=4'b0110;
    for(i=0;i<16;i++) begin #10;
      sel=i;
    end

    #10 a=4'b1001;b=4'b1010;
    for(i=0;i<16;i++) begin
      #10
      sel=i;
    end

    #10 $finish;

  end
endmodule
