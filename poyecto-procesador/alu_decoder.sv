module alu_decoder
(
	input logic alu_op,
	input logic [5:0] func,
	input logic [1:0] sh,
	output logic [3:0] alu_ctrl,
	output logic [1:0] flag_w
);

	logic [1:0] temp_flag;
	logic [3:0] temp_ctrl;
	
	always @(*)
	begin
		
		if(alu_op==1'b0)
			begin
					temp_ctrl = 4'b0000;
					temp_flag = 2'b00;
			end
		else
			begin
				
				case(func[4:1])
					
					0: // Bitwise AND
						begin
							temp_ctrl = 4'b0000;
							case(func[0])
								0: temp_flag = 2'b00;
								1: temp_flag = 2'b10;
								default: temp_flag = 2'b00;
							endcase
						end
						
					1: // Bitwise XOR
						begin
							temp_ctrl = 4'b0001;
							case(func[0])
								0: temp_flag = 2'b00;
								1: temp_flag = 2'b10;
								default: temp_flag = 2'b00;
							endcase
						end

					2: // SUB
						begin
							temp_ctrl = 4'b0010;
							case(func[0])
								0: temp_flag = 2'b00;
								1: temp_flag = 2'b11;
								default: temp_flag = 2'b00;
							endcase
						end
				


					3: // Reverse SUB
						begin
							temp_ctrl = 4'b0011;
							case(func[0])
								0: temp_flag = 2'b00;
								1: temp_flag = 2'b11;
								default: temp_flag = 2'b00;
							endcase
						end	
					
				
					4: // ADD
						begin
							temp_ctrl = 4'b0100;
							case(func[0])
								0: temp_flag = 2'b00;
								1: temp_flag = 2'b11;
								default: temp_flag = 2'b00;
							endcase
						end
						
					10: // Compare
						begin
							temp_ctrl = 4'b0101;
							case(func[0])
								0: temp_flag = 2'b00;
								1: temp_flag = 2'b10;
								default: temp_flag = 2'b00;
							endcase
						end
						
					11: // Compare Negative
						begin
							temp_ctrl = 4'b0110;
							case(func[0])
								0: temp_flag = 2'b00;
								1: temp_flag = 2'b10;
								default: temp_flag = 2'b00;
							endcase
						end

					12: // Bitwise Or
						begin
							temp_ctrl = 4'b0111;
							case(func[0])
								0: temp_flag = 2'b00;
								1: temp_flag = 2'b10;
								default: temp_flag = 2'b00;
							endcase
						end
						
						
						
					13: // SHIFTS Y MOVE
						begin
							case(func[5])
								0: //SHIFTS
									begin
										case(sh)
											0: //SHIFT LEFT LOGICAL
												begin
													temp_ctrl = 4'b1001;
													case(func[0])
														0: temp_flag = 2'b00;
														1: temp_flag = 2'b10;
														default: temp_flag = 2'b00;
													endcase
												end
											1: //SHIFT RIGHT LOGICAL
												begin
													temp_ctrl = 4'b1010;
													case(func[0])
														0: temp_flag = 2'b00;
														1: temp_flag = 2'b10;
														default: temp_flag = 2'b00;
													endcase
												end
											
											default: temp_ctrl = 4'b0000;
										endcase
										
									end
									
									
								1: //MOVE
									begin
										temp_ctrl = 4'b1000;
										case(func[0])
											0: temp_flag = 2'b00;
											1: temp_flag = 2'b10;
											default: temp_flag = 2'b00;
										endcase
									end
								
								default: temp_ctrl = 4'b0000;
							endcase
						end
						
						
					
					14: // Bitwise Clear (~And)
						begin
							temp_ctrl = 4'b1011;
							case(func[0])
								0: temp_flag = 2'b00;
								1: temp_flag = 2'b10;
								default: temp_flag = 2'b00;
							endcase
						end

					15: // Not
						begin
							temp_ctrl = 4'b1100;
							case(func[0])
								0: temp_flag = 2'b00;
								1: temp_flag = 2'b10;
								default: temp_flag = 2'b00;
							endcase
						end
					
					default:
						begin
							temp_ctrl = 4'b0000;
							temp_flag = 2'b00;
						end
				
				
				endcase
				
			end
	
	
	
	
	end


	assign alu_ctrl = temp_ctrl;
	assign flag_w = temp_flag;


endmodule 