module comparator_1bit(
input a,b,
output reg a_greaterthan_b, a_equals_b, a_lessthan_b);

always@(*) begin

case({a,b})

    2'b00: begin a_greaterthan_b=0; a_equals_b=1; a_lessthan_b=0;
end
    2'b01: begin a_greaterthan_b=0; a_equals_b=0; a_lessthan_b=1;
end
    2'b10:  begin a_greaterthan_b=1; a_equals_b=0; a_lessthan_b=0;
end
    2'b11: begin a_greaterthan_b=0; a_equals_b=1; a_lessthan_b=0;
end
    default: begin a_greaterthan_b=0; a_equals_b=0; a_lessthan_b=0;
end

 endcase
 end
endmodule
