module adder_tb;

reg  [3:0] a;
reg  [3:0] b;

wire [4:0] sum;

reg [4:0] expected;

integer i;

// DUT
adder dut (
    .a(a),
    .b(b),
    .sum(sum)
);

initial begin

   for (i = 0; i < 20; i = i + 1) begin

        a = $random;
        b = $random;

    expected = a + b;

    if (sum == expected)
        $display("PASS: a=%d b=%d sum=%d", a, b, sum);
    else
        $display("FAIL: a=%d b=%d expected=%d actual=%d",
                  a, b, expected, sum);

    #10;

    end


    
    $finish;

end

initial begin 

   $dumpfile("waveform.vcd");
   $dumpvars(0,adder_tb);

end

endmodule
