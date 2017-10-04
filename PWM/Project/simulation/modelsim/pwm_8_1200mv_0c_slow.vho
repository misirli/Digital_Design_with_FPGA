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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/28/2017 10:39:56"

-- 
-- Device: Altera EP3C16F484C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pwm IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	ena : IN std_logic;
	duty : IN std_logic_vector(7 DOWNTO 0);
	pwm_out : OUT std_logic_vector(2 DOWNTO 0);
	pwm_n_out : OUT std_logic_vector(2 DOWNTO 0)
	);
END pwm;

-- Design Ports Information
-- pwm_out[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_out[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_out[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_n_out[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_n_out[1]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwm_n_out[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[5]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[2]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ena	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm IS
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
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_ena : std_logic;
SIGNAL ww_duty : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pwm_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_pwm_n_out : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm_out[0]~output_o\ : std_logic;
SIGNAL \pwm_out[1]~output_o\ : std_logic;
SIGNAL \pwm_out[2]~output_o\ : std_logic;
SIGNAL \pwm_n_out[0]~output_o\ : std_logic;
SIGNAL \pwm_n_out[1]~output_o\ : std_logic;
SIGNAL \pwm_n_out[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0][0]~q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \count[0][1]~q\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \count~18_combout\ : std_logic;
SIGNAL \count[0][2]~q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \count[0][3]~q\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \count~19_combout\ : std_logic;
SIGNAL \count[0][4]~q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \count~20_combout\ : std_logic;
SIGNAL \count[0][5]~q\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \count~21_combout\ : std_logic;
SIGNAL \count[0][6]~q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \count~22_combout\ : std_logic;
SIGNAL \count[0][7]~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \count~23_combout\ : std_logic;
SIGNAL \count[0][8]~q\ : std_logic;
SIGNAL \duty[6]~input_o\ : std_logic;
SIGNAL \duty[4]~input_o\ : std_logic;
SIGNAL \duty[5]~input_o\ : std_logic;
SIGNAL \duty[7]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][5]~0_combout\ : std_logic;
SIGNAL \duty[0]~input_o\ : std_logic;
SIGNAL \duty[1]~input_o\ : std_logic;
SIGNAL \duty[3]~input_o\ : std_logic;
SIGNAL \duty[2]~input_o\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][9]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][4]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~combout\ : std_logic;
SIGNAL \half_duty[0]~9_cout\ : std_logic;
SIGNAL \half_duty[0]~11_cout\ : std_logic;
SIGNAL \half_duty[0]~13_cout\ : std_logic;
SIGNAL \half_duty[0]~14_combout\ : std_logic;
SIGNAL \ena~input_o\ : std_logic;
SIGNAL \half_duty[0]~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][10]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][6]~combout\ : std_logic;
SIGNAL \half_duty[0]~15\ : std_logic;
SIGNAL \half_duty[1]~16_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][11]~9_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][10]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][9]~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][12]~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][8]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][11]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][7]~7_combout\ : std_logic;
SIGNAL \half_duty[1]~17\ : std_logic;
SIGNAL \half_duty[2]~20\ : std_logic;
SIGNAL \half_duty[3]~22\ : std_logic;
SIGNAL \half_duty[4]~24\ : std_logic;
SIGNAL \half_duty[5]~26\ : std_logic;
SIGNAL \half_duty[6]~27_combout\ : std_logic;
SIGNAL \half_duty[4]~23_combout\ : std_logic;
SIGNAL \half_duty[5]~25_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][12]~10_combout\ : std_logic;
SIGNAL \half_duty[6]~28\ : std_logic;
SIGNAL \half_duty[7]~29_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \half_duty[2]~19_combout\ : std_logic;
SIGNAL \half_duty[3]~21_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \pwm_out[0]~0_combout\ : std_logic;
SIGNAL \Add3~1_cout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \pwm_n_out[0]~0_combout\ : std_logic;
SIGNAL \pwm_out[0]~reg0_q\ : std_logic;
SIGNAL \count[1][0]~24_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \count[1][0]~q\ : std_logic;
SIGNAL \count[1][0]~25\ : std_logic;
SIGNAL \count[1][1]~26_combout\ : std_logic;
SIGNAL \count[1][1]~q\ : std_logic;
SIGNAL \count[1][1]~27\ : std_logic;
SIGNAL \count[1][2]~28_combout\ : std_logic;
SIGNAL \count[1][2]~q\ : std_logic;
SIGNAL \count[1][2]~29\ : std_logic;
SIGNAL \count[1][3]~30_combout\ : std_logic;
SIGNAL \count[1][3]~q\ : std_logic;
SIGNAL \count[1][3]~31\ : std_logic;
SIGNAL \count[1][4]~32_combout\ : std_logic;
SIGNAL \count[1][4]~q\ : std_logic;
SIGNAL \count[1][4]~33\ : std_logic;
SIGNAL \count[1][5]~34_combout\ : std_logic;
SIGNAL \count[1][5]~q\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \count[1][5]~35\ : std_logic;
SIGNAL \count[1][6]~36_combout\ : std_logic;
SIGNAL \count[1][6]~q\ : std_logic;
SIGNAL \count[1][6]~37\ : std_logic;
SIGNAL \count[1][7]~38_combout\ : std_logic;
SIGNAL \count[1][7]~q\ : std_logic;
SIGNAL \count[1][7]~39\ : std_logic;
SIGNAL \count[1][8]~40_combout\ : std_logic;
SIGNAL \count[1][8]~q\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \pwm_out[1]~1_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~4_combout\ : std_logic;
SIGNAL \pwm_n_out[1]~1_combout\ : std_logic;
SIGNAL \pwm_out[1]~reg0_q\ : std_logic;
SIGNAL \count[2][0]~42_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \count[2][0]~q\ : std_logic;
SIGNAL \count[2][0]~43\ : std_logic;
SIGNAL \count[2][1]~44_combout\ : std_logic;
SIGNAL \count[2][1]~q\ : std_logic;
SIGNAL \count[2][1]~45\ : std_logic;
SIGNAL \count[2][2]~46_combout\ : std_logic;
SIGNAL \count[2][2]~q\ : std_logic;
SIGNAL \count[2][2]~47\ : std_logic;
SIGNAL \count[2][3]~48_combout\ : std_logic;
SIGNAL \count[2][3]~q\ : std_logic;
SIGNAL \count[2][3]~49\ : std_logic;
SIGNAL \count[2][4]~50_combout\ : std_logic;
SIGNAL \count[2][4]~q\ : std_logic;
SIGNAL \count[2][4]~51\ : std_logic;
SIGNAL \count[2][5]~52_combout\ : std_logic;
SIGNAL \count[2][5]~q\ : std_logic;
SIGNAL \count[2][5]~53\ : std_logic;
SIGNAL \count[2][6]~54_combout\ : std_logic;
SIGNAL \count[2][6]~q\ : std_logic;
SIGNAL \count[2][6]~55\ : std_logic;
SIGNAL \count[2][7]~56_combout\ : std_logic;
SIGNAL \count[2][7]~q\ : std_logic;
SIGNAL \count[2][7]~57\ : std_logic;
SIGNAL \count[2][8]~58_combout\ : std_logic;
SIGNAL \count[2][8]~q\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal7~2_combout\ : std_logic;
SIGNAL \Equal7~3_combout\ : std_logic;
SIGNAL \Equal7~4_combout\ : std_logic;
SIGNAL \Equal7~5_combout\ : std_logic;
SIGNAL \pwm_out[2]~2_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal8~3_combout\ : std_logic;
SIGNAL \Equal8~2_combout\ : std_logic;
SIGNAL \Equal8~4_combout\ : std_logic;
SIGNAL \pwm_n_out[2]~2_combout\ : std_logic;
SIGNAL \pwm_out[2]~reg0_q\ : std_logic;
SIGNAL \pwm_n_out[0]~reg0_q\ : std_logic;
SIGNAL \pwm_n_out[1]~reg0_q\ : std_logic;
SIGNAL \pwm_n_out[2]~reg0_q\ : std_logic;
SIGNAL half_duty : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_ena <= ena;
ww_duty <= duty;
pwm_out <= ww_pwm_out;
pwm_n_out <= ww_pwm_n_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

