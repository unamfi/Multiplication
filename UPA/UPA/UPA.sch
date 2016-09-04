VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_2
        SIGNAL XLXN_4
        SIGNAL XLXN_9(7:0)
        SIGNAL XLXN_10(7:0)
        SIGNAL A(7:0)
        SIGNAL UPA(3:0)
        SIGNAL B(7:0)
        SIGNAL D(7:0)
        SIGNAL UPAM(6:4)
        SIGNAL Cin
        SIGNAL XLXN_19
        SIGNAL XLXN_20
        SIGNAL XLXN_22
        SIGNAL XLXN_23
        SIGNAL XLXN_24
        SIGNAL DUPA
        SIGNAL clk
        SIGNAL XLXN_27
        SIGNAL XLXN_28(7:0)
        SIGNAL OEUPA
        SIGNAL Y0
        SIGNAL Y1
        SIGNAL Q0
        SIGNAL Q7
        SIGNAL YUPA(7:0)
        SIGNAL XLXN_44(7:0)
        SIGNAL FC
        SIGNAL Y0o
        SIGNAL Y7o
        SIGNAL Q0o
        SIGNAL Q7o
        SIGNAL C
        SIGNAL N
        SIGNAL V
        SIGNAL Z
        SIGNAL H
        SIGNAL UPAH(9:7)
        SIGNAL XLXN_46
        SIGNAL XLXN_49
        PORT Input A(7:0)
        PORT Input UPA(3:0)
        PORT Input B(7:0)
        PORT Input D(7:0)
        PORT Input UPAM(6:4)
        PORT Input Cin
        PORT Input DUPA
        PORT Input clk
        PORT Input OEUPA
        PORT Input Y0
        PORT Input Y1
        PORT Input Q0
        PORT Input Q7
        PORT Output YUPA(7:0)
        PORT Output FC
        PORT Output Y0o
        PORT Output Y7o
        PORT Output Q0o
        PORT Output Q7o
        PORT Output C
        PORT Output N
        PORT Output V
        PORT Output Z
        PORT Output H
        PORT Input UPAH(9:7)
        BEGIN BLOCKDEF UPA_IN
            TIMESTAMP 2012 10 20 9 26 14
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
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2012 10 20 9 31 48
            LINE N 64 32 0 32 
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
            RECTANGLE N 64 -384 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF UPA_OUT
            TIMESTAMP 2012 10 20 9 36 40
            RECTANGLE N 64 -640 320 0 
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
        END BLOCKDEF
        BEGIN BLOCKDEF CONTADOR
            TIMESTAMP 2012 10 20 9 27 13
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF REG_FLAGS
            TIMESTAMP 2012 10 20 13 33 55
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
        BEGIN BLOCK XLXI_1 UPA_IN
            PIN UPA(3:0) UPA(3:0)
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN D(7:0) D(7:0)
            PIN Q(7:0) XLXN_44(7:0)
            PIN INC XLXN_2
            PIN RESET XLXN_4
            PIN R(7:0) XLXN_10(7:0)
            PIN S(7:0) XLXN_9(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 ALU
            PIN UPA(6:4) UPAM(6:4)
            PIN R(7:0) XLXN_10(7:0)
            PIN S(7:0) XLXN_9(7:0)
            PIN H XLXN_19
            PIN Z XLXN_24
            PIN N XLXN_23
            PIN C XLXN_22
            PIN V XLXN_20
            PIN F(7:0) XLXN_28(7:0)
            PIN Cin Cin
        END BLOCK
        BEGIN BLOCK XLXI_3 UPA_OUT
            PIN clk XLXN_27
            PIN OEUPA OEUPA
            PIN Y0IN Y0
            PIN Y7IN Y1
            PIN QOIN Q0
            PIN Q7IN Q7
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN F(7:0) XLXN_28(7:0)
            PIN UPA(9:7) UPAH(9:7)
            PIN Y0OUT Y0o
            PIN Y7OUT Y7o
            PIN QOOUT Q0o
            PIN Q7OUT Q7o
            PIN YUPA(7:0) YUPA(7:0)
            PIN Q(7:0) XLXN_44(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 CONTADOR
            PIN RESET XLXN_4
            PIN INC XLXN_2
            PIN CLK clk
            PIN FC FC
        END BLOCK
        BEGIN BLOCK XLXI_5 REG_FLAGS
            PIN C XLXN_22
            PIN N XLXN_23
            PIN V XLXN_20
            PIN Z XLXN_24
            PIN H XLXN_19
            PIN clk XLXN_27
            PIN CO C
            PIN NO N
            PIN VO V
            PIN ZO Z
            PIN H0 H
        END BLOCK
        BEGIN BLOCK XLXI_6 and2
            PIN I0 clk
            PIN I1 DUPA
            PIN O XLXN_27
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 960 464 R0
        END INSTANCE
        BEGIN BRANCH XLXN_9(7:0)
            WIRE 1344 416 1360 416
            WIRE 1360 416 1360 768
            WIRE 1360 768 1632 768
        END BRANCH
        BEGIN BRANCH XLXN_10(7:0)
            WIRE 1344 336 1488 336
            WIRE 1488 336 1488 672
            WIRE 1488 672 1632 672
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 720 240 816 240
            WIRE 816 240 960 240
            WIRE 816 240 816 1520
            WIRE 816 1520 2400 1520
        END BRANCH
        BEGIN BRANCH UPA(3:0)
            WIRE 720 176 960 176
        END BRANCH
        BEGIN BRANCH B(7:0)
            WIRE 720 304 864 304
            WIRE 864 304 960 304
            WIRE 864 304 864 1584
            WIRE 864 1584 2400 1584
        END BRANCH
        BEGIN BRANCH D(7:0)
            WIRE 720 368 960 368
        END BRANCH
        IOMARKER 720 240 A(7:0) R180 28
        IOMARKER 720 176 UPA(3:0) R180 28
        IOMARKER 720 304 B(7:0) R180 28
        IOMARKER 720 368 D(7:0) R180 28
        BEGIN BRANCH UPAM(6:4)
            WIRE 720 576 1632 576
        END BRANCH
        IOMARKER 720 576 UPAM(6:4) R180 28
        BEGIN INSTANCE XLXI_2 1632 832 R0
        END INSTANCE
        BEGIN BRANCH Cin
            WIRE 672 864 1632 864
        END BRANCH
        IOMARKER 672 864 Cin R180 28
        BEGIN BRANCH XLXN_19
            WIRE 2016 480 2400 480
            WIRE 2400 480 2400 736
            WIRE 2400 736 2448 736
        END BRANCH
        BEGIN INSTANCE XLXI_5 2448 832 R0
        END INSTANCE
        BEGIN BRANCH XLXN_20
            WIRE 2016 736 2064 736
            WIRE 2064 608 2064 736
            WIRE 2064 608 2448 608
        END BRANCH
        BEGIN BRANCH XLXN_22
            WIRE 2016 672 2096 672
            WIRE 2096 464 2096 672
            WIRE 2096 464 2448 464
            WIRE 2448 464 2448 480
        END BRANCH
        BEGIN BRANCH XLXN_23
            WIRE 2016 608 2048 608
            WIRE 2048 528 2048 608
            WIRE 2048 528 2448 528
            WIRE 2448 528 2448 544
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 2016 544 2432 544
            WIRE 2432 544 2432 672
            WIRE 2432 672 2448 672
        END BRANCH
        INSTANCE XLXI_6 1520 1232 R0
        BEGIN BRANCH DUPA
            WIRE 704 1104 1520 1104
        END BRANCH
        BEGIN BRANCH clk
            WIRE 656 1168 1392 1168
            WIRE 1392 1168 1520 1168
            WIRE 1392 320 1616 320
            WIRE 1392 320 1392 1168
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1776 1136 2368 1136
            WIRE 2368 1136 2400 1136
            WIRE 2368 800 2448 800
            WIRE 2368 800 2368 1136
        END BRANCH
        BEGIN BRANCH XLXN_28(7:0)
            WIRE 2016 800 2032 800
            WIRE 2032 800 2032 1648
            WIRE 2032 1648 2400 1648
        END BRANCH
        BEGIN INSTANCE XLXI_3 2400 1744 R0
        END INSTANCE
        BEGIN BRANCH OEUPA
            WIRE 2368 1200 2400 1200
        END BRANCH
        IOMARKER 2368 1200 OEUPA R180 28
        BEGIN BRANCH Y0
            WIRE 2368 1264 2400 1264
        END BRANCH
        IOMARKER 2368 1264 Y0 R180 28
        BEGIN BRANCH Y1
            WIRE 2368 1328 2400 1328
        END BRANCH
        IOMARKER 2368 1328 Y1 R180 28
        BEGIN BRANCH Q0
            WIRE 2368 1392 2400 1392
        END BRANCH
        IOMARKER 2368 1392 Q0 R180 28
        BEGIN BRANCH Q7
            WIRE 2368 1456 2400 1456
        END BRANCH
        IOMARKER 2368 1456 Q7 R180 28
        BEGIN BRANCH YUPA(7:0)
            WIRE 2784 1584 2816 1584
        END BRANCH
        IOMARKER 2816 1584 YUPA(7:0) R0 28
        BEGIN BRANCH XLXN_44(7:0)
            WIRE 928 432 928 960
            WIRE 928 960 3456 960
            WIRE 3456 960 3456 1696
            WIRE 928 432 960 432
            WIRE 2784 1696 3456 1696
        END BRANCH
        BEGIN BRANCH FC
            WIRE 2000 192 2848 192
        END BRANCH
        BEGIN BRANCH Y0o
            WIRE 2784 1136 2816 1136
        END BRANCH
        IOMARKER 2816 1136 Y0o R0 28
        BEGIN BRANCH Y7o
            WIRE 2784 1248 2816 1248
        END BRANCH
        IOMARKER 2816 1248 Y7o R0 28
        BEGIN BRANCH Q0o
            WIRE 2784 1360 2816 1360
        END BRANCH
        IOMARKER 2816 1360 Q0o R0 28
        BEGIN BRANCH Q7o
            WIRE 2784 1472 2816 1472
        END BRANCH
        IOMARKER 2816 1472 Q7o R0 28
        BEGIN BRANCH C
            WIRE 2832 480 2864 480
        END BRANCH
        IOMARKER 2864 480 C R0 28
        BEGIN BRANCH N
            WIRE 2832 560 2864 560
        END BRANCH
        IOMARKER 2864 560 N R0 28
        BEGIN BRANCH V
            WIRE 2832 640 2864 640
        END BRANCH
        IOMARKER 2864 640 V R0 28
        BEGIN BRANCH Z
            WIRE 2832 720 2864 720
        END BRANCH
        IOMARKER 2864 720 Z R0 28
        BEGIN BRANCH H
            WIRE 2832 800 2864 800
        END BRANCH
        IOMARKER 2864 800 H R0 28
        BEGIN BRANCH UPAH(9:7)
            WIRE 2368 1712 2400 1712
        END BRANCH
        IOMARKER 2368 1712 UPAH(9:7) R180 28
        BEGIN BRANCH XLXN_2
            WIRE 1344 176 1600 176
            WIRE 1600 176 1600 256
            WIRE 1600 256 1616 256
        END BRANCH
        BEGIN INSTANCE XLXI_4 1616 352 R0
        END INSTANCE
        BEGIN BRANCH XLXN_4
            WIRE 1344 256 1360 256
            WIRE 1360 192 1616 192
            WIRE 1360 192 1360 256
        END BRANCH
        IOMARKER 2848 192 FC R0 28
        IOMARKER 704 1104 DUPA R180 28
        IOMARKER 656 1168 clk R180 28
    END SHEET
END SCHEMATIC
