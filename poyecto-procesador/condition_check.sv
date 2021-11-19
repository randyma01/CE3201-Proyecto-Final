module condition_check
(	
	input logic [3:0] cond,
	input logic [1:0] flags_32,//ZN
	input logic [1:0] flags_10,//CV
	output logic cond_ex

);

	logic temp_condex;

	always @(cond,flags_32,flags_10)
	begin
		case(cond)
			0://Equal (Z)
				temp_condex=flags_32[1];
				
			1://Not Equal (~Z)
				temp_condex= ~(flags_32[1]);
				
			2://Carry  (C)
				temp_condex= flags_10[1];
				
			4://Negative  (N)
				temp_condex= (flags_32[0]);
				
			14://Always (Ignored)
				temp_condex= 0;
				
			default: temp_condex= 0;
			
		endcase
	end
	
	assign cond_ex = temp_condex;

endmodule 