-- Location: IOOBUF_X14_Y0_N16
\pwm_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_out[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\pwm_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_out[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\pwm_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_out[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\pwm_n_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_n_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_n_out[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\pwm_n_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_n_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_n_out[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\pwm_n_out[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_n_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pwm_n_out[2]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X11_Y12_N6
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \count[0][0]~q\ $ (VCC)
-- \Add0~1\ = CARRY(\count[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][0]~q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X0_Y14_N8
\reset_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: CLKCTRL_G2
\reset_n~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~inputclkctrl_outclk\);

-- Location: FF_X11_Y12_N7
\count[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][0]~q\);

-- Location: LCCOMB_X11_Y12_N8
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\count[0][1]~q\ & (!\Add0~1\)) # (!\count[0][1]~q\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\count[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[0][1]~q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X11_Y12_N9
\count[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][1]~q\);

-- Location: LCCOMB_X11_Y12_N10
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\count[0][2]~q\ & (\Add0~3\ $ (GND))) # (!\count[0][2]~q\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\count[0][2]~q\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[0][2]~q\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X11_Y12_N0
\count~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~18_combout\ = (\Add0~4_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \Equal0~2_combout\,
	combout => \count~18_combout\);

-- Location: FF_X11_Y12_N1
\count[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~18_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][2]~q\);

-- Location: LCCOMB_X11_Y12_N12
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\count[0][3]~q\ & (!\Add0~5\)) # (!\count[0][3]~q\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\count[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][3]~q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X11_Y12_N13
\count[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][3]~q\);

-- Location: LCCOMB_X11_Y12_N14
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\count[0][4]~q\ & (\Add0~7\ $ (GND))) # (!\count[0][4]~q\ & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((\count[0][4]~q\ & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[0][4]~q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X11_Y12_N2
\count~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~19_combout\ = (\Add0~8_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \Equal0~2_combout\,
	combout => \count~19_combout\);

-- Location: FF_X11_Y12_N3
\count[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~19_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][4]~q\);

-- Location: LCCOMB_X11_Y12_N16
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\count[0][5]~q\ & (!\Add0~9\)) # (!\count[0][5]~q\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\count[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[0][5]~q\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X11_Y12_N28
\count~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~20_combout\ = (\Add0~10_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datad => \Equal0~2_combout\,
	combout => \count~20_combout\);

-- Location: FF_X11_Y12_N29
\count[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~20_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][5]~q\);

-- Location: LCCOMB_X11_Y12_N18
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\count[0][6]~q\ & (\Add0~11\ $ (GND))) # (!\count[0][6]~q\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\count[0][6]~q\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[0][6]~q\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X12_Y12_N8
\count~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~21_combout\ = (\Add0~12_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => \Equal0~2_combout\,
	combout => \count~21_combout\);

-- Location: FF_X12_Y12_N9
\count[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~21_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][6]~q\);

-- Location: LCCOMB_X12_Y12_N30
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\count[0][0]~q\ & (\count[0][6]~q\ & \count[0][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count[0][0]~q\,
	datac => \count[0][6]~q\,
	datad => \count[0][8]~q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X11_Y12_N20
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\count[0][7]~q\ & (!\Add0~13\)) # (!\count[0][7]~q\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\count[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[0][7]~q\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X11_Y12_N4
\count~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~22_combout\ = (\Add0~14_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => \Equal0~2_combout\,
	combout => \count~22_combout\);

-- Location: FF_X11_Y12_N5
\count[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~22_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][7]~q\);

