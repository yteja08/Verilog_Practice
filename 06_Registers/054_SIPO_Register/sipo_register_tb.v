module sipo_register_tb();

reg clk;
reg rst;
reg serial_in;

wire [3:0] q;

integer i;

sipo_register dut(.*);

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk or posedge rst) begin

if (clk)
$display ("Time = %0t: Rising Edge", $time);
else
$display ("Time = %0t: Falling Edge", $time);

end

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,sipo_register_tb);

#5 rst = 1;
   serial_in = 0;

   #10 
   rst =0;

for (i = 0; i < 8; i = i + 1) begin

serial_in = i;
#10;

end

$finish;

end

endmodule
