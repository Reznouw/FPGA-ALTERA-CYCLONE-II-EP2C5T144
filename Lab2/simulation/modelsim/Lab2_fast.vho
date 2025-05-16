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

-- DATE "09/22/2024 21:50:10"

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

ENTITY 	Lab2 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	duty_ctrl : IN std_logic_vector(9 DOWNTO 0);
	frec_ctrl : IN std_logic_vector(1 DOWNTO 0);
	pwm_out : OUT std_logic
	);
END Lab2;

-- Design Ports Information
-- pwm_out	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- duty_ctrl[9]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty_ctrl[8]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty_ctrl[7]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty_ctrl[6]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty_ctrl[5]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty_ctrl[4]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty_ctrl[3]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty_ctrl[2]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty_ctrl[1]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- duty_ctrl[0]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- frec_ctrl[1]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- frec_ctrl[0]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Lab2 IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_duty_ctrl : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_frec_ctrl : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_pwm_out : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \c[3]~2_combout\ : std_logic;
SIGNAL \c[5]~6_combout\ : std_logic;
SIGNAL \c[7]~11\ : std_logic;
SIGNAL \c[8]~12_combout\ : std_logic;
SIGNAL \c[8]~13\ : std_logic;
SIGNAL \c[9]~14_combout\ : std_logic;
SIGNAL \b[1]~0_combout\ : std_logic;
SIGNAL \b[6]~10_combout\ : std_logic;
SIGNAL \b[7]~13\ : std_logic;
SIGNAL \b[8]~14_combout\ : std_logic;
SIGNAL \b[8]~15\ : std_logic;
SIGNAL \b[9]~16_combout\ : std_logic;
SIGNAL \a[7]~15\ : std_logic;
SIGNAL \a[8]~16_combout\ : std_logic;
SIGNAL \a[8]~17\ : std_logic;
SIGNAL \a[9]~18_combout\ : std_logic;
SIGNAL \d[7]~9\ : std_logic;
SIGNAL \d[8]~10_combout\ : std_logic;
SIGNAL \d[8]~11\ : std_logic;
SIGNAL \d[9]~12_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \a[0]~1\ : std_logic;
SIGNAL \a[1]~2_combout\ : std_logic;
SIGNAL \r_reg[1]~0_combout\ : std_logic;
SIGNAL \r_reg[1]~1_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \b[1]~1\ : std_logic;
SIGNAL \b[2]~2_combout\ : std_logic;
SIGNAL \c[2]~0_combout\ : std_logic;
SIGNAL \a[1]~3\ : std_logic;
SIGNAL \a[2]~4_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \b[2]~3\ : std_logic;
SIGNAL \b[3]~5\ : std_logic;
SIGNAL \b[4]~6_combout\ : std_logic;
SIGNAL \d[3]~0_combout\ : std_logic;
SIGNAL \b[3]~4_combout\ : std_logic;
SIGNAL \a[2]~5\ : std_logic;
SIGNAL \a[3]~6_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \d[3]~1\ : std_logic;
SIGNAL \d[4]~2_combout\ : std_logic;
SIGNAL \a[3]~7\ : std_logic;
SIGNAL \a[4]~8_combout\ : std_logic;
SIGNAL \c[2]~1\ : std_logic;
SIGNAL \c[3]~3\ : std_logic;
SIGNAL \c[4]~4_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \d[4]~3\ : std_logic;
SIGNAL \d[5]~4_combout\ : std_logic;
SIGNAL \a[4]~9\ : std_logic;
SIGNAL \a[5]~10_combout\ : std_logic;
SIGNAL \b[4]~7\ : std_logic;
SIGNAL \b[5]~8_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \d[5]~5\ : std_logic;
SIGNAL \d[6]~6_combout\ : std_logic;
SIGNAL \c[4]~5\ : std_logic;
SIGNAL \c[5]~7\ : std_logic;
SIGNAL \c[6]~8_combout\ : std_logic;
SIGNAL \a[5]~11\ : std_logic;
SIGNAL \a[6]~12_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \c[6]~9\ : std_logic;
SIGNAL \c[7]~10_combout\ : std_logic;
SIGNAL \d[6]~7\ : std_logic;
SIGNAL \d[7]~8_combout\ : std_logic;
SIGNAL \a[6]~13\ : std_logic;
SIGNAL \a[7]~14_combout\ : std_logic;
SIGNAL \b[5]~9\ : std_logic;
SIGNAL \b[6]~11\ : std_logic;
SIGNAL \b[7]~12_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \a[0]~0_combout\ : std_logic;
SIGNAL \r_reg[0]~2_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \buf_next~combout\ : std_logic;
SIGNAL \buf_reg~regout\ : std_logic;
SIGNAL r_reg : std_logic_vector(9 DOWNTO 0);
SIGNAL \frec_ctrl~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \duty_ctrl~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_duty_ctrl <= duty_ctrl;
ww_frec_ctrl <= frec_ctrl;
pwm_out <= ww_pwm_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;

