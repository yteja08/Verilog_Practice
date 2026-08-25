module sr_latch(
input s,r,
output reg q);

always@(*) begin

case({s,r})
2'b10:q=1'b1;
2'b01:q=1'b0;
2'b00:q=q;
default:q=1'bx;
endcase

end

endmodule

