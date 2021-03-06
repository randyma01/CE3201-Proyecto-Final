module mux_16bits #(parameter N=16)
(
	input logic [N-1:0] signalA, signalB,
	input logic selector,
	output logic [N-1:0] result
);

assign result = selector ? signalB : signalA;

endmodule 