--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: neander_translate.vhd
-- /___/   /\     Timestamp: Wed Aug 03 19:53:15 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm neander -w -dir netgen/translate -ofmt vhdl -sim neander.ngd neander_translate.vhd 
-- Device	: 3s100ecp132-5
-- Input file	: neander.ngd
-- Output file	: C:\Users\Felipe\Documents\Sistemas-Digitais\NEANDER\NEANDER\netgen\translate\neander_translate.vhd
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
  signal Mcount_reg_PC : STD_LOGIC; 
  signal Mcount_reg_PC1 : STD_LOGIC; 
  signal Mcount_reg_PC2 : STD_LOGIC; 
  signal Mcount_reg_PC3 : STD_LOGIC; 
  signal Mcount_reg_PC4 : STD_LOGIC; 
  signal Mcount_reg_PC5 : STD_LOGIC; 
  signal Mcount_reg_PC6 : STD_LOGIC; 
  signal Mcount_reg_PC7 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal ctrl_AC_IBUF_51 : STD_LOGIC; 
  signal ctrl_PC_IBUF_53 : STD_LOGIC; 
  signal ctrl_RDM_IBUF_55 : STD_LOGIC; 
  signal ctrl_REM_IBUF_57 : STD_LOGIC; 
  signal ctrl_RI_IBUF_59 : STD_LOGIC; 
  signal ctrl_ULA_IBUF_61 : STD_LOGIC; 
  signal ctrl_ULA_IBUF1 : STD_LOGIC; 
  signal load_PC_IBUF_64 : STD_LOGIC; 
  signal load_PC_inv : STD_LOGIC; 
  signal out_MEM_0_IBUF_74 : STD_LOGIC; 
  signal out_MEM_1_IBUF_75 : STD_LOGIC; 
  signal out_MEM_2_IBUF_76 : STD_LOGIC; 
  signal out_MEM_3_IBUF_77 : STD_LOGIC; 
  signal out_MEM_4_IBUF_78 : STD_LOGIC; 
  signal out_MEM_5_IBUF_79 : STD_LOGIC; 
  signal out_MEM_6_IBUF_80 : STD_LOGIC; 
  signal out_MEM_7_IBUF_81 : STD_LOGIC; 
  signal out_ULA_0_17_91 : STD_LOGIC; 
  signal out_ULA_1_20_93 : STD_LOGIC; 
  signal out_ULA_1_7_94 : STD_LOGIC; 
  signal out_ULA_2_20_96 : STD_LOGIC; 
  signal out_ULA_2_7_97 : STD_LOGIC; 
  signal out_ULA_3_20_99 : STD_LOGIC; 
  signal out_ULA_3_7_100 : STD_LOGIC; 
  signal out_ULA_4_20_102 : STD_LOGIC; 
  signal out_ULA_4_7_103 : STD_LOGIC; 
  signal out_ULA_5_20_105 : STD_LOGIC; 
  signal out_ULA_5_7_106 : STD_LOGIC; 
  signal out_ULA_6_20_108 : STD_LOGIC; 
  signal out_ULA_6_7_109 : STD_LOGIC; 
  signal out_ULA_7_20_111 : STD_LOGIC; 
  signal out_ULA_7_7_112 : STD_LOGIC; 
  signal reg_N_OBUF_130 : STD_LOGIC; 
  signal reg_REM_0_155 : STD_LOGIC; 
  signal reg_REM_1_156 : STD_LOGIC; 
  signal reg_REM_2_157 : STD_LOGIC; 
  signal reg_REM_3_158 : STD_LOGIC; 
  signal reg_REM_4_159 : STD_LOGIC; 
  signal reg_REM_5_160 : STD_LOGIC; 
  signal reg_REM_6_161 : STD_LOGIC; 
  signal reg_REM_7_162 : STD_LOGIC; 
  signal reg_RI_0_171 : STD_LOGIC; 
  signal reg_RI_1_172 : STD_LOGIC; 
  signal reg_RI_2_173 : STD_LOGIC; 
  signal reg_RI_3_174 : STD_LOGIC; 
  signal reg_RI_4_175 : STD_LOGIC; 
  signal reg_RI_5_176 : STD_LOGIC; 
  signal reg_RI_6_177 : STD_LOGIC; 
  signal reg_RI_7_178 : STD_LOGIC; 
  signal reg_Z_OBUF_180 : STD_LOGIC; 
  signal reg_Z_cmp_eq0000 : STD_LOGIC; 
  signal reg_Z_cmp_eq000012_182 : STD_LOGIC; 
  signal reg_Z_cmp_eq000025_183 : STD_LOGIC; 
  signal rst_AC_IBUF_185 : STD_LOGIC; 
  signal rst_PC_IBUF_187 : STD_LOGIC; 
  signal rst_RDM_IBUF_189 : STD_LOGIC; 
  signal rst_REM_IBUF_191 : STD_LOGIC; 
  signal rst_RI_IBUF_193 : STD_LOGIC; 
  signal sel_MUX_IBUF_195 : STD_LOGIC; 
  signal sel_ULA_0_IBUF_199 : STD_LOGIC; 
  signal sel_ULA_1_IBUF_200 : STD_LOGIC; 
  signal sel_ULA_2_IBUF_201 : STD_LOGIC; 
  signal out_ULA_6_7_O : STD_LOGIC; 
  signal out_ULA_5_7_O : STD_LOGIC; 
  signal out_ULA_4_7_O : STD_LOGIC; 
  signal out_ULA_3_7_O : STD_LOGIC; 
  signal out_ULA_2_7_O : STD_LOGIC; 
  signal out_ULA_1_7_O : STD_LOGIC; 
  signal out_ULA_7_7_O : STD_LOGIC; 
  signal out_ULA_0_17_O : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal Madd_out_ULA_addsub0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Madd_out_ULA_addsub0000_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcount_reg_PC_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Mcount_reg_PC_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal out_MUX : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal out_ULA : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal out_ULA_addsub0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal reg_AC : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal reg_PC : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal reg_RDM : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : X_ZERO
    port map (
      O => N0
    );
  reg_RDM_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RDM_IBUF_55,
      RST => rst_RDM_IBUF_189,
      I => out_MEM_0_IBUF_74,
      O => reg_RDM(0),
      SET => GND
    );
  reg_RDM_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RDM_IBUF_55,
      RST => rst_RDM_IBUF_189,
      I => out_MEM_1_IBUF_75,
      O => reg_RDM(1),
      SET => GND
    );
  reg_RDM_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RDM_IBUF_55,
      RST => rst_RDM_IBUF_189,
      I => out_MEM_2_IBUF_76,
      O => reg_RDM(2),
      SET => GND
    );
  reg_RDM_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RDM_IBUF_55,
      RST => rst_RDM_IBUF_189,
      I => out_MEM_3_IBUF_77,
      O => reg_RDM(3),
      SET => GND
    );
  reg_RDM_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RDM_IBUF_55,
      RST => rst_RDM_IBUF_189,
      I => out_MEM_4_IBUF_78,
      O => reg_RDM(4),
      SET => GND
    );
  reg_RDM_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RDM_IBUF_55,
      RST => rst_RDM_IBUF_189,
      I => out_MEM_5_IBUF_79,
      O => reg_RDM(5),
      SET => GND
    );
  reg_RDM_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RDM_IBUF_55,
      RST => rst_RDM_IBUF_189,
      I => out_MEM_6_IBUF_80,
      O => reg_RDM(6),
      SET => GND
    );
  reg_RDM_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RDM_IBUF_55,
      RST => rst_RDM_IBUF_189,
      I => out_MEM_7_IBUF_81,
      O => reg_RDM(7),
      SET => GND
    );
  reg_REM_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_REM_IBUF_57,
      RST => rst_REM_IBUF_191,
      I => out_MUX(0),
      O => reg_REM_0_155,
      SET => GND
    );
  reg_REM_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_REM_IBUF_57,
      RST => rst_REM_IBUF_191,
      I => out_MUX(1),
      O => reg_REM_1_156,
      SET => GND
    );
  reg_REM_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_REM_IBUF_57,
      RST => rst_REM_IBUF_191,
      I => out_MUX(2),
      O => reg_REM_2_157,
      SET => GND
    );
  reg_REM_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_REM_IBUF_57,
      RST => rst_REM_IBUF_191,
      I => out_MUX(3),
      O => reg_REM_3_158,
      SET => GND
    );
  reg_REM_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_REM_IBUF_57,
      RST => rst_REM_IBUF_191,
      I => out_MUX(4),
      O => reg_REM_4_159,
      SET => GND
    );
  reg_REM_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_REM_IBUF_57,
      RST => rst_REM_IBUF_191,
      I => out_MUX(5),
      O => reg_REM_5_160,
      SET => GND
    );
  reg_REM_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_REM_IBUF_57,
      RST => rst_REM_IBUF_191,
      I => out_MUX(6),
      O => reg_REM_6_161,
      SET => GND
    );
  reg_REM_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_REM_IBUF_57,
      RST => rst_REM_IBUF_191,
      I => out_MUX(7),
      O => reg_REM_7_162,
      SET => GND
    );
  reg_AC_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_AC_IBUF_51,
      RST => rst_AC_IBUF_185,
      I => out_ULA(0),
      O => reg_AC(0),
      SET => GND
    );
  reg_AC_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_AC_IBUF_51,
      RST => rst_AC_IBUF_185,
      I => out_ULA(1),
      O => reg_AC(1),
      SET => GND
    );
  reg_AC_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_AC_IBUF_51,
      RST => rst_AC_IBUF_185,
      I => out_ULA(2),
      O => reg_AC(2),
      SET => GND
    );
  reg_AC_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_AC_IBUF_51,
      RST => rst_AC_IBUF_185,
      I => out_ULA(3),
      O => reg_AC(3),
      SET => GND
    );
  reg_AC_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_AC_IBUF_51,
      RST => rst_AC_IBUF_185,
      I => out_ULA(4),
      O => reg_AC(4),
      SET => GND
    );
  reg_AC_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_AC_IBUF_51,
      RST => rst_AC_IBUF_185,
      I => out_ULA(5),
      O => reg_AC(5),
      SET => GND
    );
  reg_AC_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_AC_IBUF_51,
      RST => rst_AC_IBUF_185,
      I => out_ULA(6),
      O => reg_AC(6),
      SET => GND
    );
  reg_AC_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_AC_IBUF_51,
      RST => rst_AC_IBUF_185,
      I => out_ULA(7),
      O => reg_AC(7),
      SET => GND
    );
  reg_RI_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RI_IBUF_59,
      RST => rst_RI_IBUF_193,
      I => reg_RDM(0),
      O => reg_RI_0_171,
      SET => GND
    );
  reg_RI_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RI_IBUF_59,
      RST => rst_RI_IBUF_193,
      I => reg_RDM(1),
      O => reg_RI_1_172,
      SET => GND
    );
  reg_RI_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RI_IBUF_59,
      RST => rst_RI_IBUF_193,
      I => reg_RDM(2),
      O => reg_RI_2_173,
      SET => GND
    );
  reg_RI_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RI_IBUF_59,
      RST => rst_RI_IBUF_193,
      I => reg_RDM(3),
      O => reg_RI_3_174,
      SET => GND
    );
  reg_RI_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RI_IBUF_59,
      RST => rst_RI_IBUF_193,
      I => reg_RDM(4),
      O => reg_RI_4_175,
      SET => GND
    );
  reg_RI_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RI_IBUF_59,
      RST => rst_RI_IBUF_193,
      I => reg_RDM(5),
      O => reg_RI_5_176,
      SET => GND
    );
  reg_RI_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RI_IBUF_59,
      RST => rst_RI_IBUF_193,
      I => reg_RDM(6),
      O => reg_RI_6_177,
      SET => GND
    );
  reg_RI_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_RI_IBUF_59,
      RST => rst_RI_IBUF_193,
      I => reg_RDM(7),
      O => reg_RI_7_178,
      SET => GND
    );
  reg_Z_34 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => reg_Z_cmp_eq0000,
      CLK => ctrl_ULA_IBUF_61,
      O => reg_Z_OBUF_180,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  reg_N_35 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => out_ULA(7),
      CLK => ctrl_ULA_IBUF_61,
      O => reg_N_OBUF_130,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  Mcount_reg_PC_lut_0_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => load_PC_IBUF_64,
      ADR1 => reg_PC(0),
      ADR2 => reg_RDM(0),
      O => Mcount_reg_PC_lut(0)
    );
  Mcount_reg_PC_cy_0_Q : X_MUX2
    port map (
      IB => load_PC_inv,
      IA => N0,
      SEL => Mcount_reg_PC_lut(0),
      O => Mcount_reg_PC_cy(0)
    );
  Mcount_reg_PC_xor_0_Q : X_XOR2
    port map (
      I0 => load_PC_inv,
      I1 => Mcount_reg_PC_lut(0),
      O => Mcount_reg_PC
    );
  Mcount_reg_PC_lut_1_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => load_PC_IBUF_64,
      ADR1 => reg_PC(1),
      ADR2 => reg_RDM(1),
      O => Mcount_reg_PC_lut(1)
    );
  Mcount_reg_PC_cy_1_Q : X_MUX2
    port map (
      IB => Mcount_reg_PC_cy(0),
      IA => N0,
      SEL => Mcount_reg_PC_lut(1),
      O => Mcount_reg_PC_cy(1)
    );
  Mcount_reg_PC_xor_1_Q : X_XOR2
    port map (
      I0 => Mcount_reg_PC_cy(0),
      I1 => Mcount_reg_PC_lut(1),
      O => Mcount_reg_PC1
    );
  Mcount_reg_PC_lut_2_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => load_PC_IBUF_64,
      ADR1 => reg_PC(2),
      ADR2 => reg_RDM(2),
      O => Mcount_reg_PC_lut(2)
    );
  Mcount_reg_PC_cy_2_Q : X_MUX2
    port map (
      IB => Mcount_reg_PC_cy(1),
      IA => N0,
      SEL => Mcount_reg_PC_lut(2),
      O => Mcount_reg_PC_cy(2)
    );
  Mcount_reg_PC_xor_2_Q : X_XOR2
    port map (
      I0 => Mcount_reg_PC_cy(1),
      I1 => Mcount_reg_PC_lut(2),
      O => Mcount_reg_PC2
    );
  Mcount_reg_PC_lut_3_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => load_PC_IBUF_64,
      ADR1 => reg_PC(3),
      ADR2 => reg_RDM(3),
      O => Mcount_reg_PC_lut(3)
    );
  Mcount_reg_PC_cy_3_Q : X_MUX2
    port map (
      IB => Mcount_reg_PC_cy(2),
      IA => N0,
      SEL => Mcount_reg_PC_lut(3),
      O => Mcount_reg_PC_cy(3)
    );
  Mcount_reg_PC_xor_3_Q : X_XOR2
    port map (
      I0 => Mcount_reg_PC_cy(2),
      I1 => Mcount_reg_PC_lut(3),
      O => Mcount_reg_PC3
    );
  Mcount_reg_PC_lut_4_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => load_PC_IBUF_64,
      ADR1 => reg_PC(4),
      ADR2 => reg_RDM(4),
      O => Mcount_reg_PC_lut(4)
    );
  Mcount_reg_PC_cy_4_Q : X_MUX2
    port map (
      IB => Mcount_reg_PC_cy(3),
      IA => N0,
      SEL => Mcount_reg_PC_lut(4),
      O => Mcount_reg_PC_cy(4)
    );
  Mcount_reg_PC_xor_4_Q : X_XOR2
    port map (
      I0 => Mcount_reg_PC_cy(3),
      I1 => Mcount_reg_PC_lut(4),
      O => Mcount_reg_PC4
    );
  Mcount_reg_PC_lut_5_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => load_PC_IBUF_64,
      ADR1 => reg_PC(5),
      ADR2 => reg_RDM(5),
      O => Mcount_reg_PC_lut(5)
    );
  Mcount_reg_PC_cy_5_Q : X_MUX2
    port map (
      IB => Mcount_reg_PC_cy(4),
      IA => N0,
      SEL => Mcount_reg_PC_lut(5),
      O => Mcount_reg_PC_cy(5)
    );
  Mcount_reg_PC_xor_5_Q : X_XOR2
    port map (
      I0 => Mcount_reg_PC_cy(4),
      I1 => Mcount_reg_PC_lut(5),
      O => Mcount_reg_PC5
    );
  Mcount_reg_PC_lut_6_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => load_PC_IBUF_64,
      ADR1 => reg_PC(6),
      ADR2 => reg_RDM(6),
      O => Mcount_reg_PC_lut(6)
    );
  Mcount_reg_PC_cy_6_Q : X_MUX2
    port map (
      IB => Mcount_reg_PC_cy(5),
      IA => N0,
      SEL => Mcount_reg_PC_lut(6),
      O => Mcount_reg_PC_cy(6)
    );
  Mcount_reg_PC_xor_6_Q : X_XOR2
    port map (
      I0 => Mcount_reg_PC_cy(5),
      I1 => Mcount_reg_PC_lut(6),
      O => Mcount_reg_PC6
    );
  Mcount_reg_PC_lut_7_Q : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => load_PC_IBUF_64,
      ADR1 => reg_PC(7),
      ADR2 => reg_RDM(7),
      O => Mcount_reg_PC_lut(7)
    );
  Mcount_reg_PC_xor_7_Q : X_XOR2
    port map (
      I0 => Mcount_reg_PC_cy(6),
      I1 => Mcount_reg_PC_lut(7),
      O => Mcount_reg_PC7
    );
  reg_PC_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_PC_IBUF_53,
      RST => rst_PC_IBUF_187,
      I => Mcount_reg_PC,
      O => reg_PC(0),
      SET => GND
    );
  reg_PC_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_PC_IBUF_53,
      RST => rst_PC_IBUF_187,
      I => Mcount_reg_PC1,
      O => reg_PC(1),
      SET => GND
    );
  reg_PC_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_PC_IBUF_53,
      RST => rst_PC_IBUF_187,
      I => Mcount_reg_PC2,
      O => reg_PC(2),
      SET => GND
    );
  reg_PC_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_PC_IBUF_53,
      RST => rst_PC_IBUF_187,
      I => Mcount_reg_PC3,
      O => reg_PC(3),
      SET => GND
    );
  reg_PC_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_PC_IBUF_53,
      RST => rst_PC_IBUF_187,
      I => Mcount_reg_PC4,
      O => reg_PC(4),
      SET => GND
    );
  reg_PC_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_PC_IBUF_53,
      RST => rst_PC_IBUF_187,
      I => Mcount_reg_PC5,
      O => reg_PC(5),
      SET => GND
    );
  reg_PC_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_PC_IBUF_53,
      RST => rst_PC_IBUF_187,
      I => Mcount_reg_PC6,
      O => reg_PC(6),
      SET => GND
    );
  reg_PC_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => ctrl_PC_IBUF_53,
      RST => rst_PC_IBUF_187,
      I => Mcount_reg_PC7,
      O => reg_PC(7),
      SET => GND
    );
  Madd_out_ULA_addsub0000_lut_0_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => reg_AC(0),
      ADR1 => reg_RDM(0),
      O => Madd_out_ULA_addsub0000_lut(0)
    );
  Madd_out_ULA_addsub0000_cy_0_Q : X_MUX2
    port map (
      IB => N0,
      IA => reg_AC(0),
      SEL => Madd_out_ULA_addsub0000_lut(0),
      O => Madd_out_ULA_addsub0000_cy(0)
    );
  Madd_out_ULA_addsub0000_xor_0_Q : X_XOR2
    port map (
      I0 => N0,
      I1 => Madd_out_ULA_addsub0000_lut(0),
      O => out_ULA_addsub0000(0)
    );
  Madd_out_ULA_addsub0000_lut_1_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => reg_AC(1),
      ADR1 => reg_RDM(1),
      O => Madd_out_ULA_addsub0000_lut(1)
    );
  Madd_out_ULA_addsub0000_cy_1_Q : X_MUX2
    port map (
      IB => Madd_out_ULA_addsub0000_cy(0),
      IA => reg_AC(1),
      SEL => Madd_out_ULA_addsub0000_lut(1),
      O => Madd_out_ULA_addsub0000_cy(1)
    );
  Madd_out_ULA_addsub0000_xor_1_Q : X_XOR2
    port map (
      I0 => Madd_out_ULA_addsub0000_cy(0),
      I1 => Madd_out_ULA_addsub0000_lut(1),
      O => out_ULA_addsub0000(1)
    );
  Madd_out_ULA_addsub0000_lut_2_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => reg_AC(2),
      ADR1 => reg_RDM(2),
      O => Madd_out_ULA_addsub0000_lut(2)
    );
  Madd_out_ULA_addsub0000_cy_2_Q : X_MUX2
    port map (
      IB => Madd_out_ULA_addsub0000_cy(1),
      IA => reg_AC(2),
      SEL => Madd_out_ULA_addsub0000_lut(2),
      O => Madd_out_ULA_addsub0000_cy(2)
    );
  Madd_out_ULA_addsub0000_xor_2_Q : X_XOR2
    port map (
      I0 => Madd_out_ULA_addsub0000_cy(1),
      I1 => Madd_out_ULA_addsub0000_lut(2),
      O => out_ULA_addsub0000(2)
    );
  Madd_out_ULA_addsub0000_lut_3_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => reg_AC(3),
      ADR1 => reg_RDM(3),
      O => Madd_out_ULA_addsub0000_lut(3)
    );
  Madd_out_ULA_addsub0000_cy_3_Q : X_MUX2
    port map (
      IB => Madd_out_ULA_addsub0000_cy(2),
      IA => reg_AC(3),
      SEL => Madd_out_ULA_addsub0000_lut(3),
      O => Madd_out_ULA_addsub0000_cy(3)
    );
  Madd_out_ULA_addsub0000_xor_3_Q : X_XOR2
    port map (
      I0 => Madd_out_ULA_addsub0000_cy(2),
      I1 => Madd_out_ULA_addsub0000_lut(3),
      O => out_ULA_addsub0000(3)
    );
  Madd_out_ULA_addsub0000_lut_4_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => reg_AC(4),
      ADR1 => reg_RDM(4),
      O => Madd_out_ULA_addsub0000_lut(4)
    );
  Madd_out_ULA_addsub0000_cy_4_Q : X_MUX2
    port map (
      IB => Madd_out_ULA_addsub0000_cy(3),
      IA => reg_AC(4),
      SEL => Madd_out_ULA_addsub0000_lut(4),
      O => Madd_out_ULA_addsub0000_cy(4)
    );
  Madd_out_ULA_addsub0000_xor_4_Q : X_XOR2
    port map (
      I0 => Madd_out_ULA_addsub0000_cy(3),
      I1 => Madd_out_ULA_addsub0000_lut(4),
      O => out_ULA_addsub0000(4)
    );
  Madd_out_ULA_addsub0000_lut_5_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => reg_AC(5),
      ADR1 => reg_RDM(5),
      O => Madd_out_ULA_addsub0000_lut(5)
    );
  Madd_out_ULA_addsub0000_cy_5_Q : X_MUX2
    port map (
      IB => Madd_out_ULA_addsub0000_cy(4),
      IA => reg_AC(5),
      SEL => Madd_out_ULA_addsub0000_lut(5),
      O => Madd_out_ULA_addsub0000_cy(5)
    );
  Madd_out_ULA_addsub0000_xor_5_Q : X_XOR2
    port map (
      I0 => Madd_out_ULA_addsub0000_cy(4),
      I1 => Madd_out_ULA_addsub0000_lut(5),
      O => out_ULA_addsub0000(5)
    );
  Madd_out_ULA_addsub0000_lut_6_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => reg_AC(6),
      ADR1 => reg_RDM(6),
      O => Madd_out_ULA_addsub0000_lut(6)
    );
  Madd_out_ULA_addsub0000_cy_6_Q : X_MUX2
    port map (
      IB => Madd_out_ULA_addsub0000_cy(5),
      IA => reg_AC(6),
      SEL => Madd_out_ULA_addsub0000_lut(6),
      O => Madd_out_ULA_addsub0000_cy(6)
    );
  Madd_out_ULA_addsub0000_xor_6_Q : X_XOR2
    port map (
      I0 => Madd_out_ULA_addsub0000_cy(5),
      I1 => Madd_out_ULA_addsub0000_lut(6),
      O => out_ULA_addsub0000(6)
    );
  Madd_out_ULA_addsub0000_lut_7_Q : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => reg_AC(7),
      ADR1 => reg_RDM(7),
      O => Madd_out_ULA_addsub0000_lut(7)
    );
  Madd_out_ULA_addsub0000_xor_7_Q : X_XOR2
    port map (
      I0 => Madd_out_ULA_addsub0000_cy(6),
      I1 => Madd_out_ULA_addsub0000_lut(7),
      O => out_ULA_addsub0000(7)
    );
  out_MUX_7_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_195,
      ADR1 => reg_RDM(7),
      ADR2 => reg_PC(7),
      O => out_MUX(7)
    );
  out_MUX_6_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_195,
      ADR1 => reg_RDM(6),
      ADR2 => reg_PC(6),
      O => out_MUX(6)
    );
  out_MUX_5_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_195,
      ADR1 => reg_RDM(5),
      ADR2 => reg_PC(5),
      O => out_MUX(5)
    );
  out_MUX_4_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_195,
      ADR1 => reg_RDM(4),
      ADR2 => reg_PC(4),
      O => out_MUX(4)
    );
  out_MUX_3_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_195,
      ADR1 => reg_RDM(3),
      ADR2 => reg_PC(3),
      O => out_MUX(3)
    );
  out_MUX_2_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_195,
      ADR1 => reg_RDM(2),
      ADR2 => reg_PC(2),
      O => out_MUX(2)
    );
  out_MUX_1_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_195,
      ADR1 => reg_RDM(1),
      ADR2 => reg_PC(1),
      O => out_MUX(1)
    );
  out_MUX_0_1 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => sel_MUX_IBUF_195,
      ADR1 => reg_RDM(0),
      ADR2 => reg_PC(0),
      O => out_MUX(0)
    );
  out_ULA_0_31 : X_LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      ADR0 => sel_ULA_1_IBUF_200,
      ADR1 => ctrl_ULA_IBUF1,
      ADR2 => sel_ULA_0_IBUF_199,
      ADR3 => sel_ULA_2_IBUF_201,
      O => N2
    );
  out_ULA_0_21 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => sel_ULA_1_IBUF_200,
      ADR1 => ctrl_ULA_IBUF1,
      ADR2 => sel_ULA_0_IBUF_199,
      ADR3 => sel_ULA_2_IBUF_201,
      O => N11
    );
  out_ULA_0_811 : X_LUT4
    generic map(
      INIT => X"B8FF"
    )
    port map (
      ADR0 => sel_ULA_2_IBUF_201,
      ADR1 => sel_ULA_0_IBUF_199,
      ADR2 => sel_ULA_1_IBUF_200,
      ADR3 => ctrl_ULA_IBUF1,
      O => N15
    );
  out_ULA_0_41 : X_LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      ADR0 => sel_ULA_2_IBUF_201,
      ADR1 => sel_ULA_1_IBUF_200,
      ADR2 => sel_ULA_0_IBUF_199,
      ADR3 => ctrl_ULA_IBUF1,
      O => N3
    );
  reg_Z_cmp_eq000012 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => out_ULA(0),
      ADR1 => out_ULA(1),
      ADR2 => out_ULA(2),
      ADR3 => out_ULA(3),
      O => reg_Z_cmp_eq000012_182
    );
  reg_Z_cmp_eq000025 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => out_ULA(4),
      ADR1 => out_ULA(5),
      ADR2 => out_ULA(6),
      ADR3 => out_ULA(7),
      O => reg_Z_cmp_eq000025_183
    );
  reg_Z_cmp_eq000026 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => reg_Z_cmp_eq000012_182,
      ADR1 => reg_Z_cmp_eq000025_183,
      O => reg_Z_cmp_eq0000
    );
  out_ULA_6_36 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => N2,
      ADR1 => out_ULA_6_7_109,
      ADR2 => out_ULA_6_20_108,
      ADR3 => out_ULA_addsub0000(6),
      O => out_ULA(6)
    );
  out_ULA_5_36 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => N2,
      ADR1 => out_ULA_5_7_106,
      ADR2 => out_ULA_5_20_105,
      ADR3 => out_ULA_addsub0000(5),
      O => out_ULA(5)
    );
  out_ULA_4_36 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => N2,
      ADR1 => out_ULA_4_7_103,
      ADR2 => out_ULA_4_20_102,
      ADR3 => out_ULA_addsub0000(4),
      O => out_ULA(4)
    );
  out_ULA_3_36 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => N2,
      ADR1 => out_ULA_3_7_100,
      ADR2 => out_ULA_3_20_99,
      ADR3 => out_ULA_addsub0000(3),
      O => out_ULA(3)
    );
  out_ULA_2_36 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => N2,
      ADR1 => out_ULA_2_7_97,
      ADR2 => out_ULA_2_20_96,
      ADR3 => out_ULA_addsub0000(2),
      O => out_ULA(2)
    );
  out_ULA_1_36 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => N2,
      ADR1 => out_ULA_1_7_94,
      ADR2 => out_ULA_1_20_93,
      ADR3 => out_ULA_addsub0000(1),
      O => out_ULA(1)
    );
  out_ULA_7_36 : X_LUT4
    generic map(
      INIT => X"FEFC"
    )
    port map (
      ADR0 => N2,
      ADR1 => out_ULA_7_7_112,
      ADR2 => out_ULA_7_20_111,
      ADR3 => out_ULA_addsub0000(7),
      O => out_ULA(7)
    );
  ctrl_ULA_IBUF : X_BUF
    port map (
      I => ctrl_ULA,
      O => ctrl_ULA_IBUF1
    );
  sel_MUX_IBUF : X_BUF
    port map (
      I => sel_MUX,
      O => sel_MUX_IBUF_195
    );
  rst_AC_IBUF : X_BUF
    port map (
      I => rst_AC,
      O => rst_AC_IBUF_185
    );
  load_PC_IBUF : X_BUF
    port map (
      I => load_PC,
      O => load_PC_IBUF_64
    );
  ctrl_AC_IBUF : X_BUF
    port map (
      I => ctrl_AC,
      O => ctrl_AC_IBUF_51
    );
  rst_PC_IBUF : X_BUF
    port map (
      I => rst_PC,
      O => rst_PC_IBUF_187
    );
  rst_RI_IBUF : X_BUF
    port map (
      I => rst_RI,
      O => rst_RI_IBUF_193
    );
  ctrl_RDM_IBUF : X_BUF
    port map (
      I => ctrl_RDM,
      O => ctrl_RDM_IBUF_55
    );
  ctrl_REM_IBUF : X_BUF
    port map (
      I => ctrl_REM,
      O => ctrl_REM_IBUF_57
    );
  ctrl_PC_IBUF : X_BUF
    port map (
      I => ctrl_PC,
      O => ctrl_PC_IBUF_53
    );
  rst_RDM_IBUF : X_BUF
    port map (
      I => rst_RDM,
      O => rst_RDM_IBUF_189
    );
  rst_REM_IBUF : X_BUF
    port map (
      I => rst_REM,
      O => rst_REM_IBUF_191
    );
  ctrl_RI_IBUF : X_BUF
    port map (
      I => ctrl_RI,
      O => ctrl_RI_IBUF_59
    );
  out_MEM_7_IBUF : X_BUF
    port map (
      I => out_MEM(7),
      O => out_MEM_7_IBUF_81
    );
  out_MEM_6_IBUF : X_BUF
    port map (
      I => out_MEM(6),
      O => out_MEM_6_IBUF_80
    );
  out_MEM_5_IBUF : X_BUF
    port map (
      I => out_MEM(5),
      O => out_MEM_5_IBUF_79
    );
  out_MEM_4_IBUF : X_BUF
    port map (
      I => out_MEM(4),
      O => out_MEM_4_IBUF_78
    );
  out_MEM_3_IBUF : X_BUF
    port map (
      I => out_MEM(3),
      O => out_MEM_3_IBUF_77
    );
  out_MEM_2_IBUF : X_BUF
    port map (
      I => out_MEM(2),
      O => out_MEM_2_IBUF_76
    );
  out_MEM_1_IBUF : X_BUF
    port map (
      I => out_MEM(1),
      O => out_MEM_1_IBUF_75
    );
  out_MEM_0_IBUF : X_BUF
    port map (
      I => out_MEM(0),
      O => out_MEM_0_IBUF_74
    );
  sel_ULA_2_IBUF : X_BUF
    port map (
      I => sel_ULA(2),
      O => sel_ULA_2_IBUF_201
    );
  sel_ULA_1_IBUF : X_BUF
    port map (
      I => sel_ULA(1),
      O => sel_ULA_1_IBUF_200
    );
  sel_ULA_0_IBUF : X_BUF
    port map (
      I => sel_ULA(0),
      O => sel_ULA_0_IBUF_199
    );
  out_ULA_0_33 : X_LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      ADR0 => out_ULA_0_17_91,
      ADR1 => out_ULA_addsub0000(0),
      ADR2 => N2,
      ADR3 => N16,
      O => out_ULA(0)
    );
  out_ULA_0_0_SW0 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11,
      ADR1 => reg_AC(0),
      ADR2 => N3,
      ADR3 => reg_RDM(0),
      O => N16
    );
  out_ULA_6_10_SW0 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => sel_ULA_0_IBUF_199,
      ADR1 => sel_ULA_1_IBUF_200,
      O => N18
    );
  out_ULA_6_20 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(6),
      ADR1 => reg_RDM(6),
      ADR2 => N18,
      ADR3 => N15,
      O => out_ULA_6_20_108
    );
  out_ULA_5_20 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(5),
      ADR1 => reg_RDM(5),
      ADR2 => N18,
      ADR3 => N15,
      O => out_ULA_5_20_105
    );
  out_ULA_4_20 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(4),
      ADR1 => reg_RDM(4),
      ADR2 => N18,
      ADR3 => N15,
      O => out_ULA_4_20_102
    );
  out_ULA_3_20 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(3),
      ADR1 => reg_RDM(3),
      ADR2 => N18,
      ADR3 => N15,
      O => out_ULA_3_20_99
    );
  out_ULA_2_20 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(2),
      ADR1 => reg_RDM(2),
      ADR2 => N18,
      ADR3 => N15,
      O => out_ULA_2_20_96
    );
  out_ULA_1_20 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(1),
      ADR1 => reg_RDM(1),
      ADR2 => N18,
      ADR3 => N15,
      O => out_ULA_1_20_93
    );
  out_ULA_7_20 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(7),
      ADR1 => reg_RDM(7),
      ADR2 => N18,
      ADR3 => N15,
      O => out_ULA_7_20_111
    );
  ctrl_ULA_IBUF_BUFG : X_CKBUF
    port map (
      I => ctrl_ULA_IBUF1,
      O => ctrl_ULA_IBUF_61
    );
  load_PC_inv1_INV_0 : X_INV
    port map (
      I => load_PC_IBUF_64,
      O => load_PC_inv
    );
  out_ULA_6_7_LUT4_L_BUF : X_BUF
    port map (
      I => out_ULA_6_7_O,
      O => out_ULA_6_7_109
    );
  out_ULA_6_7 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11,
      ADR1 => reg_AC(6),
      ADR2 => reg_RDM(6),
      ADR3 => N3,
      O => out_ULA_6_7_O
    );
  out_ULA_5_7_LUT4_L_BUF : X_BUF
    port map (
      I => out_ULA_5_7_O,
      O => out_ULA_5_7_106
    );
  out_ULA_5_7 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11,
      ADR1 => reg_AC(5),
      ADR2 => reg_RDM(5),
      ADR3 => N3,
      O => out_ULA_5_7_O
    );
  out_ULA_4_7_LUT4_L_BUF : X_BUF
    port map (
      I => out_ULA_4_7_O,
      O => out_ULA_4_7_103
    );
  out_ULA_4_7 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11,
      ADR1 => reg_AC(4),
      ADR2 => reg_RDM(4),
      ADR3 => N3,
      O => out_ULA_4_7_O
    );
  out_ULA_3_7_LUT4_L_BUF : X_BUF
    port map (
      I => out_ULA_3_7_O,
      O => out_ULA_3_7_100
    );
  out_ULA_3_7 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11,
      ADR1 => reg_AC(3),
      ADR2 => reg_RDM(3),
      ADR3 => N3,
      O => out_ULA_3_7_O
    );
  out_ULA_2_7_LUT4_L_BUF : X_BUF
    port map (
      I => out_ULA_2_7_O,
      O => out_ULA_2_7_97
    );
  out_ULA_2_7 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11,
      ADR1 => reg_AC(2),
      ADR2 => reg_RDM(2),
      ADR3 => N3,
      O => out_ULA_2_7_O
    );
  out_ULA_1_7_LUT4_L_BUF : X_BUF
    port map (
      I => out_ULA_1_7_O,
      O => out_ULA_1_7_94
    );
  out_ULA_1_7 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11,
      ADR1 => reg_AC(1),
      ADR2 => reg_RDM(1),
      ADR3 => N3,
      O => out_ULA_1_7_O
    );
  out_ULA_7_7_LUT4_L_BUF : X_BUF
    port map (
      I => out_ULA_7_7_O,
      O => out_ULA_7_7_112
    );
  out_ULA_7_7 : X_LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      ADR0 => N11,
      ADR1 => reg_AC(7),
      ADR2 => reg_RDM(7),
      ADR3 => N3,
      O => out_ULA_7_7_O
    );
  out_ULA_0_17_LUT4_L_BUF : X_BUF
    port map (
      I => out_ULA_0_17_O,
      O => out_ULA_0_17_91
    );
  out_ULA_0_17 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => reg_AC(0),
      ADR1 => reg_RDM(0),
      ADR2 => N18,
      ADR3 => N15,
      O => out_ULA_0_17_O
    );
  clk_BUFGP_BUFG : X_CKBUF
    port map (
      I => clk_BUFGP_IBUFG_2,
      O => clk_BUFGP
    );
  clk_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clk,
      O => clk_BUFGP_IBUFG_2
    );
  reg_N_OBUF : X_OBUF
    port map (
      I => reg_N_OBUF_130,
      O => reg_N
    );
  reg_REM_0_OBUF : X_OBUF
    port map (
      I => reg_REM_0_155,
      O => reg_REM(0)
    );
  reg_REM_1_OBUF : X_OBUF
    port map (
      I => reg_REM_1_156,
      O => reg_REM(1)
    );
  reg_REM_2_OBUF : X_OBUF
    port map (
      I => reg_REM_2_157,
      O => reg_REM(2)
    );
  reg_REM_3_OBUF : X_OBUF
    port map (
      I => reg_REM_3_158,
      O => reg_REM(3)
    );
  reg_REM_4_OBUF : X_OBUF
    port map (
      I => reg_REM_4_159,
      O => reg_REM(4)
    );
  reg_REM_5_OBUF : X_OBUF
    port map (
      I => reg_REM_5_160,
      O => reg_REM(5)
    );
  reg_REM_6_OBUF : X_OBUF
    port map (
      I => reg_REM_6_161,
      O => reg_REM(6)
    );
  reg_REM_7_OBUF : X_OBUF
    port map (
      I => reg_REM_7_162,
      O => reg_REM(7)
    );
  reg_RI_0_OBUF : X_OBUF
    port map (
      I => reg_RI_0_171,
      O => reg_RI(0)
    );
  reg_RI_1_OBUF : X_OBUF
    port map (
      I => reg_RI_1_172,
      O => reg_RI(1)
    );
  reg_RI_2_OBUF : X_OBUF
    port map (
      I => reg_RI_2_173,
      O => reg_RI(2)
    );
  reg_RI_3_OBUF : X_OBUF
    port map (
      I => reg_RI_3_174,
      O => reg_RI(3)
    );
  reg_RI_4_OBUF : X_OBUF
    port map (
      I => reg_RI_4_175,
      O => reg_RI(4)
    );
  reg_RI_5_OBUF : X_OBUF
    port map (
      I => reg_RI_5_176,
      O => reg_RI(5)
    );
  reg_RI_6_OBUF : X_OBUF
    port map (
      I => reg_RI_6_177,
      O => reg_RI(6)
    );
  reg_RI_7_OBUF : X_OBUF
    port map (
      I => reg_RI_7_178,
      O => reg_RI(7)
    );
  reg_Z_OBUF : X_OBUF
    port map (
      I => reg_Z_OBUF_180,
      O => reg_Z
    );
  NlwBlock_neander_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_neander_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

