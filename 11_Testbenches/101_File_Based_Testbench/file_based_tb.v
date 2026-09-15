module adder_tb;

reg [3:0] a;
reg [3:0] b;

wire [4:0] sum;

reg [4:0] expected;

integer file;
integer status;

adder dut (
    .a(a),
    .b(b),
    .sum(sum)
);

initial begin

    file = $fopen("input.txt", "r"); // Opens the file (r-read).

    // Read until end of file
    while (!$feof(file)) begin

        // Read a and b from file
        status = $fscanf(file, "%d %d\n", a, b);

        expected = a + b;

        if (sum == expected)
            $display("PASS: a=%d b=%d sum=%d",
                      a, b, sum);
        else
            $display("FAIL: a=%d b=%d expected=%d actual=%d",
                      a, b, expected, sum);

	#10;

    end

    // Close file
    $fclose(file);

    $finish;

end

initial begin

$dumpfile("waveform.vcd");
$dumpvars(0,adder_tb);

end

endmodule
