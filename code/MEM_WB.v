module MEM_WB(input clk,
              input reset,
              input [1:0] WB_in,
			        input [31:0] ReadData_in,
			        input [31:0] ALU_in,
			        input [4:0] instruction_mux_in,
			        output reg RegWrite,
			        output reg MemtoReg,
			        output reg[31:0] ReadData_out,
			        output reg[31:0] ALU_out,
			        output reg[4:0] instruction_mux_out);
	always@(posedge reset)begin
		RegWrite = 0;
		MemtoReg = 0;
		instruction_mux_out = 0;
		ALU_out = 0;
		ReadData_out = 0;
	end
	
	always@(posedge clk)begin
			RegWrite <= WB_in[0];
			MemtoReg <= WB_in[1];
			ReadData_out <= ReadData_in;
			ALU_out <= ALU_in;
			instruction_mux_out <= instruction_mux_in;
	end
endmodule