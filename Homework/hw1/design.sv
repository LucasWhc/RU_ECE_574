// Code your design here
module ALU(
  input [31:0] X,Y,
  input [2:0] ALUop,
  output reg [31:0] Z
  );
  always@(X,Y,ALUop)
    begin
      case(ALUop)
        3'b000:Z=X&Y;
        3'b001:Z=X|Y;
        3'b010:Z=X+Y;
        3'b110:Z=X-Y;
        3'b111:begin
          if(X<Y)
            Z=32'hffffffff;
          else
            Z=32'h00000000;
        end
        default:Z=Z;
      endcase
    end
endmodule