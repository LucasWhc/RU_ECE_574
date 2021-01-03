// Code your testbench here
// or browse Examples
module test();
  reg signed [31:0] X,Y;
  reg [2:0] ALUop;
  wire signed [31:0] Z;
  ALU a1(X,Y,ALUop,Z);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      X=25;Y=10;ALUop=3'b000;
      #10 $display("input are %d and %d, ALUop is %b, output is %d",X,Y,ALUop,Z);
      #10 ALUop=3'b001;
      #10 $display("input are %d and %d, ALUop is %b, output is %d",X,Y,ALUop,Z);
      #10 ALUop=3'b010;
      #10 $display("input are %d and %d, ALUop is %b, output is %d",X,Y,ALUop,Z);
      #10 ALUop=3'b110;
      #10 $display("input are %d and %d, ALUop is %b, output is %d",X,Y,ALUop,Z);
      #10 ALUop=3'b111;
      #10 $display("input are %d and %d, ALUop is %b, output is %d",X,Y,ALUop,Z);
      #10 X=-30;Y=20;ALUop=3'b000;
      #10 $display("input are %d and %d, ALUop is %b, output is %d",X,Y,ALUop,Z);
      #10 ALUop=3'b001;
      #10 $display("input are %d and %d, ALUop is %b, output is %d",X,Y,ALUop,Z);
      #10 ALUop=3'b010;
      #10 $display("input are %d and %d, ALUop is %b, output is %d",X,Y,ALUop,Z);
      #10 ALUop=3'b110;
      #10 $display("input are %d and %d, ALUop is %b, output is %d",X,Y,ALUop,Z);
      #10 ALUop=3'b111;
      #10 $display("input are %d and %d, ALUop is %b, output is %d",X,Y,ALUop,Z);
    end
endmodule