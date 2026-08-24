module carry_lookahead_adder(
    input  [3:0] a, b,
    input        cin,
    output [3:0] sum,
    output       cout
);

    wire [3:0] p, g;
    wire [4:0] c;

    assign c[0] = cin;
    assign p = a ^ b;
    assign g = a & b;

    assign c[1] = g[0] | (p[0] & c[0]);

    assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c[0]);

    assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c[0]);

    assign c[4] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c[0]);

    assign sum[0] = p[0] ^ c[0];
    assign sum[1] = p[1] ^ c[1];
    assign sum[2] = p[2] ^ c[2];
    assign sum[3] = p[3] ^ c[3];

    assign cout = c[4];

endmodule
