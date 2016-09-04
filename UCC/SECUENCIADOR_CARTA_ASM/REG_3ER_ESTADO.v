`timescale 1ns / 1ps
module REG_3ER_ESTADO(INR, Hab, OUTR);
    input  [3:0] INR;
    input        Hab;
    output [3:0] OUTR;
	 reg 	  [3:0] rsalida;
	 
	 always @ (INR,Hab)
	 begin
		case(Hab)
			1'b0:rsalida=INR;
			1'b1:rsalida=4'bzzzz;
		endcase
	 end
	 assign OUTR =rsalida;
endmodule
