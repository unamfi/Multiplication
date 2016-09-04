////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2006 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 8.2i
//  \   \         Application : sch2verilog
//  /   /         Filename : ArquitecturaCompuesta.vf
// /___/   /\     Timestamp : 09/25/2012 13:58:20
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\bin\nt\sch2verilog.exe -intstyle ise -family spartan3 -w "C:/Documents and Settings/Administrador/Escritorio/PROYETCO ARQ_COMPUTADORAS_LAB_VIERNES/PROYECTO/SECUENCIADOR_CARTA_ASM/ArquitecturaCompuesta.sch" ArquitecturaCompuesta.vf
//Design Name: ArquitecturaCompuesta
//Device: spartan3
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module ArquitecturaCompuesta(I, 
                             reloj, 
                             Reset, 
                             RINT, 
                             RTRANS, 
                             X, 
                             Y, 
                             Z, 
                             AN, 
                             DISPLAY, 
                             SALIDAS);

    input I;
    input reloj;
    input Reset;
    input [2:0] RINT;
    input [2:0] RTRANS;
    input X;
    input Y;
    input Z;
   output [2:0] AN;
   output [7:0] DISPLAY;
   output [3:0] SALIDAS;
   
   wire XLXN_37;
   wire XLXN_47;
   wire [2:0] XLXN_57;
   wire [1:0] XLXN_63;
   wire [2:0] XLXN_64;
   wire XLXN_79;
   wire [2:0] XLXN_91;
   wire [2:0] XLXN_100;
   wire XLXN_101;
   wire XLXN_107;
   wire XLXN_108;
   
   REG_3ER_ESTADO XLXI_3 (.Hab(XLXN_107), 
                          .INR(RINT[2:0]), 
                          .OUTR(XLXN_100[2:0]));
   Logica XLXI_4 (.MI(XLXN_64[2:0]), 
                  .Qsel(XLXN_47), 
                  .MAPS(XLXN_79), 
                  .MPC(XLXN_108), 
                  .PL(XLXN_37), 
                  .VECT(XLXN_107));
   Secuenciador XLXI_6 (.clk(XLXN_101), 
                        .INREG(XLXN_100[2:0]), 
                        .MPC(XLXN_108), 
                        .reset(Reset), 
                        .EDO_PRESENTE(XLXN_57[2:0]));
   REG_3ER_ESTADO XLXI_9 (.Hab(XLXN_37), 
                          .INR(XLXN_91[2:0]), 
                          .OUTR(XLXN_100[2:0]));
   MUX_4_1 XLXI_11 (.I00(X), 
                    .I01(Y), 
                    .I10(Z), 
                    .I11(I), 
                    .Prueba(XLXN_63[1:0]), 
                    .Qsel(XLXN_47));
   DEC_BCD XLXI_14 (.BCD(XLXN_57[2:0]), 
                    .SALIDA(DISPLAY[7:0]));
   Memoria XLXI_15 (.EDO_PRESENTE(XLXN_57[2:0]), 
                    .Liga(XLXN_91[2:0]), 
                    .MI(XLXN_64[2:0]), 
                    .Prueba(XLXN_63[1:0]), 
                    .SALIDAS(SALIDAS[3:0]));
   REG_3ER_ESTADO XLXI_18 (.Hab(XLXN_79), 
                           .INR(RTRANS[2:0]), 
                           .OUTR(XLXN_100[2:0]));
   CONTADOR_1S XLXI_19 (.reloj(reloj), 
                        .clock(XLXN_101));
   DisplayUnico XLXI_20 (.Disp(AN[2:0]));
endmodule
