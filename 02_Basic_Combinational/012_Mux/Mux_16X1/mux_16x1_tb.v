module mux_16x1_tb();
reg [15:0]I;
reg [3:0]s;
reg en;
wire y;
integer i;

mux_16x1 uut(.I(I),.s(s),.en(en),.y(y));

initial begin 
	$monitor("Time=%0t | I=%b s=%b en=%b y=%b", $time,I,s,en,y);
	$dumpfile("mux16x1.vcd");
	$dumpvars(0, mux_16x1_tb);

	I=16'b0101101000110110;

	en=0;s=0;#10
	en=1;
	for (i=0; i<16; i++) begin
		s=i;#10;
	end
	$finish;
end
endmodule



