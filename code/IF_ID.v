module IF_ID(input clk,
			 input reset,
			 input hazard_in,
			 input flush,
			 input [31:0]pc_plus4_in,
			 input instruction_in,
			 output reg[31:0] out,
			 output reg[31:0] pc_plus4_out);
			
always@(posedge reset)begin
	out = 0;
	pc_plus4_out = 0;
end

always@(posedge clk)begin
	if((reset == 0) & (flush == 0))begin
		if(hazard_in)begin
			out <= instruction_in;
			pc_plus4_out <= pc_plus4_in;
		end
		else begin
			out = 0;
			pc_plus4_out = 0;
		end
	end
end
endmodule
