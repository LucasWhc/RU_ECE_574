// Code your testbench here
// or browse Examples
module test();
  reg clk,rst,x;
  wire z;
  fsm_three fsm(clk,rst,x,z);
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  
  initial
    begin
      clk=0;
      forever #2 clk=~clk;
    end
  
  initial
    begin
      rst=1;
      $display("input = ",x," output = ",z);
      #4 rst=0;x=0;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
      #1 x=0;
      #3 $display("input = ",x," output = ",z);
      #1 x=0;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
      #1 x=0;
      #3 $display("input = ",x," output = ",z);
      #1 x=0;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
      #1 x=0;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
      #1 x=0;
      #3 $display("input = ",x," output = ",z);
      #1 x=0;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
      #1 x=0;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
      #1 x=0;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
      #1 x=0;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
      #1 x=0;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
      #1 x=0;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
      #1 x=1;
      #3 $display("input = ",x," output = ",z);
    end
  
endmodule