VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
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
        BEGIN BLOCK XLXI_1 ArquitecturaCompuesta
            PIN Reset
            PIN I
            PIN FC
            PIN Q0
            PIN reloj
            PIN INT(3:0)
            PIN TRANS(3:0)
            PIN AUX
            PIN WB
            PIN WA
            PIN E0A
            PIN E1A
            PIN EOB
            PIN E1B
            PIN DUPA
            PIN OEUPA
            PIN HBA
            PIN HBB
            PIN UPAL(3:0)
            PIN UPAM(6:4)
            PIN UPAH(9:7)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 896 832 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
