VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_12
        SIGNAL XLXN_13
        SIGNAL DATO_A(7:0)
        SIGNAL DATO_B(7:0)
        SIGNAL DUPA
        SIGNAL OEUPA
        SIGNAL UPA_L(3:0)
        SIGNAL UPA_M(6:4)
        SIGNAL UPA_H(9:7)
        SIGNAL reset
        SIGNAL FC
        SIGNAL QO
        SIGNAL XLXN_24
        SIGNAL clk
        SIGNAL ZA
        SIGNAL NA
        SIGNAL Ao_A(7:0)
        SIGNAL Bo_A(7:0)
        SIGNAL Co_A(7:0)
        SIGNAL Ao_B(7:0)
        SIGNAL Bo_B(7:0)
        SIGNAL Co_B(7:0)
        SIGNAL NB
        SIGNAL ZB
        SIGNAL XLXN_46
        SIGNAL XLXN_47
        SIGNAL XLXN_54(7:0)
        SIGNAL XLXN_55(7:0)
        SIGNAL Ci_A(7:0)
        SIGNAL Ci_B(7:0)
        PORT Input DATO_A(7:0)
        PORT Input DATO_B(7:0)
        PORT Output DUPA
        PORT Output OEUPA
        PORT Output UPA_L(3:0)
        PORT Output UPA_M(6:4)
        PORT Output UPA_H(9:7)
        PORT Input reset
        PORT Input FC
        PORT Input QO
        PORT Input clk
        PORT Output ZA
        PORT Output NA
        PORT Output Ao_A(7:0)
        PORT Output Bo_A(7:0)
        PORT Output Co_A(7:0)
        PORT Output Ao_B(7:0)
        PORT Output Bo_B(7:0)
        PORT Output Co_B(7:0)
        PORT Output NB
        PORT Output ZB
        PORT Input Ci_A(7:0)
        PORT Input Ci_B(7:0)
        BEGIN BLOCKDEF ArquitecturaCompuesta
            TIMESTAMP 2012 10 25 8 39 22
            RECTANGLE N 368 724 432 748 
            LINE N 368 736 432 736 
            RECTANGLE N 368 788 432 812 
            LINE N 368 800 432 800 
            RECTANGLE N 368 852 432 876 
            LINE N 368 864 432 864 
            LINE N 64 32 0 32 
            LINE N 64 96 0 96 
            RECTANGLE N 0 148 64 172 
            LINE N 64 160 0 160 
            RECTANGLE N 0 212 64 236 
            LINE N 64 224 0 224 
            LINE N 64 288 0 288 
            LINE N 368 32 432 32 
            LINE N 368 96 432 96 
            LINE N 368 160 432 160 
            LINE N 368 224 432 224 
            LINE N 368 288 432 288 
            LINE N 368 352 432 352 
            LINE N 368 416 432 416 
            LINE N 368 480 432 480 
            LINE N 368 544 432 544 
            LINE N 368 608 432 608 
            LINE N 64 -480 0 -480 
            LINE N 64 -224 0 -224 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -512 368 896 
        END BLOCKDEF
        BEGIN BLOCKDEF ACC
            TIMESTAMP 2012 10 25 19 11 44
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
        BEGIN BLOCKDEF TRANSEIVER
            TIMESTAMP 2012 10 25 8 19 28
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
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
        BEGIN BLOCK XLXI_1 ArquitecturaCompuesta
            PIN Reset reset
            PIN I XLXN_24
            PIN FC FC
            PIN Q0 QO
            PIN reloj clk
            PIN INT(3:0)
            PIN TRANS(3:0)
            PIN AUX XLXN_24
            PIN WB XLXN_47
            PIN WA XLXN_46
            PIN E0A XLXN_7
            PIN E1A XLXN_8
            PIN EOB XLXN_9
            PIN E1B XLXN_10
            PIN DUPA DUPA
            PIN OEUPA OEUPA
            PIN HBA XLXN_12
            PIN HBB XLXN_13
            PIN UPAL(3:0) UPA_L(3:0)
            PIN UPAM(6:4) UPA_M(6:4)
            PIN UPAH(9:7) UPA_H(9:7)
        END BLOCK
        BEGIN BLOCK XLXI_2 ACC
            PIN clk clk
            PIN NW XLXN_46
            PIN E0 XLXN_7
            PIN E1 XLXN_8
            PIN Z ZA
            PIN N NA
            PIN Ai(7:0) XLXN_54(7:0)
            PIN Bi(7:0) XLXN_55(7:0)
            PIN Ci(7:0) Ci_A(7:0)
            PIN Ao(7:0) Ao_A(7:0)
            PIN Bo(7:0) Bo_A(7:0)
            PIN Co(7:0) Co_A(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 ACC
            PIN clk clk
            PIN NW XLXN_47
            PIN E0 XLXN_9
            PIN E1 XLXN_10
            PIN Z ZB
            PIN N NB
            PIN Ai(7:0) XLXN_54(7:0)
            PIN Bi(7:0) XLXN_55(7:0)
            PIN Ci(7:0) Ci_B(7:0)
            PIN Ao(7:0) Ao_B(7:0)
            PIN Bo(7:0) Bo_B(7:0)
            PIN Co(7:0) Co_B(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 TRANSEIVER
            PIN Hab XLXN_12
            PIN INR(7:0) DATO_A(7:0)
            PIN OUTR(7:0) XLXN_54(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 TRANSEIVER
            PIN Hab XLXN_13
            PIN INR(7:0) DATO_B(7:0)
            PIN OUTR(7:0) XLXN_55(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 gnd
            PIN G XLXN_24
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 624 1088 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1840 752 R0
        END INSTANCE
        BEGIN BRANCH XLXN_7
            WIRE 1056 1248 1344 1248
            WIRE 1344 544 1344 1248
            WIRE 1344 544 1840 544
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 1056 1312 1376 1312
            WIRE 1376 624 1376 1312
            WIRE 1376 624 1840 624
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1056 1440 1472 1440
            WIRE 1472 1344 1472 1440
            WIRE 1472 1344 1856 1344
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 1056 1376 1456 1376
            WIRE 1456 1264 1456 1376
            WIRE 1456 1264 1856 1264
        END BRANCH
        BEGIN INSTANCE XLXI_3 1856 1472 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1872 1936 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1872 2128 R0
        END INSTANCE
        BEGIN BRANCH XLXN_12
            WIRE 1056 1632 1456 1632
            WIRE 1456 1632 1456 1840
            WIRE 1456 1840 1872 1840
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1056 1696 1440 1696
            WIRE 1440 1696 1440 2032
            WIRE 1440 2032 1872 2032
        END BRANCH
        BEGIN BRANCH DATO_A(7:0)
            WIRE 1728 1904 1856 1904
            WIRE 1856 1904 1872 1904
        END BRANCH
        BEGIN BRANCH DATO_B(7:0)
            WIRE 1712 2096 1856 2096
            WIRE 1856 2096 1872 2096
        END BRANCH
        BEGIN BRANCH DUPA
            WIRE 1056 1504 1088 1504
        END BRANCH
        IOMARKER 1088 1504 DUPA R0 28
        BEGIN BRANCH OEUPA
            WIRE 1056 1568 1088 1568
        END BRANCH
        IOMARKER 1088 1568 OEUPA R0 28
        BEGIN BRANCH UPA_L(3:0)
            WIRE 1056 1824 1072 1824
            WIRE 1072 1824 1200 1824
        END BRANCH
        BEGIN BRANCH UPA_M(6:4)
            WIRE 1056 1888 1072 1888
            WIRE 1072 1888 1200 1888
        END BRANCH
        BEGIN BRANCH UPA_H(9:7)
            WIRE 1056 1952 1072 1952
            WIRE 1072 1952 1200 1952
        END BRANCH
        BEGIN BRANCH reset
            WIRE 592 608 624 608
        END BRANCH
        IOMARKER 592 608 reset R180 28
        BEGIN BRANCH FC
            WIRE 496 1120 624 1120
        END BRANCH
        BEGIN BRANCH QO
            WIRE 496 1184 624 1184
        END BRANCH
        IOMARKER 496 1184 QO R180 28
        IOMARKER 496 1120 FC R180 28
        BEGIN BRANCH XLXN_24
            WIRE 176 864 624 864
            WIRE 176 864 176 1376
            WIRE 176 1376 624 1376
            WIRE 176 1376 176 1504
        END BRANCH
        INSTANCE XLXI_6 112 1632 R0
        BEGIN BRANCH clk
            WIRE 256 32 368 32
            WIRE 368 32 368 1056
            WIRE 368 1056 624 1056
            WIRE 368 32 1488 32
            WIRE 1488 32 1488 704
            WIRE 1488 704 1488 1424
            WIRE 1488 1424 1856 1424
            WIRE 1488 704 1840 704
        END BRANCH
        IOMARKER 256 32 clk R180 28
        BEGIN BRANCH ZA
            WIRE 2224 464 2256 464
        END BRANCH
        IOMARKER 2256 464 ZA R0 28
        BEGIN BRANCH NA
            WIRE 2224 528 2256 528
        END BRANCH
        IOMARKER 2256 528 NA R0 28
        BEGIN BRANCH Ao_A(7:0)
            WIRE 2224 848 2256 848
        END BRANCH
        IOMARKER 2256 848 Ao_A(7:0) R0 28
        BEGIN BRANCH Bo_A(7:0)
            WIRE 2224 912 2256 912
        END BRANCH
        IOMARKER 2256 912 Bo_A(7:0) R0 28
        BEGIN BRANCH Co_A(7:0)
            WIRE 2224 976 2256 976
        END BRANCH
        IOMARKER 2256 976 Co_A(7:0) R0 28
        BEGIN BRANCH Ao_B(7:0)
            WIRE 2240 1568 2272 1568
        END BRANCH
        IOMARKER 2272 1568 Ao_B(7:0) R0 28
        BEGIN BRANCH Bo_B(7:0)
            WIRE 2240 1632 2272 1632
        END BRANCH
        IOMARKER 2272 1632 Bo_B(7:0) R0 28
        BEGIN BRANCH Co_B(7:0)
            WIRE 2240 1696 2272 1696
        END BRANCH
        IOMARKER 2272 1696 Co_B(7:0) R0 28
        BEGIN BRANCH NB
            WIRE 2240 1248 2272 1248
        END BRANCH
        IOMARKER 2272 1248 NB R0 28
        BEGIN BRANCH ZB
            WIRE 2240 1184 2272 1184
        END BRANCH
        IOMARKER 2272 1184 ZB R0 28
        BEGIN BRANCH XLXN_46
            WIRE 1056 1184 1312 1184
            WIRE 1312 464 1312 1184
            WIRE 1312 464 1840 464
        END BRANCH
        BEGIN BRANCH XLXN_47
            WIRE 1056 1120 1456 1120
            WIRE 1456 1120 1456 1184
            WIRE 1456 1184 1856 1184
        END BRANCH
        BEGIN BRANCH XLXN_54(7:0)
            WIRE 1536 848 1840 848
            WIRE 1536 848 1536 1024
            WIRE 1536 1024 1536 1568
            WIRE 1536 1568 1856 1568
            WIRE 1536 1024 2512 1024
            WIRE 2512 1024 2512 1840
            WIRE 2256 1840 2512 1840
        END BRANCH
        BEGIN BRANCH XLXN_55(7:0)
            WIRE 1648 912 1840 912
            WIRE 1648 912 1648 1072
            WIRE 1648 1072 1648 1632
            WIRE 1648 1632 1856 1632
            WIRE 1648 1072 2576 1072
            WIRE 2576 1072 2576 2032
            WIRE 2256 2032 2576 2032
        END BRANCH
        IOMARKER 1728 1904 DATO_A(7:0) R180 28
        IOMARKER 1712 2096 DATO_B(7:0) R180 28
        BEGIN BRANCH Ci_A(7:0)
            WIRE 1808 976 1840 976
        END BRANCH
        BEGIN BRANCH Ci_B(7:0)
            WIRE 1824 1696 1856 1696
        END BRANCH
        IOMARKER 1824 1696 Ci_B(7:0) R180 28
        IOMARKER 1808 976 Ci_A(7:0) R180 28
        IOMARKER 1200 1824 UPA_L(3:0) R0 28
        IOMARKER 1200 1888 UPA_M(6:4) R0 28
        IOMARKER 1200 1952 UPA_H(9:7) R0 28
    END SHEET
END SCHEMATIC
