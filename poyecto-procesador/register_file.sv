module register_file
(
	input logic clk,
	input logic [3:0] a1,  // r1
	input logic [3:0] a2, //r 2
	input logic [3:0] a3, // r destino
	input logic wr_e,
	input logic [31:0] wd3,
	input logic [31:0] r15,
	output logic [31:0] rd1,
	output logic [31:0] rd2
);
	
	logic [31:0] data [14:0]; // 15 espacio de 32 bits, el espacio 16 no se toma enceunta
	

	always_ff @(negedge clk )
		begin
			if(wr_e) data[a3] <= wd3;
	
		end
	
	

	assign rd1 = (a1 == 4'd15) ? r15 : data[a1];
	assign rd2 = data[a2];
 
endmodule 