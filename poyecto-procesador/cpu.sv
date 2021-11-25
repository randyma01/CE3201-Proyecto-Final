module cpu
(
	input logic clk,
	input logic rst,
	input logic [31:0] instr,
	input logic [31:0] data_to_wr,
	output logic [31:0] alu_rslt,
	output logic [31:0] wr_data,
	output logic [15:0] pc_count,
	output logic mem_write,
	output logic mem_reg
	
);	
	
	//salidas de la unidad de control
	logic pc_src;
	logic reg_write;
	logic alu_src;
	logic [1:0] imm_src;
	logic [1:0] reg_src;
	logic [3:0] alu_ctrl;
	
	
	//salida de los sumadores
	logic [15:0] pc_4;
	logic [15:0] pc_8;
	
	//salida del mux PC
	logic [15:0] new_pc;
	
	//salidas del mux de registro
	logic [3:0] ra1,ra2;
	
	//salida 
	
	//salidas de la alu
	logic [3:0]alu_flags;
	
	//salidas del banco de registros
	logic [31:0] rd1,rd2;
	
	//salida de extend
	logic [31:0] extnd_imm;
	
	//salida del mux de la ALU
	logic [31:0] src_B;
	
	//
	
	//instancias
	pc PC(clk,rst,1'b1,new_pc,pc_count);
	adder PC_4(pc_count,pc_4);
	adder PC_8(pc_4,pc_8);
	control_unit CTRL_UNT(clk,rst,instr[31:28],alu_flags,instr[27:26],instr[25:20],instr[15:12],instr[6:5],pc_src,reg_write,mem_write,mem_reg,alu_src,imm_src,reg_src,alu_ctrl);
	mux_16bits MUX_0(pc_4,data_to_wr[15:0],pc_src,new_pc);
	mux_4bits MUX_1(instr[19:16],4'b1111,reg_src[0],ra1);
	mux_4bits MUX_2(instr[3:0],instr[15:12],reg_src[1],ra2);
	register_file REG_FILE(clk,ra1,ra2,instr[15:12],reg_write,data_to_wr,{16'd0,pc_8},rd1,wr_data);
	extend EXTND(imm_src,instr[23:0],extnd_imm);
	mux_32bits MUX_3(wr_data,extnd_imm,alu_src,src_B);
	alu ALU(alu_ctrl,rd1,src_B,alu_rslt,alu_flags);
	
	
	
	
	

endmodule 