module alu_tb();

	//inputs
	logic [3:0] alu_ctrl;
	logic [31:0] srcA;
	logic [31:0] srcB;
	logic [31:0] result;
	logic [3:0] alu_flags;

	
	alu ALU_TB(alu_ctrl,srcA,srcB,result,alu_flags);
	
	initial begin
	#40
	
	alu_ctrl=4'd4;
	srcA=32'd3;
	srcB=32'd5;
	#40
	
	alu_ctrl=4'd1;
	srcA=32'd1;
	srcB=	32'd1;;



	
	end

endmodule 