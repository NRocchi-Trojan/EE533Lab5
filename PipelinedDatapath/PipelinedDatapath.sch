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
        SIGNAL InstID(31:0)
        SIGNAL InstID(29:28)
        SIGNAL InstID(30)
        SIGNAL InstID(11:10)
        SIGNAL InstID(31)
        SIGNAL XLXN_14(63:0)
        SIGNAL XLXN_43
        SIGNAL XLXN_44
        SIGNAL XLXN_45(1:0)
        SIGNAL XLXN_46(1:0)
        SIGNAL XLXN_47(63:0)
        SIGNAL XLXN_50(63:0)
        SIGNAL InstIF(31:0)
        SIGNAL wea
        SIGNAL InstAddr(7:0)
        SIGNAL InstID(9:8)
        SIGNAL RegData1(63:0)
        SIGNAL RegData1(7:0)
        SIGNAL XLXN_65
        SIGNAL InstData(31:0)
        SIGNAL rst
        PORT Input clk
        PORT Input wea
        PORT Input InstData(31:0)
        PORT Input rst
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
        BEGIN BLOCKDEF IFISReg
            TIMESTAMP 2026 2 17 22 32 33
            LINE N 192 1024 192 968 
            RECTANGLE N 144 -852 240 968 
            RECTANGLE N 240 868 304 892 
            LINE N 240 880 304 880 
            RECTANGLE N 80 868 144 892 
            LINE N 144 880 80 880 
        END BLOCKDEF
        BEGIN BLOCKDEF InstructionMem
            TIMESTAMP 2026 2 18 1 29 35
            RECTANGLE N 32 0 320 272 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 320 48 352 48 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF DataMemory
            TIMESTAMP 2026 2 18 1 46 8
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
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
        BEGIN BLOCK XLXI_16 IntStageReg
            PIN clk clk
            PIN WMEI InstID(31)
            PIN WREI InstID(30)
            PIN WREG1I(1:0) InstID(29:28)
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
            PIN WMEO XLXN_65
            PIN WREO XLXN_43
            PIN WREG1O(1:0) XLXN_45(1:0)
            PIN REG2O(63:0) XLXN_50(63:0)
            PIN REG1O(63:0) RegData1(63:0)
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
            PIN r1addr(1:0) InstID(11:10)
            PIN r0addr(1:0) InstID(9:8)
            PIN wdata(63:0) XLXN_14(63:0)
            PIN r0data(63:0) XLXN_16(63:0)
            PIN r1data(63:0) XLXN_15(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_29 IFISReg
            PIN clk clk
            PIN Inst(31:0) InstIF(31:0)
            PIN InstOut(31:0) InstID(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_32 InstructionMem
            PIN addr(7:0) InstAddr(7:0)
            PIN din(31:0) InstData(31:0)
            PIN we wea
            PIN clk clk
            PIN dout(31:0) InstIF(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_34 DataMemory
            PIN addra(7:0) RegData1(7:0)
            PIN dina(63:0) XLXN_50(63:0)
            PIN wea XLXN_65
            PIN clka clk
            PIN addrb(7:0) RegData1(7:0)
            PIN clkb clk
            PIN doutb(63:0) XLXN_47(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_35 cb8ce
            PIN C clk
            PIN CE clk
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) InstAddr(7:0)
            PIN TC
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
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
        BEGIN BRANCH InstID(31:0)
            WIRE 1120 2944 1184 2944
            BEGIN DISPLAY 1184 2944 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InstID(29:28)
            WIRE 2528 2976 2640 2976
            BEGIN DISPLAY 2528 2976 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_13 1568 2608 R0
        END INSTANCE
        BEGIN BRANCH InstID(30)
            WIRE 2528 2096 2640 2096
            BEGIN DISPLAY 2528 2096 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH InstID(11:10)
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
        BEGIN BRANCH InstID(31)
            WIRE 2512 1616 2640 1616
            BEGIN DISPLAY 2512 1616 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_47(63:0)
            WIRE 4592 2624 4720 2624
            WIRE 4720 2624 4720 2640
            WIRE 4720 2640 4816 2640
        END BRANCH
        BEGIN BRANCH InstIF(31:0)
            WIRE 656 2304 800 2304
            BEGIN DISPLAY 800 2304 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wea
            WIRE 144 2368 304 2368
        END BRANCH
        BEGIN BRANCH InstAddr(7:0)
            WIRE 160 2304 304 2304
            BEGIN DISPLAY 160 2304 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 176 1568 304 1568
            WIRE 176 1568 176 1632
            WIRE 176 1632 304 1632
            WIRE 176 1632 176 2496
            WIRE 176 2496 304 2496
            WIRE 176 2496 176 2864
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
            WIRE 4112 2592 4112 2816
            WIRE 4112 2816 4112 3200
            WIRE 4112 2816 4304 2816
            WIRE 4112 2592 4304 2592
            WIRE 4944 3072 4944 3200
        END BRANCH
        BEGIN BRANCH InstID(9:8)
            WIRE 1520 2928 1632 2928
            BEGIN DISPLAY 1520 2928 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegData1(63:0)
            WIRE 3648 2544 3760 2544
            BEGIN DISPLAY 3760 2544 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_29 816 2064 R0
        END INSTANCE
        BEGIN BRANCH InstIF(31:0)
            WIRE 800 2944 896 2944
            BEGIN DISPLAY 800 2944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_32 304 2256 R0
        END INSTANCE
        IOMARKER 144 2368 wea R180 28
        BEGIN BRANCH InstData(31:0)
            WIRE 128 2448 192 2448
            WIRE 192 2336 192 2448
            WIRE 192 2336 304 2336
        END BRANCH
        IOMARKER 128 2448 InstData(31:0) R180 28
        BEGIN BRANCH RegData1(7:0)
            WIRE 4208 2400 4304 2400
            BEGIN DISPLAY 4208 2400 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegData1(7:0)
            WIRE 4208 2624 4304 2624
            BEGIN DISPLAY 4208 2624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_50(63:0)
            WIRE 3648 2736 3984 2736
            WIRE 3984 2432 4304 2432
            WIRE 3984 2432 3984 2736
        END BRANCH
        BEGIN BRANCH XLXN_65
            WIRE 3648 1616 3888 1616
            WIRE 3888 1616 3888 2464
            WIRE 3888 2464 4304 2464
        END BRANCH
        BEGIN INSTANCE XLXI_34 4304 2352 R0
        END INSTANCE
        INSTANCE XLXI_35 304 1760 R0
        BEGIN BRANCH InstAddr(7:0)
            WIRE 688 1504 784 1504
            BEGIN DISPLAY 784 1504 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH rst
            WIRE 256 1728 304 1728
        END BRANCH
        IOMARKER 256 1728 rst R180 28
    END SHEET
END SCHEMATIC
