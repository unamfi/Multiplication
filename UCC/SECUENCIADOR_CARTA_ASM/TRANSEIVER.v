module TRANSEIVER(INR, Hab, OUTR);
    input  [7:0] INR;
    input        Hab;
    output [7:0] OUTR;
	 reg 	  [7:0] rsalida;
	 
	 always @ (INR,Hab)
	 begin
		case(Hab)
			1'b0:rsalida=INR;
			1'b1:rsalida=8'bzzzzzzzz;
		endcase
	 end
	 assign OUTR =rsalida;
endmodule