-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/27/2024 11:48:51"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TF3 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	tuning : IN std_logic_vector(10 DOWNTO 0);
	onda_ctrl : IN std_logic_vector(1 DOWNTO 0);
	prueba_salida : OUT std_logic_vector(10 DOWNTO 0);
	salida : OUT std_logic
	);
END TF3;

-- Design Ports Information
-- tuning[0]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tuning[1]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tuning[2]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tuning[3]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tuning[4]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tuning[5]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tuning[6]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tuning[7]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tuning[8]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tuning[9]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tuning[10]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- prueba_salida[0]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- prueba_salida[1]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- prueba_salida[2]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- prueba_salida[3]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- prueba_salida[4]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- prueba_salida[5]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- prueba_salida[6]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- prueba_salida[7]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- prueba_salida[8]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- prueba_salida[9]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- prueba_salida[10]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- salida	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- onda_ctrl[0]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- onda_ctrl[1]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TF3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_tuning : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_onda_ctrl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_prueba_salida : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_salida : std_logic;
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u3|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u7|r_reg[1]~10_combout\ : std_logic;
SIGNAL \u7|r_reg[5]~18_combout\ : std_logic;
SIGNAL \u7|r_reg[7]~22_combout\ : std_logic;
SIGNAL \u7|Equal0~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \u7|r_reg[0]~30_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \u7|r_reg[1]~11\ : std_logic;
SIGNAL \u7|r_reg[2]~12_combout\ : std_logic;
SIGNAL \u7|r_reg[2]~13\ : std_logic;
SIGNAL \u7|r_reg[3]~15\ : std_logic;
SIGNAL \u7|r_reg[4]~16_combout\ : std_logic;
SIGNAL \u7|r_reg[4]~17\ : std_logic;
SIGNAL \u7|r_reg[5]~19\ : std_logic;
SIGNAL \u7|r_reg[6]~20_combout\ : std_logic;
SIGNAL \u7|r_reg[6]~21\ : std_logic;
SIGNAL \u7|r_reg[7]~23\ : std_logic;
SIGNAL \u7|r_reg[8]~24_combout\ : std_logic;
SIGNAL \u7|r_reg[8]~25\ : std_logic;
SIGNAL \u7|r_reg[9]~26_combout\ : std_logic;
SIGNAL \u7|r_reg[9]~27\ : std_logic;
SIGNAL \u7|r_reg[10]~28_combout\ : std_logic;
SIGNAL \u7|Equal0~2_combout\ : std_logic;
SIGNAL \u7|r_reg[3]~14_combout\ : std_logic;
SIGNAL \u7|Equal0~0_combout\ : std_logic;
SIGNAL \u1|r_reg[0]~10_combout\ : std_logic;
SIGNAL \u1|r_reg[1]~11_combout\ : std_logic;
SIGNAL \u7|Equal0~3_combout\ : std_logic;
SIGNAL \u1|r_reg[1]~12\ : std_logic;
SIGNAL \u1|r_reg[2]~13_combout\ : std_logic;
SIGNAL \u1|r_reg[2]~14\ : std_logic;
SIGNAL \u1|r_reg[3]~15_combout\ : std_logic;
SIGNAL \u1|r_reg[3]~16\ : std_logic;
SIGNAL \u1|r_reg[4]~17_combout\ : std_logic;
SIGNAL \u1|r_reg[4]~18\ : std_logic;
SIGNAL \u1|r_reg[5]~19_combout\ : std_logic;
SIGNAL \u1|r_reg[5]~20\ : std_logic;
SIGNAL \u1|r_reg[6]~21_combout\ : std_logic;
SIGNAL \u1|r_reg[6]~22\ : std_logic;
SIGNAL \u1|r_reg[7]~23_combout\ : std_logic;
SIGNAL \u1|r_reg[7]~24\ : std_logic;
SIGNAL \u1|r_reg[8]~25_combout\ : std_logic;
SIGNAL \u1|r_reg[8]~26\ : std_logic;
SIGNAL \u1|r_reg[9]~27_combout\ : std_logic;
SIGNAL \u1|r_reg[9]~28\ : std_logic;
SIGNAL \u1|r_reg[10]~29_combout\ : std_logic;
SIGNAL \u6|Mux10~0_combout\ : std_logic;
SIGNAL \u6|Mux10~1_combout\ : std_logic;
SIGNAL \u6|Mux9~0_combout\ : std_logic;
SIGNAL \u6|Mux9~1_combout\ : std_logic;
SIGNAL \u6|Mux8~0_combout\ : std_logic;
SIGNAL \u6|Mux8~1_combout\ : std_logic;
SIGNAL \u6|Mux7~0_combout\ : std_logic;
SIGNAL \u6|Mux7~1_combout\ : std_logic;
SIGNAL \u6|Mux6~0_combout\ : std_logic;
SIGNAL \u6|Mux6~1_combout\ : std_logic;
SIGNAL \u6|Mux5~0_combout\ : std_logic;
SIGNAL \u6|Mux5~1_combout\ : std_logic;
SIGNAL \u6|Mux4~0_combout\ : std_logic;
SIGNAL \u6|Mux4~1_combout\ : std_logic;
SIGNAL \u6|Mux3~0_combout\ : std_logic;
SIGNAL \u6|Mux3~1_combout\ : std_logic;
SIGNAL \u6|Mux2~0_combout\ : std_logic;
SIGNAL \u6|Mux2~1_combout\ : std_logic;
SIGNAL \u6|Mux1~0_combout\ : std_logic;
SIGNAL \u6|Mux1~1_combout\ : std_logic;
SIGNAL \u6|Mux0~0_combout\ : std_logic;
SIGNAL \u6|Mux0~1_combout\ : std_logic;
SIGNAL \u7|LessThan0~1_cout\ : std_logic;
SIGNAL \u7|LessThan0~3_cout\ : std_logic;
SIGNAL \u7|LessThan0~5_cout\ : std_logic;
SIGNAL \u7|LessThan0~7_cout\ : std_logic;
SIGNAL \u7|LessThan0~9_cout\ : std_logic;
SIGNAL \u7|LessThan0~11_cout\ : std_logic;
SIGNAL \u7|LessThan0~13_cout\ : std_logic;
SIGNAL \u7|LessThan0~15_cout\ : std_logic;
SIGNAL \u7|LessThan0~17_cout\ : std_logic;
SIGNAL \u7|LessThan0~19_cout\ : std_logic;
SIGNAL \u7|LessThan0~20_combout\ : std_logic;
SIGNAL \u7|buf_reg~regout\ : std_logic;
SIGNAL \u5|altsyncram_component|auto_generated|q_a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u7|r_reg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \onda_ctrl~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u4|altsyncram_component|auto_generated|q_a\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u1|r_reg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_tuning <= tuning;
ww_onda_ctrl <= onda_ctrl;
prueba_salida <= ww_prueba_salida;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u4|altsyncram_component|auto_generated|q_a\(0) <= \u4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u5|altsyncram_component|auto_generated|q_a\(0) <= \u4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\u3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u3|altsyncram_component|auto_generated|q_a\(0) <= \u3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u5|altsyncram_component|auto_generated|q_a\(1) <= \u3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\u4|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u4|altsyncram_component|auto_generated|q_a\(1) <= \u4|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\u3|altsyncram_component|auto_generated|q_a\(1) <= \u4|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);

\u4|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u4|altsyncram_component|auto_generated|q_a\(2) <= \u4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\u5|altsyncram_component|auto_generated|q_a\(2) <= \u4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\u3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u3|altsyncram_component|auto_generated|q_a\(2) <= \u3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\u5|altsyncram_component|auto_generated|q_a\(3) <= \u3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\u4|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u4|altsyncram_component|auto_generated|q_a\(3) <= \u4|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\u3|altsyncram_component|auto_generated|q_a\(3) <= \u4|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);

