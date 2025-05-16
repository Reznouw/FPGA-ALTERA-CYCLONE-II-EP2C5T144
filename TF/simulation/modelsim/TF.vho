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

-- DATE "11/18/2024 04:39:29"

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

ENTITY 	TF IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	ctrl : IN std_logic_vector(2 DOWNTO 0);
	led_out : OUT std_logic_vector(2 DOWNTO 0)
	);
END TF;

-- Design Ports Information
-- led_out[0]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[1]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[2]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[0]	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[1]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ctrl[2]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TF IS
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
SIGNAL ww_ctrl : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_led_out : std_logic_vector(2 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u6|r_reg[3]~13_combout\ : std_logic;
SIGNAL \u3|r_reg[6]~19_combout\ : std_logic;
SIGNAL \u3|r_reg[7]~21_combout\ : std_logic;
SIGNAL \u4|r_reg[1]~9_combout\ : std_logic;
SIGNAL \u4|r_reg[7]~21_combout\ : std_logic;
SIGNAL \u5|r_reg[5]~17_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \u3|r_reg[1]~9_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \u0|pulso_r_reg[0]~feeder_combout\ : std_logic;
SIGNAL \u0|pulso_r_reg[1]~feeder_combout\ : std_logic;
SIGNAL \u0|pulso~combout\ : std_logic;
SIGNAL \u3|r_reg[1]~10\ : std_logic;
SIGNAL \u3|r_reg[2]~11_combout\ : std_logic;
SIGNAL \u3|r_reg[2]~12\ : std_logic;
SIGNAL \u3|r_reg[3]~13_combout\ : std_logic;
SIGNAL \u3|r_reg[3]~14\ : std_logic;
SIGNAL \u3|r_reg[4]~16\ : std_logic;
SIGNAL \u3|r_reg[5]~17_combout\ : std_logic;
SIGNAL \u3|r_reg[5]~18\ : std_logic;
SIGNAL \u3|r_reg[6]~20\ : std_logic;
SIGNAL \u3|r_reg[7]~22\ : std_logic;
SIGNAL \u3|r_reg[8]~23_combout\ : std_logic;
SIGNAL \u3|r_reg[8]~24\ : std_logic;
SIGNAL \u3|r_reg[9]~25_combout\ : std_logic;
SIGNAL \u6|r_reg[0]~27_combout\ : std_logic;
SIGNAL \u6|r_reg[1]~10\ : std_logic;
SIGNAL \u6|r_reg[2]~12\ : std_logic;
SIGNAL \u6|r_reg[3]~14\ : std_logic;
SIGNAL \u6|r_reg[4]~15_combout\ : std_logic;
SIGNAL \u6|r_reg[4]~16\ : std_logic;
SIGNAL \u6|r_reg[5]~18\ : std_logic;
SIGNAL \u6|r_reg[6]~19_combout\ : std_logic;
SIGNAL \u6|r_reg[6]~20\ : std_logic;
SIGNAL \u6|r_reg[7]~22\ : std_logic;
SIGNAL \u6|r_reg[8]~23_combout\ : std_logic;
SIGNAL \u6|r_reg[8]~24\ : std_logic;
SIGNAL \u6|r_reg[9]~25_combout\ : std_logic;
SIGNAL \u6|r_reg[7]~21_combout\ : std_logic;
SIGNAL \u3|r_reg[4]~15_combout\ : std_logic;
SIGNAL \u6|r_reg[2]~11_combout\ : std_logic;
SIGNAL \u6|r_reg[1]~9_combout\ : std_logic;
SIGNAL \u3|r_reg[0]~27_combout\ : std_logic;
SIGNAL \u6|LessThan0~1_cout\ : std_logic;
SIGNAL \u6|LessThan0~3_cout\ : std_logic;
SIGNAL \u6|LessThan0~5_cout\ : std_logic;
SIGNAL \u6|LessThan0~7_cout\ : std_logic;
SIGNAL \u6|LessThan0~9_cout\ : std_logic;
SIGNAL \u6|LessThan0~11_cout\ : std_logic;
SIGNAL \u6|LessThan0~13_cout\ : std_logic;
SIGNAL \u6|LessThan0~15_cout\ : std_logic;
SIGNAL \u6|LessThan0~17_cout\ : std_logic;
SIGNAL \u6|LessThan0~18_combout\ : std_logic;
SIGNAL \u6|buf_reg~regout\ : std_logic;
SIGNAL \u1|pulso_r_reg[0]~feeder_combout\ : std_logic;
SIGNAL \u1|pulso_r_reg[1]~feeder_combout\ : std_logic;
SIGNAL \u4|r_reg[0]~27_combout\ : std_logic;
SIGNAL \u4|r_reg[0]~feeder_combout\ : std_logic;
SIGNAL \u4|r_reg[1]~10\ : std_logic;
SIGNAL \u4|r_reg[2]~12\ : std_logic;
SIGNAL \u4|r_reg[3]~13_combout\ : std_logic;
SIGNAL \u1|pulso~combout\ : std_logic;
SIGNAL \u4|r_reg[3]~14\ : std_logic;
SIGNAL \u4|r_reg[4]~16\ : std_logic;
SIGNAL \u4|r_reg[5]~18\ : std_logic;
SIGNAL \u4|r_reg[6]~19_combout\ : std_logic;
SIGNAL \u4|r_reg[6]~20\ : std_logic;
SIGNAL \u4|r_reg[7]~22\ : std_logic;
SIGNAL \u4|r_reg[8]~23_combout\ : std_logic;
SIGNAL \u4|r_reg[8]~24\ : std_logic;
SIGNAL \u4|r_reg[9]~25_combout\ : std_logic;
SIGNAL \u4|r_reg[5]~17_combout\ : std_logic;
SIGNAL \u4|r_reg[4]~15_combout\ : std_logic;
SIGNAL \u4|r_reg[2]~11_combout\ : std_logic;
SIGNAL \u7|LessThan0~1_cout\ : std_logic;
SIGNAL \u7|LessThan0~3_cout\ : std_logic;
SIGNAL \u7|LessThan0~5_cout\ : std_logic;
SIGNAL \u7|LessThan0~7_cout\ : std_logic;
SIGNAL \u7|LessThan0~9_cout\ : std_logic;
SIGNAL \u7|LessThan0~11_cout\ : std_logic;
SIGNAL \u7|LessThan0~13_cout\ : std_logic;
SIGNAL \u7|LessThan0~15_cout\ : std_logic;
SIGNAL \u7|LessThan0~17_cout\ : std_logic;
SIGNAL \u7|LessThan0~18_combout\ : std_logic;
SIGNAL \u7|buf_reg~regout\ : std_logic;
SIGNAL \u2|pulso_r_reg[0]~feeder_combout\ : std_logic;
SIGNAL \u2|pulso_r_reg[1]~feeder_combout\ : std_logic;
SIGNAL \u5|r_reg[0]~27_combout\ : std_logic;
SIGNAL \u5|r_reg[1]~10\ : std_logic;
SIGNAL \u5|r_reg[2]~11_combout\ : std_logic;
SIGNAL \u2|pulso~combout\ : std_logic;
SIGNAL \u5|r_reg[2]~12\ : std_logic;
SIGNAL \u5|r_reg[3]~14\ : std_logic;
SIGNAL \u5|r_reg[4]~15_combout\ : std_logic;
SIGNAL \u5|r_reg[4]~16\ : std_logic;
SIGNAL \u5|r_reg[5]~18\ : std_logic;
SIGNAL \u5|r_reg[6]~19_combout\ : std_logic;
SIGNAL \u5|r_reg[6]~20\ : std_logic;
SIGNAL \u5|r_reg[7]~22\ : std_logic;
SIGNAL \u5|r_reg[8]~23_combout\ : std_logic;
SIGNAL \u5|r_reg[8]~24\ : std_logic;
SIGNAL \u5|r_reg[9]~25_combout\ : std_logic;
SIGNAL \u5|r_reg[7]~21_combout\ : std_logic;
SIGNAL \u6|r_reg[5]~17_combout\ : std_logic;
SIGNAL \u5|r_reg[3]~13_combout\ : std_logic;
SIGNAL \u5|r_reg[1]~9_combout\ : std_logic;
SIGNAL \u8|LessThan0~1_cout\ : std_logic;
SIGNAL \u8|LessThan0~3_cout\ : std_logic;
SIGNAL \u8|LessThan0~5_cout\ : std_logic;
SIGNAL \u8|LessThan0~7_cout\ : std_logic;
SIGNAL \u8|LessThan0~9_cout\ : std_logic;
SIGNAL \u8|LessThan0~11_cout\ : std_logic;
SIGNAL \u8|LessThan0~13_cout\ : std_logic;
SIGNAL \u8|LessThan0~15_cout\ : std_logic;
SIGNAL \u8|LessThan0~17_cout\ : std_logic;
SIGNAL \u8|LessThan0~18_combout\ : std_logic;
SIGNAL \u8|buf_reg~regout\ : std_logic;
SIGNAL \u1|pulso_r_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u2|pulso_r_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u4|r_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u5|r_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u0|pulso_r_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u3|r_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u6|r_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ctrl~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_ctrl <= ctrl;
led_out <= ww_led_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_rst~clkctrl_outclk\ <= NOT \rst~clkctrl_outclk\;

-- Location: LCFF_X5_Y11_N13
\u3|r_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u3|r_reg[7]~21_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|r_reg\(7));

