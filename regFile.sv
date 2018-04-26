module regFile(input logic [23:0] icolor1,
											 icolor2,
											 icolor3,
											 icolor4,
					input logic iclk,iwr,ird,
					output logic [23:0] ocolor1,
											  ocolor2,
											  ocolor3,
											  ocolor4);

	logic [23:0] regs [3:0];
	
	always @(posedge iclk) begin
	
		if(iwr) begin
			regs[0] <= icolor1;
			regs[1] <= icolor2;
			regs[2] <= icolor3;
			regs[3] <= icolor4;
		end
		
	end
	
	always @(negedge iclk) begin
	
		if(ird) begin
			ocolor1 <= regs[0];
			ocolor2 <= regs[1];
			ocolor3 <= regs[2];
			ocolor4 <= regs[3];
		end
	end
	
	
	
endmodule 