-- Location: LCCOMB_X26_Y4_N6
\c[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \c[3]~2_combout\ = (r_reg(3) & (!\c[2]~1\)) # (!r_reg(3) & ((\c[2]~1\) # (GND)))
-- \c[3]~3\ = CARRY((!\c[2]~1\) # (!r_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(3),
	datad => VCC,
	cin => \c[2]~1\,
	combout => \c[3]~2_combout\,
	cout => \c[3]~3\);

-- Location: LCCOMB_X26_Y4_N10
\c[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \c[5]~6_combout\ = (r_reg(5) & (!\c[4]~5\)) # (!r_reg(5) & ((\c[4]~5\) # (GND)))
-- \c[5]~7\ = CARRY((!\c[4]~5\) # (!r_reg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(5),
	datad => VCC,
	cin => \c[4]~5\,
	combout => \c[5]~6_combout\,
	cout => \c[5]~7\);

-- Location: LCCOMB_X26_Y4_N14
\c[7]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \c[7]~10_combout\ = (r_reg(7) & (!\c[6]~9\)) # (!r_reg(7) & ((\c[6]~9\) # (GND)))
-- \c[7]~11\ = CARRY((!\c[6]~9\) # (!r_reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(7),
	datad => VCC,
	cin => \c[6]~9\,
	combout => \c[7]~10_combout\,
	cout => \c[7]~11\);

-- Location: LCCOMB_X26_Y4_N16
\c[8]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \c[8]~12_combout\ = (r_reg(8) & (\c[7]~11\ $ (GND))) # (!r_reg(8) & (!\c[7]~11\ & VCC))
-- \c[8]~13\ = CARRY((r_reg(8) & !\c[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(8),
	datad => VCC,
	cin => \c[7]~11\,
	combout => \c[8]~12_combout\,
	cout => \c[8]~13\);

-- Location: LCCOMB_X26_Y4_N18
\c[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \c[9]~14_combout\ = \c[8]~13\ $ (r_reg(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_reg(9),
	cin => \c[8]~13\,
	combout => \c[9]~14_combout\);

-- Location: LCCOMB_X24_Y4_N0
\b[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b[1]~0_combout\ = r_reg(1) $ (VCC)
-- \b[1]~1\ = CARRY(r_reg(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_reg(1),
	datad => VCC,
	combout => \b[1]~0_combout\,
	cout => \b[1]~1\);

-- Location: LCCOMB_X24_Y4_N10
\b[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b[6]~10_combout\ = (r_reg(6) & (!\b[5]~9\)) # (!r_reg(6) & ((\b[5]~9\) # (GND)))
-- \b[6]~11\ = CARRY((!\b[5]~9\) # (!r_reg(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(6),
	datad => VCC,
	cin => \b[5]~9\,
	combout => \b[6]~10_combout\,
	cout => \b[6]~11\);

-- Location: LCCOMB_X24_Y4_N12
\b[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b[7]~12_combout\ = (r_reg(7) & (\b[6]~11\ $ (GND))) # (!r_reg(7) & (!\b[6]~11\ & VCC))
-- \b[7]~13\ = CARRY((r_reg(7) & !\b[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(7),
	datad => VCC,
	cin => \b[6]~11\,
	combout => \b[7]~12_combout\,
	cout => \b[7]~13\);

-- Location: LCCOMB_X24_Y4_N14
\b[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b[8]~14_combout\ = (r_reg(8) & (!\b[7]~13\)) # (!r_reg(8) & ((\b[7]~13\) # (GND)))
-- \b[8]~15\ = CARRY((!\b[7]~13\) # (!r_reg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(8),
	datad => VCC,
	cin => \b[7]~13\,
	combout => \b[8]~14_combout\,
	cout => \b[8]~15\);

-- Location: LCCOMB_X24_Y4_N16
\b[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \b[9]~16_combout\ = \b[8]~15\ $ (!r_reg(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_reg(9),
	cin => \b[8]~15\,
	combout => \b[9]~16_combout\);

-- Location: LCCOMB_X25_Y4_N26
\a[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \a[7]~14_combout\ = (r_reg(7) & (!\a[6]~13\)) # (!r_reg(7) & ((\a[6]~13\) # (GND)))
-- \a[7]~15\ = CARRY((!\a[6]~13\) # (!r_reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(7),
	datad => VCC,
	cin => \a[6]~13\,
	combout => \a[7]~14_combout\,
	cout => \a[7]~15\);

-- Location: LCCOMB_X25_Y4_N28
\a[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \a[8]~16_combout\ = (r_reg(8) & (\a[7]~15\ $ (GND))) # (!r_reg(8) & (!\a[7]~15\ & VCC))
-- \a[8]~17\ = CARRY((r_reg(8) & !\a[7]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(8),
	datad => VCC,
	cin => \a[7]~15\,
	combout => \a[8]~16_combout\,
	cout => \a[8]~17\);

-- Location: LCCOMB_X25_Y4_N30
\a[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \a[9]~18_combout\ = \a[8]~17\ $ (r_reg(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_reg(9),
	cin => \a[8]~17\,
	combout => \a[9]~18_combout\);

-- Location: LCCOMB_X22_Y4_N14
\d[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[7]~8_combout\ = (r_reg(7) & (\d[6]~7\ $ (GND))) # (!r_reg(7) & (!\d[6]~7\ & VCC))
-- \d[7]~9\ = CARRY((r_reg(7) & !\d[6]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(7),
	datad => VCC,
	cin => \d[6]~7\,
	combout => \d[7]~8_combout\,
	cout => \d[7]~9\);

-- Location: LCCOMB_X22_Y4_N16
\d[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[8]~10_combout\ = (r_reg(8) & (!\d[7]~9\)) # (!r_reg(8) & ((\d[7]~9\) # (GND)))
-- \d[8]~11\ = CARRY((!\d[7]~9\) # (!r_reg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(8),
	datad => VCC,
	cin => \d[7]~9\,
	combout => \d[8]~10_combout\,
	cout => \d[8]~11\);

-- Location: LCCOMB_X22_Y4_N18
\d[9]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[9]~12_combout\ = \d[8]~11\ $ (!r_reg(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => r_reg(9),
	cin => \d[8]~11\,
	combout => \d[9]~12_combout\);

-- Location: LCFF_X24_Y4_N27
\r_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux0~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_reg(9));

-- Location: LCFF_X26_Y4_N21
\r_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux1~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_reg(8));

-- Location: LCCOMB_X27_Y4_N24
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\duty_ctrl~combout\(7) & (!\duty_ctrl~combout\(6) & (!\duty_ctrl~combout\(4) & !\duty_ctrl~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty_ctrl~combout\(7),
	datab => \duty_ctrl~combout\(6),
	datac => \duty_ctrl~combout\(4),
	datad => \duty_ctrl~combout\(5),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X24_Y4_N20
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\frec_ctrl~combout\(1) & (\frec_ctrl~combout\(0))) # (!\frec_ctrl~combout\(1) & ((\frec_ctrl~combout\(0) & (\b[9]~16_combout\)) # (!\frec_ctrl~combout\(0) & ((\a[9]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frec_ctrl~combout\(1),
	datab => \frec_ctrl~combout\(0),
	datac => \b[9]~16_combout\,
	datad => \a[9]~18_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X24_Y4_N26
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\frec_ctrl~combout\(1) & ((\Mux0~0_combout\ & ((\d[9]~12_combout\))) # (!\Mux0~0_combout\ & (\c[9]~14_combout\)))) # (!\frec_ctrl~combout\(1) & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[9]~14_combout\,
	datab => \frec_ctrl~combout\(1),
	datac => \Mux0~0_combout\,
	datad => \d[9]~12_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X26_Y4_N22
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\frec_ctrl~combout\(1) & ((\frec_ctrl~combout\(0)) # ((\c[8]~12_combout\)))) # (!\frec_ctrl~combout\(1) & (!\frec_ctrl~combout\(0) & ((\a[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frec_ctrl~combout\(1),
	datab => \frec_ctrl~combout\(0),
	datac => \c[8]~12_combout\,
	datad => \a[8]~16_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X26_Y4_N20
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\frec_ctrl~combout\(0) & ((\Mux1~0_combout\ & ((\d[8]~10_combout\))) # (!\Mux1~0_combout\ & (\b[8]~14_combout\)))) # (!\frec_ctrl~combout\(0) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[8]~14_combout\,
	datab => \frec_ctrl~combout\(0),
	datac => \d[8]~10_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty_ctrl[7]~I\ : cycloneii_io
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
	padio => ww_duty_ctrl(7),
	combout => \duty_ctrl~combout\(7));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty_ctrl[2]~I\ : cycloneii_io
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
	padio => ww_duty_ctrl(2),
	combout => \duty_ctrl~combout\(2));

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

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty_ctrl[3]~I\ : cycloneii_io
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
	padio => ww_duty_ctrl(3),
	combout => \duty_ctrl~combout\(3));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty_ctrl[1]~I\ : cycloneii_io
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
	padio => ww_duty_ctrl(1),
	combout => \duty_ctrl~combout\(1));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty_ctrl[0]~I\ : cycloneii_io
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
	padio => ww_duty_ctrl(0),
	combout => \duty_ctrl~combout\(0));

-- Location: LCCOMB_X27_Y4_N26
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\duty_ctrl~combout\(2) & (!\duty_ctrl~combout\(3) & (!\duty_ctrl~combout\(1) & !\duty_ctrl~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty_ctrl~combout\(2),
	datab => \duty_ctrl~combout\(3),
	datac => \duty_ctrl~combout\(1),
	datad => \duty_ctrl~combout\(0),
	combout => \Equal0~0_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty_ctrl[8]~I\ : cycloneii_io
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
	padio => ww_duty_ctrl(8),
	combout => \duty_ctrl~combout\(8));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty_ctrl[9]~I\ : cycloneii_io
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
	padio => ww_duty_ctrl(9),
	combout => \duty_ctrl~combout\(9));

-- Location: LCCOMB_X27_Y4_N30
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\duty_ctrl~combout\(8) & !\duty_ctrl~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \duty_ctrl~combout\(8),
	datac => \duty_ctrl~combout\(9),
	combout => \Equal0~2_combout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\frec_ctrl[0]~I\ : cycloneii_io
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
	padio => ww_frec_ctrl(0),
	combout => \frec_ctrl~combout\(0));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\frec_ctrl[1]~I\ : cycloneii_io
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
	padio => ww_frec_ctrl(1),
	combout => \frec_ctrl~combout\(1));

-- Location: LCCOMB_X25_Y4_N12
\a[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \a[0]~0_combout\ = r_reg(0) $ (VCC)
-- \a[0]~1\ = CARRY(r_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(0),
	datad => VCC,
	combout => \a[0]~0_combout\,
	cout => \a[0]~1\);

-- Location: LCCOMB_X25_Y4_N14
\a[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \a[1]~2_combout\ = (r_reg(1) & (!\a[0]~1\)) # (!r_reg(1) & ((\a[0]~1\) # (GND)))
-- \a[1]~3\ = CARRY((!\a[0]~1\) # (!r_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(1),
	datad => VCC,
	cin => \a[0]~1\,
	combout => \a[1]~2_combout\,
	cout => \a[1]~3\);

-- Location: LCCOMB_X24_Y4_N22
\r_reg[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_reg[1]~0_combout\ = (\frec_ctrl~combout\(1) & (r_reg(1))) # (!\frec_ctrl~combout\(1) & (((!\frec_ctrl~combout\(0) & \a[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(1),
	datab => \frec_ctrl~combout\(0),
	datac => \a[1]~2_combout\,
	datad => \frec_ctrl~combout\(1),
	combout => \r_reg[1]~0_combout\);

-- Location: LCCOMB_X24_Y4_N30
\r_reg[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_reg[1]~1_combout\ = (\r_reg[1]~0_combout\) # ((\b[1]~0_combout\ & (!\frec_ctrl~combout\(1) & \frec_ctrl~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~0_combout\,
	datab => \frec_ctrl~combout\(1),
	datac => \frec_ctrl~combout\(0),
	datad => \r_reg[1]~0_combout\,
	combout => \r_reg[1]~1_combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCFF_X24_Y4_N31
\r_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \r_reg[1]~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_reg(1));

-- Location: LCCOMB_X24_Y4_N2
\b[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b[2]~2_combout\ = (r_reg(2) & (!\b[1]~1\)) # (!r_reg(2) & ((\b[1]~1\) # (GND)))
-- \b[2]~3\ = CARRY((!\b[1]~1\) # (!r_reg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(2),
	datad => VCC,
	cin => \b[1]~1\,
	combout => \b[2]~2_combout\,
	cout => \b[2]~3\);

-- Location: LCCOMB_X26_Y4_N4
\c[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \c[2]~0_combout\ = r_reg(2) $ (VCC)
-- \c[2]~1\ = CARRY(r_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(2),
	datad => VCC,
	combout => \c[2]~0_combout\,
	cout => \c[2]~1\);

-- Location: LCCOMB_X25_Y4_N16
\a[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \a[2]~4_combout\ = (r_reg(2) & (\a[1]~3\ $ (GND))) # (!r_reg(2) & (!\a[1]~3\ & VCC))
-- \a[2]~5\ = CARRY((r_reg(2) & !\a[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(2),
	datad => VCC,
	cin => \a[1]~3\,
	combout => \a[2]~4_combout\,
	cout => \a[2]~5\);

-- Location: LCCOMB_X26_Y4_N24
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\frec_ctrl~combout\(1) & ((\frec_ctrl~combout\(0)) # ((\c[2]~0_combout\)))) # (!\frec_ctrl~combout\(1) & (!\frec_ctrl~combout\(0) & ((\a[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frec_ctrl~combout\(1),
	datab => \frec_ctrl~combout\(0),
	datac => \c[2]~0_combout\,
	datad => \a[2]~4_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X25_Y4_N0
\Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\frec_ctrl~combout\(0) & ((\Mux7~0_combout\ & ((r_reg(2)))) # (!\Mux7~0_combout\ & (\b[2]~2_combout\)))) # (!\frec_ctrl~combout\(0) & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frec_ctrl~combout\(0),
	datab => \b[2]~2_combout\,
	datac => r_reg(2),
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCFF_X25_Y4_N1
\r_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux7~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_reg(2));

-- Location: LCCOMB_X24_Y4_N4
\b[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b[3]~4_combout\ = (r_reg(3) & (\b[2]~3\ $ (GND))) # (!r_reg(3) & (!\b[2]~3\ & VCC))
-- \b[3]~5\ = CARRY((r_reg(3) & !\b[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(3),
	datad => VCC,
	cin => \b[2]~3\,
	combout => \b[3]~4_combout\,
	cout => \b[3]~5\);

-- Location: LCCOMB_X24_Y4_N6
\b[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b[4]~6_combout\ = (r_reg(4) & (!\b[3]~5\)) # (!r_reg(4) & ((\b[3]~5\) # (GND)))
-- \b[4]~7\ = CARRY((!\b[3]~5\) # (!r_reg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(4),
	datad => VCC,
	cin => \b[3]~5\,
	combout => \b[4]~6_combout\,
	cout => \b[4]~7\);

-- Location: LCCOMB_X22_Y4_N6
\d[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[3]~0_combout\ = r_reg(3) $ (VCC)
-- \d[3]~1\ = CARRY(r_reg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_reg(3),
	datad => VCC,
	combout => \d[3]~0_combout\,
	cout => \d[3]~1\);

-- Location: LCCOMB_X25_Y4_N18
\a[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \a[3]~6_combout\ = (r_reg(3) & (!\a[2]~5\)) # (!r_reg(3) & ((\a[2]~5\) # (GND)))
-- \a[3]~7\ = CARRY((!\a[2]~5\) # (!r_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(3),
	datad => VCC,
	cin => \a[2]~5\,
	combout => \a[3]~6_combout\,
	cout => \a[3]~7\);

-- Location: LCCOMB_X25_Y4_N2
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\frec_ctrl~combout\(0) & ((\frec_ctrl~combout\(1)) # ((\b[3]~4_combout\)))) # (!\frec_ctrl~combout\(0) & (!\frec_ctrl~combout\(1) & ((\a[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frec_ctrl~combout\(0),
	datab => \frec_ctrl~combout\(1),
	datac => \b[3]~4_combout\,
	datad => \a[3]~6_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X25_Y4_N6
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\frec_ctrl~combout\(1) & ((\Mux6~0_combout\ & ((\d[3]~0_combout\))) # (!\Mux6~0_combout\ & (\c[3]~2_combout\)))) # (!\frec_ctrl~combout\(1) & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[3]~2_combout\,
	datab => \frec_ctrl~combout\(1),
	datac => \d[3]~0_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCFF_X25_Y4_N7
\r_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux6~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_reg(3));

-- Location: LCCOMB_X22_Y4_N8
\d[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[4]~2_combout\ = (r_reg(4) & (!\d[3]~1\)) # (!r_reg(4) & ((\d[3]~1\) # (GND)))
-- \d[4]~3\ = CARRY((!\d[3]~1\) # (!r_reg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(4),
	datad => VCC,
	cin => \d[3]~1\,
	combout => \d[4]~2_combout\,
	cout => \d[4]~3\);

-- Location: LCCOMB_X25_Y4_N20
\a[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \a[4]~8_combout\ = (r_reg(4) & (\a[3]~7\ $ (GND))) # (!r_reg(4) & (!\a[3]~7\ & VCC))
-- \a[4]~9\ = CARRY((r_reg(4) & !\a[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(4),
	datad => VCC,
	cin => \a[3]~7\,
	combout => \a[4]~8_combout\,
	cout => \a[4]~9\);

-- Location: LCCOMB_X26_Y4_N8
\c[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \c[4]~4_combout\ = (r_reg(4) & (\c[3]~3\ $ (GND))) # (!r_reg(4) & (!\c[3]~3\ & VCC))
-- \c[4]~5\ = CARRY((r_reg(4) & !\c[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(4),
	datad => VCC,
	cin => \c[3]~3\,
	combout => \c[4]~4_combout\,
	cout => \c[4]~5\);

-- Location: LCCOMB_X26_Y4_N30
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\frec_ctrl~combout\(1) & ((\frec_ctrl~combout\(0)) # ((\c[4]~4_combout\)))) # (!\frec_ctrl~combout\(1) & (!\frec_ctrl~combout\(0) & (\a[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frec_ctrl~combout\(1),
	datab => \frec_ctrl~combout\(0),
	datac => \a[4]~8_combout\,
	datad => \c[4]~4_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X25_Y4_N8
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\frec_ctrl~combout\(0) & ((\Mux5~0_combout\ & ((\d[4]~2_combout\))) # (!\Mux5~0_combout\ & (\b[4]~6_combout\)))) # (!\frec_ctrl~combout\(0) & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frec_ctrl~combout\(0),
	datab => \b[4]~6_combout\,
	datac => \d[4]~2_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCFF_X25_Y4_N9
\r_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux5~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_reg(4));

-- Location: LCCOMB_X22_Y4_N10
\d[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[5]~4_combout\ = (r_reg(5) & (\d[4]~3\ $ (GND))) # (!r_reg(5) & (!\d[4]~3\ & VCC))
-- \d[5]~5\ = CARRY((r_reg(5) & !\d[4]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(5),
	datad => VCC,
	cin => \d[4]~3\,
	combout => \d[5]~4_combout\,
	cout => \d[5]~5\);

-- Location: LCCOMB_X25_Y4_N22
\a[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \a[5]~10_combout\ = (r_reg(5) & (!\a[4]~9\)) # (!r_reg(5) & ((\a[4]~9\) # (GND)))
-- \a[5]~11\ = CARRY((!\a[4]~9\) # (!r_reg(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(5),
	datad => VCC,
	cin => \a[4]~9\,
	combout => \a[5]~10_combout\,
	cout => \a[5]~11\);

-- Location: LCCOMB_X24_Y4_N8
\b[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b[5]~8_combout\ = (r_reg(5) & (\b[4]~7\ $ (GND))) # (!r_reg(5) & (!\b[4]~7\ & VCC))
-- \b[5]~9\ = CARRY((r_reg(5) & !\b[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(5),
	datad => VCC,
	cin => \b[4]~7\,
	combout => \b[5]~8_combout\,
	cout => \b[5]~9\);

-- Location: LCCOMB_X26_Y4_N28
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\frec_ctrl~combout\(1) & (((\frec_ctrl~combout\(0))))) # (!\frec_ctrl~combout\(1) & ((\frec_ctrl~combout\(0) & ((\b[5]~8_combout\))) # (!\frec_ctrl~combout\(0) & (\a[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frec_ctrl~combout\(1),
	datab => \a[5]~10_combout\,
	datac => \frec_ctrl~combout\(0),
	datad => \b[5]~8_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X26_Y4_N0
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\frec_ctrl~combout\(1) & ((\Mux4~0_combout\ & ((\d[5]~4_combout\))) # (!\Mux4~0_combout\ & (\c[5]~6_combout\)))) # (!\frec_ctrl~combout\(1) & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c[5]~6_combout\,
	datab => \frec_ctrl~combout\(1),
	datac => \d[5]~4_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCFF_X26_Y4_N1
\r_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux4~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_reg(5));

-- Location: LCCOMB_X22_Y4_N12
\d[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \d[6]~6_combout\ = (r_reg(6) & (!\d[5]~5\)) # (!r_reg(6) & ((\d[5]~5\) # (GND)))
-- \d[6]~7\ = CARRY((!\d[5]~5\) # (!r_reg(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(6),
	datad => VCC,
	cin => \d[5]~5\,
	combout => \d[6]~6_combout\,
	cout => \d[6]~7\);

-- Location: LCCOMB_X26_Y4_N12
\c[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \c[6]~8_combout\ = (r_reg(6) & (\c[5]~7\ $ (GND))) # (!r_reg(6) & (!\c[5]~7\ & VCC))
-- \c[6]~9\ = CARRY((r_reg(6) & !\c[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(6),
	datad => VCC,
	cin => \c[5]~7\,
	combout => \c[6]~8_combout\,
	cout => \c[6]~9\);

-- Location: LCCOMB_X25_Y4_N24
\a[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \a[6]~12_combout\ = (r_reg(6) & (\a[5]~11\ $ (GND))) # (!r_reg(6) & (!\a[5]~11\ & VCC))
-- \a[6]~13\ = CARRY((r_reg(6) & !\a[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(6),
	datad => VCC,
	cin => \a[5]~11\,
	combout => \a[6]~12_combout\,
	cout => \a[6]~13\);

-- Location: LCCOMB_X25_Y4_N4
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\frec_ctrl~combout\(0) & (\frec_ctrl~combout\(1))) # (!\frec_ctrl~combout\(0) & ((\frec_ctrl~combout\(1) & (\c[6]~8_combout\)) # (!\frec_ctrl~combout\(1) & ((\a[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frec_ctrl~combout\(0),
	datab => \frec_ctrl~combout\(1),
	datac => \c[6]~8_combout\,
	datad => \a[6]~12_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X24_Y4_N24
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\frec_ctrl~combout\(0) & ((\Mux3~0_combout\ & ((\d[6]~6_combout\))) # (!\Mux3~0_combout\ & (\b[6]~10_combout\)))) # (!\frec_ctrl~combout\(0) & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[6]~10_combout\,
	datab => \frec_ctrl~combout\(0),
	datac => \d[6]~6_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCFF_X24_Y4_N25
\r_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux3~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_reg(6));

-- Location: LCCOMB_X25_Y4_N10
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\frec_ctrl~combout\(0) & (((\frec_ctrl~combout\(1)) # (\b[7]~12_combout\)))) # (!\frec_ctrl~combout\(0) & (\a[7]~14_combout\ & (!\frec_ctrl~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frec_ctrl~combout\(0),
	datab => \a[7]~14_combout\,
	datac => \frec_ctrl~combout\(1),
	datad => \b[7]~12_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X26_Y4_N2
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\frec_ctrl~combout\(1) & ((\Mux2~0_combout\ & ((\d[7]~8_combout\))) # (!\Mux2~0_combout\ & (\c[7]~10_combout\)))) # (!\frec_ctrl~combout\(1) & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frec_ctrl~combout\(1),
	datab => \c[7]~10_combout\,
	datac => \d[7]~8_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCFF_X26_Y4_N3
\r_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Mux2~1_combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_reg(7));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty_ctrl[6]~I\ : cycloneii_io
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
	padio => ww_duty_ctrl(6),
	combout => \duty_ctrl~combout\(6));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty_ctrl[5]~I\ : cycloneii_io
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
	padio => ww_duty_ctrl(5),
	combout => \duty_ctrl~combout\(5));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\duty_ctrl[4]~I\ : cycloneii_io
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
	padio => ww_duty_ctrl(4),
	combout => \duty_ctrl~combout\(4));

-- Location: LCCOMB_X26_Y4_N26
\r_reg[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \r_reg[0]~2_combout\ = (\frec_ctrl~combout\(1) & (((r_reg(0))))) # (!\frec_ctrl~combout\(1) & ((\frec_ctrl~combout\(0) & (r_reg(0))) # (!\frec_ctrl~combout\(0) & ((\a[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \frec_ctrl~combout\(1),
	datab => \frec_ctrl~combout\(0),
	datac => r_reg(0),
	datad => \a[0]~0_combout\,
	combout => \r_reg[0]~2_combout\);

-- Location: LCFF_X25_Y4_N25
\r_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \r_reg[0]~2_combout\,
	aclr => \ALT_INV_reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => r_reg(0));

-- Location: LCCOMB_X27_Y4_N4
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\duty_ctrl~combout\(0) & !r_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty_ctrl~combout\(0),
	datab => r_reg(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X27_Y4_N6
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\duty_ctrl~combout\(1) & (r_reg(1) & !\LessThan0~1_cout\)) # (!\duty_ctrl~combout\(1) & ((r_reg(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty_ctrl~combout\(1),
	datab => r_reg(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X27_Y4_N8
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\duty_ctrl~combout\(2) & ((!\LessThan0~3_cout\) # (!r_reg(2)))) # (!\duty_ctrl~combout\(2) & (!r_reg(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty_ctrl~combout\(2),
	datab => r_reg(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X27_Y4_N10
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((r_reg(3) & ((!\LessThan0~5_cout\) # (!\duty_ctrl~combout\(3)))) # (!r_reg(3) & (!\duty_ctrl~combout\(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(3),
	datab => \duty_ctrl~combout\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X27_Y4_N12
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((r_reg(4) & (\duty_ctrl~combout\(4) & !\LessThan0~7_cout\)) # (!r_reg(4) & ((\duty_ctrl~combout\(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(4),
	datab => \duty_ctrl~combout\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X27_Y4_N14
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((r_reg(5) & ((!\LessThan0~9_cout\) # (!\duty_ctrl~combout\(5)))) # (!r_reg(5) & (!\duty_ctrl~combout\(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(5),
	datab => \duty_ctrl~combout\(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X27_Y4_N16
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((r_reg(6) & (\duty_ctrl~combout\(6) & !\LessThan0~11_cout\)) # (!r_reg(6) & ((\duty_ctrl~combout\(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(6),
	datab => \duty_ctrl~combout\(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X27_Y4_N18
\LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\duty_ctrl~combout\(7) & (r_reg(7) & !\LessThan0~13_cout\)) # (!\duty_ctrl~combout\(7) & ((r_reg(7)) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \duty_ctrl~combout\(7),
	datab => r_reg(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X27_Y4_N20
\LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((r_reg(8) & (\duty_ctrl~combout\(8) & !\LessThan0~15_cout\)) # (!r_reg(8) & ((\duty_ctrl~combout\(8)) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(8),
	datab => \duty_ctrl~combout\(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X27_Y4_N22
\LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = (r_reg(9) & (\LessThan0~17_cout\ & \duty_ctrl~combout\(9))) # (!r_reg(9) & ((\LessThan0~17_cout\) # (\duty_ctrl~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(9),
	datad => \duty_ctrl~combout\(9),
	cin => \LessThan0~17_cout\,
	combout => \LessThan0~18_combout\);

-- Location: LCCOMB_X27_Y4_N0
buf_next : cycloneii_lcell_comb
-- Equation(s):
-- \buf_next~combout\ = (\LessThan0~18_combout\) # ((\Equal0~1_combout\ & (\Equal0~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \LessThan0~18_combout\,
	combout => \buf_next~combout\);

-- Location: LCFF_X27_Y4_N1
buf_reg : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \buf_next~combout\,
	aclr => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \buf_reg~regout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pwm_out~I\ : cycloneii_io
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
	datain => \buf_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pwm_out);
END structure;