-- Location: LCFF_X5_Y11_N11
\u3|r_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u3|r_reg[6]~19_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|r_reg\(6));

-- Location: LCFF_X7_Y11_N13
\u6|r_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u6|r_reg[3]~13_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|r_reg\(3));

-- Location: LCFF_X9_Y11_N17
\u4|r_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u4|r_reg[7]~21_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u1|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|r_reg\(7));

-- Location: LCFF_X9_Y11_N5
\u4|r_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u4|r_reg[1]~9_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u1|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|r_reg\(1));

-- Location: LCFF_X7_Y10_N21
\u5|r_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u5|r_reg[5]~17_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u2|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|r_reg\(5));

-- Location: LCCOMB_X7_Y11_N12
\u6|r_reg[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|r_reg[3]~13_combout\ = (\u6|r_reg\(3) & (\u6|r_reg[2]~12\ $ (GND))) # (!\u6|r_reg\(3) & (!\u6|r_reg[2]~12\ & VCC))
-- \u6|r_reg[3]~14\ = CARRY((\u6|r_reg\(3) & !\u6|r_reg[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(3),
	datad => VCC,
	cin => \u6|r_reg[2]~12\,
	combout => \u6|r_reg[3]~13_combout\,
	cout => \u6|r_reg[3]~14\);

-- Location: LCCOMB_X5_Y11_N10
\u3|r_reg[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|r_reg[6]~19_combout\ = (\u3|r_reg\(6) & (!\u3|r_reg[5]~18\)) # (!\u3|r_reg\(6) & ((\u3|r_reg[5]~18\) # (GND)))
-- \u3|r_reg[6]~20\ = CARRY((!\u3|r_reg[5]~18\) # (!\u3|r_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|r_reg\(6),
	datad => VCC,
	cin => \u3|r_reg[5]~18\,
	combout => \u3|r_reg[6]~19_combout\,
	cout => \u3|r_reg[6]~20\);

-- Location: LCCOMB_X5_Y11_N12
\u3|r_reg[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|r_reg[7]~21_combout\ = (\u3|r_reg\(7) & (\u3|r_reg[6]~20\ $ (GND))) # (!\u3|r_reg\(7) & (!\u3|r_reg[6]~20\ & VCC))
-- \u3|r_reg[7]~22\ = CARRY((\u3|r_reg\(7) & !\u3|r_reg[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|r_reg\(7),
	datad => VCC,
	cin => \u3|r_reg[6]~20\,
	combout => \u3|r_reg[7]~21_combout\,
	cout => \u3|r_reg[7]~22\);

-- Location: LCCOMB_X9_Y11_N4
\u4|r_reg[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|r_reg[1]~9_combout\ = (\u4|r_reg\(1) & (\u4|r_reg\(0) $ (VCC))) # (!\u4|r_reg\(1) & (\u4|r_reg\(0) & VCC))
-- \u4|r_reg[1]~10\ = CARRY((\u4|r_reg\(1) & \u4|r_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|r_reg\(1),
	datab => \u4|r_reg\(0),
	datad => VCC,
	combout => \u4|r_reg[1]~9_combout\,
	cout => \u4|r_reg[1]~10\);

-- Location: LCCOMB_X9_Y11_N16
\u4|r_reg[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|r_reg[7]~21_combout\ = (\u4|r_reg\(7) & (\u4|r_reg[6]~20\ $ (GND))) # (!\u4|r_reg\(7) & (!\u4|r_reg[6]~20\ & VCC))
-- \u4|r_reg[7]~22\ = CARRY((\u4|r_reg\(7) & !\u4|r_reg[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|r_reg\(7),
	datad => VCC,
	cin => \u4|r_reg[6]~20\,
	combout => \u4|r_reg[7]~21_combout\,
	cout => \u4|r_reg[7]~22\);

-- Location: LCCOMB_X7_Y10_N20
\u5|r_reg[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|r_reg[5]~17_combout\ = (\u5|r_reg\(5) & (\u5|r_reg[4]~16\ $ (GND))) # (!\u5|r_reg\(5) & (!\u5|r_reg[4]~16\ & VCC))
-- \u5|r_reg[5]~18\ = CARRY((\u5|r_reg\(5) & !\u5|r_reg[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|r_reg\(5),
	datad => VCC,
	cin => \u5|r_reg[4]~16\,
	combout => \u5|r_reg[5]~17_combout\,
	cout => \u5|r_reg[5]~18\);

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

-- Location: LCCOMB_X5_Y11_N0
\u3|r_reg[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|r_reg[1]~9_combout\ = (\u3|r_reg\(0) & (\u3|r_reg\(1) $ (VCC))) # (!\u3|r_reg\(0) & (\u3|r_reg\(1) & VCC))
-- \u3|r_reg[1]~10\ = CARRY((\u3|r_reg\(0) & \u3|r_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|r_reg\(0),
	datab => \u3|r_reg\(1),
	datad => VCC,
	combout => \u3|r_reg[1]~9_combout\,
	cout => \u3|r_reg[1]~10\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl[0]~I\ : cycloneii_io
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
	padio => ww_ctrl(0),
	combout => \ctrl~combout\(0));

-- Location: LCCOMB_X5_Y11_N22
\u0|pulso_r_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|pulso_r_reg[0]~feeder_combout\ = \ctrl~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl~combout\(0),
	combout => \u0|pulso_r_reg[0]~feeder_combout\);

-- Location: LCFF_X5_Y11_N23
\u0|pulso_r_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u0|pulso_r_reg[0]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|pulso_r_reg\(0));

-- Location: LCCOMB_X5_Y11_N28
\u0|pulso_r_reg[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|pulso_r_reg[1]~feeder_combout\ = \u0|pulso_r_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|pulso_r_reg\(0),
	combout => \u0|pulso_r_reg[1]~feeder_combout\);

-- Location: LCFF_X5_Y11_N29
\u0|pulso_r_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u0|pulso_r_reg[1]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|pulso_r_reg\(1));

-- Location: LCCOMB_X5_Y11_N26
\u0|pulso\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|pulso~combout\ = (\u0|pulso_r_reg\(0) & !\u0|pulso_r_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|pulso_r_reg\(0),
	datad => \u0|pulso_r_reg\(1),
	combout => \u0|pulso~combout\);

-- Location: LCFF_X5_Y11_N1
\u3|r_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u3|r_reg[1]~9_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|r_reg\(1));

-- Location: LCCOMB_X5_Y11_N2
\u3|r_reg[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|r_reg[2]~11_combout\ = (\u3|r_reg\(2) & (!\u3|r_reg[1]~10\)) # (!\u3|r_reg\(2) & ((\u3|r_reg[1]~10\) # (GND)))
-- \u3|r_reg[2]~12\ = CARRY((!\u3|r_reg[1]~10\) # (!\u3|r_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|r_reg\(2),
	datad => VCC,
	cin => \u3|r_reg[1]~10\,
	combout => \u3|r_reg[2]~11_combout\,
	cout => \u3|r_reg[2]~12\);

-- Location: LCFF_X5_Y11_N3
\u3|r_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u3|r_reg[2]~11_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|r_reg\(2));

-- Location: LCCOMB_X5_Y11_N4
\u3|r_reg[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|r_reg[3]~13_combout\ = (\u3|r_reg\(3) & (\u3|r_reg[2]~12\ $ (GND))) # (!\u3|r_reg\(3) & (!\u3|r_reg[2]~12\ & VCC))
-- \u3|r_reg[3]~14\ = CARRY((\u3|r_reg\(3) & !\u3|r_reg[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|r_reg\(3),
	datad => VCC,
	cin => \u3|r_reg[2]~12\,
	combout => \u3|r_reg[3]~13_combout\,
	cout => \u3|r_reg[3]~14\);

-- Location: LCFF_X5_Y11_N5
\u3|r_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u3|r_reg[3]~13_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|r_reg\(3));

-- Location: LCCOMB_X5_Y11_N6
\u3|r_reg[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|r_reg[4]~15_combout\ = (\u3|r_reg\(4) & (!\u3|r_reg[3]~14\)) # (!\u3|r_reg\(4) & ((\u3|r_reg[3]~14\) # (GND)))
-- \u3|r_reg[4]~16\ = CARRY((!\u3|r_reg[3]~14\) # (!\u3|r_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|r_reg\(4),
	datad => VCC,
	cin => \u3|r_reg[3]~14\,
	combout => \u3|r_reg[4]~15_combout\,
	cout => \u3|r_reg[4]~16\);

-- Location: LCCOMB_X5_Y11_N8
\u3|r_reg[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|r_reg[5]~17_combout\ = (\u3|r_reg\(5) & (\u3|r_reg[4]~16\ $ (GND))) # (!\u3|r_reg\(5) & (!\u3|r_reg[4]~16\ & VCC))
-- \u3|r_reg[5]~18\ = CARRY((\u3|r_reg\(5) & !\u3|r_reg[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|r_reg\(5),
	datad => VCC,
	cin => \u3|r_reg[4]~16\,
	combout => \u3|r_reg[5]~17_combout\,
	cout => \u3|r_reg[5]~18\);

-- Location: LCFF_X5_Y11_N9
\u3|r_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u3|r_reg[5]~17_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|r_reg\(5));

-- Location: LCCOMB_X5_Y11_N14
\u3|r_reg[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|r_reg[8]~23_combout\ = (\u3|r_reg\(8) & (!\u3|r_reg[7]~22\)) # (!\u3|r_reg\(8) & ((\u3|r_reg[7]~22\) # (GND)))
-- \u3|r_reg[8]~24\ = CARRY((!\u3|r_reg[7]~22\) # (!\u3|r_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|r_reg\(8),
	datad => VCC,
	cin => \u3|r_reg[7]~22\,
	combout => \u3|r_reg[8]~23_combout\,
	cout => \u3|r_reg[8]~24\);

-- Location: LCFF_X5_Y11_N15
\u3|r_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u3|r_reg[8]~23_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|r_reg\(8));

-- Location: LCCOMB_X5_Y11_N16
\u3|r_reg[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|r_reg[9]~25_combout\ = \u3|r_reg\(9) $ (!\u3|r_reg[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|r_reg\(9),
	cin => \u3|r_reg[8]~24\,
	combout => \u3|r_reg[9]~25_combout\);

-- Location: LCFF_X5_Y11_N17
\u3|r_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u3|r_reg[9]~25_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|r_reg\(9));

-- Location: LCCOMB_X7_Y11_N4
\u6|r_reg[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|r_reg[0]~27_combout\ = !\u6|r_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|r_reg\(0),
	combout => \u6|r_reg[0]~27_combout\);

-- Location: LCFF_X7_Y11_N5
\u6|r_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u6|r_reg[0]~27_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|r_reg\(0));

-- Location: LCCOMB_X7_Y11_N8
\u6|r_reg[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|r_reg[1]~9_combout\ = (\u6|r_reg\(1) & (\u6|r_reg\(0) $ (VCC))) # (!\u6|r_reg\(1) & (\u6|r_reg\(0) & VCC))
-- \u6|r_reg[1]~10\ = CARRY((\u6|r_reg\(1) & \u6|r_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(1),
	datab => \u6|r_reg\(0),
	datad => VCC,
	combout => \u6|r_reg[1]~9_combout\,
	cout => \u6|r_reg[1]~10\);

-- Location: LCCOMB_X7_Y11_N10
\u6|r_reg[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|r_reg[2]~11_combout\ = (\u6|r_reg\(2) & (!\u6|r_reg[1]~10\)) # (!\u6|r_reg\(2) & ((\u6|r_reg[1]~10\) # (GND)))
-- \u6|r_reg[2]~12\ = CARRY((!\u6|r_reg[1]~10\) # (!\u6|r_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(2),
	datad => VCC,
	cin => \u6|r_reg[1]~10\,
	combout => \u6|r_reg[2]~11_combout\,
	cout => \u6|r_reg[2]~12\);

-- Location: LCCOMB_X7_Y11_N14
\u6|r_reg[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|r_reg[4]~15_combout\ = (\u6|r_reg\(4) & (!\u6|r_reg[3]~14\)) # (!\u6|r_reg\(4) & ((\u6|r_reg[3]~14\) # (GND)))
-- \u6|r_reg[4]~16\ = CARRY((!\u6|r_reg[3]~14\) # (!\u6|r_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|r_reg\(4),
	datad => VCC,
	cin => \u6|r_reg[3]~14\,
	combout => \u6|r_reg[4]~15_combout\,
	cout => \u6|r_reg[4]~16\);

-- Location: LCFF_X7_Y11_N15
\u6|r_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u6|r_reg[4]~15_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|r_reg\(4));

-- Location: LCCOMB_X7_Y11_N16
\u6|r_reg[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|r_reg[5]~17_combout\ = (\u6|r_reg\(5) & (\u6|r_reg[4]~16\ $ (GND))) # (!\u6|r_reg\(5) & (!\u6|r_reg[4]~16\ & VCC))
-- \u6|r_reg[5]~18\ = CARRY((\u6|r_reg\(5) & !\u6|r_reg[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(5),
	datad => VCC,
	cin => \u6|r_reg[4]~16\,
	combout => \u6|r_reg[5]~17_combout\,
	cout => \u6|r_reg[5]~18\);

-- Location: LCCOMB_X7_Y11_N18
\u6|r_reg[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|r_reg[6]~19_combout\ = (\u6|r_reg\(6) & (!\u6|r_reg[5]~18\)) # (!\u6|r_reg\(6) & ((\u6|r_reg[5]~18\) # (GND)))
-- \u6|r_reg[6]~20\ = CARRY((!\u6|r_reg[5]~18\) # (!\u6|r_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|r_reg\(6),
	datad => VCC,
	cin => \u6|r_reg[5]~18\,
	combout => \u6|r_reg[6]~19_combout\,
	cout => \u6|r_reg[6]~20\);

-- Location: LCFF_X7_Y11_N19
\u6|r_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u6|r_reg[6]~19_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|r_reg\(6));

-- Location: LCCOMB_X7_Y11_N20
\u6|r_reg[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|r_reg[7]~21_combout\ = (\u6|r_reg\(7) & (\u6|r_reg[6]~20\ $ (GND))) # (!\u6|r_reg\(7) & (!\u6|r_reg[6]~20\ & VCC))
-- \u6|r_reg[7]~22\ = CARRY((\u6|r_reg\(7) & !\u6|r_reg[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(7),
	datad => VCC,
	cin => \u6|r_reg[6]~20\,
	combout => \u6|r_reg[7]~21_combout\,
	cout => \u6|r_reg[7]~22\);

-- Location: LCCOMB_X7_Y11_N22
\u6|r_reg[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|r_reg[8]~23_combout\ = (\u6|r_reg\(8) & (!\u6|r_reg[7]~22\)) # (!\u6|r_reg\(8) & ((\u6|r_reg[7]~22\) # (GND)))
-- \u6|r_reg[8]~24\ = CARRY((!\u6|r_reg[7]~22\) # (!\u6|r_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|r_reg\(8),
	datad => VCC,
	cin => \u6|r_reg[7]~22\,
	combout => \u6|r_reg[8]~23_combout\,
	cout => \u6|r_reg[8]~24\);

-- Location: LCFF_X7_Y11_N23
\u6|r_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u6|r_reg[8]~23_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|r_reg\(8));

-- Location: LCCOMB_X7_Y11_N24
\u6|r_reg[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|r_reg[9]~25_combout\ = \u6|r_reg[8]~24\ $ (!\u6|r_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u6|r_reg\(9),
	cin => \u6|r_reg[8]~24\,
	combout => \u6|r_reg[9]~25_combout\);

-- Location: LCFF_X7_Y11_N25
\u6|r_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u6|r_reg[9]~25_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|r_reg\(9));

-- Location: LCFF_X7_Y11_N21
\u6|r_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u6|r_reg[7]~21_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|r_reg\(7));

-- Location: LCFF_X5_Y11_N7
\u3|r_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u3|r_reg[4]~15_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u0|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|r_reg\(4));

-- Location: LCFF_X7_Y11_N11
\u6|r_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u6|r_reg[2]~11_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|r_reg\(2));

-- Location: LCFF_X7_Y11_N9
\u6|r_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u6|r_reg[1]~9_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|r_reg\(1));

-- Location: LCCOMB_X6_Y11_N4
\u3|r_reg[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|r_reg[0]~27_combout\ = \u3|r_reg\(0) $ (((\u0|pulso_r_reg\(0) & !\u0|pulso_r_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|pulso_r_reg\(0),
	datac => \u3|r_reg\(0),
	datad => \u0|pulso_r_reg\(1),
	combout => \u3|r_reg[0]~27_combout\);

-- Location: LCFF_X6_Y11_N5
\u3|r_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u3|r_reg[0]~27_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|r_reg\(0));

-- Location: LCCOMB_X6_Y11_N6
\u6|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~1_cout\ = CARRY((!\u6|r_reg\(0) & \u3|r_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(0),
	datab => \u3|r_reg\(0),
	datad => VCC,
	cout => \u6|LessThan0~1_cout\);

-- Location: LCCOMB_X6_Y11_N8
\u6|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~3_cout\ = CARRY((\u3|r_reg\(1) & (\u6|r_reg\(1) & !\u6|LessThan0~1_cout\)) # (!\u3|r_reg\(1) & ((\u6|r_reg\(1)) # (!\u6|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|r_reg\(1),
	datab => \u6|r_reg\(1),
	datad => VCC,
	cin => \u6|LessThan0~1_cout\,
	cout => \u6|LessThan0~3_cout\);

-- Location: LCCOMB_X6_Y11_N10
\u6|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~5_cout\ = CARRY((\u3|r_reg\(2) & ((!\u6|LessThan0~3_cout\) # (!\u6|r_reg\(2)))) # (!\u3|r_reg\(2) & (!\u6|r_reg\(2) & !\u6|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|r_reg\(2),
	datab => \u6|r_reg\(2),
	datad => VCC,
	cin => \u6|LessThan0~3_cout\,
	cout => \u6|LessThan0~5_cout\);

-- Location: LCCOMB_X6_Y11_N12
\u6|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~7_cout\ = CARRY((\u6|r_reg\(3) & ((!\u6|LessThan0~5_cout\) # (!\u3|r_reg\(3)))) # (!\u6|r_reg\(3) & (!\u3|r_reg\(3) & !\u6|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(3),
	datab => \u3|r_reg\(3),
	datad => VCC,
	cin => \u6|LessThan0~5_cout\,
	cout => \u6|LessThan0~7_cout\);

-- Location: LCCOMB_X6_Y11_N14
\u6|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~9_cout\ = CARRY((\u6|r_reg\(4) & (\u3|r_reg\(4) & !\u6|LessThan0~7_cout\)) # (!\u6|r_reg\(4) & ((\u3|r_reg\(4)) # (!\u6|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(4),
	datab => \u3|r_reg\(4),
	datad => VCC,
	cin => \u6|LessThan0~7_cout\,
	cout => \u6|LessThan0~9_cout\);

-- Location: LCCOMB_X6_Y11_N16
\u6|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~11_cout\ = CARRY((\u6|r_reg\(5) & ((!\u6|LessThan0~9_cout\) # (!\u3|r_reg\(5)))) # (!\u6|r_reg\(5) & (!\u3|r_reg\(5) & !\u6|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(5),
	datab => \u3|r_reg\(5),
	datad => VCC,
	cin => \u6|LessThan0~9_cout\,
	cout => \u6|LessThan0~11_cout\);

-- Location: LCCOMB_X6_Y11_N18
\u6|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~13_cout\ = CARRY((\u3|r_reg\(6) & ((!\u6|LessThan0~11_cout\) # (!\u6|r_reg\(6)))) # (!\u3|r_reg\(6) & (!\u6|r_reg\(6) & !\u6|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|r_reg\(6),
	datab => \u6|r_reg\(6),
	datad => VCC,
	cin => \u6|LessThan0~11_cout\,
	cout => \u6|LessThan0~13_cout\);

-- Location: LCCOMB_X6_Y11_N20
\u6|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~15_cout\ = CARRY((\u3|r_reg\(7) & (\u6|r_reg\(7) & !\u6|LessThan0~13_cout\)) # (!\u3|r_reg\(7) & ((\u6|r_reg\(7)) # (!\u6|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|r_reg\(7),
	datab => \u6|r_reg\(7),
	datad => VCC,
	cin => \u6|LessThan0~13_cout\,
	cout => \u6|LessThan0~15_cout\);

-- Location: LCCOMB_X6_Y11_N22
\u6|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~17_cout\ = CARRY((\u3|r_reg\(8) & ((!\u6|LessThan0~15_cout\) # (!\u6|r_reg\(8)))) # (!\u3|r_reg\(8) & (!\u6|r_reg\(8) & !\u6|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|r_reg\(8),
	datab => \u6|r_reg\(8),
	datad => VCC,
	cin => \u6|LessThan0~15_cout\,
	cout => \u6|LessThan0~17_cout\);

-- Location: LCCOMB_X6_Y11_N24
\u6|LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~18_combout\ = (\u3|r_reg\(9) & ((\u6|LessThan0~17_cout\) # (!\u6|r_reg\(9)))) # (!\u3|r_reg\(9) & (\u6|LessThan0~17_cout\ & !\u6|r_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|r_reg\(9),
	datad => \u6|r_reg\(9),
	cin => \u6|LessThan0~17_cout\,
	combout => \u6|LessThan0~18_combout\);

-- Location: LCFF_X6_Y11_N25
\u6|buf_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u6|LessThan0~18_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|buf_reg~regout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl[1]~I\ : cycloneii_io
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
	padio => ww_ctrl(1),
	combout => \ctrl~combout\(1));

-- Location: LCCOMB_X9_Y11_N28
\u1|pulso_r_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|pulso_r_reg[0]~feeder_combout\ = \ctrl~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl~combout\(1),
	combout => \u1|pulso_r_reg[0]~feeder_combout\);

-- Location: LCFF_X9_Y11_N29
\u1|pulso_r_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|pulso_r_reg[0]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|pulso_r_reg\(0));

-- Location: LCCOMB_X9_Y11_N30
\u1|pulso_r_reg[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|pulso_r_reg[1]~feeder_combout\ = \u1|pulso_r_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|pulso_r_reg\(0),
	combout => \u1|pulso_r_reg[1]~feeder_combout\);

-- Location: LCFF_X9_Y11_N31
\u1|pulso_r_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u1|pulso_r_reg[1]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|pulso_r_reg\(1));

-- Location: LCCOMB_X9_Y11_N24
\u4|r_reg[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|r_reg[0]~27_combout\ = \u4|r_reg\(0) $ (((!\u1|pulso_r_reg\(1) & \u1|pulso_r_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|pulso_r_reg\(1),
	datac => \u4|r_reg\(0),
	datad => \u1|pulso_r_reg\(0),
	combout => \u4|r_reg[0]~27_combout\);

-- Location: LCCOMB_X8_Y11_N4
\u4|r_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|r_reg[0]~feeder_combout\ = \u4|r_reg[0]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|r_reg[0]~27_combout\,
	combout => \u4|r_reg[0]~feeder_combout\);

-- Location: LCFF_X8_Y11_N5
\u4|r_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u4|r_reg[0]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|r_reg\(0));

-- Location: LCCOMB_X9_Y11_N6
\u4|r_reg[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|r_reg[2]~11_combout\ = (\u4|r_reg\(2) & (!\u4|r_reg[1]~10\)) # (!\u4|r_reg\(2) & ((\u4|r_reg[1]~10\) # (GND)))
-- \u4|r_reg[2]~12\ = CARRY((!\u4|r_reg[1]~10\) # (!\u4|r_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|r_reg\(2),
	datad => VCC,
	cin => \u4|r_reg[1]~10\,
	combout => \u4|r_reg[2]~11_combout\,
	cout => \u4|r_reg[2]~12\);

-- Location: LCCOMB_X9_Y11_N8
\u4|r_reg[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|r_reg[3]~13_combout\ = (\u4|r_reg\(3) & (\u4|r_reg[2]~12\ $ (GND))) # (!\u4|r_reg\(3) & (!\u4|r_reg[2]~12\ & VCC))
-- \u4|r_reg[3]~14\ = CARRY((\u4|r_reg\(3) & !\u4|r_reg[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|r_reg\(3),
	datad => VCC,
	cin => \u4|r_reg[2]~12\,
	combout => \u4|r_reg[3]~13_combout\,
	cout => \u4|r_reg[3]~14\);

-- Location: LCCOMB_X9_Y11_N26
\u1|pulso\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|pulso~combout\ = (!\u1|pulso_r_reg\(1) & \u1|pulso_r_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|pulso_r_reg\(1),
	datad => \u1|pulso_r_reg\(0),
	combout => \u1|pulso~combout\);

-- Location: LCFF_X9_Y11_N9
\u4|r_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u4|r_reg[3]~13_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u1|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|r_reg\(3));

-- Location: LCCOMB_X9_Y11_N10
\u4|r_reg[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|r_reg[4]~15_combout\ = (\u4|r_reg\(4) & (!\u4|r_reg[3]~14\)) # (!\u4|r_reg\(4) & ((\u4|r_reg[3]~14\) # (GND)))
-- \u4|r_reg[4]~16\ = CARRY((!\u4|r_reg[3]~14\) # (!\u4|r_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|r_reg\(4),
	datad => VCC,
	cin => \u4|r_reg[3]~14\,
	combout => \u4|r_reg[4]~15_combout\,
	cout => \u4|r_reg[4]~16\);

-- Location: LCCOMB_X9_Y11_N12
\u4|r_reg[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|r_reg[5]~17_combout\ = (\u4|r_reg\(5) & (\u4|r_reg[4]~16\ $ (GND))) # (!\u4|r_reg\(5) & (!\u4|r_reg[4]~16\ & VCC))
-- \u4|r_reg[5]~18\ = CARRY((\u4|r_reg\(5) & !\u4|r_reg[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|r_reg\(5),
	datad => VCC,
	cin => \u4|r_reg[4]~16\,
	combout => \u4|r_reg[5]~17_combout\,
	cout => \u4|r_reg[5]~18\);

-- Location: LCCOMB_X9_Y11_N14
\u4|r_reg[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|r_reg[6]~19_combout\ = (\u4|r_reg\(6) & (!\u4|r_reg[5]~18\)) # (!\u4|r_reg\(6) & ((\u4|r_reg[5]~18\) # (GND)))
-- \u4|r_reg[6]~20\ = CARRY((!\u4|r_reg[5]~18\) # (!\u4|r_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|r_reg\(6),
	datad => VCC,
	cin => \u4|r_reg[5]~18\,
	combout => \u4|r_reg[6]~19_combout\,
	cout => \u4|r_reg[6]~20\);

-- Location: LCFF_X9_Y11_N15
\u4|r_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u4|r_reg[6]~19_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u1|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|r_reg\(6));

-- Location: LCCOMB_X9_Y11_N18
\u4|r_reg[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|r_reg[8]~23_combout\ = (\u4|r_reg\(8) & (!\u4|r_reg[7]~22\)) # (!\u4|r_reg\(8) & ((\u4|r_reg[7]~22\) # (GND)))
-- \u4|r_reg[8]~24\ = CARRY((!\u4|r_reg[7]~22\) # (!\u4|r_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|r_reg\(8),
	datad => VCC,
	cin => \u4|r_reg[7]~22\,
	combout => \u4|r_reg[8]~23_combout\,
	cout => \u4|r_reg[8]~24\);

-- Location: LCFF_X9_Y11_N19
\u4|r_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u4|r_reg[8]~23_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u1|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|r_reg\(8));

-- Location: LCCOMB_X9_Y11_N20
\u4|r_reg[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|r_reg[9]~25_combout\ = \u4|r_reg\(9) $ (!\u4|r_reg[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|r_reg\(9),
	cin => \u4|r_reg[8]~24\,
	combout => \u4|r_reg[9]~25_combout\);

-- Location: LCFF_X9_Y11_N21
\u4|r_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u4|r_reg[9]~25_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u1|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|r_reg\(9));

-- Location: LCFF_X9_Y11_N13
\u4|r_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u4|r_reg[5]~17_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u1|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|r_reg\(5));

-- Location: LCFF_X9_Y11_N11
\u4|r_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u4|r_reg[4]~15_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u1|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|r_reg\(4));

-- Location: LCFF_X9_Y11_N7
\u4|r_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u4|r_reg[2]~11_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u1|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|r_reg\(2));

-- Location: LCCOMB_X8_Y11_N8
\u7|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~1_cout\ = CARRY((\u4|r_reg\(0) & !\u6|r_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|r_reg\(0),
	datab => \u6|r_reg\(0),
	datad => VCC,
	cout => \u7|LessThan0~1_cout\);

-- Location: LCCOMB_X8_Y11_N10
\u7|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~3_cout\ = CARRY((\u4|r_reg\(1) & (\u6|r_reg\(1) & !\u7|LessThan0~1_cout\)) # (!\u4|r_reg\(1) & ((\u6|r_reg\(1)) # (!\u7|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|r_reg\(1),
	datab => \u6|r_reg\(1),
	datad => VCC,
	cin => \u7|LessThan0~1_cout\,
	cout => \u7|LessThan0~3_cout\);

-- Location: LCCOMB_X8_Y11_N12
\u7|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~5_cout\ = CARRY((\u6|r_reg\(2) & (\u4|r_reg\(2) & !\u7|LessThan0~3_cout\)) # (!\u6|r_reg\(2) & ((\u4|r_reg\(2)) # (!\u7|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(2),
	datab => \u4|r_reg\(2),
	datad => VCC,
	cin => \u7|LessThan0~3_cout\,
	cout => \u7|LessThan0~5_cout\);

-- Location: LCCOMB_X8_Y11_N14
\u7|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~7_cout\ = CARRY((\u6|r_reg\(3) & ((!\u7|LessThan0~5_cout\) # (!\u4|r_reg\(3)))) # (!\u6|r_reg\(3) & (!\u4|r_reg\(3) & !\u7|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(3),
	datab => \u4|r_reg\(3),
	datad => VCC,
	cin => \u7|LessThan0~5_cout\,
	cout => \u7|LessThan0~7_cout\);

-- Location: LCCOMB_X8_Y11_N16
\u7|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~9_cout\ = CARRY((\u6|r_reg\(4) & (\u4|r_reg\(4) & !\u7|LessThan0~7_cout\)) # (!\u6|r_reg\(4) & ((\u4|r_reg\(4)) # (!\u7|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(4),
	datab => \u4|r_reg\(4),
	datad => VCC,
	cin => \u7|LessThan0~7_cout\,
	cout => \u7|LessThan0~9_cout\);

-- Location: LCCOMB_X8_Y11_N18
\u7|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~11_cout\ = CARRY((\u6|r_reg\(5) & ((!\u7|LessThan0~9_cout\) # (!\u4|r_reg\(5)))) # (!\u6|r_reg\(5) & (!\u4|r_reg\(5) & !\u7|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(5),
	datab => \u4|r_reg\(5),
	datad => VCC,
	cin => \u7|LessThan0~9_cout\,
	cout => \u7|LessThan0~11_cout\);

-- Location: LCCOMB_X8_Y11_N20
\u7|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~13_cout\ = CARRY((\u6|r_reg\(6) & (\u4|r_reg\(6) & !\u7|LessThan0~11_cout\)) # (!\u6|r_reg\(6) & ((\u4|r_reg\(6)) # (!\u7|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(6),
	datab => \u4|r_reg\(6),
	datad => VCC,
	cin => \u7|LessThan0~11_cout\,
	cout => \u7|LessThan0~13_cout\);

-- Location: LCCOMB_X8_Y11_N22
\u7|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~15_cout\ = CARRY((\u4|r_reg\(7) & (\u6|r_reg\(7) & !\u7|LessThan0~13_cout\)) # (!\u4|r_reg\(7) & ((\u6|r_reg\(7)) # (!\u7|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|r_reg\(7),
	datab => \u6|r_reg\(7),
	datad => VCC,
	cin => \u7|LessThan0~13_cout\,
	cout => \u7|LessThan0~15_cout\);

-- Location: LCCOMB_X8_Y11_N24
\u7|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~17_cout\ = CARRY((\u6|r_reg\(8) & (\u4|r_reg\(8) & !\u7|LessThan0~15_cout\)) # (!\u6|r_reg\(8) & ((\u4|r_reg\(8)) # (!\u7|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(8),
	datab => \u4|r_reg\(8),
	datad => VCC,
	cin => \u7|LessThan0~15_cout\,
	cout => \u7|LessThan0~17_cout\);

-- Location: LCCOMB_X8_Y11_N26
\u7|LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|LessThan0~18_combout\ = (\u6|r_reg\(9) & (\u7|LessThan0~17_cout\ & \u4|r_reg\(9))) # (!\u6|r_reg\(9) & ((\u7|LessThan0~17_cout\) # (\u4|r_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(9),
	datad => \u4|r_reg\(9),
	cin => \u7|LessThan0~17_cout\,
	combout => \u7|LessThan0~18_combout\);

-- Location: LCFF_X8_Y11_N27
\u7|buf_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u7|LessThan0~18_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|buf_reg~regout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ctrl[2]~I\ : cycloneii_io
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
	padio => ww_ctrl(2),
	combout => \ctrl~combout\(2));

-- Location: LCCOMB_X7_Y10_N30
\u2|pulso_r_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|pulso_r_reg[0]~feeder_combout\ = \ctrl~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl~combout\(2),
	combout => \u2|pulso_r_reg[0]~feeder_combout\);

-- Location: LCFF_X7_Y10_N31
\u2|pulso_r_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u2|pulso_r_reg[0]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|pulso_r_reg\(0));

-- Location: LCCOMB_X7_Y10_N4
\u2|pulso_r_reg[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|pulso_r_reg[1]~feeder_combout\ = \u2|pulso_r_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|pulso_r_reg\(0),
	combout => \u2|pulso_r_reg[1]~feeder_combout\);

-- Location: LCFF_X7_Y10_N5
\u2|pulso_r_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u2|pulso_r_reg[1]~feeder_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u2|pulso_r_reg\(1));

-- Location: LCCOMB_X7_Y10_N8
\u5|r_reg[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|r_reg[0]~27_combout\ = \u5|r_reg\(0) $ (((!\u2|pulso_r_reg\(1) & \u2|pulso_r_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|pulso_r_reg\(1),
	datac => \u5|r_reg\(0),
	datad => \u2|pulso_r_reg\(0),
	combout => \u5|r_reg[0]~27_combout\);

-- Location: LCFF_X7_Y10_N9
\u5|r_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u5|r_reg[0]~27_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|r_reg\(0));

-- Location: LCCOMB_X7_Y10_N12
\u5|r_reg[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|r_reg[1]~9_combout\ = (\u5|r_reg\(1) & (\u5|r_reg\(0) $ (VCC))) # (!\u5|r_reg\(1) & (\u5|r_reg\(0) & VCC))
-- \u5|r_reg[1]~10\ = CARRY((\u5|r_reg\(1) & \u5|r_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|r_reg\(1),
	datab => \u5|r_reg\(0),
	datad => VCC,
	combout => \u5|r_reg[1]~9_combout\,
	cout => \u5|r_reg[1]~10\);

-- Location: LCCOMB_X7_Y10_N14
\u5|r_reg[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|r_reg[2]~11_combout\ = (\u5|r_reg\(2) & (!\u5|r_reg[1]~10\)) # (!\u5|r_reg\(2) & ((\u5|r_reg[1]~10\) # (GND)))
-- \u5|r_reg[2]~12\ = CARRY((!\u5|r_reg[1]~10\) # (!\u5|r_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|r_reg\(2),
	datad => VCC,
	cin => \u5|r_reg[1]~10\,
	combout => \u5|r_reg[2]~11_combout\,
	cout => \u5|r_reg[2]~12\);

-- Location: LCCOMB_X7_Y10_N10
\u2|pulso\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|pulso~combout\ = (\u2|pulso_r_reg\(0) & !\u2|pulso_r_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|pulso_r_reg\(0),
	datac => \u2|pulso_r_reg\(1),
	combout => \u2|pulso~combout\);

-- Location: LCFF_X7_Y10_N15
\u5|r_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u5|r_reg[2]~11_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u2|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|r_reg\(2));

-- Location: LCCOMB_X7_Y10_N16
\u5|r_reg[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|r_reg[3]~13_combout\ = (\u5|r_reg\(3) & (\u5|r_reg[2]~12\ $ (GND))) # (!\u5|r_reg\(3) & (!\u5|r_reg[2]~12\ & VCC))
-- \u5|r_reg[3]~14\ = CARRY((\u5|r_reg\(3) & !\u5|r_reg[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|r_reg\(3),
	datad => VCC,
	cin => \u5|r_reg[2]~12\,
	combout => \u5|r_reg[3]~13_combout\,
	cout => \u5|r_reg[3]~14\);

-- Location: LCCOMB_X7_Y10_N18
\u5|r_reg[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|r_reg[4]~15_combout\ = (\u5|r_reg\(4) & (!\u5|r_reg[3]~14\)) # (!\u5|r_reg\(4) & ((\u5|r_reg[3]~14\) # (GND)))
-- \u5|r_reg[4]~16\ = CARRY((!\u5|r_reg[3]~14\) # (!\u5|r_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|r_reg\(4),
	datad => VCC,
	cin => \u5|r_reg[3]~14\,
	combout => \u5|r_reg[4]~15_combout\,
	cout => \u5|r_reg[4]~16\);

-- Location: LCFF_X7_Y10_N19
\u5|r_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u5|r_reg[4]~15_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u2|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|r_reg\(4));

-- Location: LCCOMB_X7_Y10_N22
\u5|r_reg[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|r_reg[6]~19_combout\ = (\u5|r_reg\(6) & (!\u5|r_reg[5]~18\)) # (!\u5|r_reg\(6) & ((\u5|r_reg[5]~18\) # (GND)))
-- \u5|r_reg[6]~20\ = CARRY((!\u5|r_reg[5]~18\) # (!\u5|r_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|r_reg\(6),
	datad => VCC,
	cin => \u5|r_reg[5]~18\,
	combout => \u5|r_reg[6]~19_combout\,
	cout => \u5|r_reg[6]~20\);

-- Location: LCFF_X7_Y10_N23
\u5|r_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u5|r_reg[6]~19_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u2|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|r_reg\(6));

-- Location: LCCOMB_X7_Y10_N24
\u5|r_reg[7]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|r_reg[7]~21_combout\ = (\u5|r_reg\(7) & (\u5|r_reg[6]~20\ $ (GND))) # (!\u5|r_reg\(7) & (!\u5|r_reg[6]~20\ & VCC))
-- \u5|r_reg[7]~22\ = CARRY((\u5|r_reg\(7) & !\u5|r_reg[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|r_reg\(7),
	datad => VCC,
	cin => \u5|r_reg[6]~20\,
	combout => \u5|r_reg[7]~21_combout\,
	cout => \u5|r_reg[7]~22\);

-- Location: LCCOMB_X7_Y10_N26
\u5|r_reg[8]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|r_reg[8]~23_combout\ = (\u5|r_reg\(8) & (!\u5|r_reg[7]~22\)) # (!\u5|r_reg\(8) & ((\u5|r_reg[7]~22\) # (GND)))
-- \u5|r_reg[8]~24\ = CARRY((!\u5|r_reg[7]~22\) # (!\u5|r_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|r_reg\(8),
	datad => VCC,
	cin => \u5|r_reg[7]~22\,
	combout => \u5|r_reg[8]~23_combout\,
	cout => \u5|r_reg[8]~24\);

-- Location: LCFF_X7_Y10_N27
\u5|r_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u5|r_reg[8]~23_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u2|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|r_reg\(8));

-- Location: LCCOMB_X7_Y10_N28
\u5|r_reg[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|r_reg[9]~25_combout\ = \u5|r_reg\(9) $ (!\u5|r_reg[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|r_reg\(9),
	cin => \u5|r_reg[8]~24\,
	combout => \u5|r_reg[9]~25_combout\);

-- Location: LCFF_X7_Y10_N29
\u5|r_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u5|r_reg[9]~25_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u2|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|r_reg\(9));

-- Location: LCFF_X7_Y10_N25
\u5|r_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u5|r_reg[7]~21_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u2|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|r_reg\(7));

-- Location: LCFF_X7_Y11_N17
\u6|r_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u6|r_reg[5]~17_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|r_reg\(5));

-- Location: LCFF_X7_Y10_N17
\u5|r_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u5|r_reg[3]~13_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u2|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|r_reg\(3));

-- Location: LCFF_X7_Y10_N13
\u5|r_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u5|r_reg[1]~9_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	ena => \u2|pulso~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|r_reg\(1));

-- Location: LCCOMB_X8_Y10_N4
\u8|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~1_cout\ = CARRY((\u5|r_reg\(0) & !\u6|r_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|r_reg\(0),
	datab => \u6|r_reg\(0),
	datad => VCC,
	cout => \u8|LessThan0~1_cout\);

-- Location: LCCOMB_X8_Y10_N6
\u8|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~3_cout\ = CARRY((\u6|r_reg\(1) & ((!\u8|LessThan0~1_cout\) # (!\u5|r_reg\(1)))) # (!\u6|r_reg\(1) & (!\u5|r_reg\(1) & !\u8|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(1),
	datab => \u5|r_reg\(1),
	datad => VCC,
	cin => \u8|LessThan0~1_cout\,
	cout => \u8|LessThan0~3_cout\);

-- Location: LCCOMB_X8_Y10_N8
\u8|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~5_cout\ = CARRY((\u6|r_reg\(2) & (\u5|r_reg\(2) & !\u8|LessThan0~3_cout\)) # (!\u6|r_reg\(2) & ((\u5|r_reg\(2)) # (!\u8|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(2),
	datab => \u5|r_reg\(2),
	datad => VCC,
	cin => \u8|LessThan0~3_cout\,
	cout => \u8|LessThan0~5_cout\);

-- Location: LCCOMB_X8_Y10_N10
\u8|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~7_cout\ = CARRY((\u6|r_reg\(3) & ((!\u8|LessThan0~5_cout\) # (!\u5|r_reg\(3)))) # (!\u6|r_reg\(3) & (!\u5|r_reg\(3) & !\u8|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(3),
	datab => \u5|r_reg\(3),
	datad => VCC,
	cin => \u8|LessThan0~5_cout\,
	cout => \u8|LessThan0~7_cout\);

-- Location: LCCOMB_X8_Y10_N12
\u8|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~9_cout\ = CARRY((\u5|r_reg\(4) & ((!\u8|LessThan0~7_cout\) # (!\u6|r_reg\(4)))) # (!\u5|r_reg\(4) & (!\u6|r_reg\(4) & !\u8|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|r_reg\(4),
	datab => \u6|r_reg\(4),
	datad => VCC,
	cin => \u8|LessThan0~7_cout\,
	cout => \u8|LessThan0~9_cout\);

-- Location: LCCOMB_X8_Y10_N14
\u8|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~11_cout\ = CARRY((\u5|r_reg\(5) & (\u6|r_reg\(5) & !\u8|LessThan0~9_cout\)) # (!\u5|r_reg\(5) & ((\u6|r_reg\(5)) # (!\u8|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|r_reg\(5),
	datab => \u6|r_reg\(5),
	datad => VCC,
	cin => \u8|LessThan0~9_cout\,
	cout => \u8|LessThan0~11_cout\);

-- Location: LCCOMB_X8_Y10_N16
\u8|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~13_cout\ = CARRY((\u6|r_reg\(6) & (\u5|r_reg\(6) & !\u8|LessThan0~11_cout\)) # (!\u6|r_reg\(6) & ((\u5|r_reg\(6)) # (!\u8|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(6),
	datab => \u5|r_reg\(6),
	datad => VCC,
	cin => \u8|LessThan0~11_cout\,
	cout => \u8|LessThan0~13_cout\);

-- Location: LCCOMB_X8_Y10_N18
\u8|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~15_cout\ = CARRY((\u6|r_reg\(7) & ((!\u8|LessThan0~13_cout\) # (!\u5|r_reg\(7)))) # (!\u6|r_reg\(7) & (!\u5|r_reg\(7) & !\u8|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(7),
	datab => \u5|r_reg\(7),
	datad => VCC,
	cin => \u8|LessThan0~13_cout\,
	cout => \u8|LessThan0~15_cout\);

-- Location: LCCOMB_X8_Y10_N20
\u8|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~17_cout\ = CARRY((\u6|r_reg\(8) & (\u5|r_reg\(8) & !\u8|LessThan0~15_cout\)) # (!\u6|r_reg\(8) & ((\u5|r_reg\(8)) # (!\u8|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|r_reg\(8),
	datab => \u5|r_reg\(8),
	datad => VCC,
	cin => \u8|LessThan0~15_cout\,
	cout => \u8|LessThan0~17_cout\);

-- Location: LCCOMB_X8_Y10_N22
\u8|LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~18_combout\ = (\u5|r_reg\(9) & ((\u8|LessThan0~17_cout\) # (!\u6|r_reg\(9)))) # (!\u5|r_reg\(9) & (\u8|LessThan0~17_cout\ & !\u6|r_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|r_reg\(9),
	datad => \u6|r_reg\(9),
	cin => \u8|LessThan0~17_cout\,
	combout => \u8|LessThan0~18_combout\);

-- Location: LCFF_X8_Y10_N23
\u8|buf_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u8|LessThan0~18_combout\,
	aclr => \ALT_INV_rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|buf_reg~regout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_out[0]~I\ : cycloneii_io
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
	datain => \u6|buf_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_out(0));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_out[1]~I\ : cycloneii_io
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
	padio => ww_led_out(1));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_out[2]~I\ : cycloneii_io
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
	datain => \u8|buf_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_out(2));
END structure;


