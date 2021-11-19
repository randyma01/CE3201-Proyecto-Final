module conditional_logic
(
	input logic clk,
	input logic rst,
	input logic pcs,
	input logic reg_w,
	input logic mem_w,
	input logic [1:0] flag_w,
	input logic [3:0] cond,
	input logic [3:0] alu_flags,
	output logic pc_src,
	output logic reg_write,
	output logic mem_write
);

	logic [1:0] flg_32, flg_10;
	logic cond_ex;
	
	aluFlags_register FLAGS(clk,rst,flag_w,alu_flags,flg_32,flg_10);
	condition_check COND_EX(cond, flg_32,flg_10,cond_ex);
	
	assign pc_src = (pcs & cond_ex);
	assign reg_write = (reg_w & cond_ex);
	assign mem_write = (mem_w & cond_ex);
	

endmodule
