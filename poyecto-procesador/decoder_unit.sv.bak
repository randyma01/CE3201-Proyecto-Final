module decoder_unit
(
	input logic [1:0] op,
	input logic [5:0] funct,
	input logic [3:0] rd,
	input logic [1:0] sh,
	output logic [1:0] flag_w,
	output logic pcs,
	output logic reg_w,
	output logic mem_w,
	output logic mem_reg,
	output logic alu_src,
	output logic [1:0] imm_src,
	output logic [1:0] reg_src,
	output logic [3:0] alu_ctrl
);

	logic brach,alu_op;
	
	main_decoder MAIN_DECO(op,funct,branch,mem_reg,mem_w,alu_src,imm_src,reg_W,reg_src,alu_op);
	alu_decoder ALU_DECO(alu_op,funct,sh,alu_ctrl,flag_w);
	pc_logic PC_LOGIC(rd, branch,reg_W,pcs);
	


endmodule 