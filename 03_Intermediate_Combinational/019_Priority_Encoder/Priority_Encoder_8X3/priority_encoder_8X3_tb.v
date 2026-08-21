module priority_encoder_8X3_tb();
reg  [7:0]d;
wire [2:0]y;

priority_encoder_8X3 dut(.*);

initial begin

$display("TIME=%0t d=%0b y=%0b",$time,d,y);
$dumpfile("waveform.vcd");
$dumpvars(0,priority_encoder_8X3_tb);

      d= 8'd1;#10;
      d= 8'd2;#10;
      d= 8'd46;#10;
      d= 8'd8;#10;
      d= 8'd16;#10;
      d= 8'd32;#10;
      d= 8'd43;#10;
      d= 8'd128;#10;
      
end

endmodule

