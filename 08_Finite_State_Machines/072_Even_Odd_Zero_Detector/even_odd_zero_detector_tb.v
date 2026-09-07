module even_odd_zero_detector_tb();

reg clk, rst, x;
wire y;

even_odd_zero_detector dut (.*);

initial clk = 0;
always #5 clk = ~clk;

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,even_odd_zero_detector_tb);

$monitor ("Time = %0t | rst = %b | x = %b | y = %b|", $time , rst, x, y);

rst = 1;x = 0; #10;
rst = 0;x = 1; #10;
        x = 0; #10;
        x = 1; #10;
	x = 0; #10;
	x = 1; #10;
        x = 0; #10;
        x = 0; #10;
        x = 1; #10;
	x = 0; #30;

$finish;

end

endmodule

/*


    output waveform :
   ->	 if the y is 1 that indicates odd number, 
   ->	 if y is high for 4 times through out the program, that means 
   	          1,3,5,7    the zeroes are present 7 times in the input signal,
   ->    0 to 1 (low to high) matters, no matter how many clock cycle the y is high .

*/
