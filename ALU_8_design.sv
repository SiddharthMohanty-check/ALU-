module alu_8bit (
  input [7:0] x, y,
  input s2, s1, s0,
  output reg [7:0] z);

  always @(*) begin
    case ({s2, s1, s0})
      3'b000: z = x & y;
      3'b001: z = x | y;
      3'b010: z = ~x;
      3'b011: z = x ^ y;
      3'b100: z = x+y;
      3'b101: z = x-y;
      default: z = 8'b00000000;
    endcase
  end
endmodule