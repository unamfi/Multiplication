VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_37
        SIGNAL Reset
        SIGNAL XLXN_47
        SIGNAL XLXN_63(1:0)
        SIGNAL XLXN_64(2:0)
        SIGNAL I
        SIGNAL FC
        SIGNAL Q0
        SIGNAL XLXN_79
        SIGNAL reloj
        SIGNAL XLXN_107
        SIGNAL XLXN_108
        SIGNAL XLXN_111(3:0)
        SIGNAL WB
        SIGNAL WA
        SIGNAL E0A
        SIGNAL E1A
        SIGNAL EOB
        SIGNAL E1B
        SIGNAL DUPA
        SIGNAL OEUPA
        SIGNAL HBA
        SIGNAL HBB
        SIGNAL INT(3:0)
        SIGNAL TRANS(3:0)
        SIGNAL XLXN_115(3:0)
        SIGNAL AUX
        SIGNAL XLXN_125(3:0)
        SIGNAL UPAL(3:0)
        SIGNAL UPAM(6:4)
        SIGNAL UPAH(9:7)
        PORT Input Reset
        PORT Input I
        PORT Input FC
        PORT Input Q0
        PORT Input reloj
        PORT Output WB
        PORT Output WA
        PORT Output E0A
        PORT Output E1A
        PORT Output EOB
        PORT Output E1B
        PORT Output DUPA
        PORT Output OEUPA
        PORT Output HBA
        PORT Output HBB
        PORT Input INT(3:0)
        PORT Input TRANS(3:0)
        PORT Input AUX
        PORT Output UPAL(3:0)
        PORT Output UPAM(6:4)
        PORT Output UPAH(9:7)
        BEGIN BLOCKDEF REG_3ER_ESTADO
            TIMESTAMP 2012 10 25 8 20 2
            RECTANGLE N 0 20 64 44 
            LINE N 64 32 0 32 
            RECTANGLE N 320 20 384 44 
            LINE N 320 32 384 32 
            LINE N 64 -96 0 -96 
            RECTANGLE N 64 -128 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF Logica
            TIMESTAMP 2012 9 20 3 26 0
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF Secuenciador
            TIMESTAMP 2012 10 20 14 40 38
            RECTANGLE N 64 -256 432 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 432 -236 496 -212 
            LINE N 432 -224 496 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX_4_1
            TIMESTAMP 2012 9 21 1 0 32
            RECTANGLE N 64 -320 320 0 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF Memoria
            TIMESTAMP 2012 10 25 22 53 39
            RECTANGLE N 448 724 512 748 
            LINE N 448 736 512 736 
            RECTANGLE N 448 788 512 812 
            LINE N 448 800 512 800 
            RECTANGLE N 448 852 512 876 
            LINE N 448 864 512 864 
            LINE N 448 32 512 32 
            LINE N 448 96 512 96 
            LINE N 448 160 512 160 
            LINE N 448 224 512 224 
            LINE N 448 288 512 288 
            LINE N 448 352 512 352 
            LINE N 448 416 512 416 
            LINE N 448 480 512 480 
            LINE N 448 544 512 544 
            LINE N 448 608 512 608 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 448 -236 512 -212 
            LINE N 448 -224 512 -224 
            RECTANGLE N 448 -172 512 -148 
            LINE N 448 -160 512 -160 
            RECTANGLE N 448 -108 512 -84 
            LINE N 448 -96 512 -96 
            RECTANGLE N 64 -256 448 896 
        END BLOCKDEF
        BEGIN BLOCK XLXI_4 Logica
            PIN Qsel XLXN_47
            PIN MI(2:0) XLXN_64(2:0)
            PIN VECT XLXN_107
            PIN MAPS XLXN_79
            PIN MPC XLXN_108
            PIN PL XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_3 REG_3ER_ESTADO
            PIN Hab XLXN_107
            PIN INR(3:0) INT(3:0)
            PIN OUTR(3:0) XLXN_125(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 Secuenciador
            PIN clk reloj
            PIN reset Reset
            PIN MPC XLXN_108
            PIN INREG(3:0) XLXN_125(3:0)
            PIN EDO_PRESENTE(3:0) XLXN_111(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 REG_3ER_ESTADO
            PIN Hab XLXN_37
            PIN INR(3:0) XLXN_115(3:0)
            PIN OUTR(3:0) XLXN_125(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 Memoria
            PIN EDO_PRESENTE(3:0) XLXN_111(3:0)
            PIN WB WB
            PIN WA WA
            PIN E0A E0A
            PIN E1A E1A
            PIN E0B EOB
            PIN E1B E1B
            PIN DUPA DUPA
            PIN OEUPA OEUPA
            PIN HBA HBA
            PIN HBB HBB
            PIN Liga(3:0) XLXN_115(3:0)
            PIN Prueba(1:0) XLXN_63(1:0)
            PIN MI(2:0) XLXN_64(2:0)
            PIN UPAL(3:0) UPAL(3:0)
            PIN UPAM(6:4) UPAM(6:4)
            PIN UPAH(9:7) UPAH(9:7)
        END BLOCK
        BEGIN BLOCK XLXI_11 MUX_4_1
            PIN I00 AUX
            PIN I01 I
            PIN I10 FC
            PIN I11 Q0
            PIN Prueba(1:0) XLXN_63(1:0)
            PIN Qsel XLXN_47
        END BLOCK
        BEGIN BLOCK XLXI_18 REG_3ER_ESTADO
            PIN Hab XLXN_79
            PIN INR(3:0) TRANS(3:0)
            PIN OUTR(3:0) XLXN_125(3:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_6 1440 544 R0
        END INSTANCE
        BEGIN BRANCH Reset
            WIRE 1408 384 1440 384
        END BRANCH
        IOMARKER 1408 384 Reset R180 28
        BEGIN BRANCH XLXN_64(2:0)
            WIRE 1680 1360 1680 1376
            WIRE 1680 1376 2928 1376
            WIRE 2752 448 2928 448
            WIRE 2928 448 2928 1376
        END BRANCH
        BEGIN BRANCH I
            WIRE 3040 576 3088 576
        END BRANCH
        BEGIN BRANCH FC
            WIRE 3072 512 3088 512
        END BRANCH
        BEGIN BRANCH Q0
            WIRE 3072 448 3088 448
        END BRANCH
        IOMARKER 3040 576 I R180 28
        BEGIN BRANCH XLXN_79
            WIRE 512 480 528 480
            WIRE 512 480 512 656
            WIRE 512 656 1552 656
            WIRE 1552 656 1552 976
        END BRANCH
        BEGIN INSTANCE XLXI_18 528 576 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1712 1360 R270
        END INSTANCE
        BEGIN BRANCH XLXN_47
            WIRE 1488 1360 1488 1456
            WIRE 1488 1456 3504 1456
            WIRE 3472 640 3504 640
            WIRE 3504 640 3504 1456
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 1680 960 1680 976
            WIRE 1680 960 2224 960
            WIRE 2160 720 2224 720
            WIRE 2224 720 2224 960
        END BRANCH
        BEGIN BRANCH XLXN_63(1:0)
            WIRE 2752 384 3072 384
            WIRE 3072 384 3088 384
        END BRANCH
        BEGIN BRANCH reloj
            WIRE 192 320 1424 320
            WIRE 1424 320 1440 320
        END BRANCH
        BEGIN BRANCH XLXN_108
            WIRE 1376 448 1440 448
            WIRE 1376 448 1376 608
            WIRE 1376 608 1616 608
            WIRE 1616 608 1616 976
        END BRANCH
        BEGIN INSTANCE XLXI_15 2240 544 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_11 3088 352 M180
        END INSTANCE
        IOMARKER 3072 448 Q0 R180 28
        IOMARKER 3072 512 FC R180 28
        BEGIN BRANCH XLXN_111(3:0)
            WIRE 1936 320 1952 320
            WIRE 1952 320 2240 320
        END BRANCH
        BEGIN BRANCH WB
            WIRE 2752 576 2768 576
            WIRE 2768 576 2784 576
        END BRANCH
        IOMARKER 2784 576 WB R0 28
        BEGIN BRANCH WA
            WIRE 2752 640 2768 640
            WIRE 2768 640 2784 640
        END BRANCH
        IOMARKER 2784 640 WA R0 28
        BEGIN BRANCH E0A
            WIRE 2752 704 2768 704
            WIRE 2768 704 2784 704
        END BRANCH
        IOMARKER 2784 704 E0A R0 28
        BEGIN BRANCH E1A
            WIRE 2752 768 2768 768
            WIRE 2768 768 2784 768
        END BRANCH
        IOMARKER 2784 768 E1A R0 28
        BEGIN BRANCH EOB
            WIRE 2752 832 2768 832
            WIRE 2768 832 2784 832
        END BRANCH
        IOMARKER 2784 832 EOB R0 28
        BEGIN BRANCH E1B
            WIRE 2752 896 2768 896
            WIRE 2768 896 2784 896
        END BRANCH
        IOMARKER 2784 896 E1B R0 28
        BEGIN BRANCH DUPA
            WIRE 2752 960 2768 960
            WIRE 2768 960 2784 960
        END BRANCH
        IOMARKER 2784 960 DUPA R0 28
        BEGIN BRANCH OEUPA
            WIRE 2752 1024 2768 1024
            WIRE 2768 1024 2784 1024
        END BRANCH
        IOMARKER 2784 1024 OEUPA R0 28
        BEGIN BRANCH HBA
            WIRE 2752 1088 2768 1088
            WIRE 2768 1088 2784 1088
        END BRANCH
        IOMARKER 2784 1088 HBA R0 28
        BEGIN BRANCH HBB
            WIRE 2752 1152 2768 1152
            WIRE 2768 1152 2784 1152
        END BRANCH
        IOMARKER 2784 1152 HBB R0 28
        BEGIN BRANCH INT(3:0)
            WIRE 416 928 528 928
            WIRE 528 928 544 928
        END BRANCH
        BEGIN BRANCH TRANS(3:0)
            WIRE 496 608 528 608
        END BRANCH
        IOMARKER 496 608 TRANS(3:0) R180 28
        BEGIN BRANCH XLXN_115(3:0)
            WIRE 2160 848 2176 848
            WIRE 2176 848 2208 848
            WIRE 2208 208 2208 848
            WIRE 2208 208 2768 208
            WIRE 2768 208 2768 320
            WIRE 2752 320 2768 320
        END BRANCH
        BEGIN BRANCH AUX
            WIRE 3072 640 3088 640
        END BRANCH
        IOMARKER 3072 640 AUX R180 28
        BEGIN INSTANCE XLXI_9 2160 816 M0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 544 896 R0
        END INSTANCE
        BEGIN BRANCH XLXN_107
            WIRE 480 752 480 800
            WIRE 480 800 544 800
            WIRE 480 752 1488 752
            WIRE 1488 752 1488 976
        END BRANCH
        IOMARKER 416 928 INT(3:0) R180 28
        BEGIN BRANCH XLXN_125(3:0)
            WIRE 912 608 1168 608
            WIRE 1168 608 1168 848
            WIRE 1168 848 1168 928
            WIRE 1168 848 1776 848
            WIRE 928 928 1168 928
            WIRE 1168 512 1168 608
            WIRE 1168 512 1440 512
        END BRANCH
        BEGIN BRANCH UPAL(3:0)
            WIRE 2752 1280 2784 1280
        END BRANCH
        IOMARKER 2784 1280 UPAL(3:0) R0 28
        BEGIN BRANCH UPAM(6:4)
            WIRE 2752 1344 2784 1344
        END BRANCH
        IOMARKER 2784 1344 UPAM(6:4) R0 28
        BEGIN BRANCH UPAH(9:7)
            WIRE 2752 1408 2784 1408
        END BRANCH
        IOMARKER 2784 1408 UPAH(9:7) R0 28
        IOMARKER 192 320 reloj R180 28
    END SHEET
END SCHEMATIC
