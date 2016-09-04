VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL reset
        SIGNAL clk
        SIGNAL WB
        SIGNAL WA
        SIGNAL EA0
        SIGNAL EA1
        SIGNAL EB0
        SIGNAL EB1
        SIGNAL DUPA
        SIGNAL OEUPA
        SIGNAL XLXN_134
        SIGNAL UPAM(6:4)
        SIGNAL UPAH(9:7)
        SIGNAL Fc
        SIGNAL Qo
        SIGNAL UPAL(3:0)
        SIGNAL XLXN_140
        SIGNAL XLXN_141
        SIGNAL DATO_A(7:0)
        SIGNAL DATO_B(7:0)
        SIGNAL BUS_A(7:0)
        SIGNAL BUS_B(7:0)
        PORT Input reset
        PORT Input clk
        PORT Output WB
        PORT Output WA
        PORT Output EA0
        PORT Output EA1
        PORT Output EB0
        PORT Output EB1
        PORT Output DUPA
        PORT Output OEUPA
        PORT Output UPAM(6:4)
        PORT Output UPAH(9:7)
        PORT Input Fc
        PORT Input Qo
        PORT Output UPAL(3:0)
        PORT Input DATO_A(7:0)
        PORT Input DATO_B(7:0)
        PORT Output BUS_A(7:0)
        PORT Output BUS_B(7:0)
        BEGIN BLOCKDEF ArquitecturaCompuesta
            TIMESTAMP 2012 10 26 19 32 30
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
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF TRANSEIVER
            TIMESTAMP 2012 10 25 23 9 7
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 ArquitecturaCompuesta
            PIN Reset reset
            PIN I XLXN_134
            PIN FC Fc
            PIN Q0 Qo
            PIN reloj clk
            PIN INT(3:0)
            PIN TRANS(3:0)
            PIN AUX XLXN_134
            PIN WB WB
            PIN WA WA
            PIN E0A EA0
            PIN E1A EA1
            PIN EOB EB0
            PIN E1B EB1
            PIN DUPA DUPA
            PIN OEUPA OEUPA
            PIN HBA XLXN_140
            PIN HBB XLXN_141
            PIN UPAL(3:0) UPAL(3:0)
            PIN UPAM(6:4) UPAM(6:4)
            PIN UPAH(9:7) UPAH(9:7)
        END BLOCK
        BEGIN BLOCK XLXI_18 gnd
            PIN G XLXN_134
        END BLOCK
        BEGIN BLOCK XLXI_19 TRANSEIVER
            PIN Hab XLXN_140
            PIN INR(7:0) DATO_A(7:0)
            PIN OUTR(7:0) BUS_A(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_20 TRANSEIVER
            PIN Hab XLXN_141
            PIN INR(7:0) DATO_B(7:0)
            PIN OUTR(7:0) BUS_B(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH reset
            WIRE 112 96 272 96
            WIRE 272 96 272 576
            WIRE 272 576 640 576
        END BRANCH
        IOMARKER 96 32 clk R180 28
        IOMARKER 112 96 reset R180 28
        BEGIN INSTANCE XLXI_1 640 1056 R0
        END INSTANCE
        BEGIN BRANCH XLXN_134
            WIRE 400 832 640 832
            WIRE 400 832 400 1344
            WIRE 400 1344 400 1520
            WIRE 400 1344 640 1344
        END BRANCH
        INSTANCE XLXI_18 336 1648 R0
        IOMARKER 1104 1024 WB R270 28
        IOMARKER 1136 1024 WA R270 28
        IOMARKER 1168 1024 EA0 R270 28
        IOMARKER 1200 1024 EA1 R270 28
        IOMARKER 1248 1024 EB0 R270 28
        IOMARKER 1280 1024 EB1 R270 28
        BEGIN BRANCH clk
            WIRE 96 32 224 32
            WIRE 224 32 224 1024
            WIRE 224 1024 640 1024
        END BRANCH
        BEGIN BRANCH OEUPA
            WIRE 1072 1536 1584 1536
        END BRANCH
        BEGIN BRANCH UPAM(6:4)
            WIRE 1072 1856 2112 1856
        END BRANCH
        BEGIN BRANCH UPAH(9:7)
            WIRE 1072 1920 2112 1920
        END BRANCH
        BEGIN BRANCH EA0
            WIRE 1072 1216 1168 1216
            WIRE 1168 1024 1168 1216
        END BRANCH
        BEGIN BRANCH WB
            WIRE 1072 1088 1104 1088
            WIRE 1104 1024 1104 1088
        END BRANCH
        BEGIN BRANCH WA
            WIRE 1072 1152 1136 1152
            WIRE 1136 1024 1136 1152
        END BRANCH
        BEGIN BRANCH EA1
            WIRE 1072 1280 1200 1280
            WIRE 1200 1024 1200 1280
        END BRANCH
        BEGIN BRANCH EB0
            WIRE 1072 1344 1248 1344
            WIRE 1248 1024 1248 1344
        END BRANCH
        BEGIN BRANCH EB1
            WIRE 1072 1408 1280 1408
            WIRE 1280 1024 1280 1408
        END BRANCH
        BEGIN BRANCH DUPA
            WIRE 1072 1472 1088 1472
            WIRE 1088 1472 1616 1472
            WIRE 1616 1440 1616 1472
        END BRANCH
        BEGIN BRANCH Fc
            WIRE 608 1088 640 1088
        END BRANCH
        IOMARKER 608 1088 Fc R180 28
        BEGIN BRANCH Qo
            WIRE 608 1152 640 1152
        END BRANCH
        IOMARKER 608 1152 Qo R180 28
        BEGIN BRANCH UPAL(3:0)
            WIRE 1072 1792 2112 1792
        END BRANCH
        IOMARKER 2112 1856 UPAM(6:4) R0 28
        IOMARKER 2112 1792 UPAL(3:0) R0 28
        IOMARKER 2112 1920 UPAH(9:7) R0 28
        BEGIN INSTANCE XLXI_19 1472 2192 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_20 1456 2416 R0
        END INSTANCE
        BEGIN BRANCH XLXN_140
            WIRE 1072 1600 1200 1600
            WIRE 1200 1600 1200 2096
            WIRE 1200 2096 1472 2096
        END BRANCH
        BEGIN BRANCH XLXN_141
            WIRE 1072 1664 1168 1664
            WIRE 1168 1664 1168 2320
            WIRE 1168 2320 1456 2320
        END BRANCH
        BEGIN BRANCH DATO_A(7:0)
            WIRE 1440 2160 1472 2160
        END BRANCH
        IOMARKER 1440 2160 DATO_A(7:0) R180 28
        BEGIN BRANCH DATO_B(7:0)
            WIRE 1424 2384 1456 2384
        END BRANCH
        IOMARKER 1424 2384 DATO_B(7:0) R180 28
        BEGIN BRANCH BUS_A(7:0)
            WIRE 1856 2096 1888 2096
        END BRANCH
        IOMARKER 1888 2096 BUS_A(7:0) R0 28
        BEGIN BRANCH BUS_B(7:0)
            WIRE 1840 2320 1856 2320
            WIRE 1856 2320 1920 2320
        END BRANCH
        IOMARKER 1920 2320 BUS_B(7:0) R0 28
        IOMARKER 1584 1536 OEUPA R0 28
        IOMARKER 1616 1440 DUPA R270 28
    END SHEET
END SCHEMATIC
