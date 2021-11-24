module xor_op #(parameter N=32)
(
  input logic [N-1:0] a,
  input logic [N-1:0] b,
  output logic [N-1:0] result,
  output logic [3:0] flags
);
	logic [3:0]temp_flags;
  
  //definimos el orden de los flags como (Z)(N)(C)(V)
  
  always @(a,b)
    begin
      if((a ^ b) == 32'd0)
	     temp_flags=4'b1000;
	   else
	     temp_flags=4'b0000;
    end
	 
	 	assign result = a ^ b;
		assign flags = temp_flags;

endmodule 