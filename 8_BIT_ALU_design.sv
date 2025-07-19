module alu_8bit (
  input [7:0] x, y,
  input s2, s1, s0,
  output reg [7:0] z,
  integer i
);

  always @(*) begin
    case ({s2, s1, s0})
      3'b000: z = x & y;
      3'b001: z = x | y;
      3'b010: begin
        z=0;
        for(i=0;i<7;i=i+1)begin
          z[i-1]=x[i];
        end
      end
      3'b011: begin
        z = 0;
        for (i = 0; i < 7; i = i + 1) begin
          z[i+1] = x[i]; // Left shift by 1
        end
      end
      3'b100: z = x + y;
      3'b101: z = x - y;
      3'b110: begin
        if (x > y)begin
          z = 8'b00000001;
         // $display("x > y");
        end
          else if (x < y)begin
          z = 8'b00000010;
            //$display("x<y");
          end
        else
          z = 8'b00000000;
      end
      default: z = 8'b00000000;
    endcase
  end
endmodule