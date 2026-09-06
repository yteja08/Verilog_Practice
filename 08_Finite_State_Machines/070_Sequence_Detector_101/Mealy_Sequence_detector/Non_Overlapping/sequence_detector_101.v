module sequence_detector_101 (
    input  clk, rst, x,
    output reg y
);

parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10;

reg [1:0] state;
reg [1:0] next_state;


always @(posedge clk or posedge rst) begin

    if (rst)
        state <= S0;
    else
        state <= next_state;

end


always @(*) begin

    case (state)

        S0: begin
            if (x)
                next_state = S1;
            else
                next_state = S0;
        end


        S1: begin
            if (x)
                next_state = S1;
            else
                next_state = S2;
        end


        S2: begin
            if (x)
                next_state = S0;
            else
                next_state = S0;
        end


        default:
            next_state = S0;

    endcase

end


always @(*) begin

    case (state)

        S0: begin
            y = 1'b0;
        end

        S1: begin
            y = 1'b0;
        end

        S2: begin
            if (x)
                y = 1'b1;
            else
                y = 1'b0;
        end

        default:
            y = 1'b0;

    endcase

end

endmodule
