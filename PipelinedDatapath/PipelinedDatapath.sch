VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL clk
        SIGNAL XLXN_3(1:0)
        SIGNAL XLXN_4(63:0)
        SIGNAL XLXN_5(63:0)
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_15(63:0)
        SIGNAL XLXN_16(63:0)
        SIGNAL InstID(15:0)
        SIGNAL InstID(6:5)
        SIGNAL InstID(14)
        SIGNAL InstID(9:8)
        SIGNAL InstID(15)
        SIGNAL XLXN_14(63:0)
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_45(1:0)
        SIGNAL XLXN_46(1:0)
        SIGNAL XLXN_47(63:0)
        SIGNAL XLXN_48
        SIGNAL XLXN_50(63:0)
        SIGNAL InstIF(31:0)
        SIGNAL InstIF(15:0)
        SIGNAL wea
        SIGNAL XLXN_55
        SIGNAL XLXN_56
        SIGNAL InstAddr(7:0)
        SIGNAL InstID(12:11)
        PORT Input clk
        PORT Input wea
        BEGIN BLOCKDEF IFISReg
            TIMESTAMP 2026 2 14 4 57 51
            LINE N 192 1024 192 968 
            RECTANGLE N 144 -852 240 968 
            RECTANGLE N 240 868 304 892 
            LINE N 240 880 304 880 
            RECTANGLE N 80 868 144 892 
            LINE N 144 880 80 880 
        END BLOCKDEF
        BEGIN BLOCKDEF reg_file
            TIMESTAMP 2026 2 14 5 43 52
            LINE N 64 64 64 64 
            LINE N 64 128 64 128 
            LINE N 64 192 64 192 
            RECTANGLE N 64 244 64 268 
            LINE N 64 256 64 256 
            RECTANGLE N 64 308 64 332 
            LINE N 64 320 64 320 
            RECTANGLE N 64 372 64 396 
            LINE N 64 384 64 384 
            RECTANGLE N 320 52 320 76 
            LINE N 320 64 320 64 
            RECTANGLE N 320 116 320 140 
            LINE N 320 128 320 128 
            RECTANGLE N 64 0 320 400 
        END BLOCKDEF
        BEGIN BLOCKDEF IntStageReg
            TIMESTAMP 2026 2 14 5 36 46
            LINE N 224 1272 224 1328 
            RECTANGLE N 160 -384 288 1272 
            RECTANGLE N 288 1220 352 1244 
            LINE N 288 1232 352 1232 
            RECTANGLE N 96 1220 160 1244 
            LINE N 160 1232 96 1232 
            RECTANGLE N 96 980 160 1004 
            LINE N 160 992 96 992 
            RECTANGLE N 288 980 352 1004 
            LINE N 288 992 352 992 
            RECTANGLE N 288 788 352 812 
            LINE N 288 800 352 800 
            RECTANGLE N 96 788 160 812 
            LINE N 160 800 96 800 
            LINE N 160 352 96 352 
            LINE N 288 352 352 352 
            LINE N 288 -128 352 -128 
            LINE N 160 -128 96 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF MEMWBStageReg
            TIMESTAMP 2026 2 14 5 36 52
            RECTANGLE N 160 -364 288 972 
            LINE N 288 -176 352 -176 
            LINE N 160 -176 96 -176 
            LINE N 224 972 224 1040 
            RECTANGLE N 288 900 352 924 
            LINE N 288 912 352 912 
            RECTANGLE N 96 900 160 924 
            LINE N 160 912 96 912 
            RECTANGLE N 96 596 160 620 
            LINE N 160 608 96 608 
            RECTANGLE N 288 596 352 620 
            LINE N 288 608 352 608 
        END BLOCKDEF
        BEGIN BLOCKDEF DMemInterface
            TIMESTAMP 2026 2 14 6 0 50
            RECTANGLE N 32 32 544 576 
            LINE N 0 528 32 528 
            BEGIN LINE W 576 336 544 336 
            END LINE
            LINE N 0 496 32 496 
            BEGIN LINE W 0 400 32 400 
            END LINE
            LINE N 0 64 32 64 
            BEGIN LINE W 0 256 32 256 
            END LINE
            BEGIN LINE W 0 224 32 224 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF IMemInterface
            TIMESTAMP 2026 2 14 6 16 21
            RECTANGLE N 32 32 544 576 
            BEGIN LINE W 576 80 544 80 
            END LINE
            LINE N 0 544 32 544 
            BEGIN LINE W 0 432 32 432 
            END LINE
            LINE N 0 80 32 80 
            BEGIN LINE W 0 208 32 208 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
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
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 IFISReg
            PIN clk clk
            PIN instOut(15:0) InstID(15:0)
            PIN inst(15:0) InstIF(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_16 IntStageReg
            PIN clk clk
            PIN WMEI InstID(15)
            PIN WREI InstID(14)
            PIN WREG1I(1:0) InstID(6:5)
            PIN REG2I(63:0) XLXN_15(63:0)
            PIN REG1I(63:0) XLXN_16(63:0)
            PIN WMEO XLXN_7
            PIN WREO XLXN_6
            PIN WREG1O(1:0) XLXN_3(1:0)
            PIN REG2O(63:0) XLXN_4(63:0)
            PIN REG1O(63:0) XLXN_5(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_19 IntStageReg
            PIN clk clk
            PIN WMEI XLXN_7
            PIN WREI XLXN_6
            PIN WREG1I(1:0) XLXN_3(1:0)
            PIN REG2I(63:0) XLXN_4(63:0)
            PIN REG1I(63:0) XLXN_5(63:0)
            PIN WMEO XLXN_48
            PIN WREO XLXN_43
            PIN WREG1O(1:0) XLXN_45(1:0)
            PIN REG2O(63:0) XLXN_50(63:0)
            PIN REG1O(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_20 MEMWBStageReg
            PIN clk clk
            PIN WDataI(63:0) XLXN_47(63:0)
            PIN WREI XLXN_43
            PIN WREG1I(1:0) XLXN_45(1:0)
            PIN WDataO(63:0) XLXN_14(63:0)
            PIN WREO XLXN_44
            PIN WREG1O(1:0) XLXN_46(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_13 reg_file
            PIN wena XLXN_44
            PIN waddr(1:0) XLXN_46(1:0)
            PIN clk clk
            PIN r1addr(1:0) InstID(9:8)
            PIN r0addr(1:0) InstID(12:11)
            PIN wdata(63:0) XLXN_14(63:0)
            PIN r0data(63:0) XLXN_16(63:0)
            PIN r1data(63:0) XLXN_15(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_21 DMemInterface
            PIN clkb clk
            PIN doutb(63:0) XLXN_47(63:0)
            PIN clka clk
            PIN dina(63:0) XLXN_50(63:0)
            PIN wea XLXN_48
            PIN addrb(7:0)
            PIN addra(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_22 IMemInterface
            PIN douta(31:0) InstIF(31:0)
            PIN clka clk
            PIN dina(31:0)
            PIN wea wea
            PIN addra(8:0) InstAddr(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_24 gnd
            PIN G XLXN_55
        END BLOCK
        BEGIN BLOCK XLXI_25 vcc
            PIN P XLXN_56
        END BLOCK
        BEGIN BLOCK XLXI_23 cb8ce
            PIN C clk
            PIN CE XLXN_56
            PIN CLR XLXN_55
            PIN CEO
            PIN Q(7:0) InstAddr(7:0)
            PIN TC
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE XLXI_1 816 2064 R0
        END INSTANCE
        IOMARKER 480 3200 clk R180 28
        BEGIN BRANCH XLXN_3(1:0)
            WIRE 2896 2976 3392 2976
        END BRANCH
        BEGIN BRANCH XLXN_4(63:0)
            WIRE 2896 2736 3392 2736
        END BRANCH
        BEGIN BRANCH XLXN_5(63:0)
            WIRE 2896 2544 3392 2544
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 2896 2096 3392 2096
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 2896 1616 3392 1616
        END BRANCH
        BEGIN INSTANCE XLXI_16 2544 1744 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_19 3296 1744 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_20 4720 2032 R0
        END INSTANCE
        BEGIN BRANCH XLXN_15(63:0)
            WIRE 1888 2736 2640 2736
        END BRANCH
        BEGIN BRANCH XLXN_16(63:0)
            WIRE 1888 2672 2240 2672
            WIRE 2240 2544 2240 2672
            WIRE 2240 2544 2640 2544
        END BRANCH
        BEGIN BRANCH InstID(15:0)
            WIRE 1120 2944 1184 2944
            BEGIN DISPLAY 1184 2944 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InstID(6:5)
            WIRE 2528 2976 2640 2976
            BEGIN DISPLAY 2528 2976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_13 1568 2608 R0
        END INSTANCE
        BEGIN BRANCH InstID(14)
            WIRE 2528 2096 2640 2096
            BEGIN DISPLAY 2528 2096 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InstID(9:8)
            WIRE 1520 2864 1632 2864
            BEGIN DISPLAY 1520 2864 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_14(63:0)
            WIRE 1520 2992 1632 2992
            WIRE 1520 2992 1520 3312
            WIRE 1520 3312 5232 3312
            WIRE 5072 2640 5232 2640
            WIRE 5232 2640 5232 3312
        END BRANCH
        BEGIN BRANCH XLXN_43
            WIRE 3648 2096 4224 2096
            WIRE 4224 1856 4224 2096
            WIRE 4224 1856 4816 1856
        END BRANCH
        BEGIN BRANCH XLXN_44
            WIRE 1600 1168 5296 1168
            WIRE 5296 1168 5296 1856
            WIRE 1600 1168 1600 2672
            WIRE 1600 2672 1632 2672
            WIRE 5072 1856 5296 1856
        END BRANCH
        BEGIN BRANCH XLXN_45(1:0)
            WIRE 3648 2976 4224 2976
            WIRE 4224 2944 4224 2976
            WIRE 4224 2944 4816 2944
        END BRANCH
        BEGIN BRANCH XLXN_46(1:0)
            WIRE 1424 2736 1424 3360
            WIRE 1424 3360 5136 3360
            WIRE 1424 2736 1632 2736
            WIRE 5072 2944 5136 2944
            WIRE 5136 2944 5136 3360
        END BRANCH
        BEGIN BRANCH InstID(15)
            WIRE 2512 1616 2640 1616
            BEGIN DISPLAY 2512 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_21 4144 2304 R0
        END INSTANCE
        BEGIN BRANCH XLXN_47(63:0)
            WIRE 4720 2640 4816 2640
        END BRANCH
        BEGIN BRANCH XLXN_48
            WIRE 3648 1616 3888 1616
            WIRE 3888 1616 3888 2368
            WIRE 3888 2368 4144 2368
        END BRANCH
        BEGIN BRANCH XLXN_50(63:0)
            WIRE 3648 2736 3888 2736
            WIRE 3888 2704 3888 2736
            WIRE 3888 2704 4144 2704
        END BRANCH
        BEGIN INSTANCE XLXI_22 192 2224 R0
        END INSTANCE
        BEGIN BRANCH InstIF(31:0)
            WIRE 768 2304 800 2304
            BEGIN DISPLAY 800 2304 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InstIF(15:0)
            WIRE 784 2944 896 2944
            BEGIN DISPLAY 784 2944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wea
            WIRE 144 2304 192 2304
        END BRANCH
        IOMARKER 144 2304 wea R180 28
        BEGIN BRANCH XLXN_55
            WIRE 224 2000 256 2000
        END BRANCH
        INSTANCE XLXI_24 160 2128 R0
        INSTANCE XLXI_25 112 1824 R0
        BEGIN BRANCH XLXN_56
            WIRE 176 1824 176 1840
            WIRE 176 1840 256 1840
        END BRANCH
        BEGIN BRANCH InstAddr(7:0)
            WIRE 640 1776 704 1776
            BEGIN DISPLAY 704 1776 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InstAddr(7:0)
            WIRE 160 2432 192 2432
            BEGIN DISPLAY 160 2432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 176 1904 256 1904
            WIRE 176 1904 176 2768
            WIRE 176 2768 192 2768
            WIRE 176 2768 176 2864
            WIRE 176 2864 624 2864
            WIRE 624 2864 624 3200
            WIRE 624 3200 1008 3200
            WIRE 1008 3200 1344 3200
            WIRE 1344 3200 2768 3200
            WIRE 2768 3200 3520 3200
            WIRE 3520 3200 4112 3200
            WIRE 4112 3200 4944 3200
            WIRE 480 3200 624 3200
            WIRE 1008 3088 1008 3200
            WIRE 1344 2800 1632 2800
            WIRE 1344 2800 1344 3200
            WIRE 2768 3072 2768 3200
            WIRE 3520 3072 3520 3200
            WIRE 4112 2800 4144 2800
            WIRE 4112 2800 4112 2832
            WIRE 4112 2832 4144 2832
            WIRE 4112 2832 4112 3200
            WIRE 4944 3072 4944 3200
        END BRANCH
        BEGIN BRANCH InstID(12:11)
            WIRE 1520 2928 1632 2928
            BEGIN DISPLAY 1520 2928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_23 256 2032 R0
    END SHEET
END SCHEMATIC