\u4|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u4|altsyncram_component|auto_generated|q_a\(4) <= \u4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\u5|altsyncram_component|auto_generated|q_a\(4) <= \u4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\u3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u3|altsyncram_component|auto_generated|q_a\(4) <= \u3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\u5|altsyncram_component|auto_generated|q_a\(5) <= \u3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\u4|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u4|altsyncram_component|auto_generated|q_a\(5) <= \u4|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\u3|altsyncram_component|auto_generated|q_a\(5) <= \u4|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);

\u4|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u4|altsyncram_component|auto_generated|q_a\(6) <= \u4|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\u5|altsyncram_component|auto_generated|q_a\(6) <= \u4|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\u3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u3|altsyncram_component|auto_generated|q_a\(6) <= \u3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\u5|altsyncram_component|auto_generated|q_a\(7) <= \u3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\u4|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u4|altsyncram_component|auto_generated|q_a\(7) <= \u4|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);
\u3|altsyncram_component|auto_generated|q_a\(7) <= \u4|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(1);

\u4|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u4|altsyncram_component|auto_generated|q_a\(8) <= \u4|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\u5|altsyncram_component|auto_generated|q_a\(8) <= \u4|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\u3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u3|altsyncram_component|auto_generated|q_a\(8) <= \u3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\u5|altsyncram_component|auto_generated|q_a\(9) <= \u3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\u4|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u4|altsyncram_component|auto_generated|q_a\(9) <= \u4|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\u3|altsyncram_component|auto_generated|q_a\(9) <= \u4|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);

\u4|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u4|altsyncram_component|auto_generated|q_a\(10) <= \u4|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\u5|altsyncram_component|auto_generated|q_a\(10) <= \u4|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\u3|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\u1|r_reg\(10) & \u1|r_reg\(9) & \u1|r_reg\(8) & \u1|r_reg\(7) & \u1|r_reg\(6) & \u1|r_reg\(5) & \u1|r_reg\(4) & \u1|r_reg\(3) & \u1|r_reg\(2) & \u1|r_reg\(1) & 
\u1|r_reg\(0));

\u3|altsyncram_component|auto_generated|q_a\(10) <= \u3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;

-- Location: M4K_X23_Y5
\u4|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"15557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAAD5557FFF80002AAA",
	mem_init0 => X"FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000FFFF5555AAAA0000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sierra_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sierra_wave:u4|altsyncram:altsyncram_component|altsyncram_k981:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u4|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u4|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCFF_X20_Y6_N25
\u7|r_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u7|r_reg[7]~22_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|r_reg\(7));

-- Location: LCFF_X20_Y6_N21
\u7|r_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u7|r_reg[5]~18_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|r_reg\(5));

-- Location: LCFF_X20_Y6_N13
\u7|r_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u7|r_reg[1]~10_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|r_reg\(1));

