module dff_tb;

reg clk;
reg reset;
reg d;
wire q;

dff dut (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    reset = 1;
    d = 0;

    #12;

    reset = 0;

    d = 1;
    #10;

    d = 0;
    #10;

    d = 1;
    #10;

    reset = 1;
    d = 0;

    #12;
    reset = 0;

    d = 1;
    #10;

    d = 0;
    #10;

    d = 1;
    #10;

    $finish;

end

initial begin

    $dumpfile("waveform.vcd");
    $dumpvars(0, dff_tb);

end

endmodule
