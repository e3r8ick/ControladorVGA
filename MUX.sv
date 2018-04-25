module MUX(input logic [23:0] m0,m1,m2,m3,
			  input logic [1:0] s,
			  output logic [23:0] d);
			  
	assign d = s[1] ? (s[0] ? m3:m2) : (s[0] ? m1:m0);
	
endmodule 