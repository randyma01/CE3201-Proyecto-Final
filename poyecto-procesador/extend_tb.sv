module extend_tb();

	//inputs
	logic [1:0] imm_src;
	logic [23:0] imm;
	logic [31:0] result;
	
	extend EXTND(imm_src,imm,result);
	
	initial begin
	#40
	
	imm_src=2'd0;
	imm=24'd5;

	


	
	end

endmodule 