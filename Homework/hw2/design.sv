// Code your design here
module fsm_three(clk,rst,x,z);
  input clk,rst,x;
  output reg z;
  
  parameter S0=2'b0,S1=2'd1,S2=2'd2,S3=2'd3;
  
  reg [1:0] N_S,C_S;
  
  //Next State Logic
  always @(x,C_S)
    begin
      case(C_S)
        2'b0:if(x)
          N_S=S1;
        else
          N_S=S0;
        2'b01:if(x)
          N_S=S2;
        else
          N_S=S1;
        2'b10:if(x)
          N_S=S3;
        else
          N_S=S2;
        2'b11:if(x)
          N_S=S1;
        else
          N_S=S3;
        default:N_S=C_S;
      endcase
    end

  //Current State Logic
  always @(posedge clk)
    if(rst)
      C_S<=S0;
  else
    C_S<=N_S;
  
  //Output Logic
  always @(posedge clk)
    if(rst)
      z<=1'b0;
  else
    case(N_S)
      2'b00:z<=1'b1;
      2'b01:z<=1'b0;
      2'b10:z<=1'b0;
      2'b11:z<=1'b1;
    endcase
 
endmodule