module counter
(
	input clk, rst, en,
	output logic [15:0] Q
);

	always_ff @(negedge clk or posedge rst)
		if(rst) Q = 16'd0;
		else
			if (en) Q = Q + 1'b1;	
	
endmodule 