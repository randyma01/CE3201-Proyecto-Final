module aluFlags_register
(
  input logic clk,
  input logic rst,
  input logic [1:0]flag_w,
  input logic [3:0] flags, // LAS MANDA LA ALU AL REALIZAR UNA OP.
  output logic [1:0] flags_32,
  output logic [1:0] flags_10
);
	logic [1:0] temp_flag32,temp_flag10;
	
	always_ff @(posedge clk, posedge rst)
		begin
			if (rst)
				begin
					temp_flag32 = 2'b00;
					temp_flag10 = 2'b00;
				end
				
			else
				begin
					if (flag_w[1]==1)
						begin
							temp_flag32 = flags[3:2];
							temp_flag10 = 2'b00;
						end
					else
						begin
							temp_flag32 = 2'b00;
							temp_flag10 = flags[1:0];
						end
		end
	 end
	 
	 assign flags_32 = temp_flag32;
	 assign flags_10 = temp_flag10;
			
endmodule 