VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL EB0
        SIGNAL EB1
        SIGNAL WB
        SIGNAL WA
        SIGNAL EA0
        SIGNAL XLXN_18(7:0)
        SIGNAL XLXN_27(7:0)
        SIGNAL ZA
        SIGNAL NA
        SIGNAL Ao_A(7:0)
        SIGNAL Bo_A(7:0)
        SIGNAL Co_A(7:0)
        SIGNAL Ao_B(7:0)
        SIGNAL Bo_B(7:0)
        SIGNAL Co_B(7:0)
        SIGNAL ZB
        SIGNAL NB
        SIGNAL DUPA
        SIGNAL OEUPA
        SIGNAL UPAL(3:0)
        SIGNAL UPAM(6:4)
        SIGNAL UPAH(9:7)
        SIGNAL DATO_A(7:0)
        SIGNAL DATO_B(7:0)
        SIGNAL Fc
        SIGNAL Qo
        SIGNAL reset
        SIGNAL EA1
        SIGNAL reloj
        SIGNAL Ci_Acc(7:0)
        SIGNAL D_upa(7:0)
        SIGNAL Cin
        SIGNAL Y0o
        SIGNAL XLXN_70
        SIGNAL Yupa(7:0)
        SIGNAL Cout
        PORT Output ZA
        PORT Output NA
        PORT Output Ao_A(7:0)
        PORT Output Bo_A(7:0)
        PORT Output Co_A(7:0)
        PORT Output Ao_B(7:0)
        PORT Output Bo_B(7:0)
        PORT Output Co_B(7:0)
        PORT Output ZB
        PORT Output NB
        PORT Input DATO_A(7:0)
        PORT Input DATO_B(7:0)
        PORT Input reset
        PORT Input reloj
        PORT Input Ci_Acc(7:0)
        PORT Input D_upa(7:0)
        PORT Input Cin
        PORT Output Cout
        BEGIN BLOCKDEF MULTIPLICACION
            TIMESTAMP 2012 10 25 23 19 3
            LINE N 64 1568 0 1568 
            LINE N 64 1632 0 1632 
            RECTANGLE N 0 1684 64 1708 
            LINE N 64 1696 0 1696 
            RECTANGLE N 0 1748 64 1772 
            LINE N 64 1760 0 1760 
            RECTANGLE N 320 1556 384 1580 
            LINE N 320 1568 384 1568 
            RECTANGLE N 320 1620 384 1644 
            LINE N 320 1632 384 1632 
            LINE N 320 160 384 160 
            LINE N 320 288 384 288 
            LINE N 320 352 384 352 
            LINE N 320 416 384 416 
            LINE N 320 480 384 480 
            LINE N 320 544 384 544 
            LINE N 320 928 384 928 
            LINE N 320 992 384 992 
            RECTANGLE N 320 1364 384 1388 
            LINE N 320 1376 384 1376 
            RECTANGLE N 320 1428 384 1452 
            LINE N 320 1440 384 1440 
            RECTANGLE N 320 1492 384 1516 
            LINE N 320 1504 384 1504 
            LINE N 64 -608 0 -608 
            LINE N 64 -416 0 -416 
            RECTANGLE N 64 -640 320 1856 
        END BLOCKDEF
        BEGIN BLOCKDEF ACC
            TIMESTAMP 2012 10 26 0 2 14
            RECTANGLE N 0 84 64 108 
            LINE N 64 96 0 96 
            RECTANGLE N 0 148 64 172 
            LINE N 64 160 0 160 
            RECTANGLE N 0 212 64 236 
            LINE N 64 224 0 224 
            RECTANGLE N 320 84 384 108 
            LINE N 320 96 384 96 
            RECTANGLE N 320 148 384 172 
            LINE N 320 160 384 160 
            RECTANGLE N 320 212 384 236 
            LINE N 320 224 384 224 
            LINE N 64 -288 0 -288 
            LINE N 64 -208 0 -208 
            LINE N 64 -128 0 -128 
            LINE N 64 -48 0 -48 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            RECTANGLE N 64 -320 320 256 
        END BLOCKDEF
        BEGIN BLOCKDEF UPA
            TIMESTAMP 2012 10 26 19 50 11
            RECTANGLE N 320 148 384 172 
            LINE N 320 160 384 160 
            RECTANGLE N 320 84 384 108 
            LINE N 320 96 384 96 
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
            RECTANGLE N 0 -812 64 -788 
            LINE N 64 -800 0 -800 
            RECTANGLE N 0 -748 64 -724 
            LINE N 64 -736 0 -736 
            RECTANGLE N 0 -684 64 -660 
            LINE N 64 -672 0 -672 
            RECTANGLE N 0 -620 64 -596 
            LINE N 64 -608 0 -608 
            LINE N 64 -544 0 -544 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -800 384 -800 
            LINE N 320 -736 384 -736 
            LINE N 320 -672 384 -672 
            LINE N 320 -608 384 -608 
            LINE N 320 -544 384 -544 
            RECTANGLE N 320 -492 384 -468 
            LINE N 320 -480 384 -480 
            LINE N 320 -416 384 -416 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            RECTANGLE N 64 -832 320 256 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF IND_FISICA
            TIMESTAMP 2012 10 25 1 30 0
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 MULTIPLICACION
            PIN reset reset
            PIN clk reloj
            PIN WB WB
            PIN WA WA
            PIN EA0 EA0
            PIN EA1 EA1
            PIN EB0 EB0
            PIN EB1 EB1
            PIN DUPA DUPA
            PIN OEUPA OEUPA
            PIN UPAM(6:4) UPAM(6:4)
            PIN UPAH(9:7) UPAH(9:7)
            PIN UPAL(3:0) UPAL(3:0)
            PIN Fc Fc
            PIN Qo Qo
            PIN DATO_A(7:0) DATO_A(7:0)
            PIN DATO_B(7:0) DATO_B(7:0)
            PIN BUS_A(7:0) XLXN_18(7:0)
            PIN BUS_B(7:0) XLXN_27(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 ACC
            PIN clk reloj
            PIN NW WA
            PIN E0 EA0
            PIN E1 EA1
            PIN Ai(7:0) XLXN_18(7:0)
            PIN Bi(7:0) XLXN_27(7:0)
            PIN Ci(7:0) Ci_Acc(7:0)
            PIN Z ZA
            PIN N NA
            PIN Ao(7:0) Ao_A(7:0)
            PIN Bo(7:0) Bo_A(7:0)
            PIN Co(7:0) Co_A(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 ACC
            PIN clk reloj
            PIN NW WB
            PIN E0 EB0
            PIN E1 EB1
            PIN Ai(7:0) XLXN_18(7:0)
            PIN Bi(7:0) XLXN_27(7:0)
            PIN Ci(7:0) Ci_Acc(7:0)
            PIN Z ZB
            PIN N NB
            PIN Ao(7:0) Ao_B(7:0)
            PIN Bo(7:0) Bo_B(7:0)
            PIN Co(7:0) Co_B(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 UPA
            PIN A(7:0) Co_A(7:0)
            PIN B(7:0) Co_B(7:0)
            PIN D(7:0) D_upa(7:0)
            PIN UPAL(3:0) UPAL(3:0)
            PIN DUPA DUPA
            PIN clk reloj
            PIN UPAM(6:4) UPAM(6:4)
            PIN OEUPA OEUPA
            PIN Y0IN XLXN_70
            PIN Q0IN XLXN_70
            PIN Q7IN Y0o
            PIN UPAH(9:7) UPAH(9:7)
            PIN Cin Cin
            PIN Qupa(7:0)
            PIN Y0OUT Y0o
            PIN Y7OUT
            PIN Q0OUT Qo
            PIN Q7OUT
            PIN YUPA(7:0) Yupa(7:0)
            PIN N
            PIN V
            PIN Z
            PIN Fupa(7:0)
            PIN FC Fc
            PIN H
            PIN C Cout
        END BLOCK
        BEGIN BLOCK XLXI_5 gnd
            PIN G XLXN_70
        END BLOCK
        BEGIN BLOCK XLXI_6 IND_FISICA
            PIN YUPA(7:0) Yupa(7:0)
            PIN A(7:0) XLXN_18(7:0)
            PIN B(7:0) XLXN_27(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 1392 496 R0
        END INSTANCE
        BEGIN BRANCH XLXN_18(7:0)
            WIRE 544 2304 1344 2304
            WIRE 1344 592 1392 592
            WIRE 1344 592 1344 800
            WIRE 1344 800 1344 1280
            WIRE 1344 1280 1456 1280
            WIRE 1344 1280 1344 2304
            WIRE 1344 800 2768 800
        END BRANCH
        BEGIN INSTANCE XLXI_3 1456 1184 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 160 736 R0
        END INSTANCE
        BEGIN BRANCH XLXN_27(7:0)
            WIRE 544 2368 1296 2368
            WIRE 1296 656 1392 656
            WIRE 1296 656 1296 832
            WIRE 1296 832 2768 832
            WIRE 2768 832 2768 864
            WIRE 1296 832 1296 1344
            WIRE 1296 1344 1456 1344
            WIRE 1296 1344 1296 2368
        END BRANCH
        BEGIN DISPLAY 1568 372 TEXT A
            FONT 52 "Arial"
            TEXTCOLOR 255 0 0
        END DISPLAY
        BEGIN DISPLAY 1628 1112 TEXT B
            FONT 52 "Arial"
            TEXTCOLOR 255 0 0
        END DISPLAY
        BEGIN BRANCH ZA
            WIRE 1776 208 1808 208
        END BRANCH
        IOMARKER 1808 208 ZA R0 28
        BEGIN BRANCH NA
            WIRE 1776 272 1808 272
        END BRANCH
        IOMARKER 1808 272 NA R0 28
        BEGIN BRANCH Ao_A(7:0)
            WIRE 1776 592 1808 592
        END BRANCH
        IOMARKER 1808 592 Ao_A(7:0) R0 28
        BEGIN BRANCH Bo_A(7:0)
            WIRE 1776 656 1808 656
        END BRANCH
        IOMARKER 1808 656 Bo_A(7:0) R0 28
        BEGIN BRANCH Co_A(7:0)
            WIRE 1776 720 2096 720
            WIRE 2096 720 2096 1216
            WIRE 2096 1216 2608 1216
            WIRE 2096 720 2272 720
        END BRANCH
        BEGIN BRANCH Bo_B(7:0)
            WIRE 1840 1344 1872 1344
        END BRANCH
        IOMARKER 1872 1344 Bo_B(7:0) R0 28
        BEGIN BRANCH Co_B(7:0)
            WIRE 1840 1408 2096 1408
            WIRE 2096 1408 2208 1408
            WIRE 2096 1280 2608 1280
            WIRE 2096 1280 2096 1408
        END BRANCH
        BEGIN BRANCH ZB
            WIRE 1840 896 1872 896
        END BRANCH
        IOMARKER 1872 896 ZB R0 28
        BEGIN BRANCH NB
            WIRE 1840 960 1872 960
        END BRANCH
        IOMARKER 1872 960 NB R0 28
        BEGIN BRANCH DATO_A(7:0)
            WIRE 128 2432 160 2432
        END BRANCH
        IOMARKER 128 2432 DATO_A(7:0) R180 28
        BEGIN BRANCH DATO_B(7:0)
            WIRE 128 2496 160 2496
        END BRANCH
        IOMARKER 128 2496 DATO_B(7:0) R180 28
        BEGIN BRANCH reset
            WIRE 128 128 160 128
        END BRANCH
        IOMARKER 128 128 reset R180 28
        BEGIN BRANCH reloj
            WIRE 96 48 208 48
            WIRE 208 48 208 80
            WIRE 208 48 800 48
            WIRE 800 48 800 448
            WIRE 800 448 1392 448
            WIRE 800 448 800 1136
            WIRE 800 1136 1456 1136
            WIRE 800 48 2592 48
            WIRE 2592 48 2592 1536
            WIRE 2592 1536 2608 1536
            WIRE 144 80 208 80
            WIRE 144 80 144 320
            WIRE 144 320 160 320
        END BRANCH
        IOMARKER 96 48 reloj R180 28
        BEGIN BRANCH Ci_Acc(7:0)
            WIRE 736 720 880 720
            WIRE 880 720 1392 720
            WIRE 880 720 880 1408
            WIRE 880 1408 1456 1408
        END BRANCH
        IOMARKER 736 720 Ci_Acc(7:0) R180 28
        BEGIN BRANCH Ao_B(7:0)
            WIRE 1840 1280 1872 1280
        END BRANCH
        IOMARKER 1872 1280 Ao_B(7:0) R0 28
        BEGIN INSTANCE XLXI_4 2608 2016 R0
        END INSTANCE
        IOMARKER 2208 1408 Co_B(7:0) R0 28
        IOMARKER 2272 720 Co_A(7:0) R0 28
        BEGIN BRANCH D_upa(7:0)
            WIRE 2576 1344 2608 1344
        END BRANCH
        IOMARKER 2576 1344 D_upa(7:0) R180 28
        BEGIN BRANCH Cin
            WIRE 2576 1600 2608 1600
        END BRANCH
        IOMARKER 2576 1600 Cin R180 28
        INSTANCE XLXI_5 2400 2224 R0
        BEGIN BRANCH XLXN_70
            WIRE 2464 1792 2608 1792
            WIRE 2464 1792 2464 1920
            WIRE 2464 1920 2464 2096
            WIRE 2464 1920 2608 1920
        END BRANCH
        BEGIN INSTANCE XLXI_6 3152 896 M0
        END INSTANCE
        BEGIN BRANCH WA
            WIRE 544 1024 944 1024
            WIRE 944 208 944 1024
            WIRE 944 208 1392 208
        END BRANCH
        BEGIN BRANCH EA0
            WIRE 544 1088 992 1088
            WIRE 992 288 992 1088
            WIRE 992 288 1392 288
        END BRANCH
        BEGIN BRANCH EA1
            WIRE 544 1152 1024 1152
            WIRE 1024 368 1024 1152
            WIRE 1024 368 1392 368
        END BRANCH
        BEGIN BRANCH EB1
            WIRE 544 1280 1088 1280
            WIRE 1088 1056 1088 1280
            WIRE 1088 1056 1456 1056
        END BRANCH
        BEGIN BRANCH EB0
            WIRE 544 1216 1056 1216
            WIRE 1056 976 1056 1216
            WIRE 1056 976 1456 976
        END BRANCH
        BEGIN BRANCH WB
            WIRE 544 896 1456 896
        END BRANCH
        BEGIN BRANCH OEUPA
            WIRE 544 1728 2608 1728
        END BRANCH
        BEGIN BRANCH DUPA
            WIRE 544 1664 1248 1664
            WIRE 1248 1472 2608 1472
            WIRE 1248 1472 1248 1664
        END BRANCH
        BEGIN BRANCH UPAL(3:0)
            WIRE 544 2112 560 2112
            WIRE 560 1984 2416 1984
            WIRE 560 1984 560 2112
            WIRE 2416 1408 2608 1408
            WIRE 2416 1408 2416 1984
        END BRANCH
        BEGIN BRANCH UPAM(6:4)
            WIRE 544 2176 608 2176
            WIRE 608 1920 608 2176
            WIRE 608 1920 2368 1920
            WIRE 2368 1664 2608 1664
            WIRE 2368 1664 2368 1920
        END BRANCH
        BEGIN BRANCH UPAH(9:7)
            WIRE 544 2240 656 2240
            WIRE 656 2048 656 2240
            WIRE 656 2048 2608 2048
        END BRANCH
        BEGIN BRANCH Fc
            WIRE 144 2304 160 2304
            WIRE 144 2304 144 2672
            WIRE 144 2672 3408 2672
            WIRE 2992 1216 3408 1216
            WIRE 3408 1216 3408 2672
        END BRANCH
        BEGIN BRANCH Y0o
            WIRE 2528 1984 2608 1984
            WIRE 2528 1984 2528 2480
            WIRE 2528 2480 3168 2480
            WIRE 2992 1280 3168 1280
            WIRE 3168 1280 3168 2480
        END BRANCH
        BEGIN BRANCH Qo
            WIRE 96 2368 160 2368
            WIRE 96 2368 96 2640
            WIRE 96 2640 3344 2640
            WIRE 2992 1408 3344 1408
            WIRE 3344 1408 3344 2640
        END BRANCH
        BEGIN BRANCH Cout
            WIRE 2992 1600 3008 1600
            WIRE 3008 1600 3040 1600
        END BRANCH
        IOMARKER 3040 1600 Cout R0 28
        BEGIN BRANCH Yupa(7:0)
            WIRE 2992 1536 3232 1536
            WIRE 3152 800 3232 800
            WIRE 3232 800 3232 1536
        END BRANCH
    END SHEET
END SCHEMATIC
