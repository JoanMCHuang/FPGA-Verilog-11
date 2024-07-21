`timescale 1 ns/1 ns

module testbench;

reg	[3:0]	z, tmp1, tmp2, tmp3 ;
wire	[3:0]	g;

EX_11 EX11_instance(
	.a1(a), .a2(a2), .b1(b1), .b2(b2), .b3(b3), .b4(b4), .d(d), .z(z),
	.sel1(sel1), .sel2(sel2), .sel3(sel3), .sel4(sel4),  
	.g(g) );
initial
begin
 z= 4'b0001;
 
 #50
 tmp1 = 4'b0010;	// Time = 50
 #50;			// Time = 100
 tmp2 = 4'b0000;
 #50;			// Time = 150
 tmp3 = 4'b0100;
 
 
end
endmodule
