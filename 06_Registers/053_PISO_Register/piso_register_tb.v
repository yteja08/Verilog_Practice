module piso_register_tb();

reg clk,rst,load;
reg [3:0] d;

wire q;

integer i;

piso_register dut(.*);

initial clk = 0;
always #5 clk = ~ clk;

always @(posedge clk or negedge clk) begin

if (clk)
$display ("Time = %0t: Rising edge", $time);
else
$display ("Time = %0t: Falling edge", $time);

end

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,piso_register_tb);

#5

rst = 1;
load = 0;
d = 4'b0000;

#10;
rst = 0;

for (i = 0; i < 16; i = i + 1) begin

d = i;
load = 1;
#10;

load = 0;
#40;

end 

$finish;

end

endmodule
