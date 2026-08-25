module d_latch_tb();

reg en, d;
wire q;

d_latch dut(.*);

initial begin

    $dumpfile("waveform.vcd");
    $dumpvars(0, d_latch_tb);

    en = 0;
    d  = 0;
    #10;

    en = 1;
    d  = 0;
    #10;

    en = 1;
    d  = 1;
    #10;

    en = 0;
    d  = 0;
    #10;

    en = 1;
    d  = 1;
    #10;

    en = 0;
    d  = 0;
    #10;

    en = 1;
    d  = 0;
    #10;

    en = 1;
    d  = 1;
    #10;

    en = 1;
    d  = 0;
    #10;

    en = 1;
    d  = 1;
    #10;

    $finish;

end

endmodule
