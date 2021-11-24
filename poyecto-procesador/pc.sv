module pc #(parameter N=16)
(
	input clk,
	input rst,
	input en,
	input [N-1:0] new_pc,
	output [N-1:0] pc_count
);

		always_ff @ (negedge clk or posedge rst)
			if(rst) pc_count = 16'd0;
			else
				if(en) pc_count = new_pc;

endmodule 