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

-- DATE "09/04/2024 10:10:11"

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

ENTITY 	labcalificado1 IS
    PORT (
	data_in : IN std_logic_vector(4 DOWNTO 0);
	cant_desp : IN std_logic_vector(1 DOWNTO 0);
	ope : IN std_logic;
	data_out : OUT std_logic_vector(4 DOWNTO 0)
	);
END labcalificado1;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[2]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[3]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_out[4]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data_in[3]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cant_desp[1]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cant_desp[0]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ope	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF labcalificado1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_in : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_cant_desp : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ope : std_logic;
SIGNAL ww_data_out : std_logic_vector(4 DOWNTO 0);
SIGNAL \data_out~0_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \ope~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \data_out~1_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \data_out~2_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \data_out~3_combout\ : std_logic;
SIGNAL \data_out~4_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \data_out~5_combout\ : std_logic;
SIGNAL \data_out~6_combout\ : std_logic;
SIGNAL \data_out~7_combout\ : std_logic;
SIGNAL \data_out~8_combout\ : std_logic;
SIGNAL \data_out~9_combout\ : std_logic;
SIGNAL \data_out~10_combout\ : std_logic;
SIGNAL \data_out~11_combout\ : std_logic;
SIGNAL \data_in~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \cant_desp~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_data_in <= data_in;
ww_cant_desp <= cant_desp;
ww_ope <= ope;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X14_Y2_N16
\data_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_out~0_combout\ = (!\cant_desp~combout\(0) & ((\cant_desp~combout\(1) & (\data_in~combout\(3))) # (!\cant_desp~combout\(1) & ((\data_in~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datab => \data_in~combout\(1),
	datac => \cant_desp~combout\(0),
	datad => \cant_desp~combout\(1),
	combout => \data_out~0_combout\);

-- Location: LCCOMB_X15_Y10_N28
\Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\cant_desp~combout\(1) & (\data_in~combout\(4))) # (!\cant_desp~combout\(1) & ((\data_in~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(4),
	datab => \cant_desp~combout\(1),
	datad => \data_in~combout\(2),
	combout => \Mux3~4_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ope~I\ : cycloneii_io
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
	padio => ww_ope,
	combout => \ope~combout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cant_desp[0]~I\ : cycloneii_io
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
	padio => ww_cant_desp(0),
	combout => \cant_desp~combout\(0));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cant_desp[1]~I\ : cycloneii_io
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
	padio => ww_cant_desp(1),
	combout => \cant_desp~combout\(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[0]~I\ : cycloneii_io
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
	padio => ww_data_in(0),
	combout => \data_in~combout\(0));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[2]~I\ : cycloneii_io
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
	padio => ww_data_in(2),
	combout => \data_in~combout\(2));

-- Location: LCCOMB_X15_Y10_N16
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\cant_desp~combout\(1) & (\data_in~combout\(0))) # (!\cant_desp~combout\(1) & ((\data_in~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cant_desp~combout\(1),
	datac => \data_in~combout\(0),
	datad => \data_in~combout\(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X14_Y2_N10
\data_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_out~1_combout\ = (!\ope~combout\ & ((\data_out~0_combout\) # ((\cant_desp~combout\(0) & \Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~0_combout\,
	datab => \ope~combout\,
	datac => \cant_desp~combout\(0),
	datad => \Mux3~0_combout\,
	combout => \data_out~1_combout\);

-- Location: LCCOMB_X15_Y10_N26
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\data_in~combout\(0) & !\cant_desp~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in~combout\(0),
	datad => \cant_desp~combout\(1),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X14_Y2_N12
\data_out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_out~2_combout\ = (\data_out~1_combout\) # ((\ope~combout\ & (!\cant_desp~combout\(0) & \Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~1_combout\,
	datab => \ope~combout\,
	datac => \cant_desp~combout\(0),
	datad => \Mux3~1_combout\,
	combout => \data_out~2_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[1]~I\ : cycloneii_io
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
	padio => ww_data_in(1),
	combout => \data_in~combout\(1));

-- Location: LCCOMB_X14_Y2_N6
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\data_in~combout\(1) & !\cant_desp~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_in~combout\(1),
	datad => \cant_desp~combout\(1),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X14_Y2_N0
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\cant_desp~combout\(1) & ((\data_in~combout\(1)))) # (!\cant_desp~combout\(1) & (\data_in~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datac => \data_in~combout\(1),
	datad => \cant_desp~combout\(1),
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X14_Y2_N2
\data_out~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_out~3_combout\ = (\ope~combout\ & (((\cant_desp~combout\(0))))) # (!\ope~combout\ & ((\cant_desp~combout\(0) & ((\Mux3~3_combout\))) # (!\cant_desp~combout\(0) & (\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \ope~combout\,
	datac => \cant_desp~combout\(0),
	datad => \Mux3~3_combout\,
	combout => \data_out~3_combout\);

