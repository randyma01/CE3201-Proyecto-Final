module adder #(parameter N=32)
(
	input logic [N-1:0] signalA, 
	output logic [N-1:0] result
);

	assign result = signalA + 1'd1;

endmodule

//Este modulo es para realizar la suma del PC+4 y PC+8