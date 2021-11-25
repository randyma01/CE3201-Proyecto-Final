module control_unit_tb();

	//inputs
	logic clk;
	logic rst;
	logic [3:0] cond;
	logic [3:0] alu_flags;
	logic [1:0] op;
	logic [5:0] funct;
	logic [3:0] rd;
	logic [1:0] sh;
	//outputs
	logic pc_src;
	logic reg_write;
	logic mem_write;
	logic mem_reg;
	logic alu_src;
	logic [1:0] imm_src;
	logic [1:0] reg_src;
	logic [3:0] alu_ctrl;
	
	control_unit CU(clk,rst,cond,alu_flags,op,funct,rd,sh,pc_src,reg_write,mem_write,mem_reg,alu_src,imm_src,reg_src,alu_ctrl);

	initial begin
	rst=1'b1;
	clk=1'b1;
	#40
	
	rst=1'b1;
	clk=1'b0;
	cond=4'b0000;
	op=2'b00;
	funct=6'b000000;
	alu_flags=4'b0000;
	rd=4'b0000;
	sh=1'b0;
	#40
	
	rst=1'b0;
	clk=1'b1;
	#40
	
	rst=1'b0;
	clk=1'b0;
	cond=4'b1110;
	op=2'b00;
	funct=6'b001000;
	alu_flags=4'b0000;
	rd=4'b0101;
	sh=1'b0;
	#40
	
	rst=1'b0;
	clk=1'b1;
	#40
	
	rst=1'b0;
	clk=1'b0;
	cond=4'b1110;
	op=2'b00;
	funct=6'b000100;
	alu_flags=4'b0000;
	rd=4'b0101;
	sh=1'b0;
	#40
	
	rst=1'b0;
	clk=1'b1;
	#40
	
	rst=1'b0;
	clk=1'b0;
	
	
	end

endmodule 