-- Location: LCCOMB_X14_Y2_N4
\data_out~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_out~4_combout\ = (\data_out~3_combout\ & (((\Mux3~1_combout\) # (!\ope~combout\)))) # (!\data_out~3_combout\ & (\Mux3~2_combout\ & (\ope~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \data_out~3_combout\,
	datac => \ope~combout\,
	datad => \Mux3~1_combout\,
	combout => \data_out~4_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[3]~I\ : cycloneii_io
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
	padio => ww_data_in(3),
	combout => \data_in~combout\(3));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[4]~I\ : cycloneii_io
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
	padio => ww_data_in(4),
	combout => \data_in~combout\(4));

-- Location: LCCOMB_X14_Y2_N30
\Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\cant_desp~combout\(1) & ((\data_in~combout\(4)))) # (!\cant_desp~combout\(1) & (\data_in~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cant_desp~combout\(1),
	datab => \data_in~combout\(3),
	datad => \data_in~combout\(4),
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X15_Y10_N22
\Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\cant_desp~combout\(1) & ((\data_in~combout\(2)))) # (!\cant_desp~combout\(1) & (\data_in~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(4),
	datab => \cant_desp~combout\(1),
	datad => \data_in~combout\(2),
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X14_Y2_N8
\data_out~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_out~5_combout\ = (\ope~combout\ & (((\cant_desp~combout\(0))))) # (!\ope~combout\ & ((\cant_desp~combout\(0) & ((\Mux3~5_combout\))) # (!\cant_desp~combout\(0) & (\Mux3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ope~combout\,
	datab => \Mux3~6_combout\,
	datac => \cant_desp~combout\(0),
	datad => \Mux3~5_combout\,
	combout => \data_out~5_combout\);

-- Location: LCCOMB_X14_Y2_N18
\data_out~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_out~6_combout\ = (\ope~combout\ & ((\data_out~5_combout\ & (\Mux3~2_combout\)) # (!\data_out~5_combout\ & ((\Mux3~0_combout\))))) # (!\ope~combout\ & (((\data_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \ope~combout\,
	datac => \data_out~5_combout\,
	datad => \Mux3~0_combout\,
	combout => \data_out~6_combout\);

-- Location: LCCOMB_X14_Y2_N20
\data_out~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_out~7_combout\ = (\ope~combout\ & ((\cant_desp~combout\(0) & ((\Mux3~0_combout\))) # (!\cant_desp~combout\(0) & (\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ope~combout\,
	datab => \Mux3~3_combout\,
	datac => \cant_desp~combout\(0),
	datad => \Mux3~0_combout\,
	combout => \data_out~7_combout\);

-- Location: LCCOMB_X14_Y2_N14
\data_out~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_out~8_combout\ = (\cant_desp~combout\(1) & ((\cant_desp~combout\(0) & (\data_in~combout\(3))) # (!\cant_desp~combout\(0) & ((\data_in~combout\(4)))))) # (!\cant_desp~combout\(1) & (((\data_in~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cant_desp~combout\(1),
	datab => \data_in~combout\(3),
	datac => \cant_desp~combout\(0),
	datad => \data_in~combout\(4),
	combout => \data_out~8_combout\);

-- Location: LCCOMB_X14_Y2_N24
\data_out~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_out~9_combout\ = (\data_out~7_combout\) # ((!\ope~combout\ & \data_out~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_out~7_combout\,
	datab => \ope~combout\,
	datac => \data_out~8_combout\,
	combout => \data_out~9_combout\);

-- Location: LCCOMB_X14_Y2_N26
\data_out~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_out~10_combout\ = (\ope~combout\ & ((\cant_desp~combout\(0) & (\Mux3~3_combout\)) # (!\cant_desp~combout\(0) & ((\Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ope~combout\,
	datab => \Mux3~3_combout\,
	datac => \cant_desp~combout\(0),
	datad => \Mux3~5_combout\,
	combout => \data_out~10_combout\);

-- Location: LCCOMB_X14_Y2_N28
\data_out~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \data_out~11_combout\ = (\data_out~10_combout\) # ((\data_in~combout\(4) & !\ope~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(4),
	datab => \ope~combout\,
	datad => \data_out~10_combout\,
	combout => \data_out~11_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[0]~I\ : cycloneii_io
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
	datain => \data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(0));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[1]~I\ : cycloneii_io
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
	datain => \data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(1));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[2]~I\ : cycloneii_io
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
	datain => \data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[3]~I\ : cycloneii_io
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
	datain => \data_out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(3));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data_out[4]~I\ : cycloneii_io
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
	datain => \data_out~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data_out(4));
END structure;


