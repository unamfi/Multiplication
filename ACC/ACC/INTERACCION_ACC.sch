VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL WB
        SIGNAL E0B
        SIGNAL E1B
        SIGNAL ZB
        SIGNAL NB
        SIGNAL CB(7:0)
        SIGNAL XLXN_19(7:0)
        SIGNAL CLK
        SIGNAL B(7:0)
        SIGNAL A(7:0)
        PORT Input WB
        PORT Input E0B
        PORT Input E1B
        PORT Output ZB
        PORT Output NB
        PORT BiDirectional CB(7:0)
        PORT Input CLK
        PORT BiDirectional B(7:0)
        PORT BiDirectional A(7:0)
        BEGIN BLOCKDEF ACC
            TIMESTAMP 2012 10 20 6 42 33
            RECTANGLE N 64 -320 320 0 
            LINE N 64 -288 0 -288 
            LINE N 64 -208 0 -208 
            LINE N 64 -128 0 -128 
            LINE N 64 -48 0 -48 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 ACC
            PIN NW WB
            PIN E0 E0B
            PIN E1 E1B
            PIN clk CLK
            PIN Z ZB
            PIN N NB
            PIN A(7:0) A(7:0)
            PIN B(7:0) B(7:0)
            PIN C(7:0) CB(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 832 1248 R0
        END INSTANCE
        BEGIN BRANCH WB
            WIRE 800 960 832 960
        END BRANCH
        IOMARKER 800 960 WB R180 28
        BEGIN BRANCH E0B
            WIRE 800 1040 832 1040
        END BRANCH
        IOMARKER 800 1040 E0B R180 28
        BEGIN BRANCH E1B
            WIRE 800 1120 832 1120
        END BRANCH
        IOMARKER 800 1120 E1B R180 28
        BEGIN BRANCH ZB
            WIRE 1216 960 1248 960
        END BRANCH
        IOMARKER 1248 960 ZB R0 28
        BEGIN BRANCH NB
            WIRE 1216 1024 1248 1024
        END BRANCH
        IOMARKER 1248 1024 NB R0 28
        BEGIN BRANCH CB(7:0)
            WIRE 1216 1216 1232 1216
            WIRE 1232 1216 1520 1216
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 800 1200 832 1200
        END BRANCH
        IOMARKER 800 1200 CLK R180 28
        IOMARKER 1520 1216 CB(7:0) R0 28
        BEGIN BRANCH B(7:0)
            WIRE 1216 1152 1232 1152
            WIRE 1232 1152 1520 1152
        END BRANCH
        BEGIN BRANCH A(7:0)
            WIRE 1216 1088 1232 1088
            WIRE 1232 1088 1504 1088
        END BRANCH
        IOMARKER 1520 1152 B(7:0) R0 28
        IOMARKER 1504 1088 A(7:0) R0 28
    END SHEET
END SCHEMATIC
