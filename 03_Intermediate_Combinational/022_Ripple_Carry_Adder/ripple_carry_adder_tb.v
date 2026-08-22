module ripple_carry_adder_tb();

reg [3:0] a, b;
reg c;
wire [3:0] sum;
wire     carry;

ripple_carry_adder dut(
.a(a), .b(b), .c(c), .sum(sum), .carry(carry));

initial begin

$dumpfile("waveform.vcd");
$dumpvars(0,ripple_carry_adder_tb);

    a = 4'b0000; b = 4'b0000; c = 1'b0; #10;
    a = 4'b0001; b = 4'b0010; c = 1'b0; #10;
    a = 4'b0101; b = 4'b0011; c = 1'b0; #10;
    a = 4'b1111; b = 4'b0001; c = 1'b0; #10;
    a = 4'b1010; b = 4'b0101; c = 1'b1; #10;
    a = 4'b1111; b = 4'b1111; c = 1'b0; #10;
    a = 4'b1111; b = 4'b1111; c = 1'b1; #10;

$finish;

end

endmodule
