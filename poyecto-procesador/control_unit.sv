module control_unit
(
	input logic clk,
	input logic rst,
	input logic [3:0] cond,
	input logic [3:0] alu_flags,
	input logic [1:0] op,
	input logic [5:0] funct,
	input logic [3:0] rd,
	input logic [1:0] sh,
	output logic pc_src,
	output logic reg_write,
	output logic mem_write,
	output logic mem_reg,
	output logic alu_src,
	output logic [1:0] imm_src,
	output logic [1:0] reg_src,
	output logic [3:0] alu_ctrl
);

logic [1:0] flag_w;
logic pcs,memw,regw;

decoder_unit DECO_UNIT(op,funct,rd,sh,flag_w,pcs,regw,memw,mem_reg,alu_src,imm_src,reg_src,alu_ctrl);
conditional_logic COND_LOGIC(clk,rst,pcs,regw,memw,flag_w,cond,alu_flags,pc_src,reg_write,mem_write);

endmodule 