module top
(
	input logic clk,
	input logic rst
);
	logic wr_en,mem_reg;
	logic [31:0] instr,wd3,alu_rslt,wr_data;
	logic [7:0] mem_data;
	logic [15:0] pc_count;

	cpu CPU(clk,rst,instr,wd3,alu_rslt,wr_data,pc_count,wr_en,mem_reg);
	instruction_memory ROM(pc_count,clk,instr);
	data_memory RAM(alu_rslt[15:0],clk,wr_data[7:0],wr_en,mem_data);
	mux_32bits MUX_REG(alu_rslt,{24'd0,mem_data},mem_reg,wd3);

	

endmodule 