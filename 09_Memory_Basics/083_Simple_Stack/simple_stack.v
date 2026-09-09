module simple_stack #(parameter depth = 8, width = 8)(
  input  clk, reset, push, pop,
  input  [width-1:0] data_in,
  output reg [width-1:0] data_out
);


  reg [($clog2(depth))-1:0] s_ptr;

  reg [width-1:0] mem [depth-1:0];

  always @(posedge clk) begin
    if (reset) begin
      data_out <= 0;
      s_ptr <= 0;
    end
    else begin
      if (push) begin
  
        mem[s_ptr] <= data_in;
        s_ptr <= s_ptr + 1'b1;
      end

      if (pop) begin

        data_out <= mem[s_ptr-1];
        s_ptr <= s_ptr - 1'b1;
      end
    end
  end
endmodule
