module individual_test_tb();

//--------------------------------------------------------------------- ALU DECODER TEST --------------------------------------------------------------------------------(SIRVE!)


/*


	logic alu_op;
	logic [5:0] func;
	logic [3:0] alu_ctrl;
	logic [1:0] sh;
	logic [1:0] flag_w;
	
	alu_decoder ALU_DECO(alu_op,func,sh,alu_ctrl,flag_w);
	
	
	initial begin
	
		alu_op = 0;
		func=6'b000000;
		sh=00;
		#40;
		
		alu_op = 1;
		func=6'b000000;
		sh=00;
		#40

		alu_op = 1;
		func=6'b000011;
		sh=00;
		#40
		
		alu_op = 1;
		func=6'b000100;
		sh=00;
		#40
		
		alu_op = 1;
		func=6'b000111;
		sh=00;
		#40
		
		alu_op = 1;
		func=6'b001000;
		sh=00;
		#40
		
		alu_op = 1;
		func=6'b010101;
		sh=00;
		#40
		
		alu_op = 1;
		func=6'b010110;
		sh=00;
		#40
		
		alu_op = 1;
		func=6'b011001;
		sh=00;
		#40
		
		alu_op = 1;//MOVE
		func=6'b111011;
		sh=00;
		#40
		
		alu_op = 1;//SLL
		func=6'b011010;
		sh=00;
		#40
		
		alu_op = 1;//SLL
		func=6'b011010;
		sh=01;
		#40

		
		alu_op = 1;
		func=6'b011101;
		sh=00;
		#40
		
		alu_op = 1;
		func=6'b011110;
		sh=00;

		
	end

*/


//------------------------------------------------------------------MAIN DECODER TEST --------------------------------------------------------------------------------------(SIRVE!)


/*

	logic [1:0]op;
	logic [5:0] func;
	logic branch;
	logic mem_to_reg;
	logic mem_w;
	logic alu_src;
	logic [1:0] imm_src;
	logic reg_w;
	logic [1:0] reg_src;
	logic alu_op;
	
	main_decoder MAIN_DECO(op,func,branch,mem_to_reg,mem_w,alu_src,imm_src,reg_w,reg_src,alu_op);
	
	
	initial begin
	
		op = 0;
		func=6'b100000;
		#40;
		
		op = 1;
		func=6'b000000;
		#40
		
		op = 2;
		func=6'b000000;



		
	end
*/



//-------------------------------------------------------------------PC LOGIC TEST ------------------------------------------------------------------------------------- (SIRVE!)

/*


	logic [3:0] rd;
	logic branch;
	logic reg_w;
	logic pc_src;

	
	pc_logic PC_LOGIC(rd,branch,reg_w,pc_src);
	
	
	initial begin
	
		rd = 4'b1111;
		branch=1'b0;
		reg_w=1'b1;
		#40
		
		rd = 4'b0001;
		branch=1'b0;
		reg_w=1'b1;
		#40
		
		rd = 4'b0000;
		branch=1'b1;
		reg_w=1'b1;


		
	end
*/



	
	
endmodule 