module adder_tb;

reg [3:0] a;
reg [3:0] b;
wire [4:0] sum;

integer i;

adder dut (
    .a(a),
    .b(b),
    .sum(sum)
);

initial begin

	$dumpfile("waveform.vcd");
	$dumpvars(0,adder_tb);
	
	//random stimulus generation.
	
    for (i = 0; i < 10; i = i + 1) begin

        a = $random;
        b = $random;

        #10;

        $display("a = %d, b = %d, sum = %d",
                  a, b, sum);

    end

	//manual stimulus generation

	a = 4'd5; b = 4'd8; #10;
	a = 4'd2; b = 4'd7; #10;
	a = 4'd7; b = 4'd1; #10;
	a = 4'd0; b = 4'd10; #10;
	a = 4'd12; b = 4'd14; #10;

    $finish;

end

endmodule
