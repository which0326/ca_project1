module CPU
(
    clk_i, 
    rst_i,
    start_i
);

// Ports
input               clk_i;
input               rst_i;
input               start_i;

/*
Control Control(
    .Op_i       (),
    .RegDst_o   (),
    .ALUOp_o    (),
    .ALUSrc_o   (),
    .RegWrite_o ()
);
*/

/*
Adder Add_PC(
    .data1_in   (),
    .data2_in   (),
    .data_o     ()
);
*/

PC PC(
    .clk_i      (),
    .rst_i      (),
    .start_i    (),
    .pc_i       (),
    .pc_o       ()
);

Instruction_Memory Instruction_Memory(
    .addr_i     (), 
    .instr_o    ()
);

Registers Registers(
    .clk_i      (),
    .RSaddr_i   (),
    .RTaddr_i   (),
    .RDaddr_i   (), 
    .RDdata_i   (),
    .RegWrite_i (), 
    .RSdata_o   (), 
    .RTdata_o   () 
);

/*
MUX5 MUX_RegDst(
    .data1_i    (),
    .data2_i    (),
    .select_i   (),
    .data_o     ()
);
*/

/*
MUX32 MUX_ALUSrc(
    .data1_i    (),
    .data2_i    (),
    .select_i   (),
    .data_o     ()
);
*/

/*
Signed_Extend Signed_Extend(
    .data_i     (),
    .data_o     ()
);
*/
  
/*
ALU ALU(
    .data1_i    (),
    .data2_i    (),
    .ALUCtrl_i  (),
    .data_o     (),
    .Zero_o     ()
);
*/

/*
ALU_Control ALU_Control(
    .funct_i    (),
    .ALUOp_i    (),
    .ALUCtrl_o  ()
);
*/

endmodule

