module Mult32
(
    data1_in, 
    data2_in,
    data_o,
    overflow
);

//  ports
input signed	       [31:0]  data1_in, data2_in;
output reg signed   [31:0]  data_o, overflow;

reg signed	         [63:0]  result;

always @(*) begin
  result    = data1_in * data2_in;
  overflow  = result[63:32];
  data_o    = result[31:0];
end

endmodule

