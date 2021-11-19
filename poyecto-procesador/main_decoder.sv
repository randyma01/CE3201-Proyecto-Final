module main_decoder
(
	input logic  [1:0] op,
	input logic [5:0] func,
	output logic branch,
	output logic mem_to_reg,
	output logic mem_w,
	output logic alu_src,
	output logic [1:0] imm_src,
	output logic reg_w,
	output logic [1:0] reg_src,
	output logic alu_op
	
);

	logic temp_b, temp_mR, temp_memW,temp_aluS,temp_regW,temp_aluO;
	logic [1:0] temp_imS;
	logic [1:0] temp_regS;
	
	always @(op,func)
	begin
		
		case(op)
			
			0: //OPERACIONES DP
				begin
					case (func[5])
					
						0: //DP REG
							begin
								temp_b = 1'b0;
								temp_mR = 1'b0;
								temp_memW = 1'b0;
								temp_aluS = 1'b0;
								temp_imS = 2'b11;
								temp_regW = 1'b1;
								temp_regS = 2'b00;
								temp_aluO = 1'b1;
							end
							
						1: //DP IMM
							begin
								temp_b = 1'b0;
								temp_mR = 1'b0;
								temp_memW = 1'b0;
								temp_aluS = 1'b1;
								temp_imS = 2'b00;
								temp_regW = 1'b1;
								temp_regS = 2'b10;
								temp_aluO = 1'b1;
							end
							
							
						default:
							begin
								temp_b = 1'b0;
								temp_mR = 1'b0;
								temp_memW = 1'b0;
								temp_aluS = 1'b0;
								temp_imS = 2'b00;
								temp_regW = 1'b0;
								temp_regS = 2'b00;
								temp_aluO = 1'b0;
							end
						
					endcase
				end
				
			1: //OPERACIONES MEM
				begin
					case (func[0])
						0: //STR
							begin
								temp_b = 1'b0;
								temp_mR = 1'b0;
								temp_memW = 1'b1;
								temp_aluS = 1'b1;
								temp_imS = 2'b01;
								temp_regW = 1'b0;
								temp_regS = 2'b10;
								temp_aluO = 1'b0;
							end
							
						1: //LDR
							begin
								temp_b = 1'b0;
								temp_mR = 1'b1;
								temp_memW = 1'b0;
								temp_aluS = 1'b1;
								temp_imS = 2'b01;
								temp_regW = 1'b1;
								temp_regS = 2'b00;
								temp_aluO = 1'b0;
							end							
							
						default:
							begin
								temp_b = 1'b0;
								temp_mR = 1'b0;
								temp_memW = 1'b0;
								temp_aluS = 1'b0;
								temp_imS = 2'b00;
								temp_regW = 1'b0;
								temp_regS = 2'b00;
								temp_aluO = 1'b0;
							end
						
					endcase
				end
				
			2: //OPERACIONES BRANCH
			
				begin
					temp_b = 1'b1;
					temp_mR = 1'b0;
					temp_memW = 1'b0;
					temp_aluS = 1'b1;
					temp_imS = 2'b10;
					temp_regW = 1'b0;
					temp_regS = 2'b11;
					temp_aluO = 1'b0;
				end
			
			default:
				begin
					temp_b = 1'b0;
					temp_mR = 1'b0;
					temp_memW = 1'b0;
					temp_aluS = 1'b0;
					temp_imS = 2'b00;
					temp_regW = 1'b0;
					temp_regS = 2'b00;
					temp_aluO = 1'b0;
				end
		endcase
		
	end
	
	assign branch = temp_b;
	assign mem_to_reg = temp_mR;
	assign mem_w = temp_memW;
	assign alu_src = temp_aluS;
	assign imm_src = temp_imS;
	assign reg_w = temp_regW;
	assign reg_src = temp_regS;
	assign alu_op = temp_aluO;
	
	
	
endmodule 