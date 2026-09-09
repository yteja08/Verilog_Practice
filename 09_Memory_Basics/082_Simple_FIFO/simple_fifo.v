module simple_fifo #(parameter depth = 16, width = 8)(
  input  clk, reset, we, re,
  input  [width-1:0] data,
  output reg [width-1:0] data_out,
  output full, empty
);


  reg [$clog2(depth):0] r_ptr, w_ptr;

  reg [width-1:0] mem [depth-1:0];

  always @(posedge clk) begin
    if (reset) begin
      data_out <= 0;
      r_ptr <= 0;
      w_ptr <= 0;
    end
    else begin
      if (we && !full) begin
  
        mem[w_ptr[$clog2(depth)-1:0]] <= data;
        w_ptr <= w_ptr + 1'b1;
      end

      if (re && !empty) begin

        data_out <= mem[r_ptr[$clog2(depth)-1:0]];
        r_ptr <= r_ptr + 1'b1;
      end
    end
  end

  wire wrap = (w_ptr[$clog2(depth)]) ^ (r_ptr[$clog2(depth)]);

  assign full  = wrap & (w_ptr[$clog2(depth)-1:0] == r_ptr[$clog2(depth)-1:0]);

  assign empty = (w_ptr == r_ptr);

endmodule
