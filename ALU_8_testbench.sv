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
  $display(" AND OPERATION");
  #10;
  {s2,s1,s0} = 3'b001;
  $display("OR  operation = %b",z);
  #10;
  {s2,s1,s0} = 3'b010;
  $display("NOT operation = %b ",z);
  #10;
  {s2,s1,s0} = 3'b011;
  $display("XOR operation = %b",z);
  #10;
  {s2,s1,s0} = 3'b100;
  $display("ADDITION , sum = %b",z);
  #10;
  {s2,s1,s0} = 3'b101;
  $display("SUBTRACTION , diff = %b",z);
  #10;
  
  $finish;
  
end
endmodule
  
  
  

  
  