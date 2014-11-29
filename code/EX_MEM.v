module EX_MEM(input clk,
              input reset,
              input [1:0] WB_in, 
              input [2:0] M_in, 
              input [31:0] ALU_in, 
              input [4:0] instruction_mux_in, 
              input [31:0] RDdata2_in, 
              output reg MemWrite,
			        output reg MemRead,
              output reg[1:0] WB_out, 
              output reg[31:0] ALU_out, 
              output reg[4:0] instruction_mux_out, 
              output reg[31:0] RDdata2_out);
	always@(posedge reset)begin
		MemWrite = 0;
		MemRead = 0;
		WB_out = 0;
		ALU_out = 0;
		RDdata2_out = 0;
		instruction_mux_out = 0;
	end
	
	always@(posedge clk)begin
		if(reset == 0)begin
			WB_out <= WB_in;
			MemWrite <= M_in[0];
			MemRead <= M_in[1];
			ALU_out <= ALU_in;
			RDdata2_out <= RDdata2_in;
			instruction_mux_out <= instruction_mux_in;
		end
	end
endmodule