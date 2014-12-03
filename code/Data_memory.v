module Data_memory(
	clk_i,
	addr_i,
	data_i,
	IsMemWrite,
	IsMemRead,
	data_o
);
	input clk_i,IsMemRead,IsMemWrite;
	input	[31:0]		addr_i;
	input	[31:0]		data_i;
	output reg	[31:0]	data_o;
	
reg     [7:0]      memory       [0:31];

always @(posedge clk_i) begin
	if(IsMemWrite)begin
		memory[addr_i+3] = data_i[31:24];
		memory[addr_i+2] = data_i[23:16];
		memory[addr_i+1] = data_i[15:8];
		memory[addr_i] 	 = data_i[7:0];
	end
end

always@(*)begin
	if(IsMemRead)begin
		data_o = {
		    memory[addr_i + 3],
        memory[addr_i + 2],
        memory[addr_i + 1],
        memory[addr_i]
    };
	end
end

endmodule