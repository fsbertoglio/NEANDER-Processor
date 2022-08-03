--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: neander_map.vhd
-- /___/   /\     Timestamp: Wed Aug 03 20:00:40 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf neander.pcf -rpw 100 -tpw 0 -ar Structure -tm neander -w -dir netgen/map -ofmt vhdl -sim neander_map.ncd neander_map.vhd 
-- Device	: 3s100ecp132-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: neander_map.ncd
-- Output file	: C:\Users\Felipe\Documents\Sistemas-Digitais\NEANDER\NEANDER\netgen\map\neander_map.vhd
-- # of Entities	: 1
-- Design Name	: neander
-- Xilinx	: D:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity neander is
  port (
    clk : in STD_LOGIC := 'X'; 
    sel_MUX : in STD_LOGIC := 'X'; 
    rst_AC : in STD_LOGIC := 'X'; 
    load_PC : in STD_LOGIC := 'X'; 
    reg_N : out STD_LOGIC; 
    ctrl_ULA : in STD_LOGIC := 'X'; 
    reg_Z : out STD_LOGIC; 
    ctrl_AC : in STD_LOGIC := 'X'; 
    rst_PC : in STD_LOGIC := 'X'; 
    rst_RI : in STD_LOGIC := 'X'; 
    ctrl_RDM : in STD_LOGIC := 'X'; 
    ctrl_REM : in STD_LOGIC := 'X'; 
    ctrl_PC : in STD_LOGIC := 'X'; 
    rst_RDM : in STD_LOGIC := 'X'; 
    rst_REM : in STD_LOGIC := 'X'; 
    ctrl_RI : in STD_LOGIC := 'X'; 
    reg_REM : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    reg_RI : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    out_MEM : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    sel_ULA : in STD_LOGIC_VECTOR ( 2 downto 0 ) 
  );
end neander;

