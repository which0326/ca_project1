module Sub32(
  SRCA,
  SRCB,
  CAR_IN,
  SUB_OUT, 
  CAR_OUT
);

input CAR_IN;
input [31:0]SRCA,SRCB;
output [31:0]SUB_OUT;
output CAR_OUT;
reg [31:0]SUB_OUT;
reg CAR_OUT;
reg [32:0]I;
	
always@(SRCA or SRCB) begin
  I=SRCA-SRCB+CAR_IN;
	SUB_OUT=I[31:0];
	CAR_OUT=I[32];
end

endmodule


