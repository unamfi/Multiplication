VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL A(7:0)
        SIGNAL B(7:0)
        SIGNAL D(7:0)
        SIGNAL UPAL(3:0)
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7(7:0)
        SIGNAL XLXN_8(7:0)
        SIGNAL Qupa(7:0)
        SIGNAL DUPA
        SIGNAL clk
        SIGNAL UPAM(6:4)
        SIGNAL OEUPA
        SIGNAL Y0IN
        SIGNAL Q0IN
        SIGNAL Q7IN
        SIGNAL Y0OUT
        SIGNAL Y7OUT
        SIGNAL Q0OUT
        SIGNAL Q7OUT
        SIGNAL YUPA(7:0)
        SIGNAL UPAH(9:7)
        SIGNAL Cin
        SIGNAL XLXN_48
        SIGNAL XLXN_54
        SIGNAL XLXN_55
        SIGNAL XLXN_56
        SIGNAL C
        SIGNAL N
        SIGNAL V
        SIGNAL Z
        SIGNAL Fupa(7:0)
        SIGNAL kkk
        SIGNAL FC
        SIGNAL H
        SIGNAL XLXN_65
        SIGNAL XLXN_68
        SIGNAL XLXN_69
        PORT Input A(7:0)
        PORT Input B(7:0)
        PORT Input D(7:0)
        PORT Input UPAL(3:0)
        PORT Output Qupa(7:0)
        PORT Input DUPA
        PORT Input clk
        PORT Input UPAM(6:4)
        PORT Input OEUPA
        PORT Input Y0IN
        PORT Input Q0IN
        PORT Input Q7IN
        PORT Output Y0OUT
        PORT Output Y7OUT
        PORT Output Q0OUT
        PORT Output Q7OUT
        PORT Output YUPA(7:0)
        PORT Input UPAH(9:7)
        PORT Input Cin
        PORT Output C
        PORT Output N
        PORT Output V
        PORT Output Z
        PORT Output Fupa(7:0)
        PORT Output FC
        PORT Output H
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2012 10 26 19 49 46
            RECTANGLE N 64 -384 320 0 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -268 64 -244 
            LINE N 64 -256 0 -256 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -76 64 -52 
            LINE N 64 -64 0 -64 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF UPA_IN
            TIMESTAMP 2012 10 26 1 14 23
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -288 384 -288 
            LINE N 320 -208 384 -208 
            RECTANGLE N 320 -140 384 -116 
            LINE N 320 -128 384 -128 
            RECTANGLE N 320 -60 384 -36 
            LINE N 320 -48 384 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF UPA_OUT
            TIMESTAMP 2012 10 26 18 51 25
            LINE N 64 32 0 32 
            LINE N 64 -608 0 -608 
            LINE N 64 -544 0 -544 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -608 384 -608 
            LINE N 320 -496 384 -496 
            LINE N 320 -384 384 -384 
            LINE N 320 -272 384 -272 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -60 384 -36 
            LINE N 320 -48 384 -48 
            RECTANGLE N 64 -640 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF REG_FLAGS
            TIMESTAMP 2012 10 20 14 53 14
            RECTANGLE N 64 -384 320 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -352 384 -352 
            LINE N 320 -272 384 -272 
            LINE N 320 -192 384 -192 
            LINE N 320 -112 384 -112 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF CONTADOR
            TIMESTAMP 2012 10 24 23 46 8
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF and2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 144 -48 64 -48 
            LINE N 64 -144 144 -144 
            LINE N 64 -48 64 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF CONTADOR_1S
            TIMESTAMP 2012 10 26 20 10 23
            RECTANGLE N 64 -64 320 0 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 ALU
            PIN Cin Cin
            PIN UPA(6:4) UPAM(6:4)
            PIN R(7:0) XLXN_7(7:0)
            PIN S(7:0) XLXN_8(7:0)
            PIN H XLXN_48
            PIN Z XLXN_54
            PIN N XLXN_55
            PIN C XLXN_68
            PIN V XLXN_56
            PIN F(7:0) Fupa(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 UPA_IN
            PIN UPA(3:0) UPAL(3:0)
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN D(7:0) D(7:0)
            PIN Q(7:0) Qupa(7:0)
            PIN INC XLXN_5
            PIN RESET XLXN_6
            PIN R(7:0) XLXN_7(7:0)
            PIN S(7:0) XLXN_8(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 UPA_OUT
            PIN Cin Cin
            PIN clk kkk
            PIN OEUPA OEUPA
            PIN Y0IN Y0IN
            PIN Y7IN C
            PIN QOIN Q0IN
            PIN Q7IN Q7IN
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN F(7:0) Fupa(7:0)
            PIN UPA(9:7) UPAH(9:7)
            PIN Y0OUT Y0OUT
            PIN Y7OUT Y7OUT
            PIN QOOUT Q0OUT
            PIN Q7OUT Q7OUT
            PIN YUPA(7:0) YUPA(7:0)
            PIN Q(7:0) Qupa(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 CONTADOR
            PIN RESET XLXN_6
            PIN INC XLXN_5
            PIN CLK clk
            PIN FC FC
        END BLOCK
        BEGIN BLOCK XLXI_4 REG_FLAGS
            PIN C XLXN_68
            PIN N XLXN_55
            PIN V XLXN_56
            PIN Z XLXN_54
            PIN H XLXN_48
            PIN clk XLXN_65
            PIN CO C
            PIN NO N
            PIN VO V
            PIN ZO Z
            PIN H0 H
        END BLOCK
        BEGIN BLOCK XLXI_6 and2
            PIN I0 clk
            PIN I1 DUPA
            PIN O kkk
        END BLOCK
        BEGIN BLOCK XLXI_7 CONTADOR_1S
            PIN reloj kkk
            PIN clock XLXN_65
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 720 688 R0
        END INSTANCE
        BEGIN BRANCH A(7:0)
            WIRE 160 464 368 464
            WIRE 368 464 368 1424
            WIRE 368 1424 1744 1424
            WIRE 368 464 720 464
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 160 528 448 528
            WIRE 448 528 448 1488
            WIRE 448 1488 1744 1488
            WIRE 448 528 720 528
        END BRANCH
        BEGIN BRANCH D(7:0)
            WIRE 688 592 720 592
        END BRANCH
        IOMARKER 688 592 D(7:0) R180 28
        BEGIN BRANCH UPAL(3:0)
            WIRE 208 400 720 400
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1104 400 1248 400
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 1104 480 1120 480
            WIRE 1120 336 1120 480
            WIRE 1120 336 1248 336
        END BRANCH
        BEGIN BRANCH XLXN_7(7:0)
            WIRE 1104 560 1424 560
            WIRE 1424 560 1424 688
            WIRE 1424 688 1728 688
        END BRANCH
        BEGIN BRANCH Qupa(7:0)
            WIRE 640 656 720 656
            WIRE 640 656 640 1904
            WIRE 640 1904 2256 1904
            WIRE 2256 1904 2416 1904
            WIRE 2128 1600 2256 1600
            WIRE 2256 1600 2256 1904
        END BRANCH
        BEGIN BRANCH DUPA
            WIRE 160 1008 1200 1008
        END BRANCH
        BEGIN INSTANCE XLXI_3 1744 1648 R0
        END INSTANCE
        BEGIN BRANCH OEUPA
            WIRE 1712 1104 1744 1104
        END BRANCH
        IOMARKER 1712 1104 OEUPA R180 28
        BEGIN BRANCH Y0IN
            WIRE 1712 1168 1744 1168
        END BRANCH
        IOMARKER 1712 1168 Y0IN R180 28
        BEGIN BRANCH Q0IN
            WIRE 1712 1296 1744 1296
        END BRANCH
        IOMARKER 1712 1296 Q0IN R180 28
        BEGIN BRANCH Q7IN
            WIRE 1712 1360 1744 1360
        END BRANCH
        IOMARKER 1712 1360 Q7IN R180 28
        BEGIN BRANCH Y0OUT
            WIRE 2128 1040 2160 1040
        END BRANCH
        IOMARKER 2160 1040 Y0OUT R0 28
        BEGIN BRANCH Y7OUT
            WIRE 2128 1152 2160 1152
        END BRANCH
        IOMARKER 2160 1152 Y7OUT R0 28
        BEGIN BRANCH Q0OUT
            WIRE 2128 1264 2160 1264
        END BRANCH
        IOMARKER 2160 1264 Q0OUT R0 28
        BEGIN BRANCH Q7OUT
            WIRE 2128 1376 2160 1376
        END BRANCH
        IOMARKER 2160 1376 Q7OUT R0 28
        BEGIN BRANCH YUPA(7:0)
            WIRE 2128 1488 2432 1488
        END BRANCH
        BEGIN BRANCH UPAH(9:7)
            WIRE 1536 1616 1744 1616
        END BRANCH
        IOMARKER 208 400 UPAL(3:0) R180 28
        IOMARKER 160 464 A(7:0) R180 28
        IOMARKER 160 528 B(7:0) R180 28
        IOMARKER 160 1008 DUPA R180 28
        IOMARKER 128 1072 clk R180 28
        BEGIN INSTANCE XLXI_5 1248 496 R0
        END INSTANCE
        BEGIN BRANCH UPAM(6:4)
            WIRE 1664 592 1728 592
        END BRANCH
        IOMARKER 1664 592 UPAM(6:4) R180 28
        BEGIN BRANCH Cin
            WIRE 128 960 672 960
            WIRE 672 960 672 1680
            WIRE 672 1680 1744 1680
            WIRE 672 960 1712 960
            WIRE 1712 496 1712 960
            WIRE 1712 496 1728 496
        END BRANCH
        BEGIN BRANCH XLXN_55
            WIRE 2112 624 2656 624
        END BRANCH
        BEGIN INSTANCE XLXI_4 2656 912 R0
        END INSTANCE
        BEGIN BRANCH N
            WIRE 3040 640 3136 640
        END BRANCH
        BEGIN BRANCH V
            WIRE 3040 720 3136 720
        END BRANCH
        BEGIN BRANCH Z
            WIRE 3040 800 3136 800
        END BRANCH
        IOMARKER 3136 640 N R0 28
        IOMARKER 3136 720 V R0 28
        IOMARKER 3136 800 Z R0 28
        IOMARKER 128 960 Cin R180 28
        IOMARKER 2416 1904 Qupa(7:0) R0 28
        IOMARKER 2432 1488 YUPA(7:0) R0 28
        IOMARKER 1536 1616 UPAH(9:7) R180 28
        IOMARKER 2960 336 FC R0 28
        BEGIN BRANCH FC
            WIRE 1632 336 2960 336
        END BRANCH
        INSTANCE XLXI_6 1200 1136 R0
        BEGIN BRANCH H
            WIRE 3040 880 3152 880
        END BRANCH
        BEGIN BRANCH XLXN_56
            WIRE 2112 752 2560 752
            WIRE 2560 688 2560 752
            WIRE 2560 688 2656 688
        END BRANCH
        BEGIN BRANCH XLXN_54
            WIRE 2112 544 2576 544
            WIRE 2576 544 2576 752
            WIRE 2576 752 2656 752
            WIRE 2112 544 2112 560
        END BRANCH
        BEGIN BRANCH XLXN_48
            WIRE 2112 496 2592 496
            WIRE 2592 496 2592 816
            WIRE 2592 816 2656 816
        END BRANCH
        BEGIN BRANCH XLXN_8(7:0)
            WIRE 1104 640 1392 640
            WIRE 1392 640 1392 784
            WIRE 1392 784 1728 784
        END BRANCH
        BEGIN INSTANCE XLXI_1 1728 848 R0
        END INSTANCE
        IOMARKER 2528 1824 Fupa(7:0) R0 28
        BEGIN BRANCH Fupa(7:0)
            WIRE 1664 1552 1744 1552
            WIRE 1664 1552 1664 1824
            WIRE 1664 1824 2368 1824
            WIRE 2368 1824 2528 1824
            WIRE 2112 816 2368 816
            WIRE 2368 816 2368 1824
        END BRANCH
        IOMARKER 3152 880 H R0 28
        BEGIN INSTANCE XLXI_7 1968 928 R0
        END INSTANCE
        BEGIN BRANCH XLXN_65
            WIRE 2352 896 2496 896
            WIRE 2496 880 2496 896
            WIRE 2496 880 2656 880
        END BRANCH
        BEGIN BRANCH C
            WIRE 1216 1232 1744 1232
            WIRE 1216 1232 1216 2144
            WIRE 1216 2144 3072 2144
            WIRE 3040 560 3072 560
            WIRE 3072 560 3072 2144
            WIRE 3072 560 3152 560
        END BRANCH
        BEGIN BRANCH XLXN_68
            WIRE 2112 688 2384 688
            WIRE 2384 560 2384 688
            WIRE 2384 560 2656 560
        END BRANCH
        IOMARKER 3152 560 C R0 28
        BEGIN BRANCH kkk
            WIRE 1456 1040 1552 1040
            WIRE 1552 1040 1744 1040
            WIRE 1552 896 1968 896
            WIRE 1552 896 1552 1040
        END BRANCH
        BEGIN BRANCH clk
            WIRE 128 1072 1136 1072
            WIRE 1136 1072 1200 1072
            WIRE 1136 464 1248 464
            WIRE 1136 464 1136 896
            WIRE 1136 896 1136 1072
        END BRANCH
    END SHEET
END SCHEMATIC
