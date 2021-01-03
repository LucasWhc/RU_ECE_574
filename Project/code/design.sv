// Code your design here
module multiply(product,a,b);
  input [31:0] a, b;
  output reg [63:0] product;
  reg [31:0] abs_a = 0;
  reg [31:0] abs_b = 0;
  integer i;
  always @(a or b)
    begin
      abs_a = 0;
      abs_b = 0;
      product = 0;
      if (a[31]|b[31] == 0)
        begin
          for(i=0;i<32;i=i+1)
            if (a[i] == 1'b1) product = product + (b<<i);
        end
      if (a[31]|b[31] == 1)
        begin
          abs_a[30:0] = a[30:0];
          abs_b[30:0] = b[30:0];
          product = 0;
          for(i=0; i<32; i=i+1)
            begin
              if (abs_a[i] == 1'b1)
                begin
                  product = product + (abs_b<<i);
                end
            end
          product = -product;
        end
    end
endmodule