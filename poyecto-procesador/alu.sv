module alu #(parameter N=32)
(
	input logic [3:0] alu_ctrl,
	input logic [N-1:0] src_A,
	input logic [N-1:0] src_B,
	output logic [N-1:0] alu_result,
	output logic [3:0] alu_flags // los bits representan los flags 3->(Z) 2->(N) 1->(C) 0->(V).
);

 // Resultados temporales - temp results
	logic [N-1:0]temp_result_and;
	logic [N-1:0]temp_result_xor;
	logic [N-1:0]temp_result_substract;
	logic [N-1:0]temp_result_rev_sub;
	logic [N-1:0]temp_result_add;
	logic [N-1:0]temp_result_compare;
	logic [N-1:0]temp_result_comp_neg;
	logic [N-1:0]temp_result_or;
	logic [N-1:0]temp_result_move;
	logic [N-1:0]temp_result_sll;
	logic [N-1:0]temp_result_srl;
	logic [N-1:0]temp_result_clear; // nand
	logic [N-1:0]temp_result_not;

// Flags temporales - temp flags
	logic [3:0]temp_flag_and;
	logic [3:0]temp_flag_xor;
	logic [3:0]temp_flag_substract;
	logic [3:0]temp_flag_rev_sub;
	logic [3:0]temp_flag_add;
	logic [3:0]temp_flag_compare;
	logic [3:0]temp_flag_comp_neg;
	logic [3:0]temp_flag_or;
	logic [3:0]temp_flag_move;
	logic [3:0]temp_flag_sll;
	logic [3:0]temp_flag_srl;
	logic [3:0]temp_flag_clear; // nand
	logic [3:0]temp_flag_not;

// Variable de resultado final y flag final
	logic [N-1:0]TRESULT;
	logic [3:0]TFLAGS;


  //"Instancias" de las operaciones 
  
	and_op AND_OP(src_A, src_B, temp_result_and, temp_flag_and); // AND
	xor_op XOR_OP(src_A, src_B, temp_result_xor, temp_flag_xor); // XOR
	sub_op SUB_OP(src_A, src_B, temp_result_substract, temp_flag_substract); // SUB
	revsub_op REVSUB_OP(src_A, src_B, temp_result_rev_sub, temp_flag_rev_sub); // REVSUB
	add_op ADD_OP(src_A, src_B, temp_result_add, temp_flag_add); // ADD
	compare_op COMP_OP(src_A, src_B, temp_result_compare, temp_flag_compare); // COMPARE
	compneg_op COMPNEG_OP(src_A, src_B, temp_result_comp_neg, temp_flag_comp_neg); // COMPARE NEG
	or_op OR_OP(src_A, src_B, temp_result_or, temp_flag_or); // OR
	move_op MOVE_OP(src_B, temp_result_move, temp_flag_move); // MOVE
	sll_op SLL_OP(src_A, src_B, temp_result_sll, temp_flag_sll); // SLL
	srl_op SRL_OP(src_A, src_B, temp_result_srl, temp_flag_srl); // SLL
	clear_op CLEAR_OP(src_A, src_B, temp_result_clear, temp_flag_clear); // CLEAR
	not_op NOT_OP(src_A, temp_result_not, temp_flag_not); // NOT

  
    always @(*) //cualquier cambio que haya en las entradas, haga tal vara

      begin	

        case (alu_ctrl)
          0 : begin 
				   TRESULT = temp_result_and;
				   TFLAGS = temp_flag_and;
				  end

          1 : begin 
				   TRESULT = temp_result_xor;
				   TFLAGS = temp_flag_xor;
				  end
		
          2 : begin 
				   TRESULT = temp_result_substract;
				   TFLAGS = temp_flag_substract;
				  end

          3 : begin 
				   TRESULT = temp_result_rev_sub;
				   TFLAGS = temp_flag_rev_sub;
				  end

          4 : begin 
				   TRESULT = temp_result_add;
				   TFLAGS = temp_flag_add;
				  end

          6 : begin 
				   TRESULT = temp_result_compare;
				   TFLAGS = temp_flag_compare;
				  end
				  
          7 : begin 
				   TRESULT = temp_result_comp_neg;
				   TFLAGS = temp_flag_comp_neg;
				  end

          8 : begin 
				   TRESULT = temp_result_move;
				   TFLAGS = temp_flag_move;
				  end

          9 : begin 
				   TRESULT = temp_result_sll;
				   TFLAGS = temp_flag_sll;
				  end
				
				
          10 : begin 
				   TRESULT = temp_result_srl;
				   TFLAGS = temp_flag_srl;
				  end

          11 : begin 
				   TRESULT = temp_result_clear;
				   TFLAGS = temp_flag_clear;
				  end

          12 : begin 
				   TRESULT = temp_result_not;
				   TFLAGS = temp_flag_not;
				  end			  

			 default : begin 
				   TRESULT = 32'd0;
				   TFLAGS = 4'b0000;
				  end
      endcase
	  end
	
	assign alu_result = TRESULT;
	assign alu_flags = TFLAGS;





endmodule 