architecture Structure of neander is
  signal ctrl_AC_IBUF_558 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal rst_AC_IBUF_560 : STD_LOGIC; 
  signal N2_0 : STD_LOGIC; 
  signal out_ULA_3_7_O : STD_LOGIC; 
  signal out_ULA_3_20_0 : STD_LOGIC; 
  signal N11_0 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal out_ULA_3_0 : STD_LOGIC; 
  signal out_ULA_4_7_O : STD_LOGIC; 
  signal out_ULA_4_20_0 : STD_LOGIC; 
  signal out_ULA_4_0 : STD_LOGIC; 
  signal ctrl_REM_IBUF_576 : STD_LOGIC; 
  signal rst_REM_IBUF_577 : STD_LOGIC; 
  signal sel_MUX_IBUF_578 : STD_LOGIC; 
  signal reg_REM_1_583 : STD_LOGIC; 
  signal reg_REM_0_584 : STD_LOGIC; 
  signal reg_REM_3_588 : STD_LOGIC; 
  signal reg_REM_2_589 : STD_LOGIC; 
  signal reg_REM_5_593 : STD_LOGIC; 
  signal reg_REM_4_594 : STD_LOGIC; 
  signal reg_REM_7_599 : STD_LOGIC; 
  signal reg_REM_6_600 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal out_ULA_1_20_0 : STD_LOGIC; 
  signal out_ULA_7_20_0 : STD_LOGIC; 
  signal ctrl_RDM_IBUF_609 : STD_LOGIC; 
  signal rst_RDM_IBUF_610 : STD_LOGIC; 
  signal out_ULA_0_0 : STD_LOGIC; 
  signal out_ULA_1_0 : STD_LOGIC; 
  signal out_ULA_2_0 : STD_LOGIC; 
  signal reg_Z_cmp_eq000012_0 : STD_LOGIC; 
  signal reg_Z_cmp_eq000025_621 : STD_LOGIC; 
  signal out_ULA_5_0 : STD_LOGIC; 
  signal out_ULA_6_0 : STD_LOGIC; 
  signal out_ULA_7_0 : STD_LOGIC; 
  signal sel_ULA_1_IBUF_626 : STD_LOGIC; 
  signal ctrl_ULA_IBUF1 : STD_LOGIC; 
  signal sel_ULA_0_IBUF_628 : STD_LOGIC; 
  signal sel_ULA_2_IBUF_629 : STD_LOGIC; 
  signal N16_0 : STD_LOGIC; 
  signal out_ULA_2_20_0 : STD_LOGIC; 
  signal out_ULA_6_20_0 : STD_LOGIC; 
  signal out_ULA_5_20_0 : STD_LOGIC; 
  signal ctrl_RI_IBUF_638 : STD_LOGIC; 
  signal rst_RI_IBUF_639 : STD_LOGIC; 
  signal reg_RI_1_640 : STD_LOGIC; 
  signal reg_RI_0_641 : STD_LOGIC; 
  signal reg_RI_3_642 : STD_LOGIC; 
  signal reg_RI_2_643 : STD_LOGIC; 
  signal reg_RI_5_644 : STD_LOGIC; 
  signal reg_RI_4_645 : STD_LOGIC; 
  signal reg_RI_7_646 : STD_LOGIC; 
  signal reg_RI_6_647 : STD_LOGIC; 
  signal load_PC_IBUF_648 : STD_LOGIC; 
  signal ctrl_PC_IBUF_649 : STD_LOGIC; 
  signal rst_PC_IBUF_650 : STD_LOGIC; 
  signal Mcount_reg_PC_cy_1_Q : STD_LOGIC; 
  signal Mcount_reg_PC_cy_3_Q : STD_LOGIC; 
  signal Madd_out_ULA_addsub0000_cy_1_Q : STD_LOGIC; 
  signal Madd_out_ULA_addsub0000_cy_3_Q : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_664 : STD_LOGIC; 
  signal ctrl_ULA_IBUF_665 : STD_LOGIC; 
  signal out_ULA_5_7_O : STD_LOGIC; 
  signal out_ULA_6_7_O : STD_LOGIC; 
  signal out_ULA_7_7_O : STD_LOGIC; 
  signal out_ULA_0_17_O : STD_LOGIC; 
  signal out_ULA_1_7_O : STD_LOGIC; 
  signal out_ULA_2_7_O : STD_LOGIC; 
  signal reg_AC_3_DXMUX_704 : STD_LOGIC; 
  signal reg_AC_3_FXMUX_703 : STD_LOGIC; 
  signal out_ULA_3_7_O_pack_2 : STD_LOGIC; 
  signal reg_AC_3_CLKINV_688 : STD_LOGIC; 
  signal reg_AC_3_CEINV_687 : STD_LOGIC; 
  signal reg_AC_4_DXMUX_743 : STD_LOGIC; 
  signal reg_AC_4_FXMUX_742 : STD_LOGIC; 
  signal out_ULA_4_7_O_pack_2 : STD_LOGIC; 
  signal reg_AC_4_CLKINV_727 : STD_LOGIC; 
  signal reg_AC_4_CEINV_726 : STD_LOGIC; 
  signal reg_REM_5_DXMUX_881 : STD_LOGIC; 
  signal reg_REM_5_DYMUX_865 : STD_LOGIC; 
  signal reg_REM_5_SRINV_856 : STD_LOGIC; 
  signal reg_REM_5_CLKINV_855 : STD_LOGIC; 
  signal reg_REM_5_CEINV_854 : STD_LOGIC; 
  signal reg_REM_7_DXMUX_927 : STD_LOGIC; 
  signal reg_REM_7_DYMUX_911 : STD_LOGIC; 
  signal reg_REM_7_SRINV_902 : STD_LOGIC; 
  signal reg_REM_7_CLKINV_901 : STD_LOGIC; 
  signal reg_REM_7_CEINV_900 : STD_LOGIC; 
  signal out_ULA_1_20_956 : STD_LOGIC; 
  signal out_ULA_7_20_949 : STD_LOGIC; 
  signal reg_RDM_1_DXMUX_979 : STD_LOGIC; 
  signal reg_RDM_1_DYMUX_970 : STD_LOGIC; 
  signal reg_RDM_1_SRINV_968 : STD_LOGIC; 
  signal reg_RDM_1_CLKINV_967 : STD_LOGIC; 
  signal reg_RDM_1_CEINV_966 : STD_LOGIC; 
  signal reg_REM_3_DXMUX_835 : STD_LOGIC; 
  signal reg_REM_3_DYMUX_819 : STD_LOGIC; 
  signal reg_REM_3_SRINV_810 : STD_LOGIC; 
  signal reg_REM_3_CLKINV_809 : STD_LOGIC; 
  signal reg_REM_3_CEINV_808 : STD_LOGIC; 
  signal reg_RDM_5_DXMUX_1035 : STD_LOGIC; 
  signal reg_RDM_5_DYMUX_1026 : STD_LOGIC; 
  signal reg_RDM_5_SRINV_1024 : STD_LOGIC; 
  signal reg_RDM_5_CLKINV_1023 : STD_LOGIC; 
  signal reg_RDM_5_CEINV_1022 : STD_LOGIC; 
  signal reg_REM_1_DXMUX_789 : STD_LOGIC; 
  signal reg_REM_1_DYMUX_773 : STD_LOGIC; 
  signal reg_REM_1_SRINV_764 : STD_LOGIC; 
  signal reg_REM_1_CLKINV_763 : STD_LOGIC; 
  signal reg_REM_1_CEINV_762 : STD_LOGIC; 
  signal reg_RDM_3_DXMUX_1007 : STD_LOGIC; 
  signal reg_RDM_3_DYMUX_998 : STD_LOGIC; 
  signal reg_RDM_3_SRINV_996 : STD_LOGIC; 
  signal reg_RDM_3_CLKINV_995 : STD_LOGIC; 
  signal reg_RDM_3_CEINV_994 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N3_pack_1 : STD_LOGIC; 
  signal out_ULA_3_20_1176 : STD_LOGIC; 
  signal out_ULA_2_20_1169 : STD_LOGIC; 
  signal reg_RI_1_DXMUX_1259 : STD_LOGIC; 
  signal reg_RI_1_DYMUX_1250 : STD_LOGIC; 
  signal reg_RI_1_SRINV_1248 : STD_LOGIC; 
  signal reg_RI_1_CLKINV_1247 : STD_LOGIC; 
  signal reg_RI_1_CEINV_1246 : STD_LOGIC; 
  signal reg_RI_5_DXMUX_1315 : STD_LOGIC; 
  signal reg_RI_5_DYMUX_1306 : STD_LOGIC; 
  signal reg_RI_5_SRINV_1304 : STD_LOGIC; 
  signal reg_RI_5_CLKINV_1303 : STD_LOGIC; 
  signal reg_RI_5_CEINV_1302 : STD_LOGIC; 
  signal out_ULA_6_20_1212 : STD_LOGIC; 
  signal N15_pack_1 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal reg_Z_cmp_eq000012_1080 : STD_LOGIC; 
  signal reg_Z_cmp_eq0000 : STD_LOGIC; 
  signal reg_Z_cmp_eq000025_pack_1 : STD_LOGIC; 
  signal out_ULA_5_20_1236 : STD_LOGIC; 
  signal out_ULA_4_20_1229 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal reg_RI_3_DXMUX_1287 : STD_LOGIC; 
  signal reg_RI_3_DYMUX_1278 : STD_LOGIC; 
  signal reg_RI_3_SRINV_1276 : STD_LOGIC; 
  signal reg_RI_3_CLKINV_1275 : STD_LOGIC; 
  signal reg_RI_3_CEINV_1274 : STD_LOGIC; 
  signal reg_RDM_7_DXMUX_1063 : STD_LOGIC; 
  signal reg_RDM_7_DYMUX_1054 : STD_LOGIC; 
  signal reg_RDM_7_SRINV_1052 : STD_LOGIC; 
  signal reg_RDM_7_CLKINV_1051 : STD_LOGIC; 
  signal reg_RDM_7_CEINV_1050 : STD_LOGIC; 
  signal reg_PC_0_DXMUX_1400 : STD_LOGIC; 
  signal reg_PC_0_XORF_1398 : STD_LOGIC; 
  signal reg_PC_0_CYINIT_1397 : STD_LOGIC; 
  signal reg_PC_0_CYSELF_1390 : STD_LOGIC; 
  signal reg_PC_0_DYMUX_1380 : STD_LOGIC; 
  signal reg_PC_0_XORG_1378 : STD_LOGIC; 
  signal reg_PC_0_CYMUXG_1377 : STD_LOGIC; 
  signal Mcount_reg_PC_cy_0_Q : STD_LOGIC; 
  signal reg_PC_0_LOGIC_ZERO_1375 : STD_LOGIC; 
  signal reg_PC_0_CYSELG_1368 : STD_LOGIC; 
  signal reg_PC_0_SRINV_1366 : STD_LOGIC; 
  signal reg_PC_0_CLKINV_1365 : STD_LOGIC; 
  signal reg_PC_0_CEINV_1364 : STD_LOGIC; 
  signal reg_PC_2_DXMUX_1460 : STD_LOGIC; 
  signal reg_PC_2_XORF_1458 : STD_LOGIC; 
  signal reg_PC_2_CYINIT_1457 : STD_LOGIC; 
  signal reg_PC_2_DYMUX_1442 : STD_LOGIC; 
  signal reg_PC_2_XORG_1440 : STD_LOGIC; 
  signal Mcount_reg_PC_cy_2_Q : STD_LOGIC; 
  signal reg_PC_2_CYSELF_1438 : STD_LOGIC; 
  signal reg_PC_2_CYMUXFAST_1437 : STD_LOGIC; 
  signal reg_PC_2_CYAND_1436 : STD_LOGIC; 
  signal reg_PC_2_FASTCARRY_1435 : STD_LOGIC; 
  signal reg_PC_2_CYMUXG2_1434 : STD_LOGIC; 
  signal reg_PC_2_CYMUXF2_1433 : STD_LOGIC; 
  signal reg_PC_2_LOGIC_ZERO_1432 : STD_LOGIC; 
  signal reg_PC_2_CYSELG_1425 : STD_LOGIC; 
  signal reg_PC_2_SRINV_1423 : STD_LOGIC; 
  signal reg_PC_2_CLKINV_1422 : STD_LOGIC; 
  signal reg_PC_2_CEINV_1421 : STD_LOGIC; 
  signal reg_PC_4_DXMUX_1520 : STD_LOGIC; 
  signal reg_PC_4_XORF_1518 : STD_LOGIC; 
  signal reg_PC_4_CYINIT_1517 : STD_LOGIC; 
  signal reg_PC_4_DYMUX_1502 : STD_LOGIC; 
  signal reg_PC_4_XORG_1500 : STD_LOGIC; 
  signal Mcount_reg_PC_cy_4_Q : STD_LOGIC; 
  signal reg_PC_4_CYSELF_1498 : STD_LOGIC; 
  signal reg_PC_4_CYMUXFAST_1497 : STD_LOGIC; 
  signal reg_PC_4_CYAND_1496 : STD_LOGIC; 
  signal reg_PC_4_FASTCARRY_1495 : STD_LOGIC; 
  signal reg_PC_4_CYMUXG2_1494 : STD_LOGIC; 
  signal reg_PC_4_CYMUXF2_1493 : STD_LOGIC; 
  signal reg_PC_4_LOGIC_ZERO_1492 : STD_LOGIC; 
  signal reg_PC_4_CYSELG_1485 : STD_LOGIC; 
  signal reg_PC_4_SRINV_1483 : STD_LOGIC; 
  signal reg_PC_4_CLKINV_1482 : STD_LOGIC; 
  signal reg_PC_4_CEINV_1481 : STD_LOGIC; 
  signal reg_RI_7_DXMUX_1343 : STD_LOGIC; 
  signal reg_RI_7_DYMUX_1334 : STD_LOGIC; 
  signal reg_RI_7_SRINV_1332 : STD_LOGIC; 
  signal reg_RI_7_CLKINV_1331 : STD_LOGIC; 
  signal reg_RI_7_CEINV_1330 : STD_LOGIC; 
  signal out_ULA_addsub0000_6_XORF_1724 : STD_LOGIC; 
  signal out_ULA_addsub0000_6_CYINIT_1723 : STD_LOGIC; 
  signal out_ULA_addsub0000_6_CY0F_1722 : STD_LOGIC; 
  signal out_ULA_addsub0000_6_CYSELF_1714 : STD_LOGIC; 
  signal out_ULA_addsub0000_6_XORG_1711 : STD_LOGIC; 
  signal Madd_out_ULA_addsub0000_cy_6_Q : STD_LOGIC; 
  signal out_ULA_addsub0000_4_XORF_1693 : STD_LOGIC; 
  signal out_ULA_addsub0000_4_CYINIT_1692 : STD_LOGIC; 
  signal out_ULA_addsub0000_4_CY0F_1691 : STD_LOGIC; 
  signal out_ULA_addsub0000_4_XORG_1681 : STD_LOGIC; 
  signal Madd_out_ULA_addsub0000_cy_4_Q : STD_LOGIC; 
  signal out_ULA_addsub0000_4_CYSELF_1679 : STD_LOGIC; 
  signal out_ULA_addsub0000_4_CYMUXFAST_1678 : STD_LOGIC; 
  signal out_ULA_addsub0000_4_CYAND_1677 : STD_LOGIC; 
  signal out_ULA_addsub0000_4_FASTCARRY_1676 : STD_LOGIC; 
  signal out_ULA_addsub0000_4_CYMUXG2_1675 : STD_LOGIC; 
  signal out_ULA_addsub0000_4_CYMUXF2_1674 : STD_LOGIC; 
  signal out_ULA_addsub0000_4_CY0G_1673 : STD_LOGIC; 
  signal out_ULA_addsub0000_4_CYSELG_1665 : STD_LOGIC; 
  signal reg_RI_0_O : STD_LOGIC; 
  signal reg_RI_1_O : STD_LOGIC; 
  signal ctrl_RDM_INBUF : STD_LOGIC; 
  signal reg_PC_6_DXMUX_1573 : STD_LOGIC; 
  signal reg_PC_6_XORF_1571 : STD_LOGIC; 
  signal reg_PC_6_LOGIC_ZERO_1570 : STD_LOGIC; 
  signal reg_PC_6_CYINIT_1569 : STD_LOGIC; 
  signal reg_PC_6_CYSELF_1562 : STD_LOGIC; 
  signal reg_PC_6_DYMUX_1553 : STD_LOGIC; 
  signal reg_PC_6_XORG_1551 : STD_LOGIC; 
  signal Mcount_reg_PC_cy_6_Q : STD_LOGIC; 
  signal reg_PC_6_SRINV_1542 : STD_LOGIC; 
  signal reg_PC_6_CLKINV_1541 : STD_LOGIC; 
  signal reg_PC_6_CEINV_1540 : STD_LOGIC; 
  signal sel_ULA_0_INBUF : STD_LOGIC; 
  signal reg_RI_2_O : STD_LOGIC; 
  signal reg_RI_3_O : STD_LOGIC; 
  signal out_ULA_addsub0000_0_XORF_1615 : STD_LOGIC; 
  signal out_ULA_addsub0000_0_CYINIT_1614 : STD_LOGIC; 
  signal out_ULA_addsub0000_0_CY0F_1613 : STD_LOGIC; 
  signal out_ULA_addsub0000_0_CYSELF_1605 : STD_LOGIC; 
  signal out_ULA_addsub0000_0_BXINV_1603 : STD_LOGIC; 
  signal out_ULA_addsub0000_0_XORG_1601 : STD_LOGIC; 
  signal out_ULA_addsub0000_0_CYMUXG_1600 : STD_LOGIC; 
  signal Madd_out_ULA_addsub0000_cy_0_Q : STD_LOGIC; 
  signal out_ULA_addsub0000_0_CY0G_1598 : STD_LOGIC; 
  signal out_ULA_addsub0000_0_CYSELG_1590 : STD_LOGIC; 
  signal ctrl_REM_INBUF : STD_LOGIC; 
  signal sel_MUX_INBUF : STD_LOGIC; 
  signal out_ULA_addsub0000_2_XORF_1654 : STD_LOGIC; 
  signal out_ULA_addsub0000_2_CYINIT_1653 : STD_LOGIC; 
  signal out_ULA_addsub0000_2_CY0F_1652 : STD_LOGIC; 
  signal out_ULA_addsub0000_2_XORG_1642 : STD_LOGIC; 
  signal Madd_out_ULA_addsub0000_cy_2_Q : STD_LOGIC; 
  signal out_ULA_addsub0000_2_CYSELF_1640 : STD_LOGIC; 
  signal out_ULA_addsub0000_2_CYMUXFAST_1639 : STD_LOGIC; 
  signal out_ULA_addsub0000_2_CYAND_1638 : STD_LOGIC; 
  signal out_ULA_addsub0000_2_FASTCARRY_1637 : STD_LOGIC; 
  signal out_ULA_addsub0000_2_CYMUXG2_1636 : STD_LOGIC; 
  signal out_ULA_addsub0000_2_CYMUXF2_1635 : STD_LOGIC; 
  signal out_ULA_addsub0000_2_CY0G_1634 : STD_LOGIC; 
  signal out_ULA_addsub0000_2_CYSELG_1626 : STD_LOGIC; 
  signal reg_RI_4_O : STD_LOGIC; 
  signal sel_ULA_1_INBUF : STD_LOGIC; 
  signal ctrl_PC_INBUF : STD_LOGIC; 
  signal reg_REM_4_O : STD_LOGIC; 
  signal ctrl_RI_INBUF : STD_LOGIC; 
  signal rst_PC_INBUF : STD_LOGIC; 
  signal sel_ULA_2_INBUF : STD_LOGIC; 
  signal reg_REM_5_O : STD_LOGIC; 
  signal reg_RI_7_O : STD_LOGIC; 
  signal ctrl_ULA_INBUF : STD_LOGIC; 
  signal reg_REM_6_O : STD_LOGIC; 
  signal reg_REM_2_O : STD_LOGIC; 
  signal clk_INBUF : STD_LOGIC; 
  signal rst_AC_INBUF : STD_LOGIC; 
  signal reg_Z_O : STD_LOGIC; 
  signal rst_RI_INBUF : STD_LOGIC; 
  signal reg_REM_3_O : STD_LOGIC; 
  signal reg_REM_7_O : STD_LOGIC; 
  signal reg_REM_0_O : STD_LOGIC; 
  signal reg_RI_6_O : STD_LOGIC; 
  signal reg_N_O : STD_LOGIC; 
  signal reg_REM_1_O : STD_LOGIC; 
  signal reg_RI_5_O : STD_LOGIC; 
  signal out_MEM_0_INBUF : STD_LOGIC; 
  signal out_MEM_1_INBUF : STD_LOGIC; 
  signal ctrl_AC_INBUF : STD_LOGIC; 
  signal out_MEM_3_INBUF : STD_LOGIC; 
  signal reg_AC_0_FFX_RST : STD_LOGIC; 
  signal reg_AC_0_DXMUX_2196 : STD_LOGIC; 
  signal reg_AC_0_FXMUX_2195 : STD_LOGIC; 
  signal out_ULA_0_17_O_pack_2 : STD_LOGIC; 
  signal reg_AC_0_CLKINV_2180 : STD_LOGIC; 
  signal reg_AC_0_CEINV_2179 : STD_LOGIC; 
  signal out_MEM_7_INBUF : STD_LOGIC; 
  signal clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal out_MEM_4_INBUF : STD_LOGIC; 
  signal reg_AC_7_DXMUX_2157 : STD_LOGIC; 
  signal reg_AC_7_FXMUX_2156 : STD_LOGIC; 
  signal out_ULA_7_7_O_pack_2 : STD_LOGIC; 
  signal reg_AC_7_CLKINV_2141 : STD_LOGIC; 
  signal reg_AC_7_CEINV_2140 : STD_LOGIC; 
  signal load_PC_INBUF : STD_LOGIC; 
  signal reg_AC_1_FFX_RST : STD_LOGIC; 
  signal reg_AC_1_DXMUX_2235 : STD_LOGIC; 
  signal reg_AC_1_FXMUX_2234 : STD_LOGIC; 
  signal out_ULA_1_7_O_pack_2 : STD_LOGIC; 
  signal reg_AC_1_CLKINV_2219 : STD_LOGIC; 
  signal reg_AC_1_CEINV_2218 : STD_LOGIC; 
  signal reg_AC_7_FFX_RSTAND_2163 : STD_LOGIC; 
  signal ctrl_ULA_IBUF_BUFG_S_INVNOT : STD_LOGIC; 
  signal reg_AC_5_FFX_RST : STD_LOGIC; 
  signal reg_AC_5_DXMUX_2079 : STD_LOGIC; 
  signal reg_AC_5_FXMUX_2078 : STD_LOGIC; 
  signal out_ULA_5_7_O_pack_2 : STD_LOGIC; 
  signal reg_AC_5_CLKINV_2063 : STD_LOGIC; 
  signal reg_AC_5_CEINV_2062 : STD_LOGIC; 
  signal reg_AC_6_DXMUX_2118 : STD_LOGIC; 
  signal reg_AC_6_FXMUX_2117 : STD_LOGIC; 
  signal out_ULA_6_7_O_pack_2 : STD_LOGIC; 
  signal reg_AC_6_CLKINV_2102 : STD_LOGIC; 
  signal reg_AC_6_CEINV_2101 : STD_LOGIC; 
  signal out_MEM_6_INBUF : STD_LOGIC; 
  signal reg_AC_2_FFX_RST : STD_LOGIC; 
  signal reg_AC_2_DXMUX_2274 : STD_LOGIC; 
  signal reg_AC_2_FXMUX_2273 : STD_LOGIC; 
  signal out_ULA_2_7_O_pack_2 : STD_LOGIC; 
  signal reg_AC_2_CLKINV_2258 : STD_LOGIC; 
  signal reg_AC_2_CEINV_2257 : STD_LOGIC; 
  signal rst_RDM_INBUF : STD_LOGIC; 
  signal rst_REM_INBUF : STD_LOGIC; 
  signal out_MEM_2_INBUF : STD_LOGIC; 
  signal out_MEM_5_INBUF : STD_LOGIC; 
  signal reg_AC_6_FFX_RSTAND_2124 : STD_LOGIC; 
  signal reg_AC_3_FFX_RSTAND_710 : STD_LOGIC; 
  signal reg_Z_OUTPUT_OFF_ODDRIN1_MUX : STD_LOGIC; 
  signal reg_Z_OBUF_1870 : STD_LOGIC; 
  signal reg_Z_OUTPUT_OTCLK1INVNOT : STD_LOGIC; 
  signal reg_AC_4_FFX_RSTAND_749 : STD_LOGIC; 
  signal reg_N_OUTPUT_OTCLK1INVNOT : STD_LOGIC; 
  signal reg_N_OBUF_1887 : STD_LOGIC; 
  signal reg_N_OUTPUT_OFF_ODDRIN1_MUX : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_reg_Z_CLK : STD_LOGIC; 
  signal NlwInverterSignal_reg_N_CLK : STD_LOGIC; 
  signal out_ULA_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal reg_AC : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal reg_RDM : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal reg_PC : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal out_ULA : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal out_MUX : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcount_reg_PC_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Madd_out_ULA_addsub0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  reg_AC_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_3_FXMUX_703,
      O => reg_AC_3_DXMUX_704
    );
  reg_AC_3_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_3_FXMUX_703,
      O => out_ULA_3_0
    );
  reg_AC_3_FXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA(3),
      O => reg_AC_3_FXMUX_703
    );
  reg_AC_3_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_3_7_O_pack_2,
      O => out_ULA_3_7_O
    );
  reg_AC_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_AC_3_CLKINV_688
    );
  reg_AC_3_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_AC_IBUF_558,
      O => reg_AC_3_CEINV_687
    );
  reg_AC_4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_4_FXMUX_742,
      O => reg_AC_4_DXMUX_743
    );
  reg_AC_4_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_4_FXMUX_742,
      O => out_ULA_4_0
    );
  reg_AC_4_FXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA(4),
      O => reg_AC_4_FXMUX_742
    );
  reg_AC_4_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_4_7_O_pack_2,
      O => out_ULA_4_7_O
    );
  reg_AC_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_AC_4_CLKINV_727
    );
  reg_AC_4_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_AC_IBUF_558,
      O => reg_AC_4_CEINV_726
    );
  reg_REM_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MUX(5),
      O => reg_REM_5_DXMUX_881
    );
  reg_REM_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MUX(4),
      O => reg_REM_5_DYMUX_865
    );
  reg_REM_5_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_REM_IBUF_577,
      O => reg_REM_5_SRINV_856
    );
  reg_REM_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_REM_5_CLKINV_855
    );
  reg_REM_5_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_REM_IBUF_576,
      O => reg_REM_5_CEINV_854
    );
  reg_REM_7_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MUX(7),
      O => reg_REM_7_DXMUX_927
    );
  reg_REM_7_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MUX(6),
      O => reg_REM_7_DYMUX_911
    );
  reg_REM_7_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_REM_IBUF_577,
      O => reg_REM_7_SRINV_902
    );
  reg_REM_7_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_REM_7_CLKINV_901
    );
  reg_REM_7_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_REM_IBUF_576,
      O => reg_REM_7_CEINV_900
    );
  out_ULA_1_20_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_1_20_956,
      O => out_ULA_1_20_0
    );
  out_ULA_1_20_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_7_20_949,
      O => out_ULA_7_20_0
    );
  reg_RDM_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM_1_INBUF,
      O => reg_RDM_1_DXMUX_979
    );
  reg_RDM_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM_0_INBUF,
      O => reg_RDM_1_DYMUX_970
    );
  reg_RDM_1_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_RDM_IBUF_610,
      O => reg_RDM_1_SRINV_968
    );
  reg_RDM_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_RDM_1_CLKINV_967
    );
  reg_RDM_1_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_RDM_IBUF_609,
      O => reg_RDM_1_CEINV_966
    );
  reg_REM_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MUX(3),
      O => reg_REM_3_DXMUX_835
    );
  reg_REM_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MUX(2),
      O => reg_REM_3_DYMUX_819
    );
  reg_REM_3_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_REM_IBUF_577,
      O => reg_REM_3_SRINV_810
    );
  reg_REM_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_REM_3_CLKINV_809
    );
  reg_REM_3_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_REM_IBUF_576,
      O => reg_REM_3_CEINV_808
    );
  reg_RDM_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM_5_INBUF,
      O => reg_RDM_5_DXMUX_1035
    );
  reg_RDM_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM_4_INBUF,
      O => reg_RDM_5_DYMUX_1026
    );
  reg_RDM_5_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_RDM_IBUF_610,
      O => reg_RDM_5_SRINV_1024
    );
  reg_RDM_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_RDM_5_CLKINV_1023
    );
  reg_RDM_5_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_RDM_IBUF_609,
      O => reg_RDM_5_CEINV_1022
    );
  reg_REM_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MUX(1),
      O => reg_REM_1_DXMUX_789
    );
  reg_REM_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MUX(0),
      O => reg_REM_1_DYMUX_773
    );
  reg_REM_1_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_REM_IBUF_577,
      O => reg_REM_1_SRINV_764
    );
  reg_REM_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_REM_1_CLKINV_763
    );
  reg_REM_1_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_REM_IBUF_576,
      O => reg_REM_1_CEINV_762
    );
  reg_RDM_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM_3_INBUF,
      O => reg_RDM_3_DXMUX_1007
    );
  reg_RDM_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM_2_INBUF,
      O => reg_RDM_3_DYMUX_998
    );
  reg_RDM_3_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_RDM_IBUF_610,
      O => reg_RDM_3_SRINV_996
    );
  reg_RDM_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_RDM_3_CLKINV_995
    );
  reg_RDM_3_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_RDM_IBUF_609,
      O => reg_RDM_3_CEINV_994
    );
  N16_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N16,
      O => N16_0
    );
  N16_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N3_pack_1,
      O => N3
    );
  out_ULA_3_20_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_3_20_1176,
      O => out_ULA_3_20_0
    );
  out_ULA_3_20_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_2_20_1169,
      O => out_ULA_2_20_0
    );
  reg_RI_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RDM(1),
      O => reg_RI_1_DXMUX_1259
    );
  reg_RI_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RDM(0),
      O => reg_RI_1_DYMUX_1250
    );
  reg_RI_1_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_RI_IBUF_639,
      O => reg_RI_1_SRINV_1248
    );
  reg_RI_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_RI_1_CLKINV_1247
    );
  reg_RI_1_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_RI_IBUF_638,
      O => reg_RI_1_CEINV_1246
    );
  reg_RI_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RDM(5),
      O => reg_RI_5_DXMUX_1315
    );
  reg_RI_5_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RDM(4),
      O => reg_RI_5_DYMUX_1306
    );
  reg_RI_5_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_RI_IBUF_639,
      O => reg_RI_5_SRINV_1304
    );
  reg_RI_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_RI_5_CLKINV_1303
    );
  reg_RI_5_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_RI_IBUF_638,
      O => reg_RI_5_CEINV_1302
    );
  out_ULA_6_20_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_6_20_1212,
      O => out_ULA_6_20_0
    );
  out_ULA_6_20_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N15_pack_1,
      O => N15
    );
  N18_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  reg_Z_cmp_eq000012_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_Z_cmp_eq000012_1080,
      O => reg_Z_cmp_eq000012_0
    );
  reg_Z_cmp_eq0000_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_Z_cmp_eq000025_pack_1,
      O => reg_Z_cmp_eq000025_621
    );
  out_ULA_5_20_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_5_20_1236,
      O => out_ULA_5_20_0
    );
  out_ULA_5_20_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_4_20_1229,
      O => out_ULA_4_20_0
    );
  N2_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N2,
      O => N2_0
    );
  N2_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => N11,
      O => N11_0
    );
  reg_RI_3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RDM(3),
      O => reg_RI_3_DXMUX_1287
    );
  reg_RI_3_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RDM(2),
      O => reg_RI_3_DYMUX_1278
    );
  reg_RI_3_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_RI_IBUF_639,
      O => reg_RI_3_SRINV_1276
    );
  reg_RI_3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_RI_3_CLKINV_1275
    );
  reg_RI_3_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_RI_IBUF_638,
      O => reg_RI_3_CEINV_1274
    );
  reg_RDM_7_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM_7_INBUF,
      O => reg_RDM_7_DXMUX_1063
    );
  reg_RDM_7_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM_6_INBUF,
      O => reg_RDM_7_DYMUX_1054
    );
  reg_RDM_7_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_RDM_IBUF_610,
      O => reg_RDM_7_SRINV_1052
    );
  reg_RDM_7_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_RDM_7_CLKINV_1051
    );
  reg_RDM_7_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_RDM_IBUF_609,
      O => reg_RDM_7_CEINV_1050
    );
  reg_PC_0_LOGIC_ZERO : X_ZERO
    port map (
      O => reg_PC_0_LOGIC_ZERO_1375
    );
  reg_PC_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_PC_0_XORF_1398,
      O => reg_PC_0_DXMUX_1400
    );
  reg_PC_0_XORF : X_XOR2
    port map (
      I0 => reg_PC_0_CYINIT_1397,
      I1 => Mcount_reg_PC_lut(0),
      O => reg_PC_0_XORF_1398
    );
  reg_PC_0_CYMUXF : X_MUX2
    port map (
      IA => reg_PC_0_LOGIC_ZERO_1375,
      IB => reg_PC_0_CYINIT_1397,
      SEL => reg_PC_0_CYSELF_1390,
      O => Mcount_reg_PC_cy_0_Q
    );
  reg_PC_0_CYINIT : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => load_PC_IBUF_648,
      O => reg_PC_0_CYINIT_1397
    );
  reg_PC_0_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_reg_PC_lut(0),
      O => reg_PC_0_CYSELF_1390
    );
  reg_PC_0_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_PC_0_XORG_1378,
      O => reg_PC_0_DYMUX_1380
    );
  reg_PC_0_XORG : X_XOR2
    port map (
      I0 => Mcount_reg_PC_cy_0_Q,
      I1 => Mcount_reg_PC_lut(1),
      O => reg_PC_0_XORG_1378
    );
  reg_PC_0_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_PC_0_CYMUXG_1377,
      O => Mcount_reg_PC_cy_1_Q
    );
  reg_PC_0_CYMUXG : X_MUX2
    port map (
      IA => reg_PC_0_LOGIC_ZERO_1375,
      IB => Mcount_reg_PC_cy_0_Q,
      SEL => reg_PC_0_CYSELG_1368,
      O => reg_PC_0_CYMUXG_1377
    );
  reg_PC_0_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_reg_PC_lut(1),
      O => reg_PC_0_CYSELG_1368
    );
  reg_PC_0_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_PC_IBUF_650,
      O => reg_PC_0_SRINV_1366
    );
  reg_PC_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_PC_0_CLKINV_1365
    );
  reg_PC_0_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_PC_IBUF_649,
      O => reg_PC_0_CEINV_1364
    );
  reg_PC_2_LOGIC_ZERO : X_ZERO
    port map (
      O => reg_PC_2_LOGIC_ZERO_1432
    );
  reg_PC_2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_PC_2_XORF_1458,
      O => reg_PC_2_DXMUX_1460
    );
  reg_PC_2_XORF : X_XOR2
    port map (
      I0 => reg_PC_2_CYINIT_1457,
      I1 => Mcount_reg_PC_lut(2),
      O => reg_PC_2_XORF_1458
    );
  reg_PC_2_CYMUXF : X_MUX2
    port map (
      IA => reg_PC_2_LOGIC_ZERO_1432,
      IB => reg_PC_2_CYINIT_1457,
      SEL => reg_PC_2_CYSELF_1438,
      O => Mcount_reg_PC_cy_2_Q
    );
  reg_PC_2_CYMUXF2 : X_MUX2
    port map (
      IA => reg_PC_2_LOGIC_ZERO_1432,
      IB => reg_PC_2_LOGIC_ZERO_1432,
      SEL => reg_PC_2_CYSELF_1438,
      O => reg_PC_2_CYMUXF2_1433
    );
  reg_PC_2_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_reg_PC_cy_1_Q,
      O => reg_PC_2_CYINIT_1457
    );
  reg_PC_2_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_reg_PC_lut(2),
      O => reg_PC_2_CYSELF_1438
    );
  reg_PC_2_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_PC_2_XORG_1440,
      O => reg_PC_2_DYMUX_1442
    );
  reg_PC_2_XORG : X_XOR2
    port map (
      I0 => Mcount_reg_PC_cy_2_Q,
      I1 => Mcount_reg_PC_lut(3),
      O => reg_PC_2_XORG_1440
    );
  reg_PC_2_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_PC_2_CYMUXFAST_1437,
      O => Mcount_reg_PC_cy_3_Q
    );
  reg_PC_2_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_reg_PC_cy_1_Q,
      O => reg_PC_2_FASTCARRY_1435
    );
  reg_PC_2_CYAND : X_AND2
    port map (
      I0 => reg_PC_2_CYSELG_1425,
      I1 => reg_PC_2_CYSELF_1438,
      O => reg_PC_2_CYAND_1436
    );
  reg_PC_2_CYMUXFAST : X_MUX2
    port map (
      IA => reg_PC_2_CYMUXG2_1434,
      IB => reg_PC_2_FASTCARRY_1435,
      SEL => reg_PC_2_CYAND_1436,
      O => reg_PC_2_CYMUXFAST_1437
    );
  reg_PC_2_CYMUXG2 : X_MUX2
    port map (
      IA => reg_PC_2_LOGIC_ZERO_1432,
      IB => reg_PC_2_CYMUXF2_1433,
      SEL => reg_PC_2_CYSELG_1425,
      O => reg_PC_2_CYMUXG2_1434
    );
  reg_PC_2_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_reg_PC_lut(3),
      O => reg_PC_2_CYSELG_1425
    );
  reg_PC_2_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_PC_IBUF_650,
      O => reg_PC_2_SRINV_1423
    );
  reg_PC_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_PC_2_CLKINV_1422
    );
  reg_PC_2_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_PC_IBUF_649,
      O => reg_PC_2_CEINV_1421
    );
  reg_PC_4_LOGIC_ZERO : X_ZERO
    port map (
      O => reg_PC_4_LOGIC_ZERO_1492
    );
  reg_PC_4_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_PC_4_XORF_1518,
      O => reg_PC_4_DXMUX_1520
    );
  reg_PC_4_XORF : X_XOR2
    port map (
      I0 => reg_PC_4_CYINIT_1517,
      I1 => Mcount_reg_PC_lut(4),
      O => reg_PC_4_XORF_1518
    );
  reg_PC_4_CYMUXF : X_MUX2
    port map (
      IA => reg_PC_4_LOGIC_ZERO_1492,
      IB => reg_PC_4_CYINIT_1517,
      SEL => reg_PC_4_CYSELF_1498,
      O => Mcount_reg_PC_cy_4_Q
    );
  reg_PC_4_CYMUXF2 : X_MUX2
    port map (
      IA => reg_PC_4_LOGIC_ZERO_1492,
      IB => reg_PC_4_LOGIC_ZERO_1492,
      SEL => reg_PC_4_CYSELF_1498,
      O => reg_PC_4_CYMUXF2_1493
    );
  reg_PC_4_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_reg_PC_cy_3_Q,
      O => reg_PC_4_CYINIT_1517
    );
  reg_PC_4_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_reg_PC_lut(4),
      O => reg_PC_4_CYSELF_1498
    );
  reg_PC_4_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_PC_4_XORG_1500,
      O => reg_PC_4_DYMUX_1502
    );
  reg_PC_4_XORG : X_XOR2
    port map (
      I0 => Mcount_reg_PC_cy_4_Q,
      I1 => Mcount_reg_PC_lut(5),
      O => reg_PC_4_XORG_1500
    );
  reg_PC_4_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_reg_PC_cy_3_Q,
      O => reg_PC_4_FASTCARRY_1495
    );
  reg_PC_4_CYAND : X_AND2
    port map (
      I0 => reg_PC_4_CYSELG_1485,
      I1 => reg_PC_4_CYSELF_1498,
      O => reg_PC_4_CYAND_1496
    );
  reg_PC_4_CYMUXFAST : X_MUX2
    port map (
      IA => reg_PC_4_CYMUXG2_1494,
      IB => reg_PC_4_FASTCARRY_1495,
      SEL => reg_PC_4_CYAND_1496,
      O => reg_PC_4_CYMUXFAST_1497
    );
  reg_PC_4_CYMUXG2 : X_MUX2
    port map (
      IA => reg_PC_4_LOGIC_ZERO_1492,
      IB => reg_PC_4_CYMUXF2_1493,
      SEL => reg_PC_4_CYSELG_1485,
      O => reg_PC_4_CYMUXG2_1494
    );
  reg_PC_4_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_reg_PC_lut(5),
      O => reg_PC_4_CYSELG_1485
    );
  reg_PC_4_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_PC_IBUF_650,
      O => reg_PC_4_SRINV_1483
    );
  reg_PC_4_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_PC_4_CLKINV_1482
    );
  reg_PC_4_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_PC_IBUF_649,
      O => reg_PC_4_CEINV_1481
    );
  reg_RI_7_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RDM(7),
      O => reg_RI_7_DXMUX_1343
    );
  reg_RI_7_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RDM(6),
      O => reg_RI_7_DYMUX_1334
    );
  reg_RI_7_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_RI_IBUF_639,
      O => reg_RI_7_SRINV_1332
    );
  reg_RI_7_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_RI_7_CLKINV_1331
    );
  reg_RI_7_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_RI_IBUF_638,
      O => reg_RI_7_CEINV_1330
    );
  out_ULA_addsub0000_6_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_addsub0000_6_XORF_1724,
      O => out_ULA_addsub0000(6)
    );
  out_ULA_addsub0000_6_XORF : X_XOR2
    port map (
      I0 => out_ULA_addsub0000_6_CYINIT_1723,
      I1 => Madd_out_ULA_addsub0000_lut(6),
      O => out_ULA_addsub0000_6_XORF_1724
    );
  out_ULA_addsub0000_6_CYMUXF : X_MUX2
    port map (
      IA => out_ULA_addsub0000_6_CY0F_1722,
      IB => out_ULA_addsub0000_6_CYINIT_1723,
      SEL => out_ULA_addsub0000_6_CYSELF_1714,
      O => Madd_out_ULA_addsub0000_cy_6_Q
    );
  out_ULA_addsub0000_6_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_addsub0000_4_CYMUXFAST_1678,
      O => out_ULA_addsub0000_6_CYINIT_1723
    );
  out_ULA_addsub0000_6_CY0F : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC(6),
      O => out_ULA_addsub0000_6_CY0F_1722
    );
  out_ULA_addsub0000_6_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_out_ULA_addsub0000_lut(6),
      O => out_ULA_addsub0000_6_CYSELF_1714
    );
  out_ULA_addsub0000_6_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_addsub0000_6_XORG_1711,
      O => out_ULA_addsub0000(7)
    );
  out_ULA_addsub0000_6_XORG : X_XOR2
    port map (
      I0 => Madd_out_ULA_addsub0000_cy_6_Q,
      I1 => Madd_out_ULA_addsub0000_lut(7),
      O => out_ULA_addsub0000_6_XORG_1711
    );
  out_ULA_addsub0000_4_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_addsub0000_4_XORF_1693,
      O => out_ULA_addsub0000(4)
    );
  out_ULA_addsub0000_4_XORF : X_XOR2
    port map (
      I0 => out_ULA_addsub0000_4_CYINIT_1692,
      I1 => Madd_out_ULA_addsub0000_lut(4),
      O => out_ULA_addsub0000_4_XORF_1693
    );
  out_ULA_addsub0000_4_CYMUXF : X_MUX2
    port map (
      IA => out_ULA_addsub0000_4_CY0F_1691,
      IB => out_ULA_addsub0000_4_CYINIT_1692,
      SEL => out_ULA_addsub0000_4_CYSELF_1679,
      O => Madd_out_ULA_addsub0000_cy_4_Q
    );
  out_ULA_addsub0000_4_CYMUXF2 : X_MUX2
    port map (
      IA => out_ULA_addsub0000_4_CY0F_1691,
      IB => out_ULA_addsub0000_4_CY0F_1691,
      SEL => out_ULA_addsub0000_4_CYSELF_1679,
      O => out_ULA_addsub0000_4_CYMUXF2_1674
    );
  out_ULA_addsub0000_4_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_out_ULA_addsub0000_cy_3_Q,
      O => out_ULA_addsub0000_4_CYINIT_1692
    );
  out_ULA_addsub0000_4_CY0F : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC(4),
      O => out_ULA_addsub0000_4_CY0F_1691
    );
  out_ULA_addsub0000_4_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_out_ULA_addsub0000_lut(4),
      O => out_ULA_addsub0000_4_CYSELF_1679
    );
  out_ULA_addsub0000_4_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_addsub0000_4_XORG_1681,
      O => out_ULA_addsub0000(5)
    );
  out_ULA_addsub0000_4_XORG : X_XOR2
    port map (
      I0 => Madd_out_ULA_addsub0000_cy_4_Q,
      I1 => Madd_out_ULA_addsub0000_lut(5),
      O => out_ULA_addsub0000_4_XORG_1681
    );
  out_ULA_addsub0000_4_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_out_ULA_addsub0000_cy_3_Q,
      O => out_ULA_addsub0000_4_FASTCARRY_1676
    );
  out_ULA_addsub0000_4_CYAND : X_AND2
    port map (
      I0 => out_ULA_addsub0000_4_CYSELG_1665,
      I1 => out_ULA_addsub0000_4_CYSELF_1679,
      O => out_ULA_addsub0000_4_CYAND_1677
    );
  out_ULA_addsub0000_4_CYMUXFAST : X_MUX2
    port map (
      IA => out_ULA_addsub0000_4_CYMUXG2_1675,
      IB => out_ULA_addsub0000_4_FASTCARRY_1676,
      SEL => out_ULA_addsub0000_4_CYAND_1677,
      O => out_ULA_addsub0000_4_CYMUXFAST_1678
    );
  out_ULA_addsub0000_4_CYMUXG2 : X_MUX2
    port map (
      IA => out_ULA_addsub0000_4_CY0G_1673,
      IB => out_ULA_addsub0000_4_CYMUXF2_1674,
      SEL => out_ULA_addsub0000_4_CYSELG_1665,
      O => out_ULA_addsub0000_4_CYMUXG2_1675
    );
  out_ULA_addsub0000_4_CY0G : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC(5),
      O => out_ULA_addsub0000_4_CY0G_1673
    );
  out_ULA_addsub0000_4_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_out_ULA_addsub0000_lut(5),
      O => out_ULA_addsub0000_4_CYSELG_1665
    );
  reg_RI_0_OBUF : X_OBUF
    port map (
      I => reg_RI_0_O,
      O => reg_RI(0)
    );
  reg_RI_1_OBUF : X_OBUF
    port map (
      I => reg_RI_1_O,
      O => reg_RI(1)
    );
  ctrl_RDM_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_RDM,
      O => ctrl_RDM_INBUF
    );
  reg_PC_6_LOGIC_ZERO : X_ZERO
    port map (
      O => reg_PC_6_LOGIC_ZERO_1570
    );
  reg_PC_6_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_PC_6_XORF_1571,
      O => reg_PC_6_DXMUX_1573
    );
  reg_PC_6_XORF : X_XOR2
    port map (
      I0 => reg_PC_6_CYINIT_1569,
      I1 => Mcount_reg_PC_lut(6),
      O => reg_PC_6_XORF_1571
    );
  reg_PC_6_CYMUXF : X_MUX2
    port map (
      IA => reg_PC_6_LOGIC_ZERO_1570,
      IB => reg_PC_6_CYINIT_1569,
      SEL => reg_PC_6_CYSELF_1562,
      O => Mcount_reg_PC_cy_6_Q
    );
  reg_PC_6_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_PC_4_CYMUXFAST_1497,
      O => reg_PC_6_CYINIT_1569
    );
  reg_PC_6_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Mcount_reg_PC_lut(6),
      O => reg_PC_6_CYSELF_1562
    );
  reg_PC_6_DYMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_PC_6_XORG_1551,
      O => reg_PC_6_DYMUX_1553
    );
  reg_PC_6_XORG : X_XOR2
    port map (
      I0 => Mcount_reg_PC_cy_6_Q,
      I1 => Mcount_reg_PC_lut(7),
      O => reg_PC_6_XORG_1551
    );
  reg_PC_6_SRINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_PC_IBUF_650,
      O => reg_PC_6_SRINV_1542
    );
  reg_PC_6_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_PC_6_CLKINV_1541
    );
  reg_PC_6_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_PC_IBUF_649,
      O => reg_PC_6_CEINV_1540
    );
  sel_ULA_0_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => sel_ULA(0),
      O => sel_ULA_0_INBUF
    );
  reg_RI_2_OBUF : X_OBUF
    port map (
      I => reg_RI_2_O,
      O => reg_RI(2)
    );
  reg_RI_3_OBUF : X_OBUF
    port map (
      I => reg_RI_3_O,
      O => reg_RI(3)
    );
  out_ULA_addsub0000_0_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_addsub0000_0_XORF_1615,
      O => out_ULA_addsub0000(0)
    );
  out_ULA_addsub0000_0_XORF : X_XOR2
    port map (
      I0 => out_ULA_addsub0000_0_CYINIT_1614,
      I1 => Madd_out_ULA_addsub0000_lut(0),
      O => out_ULA_addsub0000_0_XORF_1615
    );
  out_ULA_addsub0000_0_CYMUXF : X_MUX2
    port map (
      IA => out_ULA_addsub0000_0_CY0F_1613,
      IB => out_ULA_addsub0000_0_CYINIT_1614,
      SEL => out_ULA_addsub0000_0_CYSELF_1605,
      O => Madd_out_ULA_addsub0000_cy_0_Q
    );
  out_ULA_addsub0000_0_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_addsub0000_0_BXINV_1603,
      O => out_ULA_addsub0000_0_CYINIT_1614
    );
  out_ULA_addsub0000_0_CY0F : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC(0),
      O => out_ULA_addsub0000_0_CY0F_1613
    );
  out_ULA_addsub0000_0_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_out_ULA_addsub0000_lut(0),
      O => out_ULA_addsub0000_0_CYSELF_1605
    );
  out_ULA_addsub0000_0_BXINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '0',
      O => out_ULA_addsub0000_0_BXINV_1603
    );
  out_ULA_addsub0000_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_addsub0000_0_XORG_1601,
      O => out_ULA_addsub0000(1)
    );
  out_ULA_addsub0000_0_XORG : X_XOR2
    port map (
      I0 => Madd_out_ULA_addsub0000_cy_0_Q,
      I1 => Madd_out_ULA_addsub0000_lut(1),
      O => out_ULA_addsub0000_0_XORG_1601
    );
  out_ULA_addsub0000_0_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_addsub0000_0_CYMUXG_1600,
      O => Madd_out_ULA_addsub0000_cy_1_Q
    );
  out_ULA_addsub0000_0_CYMUXG : X_MUX2
    port map (
      IA => out_ULA_addsub0000_0_CY0G_1598,
      IB => Madd_out_ULA_addsub0000_cy_0_Q,
      SEL => out_ULA_addsub0000_0_CYSELG_1590,
      O => out_ULA_addsub0000_0_CYMUXG_1600
    );
  out_ULA_addsub0000_0_CY0G : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC(1),
      O => out_ULA_addsub0000_0_CY0G_1598
    );
  out_ULA_addsub0000_0_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_out_ULA_addsub0000_lut(1),
      O => out_ULA_addsub0000_0_CYSELG_1590
    );
  ctrl_REM_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_REM,
      O => ctrl_REM_INBUF
    );
  sel_MUX_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => sel_MUX,
      O => sel_MUX_INBUF
    );
  out_ULA_addsub0000_2_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_addsub0000_2_XORF_1654,
      O => out_ULA_addsub0000(2)
    );
  out_ULA_addsub0000_2_XORF : X_XOR2
    port map (
      I0 => out_ULA_addsub0000_2_CYINIT_1653,
      I1 => Madd_out_ULA_addsub0000_lut(2),
      O => out_ULA_addsub0000_2_XORF_1654
    );
  out_ULA_addsub0000_2_CYMUXF : X_MUX2
    port map (
      IA => out_ULA_addsub0000_2_CY0F_1652,
      IB => out_ULA_addsub0000_2_CYINIT_1653,
      SEL => out_ULA_addsub0000_2_CYSELF_1640,
      O => Madd_out_ULA_addsub0000_cy_2_Q
    );
  out_ULA_addsub0000_2_CYMUXF2 : X_MUX2
    port map (
      IA => out_ULA_addsub0000_2_CY0F_1652,
      IB => out_ULA_addsub0000_2_CY0F_1652,
      SEL => out_ULA_addsub0000_2_CYSELF_1640,
      O => out_ULA_addsub0000_2_CYMUXF2_1635
    );
  out_ULA_addsub0000_2_CYINIT : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_out_ULA_addsub0000_cy_1_Q,
      O => out_ULA_addsub0000_2_CYINIT_1653
    );
  out_ULA_addsub0000_2_CY0F : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC(2),
      O => out_ULA_addsub0000_2_CY0F_1652
    );
  out_ULA_addsub0000_2_CYSELF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_out_ULA_addsub0000_lut(2),
      O => out_ULA_addsub0000_2_CYSELF_1640
    );
  out_ULA_addsub0000_2_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_addsub0000_2_XORG_1642,
      O => out_ULA_addsub0000(3)
    );
  out_ULA_addsub0000_2_XORG : X_XOR2
    port map (
      I0 => Madd_out_ULA_addsub0000_cy_2_Q,
      I1 => Madd_out_ULA_addsub0000_lut(3),
      O => out_ULA_addsub0000_2_XORG_1642
    );
  out_ULA_addsub0000_2_COUTUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_addsub0000_2_CYMUXFAST_1639,
      O => Madd_out_ULA_addsub0000_cy_3_Q
    );
  out_ULA_addsub0000_2_FASTCARRY : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_out_ULA_addsub0000_cy_1_Q,
      O => out_ULA_addsub0000_2_FASTCARRY_1637
    );
  out_ULA_addsub0000_2_CYAND : X_AND2
    port map (
      I0 => out_ULA_addsub0000_2_CYSELG_1626,
      I1 => out_ULA_addsub0000_2_CYSELF_1640,
      O => out_ULA_addsub0000_2_CYAND_1638
    );
  out_ULA_addsub0000_2_CYMUXFAST : X_MUX2
    port map (
      IA => out_ULA_addsub0000_2_CYMUXG2_1636,
      IB => out_ULA_addsub0000_2_FASTCARRY_1637,
      SEL => out_ULA_addsub0000_2_CYAND_1638,
      O => out_ULA_addsub0000_2_CYMUXFAST_1639
    );
  out_ULA_addsub0000_2_CYMUXG2 : X_MUX2
    port map (
      IA => out_ULA_addsub0000_2_CY0G_1634,
      IB => out_ULA_addsub0000_2_CYMUXF2_1635,
      SEL => out_ULA_addsub0000_2_CYSELG_1626,
      O => out_ULA_addsub0000_2_CYMUXG2_1636
    );
  out_ULA_addsub0000_2_CY0G : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC(3),
      O => out_ULA_addsub0000_2_CY0G_1634
    );
  out_ULA_addsub0000_2_CYSELG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => Madd_out_ULA_addsub0000_lut(3),
      O => out_ULA_addsub0000_2_CYSELG_1626
    );
  reg_RI_4_OBUF : X_OBUF
    port map (
      I => reg_RI_4_O,
      O => reg_RI(4)
    );
  sel_ULA_1_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => sel_ULA(1),
      O => sel_ULA_1_INBUF
    );
  ctrl_PC_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_PC,
      O => ctrl_PC_INBUF
    );
  reg_REM_4_OBUF : X_OBUF
    port map (
      I => reg_REM_4_O,
      O => reg_REM(4)
    );
  ctrl_RI_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_RI,
      O => ctrl_RI_INBUF
    );
  rst_PC_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_PC_INBUF,
      O => rst_PC_IBUF_650
    );
  rst_PC_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_PC,
      O => rst_PC_INBUF
    );
  sel_ULA_2_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => sel_ULA(2),
      O => sel_ULA_2_INBUF
    );
  reg_REM_5_OBUF : X_OBUF
    port map (
      I => reg_REM_5_O,
      O => reg_REM(5)
    );
  reg_RI_7_OBUF : X_OBUF
    port map (
      I => reg_RI_7_O,
      O => reg_RI(7)
    );
  ctrl_ULA_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_ULA,
      O => ctrl_ULA_INBUF
    );
  reg_REM_6_OBUF : X_OBUF
    port map (
      I => reg_REM_6_O,
      O => reg_REM(6)
    );
  reg_REM_2_OBUF : X_OBUF
    port map (
      I => reg_REM_2_O,
      O => reg_REM(2)
    );
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk,
      O => clk_INBUF
    );
  rst_AC_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_AC,
      O => rst_AC_INBUF
    );
  reg_Z_OBUF : X_OBUF
    port map (
      I => reg_Z_O,
      O => reg_Z
    );
  rst_RI_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_RI_INBUF,
      O => rst_RI_IBUF_639
    );
  rst_RI_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_RI,
      O => rst_RI_INBUF
    );
  reg_REM_3_OBUF : X_OBUF
    port map (
      I => reg_REM_3_O,
      O => reg_REM(3)
    );
  reg_REM_7_OBUF : X_OBUF
    port map (
      I => reg_REM_7_O,
      O => reg_REM(7)
    );
  reg_REM_0_OBUF : X_OBUF
    port map (
      I => reg_REM_0_O,
      O => reg_REM(0)
    );
  reg_RI_6_OBUF : X_OBUF
    port map (
      I => reg_RI_6_O,
      O => reg_RI(6)
    );
  reg_N_OBUF : X_OBUF
    port map (
      I => reg_N_O,
      O => reg_N
    );
  reg_REM_1_OBUF : X_OBUF
    port map (
      I => reg_REM_1_O,
      O => reg_REM(1)
    );
  reg_RI_5_OBUF : X_OBUF
    port map (
      I => reg_RI_5_O,
      O => reg_RI(5)
    );
  out_MEM_0_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM(0),
      O => out_MEM_0_INBUF
    );
  out_MEM_1_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM(1),
      O => out_MEM_1_INBUF
    );
  ctrl_AC_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_AC_INBUF,
      O => ctrl_AC_IBUF_558
    );
  ctrl_AC_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_AC,
      O => ctrl_AC_INBUF
    );
  out_MEM_3_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM(3),
      O => out_MEM_3_INBUF
    );
  reg_AC_0_FFX_RSTOR : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_AC_IBUF_560,
      O => reg_AC_0_FFX_RST
    );
  reg_AC_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_AC_0_DXMUX_2196,
      CE => reg_AC_0_CEINV_2179,
      CLK => reg_AC_0_CLKINV_2180,
      SET => GND,
      RST => reg_AC_0_FFX_RST,
      O => reg_AC(0)
    );
  reg_AC_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_0_FXMUX_2195,
      O => reg_AC_0_DXMUX_2196
    );
  reg_AC_0_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_0_FXMUX_2195,
      O => out_ULA_0_0
    );
  reg_AC_0_FXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA(0),
      O => reg_AC_0_FXMUX_2195
    );
  reg_AC_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_0_17_O_pack_2,
      O => out_ULA_0_17_O
    );
  reg_AC_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_AC_0_CLKINV_2180
    );
  reg_AC_0_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_AC_IBUF_558,
      O => reg_AC_0_CEINV_2179
    );
  out_MEM_7_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM(7),
      O => out_MEM_7_INBUF
    );
  clk_BUFGP_BUFG : X_BUFGMUX
    port map (
      I0 => clk_BUFGP_IBUFG_664,
      I1 => GND,
      S => clk_BUFGP_BUFG_S_INVNOT,
      O => clk_BUFGP
    );
  clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => clk_BUFGP_BUFG_S_INVNOT
    );
  out_MEM_4_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM(4),
      O => out_MEM_4_INBUF
    );
  out_ULA_7_7 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11_0,
      ADR1 => reg_AC(7),
      ADR2 => reg_RDM(7),
      ADR3 => N3,
      O => out_ULA_7_7_O_pack_2
    );
  reg_AC_7_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_7_FXMUX_2156,
      O => reg_AC_7_DXMUX_2157
    );
  reg_AC_7_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_7_FXMUX_2156,
      O => out_ULA_7_0
    );
  reg_AC_7_FXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA(7),
      O => reg_AC_7_FXMUX_2156
    );
  reg_AC_7_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_7_7_O_pack_2,
      O => out_ULA_7_7_O
    );
  reg_AC_7_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_AC_7_CLKINV_2141
    );
  reg_AC_7_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_AC_IBUF_558,
      O => reg_AC_7_CEINV_2140
    );
  load_PC_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => load_PC_INBUF,
      O => load_PC_IBUF_648
    );
  load_PC_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => load_PC,
      O => load_PC_INBUF
    );
  out_ULA_1_36 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => out_ULA_1_7_O,
      ADR2 => out_ULA_1_20_0,
      ADR3 => out_ULA_addsub0000(1),
      O => out_ULA(1)
    );
  out_ULA_1_7 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11_0,
      ADR1 => reg_AC(1),
      ADR2 => reg_RDM(1),
      ADR3 => N3,
      O => out_ULA_1_7_O_pack_2
    );
  reg_AC_1_FFX_RSTOR : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_AC_IBUF_560,
      O => reg_AC_1_FFX_RST
    );
  reg_AC_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_AC_1_DXMUX_2235,
      CE => reg_AC_1_CEINV_2218,
      CLK => reg_AC_1_CLKINV_2219,
      SET => GND,
      RST => reg_AC_1_FFX_RST,
      O => reg_AC(1)
    );
  reg_AC_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_1_FXMUX_2234,
      O => reg_AC_1_DXMUX_2235
    );
  reg_AC_1_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_1_FXMUX_2234,
      O => out_ULA_1_0
    );
  reg_AC_1_FXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA(1),
      O => reg_AC_1_FXMUX_2234
    );
  reg_AC_1_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_1_7_O_pack_2,
      O => out_ULA_1_7_O
    );
  reg_AC_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_AC_1_CLKINV_2219
    );
  reg_AC_1_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_AC_IBUF_558,
      O => reg_AC_1_CEINV_2218
    );
  reg_AC_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_AC_7_DXMUX_2157,
      CE => reg_AC_7_CEINV_2140,
      CLK => reg_AC_7_CLKINV_2141,
      SET => GND,
      RST => reg_AC_7_FFX_RSTAND_2163,
      O => reg_AC(7)
    );
  reg_AC_7_FFX_RSTAND : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_AC_IBUF_560,
      O => reg_AC_7_FFX_RSTAND_2163
    );
  out_ULA_0_33 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => out_ULA_0_17_O,
      ADR1 => out_ULA_addsub0000(0),
      ADR2 => N2_0,
      ADR3 => N16_0,
      O => out_ULA(0)
    );
  ctrl_ULA_IBUF_BUFG : X_BUFGMUX
    port map (
      I0 => ctrl_ULA_IBUF1,
      I1 => GND,
      S => ctrl_ULA_IBUF_BUFG_S_INVNOT,
      O => ctrl_ULA_IBUF_665
    );
  ctrl_ULA_IBUF_BUFG_SINV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => ctrl_ULA_IBUF_BUFG_S_INVNOT
    );
  out_ULA_0_17 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(0),
      ADR1 => reg_RDM(0),
      ADR2 => N18_0,
      ADR3 => N15,
      O => out_ULA_0_17_O_pack_2
    );
  out_ULA_7_36 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => out_ULA_7_7_O,
      ADR2 => out_ULA_7_20_0,
      ADR3 => out_ULA_addsub0000(7),
      O => out_ULA(7)
    );
  out_ULA_5_36 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => out_ULA_5_7_O,
      ADR2 => out_ULA_5_20_0,
      ADR3 => out_ULA_addsub0000(5),
      O => out_ULA(5)
    );
  out_ULA_5_7 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11_0,
      ADR1 => reg_AC(5),
      ADR2 => reg_RDM(5),
      ADR3 => N3,
      O => out_ULA_5_7_O_pack_2
    );
  reg_AC_5_FFX_RSTOR : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_AC_IBUF_560,
      O => reg_AC_5_FFX_RST
    );
  reg_AC_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_AC_5_DXMUX_2079,
      CE => reg_AC_5_CEINV_2062,
      CLK => reg_AC_5_CLKINV_2063,
      SET => GND,
      RST => reg_AC_5_FFX_RST,
      O => reg_AC(5)
    );
  reg_AC_5_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_5_FXMUX_2078,
      O => reg_AC_5_DXMUX_2079
    );
  reg_AC_5_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_5_FXMUX_2078,
      O => out_ULA_5_0
    );
  reg_AC_5_FXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA(5),
      O => reg_AC_5_FXMUX_2078
    );
  reg_AC_5_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_5_7_O_pack_2,
      O => out_ULA_5_7_O
    );
  reg_AC_5_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_AC_5_CLKINV_2063
    );
  reg_AC_5_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_AC_IBUF_558,
      O => reg_AC_5_CEINV_2062
    );
  out_ULA_6_7 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11_0,
      ADR1 => reg_AC(6),
      ADR2 => reg_RDM(6),
      ADR3 => N3,
      O => out_ULA_6_7_O_pack_2
    );
  out_ULA_6_36 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => out_ULA_6_7_O,
      ADR2 => out_ULA_6_20_0,
      ADR3 => out_ULA_addsub0000(6),
      O => out_ULA(6)
    );
  reg_AC_6_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_6_FXMUX_2117,
      O => reg_AC_6_DXMUX_2118
    );
  reg_AC_6_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_6_FXMUX_2117,
      O => out_ULA_6_0
    );
  reg_AC_6_FXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA(6),
      O => reg_AC_6_FXMUX_2117
    );
  reg_AC_6_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_6_7_O_pack_2,
      O => out_ULA_6_7_O
    );
  reg_AC_6_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_AC_6_CLKINV_2102
    );
  reg_AC_6_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_AC_IBUF_558,
      O => reg_AC_6_CEINV_2101
    );
  out_MEM_6_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM(6),
      O => out_MEM_6_INBUF
    );
  out_ULA_2_7 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11_0,
      ADR1 => reg_AC(2),
      ADR2 => reg_RDM(2),
      ADR3 => N3,
      O => out_ULA_2_7_O_pack_2
    );
  reg_AC_2_FFX_RSTOR : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_AC_IBUF_560,
      O => reg_AC_2_FFX_RST
    );
  reg_AC_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_AC_2_DXMUX_2274,
      CE => reg_AC_2_CEINV_2257,
      CLK => reg_AC_2_CLKINV_2258,
      SET => GND,
      RST => reg_AC_2_FFX_RST,
      O => reg_AC(2)
    );
  reg_AC_2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_2_FXMUX_2273,
      O => reg_AC_2_DXMUX_2274
    );
  reg_AC_2_XUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_AC_2_FXMUX_2273,
      O => out_ULA_2_0
    );
  reg_AC_2_FXMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA(2),
      O => reg_AC_2_FXMUX_2273
    );
  reg_AC_2_YUSED : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_2_7_O_pack_2,
      O => out_ULA_2_7_O
    );
  reg_AC_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_BUFGP,
      O => reg_AC_2_CLKINV_2258
    );
  reg_AC_2_CEINV : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_AC_IBUF_558,
      O => reg_AC_2_CEINV_2257
    );
  rst_RDM_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_RDM_INBUF,
      O => rst_RDM_IBUF_610
    );
  rst_RDM_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_RDM,
      O => rst_RDM_INBUF
    );
  rst_REM_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_REM_INBUF,
      O => rst_REM_IBUF_577
    );
  rst_REM_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_REM,
      O => rst_REM_INBUF
    );
  out_ULA_2_36 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => out_ULA_2_7_O,
      ADR2 => out_ULA_2_20_0,
      ADR3 => out_ULA_addsub0000(2),
      O => out_ULA(2)
    );
  out_MEM_2_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM(2),
      O => out_MEM_2_INBUF
    );
  out_MEM_5_IBUF : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_MEM(5),
      O => out_MEM_5_INBUF
    );
  reg_AC_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_AC_6_DXMUX_2118,
      CE => reg_AC_6_CEINV_2101,
      CLK => reg_AC_6_CLKINV_2102,
      SET => GND,
      RST => reg_AC_6_FFX_RSTAND_2124,
      O => reg_AC(6)
    );
  reg_AC_6_FFX_RSTAND : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_AC_IBUF_560,
      O => reg_AC_6_FFX_RSTAND_2124
    );
  out_ULA_3_36 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => out_ULA_3_7_O,
      ADR2 => out_ULA_3_20_0,
      ADR3 => out_ULA_addsub0000(3),
      O => out_ULA(3)
    );
  reg_AC_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_AC_3_DXMUX_704,
      CE => reg_AC_3_CEINV_687,
      CLK => reg_AC_3_CLKINV_688,
      SET => GND,
      RST => reg_AC_3_FFX_RSTAND_710,
      O => reg_AC(3)
    );
  reg_AC_3_FFX_RSTAND : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_AC_IBUF_560,
      O => reg_AC_3_FFX_RSTAND_710
    );
  out_ULA_3_7 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11_0,
      ADR1 => reg_AC(3),
      ADR2 => reg_RDM(3),
      ADR3 => N3,
      O => out_ULA_3_7_O_pack_2
    );
  out_ULA_4_7 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11_0,
      ADR1 => reg_AC(4),
      ADR2 => reg_RDM(4),
      ADR3 => N3,
      O => out_ULA_4_7_O_pack_2
    );
  sel_ULA_1_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => sel_ULA_1_INBUF,
      O => sel_ULA_1_IBUF_626
    );
  ctrl_PC_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_PC_INBUF,
      O => ctrl_PC_IBUF_649
    );
  ctrl_RI_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_RI_INBUF,
      O => ctrl_RI_IBUF_638
    );
  rst_AC_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_AC_INBUF,
      O => rst_AC_IBUF_560
    );
  sel_ULA_2_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => sel_ULA_2_INBUF,
      O => sel_ULA_2_IBUF_629
    );
  ctrl_ULA_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_ULA_INBUF,
      O => ctrl_ULA_IBUF1
    );
  clk_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => clk_INBUF,
      O => clk_BUFGP_IBUFG_664
    );
  reg_Z_OUTPUT_OFF_O1_DDRMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_Z_cmp_eq0000,
      O => reg_Z_OUTPUT_OFF_ODDRIN1_MUX
    );
  reg_Z_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_Z_OBUF_1870,
      O => reg_Z_O
    );
  reg_Z_901 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_Z_OUTPUT_OFF_ODDRIN1_MUX,
      GE => VCC,
      CLK => NlwInverterSignal_reg_Z_CLK,
      SET => GND,
      RST => GND,
      O => reg_Z_OBUF_1870
    );
  reg_Z_OUTPUT_OTCLK1INV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_ULA_IBUF_665,
      O => reg_Z_OUTPUT_OTCLK1INVNOT
    );
  reg_REM_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_REM_1_DYMUX_773,
      CE => reg_REM_1_CEINV_762,
      CLK => reg_REM_1_CLKINV_763,
      SET => GND,
      RST => reg_REM_1_SRINV_764,
      O => reg_REM_0_584
    );
  reg_REM_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_REM_1_DXMUX_789,
      CE => reg_REM_1_CEINV_762,
      CLK => reg_REM_1_CLKINV_763,
      SET => GND,
      RST => reg_REM_1_SRINV_764,
      O => reg_REM_1_583
    );
  reg_AC_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_AC_4_DXMUX_743,
      CE => reg_AC_4_CEINV_726,
      CLK => reg_AC_4_CLKINV_727,
      SET => GND,
      RST => reg_AC_4_FFX_RSTAND_749,
      O => reg_AC(4)
    );
  reg_AC_4_FFX_RSTAND : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => rst_AC_IBUF_560,
      O => reg_AC_4_FFX_RSTAND_749
    );
  reg_REM_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_REM_3_DYMUX_819,
      CE => reg_REM_3_CEINV_808,
      CLK => reg_REM_3_CLKINV_809,
      SET => GND,
      RST => reg_REM_3_SRINV_810,
      O => reg_REM_2_589
    );
  out_ULA_4_36 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => N2_0,
      ADR1 => out_ULA_4_7_O,
      ADR2 => out_ULA_4_20_0,
      ADR3 => out_ULA_addsub0000(4),
      O => out_ULA(4)
    );
  reg_REM_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_REM_3_DXMUX_835,
      CE => reg_REM_3_CEINV_808,
      CLK => reg_REM_3_CLKINV_809,
      SET => GND,
      RST => reg_REM_3_SRINV_810,
      O => reg_REM_3_588
    );
  out_MUX_4_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_578,
      ADR1 => reg_RDM(4),
      ADR2 => reg_PC(4),
      ADR3 => VCC,
      O => out_MUX(4)
    );
  out_MUX_3_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_578,
      ADR1 => reg_RDM(3),
      ADR2 => reg_PC(3),
      ADR3 => VCC,
      O => out_MUX(3)
    );
  out_MUX_0_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_578,
      ADR1 => reg_RDM(0),
      ADR2 => reg_PC(0),
      ADR3 => VCC,
      O => out_MUX(0)
    );
  out_MUX_2_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_578,
      ADR1 => reg_RDM(2),
      ADR2 => reg_PC(2),
      ADR3 => VCC,
      O => out_MUX(2)
    );
  reg_REM_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_REM_5_DYMUX_865,
      CE => reg_REM_5_CEINV_854,
      CLK => reg_REM_5_CLKINV_855,
      SET => GND,
      RST => reg_REM_5_SRINV_856,
      O => reg_REM_4_594
    );
  out_MUX_1_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_578,
      ADR1 => reg_RDM(1),
      ADR2 => reg_PC(1),
      ADR3 => VCC,
      O => out_MUX(1)
    );
  out_MUX_5_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_578,
      ADR1 => reg_RDM(5),
      ADR2 => reg_PC(5),
      ADR3 => VCC,
      O => out_MUX(5)
    );
  reg_RDM_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RDM_3_DXMUX_1007,
      CE => reg_RDM_3_CEINV_994,
      CLK => reg_RDM_3_CLKINV_995,
      SET => GND,
      RST => reg_RDM_3_SRINV_996,
      O => reg_RDM(3)
    );
  out_ULA_7_20 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(7),
      ADR1 => reg_RDM(7),
      ADR2 => N18_0,
      ADR3 => N15,
      O => out_ULA_7_20_949
    );
  reg_REM_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_REM_7_DXMUX_927,
      CE => reg_REM_7_CEINV_900,
      CLK => reg_REM_7_CLKINV_901,
      SET => GND,
      RST => reg_REM_7_SRINV_902,
      O => reg_REM_7_599
    );
  out_MUX_6_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_578,
      ADR1 => reg_RDM(6),
      ADR2 => reg_PC(6),
      ADR3 => VCC,
      O => out_MUX(6)
    );
  reg_REM_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_REM_7_DYMUX_911,
      CE => reg_REM_7_CEINV_900,
      CLK => reg_REM_7_CLKINV_901,
      SET => GND,
      RST => reg_REM_7_SRINV_902,
      O => reg_REM_6_600
    );
  out_ULA_1_20 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(1),
      ADR1 => reg_RDM(1),
      ADR2 => N18_0,
      ADR3 => N15,
      O => out_ULA_1_20_956
    );
  reg_RDM_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RDM_1_DYMUX_970,
      CE => reg_RDM_1_CEINV_966,
      CLK => reg_RDM_1_CLKINV_967,
      SET => GND,
      RST => reg_RDM_1_SRINV_968,
      O => reg_RDM(0)
    );
  out_MUX_7_1 : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_578,
      ADR1 => reg_RDM(7),
      ADR2 => reg_PC(7),
      ADR3 => VCC,
      O => out_MUX(7)
    );
  reg_RDM_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RDM_3_DYMUX_998,
      CE => reg_RDM_3_CEINV_994,
      CLK => reg_RDM_3_CLKINV_995,
      SET => GND,
      RST => reg_RDM_3_SRINV_996,
      O => reg_RDM(2)
    );
  reg_REM_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_REM_5_DXMUX_881,
      CE => reg_REM_5_CEINV_854,
      CLK => reg_REM_5_CLKINV_855,
      SET => GND,
      RST => reg_REM_5_SRINV_856,
      O => reg_REM_5_593
    );
  reg_RDM_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RDM_1_DXMUX_979,
      CE => reg_RDM_1_CEINV_966,
      CLK => reg_RDM_1_CLKINV_967,
      SET => GND,
      RST => reg_RDM_1_SRINV_968,
      O => reg_RDM(1)
    );
  reg_Z_cmp_eq000012 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => out_ULA_0_0,
      ADR1 => out_ULA_1_0,
      ADR2 => out_ULA_2_0,
      ADR3 => out_ULA_3_0,
      O => reg_Z_cmp_eq000012_1080
    );
  reg_RDM_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RDM_5_DXMUX_1035,
      CE => reg_RDM_5_CEINV_1022,
      CLK => reg_RDM_5_CLKINV_1023,
      SET => GND,
      RST => reg_RDM_5_SRINV_1024,
      O => reg_RDM(5)
    );
  reg_Z_cmp_eq000025 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => out_ULA_4_0,
      ADR1 => out_ULA_5_0,
      ADR2 => out_ULA_6_0,
      ADR3 => out_ULA_7_0,
      O => reg_Z_cmp_eq000025_pack_1
    );
  reg_RDM_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RDM_7_DXMUX_1063,
      CE => reg_RDM_7_CEINV_1050,
      CLK => reg_RDM_7_CLKINV_1051,
      SET => GND,
      RST => reg_RDM_7_SRINV_1052,
      O => reg_RDM(7)
    );
  reg_Z_cmp_eq000026 : X_LUT4
    generic map(
      INIT => X"8888"
    )
    port map (
      ADR0 => reg_Z_cmp_eq000012_0,
      ADR1 => reg_Z_cmp_eq000025_621,
      ADR2 => VCC,
      ADR3 => VCC,
      O => reg_Z_cmp_eq0000
    );
  reg_RDM_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RDM_5_DYMUX_1026,
      CE => reg_RDM_5_CEINV_1022,
      CLK => reg_RDM_5_CLKINV_1023,
      SET => GND,
      RST => reg_RDM_5_SRINV_1024,
      O => reg_RDM(4)
    );
  out_ULA_0_31 : X_LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      ADR0 => sel_ULA_1_IBUF_626,
      ADR1 => ctrl_ULA_IBUF1,
      ADR2 => sel_ULA_0_IBUF_628,
      ADR3 => sel_ULA_2_IBUF_629,
      O => N2
    );
  out_ULA_0_21 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => sel_ULA_1_IBUF_626,
      ADR1 => ctrl_ULA_IBUF1,
      ADR2 => sel_ULA_0_IBUF_628,
      ADR3 => sel_ULA_2_IBUF_629,
      O => N11
    );
  out_ULA_0_0_SW0 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11_0,
      ADR1 => reg_AC(0),
      ADR2 => N3,
      ADR3 => reg_RDM(0),
      O => N16
    );
  reg_RDM_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RDM_7_DYMUX_1054,
      CE => reg_RDM_7_CEINV_1050,
      CLK => reg_RDM_7_CLKINV_1051,
      SET => GND,
      RST => reg_RDM_7_SRINV_1052,
      O => reg_RDM(6)
    );
  out_ULA_0_41 : X_LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      ADR0 => sel_ULA_2_IBUF_629,
      ADR1 => sel_ULA_1_IBUF_626,
      ADR2 => sel_ULA_0_IBUF_628,
      ADR3 => ctrl_ULA_IBUF1,
      O => N3_pack_1
    );
  out_ULA_2_20 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(2),
      ADR1 => reg_RDM(2),
      ADR2 => N18_0,
      ADR3 => N15,
      O => out_ULA_2_20_1169
    );
  out_ULA_3_20 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(3),
      ADR1 => reg_RDM(3),
      ADR2 => N18_0,
      ADR3 => N15,
      O => out_ULA_3_20_1176
    );
  out_ULA_5_20 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(5),
      ADR1 => reg_RDM(5),
      ADR2 => N18_0,
      ADR3 => N15,
      O => out_ULA_5_20_1236
    );
  reg_RI_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RI_5_DXMUX_1315,
      CE => reg_RI_5_CEINV_1302,
      CLK => reg_RI_5_CLKINV_1303,
      SET => GND,
      RST => reg_RI_5_SRINV_1304,
      O => reg_RI_5_644
    );
  reg_RI_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RI_1_DYMUX_1250,
      CE => reg_RI_1_CEINV_1246,
      CLK => reg_RI_1_CLKINV_1247,
      SET => GND,
      RST => reg_RI_1_SRINV_1248,
      O => reg_RI_0_641
    );
  out_ULA_6_10_SW0 : X_LUT4
    generic map(
      INIT => X"2222"
    )
    port map (
      ADR0 => sel_ULA_0_IBUF_628,
      ADR1 => sel_ULA_1_IBUF_626,
      ADR2 => VCC,
      ADR3 => VCC,
      O => N18
    );
  out_ULA_4_20 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(4),
      ADR1 => reg_RDM(4),
      ADR2 => N18_0,
      ADR3 => N15,
      O => out_ULA_4_20_1229
    );
  out_ULA_6_20 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(6),
      ADR1 => reg_RDM(6),
      ADR2 => N18_0,
      ADR3 => N15,
      O => out_ULA_6_20_1212
    );
  reg_RI_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RI_1_DXMUX_1259,
      CE => reg_RI_1_CEINV_1246,
      CLK => reg_RI_1_CLKINV_1247,
      SET => GND,
      RST => reg_RI_1_SRINV_1248,
      O => reg_RI_1_640
    );
  reg_RI_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RI_3_DYMUX_1278,
      CE => reg_RI_3_CEINV_1274,
      CLK => reg_RI_3_CLKINV_1275,
      SET => GND,
      RST => reg_RI_3_SRINV_1276,
      O => reg_RI_2_643
    );
  reg_RI_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RI_3_DXMUX_1287,
      CE => reg_RI_3_CEINV_1274,
      CLK => reg_RI_3_CLKINV_1275,
      SET => GND,
      RST => reg_RI_3_SRINV_1276,
      O => reg_RI_3_642
    );
  reg_RI_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RI_5_DYMUX_1306,
      CE => reg_RI_5_CEINV_1302,
      CLK => reg_RI_5_CLKINV_1303,
      SET => GND,
      RST => reg_RI_5_SRINV_1304,
      O => reg_RI_4_645
    );
  out_ULA_0_811 : X_LUT4
    generic map(
      INIT => X"B8FF"
    )
    port map (
      ADR0 => sel_ULA_2_IBUF_629,
      ADR1 => sel_ULA_0_IBUF_628,
      ADR2 => sel_ULA_1_IBUF_626,
      ADR3 => ctrl_ULA_IBUF1,
      O => N15_pack_1
    );
  Mcount_reg_PC_lut_3_Q : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => load_PC_IBUF_648,
      ADR1 => reg_PC(3),
      ADR2 => reg_RDM(3),
      ADR3 => VCC,
      O => Mcount_reg_PC_lut(3)
    );
  reg_RI_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RI_7_DXMUX_1343,
      CE => reg_RI_7_CEINV_1330,
      CLK => reg_RI_7_CLKINV_1331,
      SET => GND,
      RST => reg_RI_7_SRINV_1332,
      O => reg_RI_7_646
    );
  reg_PC_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_PC_2_DYMUX_1442,
      CE => reg_PC_2_CEINV_1421,
      CLK => reg_PC_2_CLKINV_1422,
      SET => GND,
      RST => reg_PC_2_SRINV_1423,
      O => reg_PC(3)
    );
  Mcount_reg_PC_lut_1_Q : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => load_PC_IBUF_648,
      ADR1 => reg_PC(1),
      ADR2 => reg_RDM(1),
      ADR3 => VCC,
      O => Mcount_reg_PC_lut(1)
    );
  reg_PC_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_PC_0_DXMUX_1400,
      CE => reg_PC_0_CEINV_1364,
      CLK => reg_PC_0_CLKINV_1365,
      SET => GND,
      RST => reg_PC_0_SRINV_1366,
      O => reg_PC(0)
    );
  reg_RI_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_RI_7_DYMUX_1334,
      CE => reg_RI_7_CEINV_1330,
      CLK => reg_RI_7_CLKINV_1331,
      SET => GND,
      RST => reg_RI_7_SRINV_1332,
      O => reg_RI_6_647
    );
  Mcount_reg_PC_lut_0_Q : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => load_PC_IBUF_648,
      ADR1 => reg_PC(0),
      ADR2 => reg_RDM(0),
      ADR3 => VCC,
      O => Mcount_reg_PC_lut(0)
    );
  reg_PC_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_PC_0_DYMUX_1380,
      CE => reg_PC_0_CEINV_1364,
      CLK => reg_PC_0_CLKINV_1365,
      SET => GND,
      RST => reg_PC_0_SRINV_1366,
      O => reg_PC(1)
    );
  reg_PC_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_PC_2_DXMUX_1460,
      CE => reg_PC_2_CEINV_1421,
      CLK => reg_PC_2_CLKINV_1422,
      SET => GND,
      RST => reg_PC_2_SRINV_1423,
      O => reg_PC(2)
    );
  Mcount_reg_PC_lut_5_Q : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => load_PC_IBUF_648,
      ADR1 => reg_PC(5),
      ADR2 => reg_RDM(5),
      ADR3 => VCC,
      O => Mcount_reg_PC_lut(5)
    );
  reg_PC_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_PC_4_DYMUX_1502,
      CE => reg_PC_4_CEINV_1481,
      CLK => reg_PC_4_CLKINV_1482,
      SET => GND,
      RST => reg_PC_4_SRINV_1483,
      O => reg_PC(5)
    );
  reg_PC_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_PC_4_DXMUX_1520,
      CE => reg_PC_4_CEINV_1481,
      CLK => reg_PC_4_CLKINV_1482,
      SET => GND,
      RST => reg_PC_4_SRINV_1483,
      O => reg_PC(4)
    );
  Mcount_reg_PC_lut_4_Q : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => load_PC_IBUF_648,
      ADR1 => reg_PC(4),
      ADR2 => reg_RDM(4),
      ADR3 => VCC,
      O => Mcount_reg_PC_lut(4)
    );
  reg_PC_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_PC_6_DYMUX_1553,
      CE => reg_PC_6_CEINV_1540,
      CLK => reg_PC_6_CLKINV_1541,
      SET => GND,
      RST => reg_PC_6_SRINV_1542,
      O => reg_PC(7)
    );
  Mcount_reg_PC_lut_7_Q : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => load_PC_IBUF_648,
      ADR1 => reg_PC(7),
      ADR2 => reg_RDM(7),
      ADR3 => VCC,
      O => Mcount_reg_PC_lut(7)
    );
  Mcount_reg_PC_lut_2_Q : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => load_PC_IBUF_648,
      ADR1 => reg_PC(2),
      ADR2 => reg_RDM(2),
      ADR3 => VCC,
      O => Mcount_reg_PC_lut(2)
    );
  Mcount_reg_PC_lut_6_Q : X_LUT4
    generic map(
      INIT => X"E4E4"
    )
    port map (
      ADR0 => load_PC_IBUF_648,
      ADR1 => reg_PC(6),
      ADR2 => reg_RDM(6),
      ADR3 => VCC,
      O => Mcount_reg_PC_lut(6)
    );
  reg_PC_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_PC_6_DXMUX_1573,
      CE => reg_PC_6_CEINV_1540,
      CLK => reg_PC_6_CLKINV_1541,
      SET => GND,
      RST => reg_PC_6_SRINV_1542,
      O => reg_PC(6)
    );
  Madd_out_ULA_addsub0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => reg_AC(1),
      ADR1 => reg_RDM(1),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Madd_out_ULA_addsub0000_lut(1)
    );
  Madd_out_ULA_addsub0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => reg_AC(3),
      ADR1 => reg_RDM(3),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Madd_out_ULA_addsub0000_lut(3)
    );
  Madd_out_ULA_addsub0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => reg_AC(0),
      ADR1 => reg_RDM(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Madd_out_ULA_addsub0000_lut(0)
    );
  Madd_out_ULA_addsub0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => reg_AC(2),
      ADR1 => reg_RDM(2),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Madd_out_ULA_addsub0000_lut(2)
    );
  Madd_out_ULA_addsub0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => reg_AC(5),
      ADR1 => reg_RDM(5),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Madd_out_ULA_addsub0000_lut(5)
    );
  Madd_out_ULA_addsub0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => reg_AC(4),
      ADR1 => reg_RDM(4),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Madd_out_ULA_addsub0000_lut(4)
    );
  Madd_out_ULA_addsub0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => reg_AC(6),
      ADR1 => reg_RDM(6),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Madd_out_ULA_addsub0000_lut(6)
    );
  sel_ULA_0_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => sel_ULA_0_INBUF,
      O => sel_ULA_0_IBUF_628
    );
  ctrl_RDM_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_RDM_INBUF,
      O => ctrl_RDM_IBUF_609
    );
  Madd_out_ULA_addsub0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"6666"
    )
    port map (
      ADR0 => reg_AC(7),
      ADR1 => reg_RDM(7),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Madd_out_ULA_addsub0000_lut(7)
    );
  reg_N_OUTPUT_OTCLK1INV : X_INV
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_ULA_IBUF_665,
      O => reg_N_OUTPUT_OTCLK1INVNOT
    );
  ctrl_REM_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => ctrl_REM_INBUF,
      O => ctrl_REM_IBUF_576
    );
  sel_MUX_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => sel_MUX_INBUF,
      O => sel_MUX_IBUF_578
    );
  reg_N_911 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_N_OUTPUT_OFF_ODDRIN1_MUX,
      GE => VCC,
      CLK => NlwInverterSignal_reg_N_CLK,
      SET => GND,
      RST => GND,
      O => reg_N_OBUF_1887
    );
  reg_N_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_N_OBUF_1887,
      O => reg_N_O
    );
  reg_N_OUTPUT_OFF_O1_DDRMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => out_ULA_7_0,
      O => reg_N_OUTPUT_OFF_ODDRIN1_MUX
    );
  reg_RI_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RI_0_641,
      O => reg_RI_0_O
    );
  reg_RI_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RI_1_640,
      O => reg_RI_1_O
    );
  reg_RI_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RI_2_643,
      O => reg_RI_2_O
    );
  reg_RI_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RI_3_642,
      O => reg_RI_3_O
    );
  reg_RI_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RI_4_645,
      O => reg_RI_4_O
    );
  reg_REM_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_REM_4_594,
      O => reg_REM_4_O
    );
  reg_REM_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_REM_5_593,
      O => reg_REM_5_O
    );
  reg_RI_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RI_7_646,
      O => reg_RI_7_O
    );
  reg_REM_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_REM_6_600,
      O => reg_REM_6_O
    );
  reg_REM_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_REM_2_589,
      O => reg_REM_2_O
    );
  reg_REM_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_REM_3_588,
      O => reg_REM_3_O
    );
  reg_REM_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_REM_7_599,
      O => reg_REM_7_O
    );
  reg_REM_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_REM_0_584,
      O => reg_REM_0_O
    );
  reg_RI_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RI_6_647,
      O => reg_RI_6_O
    );
  reg_REM_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_REM_1_583,
      O => reg_REM_1_O
    );
  reg_RI_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 555 ps
    )
    port map (
      I => reg_RI_5_644,
      O => reg_RI_5_O
    );
  NlwBlock_neander_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_neander_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_reg_Z_CLK : X_INV
    port map (
      I => reg_Z_OUTPUT_OTCLK1INVNOT,
      O => NlwInverterSignal_reg_Z_CLK
    );
  NlwInverterBlock_reg_N_CLK : X_INV
    port map (
      I => reg_N_OUTPUT_OTCLK1INVNOT,
      O => NlwInverterSignal_reg_N_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

