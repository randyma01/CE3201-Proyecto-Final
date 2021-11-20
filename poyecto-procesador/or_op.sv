module or_op #(parameter N=32)
(
  input logic [N-1:0] a,
  input logic [N-1:0] b,
  output logic [N-1:0] result,
  output logic [3:0] flags
);

  assign result = a | b;
  
  //definimos el orden de los flags como (Z)(N)(C)(V)
  
  always @(result)
    begin
      if(result == 32'd0)
	     flags=4'b1000;
		else
			flags=4'b0000;	
    end
endmodule 