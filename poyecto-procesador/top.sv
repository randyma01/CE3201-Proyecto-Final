module top
(
	input logic clk,
	input logic rst
);

	logic [31:0] alu_rslt;
	logic [31:0] wr_data;
	logic [15:0] pc_count;
	logic [31:0] instr;
	logic [31:0] ram_data;
	

	cpu CPU(clk,rst,instr,{24'd0,ram_data},alu_rslt,wr_data,pc_count);
	instruction_memory ROM(pc_count,clk,instr);
	data_memory RAM(alu_rslt,clk,wr_data,ram_data);

endmodule 