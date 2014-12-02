module ALU_Control
(
    funct_i,
    ALUOp_i,
    ALUCtrl_o
);

// ports
input       [5:0]   funct_i;
input       [1:0]   ALUOp_i;
output reg  [2:0]   ALUCtrl_o;

always @(*) begin
  case(ALUOp_i)
    2'b11:  begin                                  // R-type
              case(funct_i)
                6'b100000:   ALUCtrl_o = 3'b010;   //  add
                6'b100010:   ALUCtrl_o = 3'b110;   //  sub
        	       6'b100100:   ALUCtrl_o = 3'b000;   //  and
                6'b100101:   ALUCtrl_o = 3'b001;   //  or
                6'b011000:   ALUCtrl_o = 3'b011;   //  mul
                6'b101010:   ALUCtrl_o = 3'b111;   //  set-on-less-than
              endcase
            end
    2'b00:  begin    	                             //  addi
              ALUCtrl_o = 3'b010;                  //  add
    end
  endcase
end

endmodule
