module rom_tb();

reg [2:0]address;
wire [3:0]data;

rom dut(.*);

initial begin

$dumpfile ("waveform.vcd");
$dumpvars (0,rom_tb);

$monitor (" Time = %0t | address = %b | data = %b", $time, address, data);

address = 4; #10;
address = 2; #10;
address = 5; #10;
address = 0; #10;
address = 7; #10;
address = 3; #20;

$finish;

end

endmodule
