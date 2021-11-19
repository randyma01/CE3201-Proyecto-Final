module mux_4bits #(parameter N=4)
(
	input [N-1:0] signalA, signalB,
	input selector,
	output [N-1:0] result
);

assign result = selector ? signalB : signalA;

endmodule 