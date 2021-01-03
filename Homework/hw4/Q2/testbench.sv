// Code your testbench here
// or browse Examples
module test();
  wire[31:0] c;
  reg clk;
  equation e1(c,clk);
  
  initial
    begin
      clk=0;
      forever #2 clk=~clk;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(2);
      #100 $finish;
    end
endmodule