VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL waddr00
        SIGNAL waddr01
        SIGNAL waddr10
        SIGNAL waddr11
        SIGNAL wena
        SIGNAL XLXN_20
        SIGNAL waddr(1:0)
        SIGNAL clk
        SIGNAL r1addr(1:0)
        SIGNAL XLXN_40
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_45
        SIGNAL XLXN_48
        SIGNAL XLXN_49
        SIGNAL XLXN_50
        SIGNAL r0addr(1:0)
        SIGNAL XLXN_56
        SIGNAL XLXN_57
        SIGNAL XLXN_58
        SIGNAL XLXN_59(63:0)
        SIGNAL XLXN_60(63:0)
        SIGNAL wdata(63:0)
        SIGNAL XLXN_67
        SIGNAL XLXN_69
        SIGNAL XLXN_70
        SIGNAL XLXN_71
        SIGNAL XLXN_77(63:0)
        SIGNAL XLXN_78(63:0)
        SIGNAL XLXN_79(63:0)
        SIGNAL XLXN_80(63:0)
        SIGNAL XLXN_81
        SIGNAL XLXN_85
        SIGNAL XLXN_86
        SIGNAL XLXN_87
        SIGNAL XLXN_88
        SIGNAL r1data(63:0)
        SIGNAL r0data(63:0)
        SIGNAL XLXN_94(1:0)
        PORT Input wena
        PORT Input waddr(1:0)
        PORT Input clk
        PORT Input r1addr(1:0)
        PORT Input r0addr(1:0)
        PORT Input wdata(63:0)
        PORT Output r1data(63:0)
        PORT Output r0data(63:0)
        BEGIN BLOCKDEF reg64
            TIMESTAMP 2026 2 13 23 4 43
            LINE N 64 32 0 32 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 400 -172 464 -148 
            LINE N 400 -160 464 -160 
            RECTANGLE N 64 -192 400 64 
        END BLOCKDEF
        BEGIN BLOCKDEF decode2b
            TIMESTAMP 2026 2 13 20 38 32
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
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
        BEGIN BLOCKDEF m4_64b
            TIMESTAMP 2026 2 14 0 4 15
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
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCK XLXI_6 decode2b
            PIN addr(1:0) waddr(1:0)
            PIN out00 waddr00
            PIN out01 waddr01
            PIN out10 waddr10
            PIN out11 waddr11
        END BLOCK
        BEGIN BLOCK XLXI_11 and2
            PIN I0 waddr01
            PIN I1 wena
            PIN O XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_12 and2
            PIN I0 waddr00
            PIN I1 wena
            PIN O XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_13 and2
            PIN I0 waddr10
            PIN I1 wena
            PIN O XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_14 and2
            PIN I0 waddr11
            PIN I1 wena
            PIN O XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_1 reg64
            PIN clk clk
            PIN en XLXN_2
            PIN data_in(63:0) wdata(63:0)
            PIN data_out(63:0) XLXN_77(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 reg64
            PIN clk clk
            PIN en XLXN_1
            PIN data_in(63:0) wdata(63:0)
            PIN data_out(63:0) XLXN_78(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 reg64
            PIN clk clk
            PIN en XLXN_3
            PIN data_in(63:0) wdata(63:0)
            PIN data_out(63:0) XLXN_79(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 reg64
            PIN clk clk
            PIN en XLXN_4
            PIN data_in(63:0) wdata(63:0)
            PIN data_out(63:0) XLXN_80(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_39 m4_64b
            PIN d0(63:0) XLXN_77(63:0)
            PIN d1(63:0) XLXN_78(63:0)
            PIN d2(63:0) XLXN_79(63:0)
            PIN d3(63:0) XLXN_80(63:0)
            PIN s(1:0) r1addr(1:0)
            PIN o(63:0) r1data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_40 m4_64b
            PIN d0(63:0) XLXN_77(63:0)
            PIN d1(63:0) XLXN_78(63:0)
            PIN d2(63:0) XLXN_79(63:0)
            PIN d3(63:0) XLXN_80(63:0)
            PIN s(1:0) r0addr(1:0)
            PIN o(63:0) r0data(63:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_11 1392 1104 R0
        INSTANCE XLXI_12 1392 720 R0
        INSTANCE XLXI_13 1392 1472 R0
        INSTANCE XLXI_14 1392 1872 R0
        BEGIN BRANCH waddr00
            WIRE 1136 976 1280 976
            WIRE 1280 656 1280 976
            WIRE 1280 656 1360 656
            WIRE 1360 656 1392 656
            BEGIN DISPLAY 1359 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH waddr01
            WIRE 1136 1040 1360 1040
            WIRE 1360 1040 1392 1040
            BEGIN DISPLAY 1358 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH waddr10
            WIRE 1136 1104 1280 1104
            WIRE 1280 1104 1280 1408
            WIRE 1280 1408 1344 1408
            WIRE 1344 1408 1392 1408
            BEGIN DISPLAY 1351 1408 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_6 752 1200 R0
        END INSTANCE
        BEGIN BRANCH waddr11
            WIRE 1136 1168 1216 1168
            WIRE 1216 1168 1216 1808
            WIRE 1216 1808 1344 1808
            WIRE 1344 1808 1392 1808
            BEGIN DISPLAY 1344 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wena
            WIRE 400 592 1344 592
            WIRE 1344 592 1392 592
            WIRE 1344 592 1344 976
            WIRE 1344 976 1344 1344
            WIRE 1344 1344 1344 1744
            WIRE 1344 1744 1360 1744
            WIRE 1360 1744 1392 1744
            WIRE 1344 1344 1360 1344
            WIRE 1360 1344 1392 1344
            WIRE 1344 976 1360 976
            WIRE 1360 976 1392 976
            BEGIN DISPLAY 1360 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 1365 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 1368 976 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 400 592 wena R180 28
        BEGIN BRANCH waddr(1:0)
            WIRE 400 976 752 976
        END BRANCH
        IOMARKER 400 976 waddr(1:0) R180 28
        BEGIN INSTANCE XLXI_1 1808 592 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 1808 976 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1808 1344 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1808 1744 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 1648 1008 1808 1008
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1648 624 1808 624
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1648 1376 1808 1376
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1648 1776 1808 1776
        END BRANCH
        BEGIN BRANCH clk
            WIRE 352 2064 1696 2064
            WIRE 1696 432 1808 432
            WIRE 1696 432 1696 816
            WIRE 1696 816 1808 816
            WIRE 1696 816 1696 1184
            WIRE 1696 1184 1808 1184
            WIRE 1696 1184 1696 1584
            WIRE 1696 1584 1808 1584
            WIRE 1696 1584 1696 2064
        END BRANCH
        BEGIN BRANCH r0addr(1:0)
            WIRE 400 256 608 256
            WIRE 608 256 2496 256
            WIRE 2496 256 2496 928
            WIRE 2496 928 2608 928
            WIRE 2608 928 2704 928
            BEGIN DISPLAY 608 256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2614 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wdata(63:0)
            WIRE 432 1536 1744 1536
            WIRE 1744 1536 1744 1712
            WIRE 1744 1712 1808 1712
            WIRE 1744 560 1744 944
            WIRE 1744 944 1744 1312
            WIRE 1744 1312 1744 1536
            WIRE 1744 1312 1808 1312
            WIRE 1744 944 1808 944
            WIRE 1744 560 1808 560
        END BRANCH
        IOMARKER 400 256 r0addr(1:0) R180 28
        IOMARKER 432 1536 wdata(63:0) R180 28
        IOMARKER 352 2064 clk R180 28
        IOMARKER 400 2000 r1addr(1:0) R180 28
        BEGIN BRANCH r1addr(1:0)
            WIRE 400 2000 1408 2000
            WIRE 1408 2000 2000 2000
            WIRE 2000 2000 2496 2000
            WIRE 2496 1504 2496 2000
            WIRE 2496 1504 2592 1504
            WIRE 2592 1504 2704 1504
            BEGIN DISPLAY 2592 1504 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_77(63:0)
            WIRE 2272 432 2288 432
            WIRE 2288 432 2288 656
            WIRE 2288 656 2288 672
            WIRE 2288 672 2704 672
            WIRE 2288 656 2288 1248
            WIRE 2288 1248 2704 1248
        END BRANCH
        BEGIN BRANCH XLXN_78(63:0)
            WIRE 2272 816 2320 816
            WIRE 2320 816 2320 1312
            WIRE 2320 1312 2704 1312
            WIRE 2320 736 2704 736
            WIRE 2320 736 2320 816
        END BRANCH
        BEGIN BRANCH XLXN_79(63:0)
            WIRE 2272 1184 2352 1184
            WIRE 2352 1184 2352 1376
            WIRE 2352 1376 2704 1376
            WIRE 2352 800 2704 800
            WIRE 2352 800 2352 1184
        END BRANCH
        BEGIN BRANCH XLXN_80(63:0)
            WIRE 2272 1584 2384 1584
            WIRE 2384 864 2704 864
            WIRE 2384 864 2384 1440
            WIRE 2384 1440 2384 1584
            WIRE 2384 1440 2704 1440
        END BRANCH
        BEGIN BRANCH r1data(63:0)
            WIRE 3088 1248 3232 1248
        END BRANCH
        IOMARKER 3232 1248 r1data(63:0) R0 28
        BEGIN INSTANCE XLXI_39 2704 1536 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_40 2704 960 R0
        END INSTANCE
        BEGIN BRANCH r0data(63:0)
            WIRE 3088 672 3136 672
            WIRE 3136 672 3248 672
            WIRE 3248 672 3264 672
        END BRANCH
        IOMARKER 3264 672 r0data(63:0) R0 28
    END SHEET
END SCHEMATIC