-- Location: LCCOMB_X11_Y12_N26
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\count[0][3]~q\ & (\count[0][7]~q\ & (\count[0][1]~q\ & \count[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][3]~q\,
	datab => \count[0][7]~q\,
	datac => \count[0][1]~q\,
	datad => \count[0][5]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X11_Y12_N24
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\count[0][4]~q\ & (!\count[0][2]~q\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][4]~q\,
	datab => \count[0][2]~q\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X11_Y12_N22
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = \count[0][8]~q\ $ (!\Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[0][8]~q\,
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X12_Y12_N10
\count~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~23_combout\ = (!\Equal0~2_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datad => \Add0~16_combout\,
	combout => \count~23_combout\);

-- Location: FF_X12_Y12_N11
\count[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~23_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[0][8]~q\);

-- Location: IOIBUF_X19_Y0_N1
\duty[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(6),
	o => \duty[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\duty[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(4),
	o => \duty[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\duty[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(5),
	o => \duty[5]~input_o\);

-- Location: IOIBUF_X41_Y11_N1
\duty[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(7),
	o => \duty[7]~input_o\);

-- Location: LCCOMB_X19_Y11_N6
\Mult0|mult_core|romout[1][5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][5]~0_combout\ = \duty[5]~input_o\ $ (\duty[7]~input_o\ $ (((!\duty[6]~input_o\ & \duty[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[6]~input_o\,
	datab => \duty[4]~input_o\,
	datac => \duty[5]~input_o\,
	datad => \duty[7]~input_o\,
	combout => \Mult0|mult_core|romout[1][5]~0_combout\);

-- Location: IOIBUF_X16_Y0_N8
\duty[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(0),
	o => \duty[0]~input_o\);

-- Location: IOIBUF_X41_Y10_N8
\duty[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(1),
	o => \duty[1]~input_o\);

-- Location: IOIBUF_X41_Y10_N15
\duty[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(3),
	o => \duty[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\duty[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty(2),
	o => \duty[2]~input_o\);

-- Location: LCCOMB_X16_Y10_N18
\Mult0|mult_core|romout[0][9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][9]~1_combout\ = (!\duty[0]~input_o\ & ((\duty[1]~input_o\) # ((\duty[3]~input_o\) # (\duty[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[0]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Mult0|mult_core|romout[0][9]~1_combout\);

-- Location: LCCOMB_X16_Y10_N8
\Mult0|mult_core|romout[0][8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~3_combout\ = (\duty[0]~input_o\) # ((\duty[1]~input_o\) # ((\duty[3]~input_o\) # (\duty[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[0]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Mult0|mult_core|romout[0][8]~3_combout\);

-- Location: LCCOMB_X19_Y11_N4
\Mult0|mult_core|romout[1][4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][4]~2_combout\ = \duty[4]~input_o\ $ (\duty[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \duty[4]~input_o\,
	datac => \duty[6]~input_o\,
	combout => \Mult0|mult_core|romout[1][4]~2_combout\);

-- Location: LCCOMB_X16_Y10_N2
\Mult0|mult_core|romout[0][7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~4_combout\ = (\duty[3]~input_o\ & (!\duty[2]~input_o\ & ((!\duty[1]~input_o\) # (!\duty[0]~input_o\)))) # (!\duty[3]~input_o\ & ((\duty[0]~input_o\) # ((\duty[1]~input_o\) # (\duty[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[0]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Mult0|mult_core|romout[0][7]~4_combout\);

-- Location: LCCOMB_X16_Y10_N0
\Mult0|mult_core|romout[0][6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~combout\ = (\duty[1]~input_o\ & ((\duty[3]~input_o\ & ((\duty[0]~input_o\) # (\duty[2]~input_o\))) # (!\duty[3]~input_o\ & ((!\duty[2]~input_o\))))) # (!\duty[1]~input_o\ & ((\duty[2]~input_o\) # ((\duty[0]~input_o\ & 
-- !\duty[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[0]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Mult0|mult_core|romout[0][6]~combout\);

-- Location: LCCOMB_X16_Y11_N0
\half_duty[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_duty[0]~9_cout\ = CARRY((\duty[4]~input_o\ & \Mult0|mult_core|romout[0][6]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[4]~input_o\,
	datab => \Mult0|mult_core|romout[0][6]~combout\,
	datad => VCC,
	cout => \half_duty[0]~9_cout\);

-- Location: LCCOMB_X16_Y11_N2
\half_duty[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_duty[0]~11_cout\ = CARRY((\Mult0|mult_core|romout[0][7]~4_combout\ & (!\duty[5]~input_o\ & !\half_duty[0]~9_cout\)) # (!\Mult0|mult_core|romout[0][7]~4_combout\ & ((!\half_duty[0]~9_cout\) # (!\duty[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][7]~4_combout\,
	datab => \duty[5]~input_o\,
	datad => VCC,
	cin => \half_duty[0]~9_cout\,
	cout => \half_duty[0]~11_cout\);

-- Location: LCCOMB_X16_Y11_N4
\half_duty[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_duty[0]~13_cout\ = CARRY((\Mult0|mult_core|romout[0][8]~3_combout\ & ((\Mult0|mult_core|romout[1][4]~2_combout\) # (!\half_duty[0]~11_cout\))) # (!\Mult0|mult_core|romout[0][8]~3_combout\ & (\Mult0|mult_core|romout[1][4]~2_combout\ & 
-- !\half_duty[0]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][8]~3_combout\,
	datab => \Mult0|mult_core|romout[1][4]~2_combout\,
	datad => VCC,
	cin => \half_duty[0]~11_cout\,
	cout => \half_duty[0]~13_cout\);

-- Location: LCCOMB_X16_Y11_N6
\half_duty[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_duty[0]~14_combout\ = (\Mult0|mult_core|romout[1][5]~0_combout\ & ((\Mult0|mult_core|romout[0][9]~1_combout\ & (\half_duty[0]~13_cout\ & VCC)) # (!\Mult0|mult_core|romout[0][9]~1_combout\ & (!\half_duty[0]~13_cout\)))) # 
-- (!\Mult0|mult_core|romout[1][5]~0_combout\ & ((\Mult0|mult_core|romout[0][9]~1_combout\ & (!\half_duty[0]~13_cout\)) # (!\Mult0|mult_core|romout[0][9]~1_combout\ & ((\half_duty[0]~13_cout\) # (GND)))))
-- \half_duty[0]~15\ = CARRY((\Mult0|mult_core|romout[1][5]~0_combout\ & (!\Mult0|mult_core|romout[0][9]~1_combout\ & !\half_duty[0]~13_cout\)) # (!\Mult0|mult_core|romout[1][5]~0_combout\ & ((!\half_duty[0]~13_cout\) # 
-- (!\Mult0|mult_core|romout[0][9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][5]~0_combout\,
	datab => \Mult0|mult_core|romout[0][9]~1_combout\,
	datad => VCC,
	cin => \half_duty[0]~13_cout\,
	combout => \half_duty[0]~14_combout\,
	cout => \half_duty[0]~15\);

-- Location: IOIBUF_X16_Y0_N1
\ena~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ena,
	o => \ena~input_o\);

-- Location: LCCOMB_X16_Y11_N30
\half_duty[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_duty[0]~18_combout\ = (\reset_n~input_o\ & \ena~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => \ena~input_o\,
	combout => \half_duty[0]~18_combout\);

-- Location: FF_X16_Y12_N11
\half_duty[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \half_duty[0]~14_combout\,
	sload => VCC,
	ena => \half_duty[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty(0));

-- Location: LCCOMB_X16_Y10_N16
\Mult0|mult_core|romout[0][10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][10]~combout\ = (\duty[0]~input_o\ & (\duty[1]~input_o\)) # (!\duty[0]~input_o\ & (!\duty[1]~input_o\ & ((\duty[3]~input_o\) # (\duty[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[0]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Mult0|mult_core|romout[0][10]~combout\);

-- Location: LCCOMB_X19_Y11_N24
\Mult0|mult_core|romout[1][6]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][6]~combout\ = (\duty[6]~input_o\ & (((\duty[7]~input_o\) # (!\duty[5]~input_o\)))) # (!\duty[6]~input_o\ & ((\duty[4]~input_o\ & ((\duty[5]~input_o\) # (!\duty[7]~input_o\))) # (!\duty[4]~input_o\ & (\duty[5]~input_o\ & 
-- !\duty[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[6]~input_o\,
	datab => \duty[4]~input_o\,
	datac => \duty[5]~input_o\,
	datad => \duty[7]~input_o\,
	combout => \Mult0|mult_core|romout[1][6]~combout\);

-- Location: LCCOMB_X16_Y11_N8
\half_duty[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_duty[1]~16_combout\ = ((\Mult0|mult_core|romout[0][10]~combout\ $ (\Mult0|mult_core|romout[1][6]~combout\ $ (!\half_duty[0]~15\)))) # (GND)
-- \half_duty[1]~17\ = CARRY((\Mult0|mult_core|romout[0][10]~combout\ & ((\Mult0|mult_core|romout[1][6]~combout\) # (!\half_duty[0]~15\))) # (!\Mult0|mult_core|romout[0][10]~combout\ & (\Mult0|mult_core|romout[1][6]~combout\ & !\half_duty[0]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][10]~combout\,
	datab => \Mult0|mult_core|romout[1][6]~combout\,
	datad => VCC,
	cin => \half_duty[0]~15\,
	combout => \half_duty[1]~16_combout\,
	cout => \half_duty[1]~17\);

-- Location: FF_X16_Y12_N13
\half_duty[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \half_duty[1]~16_combout\,
	sload => VCC,
	ena => \half_duty[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty(1));

-- Location: LCCOMB_X14_Y12_N24
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (half_duty(0) & (\count[0][0]~q\ & (\count[0][1]~q\ $ (!half_duty(1))))) # (!half_duty(0) & (!\count[0][0]~q\ & (\count[0][1]~q\ $ (!half_duty(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => half_duty(0),
	datab => \count[0][0]~q\,
	datac => \count[0][1]~q\,
	datad => half_duty(1),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X19_Y11_N22
\Mult0|mult_core|romout[1][11]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][11]~9_combout\ = (\duty[6]~input_o\ & ((\duty[4]~input_o\) # ((\duty[5]~input_o\)))) # (!\duty[6]~input_o\ & (!\duty[4]~input_o\ & (!\duty[5]~input_o\ & \duty[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[6]~input_o\,
	datab => \duty[4]~input_o\,
	datac => \duty[5]~input_o\,
	datad => \duty[7]~input_o\,
	combout => \Mult0|mult_core|romout[1][11]~9_combout\);

-- Location: LCCOMB_X19_Y11_N18
\Mult0|mult_core|romout[1][10]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][10]~combout\ = (\duty[4]~input_o\ & (((\duty[5]~input_o\)))) # (!\duty[4]~input_o\ & (!\duty[5]~input_o\ & ((\duty[6]~input_o\) # (\duty[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[6]~input_o\,
	datab => \duty[4]~input_o\,
	datac => \duty[5]~input_o\,
	datad => \duty[7]~input_o\,
	combout => \Mult0|mult_core|romout[1][10]~combout\);

-- Location: LCCOMB_X19_Y11_N12
\Mult0|mult_core|romout[1][9]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][9]~8_combout\ = (!\duty[4]~input_o\ & ((\duty[6]~input_o\) # ((\duty[5]~input_o\) # (\duty[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[6]~input_o\,
	datab => \duty[4]~input_o\,
	datac => \duty[5]~input_o\,
	datad => \duty[7]~input_o\,
	combout => \Mult0|mult_core|romout[1][9]~8_combout\);

-- Location: LCCOMB_X16_Y10_N22
\Mult0|mult_core|romout[0][12]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][12]~6_combout\ = (\duty[3]~input_o\ & ((\duty[0]~input_o\) # ((\duty[1]~input_o\) # (\duty[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[0]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Mult0|mult_core|romout[0][12]~6_combout\);

-- Location: LCCOMB_X19_Y11_N10
\Mult0|mult_core|romout[1][8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][8]~5_combout\ = (\duty[6]~input_o\) # ((\duty[4]~input_o\) # ((\duty[5]~input_o\) # (\duty[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[6]~input_o\,
	datab => \duty[4]~input_o\,
	datac => \duty[5]~input_o\,
	datad => \duty[7]~input_o\,
	combout => \Mult0|mult_core|romout[1][8]~5_combout\);

-- Location: LCCOMB_X16_Y10_N12
\Mult0|mult_core|romout[0][11]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][11]~combout\ = (\duty[0]~input_o\ & (((\duty[2]~input_o\)))) # (!\duty[0]~input_o\ & ((\duty[1]~input_o\ & ((\duty[2]~input_o\))) # (!\duty[1]~input_o\ & (\duty[3]~input_o\ & !\duty[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[0]~input_o\,
	datab => \duty[1]~input_o\,
	datac => \duty[3]~input_o\,
	datad => \duty[2]~input_o\,
	combout => \Mult0|mult_core|romout[0][11]~combout\);

-- Location: LCCOMB_X19_Y11_N20
\Mult0|mult_core|romout[1][7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][7]~7_combout\ = (\duty[6]~input_o\ & (((!\duty[7]~input_o\)))) # (!\duty[6]~input_o\ & ((\duty[4]~input_o\ & ((!\duty[7]~input_o\) # (!\duty[5]~input_o\))) # (!\duty[4]~input_o\ & ((\duty[5]~input_o\) # (\duty[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[6]~input_o\,
	datab => \duty[4]~input_o\,
	datac => \duty[5]~input_o\,
	datad => \duty[7]~input_o\,
	combout => \Mult0|mult_core|romout[1][7]~7_combout\);

-- Location: LCCOMB_X16_Y11_N10
\half_duty[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_duty[2]~19_combout\ = (\Mult0|mult_core|romout[0][11]~combout\ & ((\Mult0|mult_core|romout[1][7]~7_combout\ & (\half_duty[1]~17\ & VCC)) # (!\Mult0|mult_core|romout[1][7]~7_combout\ & (!\half_duty[1]~17\)))) # 
-- (!\Mult0|mult_core|romout[0][11]~combout\ & ((\Mult0|mult_core|romout[1][7]~7_combout\ & (!\half_duty[1]~17\)) # (!\Mult0|mult_core|romout[1][7]~7_combout\ & ((\half_duty[1]~17\) # (GND)))))
-- \half_duty[2]~20\ = CARRY((\Mult0|mult_core|romout[0][11]~combout\ & (!\Mult0|mult_core|romout[1][7]~7_combout\ & !\half_duty[1]~17\)) # (!\Mult0|mult_core|romout[0][11]~combout\ & ((!\half_duty[1]~17\) # (!\Mult0|mult_core|romout[1][7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][11]~combout\,
	datab => \Mult0|mult_core|romout[1][7]~7_combout\,
	datad => VCC,
	cin => \half_duty[1]~17\,
	combout => \half_duty[2]~19_combout\,
	cout => \half_duty[2]~20\);

-- Location: LCCOMB_X16_Y11_N12
\half_duty[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_duty[3]~21_combout\ = ((\Mult0|mult_core|romout[0][12]~6_combout\ $ (\Mult0|mult_core|romout[1][8]~5_combout\ $ (!\half_duty[2]~20\)))) # (GND)
-- \half_duty[3]~22\ = CARRY((\Mult0|mult_core|romout[0][12]~6_combout\ & ((\Mult0|mult_core|romout[1][8]~5_combout\) # (!\half_duty[2]~20\))) # (!\Mult0|mult_core|romout[0][12]~6_combout\ & (\Mult0|mult_core|romout[1][8]~5_combout\ & !\half_duty[2]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][12]~6_combout\,
	datab => \Mult0|mult_core|romout[1][8]~5_combout\,
	datad => VCC,
	cin => \half_duty[2]~20\,
	combout => \half_duty[3]~21_combout\,
	cout => \half_duty[3]~22\);

-- Location: LCCOMB_X16_Y11_N14
\half_duty[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_duty[4]~23_combout\ = (\Mult0|mult_core|romout[1][9]~8_combout\ & (!\half_duty[3]~22\)) # (!\Mult0|mult_core|romout[1][9]~8_combout\ & ((\half_duty[3]~22\) # (GND)))
-- \half_duty[4]~24\ = CARRY((!\half_duty[3]~22\) # (!\Mult0|mult_core|romout[1][9]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][9]~8_combout\,
	datad => VCC,
	cin => \half_duty[3]~22\,
	combout => \half_duty[4]~23_combout\,
	cout => \half_duty[4]~24\);

-- Location: LCCOMB_X16_Y11_N16
\half_duty[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_duty[5]~25_combout\ = (\Mult0|mult_core|romout[1][10]~combout\ & (\half_duty[4]~24\ $ (GND))) # (!\Mult0|mult_core|romout[1][10]~combout\ & (!\half_duty[4]~24\ & VCC))
-- \half_duty[5]~26\ = CARRY((\Mult0|mult_core|romout[1][10]~combout\ & !\half_duty[4]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[1][10]~combout\,
	datad => VCC,
	cin => \half_duty[4]~24\,
	combout => \half_duty[5]~25_combout\,
	cout => \half_duty[5]~26\);

-- Location: LCCOMB_X16_Y11_N18
\half_duty[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_duty[6]~27_combout\ = (\Mult0|mult_core|romout[1][11]~9_combout\ & (!\half_duty[5]~26\)) # (!\Mult0|mult_core|romout[1][11]~9_combout\ & ((\half_duty[5]~26\) # (GND)))
-- \half_duty[6]~28\ = CARRY((!\half_duty[5]~26\) # (!\Mult0|mult_core|romout[1][11]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[1][11]~9_combout\,
	datad => VCC,
	cin => \half_duty[5]~26\,
	combout => \half_duty[6]~27_combout\,
	cout => \half_duty[6]~28\);

-- Location: FF_X16_Y12_N23
\half_duty[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \half_duty[6]~27_combout\,
	sload => VCC,
	ena => \half_duty[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty(6));

-- Location: FF_X16_Y12_N19
\half_duty[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \half_duty[4]~23_combout\,
	sload => VCC,
	ena => \half_duty[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty(4));

-- Location: FF_X16_Y12_N21
\half_duty[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \half_duty[5]~25_combout\,
	sload => VCC,
	ena => \half_duty[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty(5));

-- Location: LCCOMB_X15_Y12_N30
\Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (half_duty(4) & (\count[0][4]~q\ & (half_duty(5) $ (!\count[0][5]~q\)))) # (!half_duty(4) & (!\count[0][4]~q\ & (half_duty(5) $ (!\count[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => half_duty(4),
	datab => half_duty(5),
	datac => \count[0][4]~q\,
	datad => \count[0][5]~q\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X19_Y11_N8
\Mult0|mult_core|romout[1][12]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][12]~10_combout\ = (\duty[7]~input_o\ & ((\duty[6]~input_o\) # ((\duty[4]~input_o\) # (\duty[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty[6]~input_o\,
	datab => \duty[4]~input_o\,
	datac => \duty[5]~input_o\,
	datad => \duty[7]~input_o\,
	combout => \Mult0|mult_core|romout[1][12]~10_combout\);

-- Location: LCCOMB_X16_Y11_N20
\half_duty[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \half_duty[7]~29_combout\ = \half_duty[6]~28\ $ (!\Mult0|mult_core|romout[1][12]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|mult_core|romout[1][12]~10_combout\,
	cin => \half_duty[6]~28\,
	combout => \half_duty[7]~29_combout\);

-- Location: FF_X16_Y12_N25
\half_duty[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \half_duty[7]~29_combout\,
	sload => VCC,
	ena => \half_duty[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty(7));

-- Location: LCCOMB_X15_Y12_N16
\Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = half_duty(7) $ (\count[0][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => half_duty(7),
	datad => \count[0][7]~q\,
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X15_Y12_N26
\Equal3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (\Equal3~2_combout\ & (!\Equal3~3_combout\ & (half_duty(6) $ (!\count[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => half_duty(6),
	datab => \count[0][6]~q\,
	datac => \Equal3~2_combout\,
	datad => \Equal3~3_combout\,
	combout => \Equal3~4_combout\);

-- Location: FF_X16_Y12_N15
\half_duty[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \half_duty[2]~19_combout\,
	sload => VCC,
	ena => \half_duty[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty(2));

-- Location: FF_X16_Y12_N17
\half_duty[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \half_duty[3]~21_combout\,
	sload => VCC,
	ena => \half_duty[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => half_duty(3));

-- Location: LCCOMB_X15_Y12_N0
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (\count[0][3]~q\ & (half_duty(3) & (half_duty(2) $ (!\count[0][2]~q\)))) # (!\count[0][3]~q\ & (!half_duty(3) & (half_duty(2) $ (!\count[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][3]~q\,
	datab => half_duty(2),
	datac => \count[0][2]~q\,
	datad => half_duty(3),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X15_Y12_N18
\Equal3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (!\count[0][8]~q\ & (\Equal3~0_combout\ & (\Equal3~4_combout\ & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][8]~q\,
	datab => \Equal3~0_combout\,
	datac => \Equal3~4_combout\,
	datad => \Equal3~1_combout\,
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X15_Y12_N20
\pwm_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_out[0]~0_combout\ = !\Equal3~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal3~5_combout\,
	combout => \pwm_out[0]~0_combout\);

-- Location: LCCOMB_X16_Y12_N10
\Add3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~1_cout\ = CARRY(!half_duty(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => half_duty(0),
	datad => VCC,
	cout => \Add3~1_cout\);

-- Location: LCCOMB_X16_Y12_N12
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (half_duty(1) & ((\Add3~1_cout\) # (GND))) # (!half_duty(1) & (!\Add3~1_cout\))
-- \Add3~3\ = CARRY((half_duty(1)) # (!\Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => half_duty(1),
	datad => VCC,
	cin => \Add3~1_cout\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X16_Y12_N14
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (half_duty(2) & (\Add3~3\ $ (GND))) # (!half_duty(2) & ((GND) # (!\Add3~3\)))
-- \Add3~5\ = CARRY((!\Add3~3\) # (!half_duty(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => half_duty(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X16_Y12_N16
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (half_duty(3) & ((\Add3~5\) # (GND))) # (!half_duty(3) & (!\Add3~5\))
-- \Add3~7\ = CARRY((half_duty(3)) # (!\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => half_duty(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X16_Y12_N18
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (half_duty(4) & (\Add3~7\ $ (GND))) # (!half_duty(4) & ((GND) # (!\Add3~7\)))
-- \Add3~9\ = CARRY((!\Add3~7\) # (!half_duty(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => half_duty(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X16_Y12_N20
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (half_duty(5) & (!\Add3~9\)) # (!half_duty(5) & (\Add3~9\ & VCC))
-- \Add3~11\ = CARRY((half_duty(5) & !\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => half_duty(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X16_Y12_N22
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (half_duty(6) & (\Add3~11\ $ (GND))) # (!half_duty(6) & ((GND) # (!\Add3~11\)))
-- \Add3~13\ = CARRY((!\Add3~11\) # (!half_duty(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => half_duty(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X16_Y12_N24
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (half_duty(7) & (!\Add3~13\)) # (!half_duty(7) & (\Add3~13\ & VCC))
-- \Add3~15\ = CARRY((half_duty(7) & !\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => half_duty(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X16_Y12_N26
\Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = !\Add3~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add3~15\,
	combout => \Add3~16_combout\);

-- Location: LCCOMB_X15_Y12_N22
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\count[0][3]~q\ & (\Add3~6_combout\ & (\count[0][2]~q\ $ (!\Add3~4_combout\)))) # (!\count[0][3]~q\ & (!\Add3~6_combout\ & (\count[0][2]~q\ $ (!\Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][3]~q\,
	datab => \count[0][2]~q\,
	datac => \Add3~4_combout\,
	datad => \Add3~6_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X15_Y12_N8
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (\count[0][1]~q\ & (\Add3~2_combout\ & (half_duty(0) $ (!\count[0][0]~q\)))) # (!\count[0][1]~q\ & (!\Add3~2_combout\ & (half_duty(0) $ (!\count[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][1]~q\,
	datab => half_duty(0),
	datac => \Add3~2_combout\,
	datad => \count[0][0]~q\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X15_Y12_N4
\Equal4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (\count[0][4]~q\ & (\Add3~8_combout\ & (\count[0][5]~q\ $ (!\Add3~10_combout\)))) # (!\count[0][4]~q\ & (!\Add3~8_combout\ & (\count[0][5]~q\ $ (!\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][4]~q\,
	datab => \count[0][5]~q\,
	datac => \Add3~10_combout\,
	datad => \Add3~8_combout\,
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X15_Y12_N10
\Equal4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (\count[0][7]~q\ & (\Add3~14_combout\ & (\count[0][6]~q\ $ (!\Add3~12_combout\)))) # (!\count[0][7]~q\ & (!\Add3~14_combout\ & (\count[0][6]~q\ $ (!\Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][7]~q\,
	datab => \count[0][6]~q\,
	datac => \Add3~12_combout\,
	datad => \Add3~14_combout\,
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X15_Y12_N12
\Equal4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (\Equal4~1_combout\ & (\Equal4~0_combout\ & (\Equal4~2_combout\ & \Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Equal4~0_combout\,
	datac => \Equal4~2_combout\,
	datad => \Equal4~3_combout\,
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X15_Y12_N2
\pwm_n_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_n_out[0]~0_combout\ = (\Equal3~5_combout\) # ((\Equal4~4_combout\ & (\count[0][8]~q\ $ (!\Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][8]~q\,
	datab => \Equal3~5_combout\,
	datac => \Add3~16_combout\,
	datad => \Equal4~4_combout\,
	combout => \pwm_n_out[0]~0_combout\);

-- Location: FF_X15_Y12_N21
\pwm_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_out[0]~0_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \pwm_n_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_out[0]~reg0_q\);

-- Location: LCCOMB_X17_Y12_N10
\count[1][0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1][0]~24_combout\ = \count[1][0]~q\ $ (VCC)
-- \count[1][0]~25\ = CARRY(\count[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1][0]~q\,
	datad => VCC,
	combout => \count[1][0]~24_combout\,
	cout => \count[1][0]~25\);

-- Location: LCCOMB_X11_Y12_N30
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\count[0][3]~q\ & (!\count[0][5]~q\ & (!\count[0][4]~q\ & \count[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][3]~q\,
	datab => \count[0][5]~q\,
	datac => \count[0][4]~q\,
	datad => \count[0][2]~q\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X14_Y12_N26
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Equal0~1_combout\ & (!\count[0][1]~q\ & (!\count[0][7]~q\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \count[0][1]~q\,
	datac => \count[0][7]~q\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: FF_X17_Y12_N11
\count[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1][0]~24_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[1][0]~q\);

-- Location: LCCOMB_X17_Y12_N12
\count[1][1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1][1]~26_combout\ = (\count[1][1]~q\ & (!\count[1][0]~25\)) # (!\count[1][1]~q\ & ((\count[1][0]~25\) # (GND)))
-- \count[1][1]~27\ = CARRY((!\count[1][0]~25\) # (!\count[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[1][1]~q\,
	datad => VCC,
	cin => \count[1][0]~25\,
	combout => \count[1][1]~26_combout\,
	cout => \count[1][1]~27\);

-- Location: FF_X17_Y12_N13
\count[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1][1]~26_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[1][1]~q\);

-- Location: LCCOMB_X17_Y12_N14
\count[1][2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1][2]~28_combout\ = (\count[1][2]~q\ & (\count[1][1]~27\ $ (GND))) # (!\count[1][2]~q\ & (!\count[1][1]~27\ & VCC))
-- \count[1][2]~29\ = CARRY((\count[1][2]~q\ & !\count[1][1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[1][2]~q\,
	datad => VCC,
	cin => \count[1][1]~27\,
	combout => \count[1][2]~28_combout\,
	cout => \count[1][2]~29\);

-- Location: FF_X17_Y12_N15
\count[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1][2]~28_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[1][2]~q\);

-- Location: LCCOMB_X17_Y12_N16
\count[1][3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1][3]~30_combout\ = (\count[1][3]~q\ & (!\count[1][2]~29\)) # (!\count[1][3]~q\ & ((\count[1][2]~29\) # (GND)))
-- \count[1][3]~31\ = CARRY((!\count[1][2]~29\) # (!\count[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[1][3]~q\,
	datad => VCC,
	cin => \count[1][2]~29\,
	combout => \count[1][3]~30_combout\,
	cout => \count[1][3]~31\);

-- Location: FF_X17_Y12_N17
\count[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1][3]~30_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[1][3]~q\);

-- Location: LCCOMB_X17_Y12_N18
\count[1][4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1][4]~32_combout\ = (\count[1][4]~q\ & (\count[1][3]~31\ $ (GND))) # (!\count[1][4]~q\ & (!\count[1][3]~31\ & VCC))
-- \count[1][4]~33\ = CARRY((\count[1][4]~q\ & !\count[1][3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[1][4]~q\,
	datad => VCC,
	cin => \count[1][3]~31\,
	combout => \count[1][4]~32_combout\,
	cout => \count[1][4]~33\);

-- Location: FF_X17_Y12_N19
\count[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1][4]~32_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[1][4]~q\);

-- Location: LCCOMB_X17_Y12_N20
\count[1][5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1][5]~34_combout\ = (\count[1][5]~q\ & (!\count[1][4]~33\)) # (!\count[1][5]~q\ & ((\count[1][4]~33\) # (GND)))
-- \count[1][5]~35\ = CARRY((!\count[1][4]~33\) # (!\count[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[1][5]~q\,
	datad => VCC,
	cin => \count[1][4]~33\,
	combout => \count[1][5]~34_combout\,
	cout => \count[1][5]~35\);

-- Location: FF_X17_Y12_N21
\count[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1][5]~34_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[1][5]~q\);

-- Location: LCCOMB_X17_Y12_N6
\Equal5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (half_duty(5) & (\count[1][5]~q\ & (\count[1][4]~q\ $ (!half_duty(4))))) # (!half_duty(5) & (!\count[1][5]~q\ & (\count[1][4]~q\ $ (!half_duty(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => half_duty(5),
	datab => \count[1][4]~q\,
	datac => \count[1][5]~q\,
	datad => half_duty(4),
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X17_Y12_N22
\count[1][6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1][6]~36_combout\ = (\count[1][6]~q\ & (\count[1][5]~35\ $ (GND))) # (!\count[1][6]~q\ & (!\count[1][5]~35\ & VCC))
-- \count[1][6]~37\ = CARRY((\count[1][6]~q\ & !\count[1][5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[1][6]~q\,
	datad => VCC,
	cin => \count[1][5]~35\,
	combout => \count[1][6]~36_combout\,
	cout => \count[1][6]~37\);

-- Location: FF_X17_Y12_N23
\count[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1][6]~36_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[1][6]~q\);

-- Location: LCCOMB_X17_Y12_N24
\count[1][7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1][7]~38_combout\ = (\count[1][7]~q\ & (!\count[1][6]~37\)) # (!\count[1][7]~q\ & ((\count[1][6]~37\) # (GND)))
-- \count[1][7]~39\ = CARRY((!\count[1][6]~37\) # (!\count[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[1][7]~q\,
	datad => VCC,
	cin => \count[1][6]~37\,
	combout => \count[1][7]~38_combout\,
	cout => \count[1][7]~39\);

-- Location: FF_X17_Y12_N25
\count[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1][7]~38_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[1][7]~q\);

-- Location: LCCOMB_X17_Y12_N26
\count[1][8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1][8]~40_combout\ = \count[1][8]~q\ $ (!\count[1][7]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[1][8]~q\,
	cin => \count[1][7]~39\,
	combout => \count[1][8]~40_combout\);

-- Location: FF_X17_Y12_N27
\count[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1][8]~40_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[1][8]~q\);

-- Location: LCCOMB_X17_Y12_N0
\Equal5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (half_duty(7) & (\count[1][7]~q\ & (\count[1][6]~q\ $ (!half_duty(6))))) # (!half_duty(7) & (!\count[1][7]~q\ & (\count[1][6]~q\ $ (!half_duty(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => half_duty(7),
	datab => \count[1][7]~q\,
	datac => \count[1][6]~q\,
	datad => half_duty(6),
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X17_Y12_N8
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (half_duty(3) & (\count[1][3]~q\ & (\count[1][2]~q\ $ (!half_duty(2))))) # (!half_duty(3) & (!\count[1][3]~q\ & (\count[1][2]~q\ $ (!half_duty(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => half_duty(3),
	datab => \count[1][3]~q\,
	datac => \count[1][2]~q\,
	datad => half_duty(2),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X17_Y12_N30
\Equal5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = half_duty(1) $ (\count[1][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => half_duty(1),
	datad => \count[1][1]~q\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X17_Y12_N28
\Equal5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (\Equal5~0_combout\ & (!\Equal5~1_combout\ & (\count[1][0]~q\ $ (!half_duty(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1][0]~q\,
	datab => half_duty(0),
	datac => \Equal5~0_combout\,
	datad => \Equal5~1_combout\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X16_Y12_N6
\Equal5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = (\Equal5~3_combout\ & (!\count[1][8]~q\ & (\Equal5~4_combout\ & \Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \count[1][8]~q\,
	datac => \Equal5~4_combout\,
	datad => \Equal5~2_combout\,
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X16_Y12_N28
\pwm_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_out[1]~1_combout\ = !\Equal5~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal5~5_combout\,
	combout => \pwm_out[1]~1_combout\);

-- Location: LCCOMB_X17_Y12_N4
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\count[1][1]~q\ & (\Add3~2_combout\ & (\count[1][0]~q\ $ (!half_duty(0))))) # (!\count[1][1]~q\ & (!\Add3~2_combout\ & (\count[1][0]~q\ $ (!half_duty(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1][1]~q\,
	datab => \count[1][0]~q\,
	datac => half_duty(0),
	datad => \Add3~2_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X16_Y12_N4
\Equal6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (\count[1][5]~q\ & (\Add3~10_combout\ & (\count[1][4]~q\ $ (!\Add3~8_combout\)))) # (!\count[1][5]~q\ & (!\Add3~10_combout\ & (\count[1][4]~q\ $ (!\Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1][5]~q\,
	datab => \count[1][4]~q\,
	datac => \Add3~10_combout\,
	datad => \Add3~8_combout\,
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X16_Y12_N30
\Equal6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (\count[1][6]~q\ & (\Add3~12_combout\ & (\count[1][7]~q\ $ (!\Add3~14_combout\)))) # (!\count[1][6]~q\ & (!\Add3~12_combout\ & (\count[1][7]~q\ $ (!\Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[1][6]~q\,
	datab => \count[1][7]~q\,
	datac => \Add3~12_combout\,
	datad => \Add3~14_combout\,
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X17_Y12_N2
\Equal6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (\Add3~4_combout\ & (\count[1][2]~q\ & (\Add3~6_combout\ $ (!\count[1][3]~q\)))) # (!\Add3~4_combout\ & (!\count[1][2]~q\ & (\Add3~6_combout\ $ (!\count[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \count[1][2]~q\,
	datac => \Add3~6_combout\,
	datad => \count[1][3]~q\,
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X16_Y12_N0
\Equal6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~4_combout\ = (\Equal6~0_combout\ & (\Equal6~2_combout\ & (\Equal6~3_combout\ & \Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal6~2_combout\,
	datac => \Equal6~3_combout\,
	datad => \Equal6~1_combout\,
	combout => \Equal6~4_combout\);

-- Location: LCCOMB_X16_Y12_N8
\pwm_n_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_n_out[1]~1_combout\ = (\Equal5~5_combout\) # ((\Equal6~4_combout\ & (\count[1][8]~q\ $ (!\Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~5_combout\,
	datab => \count[1][8]~q\,
	datac => \Add3~16_combout\,
	datad => \Equal6~4_combout\,
	combout => \pwm_n_out[1]~1_combout\);

-- Location: FF_X16_Y12_N29
\pwm_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_out[1]~1_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \pwm_n_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_out[1]~reg0_q\);

-- Location: LCCOMB_X12_Y12_N12
\count[2][0]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2][0]~42_combout\ = \count[2][0]~q\ $ (VCC)
-- \count[2][0]~43\ = CARRY(\count[2][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2][0]~q\,
	datad => VCC,
	combout => \count[2][0]~42_combout\,
	cout => \count[2][0]~43\);

-- Location: LCCOMB_X15_Y12_N14
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\count[0][4]~q\ & (\count[0][2]~q\ & (!\count[0][6]~q\ & !\count[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0][4]~q\,
	datab => \count[0][2]~q\,
	datac => \count[0][6]~q\,
	datad => \count[0][8]~q\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X12_Y12_N6
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Equal0~0_combout\ & (!\count[0][0]~q\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \count[0][0]~q\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: FF_X12_Y12_N13
\count[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2][0]~42_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[2][0]~q\);

-- Location: LCCOMB_X12_Y12_N14
\count[2][1]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2][1]~44_combout\ = (\count[2][1]~q\ & (!\count[2][0]~43\)) # (!\count[2][1]~q\ & ((\count[2][0]~43\) # (GND)))
-- \count[2][1]~45\ = CARRY((!\count[2][0]~43\) # (!\count[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[2][1]~q\,
	datad => VCC,
	cin => \count[2][0]~43\,
	combout => \count[2][1]~44_combout\,
	cout => \count[2][1]~45\);

-- Location: FF_X12_Y12_N15
\count[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2][1]~44_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[2][1]~q\);

-- Location: LCCOMB_X12_Y12_N16
\count[2][2]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2][2]~46_combout\ = (\count[2][2]~q\ & (\count[2][1]~45\ $ (GND))) # (!\count[2][2]~q\ & (!\count[2][1]~45\ & VCC))
-- \count[2][2]~47\ = CARRY((\count[2][2]~q\ & !\count[2][1]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[2][2]~q\,
	datad => VCC,
	cin => \count[2][1]~45\,
	combout => \count[2][2]~46_combout\,
	cout => \count[2][2]~47\);

-- Location: FF_X12_Y12_N17
\count[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2][2]~46_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[2][2]~q\);

-- Location: LCCOMB_X12_Y12_N18
\count[2][3]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2][3]~48_combout\ = (\count[2][3]~q\ & (!\count[2][2]~47\)) # (!\count[2][3]~q\ & ((\count[2][2]~47\) # (GND)))
-- \count[2][3]~49\ = CARRY((!\count[2][2]~47\) # (!\count[2][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[2][3]~q\,
	datad => VCC,
	cin => \count[2][2]~47\,
	combout => \count[2][3]~48_combout\,
	cout => \count[2][3]~49\);

-- Location: FF_X12_Y12_N19
\count[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2][3]~48_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[2][3]~q\);

-- Location: LCCOMB_X12_Y12_N20
\count[2][4]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2][4]~50_combout\ = (\count[2][4]~q\ & (\count[2][3]~49\ $ (GND))) # (!\count[2][4]~q\ & (!\count[2][3]~49\ & VCC))
-- \count[2][4]~51\ = CARRY((\count[2][4]~q\ & !\count[2][3]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[2][4]~q\,
	datad => VCC,
	cin => \count[2][3]~49\,
	combout => \count[2][4]~50_combout\,
	cout => \count[2][4]~51\);

-- Location: FF_X12_Y12_N21
\count[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2][4]~50_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[2][4]~q\);

-- Location: LCCOMB_X12_Y12_N22
\count[2][5]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2][5]~52_combout\ = (\count[2][5]~q\ & (!\count[2][4]~51\)) # (!\count[2][5]~q\ & ((\count[2][4]~51\) # (GND)))
-- \count[2][5]~53\ = CARRY((!\count[2][4]~51\) # (!\count[2][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[2][5]~q\,
	datad => VCC,
	cin => \count[2][4]~51\,
	combout => \count[2][5]~52_combout\,
	cout => \count[2][5]~53\);

-- Location: FF_X12_Y12_N23
\count[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2][5]~52_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[2][5]~q\);

-- Location: LCCOMB_X12_Y12_N24
\count[2][6]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2][6]~54_combout\ = (\count[2][6]~q\ & (\count[2][5]~53\ $ (GND))) # (!\count[2][6]~q\ & (!\count[2][5]~53\ & VCC))
-- \count[2][6]~55\ = CARRY((\count[2][6]~q\ & !\count[2][5]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \count[2][6]~q\,
	datad => VCC,
	cin => \count[2][5]~53\,
	combout => \count[2][6]~54_combout\,
	cout => \count[2][6]~55\);

-- Location: FF_X12_Y12_N25
\count[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2][6]~54_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[2][6]~q\);

-- Location: LCCOMB_X12_Y12_N26
\count[2][7]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2][7]~56_combout\ = (\count[2][7]~q\ & (!\count[2][6]~55\)) # (!\count[2][7]~q\ & ((\count[2][6]~55\) # (GND)))
-- \count[2][7]~57\ = CARRY((!\count[2][6]~55\) # (!\count[2][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \count[2][7]~q\,
	datad => VCC,
	cin => \count[2][6]~55\,
	combout => \count[2][7]~56_combout\,
	cout => \count[2][7]~57\);

-- Location: FF_X12_Y12_N27
\count[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2][7]~56_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[2][7]~q\);

-- Location: LCCOMB_X12_Y12_N28
\count[2][8]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2][8]~58_combout\ = \count[2][7]~57\ $ (!\count[2][8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \count[2][8]~q\,
	cin => \count[2][7]~57\,
	combout => \count[2][8]~58_combout\);

-- Location: FF_X12_Y12_N29
\count[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2][8]~58_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	sclr => \Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count[2][8]~q\);

-- Location: LCCOMB_X15_Y12_N28
\Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\count[2][3]~q\ & (half_duty(3) & (half_duty(2) $ (!\count[2][2]~q\)))) # (!\count[2][3]~q\ & (!half_duty(3) & (half_duty(2) $ (!\count[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2][3]~q\,
	datab => half_duty(3),
	datac => half_duty(2),
	datad => \count[2][2]~q\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X14_Y12_N22
\Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (half_duty(0) & (\count[2][0]~q\ & (half_duty(1) $ (!\count[2][1]~q\)))) # (!half_duty(0) & (!\count[2][0]~q\ & (half_duty(1) $ (!\count[2][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => half_duty(0),
	datab => half_duty(1),
	datac => \count[2][0]~q\,
	datad => \count[2][1]~q\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X12_Y12_N4
\Equal7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~2_combout\ = (\count[2][7]~q\ & (half_duty(7) & (\count[2][6]~q\ $ (!half_duty(6))))) # (!\count[2][7]~q\ & (!half_duty(7) & (\count[2][6]~q\ $ (!half_duty(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2][7]~q\,
	datab => \count[2][6]~q\,
	datac => half_duty(6),
	datad => half_duty(7),
	combout => \Equal7~2_combout\);

-- Location: LCCOMB_X12_Y12_N2
\Equal7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~3_combout\ = \count[2][5]~q\ $ (half_duty(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \count[2][5]~q\,
	datad => half_duty(5),
	combout => \Equal7~3_combout\);

-- Location: LCCOMB_X12_Y12_N0
\Equal7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~4_combout\ = (\Equal7~2_combout\ & (!\Equal7~3_combout\ & (half_duty(4) $ (!\count[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => half_duty(4),
	datab => \count[2][4]~q\,
	datac => \Equal7~2_combout\,
	datad => \Equal7~3_combout\,
	combout => \Equal7~4_combout\);

-- Location: LCCOMB_X14_Y12_N14
\Equal7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~5_combout\ = (!\count[2][8]~q\ & (\Equal7~1_combout\ & (\Equal7~0_combout\ & \Equal7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2][8]~q\,
	datab => \Equal7~1_combout\,
	datac => \Equal7~0_combout\,
	datad => \Equal7~4_combout\,
	combout => \Equal7~5_combout\);

-- Location: LCCOMB_X14_Y12_N16
\pwm_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_out[2]~2_combout\ = !\Equal7~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal7~5_combout\,
	combout => \pwm_out[2]~2_combout\);

-- Location: LCCOMB_X15_Y12_N6
\Equal8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\count[2][3]~q\ & (\Add3~6_combout\ & (\count[2][2]~q\ $ (!\Add3~4_combout\)))) # (!\count[2][3]~q\ & (!\Add3~6_combout\ & (\count[2][2]~q\ $ (!\Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2][3]~q\,
	datab => \count[2][2]~q\,
	datac => \Add3~4_combout\,
	datad => \Add3~6_combout\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X14_Y12_N4
\Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (half_duty(0) & (\count[2][0]~q\ & (\count[2][1]~q\ $ (!\Add3~2_combout\)))) # (!half_duty(0) & (!\count[2][0]~q\ & (\count[2][1]~q\ $ (!\Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => half_duty(0),
	datab => \count[2][0]~q\,
	datac => \count[2][1]~q\,
	datad => \Add3~2_combout\,
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X16_Y12_N2
\Equal8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~3_combout\ = (\count[2][7]~q\ & (\Add3~14_combout\ & (\count[2][6]~q\ $ (!\Add3~12_combout\)))) # (!\count[2][7]~q\ & (!\Add3~14_combout\ & (\count[2][6]~q\ $ (!\Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2][7]~q\,
	datab => \count[2][6]~q\,
	datac => \Add3~12_combout\,
	datad => \Add3~14_combout\,
	combout => \Equal8~3_combout\);

-- Location: LCCOMB_X15_Y12_N24
\Equal8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~2_combout\ = (\count[2][5]~q\ & (\Add3~10_combout\ & (\count[2][4]~q\ $ (!\Add3~8_combout\)))) # (!\count[2][5]~q\ & (!\Add3~10_combout\ & (\count[2][4]~q\ $ (!\Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2][5]~q\,
	datab => \count[2][4]~q\,
	datac => \Add3~10_combout\,
	datad => \Add3~8_combout\,
	combout => \Equal8~2_combout\);

-- Location: LCCOMB_X14_Y12_N18
\Equal8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal8~4_combout\ = (\Equal8~1_combout\ & (\Equal8~0_combout\ & (\Equal8~3_combout\ & \Equal8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \Equal8~0_combout\,
	datac => \Equal8~3_combout\,
	datad => \Equal8~2_combout\,
	combout => \Equal8~4_combout\);

-- Location: LCCOMB_X14_Y12_N20
\pwm_n_out[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pwm_n_out[2]~2_combout\ = (\Equal7~5_combout\) # ((\Equal8~4_combout\ & (\count[2][8]~q\ $ (!\Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[2][8]~q\,
	datab => \Add3~16_combout\,
	datac => \Equal7~5_combout\,
	datad => \Equal8~4_combout\,
	combout => \pwm_n_out[2]~2_combout\);

-- Location: FF_X14_Y12_N17
\pwm_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pwm_out[2]~2_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \pwm_n_out[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_out[2]~reg0_q\);

-- Location: FF_X15_Y12_N19
\pwm_n_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal3~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \pwm_n_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_n_out[0]~reg0_q\);

-- Location: FF_X16_Y12_N7
\pwm_n_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal5~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \pwm_n_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_n_out[1]~reg0_q\);

-- Location: FF_X14_Y12_N15
\pwm_n_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal7~5_combout\,
	clrn => \reset_n~inputclkctrl_outclk\,
	ena => \pwm_n_out[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_n_out[2]~reg0_q\);

ww_pwm_out(0) <= \pwm_out[0]~output_o\;

ww_pwm_out(1) <= \pwm_out[1]~output_o\;

ww_pwm_out(2) <= \pwm_out[2]~output_o\;

ww_pwm_n_out(0) <= \pwm_n_out[0]~output_o\;

ww_pwm_n_out(1) <= \pwm_n_out[1]~output_o\;

ww_pwm_n_out(2) <= \pwm_n_out[2]~output_o\;
END structure;


