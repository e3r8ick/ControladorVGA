module maqest(input logic ibtn,iclk,
				  input logic irst);
				  
	logic [23:0] color1;
	logic [23:0] color2;
	logic [23:0] color3;
	logic [23:0] color4;
	
	
	always @(posedge ibtn) begin
		
		if(ibtn) begin
			//ingresar colores en registro.
		end
		
		//Instancia de banco de registros para almacenar colores.
		regFile store (color1,color2,color3,color4,iclk,1'b1,1'b0,color1,color2,color3,color4);
		
	end
	
end module 