-- Location: LCCOMB_X20_Y6_N12
\u7|r_reg[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|r_reg[1]~10_combout\ = (\u7|r_reg\(1) & (\u7|r_reg\(0) $ (VCC))) # (!\u7|r_reg\(1) & (\u7|r_reg\(0) & VCC))
-- \u7|r_reg[1]~11\ = CARRY((\u7|r_reg\(1) & \u7|r_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|r_reg\(1),
	datab => \u7|r_reg\(0),
	datad => VCC,
	combout => \u7|r_reg[1]~10_combout\,
	cout => \u7|r_reg[1]~11\);

-- Location: LCCOMB_X20_Y6_N20
\u7|r_reg[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|r_reg[5]~18_combout\ = (\u7|r_reg\(5) & (\u7|r_reg[4]~17\ $ (GND))) # (!\u7|r_reg\(5) & (!\u7|r_reg[4]~17\ & VCC))
-- \u7|r_reg[5]~19\ = CARRY((\u7|r_reg\(5) & !\u7|r_reg[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|r_reg\(5),
	datad => VCC,
	cin => \u7|r_reg[4]~17\,
	combout => \u7|r_reg[5]~18_combout\,
	cout => \u7|r_reg[5]~19\);

-- Location: LCCOMB_X20_Y6_N24
\u7|r_reg[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|r_reg[7]~22_combout\ = (\u7|r_reg\(7) & (\u7|r_reg[6]~21\ $ (GND))) # (!\u7|r_reg\(7) & (!\u7|r_reg[6]~21\ & VCC))
-- \u7|r_reg[7]~23\ = CARRY((\u7|r_reg\(7) & !\u7|r_reg[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|r_reg\(7),
	datad => VCC,
	cin => \u7|r_reg[6]~21\,
	combout => \u7|r_reg[7]~22_combout\,
	cout => \u7|r_reg[7]~23\);

-- Location: LCCOMB_X20_Y6_N6
\u7|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~1_combout\ = (\u7|r_reg\(7) & (\u7|r_reg\(6) & (\u7|r_reg\(5) & \u7|r_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|r_reg\(7),
	datab => \u7|r_reg\(6),
	datac => \u7|r_reg\(5),
	datad => \u7|r_reg\(4),
	combout => \u7|Equal0~1_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\onda_ctrl[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_onda_ctrl(0),
	combout => \onda_ctrl~combout\(0));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\onda_ctrl[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_onda_ctrl(1),
	combout => \onda_ctrl~combout\(1));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y6_N2
\u7|r_reg[0]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|r_reg[0]~30_combout\ = !\u7|r_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|r_reg\(0),
	combout => \u7|r_reg[0]~30_combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCFF_X20_Y6_N3
\u7|r_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u7|r_reg[0]~30_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|r_reg\(0));

-- Location: LCCOMB_X20_Y6_N14
\u7|r_reg[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|r_reg[2]~12_combout\ = (\u7|r_reg\(2) & (!\u7|r_reg[1]~11\)) # (!\u7|r_reg\(2) & ((\u7|r_reg[1]~11\) # (GND)))
-- \u7|r_reg[2]~13\ = CARRY((!\u7|r_reg[1]~11\) # (!\u7|r_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|r_reg\(2),
	datad => VCC,
	cin => \u7|r_reg[1]~11\,
	combout => \u7|r_reg[2]~12_combout\,
	cout => \u7|r_reg[2]~13\);

-- Location: LCFF_X20_Y6_N15
\u7|r_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u7|r_reg[2]~12_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|r_reg\(2));

-- Location: LCCOMB_X20_Y6_N16
\u7|r_reg[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|r_reg[3]~14_combout\ = (\u7|r_reg\(3) & (\u7|r_reg[2]~13\ $ (GND))) # (!\u7|r_reg\(3) & (!\u7|r_reg[2]~13\ & VCC))
-- \u7|r_reg[3]~15\ = CARRY((\u7|r_reg\(3) & !\u7|r_reg[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|r_reg\(3),
	datad => VCC,
	cin => \u7|r_reg[2]~13\,
	combout => \u7|r_reg[3]~14_combout\,
	cout => \u7|r_reg[3]~15\);

-- Location: LCCOMB_X20_Y6_N18
\u7|r_reg[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|r_reg[4]~16_combout\ = (\u7|r_reg\(4) & (!\u7|r_reg[3]~15\)) # (!\u7|r_reg\(4) & ((\u7|r_reg[3]~15\) # (GND)))
-- \u7|r_reg[4]~17\ = CARRY((!\u7|r_reg[3]~15\) # (!\u7|r_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|r_reg\(4),
	datad => VCC,
	cin => \u7|r_reg[3]~15\,
	combout => \u7|r_reg[4]~16_combout\,
	cout => \u7|r_reg[4]~17\);

-- Location: LCFF_X20_Y6_N19
\u7|r_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u7|r_reg[4]~16_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|r_reg\(4));

-- Location: LCCOMB_X20_Y6_N22
\u7|r_reg[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|r_reg[6]~20_combout\ = (\u7|r_reg\(6) & (!\u7|r_reg[5]~19\)) # (!\u7|r_reg\(6) & ((\u7|r_reg[5]~19\) # (GND)))
-- \u7|r_reg[6]~21\ = CARRY((!\u7|r_reg[5]~19\) # (!\u7|r_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|r_reg\(6),
	datad => VCC,
	cin => \u7|r_reg[5]~19\,
	combout => \u7|r_reg[6]~20_combout\,
	cout => \u7|r_reg[6]~21\);

-- Location: LCFF_X20_Y6_N23
\u7|r_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u7|r_reg[6]~20_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|r_reg\(6));

-- Location: LCCOMB_X20_Y6_N26
\u7|r_reg[8]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|r_reg[8]~24_combout\ = (\u7|r_reg\(8) & (!\u7|r_reg[7]~23\)) # (!\u7|r_reg\(8) & ((\u7|r_reg[7]~23\) # (GND)))
-- \u7|r_reg[8]~25\ = CARRY((!\u7|r_reg[7]~23\) # (!\u7|r_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|r_reg\(8),
	datad => VCC,
	cin => \u7|r_reg[7]~23\,
	combout => \u7|r_reg[8]~24_combout\,
	cout => \u7|r_reg[8]~25\);

-- Location: LCFF_X20_Y6_N27
\u7|r_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u7|r_reg[8]~24_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|r_reg\(8));

-- Location: LCCOMB_X20_Y6_N28
\u7|r_reg[9]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|r_reg[9]~26_combout\ = (\u7|r_reg\(9) & (\u7|r_reg[8]~25\ $ (GND))) # (!\u7|r_reg\(9) & (!\u7|r_reg[8]~25\ & VCC))
-- \u7|r_reg[9]~27\ = CARRY((\u7|r_reg\(9) & !\u7|r_reg[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|r_reg\(9),
	datad => VCC,
	cin => \u7|r_reg[8]~25\,
	combout => \u7|r_reg[9]~26_combout\,
	cout => \u7|r_reg[9]~27\);

-- Location: LCFF_X20_Y6_N29
\u7|r_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u7|r_reg[9]~26_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|r_reg\(9));

-- Location: LCCOMB_X20_Y6_N30
\u7|r_reg[10]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|r_reg[10]~28_combout\ = \u7|r_reg[9]~27\ $ (\u7|r_reg\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u7|r_reg\(10),
	cin => \u7|r_reg[9]~27\,
	combout => \u7|r_reg[10]~28_combout\);

-- Location: LCFF_X20_Y6_N31
\u7|r_reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u7|r_reg[10]~28_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|r_reg\(10));

-- Location: LCCOMB_X20_Y6_N4
\u7|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~2_combout\ = (\u7|r_reg\(8) & (\u7|r_reg\(9) & \u7|r_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|r_reg\(8),
	datac => \u7|r_reg\(9),
	datad => \u7|r_reg\(10),
	combout => \u7|Equal0~2_combout\);

-- Location: LCFF_X20_Y6_N17
\u7|r_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u7|r_reg[3]~14_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|r_reg\(3));

-- Location: LCCOMB_X20_Y6_N0
\u7|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~0_combout\ = (\u7|r_reg\(1) & (\u7|r_reg\(2) & (\u7|r_reg\(3) & \u7|r_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|r_reg\(1),
	datab => \u7|r_reg\(2),
	datac => \u7|r_reg\(3),
	datad => \u7|r_reg\(0),
	combout => \u7|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y6_N8
\u1|r_reg[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|r_reg[0]~10_combout\ = \u1|r_reg\(0) $ ((((!\u7|Equal0~0_combout\) # (!\u7|Equal0~2_combout\)) # (!\u7|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Equal0~1_combout\,
	datab => \u7|Equal0~2_combout\,
	datac => \u1|r_reg\(0),
	datad => \u7|Equal0~0_combout\,
	combout => \u1|r_reg[0]~10_combout\);

-- Location: LCFF_X20_Y6_N9
\u1|r_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|r_reg[0]~10_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|r_reg\(0));

-- Location: LCCOMB_X19_Y6_N10
\u1|r_reg[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|r_reg[1]~11_combout\ = (\u1|r_reg\(1) & (\u1|r_reg\(0) $ (VCC))) # (!\u1|r_reg\(1) & (\u1|r_reg\(0) & VCC))
-- \u1|r_reg[1]~12\ = CARRY((\u1|r_reg\(1) & \u1|r_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_reg\(1),
	datab => \u1|r_reg\(0),
	datad => VCC,
	combout => \u1|r_reg[1]~11_combout\,
	cout => \u1|r_reg[1]~12\);

-- Location: LCCOMB_X20_Y6_N10
\u7|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~3_combout\ = ((!\u7|Equal0~0_combout\) # (!\u7|Equal0~2_combout\)) # (!\u7|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Equal0~1_combout\,
	datac => \u7|Equal0~2_combout\,
	datad => \u7|Equal0~0_combout\,
	combout => \u7|Equal0~3_combout\);

-- Location: LCFF_X19_Y6_N11
\u1|r_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|r_reg[1]~11_combout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \u7|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|r_reg\(1));

-- Location: LCCOMB_X19_Y6_N12
\u1|r_reg[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|r_reg[2]~13_combout\ = (\u1|r_reg\(2) & (!\u1|r_reg[1]~12\)) # (!\u1|r_reg\(2) & ((\u1|r_reg[1]~12\) # (GND)))
-- \u1|r_reg[2]~14\ = CARRY((!\u1|r_reg[1]~12\) # (!\u1|r_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_reg\(2),
	datad => VCC,
	cin => \u1|r_reg[1]~12\,
	combout => \u1|r_reg[2]~13_combout\,
	cout => \u1|r_reg[2]~14\);

-- Location: LCFF_X19_Y6_N13
\u1|r_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|r_reg[2]~13_combout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \u7|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|r_reg\(2));

-- Location: LCCOMB_X19_Y6_N14
\u1|r_reg[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|r_reg[3]~15_combout\ = (\u1|r_reg\(3) & (\u1|r_reg[2]~14\ $ (GND))) # (!\u1|r_reg\(3) & (!\u1|r_reg[2]~14\ & VCC))
-- \u1|r_reg[3]~16\ = CARRY((\u1|r_reg\(3) & !\u1|r_reg[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|r_reg\(3),
	datad => VCC,
	cin => \u1|r_reg[2]~14\,
	combout => \u1|r_reg[3]~15_combout\,
	cout => \u1|r_reg[3]~16\);

-- Location: LCFF_X19_Y6_N15
\u1|r_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|r_reg[3]~15_combout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \u7|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|r_reg\(3));

-- Location: LCCOMB_X19_Y6_N16
\u1|r_reg[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|r_reg[4]~17_combout\ = (\u1|r_reg\(4) & (!\u1|r_reg[3]~16\)) # (!\u1|r_reg\(4) & ((\u1|r_reg[3]~16\) # (GND)))
-- \u1|r_reg[4]~18\ = CARRY((!\u1|r_reg[3]~16\) # (!\u1|r_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_reg\(4),
	datad => VCC,
	cin => \u1|r_reg[3]~16\,
	combout => \u1|r_reg[4]~17_combout\,
	cout => \u1|r_reg[4]~18\);

-- Location: LCFF_X19_Y6_N17
\u1|r_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|r_reg[4]~17_combout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \u7|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|r_reg\(4));

-- Location: LCCOMB_X19_Y6_N18
\u1|r_reg[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|r_reg[5]~19_combout\ = (\u1|r_reg\(5) & (\u1|r_reg[4]~18\ $ (GND))) # (!\u1|r_reg\(5) & (!\u1|r_reg[4]~18\ & VCC))
-- \u1|r_reg[5]~20\ = CARRY((\u1|r_reg\(5) & !\u1|r_reg[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|r_reg\(5),
	datad => VCC,
	cin => \u1|r_reg[4]~18\,
	combout => \u1|r_reg[5]~19_combout\,
	cout => \u1|r_reg[5]~20\);

-- Location: LCFF_X19_Y6_N19
\u1|r_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|r_reg[5]~19_combout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \u7|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|r_reg\(5));

-- Location: LCCOMB_X19_Y6_N20
\u1|r_reg[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|r_reg[6]~21_combout\ = (\u1|r_reg\(6) & (!\u1|r_reg[5]~20\)) # (!\u1|r_reg\(6) & ((\u1|r_reg[5]~20\) # (GND)))
-- \u1|r_reg[6]~22\ = CARRY((!\u1|r_reg[5]~20\) # (!\u1|r_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_reg\(6),
	datad => VCC,
	cin => \u1|r_reg[5]~20\,
	combout => \u1|r_reg[6]~21_combout\,
	cout => \u1|r_reg[6]~22\);

-- Location: LCFF_X19_Y6_N21
\u1|r_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|r_reg[6]~21_combout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \u7|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|r_reg\(6));

-- Location: LCCOMB_X19_Y6_N22
\u1|r_reg[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|r_reg[7]~23_combout\ = (\u1|r_reg\(7) & (\u1|r_reg[6]~22\ $ (GND))) # (!\u1|r_reg\(7) & (!\u1|r_reg[6]~22\ & VCC))
-- \u1|r_reg[7]~24\ = CARRY((\u1|r_reg\(7) & !\u1|r_reg[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|r_reg\(7),
	datad => VCC,
	cin => \u1|r_reg[6]~22\,
	combout => \u1|r_reg[7]~23_combout\,
	cout => \u1|r_reg[7]~24\);

-- Location: LCFF_X19_Y6_N23
\u1|r_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|r_reg[7]~23_combout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \u7|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|r_reg\(7));

-- Location: LCCOMB_X19_Y6_N24
\u1|r_reg[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|r_reg[8]~25_combout\ = (\u1|r_reg\(8) & (!\u1|r_reg[7]~24\)) # (!\u1|r_reg\(8) & ((\u1|r_reg[7]~24\) # (GND)))
-- \u1|r_reg[8]~26\ = CARRY((!\u1|r_reg[7]~24\) # (!\u1|r_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|r_reg\(8),
	datad => VCC,
	cin => \u1|r_reg[7]~24\,
	combout => \u1|r_reg[8]~25_combout\,
	cout => \u1|r_reg[8]~26\);

-- Location: LCFF_X19_Y6_N25
\u1|r_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|r_reg[8]~25_combout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \u7|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|r_reg\(8));

-- Location: LCCOMB_X19_Y6_N26
\u1|r_reg[9]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|r_reg[9]~27_combout\ = (\u1|r_reg\(9) & (\u1|r_reg[8]~26\ $ (GND))) # (!\u1|r_reg\(9) & (!\u1|r_reg[8]~26\ & VCC))
-- \u1|r_reg[9]~28\ = CARRY((\u1|r_reg\(9) & !\u1|r_reg[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|r_reg\(9),
	datad => VCC,
	cin => \u1|r_reg[8]~26\,
	combout => \u1|r_reg[9]~27_combout\,
	cout => \u1|r_reg[9]~28\);

-- Location: LCFF_X19_Y6_N27
\u1|r_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|r_reg[9]~27_combout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \u7|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|r_reg\(9));

-- Location: LCCOMB_X19_Y6_N28
\u1|r_reg[10]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|r_reg[10]~29_combout\ = \u1|r_reg[9]~28\ $ (\u1|r_reg\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1|r_reg\(10),
	cin => \u1|r_reg[9]~28\,
	combout => \u1|r_reg[10]~29_combout\);

-- Location: LCFF_X19_Y6_N29
\u1|r_reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|r_reg[10]~29_combout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \u7|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|r_reg\(10));

-- Location: M4K_X23_Y8
\u3|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0CCC9998CCC9999CCCC9999CCCCC999998CCCCCCCCD9999999999999CCCCCCCD9999CCCD998CC998CD98CD98C98C98C9CD8C9C9C9C9C9C9C8D8DC8DC8DC8DD88DDC889DDDD888888888889DDDC889DD88DC8DC8DC9D8D8D8D8D8C9CD9CD98CD98CCD999998CCC999999CCC99CC99CD9C98D9C9C9D8D89D8DD89DC889DDD8888888888DDDD889DC89D89D8DC9C9C9C9CD8C98C99CC998CCCD99999999998CCC999CC99CD9CD8C9CD8D8D8DC9D8DC8DC89DC88DDC8888DDDDDDDDDDD88889DDC88DD88DD89D89C8DC9C8D8D8D8D8C9C98D9C98C98C99CD98CD99CCD99CCCD9998CCCCC99999999999999999999999CCCCCCD99999CCCCD9998CCCD999CCCD999CC",
	mem_init0 => X"CC9998CCC9998CCCD9998CCCC999998CCCCCC99999999999999999999999CCCCCD9998CCC998CC998CD98C99CD9CD9C98D9C9CD8D8D8D8DC9C8DC9D89D88DD88DDC889DDDD88888888888DDDDC88DDC89DC8DC8D89C8D8D8D8C9CD8C98C99CC999CCCD99999999998CCCD99CC99CD9CD8C9C9C9C9C8D89D89DC89DD8888DDDDDDDDDD8889DDC89D88D89D8D89C9C98D9C98C99CC99CCC999999CCCD999998CCD98CD98C98C9CD8D8D8D8D89C8DC8DC8DD889DDC8889DDDDDDDDDDD88889DDC88DD88DC8DC8DC8D8DC9C9C9C9C9C9CD8C9CD9CD9CD98CD98CD99CCD998CCC99998CCCCCCC99999999999998CCCCCCCCD99999CCCCC9999CCCC9999CCCD999CCCC",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sine_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sine_wave:u3|altsyncram:altsyncram_component|altsyncram_t281:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M4K_X23_Y7
\u4|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"04444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444",
	mem_init0 => X"C4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sierra_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sierra_wave:u4|altsyncram:altsyncram_component|altsyncram_k981:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y7_N8
\u6|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux10~0_combout\ = (\onda_ctrl~combout\(0) & (((!\onda_ctrl~combout\(1) & \u4|altsyncram_component|auto_generated|q_a\(0))))) # (!\onda_ctrl~combout\(0) & (\u5|altsyncram_component|auto_generated|q_a\(0) & (\onda_ctrl~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(0),
	datab => \u5|altsyncram_component|auto_generated|q_a\(0),
	datac => \onda_ctrl~combout\(1),
	datad => \u4|altsyncram_component|auto_generated|q_a\(0),
	combout => \u6|Mux10~0_combout\);

-- Location: LCCOMB_X21_Y6_N4
\u6|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux10~1_combout\ = (\u6|Mux10~0_combout\) # ((\u3|altsyncram_component|auto_generated|q_a\(0) & (\onda_ctrl~combout\(0) $ (!\onda_ctrl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(0),
	datab => \onda_ctrl~combout\(1),
	datac => \u3|altsyncram_component|auto_generated|q_a\(0),
	datad => \u6|Mux10~0_combout\,
	combout => \u6|Mux10~1_combout\);

-- Location: M4K_X23_Y4
\u4|altsyncram_component|auto_generated|ram_block1a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"12D2F0F0787A5A52D2D0F0F878785A5A5AD2D2D2D2F0F0F0F0F0F0F0D2D2D2D25A5A7878F0D2DA5878F2D25870D25870D278F258F258F258D278D87278D87272D8D8DA72727272727272727270D8D8D27258DA7258D278D278D258F2DA7870D2DA58787878F0F878787A5AD2F0785AD07A52F852FA507AF0507AFAF850505050505050505AFAF8505AFA507AD07AD07A52F07A52D0F0787A5A5A5A5A5A7878F0F2DA5870D278F2D872D87258D272D8DA7272D8D8D8D27272727272D8D8D8DA7272D8D87278DA7258F278D278D258F2D870D25870D25878F2D25A7870F0D2D2DA5A5A78787878787878787878787A5A5A5AD2D2D0F0F0787A5A5AD2D0F0F8785A",
	mem_init0 => X"5AD2D0F0F8785A5A52D2F0F0F878785A5A5A52D2D2D2D2D2D2D2D2D2D2D25A5A587878F0F2D25A7870D2DA78F2DA78F2D870DA78D278D270DA7258D272D8D8727258D8D8D8727272727278D8D8D8727258D87278DA72D872D870D278F2DA5870F0D2D25A5A5A5A5A52D2F0F87A52F07A52F852F852FA505AFAD0505AFAFAFAFAFAFAFAFAD05052FAF052FA507AD07A52F85AD2F0785A52D2D2D0F0D2D2D2DA5878F2D25870DA78D278D278DA7258DA7278D8D8F272727272727272727258D8D87272D8D272D8D278DA70DA70DA70D278F2DA78F2DA7870D2DA5878F0D2D25A5A78787878F0F0F0F0F0F0F0787878785A5A5AD2D2D0F0F8787A5A52D2F0F07878",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sierra_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sierra_wave:u4|altsyncram:altsyncram_component|altsyncram_k981:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u4|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u4|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y6_N0
\u6|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux9~0_combout\ = (\onda_ctrl~combout\(1) & (!\onda_ctrl~combout\(0) & (\u5|altsyncram_component|auto_generated|q_a\(1)))) # (!\onda_ctrl~combout\(1) & (\onda_ctrl~combout\(0) & ((\u4|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u5|altsyncram_component|auto_generated|q_a\(1),
	datad => \u4|altsyncram_component|auto_generated|q_a\(1),
	combout => \u6|Mux9~0_combout\);

-- Location: LCCOMB_X22_Y6_N10
\u6|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux9~1_combout\ = (\u6|Mux9~0_combout\) # ((\u3|altsyncram_component|auto_generated|q_a\(1) & (\onda_ctrl~combout\(1) $ (!\onda_ctrl~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u3|altsyncram_component|auto_generated|q_a\(1),
	datad => \u6|Mux9~0_combout\,
	combout => \u6|Mux9~1_combout\);

-- Location: M4K_X23_Y6
\u4|altsyncram_component|auto_generated|ram_block1a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"1782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782D782",
	mem_init0 => X"F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0F5A0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sierra_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sierra_wave:u4|altsyncram:altsyncram_component|altsyncram_k981:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u4|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u4|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y6_N28
\u6|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux8~0_combout\ = (\onda_ctrl~combout\(1) & (!\onda_ctrl~combout\(0) & ((\u5|altsyncram_component|auto_generated|q_a\(2))))) # (!\onda_ctrl~combout\(1) & (\onda_ctrl~combout\(0) & (\u4|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u4|altsyncram_component|auto_generated|q_a\(2),
	datad => \u5|altsyncram_component|auto_generated|q_a\(2),
	combout => \u6|Mux8~0_combout\);

-- Location: M4K_X23_Y3
\u3|altsyncram_component|auto_generated|ram_block1a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"112EC13EC53BC43B847B946F906F916E912ED12ED13EC13EC13EC13ED12ED12E916E906F947B843AC53ED16F947BC53ED16F943AC16F943AD16F853E907AC16B852F843E943E943E943E943E952F852BC17AD03E852BC07E952BD07E856A952BD02FC03FC07F803FC03FD02BD56A857FC02BD57E802A957FD56A802A802A802A802A802A802A817FD57F802A957FC02AD57A807FC02FD42AD52AD52AD52BD42FD03F817A952BD03E856BD07E952FC16AD07A943E943F852F852F853E943E947AD06BC12F843ED06BC52E907BC53E906B843AC12E906B843AC53ED12E916F906B946B847B847B847B847B847B847B946B946F906E916ED12EC13EC53BC43B846B",
	mem_init0 => X"BE45BB44BB04EB14EF10EE11EE51AE41BE41BA45BA45BA45BA45BA45BA45BE41BE51AE11EF10EB04FB45BE51EF14FB45BE51EB04BA51EF04BE50EB45AF14BE50FA41EB41EB05AF05AF05AB41EB41FA50FE14AF01EA50BE05EB50BF01FA15AB50AF40BF00FF00FF00FF40AF54AA55FA00FF54AA01FF55AA00AA15FF55FF55FF55FF55FF55FF55FE00AA01FF55EA00BF54AA05FE00BF50AB54AB55AA54AB54AF50BF01FE05EA50BF01EA54BF05EB50FA14BF05AF01EB41EB41EB41EB41EB45AF05BE14FA51EB05AE10FB41AE14FB41AE10EB04BA41AE10EB04FB45BA41AE51EE11EF10EF10EB14EB14EB14EB10EF10EF11EE11AE51AE41BA45BB44BB04EB14EF10",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sine_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sine_wave:u3|altsyncram:altsyncram_component|altsyncram_t281:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y6_N14
\u6|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux8~1_combout\ = (\u6|Mux8~0_combout\) # ((\u3|altsyncram_component|auto_generated|q_a\(2) & (\onda_ctrl~combout\(1) $ (!\onda_ctrl~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \u6|Mux8~0_combout\,
	datac => \onda_ctrl~combout\(0),
	datad => \u3|altsyncram_component|auto_generated|q_a\(2),
	combout => \u6|Mux8~1_combout\);

-- Location: M4K_X23_Y9
\u4|altsyncram_component|auto_generated|ram_block1a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"3D5F0280F57D0A82F5FD2A0AD5F5280AD7F5A80A57D5A82A57D5A82A57F5A80AD7F52A0AD5FD0A80F57F02A07F57A02A57F52A80FD5F802A57F50A807F55A802F55FA02AD57F802AD57F802AD55FA002FD55AA805FFD00AAD557AA005FFF8002FFF5002AFF55002AFFD50002FFFFA0005557AAAAFFFF8000555500005555000055550000555500005555AAAAFFFF8000555FAAAAD55502AAFF5500AAFF5502AAF555AAA055FFA002FFD50AA855FF802AF55FA802FD55AA00FF55AA02FD57A80AF57F80AA57FD0A807F57A00AD5FD0A80FD5F80A85FD5A80AD5FD0A02F57F0A80FD7F02A0FD5F02A0FD5F02A0FD5F0280FD7F0A82F57D0A02D5FD2A0AD7F5A82A",
	mem_init0 => X"57D5A0285F5780A87F5F82A07D5F0280FD7F0A80F57F0A80F57F0A80F57F0280FD5F02A07F5F80A85FD5A80AD5FD0A80FD5F80A85FF52A02FD5F802A55FD02A05FD52A807F55AA00FF55AA807FD50AA057FD00AAD55FA8007FF500AAF555AAA0557FAA0055FFAA00557FAAA855550AAAFFFD00005555AAAAFFFFAAAAFFFFAAAAFFFFAAAAFFFFAAAAFFFD000055552AAAFFF500007FFFA80057FFAA0057FFA0007FFD000AFF552AA855FF800AFD55AA807FF50AA857FD02A857FD02A857F50AA07FD5AA02FD5FA02A57FD0A80FD57A02A57F52A02F57F02A0FD5F80A85F57A0285FD5A02A57D5A82A57D5A82A5FD5A0285FD7A0A85F5780A07D5F82A0FD7F0A80",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sierra_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sierra_wave:u4|altsyncram:altsyncram_component|altsyncram_k981:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u4|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u4|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y6_N20
\u6|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux7~0_combout\ = (\onda_ctrl~combout\(1) & (\u5|altsyncram_component|auto_generated|q_a\(3) & (!\onda_ctrl~combout\(0)))) # (!\onda_ctrl~combout\(1) & (((\onda_ctrl~combout\(0) & \u4|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \u5|altsyncram_component|auto_generated|q_a\(3),
	datac => \onda_ctrl~combout\(0),
	datad => \u4|altsyncram_component|auto_generated|q_a\(3),
	combout => \u6|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y6_N26
\u6|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux7~1_combout\ = (\u6|Mux7~0_combout\) # ((\u3|altsyncram_component|auto_generated|q_a\(3) & (\onda_ctrl~combout\(1) $ (!\onda_ctrl~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u6|Mux7~0_combout\,
	datad => \u3|altsyncram_component|auto_generated|q_a\(3),
	combout => \u6|Mux7~1_combout\);

-- Location: M4K_X23_Y10
\u3|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"155001552ABFFAABD50015502AFFEAAFD40055502BFFAABFD40055402BFFAAAFD40015502AFFFAAAD54001556AABFFEA815540007FFAAABFD40005556AAAFFFE800555402ABFFFEA801555402AAFFFFE800055557AAAAAFFD55400002FFFFFFE800000157FFFFFEA800000017FFFFFFFD55400002AAAAAAA800000002AAAAAAA800000002AAAAAAA800000002AAABFFFD55555556AAAAAAA805555557FAAAAAA855555502AAAAFFFD54000017FFFEAAA855554002BFFFFAA805555002BFFFEAA855540007FFEAABFD50005556AABFFEA815540017FEAABFFC00155002FFFAABFD40055502BFFAAAFD40055502BFFAABFD40055402FFEAAFFC00155003FFAABFF",
	mem_init0 => X"AABFFAAB55001554AAFFEAAF54005540ABFFAABF50005540AFFFAABF50005540ABFFAAAF55001554AABFFEAA15540015FEAABFFE00055500ABFFEAAA55540005FFEAAABF55000055FFAAAABF55400005FFFEAAAA15555400AAAFFFFF50000005FFFFFFAA00000055FFFFFFFE00000000AAABFFFF55555555FFFFFFFF55555555FFFFFFFF55555555FFFFFFFF55554000AAAAAAAA15555555FEAAAAAA01555555EAAAAAAF55554000AAFFFFFA00005555EAAAAFFF54000155FEAAABFF54000555EAAAFFFE00055540ABFFFAAA55540015FEAABFFE00155400FFFAAAFF50015540AFFFAABF54005540ABFFAABF50005540AFFEAAFF50015500BFFAABFF00155000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sine_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sine_wave:u3|altsyncram:altsyncram_component|altsyncram_t281:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y5_N0
\u6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux6~0_combout\ = (\onda_ctrl~combout\(0) & (\u4|altsyncram_component|auto_generated|q_a\(4) & (!\onda_ctrl~combout\(1)))) # (!\onda_ctrl~combout\(0) & (((\onda_ctrl~combout\(1) & \u5|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|altsyncram_component|auto_generated|q_a\(4),
	datab => \onda_ctrl~combout\(0),
	datac => \onda_ctrl~combout\(1),
	datad => \u5|altsyncram_component|auto_generated|q_a\(4),
	combout => \u6|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y6_N6
\u6|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux6~1_combout\ = (\u6|Mux6~0_combout\) # ((\u3|altsyncram_component|auto_generated|q_a\(4) & (\onda_ctrl~combout\(0) $ (!\onda_ctrl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(0),
	datab => \onda_ctrl~combout\(1),
	datac => \u3|altsyncram_component|auto_generated|q_a\(4),
	datad => \u6|Mux6~0_combout\,
	combout => \u6|Mux6~1_combout\);

-- Location: M4K_X23_Y2
\u4|altsyncram_component|auto_generated|ram_block1a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"3FFFFD55557FFFFD00002AAAAA00000AFFFF555557FFFFD50000AAAAA800000AFFFFD55555FFFFFF000002AAAAA8000057FFFFFF5555557FAAAAA0000000AAAAFFF55555557FFFFFAA800000000AAAAAFFFF5555555555FFAAAAAAAAA00000005555557FFFFFFFFFAAAAAAA8000000005555555555555555000000000000000055555555555555550000000000000000555555557FFFFFFFAAAAAAAAAA0000005555555FFFFFFFFFAA80000000002AAAFFFFFD55555555FFAAAAAA00000002AAFFFFD5555557FFFFAA0000002AAAAA8055557FFFFFD555552AAAAA000000AAAAFD55555FFFFF555502AAAAA00000AAAAFD55557FFFFD55552AAAAA00000AAAAA",
	mem_init0 => X"55555FFFFF555557AAAA800002AAAA805555FFFFF555557FAAAA00000AAAAA805555FFFFFF555557AAAAA8000002AAAAFD555557FFFFFF5500002AAAAAA80000557FFFFFFF55555500AAAAAAAA8000005557FFFFFFFFFD55000000000AAAAAAAFFFFFF555555555500000002AAAAAAAAFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAFFFFFFFFD55555550000000002AAAAAAFFFFFFF55555555500AAAAAAAAAA000055555FFFFFFFFD55000002AAAAAAA0005555FFFFFFF5555502AAAAAA0000002AFFFFD555557FFFFF000000AAAAA800005FFFFFD55555FFFFA800002AAAAA00005FFFFF555557FFFF800002AAAA800000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sierra_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sierra_wave:u4|altsyncram:altsyncram_component|altsyncram_k981:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u4|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u4|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y6_N4
\u6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux5~0_combout\ = (\onda_ctrl~combout\(1) & (!\onda_ctrl~combout\(0) & (\u5|altsyncram_component|auto_generated|q_a\(5)))) # (!\onda_ctrl~combout\(1) & (\onda_ctrl~combout\(0) & ((\u4|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u5|altsyncram_component|auto_generated|q_a\(5),
	datad => \u4|altsyncram_component|auto_generated|q_a\(5),
	combout => \u6|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y6_N30
\u6|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux5~1_combout\ = (\u6|Mux5~0_combout\) # ((\u3|altsyncram_component|auto_generated|q_a\(5) & (\onda_ctrl~combout\(1) $ (!\onda_ctrl~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u6|Mux5~0_combout\,
	datad => \u3|altsyncram_component|auto_generated|q_a\(5),
	combout => \u6|Mux5~1_combout\);

-- Location: M4K_X11_Y6
\u4|altsyncram_component|auto_generated|ram_block1a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"15555555555555557FFFFFFFFFFFFFFF80000000000000002AAAAAAAAAAAAAAAD5555555555555557FFFFFFFFFFFFFFF80000000000000002AAAAAAAAAAAAAAAD5555555555555557FFFFFFFFFFFFFFF80000000000000002AAAAAAAAAAAAAAAD5555555555555557FFFFFFFFFFFFFFF80000000000000002AAAAAAAAAAAAAAAD5555555555555557FFFFFFFFFFFFFFF80000000000000002AAAAAAAAAAAAAAAD5555555555555557FFFFFFFFFFFFFFF80000000000000002AAAAAAAAAAAAAAAD5555555555555557FFFFFFFFFFFFFFF80000000000000002AAAAAAAAAAAAAAAD5555555555555557FFFFFFFFFFFFFFF80000000000000002AAAAAAAAAAAAAAA",
	mem_init0 => X"FFFFFFFFFFFFFFFF5555555555555555AAAAAAAAAAAAAAAA0000000000000000FFFFFFFFFFFFFFFF5555555555555555AAAAAAAAAAAAAAAA0000000000000000FFFFFFFFFFFFFFFF5555555555555555AAAAAAAAAAAAAAAA0000000000000000FFFFFFFFFFFFFFFF5555555555555555AAAAAAAAAAAAAAAA0000000000000000FFFFFFFFFFFFFFFF5555555555555555AAAAAAAAAAAAAAAA0000000000000000FFFFFFFFFFFFFFFF5555555555555555AAAAAAAAAAAAAAAA0000000000000000FFFFFFFFFFFFFFFF5555555555555555AAAAAAAAAAAAAAAA0000000000000000FFFFFFFFFFFFFFFF5555555555555555AAAAAAAAAAAAAAAA0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sierra_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sierra_wave:u4|altsyncram:altsyncram_component|altsyncram_k981:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u4|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u4|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X12_Y6_N4
\u6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux4~0_combout\ = (\onda_ctrl~combout\(1) & (!\onda_ctrl~combout\(0) & (\u5|altsyncram_component|auto_generated|q_a\(6)))) # (!\onda_ctrl~combout\(1) & (\onda_ctrl~combout\(0) & ((\u4|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u5|altsyncram_component|auto_generated|q_a\(6),
	datad => \u4|altsyncram_component|auto_generated|q_a\(6),
	combout => \u6|Mux4~0_combout\);

-- Location: M4K_X11_Y5
\u3|altsyncram_component|auto_generated|ram_block1a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"155555555540000000001555555555502AAAAAAAABFFFFFFFFFFAAAAAAAAAAAFD55555555500000000000155555555557EAAAAAAAAAAAABFFFFFFFFFFFFFAAAA800000000015555555555555555000002AAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFD55555400000000000000000000000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA800000000000000000000000000000002AAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFD55555555555555555400000000000002AAAABFFFFFFFFFFFFFFFFAAAAAAAAAA800015555555555555000000000000157FFFFFFFFFEAAAAAAAAAAAFFFFFFFFFFD40000000000555555555550000000002BFFFFFFFFFEAAAAAAAAAAFFFFFFFFFF",
	mem_init0 => X"AAAAAAAAAAFFFFFFFFFFEAAAAAAAAABF55555555500000000000555555555540AAAAAAAAAAFFFFFFFFFFFEAAAAAAAAAA01555555555555000000000000015555FFFFFFFFFFAAAAAAAAAAAAAAAABFFFFF55555555555554000000000000000000AAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFF55555555555555555555555555555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF55555555555555555555555554000000AAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFF55555000000000000000015555555555FFFFAAAAAAAAAAAAABFFFFFFFFFFFFEA00000000001555555555550000000000AFFFFFFFFFFFAAAAAAAAAABFFFFFFFFF50000000000155555555540000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sine_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sine_wave:u3|altsyncram:altsyncram_component|altsyncram_t281:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X12_Y6_N18
\u6|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux4~1_combout\ = (\u6|Mux4~0_combout\) # ((\u3|altsyncram_component|auto_generated|q_a\(6) & (\onda_ctrl~combout\(1) $ (!\onda_ctrl~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u6|Mux4~0_combout\,
	datad => \u3|altsyncram_component|auto_generated|q_a\(6),
	combout => \u6|Mux4~1_combout\);

-- Location: M4K_X11_Y8
\u4|altsyncram_component|auto_generated|ram_block1a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"3FFFFFFFFFFFFFFFFFFFD555555555555555555557FFFFFFFFFFFFFFFFFFFFF50000000000000000000002AAAAAAAAAAAAAAAAAAAAAAAA80000000000000000055555555557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF555555555555555555000000000000000000000000000000000000000000000000000000000000000055555555555555555555555555555555555555555555555555555555555555550000000000000000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0000000000555555555555555555FFFFFFFFFFFFFFFFFFFFFFFFD55555555555555555555502AAAAAAAAAAAAAAAAAAAAA000000000000000000002AAAAAAAAAAAAAAAAAAAA",
	mem_init0 => X"555555555555555555557FFFFFFFFFFFFFFFFFFFF5555555555555555555557FAAAAAAAAAAAAAAAAAAAAA8000000000000000000000000AAAAAAAAAAAAAAAAAAFFFFFFFFFF555555555555555555555555555555555557FFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAA000000000000000000000000000000000002AAAAAAAAAAFFFFFFFFFFFFFFFFFD5555555555555555555555557FFFFFFFFFFFFFFFFFFFFFA0000000000000000000002AAAAAAAAAAAAAAAAAAAA800000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sierra_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sierra_wave:u4|altsyncram:altsyncram_component|altsyncram_k981:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u4|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u4|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X12_Y6_N12
\u6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux3~0_combout\ = (\onda_ctrl~combout\(1) & (!\onda_ctrl~combout\(0) & ((\u5|altsyncram_component|auto_generated|q_a\(7))))) # (!\onda_ctrl~combout\(1) & (\onda_ctrl~combout\(0) & (\u4|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u4|altsyncram_component|auto_generated|q_a\(7),
	datad => \u5|altsyncram_component|auto_generated|q_a\(7),
	combout => \u6|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y6_N10
\u6|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux3~1_combout\ = (\u6|Mux3~0_combout\) # ((\u3|altsyncram_component|auto_generated|q_a\(7) & (\onda_ctrl~combout\(1) $ (!\onda_ctrl~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u3|altsyncram_component|auto_generated|q_a\(7),
	datad => \u6|Mux3~0_combout\,
	combout => \u6|Mux3~1_combout\);

-- Location: M4K_X11_Y4
\u3|altsyncram_component|auto_generated|ram_block1a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"155555555555555555555555555555555555555554000000000000000000000000000000000000000000015555555555555555555555555555555555555555557FFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA00000000005555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAA00000000000000000000000000000000000000000015555555555555555555555555555555555555555555400000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sine_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sine_wave:u3|altsyncram:altsyncram_component|altsyncram_t281:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M4K_X11_Y7
\u4|altsyncram_component|auto_generated|ram_block1a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"15555555555555555555555555555555555555555555555555555555555555557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD5555555555555555555555555555555555555555555555555555555555555557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5555555555555555555555555555555555555555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5555555555555555555555555555555555555555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sierra_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sierra_wave:u4|altsyncram:altsyncram_component|altsyncram_k981:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u4|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u4|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X12_Y6_N28
\u6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux2~0_combout\ = (\onda_ctrl~combout\(1) & (!\onda_ctrl~combout\(0) & ((\u5|altsyncram_component|auto_generated|q_a\(8))))) # (!\onda_ctrl~combout\(1) & (\onda_ctrl~combout\(0) & (\u4|altsyncram_component|auto_generated|q_a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u4|altsyncram_component|auto_generated|q_a\(8),
	datad => \u5|altsyncram_component|auto_generated|q_a\(8),
	combout => \u6|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y6_N22
\u6|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux2~1_combout\ = (\u6|Mux2~0_combout\) # ((\u3|altsyncram_component|auto_generated|q_a\(8) & (\onda_ctrl~combout\(1) $ (!\onda_ctrl~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u3|altsyncram_component|auto_generated|q_a\(8),
	datad => \u6|Mux2~0_combout\,
	combout => \u6|Mux2~1_combout\);

-- Location: M4K_X11_Y3
\u4|altsyncram_component|auto_generated|ram_block1a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init0 => X"55555555555555555555555555555555555555555555555555555555555555555555555555555555555557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA80000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sierra_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sierra_wave:u4|altsyncram:altsyncram_component|altsyncram_k981:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u4|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u4|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X12_Y6_N0
\u6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux1~0_combout\ = (\onda_ctrl~combout\(1) & (!\onda_ctrl~combout\(0) & ((\u5|altsyncram_component|auto_generated|q_a\(9))))) # (!\onda_ctrl~combout\(1) & (\onda_ctrl~combout\(0) & (\u4|altsyncram_component|auto_generated|q_a\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u4|altsyncram_component|auto_generated|q_a\(9),
	datad => \u5|altsyncram_component|auto_generated|q_a\(9),
	combout => \u6|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y6_N2
\u6|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux1~1_combout\ = (\u6|Mux1~0_combout\) # ((\u3|altsyncram_component|auto_generated|q_a\(9) & (\onda_ctrl~combout\(1) $ (!\onda_ctrl~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u3|altsyncram_component|auto_generated|q_a\(9),
	datad => \u6|Mux1~0_combout\,
	combout => \u6|Mux1~1_combout\);

-- Location: M4K_X11_Y9
\u4|altsyncram_component|auto_generated|ram_block1a10\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"15555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555557FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sierra_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sierra_wave:u4|altsyncram:altsyncram_component|altsyncram_k981:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 2,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u4|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u4|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X12_Y6_N24
\u6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux0~0_combout\ = (\onda_ctrl~combout\(1) & (!\onda_ctrl~combout\(0) & ((\u5|altsyncram_component|auto_generated|q_a\(10))))) # (!\onda_ctrl~combout\(1) & (\onda_ctrl~combout\(0) & (\u4|altsyncram_component|auto_generated|q_a\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(1),
	datab => \onda_ctrl~combout\(0),
	datac => \u4|altsyncram_component|auto_generated|q_a\(10),
	datad => \u5|altsyncram_component|auto_generated|q_a\(10),
	combout => \u6|Mux0~0_combout\);

-- Location: M4K_X11_Y10
\u3|altsyncram_component|auto_generated|ram_block1a10\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../gen/sine_lut.mif",
	init_file_layout => "port_a",
	logical_ram_name => "sine_wave:u3|altsyncram:altsyncram_component|altsyncram_t281:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 11,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \u3|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y6_N0
\u6|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|Mux0~1_combout\ = (\u6|Mux0~0_combout\) # ((\u3|altsyncram_component|auto_generated|q_a\(10) & (\onda_ctrl~combout\(0) $ (!\onda_ctrl~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \onda_ctrl~combout\(0),
	datab => \onda_ctrl~combout\(1),
	datac => \u6|Mux0~0_combout\,
	datad => \u3|altsyncram_component|auto_generated|q_a\(10),
	combout => \u6|Mux0~1_combout\);

-- Location: LCCOMB_X21_Y6_N10
\u7|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~1_cout\ = CARRY((!\u7|r_reg\(0) & \u6|Mux10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|r_reg\(0),
	datab => \u6|Mux10~1_combout\,
	datad => VCC,
	cout => \u7|LessThan0~1_cout\);

-- Location: LCCOMB_X21_Y6_N12
\u7|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~3_cout\ = CARRY((\u7|r_reg\(1) & ((!\u7|LessThan0~1_cout\) # (!\u6|Mux9~1_combout\))) # (!\u7|r_reg\(1) & (!\u6|Mux9~1_combout\ & !\u7|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|r_reg\(1),
	datab => \u6|Mux9~1_combout\,
	datad => VCC,
	cin => \u7|LessThan0~1_cout\,
	cout => \u7|LessThan0~3_cout\);

-- Location: LCCOMB_X21_Y6_N14
\u7|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~5_cout\ = CARRY((\u7|r_reg\(2) & (\u6|Mux8~1_combout\ & !\u7|LessThan0~3_cout\)) # (!\u7|r_reg\(2) & ((\u6|Mux8~1_combout\) # (!\u7|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|r_reg\(2),
	datab => \u6|Mux8~1_combout\,
	datad => VCC,
	cin => \u7|LessThan0~3_cout\,
	cout => \u7|LessThan0~5_cout\);

-- Location: LCCOMB_X21_Y6_N16
\u7|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~7_cout\ = CARRY((\u6|Mux7~1_combout\ & (\u7|r_reg\(3) & !\u7|LessThan0~5_cout\)) # (!\u6|Mux7~1_combout\ & ((\u7|r_reg\(3)) # (!\u7|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Mux7~1_combout\,
	datab => \u7|r_reg\(3),
	datad => VCC,
	cin => \u7|LessThan0~5_cout\,
	cout => \u7|LessThan0~7_cout\);

-- Location: LCCOMB_X21_Y6_N18
\u7|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~9_cout\ = CARRY((\u6|Mux6~1_combout\ & ((!\u7|LessThan0~7_cout\) # (!\u7|r_reg\(4)))) # (!\u6|Mux6~1_combout\ & (!\u7|r_reg\(4) & !\u7|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Mux6~1_combout\,
	datab => \u7|r_reg\(4),
	datad => VCC,
	cin => \u7|LessThan0~7_cout\,
	cout => \u7|LessThan0~9_cout\);

-- Location: LCCOMB_X21_Y6_N20
\u7|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~11_cout\ = CARRY((\u7|r_reg\(5) & ((!\u7|LessThan0~9_cout\) # (!\u6|Mux5~1_combout\))) # (!\u7|r_reg\(5) & (!\u6|Mux5~1_combout\ & !\u7|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|r_reg\(5),
	datab => \u6|Mux5~1_combout\,
	datad => VCC,
	cin => \u7|LessThan0~9_cout\,
	cout => \u7|LessThan0~11_cout\);

-- Location: LCCOMB_X21_Y6_N22
\u7|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~13_cout\ = CARRY((\u7|r_reg\(6) & (\u6|Mux4~1_combout\ & !\u7|LessThan0~11_cout\)) # (!\u7|r_reg\(6) & ((\u6|Mux4~1_combout\) # (!\u7|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|r_reg\(6),
	datab => \u6|Mux4~1_combout\,
	datad => VCC,
	cin => \u7|LessThan0~11_cout\,
	cout => \u7|LessThan0~13_cout\);

-- Location: LCCOMB_X21_Y6_N24
\u7|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~15_cout\ = CARRY((\u7|r_reg\(7) & ((!\u7|LessThan0~13_cout\) # (!\u6|Mux3~1_combout\))) # (!\u7|r_reg\(7) & (!\u6|Mux3~1_combout\ & !\u7|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|r_reg\(7),
	datab => \u6|Mux3~1_combout\,
	datad => VCC,
	cin => \u7|LessThan0~13_cout\,
	cout => \u7|LessThan0~15_cout\);

-- Location: LCCOMB_X21_Y6_N26
\u7|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~17_cout\ = CARRY((\u7|r_reg\(8) & (\u6|Mux2~1_combout\ & !\u7|LessThan0~15_cout\)) # (!\u7|r_reg\(8) & ((\u6|Mux2~1_combout\) # (!\u7|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|r_reg\(8),
	datab => \u6|Mux2~1_combout\,
	datad => VCC,
	cin => \u7|LessThan0~15_cout\,
	cout => \u7|LessThan0~17_cout\);

-- Location: LCCOMB_X21_Y6_N28
\u7|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~19_cout\ = CARRY((\u6|Mux1~1_combout\ & (\u7|r_reg\(9) & !\u7|LessThan0~17_cout\)) # (!\u6|Mux1~1_combout\ & ((\u7|r_reg\(9)) # (!\u7|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|Mux1~1_combout\,
	datab => \u7|r_reg\(9),
	datad => VCC,
	cin => \u7|LessThan0~17_cout\,
	cout => \u7|LessThan0~19_cout\);

-- Location: LCCOMB_X21_Y6_N30
\u7|LessThan0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~20_combout\ = (\u7|r_reg\(10) & (!\u7|LessThan0~19_cout\ & \u6|Mux0~1_combout\)) # (!\u7|r_reg\(10) & ((\u6|Mux0~1_combout\) # (!\u7|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|r_reg\(10),
	datad => \u6|Mux0~1_combout\,
	cin => \u7|LessThan0~19_cout\,
	combout => \u7|LessThan0~20_combout\);

-- Location: LCFF_X21_Y6_N31
\u7|buf_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u7|LessThan0~20_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|buf_reg~regout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tuning[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_tuning(0));

-- Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tuning[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_tuning(1));

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tuning[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_tuning(2));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tuning[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_tuning(3));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tuning[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_tuning(4));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tuning[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_tuning(5));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tuning[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_tuning(6));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tuning[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_tuning(7));

-- Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tuning[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_tuning(8));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tuning[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_tuning(9));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tuning[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_tuning(10));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prueba_salida[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u6|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prueba_salida(0));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prueba_salida[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u6|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prueba_salida(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prueba_salida[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u6|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prueba_salida(2));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prueba_salida[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u6|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prueba_salida(3));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prueba_salida[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u6|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prueba_salida(4));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prueba_salida[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u6|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prueba_salida(5));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prueba_salida[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u6|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prueba_salida(6));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prueba_salida[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u6|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prueba_salida(7));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prueba_salida[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u6|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prueba_salida(8));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prueba_salida[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u6|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prueba_salida(9));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\prueba_salida[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u6|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_prueba_salida(10));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u7|buf_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida);
END structure;


