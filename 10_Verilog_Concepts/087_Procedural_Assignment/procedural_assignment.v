module procedural_assignment (

input  a, b,
output y

);

always @(*) begin

    y = a + b;   

end

endmodule
