module bcd_adder_tb();

reg [3:0] a, b;
reg cin;
wire [3:0] sum;
wire     cout;

bcd_adder dut(
.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

initial begin

$dumpfile("waveform.vcd");
$dumpvars(0,bcd_adder_tb);

    a = 4'b0000; b = 4'b0000; cin = 1'b0; #10;
    a = 4'b0001; b = 4'b0010; cin = 1'b0; #10;
    a = 4'b0101; b = 4'b0011; cin = 1'b0; #10;
    a = 4'b0101; b = 4'b0101; cin = 1'b0; #10;
    a = 4'b0111; b = 4'b0110; cin = 1'b1; #10;
    a = 4'b1000; b = 4'b0101; cin = 1'b0; #10;
    a = 4'b1001; b = 4'b1001; cin = 1'b1; #10;

$finish;

end

endmodule
