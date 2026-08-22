module comparator_4bit(
input [3:0] a,b,
output reg a_greaterthan_b, a_equals_b, a_lessthan_b);

always @(*) begin

    a_greaterthan_b = 0;
    a_equals_b      = 0;
    a_lessthan_b    = 0;

    if (a > b)
        a_greaterthan_b = 1;

    else if (a == b)
        a_equals_b = 1;

    else
        a_lessthan_b = 1;

end

endmodule
