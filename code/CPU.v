module CPU(
	clk_i,
	start_i
);

input               clk_i;
input               start_i;
wire [31:0] inst_addr, inst; 

Control Control(
	.Inst_i(inst[31:26]),
	.Branch_o(),
	.Jump_o(),
	.Control_o(mux8.data_i)
);

Eq Eq(
	.data1_i(),
	.data2_i(),
	.branch_o()
);

FW FW(
  .EX_MEM_RegWrite(),
  .MEM_WB_RegWrite(),
  .EX_MEM_RegisterRd(),
  .MEM_WB_RegisterRd(),
  .ID_EX_RegisterRs(),
  .ID_Ex_RegisterRt(),
  .ForwardA(),
  .ForwardB()
);

HD HD(
    .ID_EX_MemRead(),
    .IF_ID_RegisterRs(),
    .IF_ID_RegisterRt(),
    .ID_EX_RegisterRt(),
    .PC_Write(),
    .IF_ID_Write(),
    .data_o()
);

Instruction_Memory IM
(
    .addr_i(), 
    .instr_o()
);

mux1 mux1(
	.data1_i(),	//branch_addr
	.data2_i(),	//Add_pc + 4
	.Isbranch_i(),	//control && Eq
	.data_o()
);

mux2 mux2(
	.data1_i(), //mux1.data_o
	.data2_i(), //jump_addr
	.Isjump_i(),
	.data_o()   
);

mux3 mux3(
	.data1_i(),//RT
	.data2_i(),//RD
	.IsRegDst_i(),
	.data_o()
);

mux4 mux4(
	.data1_i(),//mux7 result
	.data2_i(),//signed extend
	.IsALUSrc_i(),
	.data_o()
);

mux5 mux5(
	.data1_i(),//read data from memory
	.data2_i(),//ALU result
	.IsMemtoReg_i(),
	.data_o()
);

mux6 mux6(
	.data1_i(),// ID/EX's read data1
	.data2_i(),// from REG's result 
	.data3_i(),// from EX's result
	.IsForward_i(),
	.data_o()
);

mux7 mux7(
	.data1_i(),// ID/EX's read data2
	.data2_i(),// from REG's result 
	.data3_i(),// from EX's result
	.IsForward_i(),
	.data_o()
);

mux8 mux8(
	.data_i(),
	.IsHazzard_i(),
	.WB_o(),
	.M_o(),
	.EX_o()
);

PC PC(
    .clk_i(clk_i),
    .start_i(start_i),
    .pc_i(),
	.IsHazzard_i(),
    .pc_o()
);

Registers Registers
(
    .clk_i(clk_i),
    .RSaddr_i(),
    .RTaddr_i(),
    .RDaddr_i(), 
    .RDdata_i(),
    .RegWrite_i(), 
    .RSdata_o(), 
    .RTdata_o() 
);

Signed_Extend Signed_Extend(
    .data_i(),
    .data_o()
);

Adder ADD(
	.data1_in(),
	.data2_in(),
	.data_o()
);

Adder add_pc(
	.data1_in(),
	.data2_in(),
	.data_o()
);

Data_memory Data_memory(
	.clk_i(clk_i),
	.Address_i(),
	.data_i(),
	.IsMemWrite(),
	.IsMemRead(),
	.data_o()
);

IF_ID IF_ID(
	.clk(),
	.reset(),
	.hazard_in(),
	.flush(),
	.pc_plus4_in(),
	.instruction_in(),
	.out(),
	.pc_plus4_out()
);

ID_EX ID_EX(
	.clk(),
    .reset(),
	.WB_in(),
    .M_in(),
    .EX_in(),
    .RDdata1_in(),
    .RDdata2_in(),
    .sign_extended_in(),
    .Inst_25_to_21_in(),
    .Inst_20_to_16_in(),
    .Inst_15_to_11_in(),
    .Inst_5_to_0_in(),
	.pc_plus4_in(),
    .WB_out(),
    .M_out(),
    .ALUSrc_out(),
	.ALUOp_out(),
	.RegDst_out(),
    .RDdata1_out(),
    .RDdata2_out(),
    .sign_extended_out(),
    .Inst_25_to_21_out(),
    .Inst_20_to_16_out(),
    .Inst_15_to_11_out(),
    .Inst_5_to_0_out()
);

EX_MEM EX_MEM(
	.clk(),
    .reset(),
    .WB_in(),
    .M_in(),
    .ALU_in(),
    .instruction_mux_in(),
    .RDdata2_in(),
    .MemWrite(),
	.MemRead(),
    .WB_out(),
    .ALU_out(),
    .instruction_mux_out(),
    .RDdata2_out()
);

MEM_WB MEM_WB(
	.clk(),
    .reset(),
    .WB_in(),
	.ReadData_in(),
	.ALU_in(),
	.instruction_mux_in(),
	.RegWrite(),
	.MemtoReg(),
	.ReadData_out(),
	.ALU_out(),
	.instruction_mux_out()
);
endmodule
