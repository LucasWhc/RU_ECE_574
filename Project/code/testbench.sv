// Code your testbench here
// or browse Examples
module multiply_tb();
  reg [31:0] a, b;
  wire [63:0] product;
  multiply m(product, a, b);
  initial
    begin
      $dumpfile("d.vcd");
      $dumpvars(1, m);
      a = 0;
      b = 0;
      #10 a = 32'b 0000_0000_0000_0000_0000_0000_0000_1111;
      b = 32'b 0000_0000_0000_0000_0000_0000_0000_0100;
      #10 a = 32'b 1111_1111_1111_1111_1111_1111_1111_1111;
      b = 32'b 0000_0000_0000_0000_0000_0000_0000_0001;
      #10 a = 32'b 1111_1111_1111_1111_1111_1111_1111_1111;
      b = 32'b 1111_1111_1111_1111_1111_1111_1111_1111;
      #10 $finish;
    end
endmodule