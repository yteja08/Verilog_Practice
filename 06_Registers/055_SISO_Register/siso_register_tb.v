module siso_register_tb();

reg clk;
reg rst;
reg serial_in;
wire serial_out;

integer i;

siso_register dut(.*);

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk or negedge clk) begin

	if (clk)
		$display ("Time = %0t: Rising Edge", $time);
	else
		$display ("Time = %0t: Falling Edge", $time);

end

initial begin

	$dumpfile ("waveform.vcd");
	$dumpvars (0,siso_register_tb);

	#5;
	rst = 1;
	serial_in = 0;

	#5;
	rst = 0;

	for (i = 0; i < 8; i = i +1) begin

		serial_in = i;
		#10;

	end

	$finish;

end

endmodule
