module priority_encoder_16X4_tb();
reg [15:0]d;
wire [3:0]y;

priority_encoder_16X4 dut(.*);

initial begin

$display("TIME=%0t d=%0b y=%0b",$time,d,y);
$dumpfile("waveform.vcd");
$dumpvars(0,priority_encoder_16X4_tb);

      d= 16'd1;#10;
      d= 16'd2;#10;
      d=16'd46;#10;
      d= 16'd8;#10;
      d=16'd16;#10;
      d=16'd32;#10;
      d=16'd643;#10;
      d=16'd128;#10;
      d=16'd2565;#10;
      d= 16'd512;#10;
      d= 16'd1024;#10;
     
end

endmodule

