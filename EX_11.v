`timescale 1 ns/1 ns

module EX_11(a1, a2, b1, b2, b3, b4, d, z, reset, sel1, sel2, sel3, sel4, g );
input	[3:0] a1, a2, b1, b2, b3, b4, d, z, sel4 ;
input   [1:0] sel3;
input	sel1, sel2, reset;
output	[3:0] g;
//wire	[3:0] g;
reg     [3:0] tmp1, tmp2, tmp3, g;    // wire和reg不能同時定義

//reg	    [3:0] pri_mux;

//assign code = {sel4, z, tmp1, tmp2, tmp3};
//assign {g} = pri_mux;

always@ (sel4 or z or tmp1 or tmp2 or tmp3)
begin 
	casez(sel4)
	 4'b???1 : g = z; 
	 4'b??10 : g = tmp1; 
	 4'b?100 : g = tmp2;
	 default : g = tmp3;
	endcase
	
	//casez(code)
	 //4'b???1 : pri_mux = z; 
	 //4'b??10 : pri_mux = tmp1; 
	 //4'b?100 : pri_mux = tmp2;
	 //default : pri_mux = tmp3;
	//endcase
end

always@ (reset or sel1 or d)
begin 
		if (reset == 1'b1)
			tmp1 = 4'h0;
		else  
			if (sel1 == 1'b1)
				tmp1 = d;
end
	
always@ (sel2 or a1 or a2)
begin 
		if (sel2 == 1'b1)
		 tmp2 = a2;
		else
		 tmp2 = a1;
end
	
always@ (sel3 or b1 or b2 or b3 or b4)
	case (sel3)
	 2'b00 :tmp3 = b1;
	 2'b01 :tmp3 = b2;
	 2'b10 :tmp3 = b3;
	 default :tmp3 = b4;
	 
	endcase

endmodule
