module task_tb();

reg a,b;
wire y;

task_and dut (.*);

task values(input x,y);

    begin
        a = x;
        b = y;
        #10;
    end
endtask

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,task_tb);

$monitor (" Time = %0t | a= %b | b = %b | y=%b", $time, a,b,y);

values(0,0);
values(0,1);
values(1,0);
values(1,1);

$finish;
end
endmodule


