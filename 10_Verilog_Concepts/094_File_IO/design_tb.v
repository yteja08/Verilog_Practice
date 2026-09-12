module adder_tb;

reg  [3:0] a;
reg  [3:0] b;
wire [4:0] sum;

integer file;

adder dut (.*);

initial begin

    file = $fopen("output.txt", "w");

    // Apply inputs
    a = 4'd5;
    b = 4'd3;
    #10;

    // Write result into file
    $fdisplay(file, "a = %d, b = %d, sum = %d", a, b, sum);

    a = 4'd7;
    b = 4'd2;
    #10;

    $fdisplay(file, "a = %d, b = %d, sum = %d", a, b, sum);

    a = 4'd15;
    b = 4'd1;
    #10;

    $fdisplay(file, "a = %d, b = %d, sum = %d", a, b, sum);

    // Close file
    $fclose(file);

    $finish;

end

endmodule
