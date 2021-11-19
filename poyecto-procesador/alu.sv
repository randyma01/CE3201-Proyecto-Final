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








endmodule 