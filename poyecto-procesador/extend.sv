module extend
(
	input logic [1:0] imm_src,
	input logic [23:0] imm,
	output logic [31:0] result
	
);
	logic [7:0] temp_im0;
	logic [11:0] temp_im1;
	logic [32:0] temp_extend;

	
	always @(imm_src)
		begin
			
			case(imm_src)
			
				0:
					begin
						 temp_im0 = imm[7:0];
						 temp_extend ={24'd0, temp_im0};
					end
					
				1:
					begin
						 temp_im1 = imm[11:0];
						 temp_extend ={20'd0, temp_im1};
					end
					
				2:
					begin
						 temp_extend= imm * 3'd4;
					end
				
				default: temp_extend = 32'd0;
					
			endcase
			
		end

	
	
	assign result = temp_extend;

endmodule 