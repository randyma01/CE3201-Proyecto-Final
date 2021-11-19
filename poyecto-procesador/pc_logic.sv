module pc_logic
(
	input logic[3:0] rd,
	input logic branch,
	input logic reg_w,
	output logic pc_src
);

	assign pc_src = ((rd == 4'b1111) & reg_w) | branch;
	

endmodule 