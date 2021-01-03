// Code your testbench here
// or browse Examples
module Test();
  
  reg[7:0] A;
  reg[7:0] B;
  reg carryIn;
  wire carryOut;
  wire[7:0] Sum;
  wire PG;
  wire GG;
  
  CLA8Bit CLA8BitOUT(
    .A(A),
    .B(B),
    .carryIn(carryIn),
    .carryOut(carryOut),
    .Sum(Sum)
  );
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      assign carryIn=0;
      assign A=8'b00000001;
      assign B=8'b00000001;
      #5 $display("Result = %b",Sum);
      #10
      assign A=8'b00011011;
      assign B=8'b11010111;
      #5 $display("Result = %b",Sum);
      #20
      assign carryIn=1'b1;
      assign A=8'b01111011;
      assign B=8'b01010011;
      #5 $display("Result = %b",Sum);
      #20
      $finish;
    end
  
endmodule
      