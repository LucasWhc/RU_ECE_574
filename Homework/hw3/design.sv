// Code your design here

// 4-Bit CLA Code
module CLA4Bit(A,B,carryIn,carryOut,PG,GG,Sum);
  input[3:0] A,B;
  input carryIn;
  output carryOut;
  output PG;
  output GG;
  output[3:0] Sum;
  wire[3:0] G,P,C;
  assign G=A&B;
  assign P=A^B;
  assign Sum=P^C;
  assign C[0]=carryIn;
  assign C[1]=G[0]|(P[0]&C[0]);
  assign C[2]=G[1]|(P[1]&G[0])|(P[1]&P[0]&C[0]);
  assign C[3]=G[2]|(P[2]&G[1])|(P[2]&P[1]&G[0])|(P[2]&P[1]&P[0]&C[0]);
  assign PG=P[3]&P[2]&P[1]&P[0];
  assign GG=G[3]|(P[3]&G[2])|(P[3]&P[2]&G[1])|(P[3]&P[2]&P[1]&G[0]);
endmodule

// 8-Bit CLA Code
module CLA8Bit(A,B,carryIn,carryOut,Sum);
  input[7:0] A,B;
  input carryIn;
  output carryOut;
  output[7:0] Sum;
  wire P3,P7;
  wire g3,g7;
  wire C3,C7;
  CLA4Bit block1(A[3:0],B[3:0],carryIn,C3,P3,g3,Sum[3:0]);
  CLA4Bit block2(A[7:4],B[7:4],C3,C7,P7,g7,Sum[7:4]);
endmodule