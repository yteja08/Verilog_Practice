`timescale 1ns/1ps

module asynchronous_fifo_tb;

    parameter DEPTH = 8;
    parameter DATA_WIDTH = 8;

    //==================================================
    // TESTBENCH SIGNALS
    //==================================================

    reg                     wclk;
    reg                     wrst_n;

    reg                     rclk;
    reg                     rrst_n;

    reg                     w_en;
    reg                     r_en;

    reg [DATA_WIDTH-1:0]    data_in;

    wire [DATA_WIDTH-1:0]   data_out;

    wire full;
    wire empty;


    //==================================================
    // DUT
    //==================================================

    asynchronous_fifo #(
        .DEPTH(DEPTH),
        .DATA_WIDTH(DATA_WIDTH)
    ) dut (

        .wclk     (wclk),
        .wrst_n   (wrst_n),

        .rclk     (rclk),
        .rrst_n   (rrst_n),

        .w_en     (w_en),
        .r_en     (r_en),

        .data_in  (data_in),
        .data_out (data_out),

        .full     (full),
        .empty    (empty)
    );


    //==================================================
    // WRITE CLOCK
    // 50 MHz
    // Period = 20 ns
    //==================================================

    always #10 wclk = ~wclk;


    //==================================================
    // READ CLOCK
    // ~14.3 MHz
    // Period = 70 ns
    //==================================================

    always #35 rclk = ~rclk;


    //==================================================
    // TEST
    //==================================================

    initial begin

        //================================================
        // INITIAL VALUES
        //================================================

        wclk    = 0;
        rclk    = 0;

        wrst_n  = 0;
        rrst_n  = 0;

        w_en    = 0;
        r_en    = 0;

        data_in = 8'h00;


        //================================================
        // RESET
        //================================================

        $display("");
        $display("======================================");
        $display("          FIFO RESET");
        $display("======================================");

        #100;

        wrst_n = 1;
        rrst_n = 1;

        $display("RESET RELEASED");


        //================================================
        // WRITE 4 VALUES
        //================================================

        $display("");
        $display("======================================");
        $display("          WRITE 4 VALUES");
        $display("======================================");

        // Change inputs at NEGEDGE
        // DUT samples them at POSEDGE

        @(negedge wclk);
        w_en    = 1;
        data_in = 8'hA1;

        @(posedge wclk);

        @(negedge wclk);
        data_in = 8'hB2;

        @(posedge wclk);

        @(negedge wclk);
        data_in = 8'hC3;

        @(posedge wclk);

        @(negedge wclk);
        data_in = 8'hD4;

        @(posedge wclk);

        // Disable write safely
        @(negedge wclk);
        w_en = 0;


        //================================================
        // WAIT FOR READ DOMAIN
        //================================================

        #200;


        //================================================
        // READ 4 VALUES
        //================================================

        $display("");
        $display("======================================");
        $display("          READ 4 VALUES");
        $display("======================================");

        // Enable read at NEGEDGE

        @(negedge rclk);
        r_en = 1;

        // Four positive edges = four reads
        repeat (4)
            @(posedge rclk);

        // Disable read at NEGEDGE
        @(negedge rclk);
        r_en = 0;


        //================================================
        // WAIT
        //================================================

        #100;


        //================================================
        // WRITE 8 VALUES
        // FIFO SHOULD BECOME FULL
        //================================================

        $display("");
        $display("======================================");
        $display("       WRITE 8 VALUES");
        $display("       FIFO SHOULD BECOME FULL");
        $display("======================================");

        @(negedge wclk);
        w_en    = 1;
        data_in = 8'hA0;

        @(posedge wclk);

        @(negedge wclk);
        data_in = 8'hA1;

        @(posedge wclk);

        @(negedge wclk);
        data_in = 8'hA2;

        @(posedge wclk);

        @(negedge wclk);
        data_in = 8'hA3;

        @(posedge wclk);

        @(negedge wclk);
        data_in = 8'hA4;

        @(posedge wclk);

        @(negedge wclk);
        data_in = 8'hA5;

        @(posedge wclk);

        @(negedge wclk);
        data_in = 8'hA6;

        @(posedge wclk);

        @(negedge wclk);
        data_in = 8'hA7;

        @(posedge wclk);

        // Disable write safely
        @(negedge wclk);
        w_en = 0;


        //================================================
        // WAIT FOR FULL
        //================================================

        #100;

        if (full == 1'b1)
            $display("FULL TEST PASS : FIFO is FULL");
        else
            $display("FULL TEST FAIL : FIFO is NOT FULL");


        //================================================
        // TRY TO WRITE WHEN FULL
        //================================================

        $display("");
        $display("======================================");
        $display("       TRY WRITE WHEN FULL");
        $display("======================================");

        @(negedge wclk);

        w_en    = 1;
        data_in = 8'hFF;

        @(posedge wclk);

        @(negedge wclk);
        w_en = 0;

        $display("Attempted write of FF while FULL");


        //================================================
        // WAIT
        //================================================

        #100;


        //================================================
        // READ 8 VALUES
        // FIFO SHOULD BECOME EMPTY
        //================================================

        $display("");
        $display("======================================");
        $display("          READ 8 VALUES");
        $display("       FIFO SHOULD BECOME EMPTY");
        $display("======================================");

        @(negedge rclk);
        r_en = 1;

        // Eight positive edges = eight reads
        repeat (8)
            @(posedge rclk);

        // Disable read safely
        @(negedge rclk);
        r_en = 0;


        //================================================
        // WAIT FOR EMPTY
        //================================================

        #200;

        if (empty == 1'b1)
            $display("EMPTY TEST PASS : FIFO is EMPTY");
        else
            $display("EMPTY TEST FAIL : FIFO is NOT EMPTY");


        //================================================
        // WRITE AGAIN
        // TEST WRAP-AROUND / FIFO REUSE
        //================================================

        $display("");
        $display("======================================");
        $display("       WRITE AFTER EMPTY");
        $display("       TEST WRAP-AROUND");
        $display("======================================");

        @(negedge wclk);
        w_en    = 1;
        data_in = 8'hB0;

        @(posedge wclk);

        @(negedge wclk);
        data_in = 8'hB1;

        @(posedge wclk);

        @(negedge wclk);
        data_in = 8'hB2;

        @(posedge wclk);

        @(negedge wclk);
        w_en = 0;


        //================================================
        // WAIT FOR READ SIDE
        //================================================

        #200;


        //================================================
        // READ 3 VALUES
        //================================================

        $display("");
        $display("======================================");
        $display("          READ 3 VALUES");
        $display("======================================");

        @(negedge rclk);
        r_en = 1;

        repeat (3)
            @(posedge rclk);

        @(negedge rclk);
        r_en = 0;


        //================================================
        // WAIT
        //================================================

        #200;


        //================================================
        // FINAL STATUS
        //================================================

        $display("");
        $display("======================================");
        $display("       FINAL FIFO STATUS");
        $display("======================================");

        $display("FULL  = %b", full);
        $display("EMPTY = %b", empty);

        $display("");
        $display("======================================");
        $display("       SIMULATION FINISHED");
        $display("======================================");

        $finish;

    end


    //==================================================
    // MONITOR
    //==================================================

    initial begin

        $monitor(
            "TIME=%0t | W_EN=%b DATA_IN=%h | R_EN=%b DATA_OUT=%h | FULL=%b EMPTY=%b",
            $time,
            w_en,
            data_in,
            r_en,
            data_out,
            full,
            empty
        );

    end


    //==================================================
    // WAVEFORM
    //==================================================

    initial begin

        $dumpfile("waveform.vcd");

        $dumpvars(0, asynchronous_fifo_tb);

    end

endmodule
