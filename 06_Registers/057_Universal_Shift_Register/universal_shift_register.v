module universal_shift_register (
    input clk, rst,serial_in,
    input [1:0] sel,
    input [3:0] parallel_in,
    output reg [3:0] q
);

always @(posedge clk) begin

    if (rst)
        q <= 4'b0000;

    else begin
        case (sel)

            2'b00: q <= q;                        

            2'b01: q <= {serial_in, q[3:1]};

            2'b10: q <= {q[2:0], serial_in}; 

            2'b11: q <= parallel_in;            

        endcase
    end

end

endmodule
