`timescale 1ns / 1ps
module Accumulador(clk, E0,E1, nw, Ai, Bi, Ci, Ao, Bo, Co, N, Z);
input clk, nw;
input E0,E1;
input [7:0] Ai, Bi, Ci;
output N, Z;
output [7:0] Ao, Bo, Co;
reg [7:0] temp=8'b00000000, t2;


always @ (posedge clk) 
begin
		
		 
		if( E0 & !E1)
			t2 = Ai;
		else if ( !E0 & E1)
			t2 = Bi;
		else if ( E0 & E1)
			t2 = Ci;
		else
			t2 = temp;
		if (!nw )
			temp = t2; 
		
end



assign Co = temp;
// Calcula los valores de las banderas
assign N = temp[7];
assign Z = ~(| temp);

bufif1 (Ao[7], temp[7], ~E1 & E0 & nw);
bufif1 (Ao[6], temp[6], ~E1 & E0 & nw);
bufif1 (Ao[5], temp[5], ~E1 & E0 & nw);
bufif1 (Ao[4], temp[4], ~E1 & E0 & nw);
bufif1 (Ao[3], temp[3], ~E1 & E0 & nw);
bufif1 (Ao[2], temp[2], ~E1 & E0 & nw);
bufif1 (Ao[1], temp[1], ~E1 & E0 & nw);
bufif1 (Ao[0], temp[0], ~E1 & E0 & nw);

bufif1 (Bo[7], temp[7], E1 & ~E0 & nw);
bufif1 (Bo[6], temp[6], E1 & ~E0 & nw);
bufif1 (Bo[5], temp[5], E1 & ~E0 & nw);
bufif1 (Bo[4], temp[4], E1 & ~E0 & nw);
bufif1 (Bo[3], temp[3], E1 & ~E0 & nw);
bufif1 (Bo[2], temp[2], E1 & ~E0 & nw);
bufif1 (Bo[1], temp[1], E1 & ~E0 & nw);
bufif1 (Bo[0], temp[0], E1 & ~E0 & nw);



endmodule
