module mux8(
	data_i,
	IsHazzard_i,
	WB_o,
	M_o,
	EX_o
);
input	[7:0]		data_i;
output	reg	[1:0]	WB_o;
output	reg	[1:0]	M_o;
output	reg	[3:0]	EX_o;
input IsHazzard_i;

always@(*)begin
	if(IsHazzard_i)begin
		WB_o = 2'b00;
		M_o = 2'b00;
		EX_o = 4'b0000;
	end
	else begin 
		WB_o = data_i[1:0];
		M_o = data_i[3:2];
		EX_o = data_i[7:4];
	end
end

endmodule