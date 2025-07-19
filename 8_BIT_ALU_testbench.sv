module alu_tb;
  reg [7:0]x ,y;
  reg s2,s1,s0;
  wire [7:0]z;
  
  alu_8bit uut(
    .x(x),
    .y(y),
    .s2(s2),
    .s1(s1),
    .s0(s0),
    .z(z));
  
initial begin
  x = 8'b10101010;
  y = 8'b11001100;
  {s2,s1,s0} = 3'b000;
  #10;
  $display(" AND OPERATION = %b", z);
  {s2,s1,s0} = 3'b001;
  #10;
  $display("OR  operation = %b",z);
  {s2,s1,s0} = 3'b010;
  #10;
  $display("right shifted = %b ",z);
  {s2,s1,s0} = 3'b011;
  #10;
  $display("left shifted = %b",z);
  {s2,s1,s0} = 3'b100;
  #10;
  $display("ADDITION , sum = %b",z);
  {s2,s1,s0} = 3'b101;
  #10;
  $display("SUBTRACTION , diff = %b",z);
  {s2,s1,s0} = 3'b110;
  #10;
  begin
  if(z == 8'b00000001) begin
    $display("x > y");
  end
  else if(z == 8'b00000010) begin
    $display("x < y");
  end
  else
  $display("x = y");
  end
  #10;  
  $finish;
  
end
endmodule
  