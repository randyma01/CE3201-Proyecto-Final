module rom_tb();

logic [15:0] address;
logic [31:0] q;
logic clk,rst; 	

instruction_memory mem(address, clk,q);
counter cont(clk,rst,1'b1,address);


endmodule 

/*
	force -freeze sim:/rom_tb/clk 0 0
	force -freeze sim:/rom_tb/rst 1 0
	run
	force -freeze sim:/rom_tb/clk 0 0
	force -freeze sim:/rom_tb/rst 0 0
	force -freeze sim:/rom_tb/clk 0 0
	run
	run
	run
	force -freeze sim:/rom_tb/clk 1 0
	run
	run
	force -freeze sim:/rom_tb/clk 0 0
	run
	force -freeze sim:/rom_tb/clk 1 0
*/
