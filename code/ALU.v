module ALU(
    data1_i,
    data2_i,
    ALUCtrl_i,
    data_o,
    Zero_o
);

// ports
input       [31:0]    data1_i, data2_i;
input       [2:0]     ALUCtrl_i;
output reg  [31:0]  	 data_o, Zero_o;

wire        [31:0]    add_o, sub_o, mul_o;
wire        [31:0]    overflow;
wire                  carry1_o, carry2_o;

Adder32 add(data1_i, data2_i, 1'b0, add_o, carry1_o);
Sub32   sub(data1_i, data2_i, 1'b0, sub_o, carry2_o);
Mult32  mul(data1_i, data2_i, mul_o, overflow);

always @(*) begin
  case(ALUCtrl_i)
    3'b010: begin   //  add
      data_o  = add_o;
      Zero_o  = carry1_o;
    end
    3'b110: begin   //  sub
      data_o = sub_o;
      Zero_o = carry2_o;
    end
    3'b000: begin   //  and
      data_o = data1_i & data2_i;
    end
    3'b001: begin   //  or
      data_o = data1_i | data2_i;
    end
    3'b011: begin   //  mul
      data_o = mul_o;
      Zero_o = overflow;
    end
    3'b111: begin   //  set-on-less-than
      data_o = 32'hffffffff;
    end
  	endcase
end


endmodule
