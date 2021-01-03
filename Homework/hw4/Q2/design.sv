// Code your design here
module equation(c,clk);
  reg[15:0] b=2;
  input clk;
  output reg[31:0] c=0;
  reg[31:0] temp=0;
  reg[3:0] i=0;
  reg[3:0] j;
  reg[15:0] a[8];
  initial
    begin
      for(j=0;j<8;j++)
        a[j]=j;
    end
  always@(posedge clk)
    begin
      if(i<8)
        begin
          temp=a[i]*b+temp;
          i=i+1;
        end
      else
        begin
          c=temp+c;
          $display("c=%d",c);
          i=0;
        end
    end
endmodule
  