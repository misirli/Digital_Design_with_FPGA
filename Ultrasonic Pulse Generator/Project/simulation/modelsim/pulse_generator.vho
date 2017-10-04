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

-- DATE "10/03/2017 12:34:55"

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

ENTITY 	pulse_generator IS
    PORT (
	clk : IN std_logic;
	prf : IN std_logic;
	wav : IN std_logic_vector(1 DOWNTO 0);
	phase : IN std_logic;
	grnd : IN std_logic;
	enable : IN std_logic;
	np : IN std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	busy : BUFFER std_logic;
	InAout : BUFFER std_logic;
	InBout : BUFFER std_logic;
	InCout : BUFFER std_logic;
	InDout : BUFFER std_logic
	);
END pulse_generator;

-- Design Ports Information
-- busy	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InAout	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InBout	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InCout	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDout	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- phase	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prf	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- np[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- np[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- np[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- np[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- np[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- np[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- np[7]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- np[6]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wav[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wav[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- grnd	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pulse_generator IS
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
SIGNAL ww_prf : std_logic;
SIGNAL ww_wav : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_phase : std_logic;
SIGNAL ww_grnd : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_np : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL ww_InAout : std_logic;
SIGNAL ww_InBout : std_logic;
SIGNAL ww_InCout : std_logic;
SIGNAL ww_InDout : std_logic;
SIGNAL \InB_signal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \InA_signal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \InD_signal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \InC_signal~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \busy~output_o\ : std_logic;
SIGNAL \InAout~output_o\ : std_logic;
SIGNAL \InBout~output_o\ : std_logic;
SIGNAL \InCout~output_o\ : std_logic;
SIGNAL \InDout~output_o\ : std_logic;
SIGNAL \prf~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \flag~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \grnd~input_o\ : std_logic;
SIGNAL \wav[0]~input_o\ : std_logic;
SIGNAL \wav[1]~input_o\ : std_logic;
SIGNAL \process_2~2_combout\ : std_logic;
SIGNAL \np[3]~input_o\ : std_logic;
SIGNAL \np[2]~input_o\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \counter_chB[0]~21_combout\ : std_logic;
SIGNAL \counter_chB[1]~7_combout\ : std_logic;
SIGNAL \counter_chB[1]~8\ : std_logic;
SIGNAL \counter_chB[2]~9_combout\ : std_logic;
SIGNAL \counter_chB[2]~10\ : std_logic;
SIGNAL \counter_chB[3]~12\ : std_logic;
SIGNAL \counter_chB[4]~13_combout\ : std_logic;
SIGNAL \counter_chB[4]~14\ : std_logic;
SIGNAL \counter_chB[5]~15_combout\ : std_logic;
SIGNAL \np[7]~input_o\ : std_logic;
SIGNAL \np[6]~input_o\ : std_logic;
SIGNAL \np[5]~input_o\ : std_logic;
SIGNAL \np[4]~input_o\ : std_logic;
SIGNAL \np[0]~input_o\ : std_logic;
SIGNAL \np[1]~input_o\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \counter_chA[0]~21_combout\ : std_logic;
SIGNAL \counter_chA[1]~7_combout\ : std_logic;
SIGNAL \counter_chA[1]~8\ : std_logic;
SIGNAL \counter_chA[2]~9_combout\ : std_logic;
SIGNAL \counter_chA[2]~10\ : std_logic;
SIGNAL \counter_chA[3]~11_combout\ : std_logic;
SIGNAL \counter_chA[3]~12\ : std_logic;
SIGNAL \counter_chA[4]~14\ : std_logic;
SIGNAL \counter_chA[5]~15_combout\ : std_logic;
SIGNAL \counter_chA[5]~16\ : std_logic;
SIGNAL \counter_chA[6]~17_combout\ : std_logic;
SIGNAL \counter_chA[6]~18\ : std_logic;
SIGNAL \counter_chA[7]~19_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \InA_done~0_combout\ : std_logic;
SIGNAL \InA_done~1_combout\ : std_logic;
SIGNAL \InA_done~3_combout\ : std_logic;
SIGNAL \InA_done~2_combout\ : std_logic;
SIGNAL \InA_done~4_combout\ : std_logic;
SIGNAL \InA_done~5_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \InD_signal~feeder_combout\ : std_logic;
SIGNAL \InD_signal~q\ : std_logic;
SIGNAL \InD_signal~clkctrl_outclk\ : std_logic;
SIGNAL \counter_chD[0]~21_combout\ : std_logic;
SIGNAL \counter_chD[1]~7_combout\ : std_logic;
SIGNAL \counter_chD[1]~8\ : std_logic;
SIGNAL \counter_chD[2]~9_combout\ : std_logic;
SIGNAL \counter_chD[2]~10\ : std_logic;
SIGNAL \counter_chD[3]~11_combout\ : std_logic;
SIGNAL \counter_chD[3]~12\ : std_logic;
SIGNAL \counter_chD[4]~13_combout\ : std_logic;
SIGNAL \counter_chD[4]~14\ : std_logic;
SIGNAL \counter_chD[5]~15_combout\ : std_logic;
SIGNAL \counter_chD[5]~16\ : std_logic;
SIGNAL \counter_chD[6]~17_combout\ : std_logic;
SIGNAL \counter_chD[6]~18\ : std_logic;
SIGNAL \counter_chD[7]~19_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \process_7~11_combout\ : std_logic;
SIGNAL \process_7~12_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \process_7~7_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \process_7~8_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \process_7~9_combout\ : std_logic;
SIGNAL \process_7~10_combout\ : std_logic;
SIGNAL \process_7~2_combout\ : std_logic;
SIGNAL \process_7~1_combout\ : std_logic;
SIGNAL \process_7~0_combout\ : std_logic;
SIGNAL \process_7~3_combout\ : std_logic;
SIGNAL \process_7~4_combout\ : std_logic;
SIGNAL \process_7~6_combout\ : std_logic;
SIGNAL \process_7~5_combout\ : std_logic;
SIGNAL \InD_done~1_combout\ : std_logic;
SIGNAL \InD_done~0_combout\ : std_logic;
SIGNAL \InD_done~2_combout\ : std_logic;
SIGNAL \InD_done~3_combout\ : std_logic;
SIGNAL \InD_done~4_combout\ : std_logic;
SIGNAL \InC_signal~feeder_combout\ : std_logic;
SIGNAL \InC_signal~q\ : std_logic;
SIGNAL \InC_signal~clkctrl_outclk\ : std_logic;
SIGNAL \counter_chC[0]~21_combout\ : std_logic;
SIGNAL \counter_chC[1]~7_combout\ : std_logic;
SIGNAL \counter_chC[1]~8\ : std_logic;
SIGNAL \counter_chC[2]~9_combout\ : std_logic;
SIGNAL \counter_chC[2]~10\ : std_logic;
SIGNAL \counter_chC[3]~11_combout\ : std_logic;
SIGNAL \counter_chC[3]~12\ : std_logic;
SIGNAL \counter_chC[4]~13_combout\ : std_logic;
SIGNAL \process_7~20_combout\ : std_logic;
SIGNAL \process_7~19_combout\ : std_logic;
SIGNAL \process_7~21_combout\ : std_logic;
SIGNAL \counter_chC[4]~14\ : std_logic;
SIGNAL \counter_chC[5]~15_combout\ : std_logic;
SIGNAL \counter_chC[5]~16\ : std_logic;
SIGNAL \counter_chC[6]~17_combout\ : std_logic;
SIGNAL \counter_chC[6]~18\ : std_logic;
SIGNAL \counter_chC[7]~19_combout\ : std_logic;
SIGNAL \process_7~22_combout\ : std_logic;
SIGNAL \process_7~23_combout\ : std_logic;
SIGNAL \process_7~16_combout\ : std_logic;
SIGNAL \process_7~14_combout\ : std_logic;
SIGNAL \process_7~13_combout\ : std_logic;
SIGNAL \process_7~15_combout\ : std_logic;
SIGNAL \process_7~17_combout\ : std_logic;
SIGNAL \process_7~18_combout\ : std_logic;
SIGNAL \all_wave_done~1_combout\ : std_logic;
SIGNAL \all_wave_done~0_combout\ : std_logic;
SIGNAL \all_wave_done~2_combout\ : std_logic;
SIGNAL \all_wave_done~3_combout\ : std_logic;
SIGNAL \all_wave_done~4_combout\ : std_logic;
SIGNAL \all_wave_done~5_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \state.state1~q\ : std_logic;
SIGNAL \InA_signal~q\ : std_logic;
SIGNAL \InA_signal~clkctrl_outclk\ : std_logic;
SIGNAL \counter_chA[4]~13_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \counter_chB[5]~16\ : std_logic;
SIGNAL \counter_chB[6]~17_combout\ : std_logic;
SIGNAL \counter_chB[6]~18\ : std_logic;
SIGNAL \counter_chB[7]~19_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \state.state2~q\ : std_logic;
SIGNAL \InB_signal~feeder_combout\ : std_logic;
SIGNAL \InB_signal~q\ : std_logic;
SIGNAL \InB_signal~clkctrl_outclk\ : std_logic;
SIGNAL \counter_chB[3]~11_combout\ : std_logic;
SIGNAL \InA_InB_done~1_combout\ : std_logic;
SIGNAL \InA_InB_done~0_combout\ : std_logic;
SIGNAL \InA_InB_done~3_combout\ : std_logic;
SIGNAL \InA_InB_done~2_combout\ : std_logic;
SIGNAL \InA_InB_done~4_combout\ : std_logic;
SIGNAL \process_2~3_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \process_2~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \state.state3~q\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \state.state0~q\ : std_logic;
SIGNAL \clr_0~0_combout\ : std_logic;
SIGNAL \clr_0~q\ : std_logic;
SIGNAL \clr_1~combout\ : std_logic;
SIGNAL \flag~q\ : std_logic;
SIGNAL \phase~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \InCout~0_combout\ : std_logic;
SIGNAL \InDout~0_combout\ : std_logic;
SIGNAL counter_chD : std_logic_vector(7 DOWNTO 0);
SIGNAL counter_chC : std_logic_vector(7 DOWNTO 0);
SIGNAL counter_chB : std_logic_vector(7 DOWNTO 0);
SIGNAL counter_chA : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clr_1~combout\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_prf <= prf;
ww_wav <= wav;
ww_phase <= phase;
ww_grnd <= grnd;
ww_enable <= enable;
ww_np <= np;
ww_reset <= reset;
busy <= ww_busy;
InAout <= ww_InAout;
InBout <= ww_InBout;
InCout <= ww_InCout;
InDout <= ww_InDout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\InB_signal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \InB_signal~q\);

\InA_signal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \InA_signal~q\);

\InD_signal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \InD_signal~q\);

\InC_signal~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \InC_signal~q\);
\ALT_INV_clr_1~combout\ <= NOT \clr_1~combout\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;

-- Location: IOOBUF_X0_Y20_N9
\busy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flag~q\,
	devoe => ww_devoe,
	o => \busy~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\InAout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \InAout~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\InBout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \InBout~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\InCout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InCout~0_combout\,
	devoe => ww_devoe,
	o => \InCout~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\InDout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InDout~0_combout\,
	devoe => ww_devoe,
	o => \InDout~output_o\);

-- Location: IOIBUF_X0_Y23_N1
\prf~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_prf,
	o => \prf~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X3_Y27_N28
\flag~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \flag~0_combout\ = (\flag~q\) # (\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flag~q\,
	datad => \enable~input_o\,
	combout => \flag~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\grnd~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_grnd,
	o => \grnd~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\wav[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wav(0),
	o => \wav[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\wav[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wav(1),
	o => \wav[1]~input_o\);

-- Location: LCCOMB_X2_Y27_N18
\process_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~2_combout\ = (!\wav[0]~input_o\ & !\wav[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wav[0]~input_o\,
	datac => \wav[1]~input_o\,
	combout => \process_2~2_combout\);

-- Location: IOIBUF_X0_Y25_N1
\np[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_np(3),
	o => \np[3]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\np[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_np(2),
	o => \np[2]~input_o\);

-- Location: LCCOMB_X3_Y28_N22
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\state.state3~q\ & \grnd~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.state3~q\,
	datac => \grnd~input_o\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X2_Y28_N14
\counter_chB[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chB[0]~21_combout\ = !counter_chB(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_chB(0),
	combout => \counter_chB[0]~21_combout\);

-- Location: FF_X2_Y28_N15
\counter_chB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InB_signal~clkctrl_outclk\,
	d => \counter_chB[0]~21_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chB(0));

-- Location: LCCOMB_X2_Y28_N0
\counter_chB[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chB[1]~7_combout\ = (counter_chB(1) & (counter_chB(0) $ (VCC))) # (!counter_chB(1) & (counter_chB(0) & VCC))
-- \counter_chB[1]~8\ = CARRY((counter_chB(1) & counter_chB(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chB(1),
	datab => counter_chB(0),
	datad => VCC,
	combout => \counter_chB[1]~7_combout\,
	cout => \counter_chB[1]~8\);

-- Location: FF_X2_Y28_N1
\counter_chB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InB_signal~clkctrl_outclk\,
	d => \counter_chB[1]~7_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chB(1));

-- Location: LCCOMB_X2_Y28_N2
\counter_chB[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chB[2]~9_combout\ = (counter_chB(2) & (!\counter_chB[1]~8\)) # (!counter_chB(2) & ((\counter_chB[1]~8\) # (GND)))
-- \counter_chB[2]~10\ = CARRY((!\counter_chB[1]~8\) # (!counter_chB(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_chB(2),
	datad => VCC,
	cin => \counter_chB[1]~8\,
	combout => \counter_chB[2]~9_combout\,
	cout => \counter_chB[2]~10\);

-- Location: FF_X2_Y28_N3
\counter_chB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InB_signal~clkctrl_outclk\,
	d => \counter_chB[2]~9_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chB(2));

-- Location: LCCOMB_X2_Y28_N4
\counter_chB[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chB[3]~11_combout\ = (counter_chB(3) & (\counter_chB[2]~10\ $ (GND))) # (!counter_chB(3) & (!\counter_chB[2]~10\ & VCC))
-- \counter_chB[3]~12\ = CARRY((counter_chB(3) & !\counter_chB[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_chB(3),
	datad => VCC,
	cin => \counter_chB[2]~10\,
	combout => \counter_chB[3]~11_combout\,
	cout => \counter_chB[3]~12\);

-- Location: LCCOMB_X2_Y28_N6
\counter_chB[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chB[4]~13_combout\ = (counter_chB(4) & (!\counter_chB[3]~12\)) # (!counter_chB(4) & ((\counter_chB[3]~12\) # (GND)))
-- \counter_chB[4]~14\ = CARRY((!\counter_chB[3]~12\) # (!counter_chB(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_chB(4),
	datad => VCC,
	cin => \counter_chB[3]~12\,
	combout => \counter_chB[4]~13_combout\,
	cout => \counter_chB[4]~14\);

-- Location: FF_X2_Y28_N7
\counter_chB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InB_signal~clkctrl_outclk\,
	d => \counter_chB[4]~13_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chB(4));

-- Location: LCCOMB_X2_Y28_N8
\counter_chB[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chB[5]~15_combout\ = (counter_chB(5) & (\counter_chB[4]~14\ $ (GND))) # (!counter_chB(5) & (!\counter_chB[4]~14\ & VCC))
-- \counter_chB[5]~16\ = CARRY((counter_chB(5) & !\counter_chB[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_chB(5),
	datad => VCC,
	cin => \counter_chB[4]~14\,
	combout => \counter_chB[5]~15_combout\,
	cout => \counter_chB[5]~16\);

-- Location: FF_X2_Y28_N9
\counter_chB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InB_signal~clkctrl_outclk\,
	d => \counter_chB[5]~15_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chB(5));

-- Location: IOIBUF_X5_Y29_N29
\np[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_np(7),
	o => \np[7]~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\np[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_np(6),
	o => \np[6]~input_o\);

-- Location: IOIBUF_X5_Y29_N15
\np[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_np(5),
	o => \np[5]~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\np[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_np(4),
	o => \np[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\np[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_np(0),
	o => \np[0]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\np[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_np(1),
	o => \np[1]~input_o\);

-- Location: LCCOMB_X1_Y28_N8
\Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\np[0]~input_o\ & (\np[1]~input_o\ $ (VCC))) # (!\np[0]~input_o\ & (\np[1]~input_o\ & VCC))
-- \Add4~1\ = CARRY((\np[0]~input_o\ & \np[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[0]~input_o\,
	datab => \np[1]~input_o\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X1_Y28_N10
\Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\np[2]~input_o\ & (!\Add4~1\)) # (!\np[2]~input_o\ & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!\np[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \np[2]~input_o\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X1_Y28_N12
\Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\np[3]~input_o\ & (\Add4~3\ $ (GND))) # (!\np[3]~input_o\ & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((\np[3]~input_o\ & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \np[3]~input_o\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X1_Y28_N14
\Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\np[4]~input_o\ & (!\Add4~5\)) # (!\np[4]~input_o\ & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!\np[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \np[4]~input_o\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X1_Y28_N16
\Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\np[5]~input_o\ & (\Add4~7\ $ (GND))) # (!\np[5]~input_o\ & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((\np[5]~input_o\ & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \np[5]~input_o\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X1_Y28_N18
\Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\np[6]~input_o\ & (!\Add4~9\)) # (!\np[6]~input_o\ & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!\np[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \np[6]~input_o\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X1_Y28_N20
\Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\np[7]~input_o\ & (\Add4~11\ $ (GND))) # (!\np[7]~input_o\ & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((\np[7]~input_o\ & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \np[7]~input_o\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X1_Y28_N22
\Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = \Add4~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add4~13\,
	combout => \Add4~14_combout\);

-- Location: LCCOMB_X1_Y27_N8
\counter_chA[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chA[0]~21_combout\ = !counter_chA(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_chA(0),
	combout => \counter_chA[0]~21_combout\);

-- Location: FF_X1_Y27_N9
\counter_chA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InA_signal~clkctrl_outclk\,
	d => \counter_chA[0]~21_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chA(0));

-- Location: LCCOMB_X1_Y27_N16
\counter_chA[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chA[1]~7_combout\ = (counter_chA(1) & (counter_chA(0) $ (VCC))) # (!counter_chA(1) & (counter_chA(0) & VCC))
-- \counter_chA[1]~8\ = CARRY((counter_chA(1) & counter_chA(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chA(1),
	datab => counter_chA(0),
	datad => VCC,
	combout => \counter_chA[1]~7_combout\,
	cout => \counter_chA[1]~8\);

-- Location: FF_X1_Y27_N17
\counter_chA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InA_signal~clkctrl_outclk\,
	d => \counter_chA[1]~7_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chA(1));

-- Location: LCCOMB_X1_Y27_N18
\counter_chA[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chA[2]~9_combout\ = (counter_chA(2) & (!\counter_chA[1]~8\)) # (!counter_chA(2) & ((\counter_chA[1]~8\) # (GND)))
-- \counter_chA[2]~10\ = CARRY((!\counter_chA[1]~8\) # (!counter_chA(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_chA(2),
	datad => VCC,
	cin => \counter_chA[1]~8\,
	combout => \counter_chA[2]~9_combout\,
	cout => \counter_chA[2]~10\);

-- Location: FF_X1_Y27_N19
\counter_chA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InA_signal~clkctrl_outclk\,
	d => \counter_chA[2]~9_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chA(2));

-- Location: LCCOMB_X1_Y27_N20
\counter_chA[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chA[3]~11_combout\ = (counter_chA(3) & (\counter_chA[2]~10\ $ (GND))) # (!counter_chA(3) & (!\counter_chA[2]~10\ & VCC))
-- \counter_chA[3]~12\ = CARRY((counter_chA(3) & !\counter_chA[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_chA(3),
	datad => VCC,
	cin => \counter_chA[2]~10\,
	combout => \counter_chA[3]~11_combout\,
	cout => \counter_chA[3]~12\);

-- Location: FF_X1_Y27_N21
\counter_chA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InA_signal~clkctrl_outclk\,
	d => \counter_chA[3]~11_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chA(3));

-- Location: LCCOMB_X1_Y27_N22
\counter_chA[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chA[4]~13_combout\ = (counter_chA(4) & (!\counter_chA[3]~12\)) # (!counter_chA(4) & ((\counter_chA[3]~12\) # (GND)))
-- \counter_chA[4]~14\ = CARRY((!\counter_chA[3]~12\) # (!counter_chA(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_chA(4),
	datad => VCC,
	cin => \counter_chA[3]~12\,
	combout => \counter_chA[4]~13_combout\,
	cout => \counter_chA[4]~14\);

-- Location: LCCOMB_X1_Y27_N24
\counter_chA[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chA[5]~15_combout\ = (counter_chA(5) & (\counter_chA[4]~14\ $ (GND))) # (!counter_chA(5) & (!\counter_chA[4]~14\ & VCC))
-- \counter_chA[5]~16\ = CARRY((counter_chA(5) & !\counter_chA[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_chA(5),
	datad => VCC,
	cin => \counter_chA[4]~14\,
	combout => \counter_chA[5]~15_combout\,
	cout => \counter_chA[5]~16\);

-- Location: FF_X1_Y27_N25
\counter_chA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InA_signal~clkctrl_outclk\,
	d => \counter_chA[5]~15_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chA(5));

-- Location: LCCOMB_X1_Y27_N26
\counter_chA[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chA[6]~17_combout\ = (counter_chA(6) & (!\counter_chA[5]~16\)) # (!counter_chA(6) & ((\counter_chA[5]~16\) # (GND)))
-- \counter_chA[6]~18\ = CARRY((!\counter_chA[5]~16\) # (!counter_chA(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_chA(6),
	datad => VCC,
	cin => \counter_chA[5]~16\,
	combout => \counter_chA[6]~17_combout\,
	cout => \counter_chA[6]~18\);

-- Location: FF_X1_Y27_N27
\counter_chA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InA_signal~clkctrl_outclk\,
	d => \counter_chA[6]~17_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chA(6));

-- Location: LCCOMB_X1_Y27_N28
\counter_chA[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chA[7]~19_combout\ = \counter_chA[6]~18\ $ (!counter_chA(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter_chA(7),
	cin => \counter_chA[6]~18\,
	combout => \counter_chA[7]~19_combout\);

-- Location: FF_X1_Y27_N29
\counter_chA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InA_signal~clkctrl_outclk\,
	d => \counter_chA[7]~19_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chA(7));

-- Location: LCCOMB_X1_Y27_N14
\Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (\Add4~12_combout\ & (counter_chA(7) & (\Add4~10_combout\ $ (!counter_chA(6))))) # (!\Add4~12_combout\ & (!counter_chA(7) & (\Add4~10_combout\ $ (!counter_chA(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \Add4~10_combout\,
	datac => counter_chA(6),
	datad => counter_chA(7),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X1_Y27_N10
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Add4~6_combout\ & (counter_chA(4) & (\Add4~8_combout\ $ (!counter_chA(5))))) # (!\Add4~6_combout\ & (!counter_chA(4) & (\Add4~8_combout\ $ (!counter_chA(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~6_combout\,
	datab => \Add4~8_combout\,
	datac => counter_chA(4),
	datad => counter_chA(5),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X1_Y27_N6
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\np[0]~input_o\ & (!counter_chA(0) & (\Add4~0_combout\ $ (!counter_chA(1))))) # (!\np[0]~input_o\ & (counter_chA(0) & (\Add4~0_combout\ $ (!counter_chA(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[0]~input_o\,
	datab => \Add4~0_combout\,
	datac => counter_chA(0),
	datad => counter_chA(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X1_Y27_N12
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\Add4~2_combout\ & (counter_chA(2) & (counter_chA(3) $ (!\Add4~4_combout\)))) # (!\Add4~2_combout\ & (!counter_chA(2) & (counter_chA(3) $ (!\Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => counter_chA(3),
	datac => \Add4~4_combout\,
	datad => counter_chA(2),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X2_Y27_N14
\Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~3_combout\ & (\Equal2~2_combout\ & (\Equal2~0_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~3_combout\,
	datab => \Equal2~2_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X1_Y27_N2
\InA_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InA_done~0_combout\ = (\np[0]~input_o\ & (counter_chA(0) & (\np[1]~input_o\ $ (!counter_chA(1))))) # (!\np[0]~input_o\ & (!counter_chA(0) & (\np[1]~input_o\ $ (!counter_chA(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[0]~input_o\,
	datab => \np[1]~input_o\,
	datac => counter_chA(0),
	datad => counter_chA(1),
	combout => \InA_done~0_combout\);

-- Location: LCCOMB_X1_Y27_N4
\InA_done~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InA_done~1_combout\ = (\np[2]~input_o\ & (counter_chA(2) & (\np[3]~input_o\ $ (!counter_chA(3))))) # (!\np[2]~input_o\ & (!counter_chA(2) & (\np[3]~input_o\ $ (!counter_chA(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[2]~input_o\,
	datab => counter_chA(2),
	datac => \np[3]~input_o\,
	datad => counter_chA(3),
	combout => \InA_done~1_combout\);

-- Location: LCCOMB_X1_Y27_N0
\InA_done~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InA_done~3_combout\ = (\np[6]~input_o\ & (counter_chA(6) & (\np[7]~input_o\ $ (!counter_chA(7))))) # (!\np[6]~input_o\ & (!counter_chA(6) & (\np[7]~input_o\ $ (!counter_chA(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[6]~input_o\,
	datab => \np[7]~input_o\,
	datac => counter_chA(6),
	datad => counter_chA(7),
	combout => \InA_done~3_combout\);

-- Location: LCCOMB_X1_Y27_N30
\InA_done~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InA_done~2_combout\ = (\np[4]~input_o\ & (counter_chA(4) & (\np[5]~input_o\ $ (!counter_chA(5))))) # (!\np[4]~input_o\ & (!counter_chA(4) & (\np[5]~input_o\ $ (!counter_chA(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[4]~input_o\,
	datab => \np[5]~input_o\,
	datac => counter_chA(4),
	datad => counter_chA(5),
	combout => \InA_done~2_combout\);

-- Location: LCCOMB_X2_Y27_N0
\InA_done~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InA_done~4_combout\ = (\InA_done~0_combout\ & (\InA_done~1_combout\ & (\InA_done~3_combout\ & \InA_done~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA_done~0_combout\,
	datab => \InA_done~1_combout\,
	datac => \InA_done~3_combout\,
	datad => \InA_done~2_combout\,
	combout => \InA_done~4_combout\);

-- Location: LCCOMB_X2_Y27_N16
\InA_done~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InA_done~5_combout\ = (\wav[0]~input_o\ & (!\Add4~14_combout\ & (\Equal2~4_combout\))) # (!\wav[0]~input_o\ & (((\InA_done~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => \wav[0]~input_o\,
	datac => \Equal2~4_combout\,
	datad => \InA_done~4_combout\,
	combout => \InA_done~5_combout\);

-- Location: LCCOMB_X5_Y27_N8
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \np[0]~input_o\ $ (VCC)
-- \Add5~1\ = CARRY(\np[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \np[0]~input_o\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X5_Y27_N10
\Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\np[1]~input_o\ & (\Add5~1\ & VCC)) # (!\np[1]~input_o\ & (!\Add5~1\))
-- \Add5~3\ = CARRY((!\np[1]~input_o\ & !\Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \np[1]~input_o\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X5_Y27_N12
\Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\np[2]~input_o\ & ((GND) # (!\Add5~3\))) # (!\np[2]~input_o\ & (\Add5~3\ $ (GND)))
-- \Add5~5\ = CARRY((\np[2]~input_o\) # (!\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \np[2]~input_o\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X5_Y27_N14
\Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\np[3]~input_o\ & (\Add5~5\ & VCC)) # (!\np[3]~input_o\ & (!\Add5~5\))
-- \Add5~7\ = CARRY((!\np[3]~input_o\ & !\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \np[3]~input_o\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X5_Y27_N16
\Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\np[4]~input_o\ & ((GND) # (!\Add5~7\))) # (!\np[4]~input_o\ & (\Add5~7\ $ (GND)))
-- \Add5~9\ = CARRY((\np[4]~input_o\) # (!\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \np[4]~input_o\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X5_Y27_N18
\Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\np[5]~input_o\ & (\Add5~9\ & VCC)) # (!\np[5]~input_o\ & (!\Add5~9\))
-- \Add5~11\ = CARRY((!\np[5]~input_o\ & !\Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \np[5]~input_o\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X5_Y27_N20
\Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\np[6]~input_o\ & ((GND) # (!\Add5~11\))) # (!\np[6]~input_o\ & (\Add5~11\ $ (GND)))
-- \Add5~13\ = CARRY((\np[6]~input_o\) # (!\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \np[6]~input_o\,
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X3_Y28_N4
\InD_signal~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InD_signal~feeder_combout\ = \state.state3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.state3~q\,
	combout => \InD_signal~feeder_combout\);

-- Location: FF_X3_Y28_N5
InD_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \InD_signal~feeder_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InD_signal~q\);

-- Location: CLKCTRL_G2
\InD_signal~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \InD_signal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \InD_signal~clkctrl_outclk\);

-- Location: LCCOMB_X6_Y27_N28
\counter_chD[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chD[0]~21_combout\ = !counter_chD(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_chD(0),
	combout => \counter_chD[0]~21_combout\);

-- Location: FF_X6_Y27_N29
\counter_chD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InD_signal~clkctrl_outclk\,
	d => \counter_chD[0]~21_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chD(0));

-- Location: LCCOMB_X6_Y27_N4
\counter_chD[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chD[1]~7_combout\ = (counter_chD(0) & (counter_chD(1) $ (VCC))) # (!counter_chD(0) & (counter_chD(1) & VCC))
-- \counter_chD[1]~8\ = CARRY((counter_chD(0) & counter_chD(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chD(0),
	datab => counter_chD(1),
	datad => VCC,
	combout => \counter_chD[1]~7_combout\,
	cout => \counter_chD[1]~8\);

-- Location: FF_X6_Y27_N5
\counter_chD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InD_signal~clkctrl_outclk\,
	d => \counter_chD[1]~7_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chD(1));

-- Location: LCCOMB_X6_Y27_N6
\counter_chD[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chD[2]~9_combout\ = (counter_chD(2) & (!\counter_chD[1]~8\)) # (!counter_chD(2) & ((\counter_chD[1]~8\) # (GND)))
-- \counter_chD[2]~10\ = CARRY((!\counter_chD[1]~8\) # (!counter_chD(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_chD(2),
	datad => VCC,
	cin => \counter_chD[1]~8\,
	combout => \counter_chD[2]~9_combout\,
	cout => \counter_chD[2]~10\);

-- Location: FF_X6_Y27_N7
\counter_chD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InD_signal~clkctrl_outclk\,
	d => \counter_chD[2]~9_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chD(2));

-- Location: LCCOMB_X6_Y27_N8
\counter_chD[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chD[3]~11_combout\ = (counter_chD(3) & (\counter_chD[2]~10\ $ (GND))) # (!counter_chD(3) & (!\counter_chD[2]~10\ & VCC))
-- \counter_chD[3]~12\ = CARRY((counter_chD(3) & !\counter_chD[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_chD(3),
	datad => VCC,
	cin => \counter_chD[2]~10\,
	combout => \counter_chD[3]~11_combout\,
	cout => \counter_chD[3]~12\);

-- Location: FF_X6_Y27_N9
\counter_chD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InD_signal~clkctrl_outclk\,
	d => \counter_chD[3]~11_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chD(3));

-- Location: LCCOMB_X6_Y27_N10
\counter_chD[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chD[4]~13_combout\ = (counter_chD(4) & (!\counter_chD[3]~12\)) # (!counter_chD(4) & ((\counter_chD[3]~12\) # (GND)))
-- \counter_chD[4]~14\ = CARRY((!\counter_chD[3]~12\) # (!counter_chD(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_chD(4),
	datad => VCC,
	cin => \counter_chD[3]~12\,
	combout => \counter_chD[4]~13_combout\,
	cout => \counter_chD[4]~14\);

-- Location: FF_X6_Y27_N11
\counter_chD[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InD_signal~clkctrl_outclk\,
	d => \counter_chD[4]~13_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chD(4));

-- Location: LCCOMB_X6_Y27_N12
\counter_chD[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chD[5]~15_combout\ = (counter_chD(5) & (\counter_chD[4]~14\ $ (GND))) # (!counter_chD(5) & (!\counter_chD[4]~14\ & VCC))
-- \counter_chD[5]~16\ = CARRY((counter_chD(5) & !\counter_chD[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_chD(5),
	datad => VCC,
	cin => \counter_chD[4]~14\,
	combout => \counter_chD[5]~15_combout\,
	cout => \counter_chD[5]~16\);

-- Location: FF_X6_Y27_N13
\counter_chD[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InD_signal~clkctrl_outclk\,
	d => \counter_chD[5]~15_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chD(5));

-- Location: LCCOMB_X6_Y27_N14
\counter_chD[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chD[6]~17_combout\ = (counter_chD(6) & (!\counter_chD[5]~16\)) # (!counter_chD(6) & ((\counter_chD[5]~16\) # (GND)))
-- \counter_chD[6]~18\ = CARRY((!\counter_chD[5]~16\) # (!counter_chD(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_chD(6),
	datad => VCC,
	cin => \counter_chD[5]~16\,
	combout => \counter_chD[6]~17_combout\,
	cout => \counter_chD[6]~18\);

-- Location: FF_X6_Y27_N15
\counter_chD[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InD_signal~clkctrl_outclk\,
	d => \counter_chD[6]~17_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chD(6));

-- Location: LCCOMB_X6_Y27_N16
\counter_chD[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chD[7]~19_combout\ = counter_chD(7) $ (!\counter_chD[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_chD(7),
	cin => \counter_chD[6]~18\,
	combout => \counter_chD[7]~19_combout\);

-- Location: FF_X6_Y27_N17
\counter_chD[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InD_signal~clkctrl_outclk\,
	d => \counter_chD[7]~19_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chD(7));

-- Location: LCCOMB_X3_Y27_N22
\process_7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~11_combout\ = (counter_chD(6) & (\Add5~10_combout\ & (\Add5~8_combout\ $ (!counter_chD(5))))) # (!counter_chD(6) & (!\Add5~10_combout\ & (\Add5~8_combout\ $ (!counter_chD(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chD(6),
	datab => \Add5~8_combout\,
	datac => \Add5~10_combout\,
	datad => counter_chD(5),
	combout => \process_7~11_combout\);

-- Location: LCCOMB_X3_Y27_N26
\process_7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~12_combout\ = (\process_7~11_combout\ & (counter_chD(0) & (\Add5~12_combout\ $ (!counter_chD(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~12_combout\,
	datab => counter_chD(7),
	datac => \process_7~11_combout\,
	datad => counter_chD(0),
	combout => \process_7~12_combout\);

-- Location: LCCOMB_X5_Y27_N22
\Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (\np[7]~input_o\ & (\Add5~13\ & VCC)) # (!\np[7]~input_o\ & (!\Add5~13\))
-- \Add5~15\ = CARRY((!\np[7]~input_o\ & !\Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \np[7]~input_o\,
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X5_Y27_N24
\Add5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = !\Add5~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add5~15\,
	combout => \Add5~16_combout\);

-- Location: LCCOMB_X5_Y27_N0
\process_7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~7_combout\ = (\wav[1]~input_o\ & (\grnd~input_o\ & (!\Add5~14_combout\ & !\wav[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wav[1]~input_o\,
	datab => \grnd~input_o\,
	datac => \Add5~14_combout\,
	datad => \wav[0]~input_o\,
	combout => \process_7~7_combout\);

-- Location: LCCOMB_X5_Y27_N30
\process_7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~8_combout\ = (\Add5~2_combout\ & (counter_chD(2) & (\Add5~0_combout\ $ (!counter_chD(1))))) # (!\Add5~2_combout\ & (!counter_chD(2) & (\Add5~0_combout\ $ (!counter_chD(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \Add5~0_combout\,
	datac => counter_chD(2),
	datad => counter_chD(1),
	combout => \process_7~8_combout\);

-- Location: LCCOMB_X5_Y27_N28
\process_7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~9_combout\ = (\Add5~4_combout\ & (counter_chD(3) & (\Add5~6_combout\ $ (!counter_chD(4))))) # (!\Add5~4_combout\ & (!counter_chD(3) & (\Add5~6_combout\ $ (!counter_chD(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datab => \Add5~6_combout\,
	datac => counter_chD(4),
	datad => counter_chD(3),
	combout => \process_7~9_combout\);

-- Location: LCCOMB_X5_Y27_N6
\process_7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~10_combout\ = (\Add5~16_combout\ & (\process_7~7_combout\ & (\process_7~8_combout\ & \process_7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~16_combout\,
	datab => \process_7~7_combout\,
	datac => \process_7~8_combout\,
	datad => \process_7~9_combout\,
	combout => \process_7~10_combout\);

-- Location: LCCOMB_X6_Y27_N22
\process_7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~2_combout\ = (\np[4]~input_o\ & (counter_chD(5) & (\np[5]~input_o\ $ (!counter_chD(6))))) # (!\np[4]~input_o\ & (!counter_chD(5) & (\np[5]~input_o\ $ (!counter_chD(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[4]~input_o\,
	datab => \np[5]~input_o\,
	datac => counter_chD(6),
	datad => counter_chD(5),
	combout => \process_7~2_combout\);

-- Location: LCCOMB_X6_Y27_N20
\process_7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~1_combout\ = (\np[2]~input_o\ & (counter_chD(3) & (\np[3]~input_o\ $ (!counter_chD(4))))) # (!\np[2]~input_o\ & (!counter_chD(3) & (\np[3]~input_o\ $ (!counter_chD(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[2]~input_o\,
	datab => \np[3]~input_o\,
	datac => counter_chD(3),
	datad => counter_chD(4),
	combout => \process_7~1_combout\);

-- Location: LCCOMB_X6_Y27_N30
\process_7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~0_combout\ = (\np[0]~input_o\ & (counter_chD(1) & (\np[1]~input_o\ $ (!counter_chD(2))))) # (!\np[0]~input_o\ & (!counter_chD(1) & (\np[1]~input_o\ $ (!counter_chD(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[0]~input_o\,
	datab => \np[1]~input_o\,
	datac => counter_chD(1),
	datad => counter_chD(2),
	combout => \process_7~0_combout\);

-- Location: LCCOMB_X6_Y27_N0
\process_7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~3_combout\ = (!\np[7]~input_o\ & (\grnd~input_o\ & (\np[6]~input_o\ $ (!counter_chD(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[7]~input_o\,
	datab => \np[6]~input_o\,
	datac => \grnd~input_o\,
	datad => counter_chD(7),
	combout => \process_7~3_combout\);

-- Location: LCCOMB_X6_Y27_N18
\process_7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~4_combout\ = (\process_7~2_combout\ & (\process_7~1_combout\ & (\process_7~0_combout\ & \process_7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_7~2_combout\,
	datab => \process_7~1_combout\,
	datac => \process_7~0_combout\,
	datad => \process_7~3_combout\,
	combout => \process_7~4_combout\);

-- Location: LCCOMB_X3_Y27_N4
\process_7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~6_combout\ = (\wav[0]~input_o\ & (!\wav[1]~input_o\ & (counter_chD(0) & \process_7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wav[0]~input_o\,
	datab => \wav[1]~input_o\,
	datac => counter_chD(0),
	datad => \process_7~4_combout\,
	combout => \process_7~6_combout\);

-- Location: LCCOMB_X3_Y27_N10
\process_7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~5_combout\ = \wav[1]~input_o\ $ (\wav[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wav[1]~input_o\,
	datad => \wav[0]~input_o\,
	combout => \process_7~5_combout\);

-- Location: LCCOMB_X6_Y27_N26
\InD_done~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InD_done~1_combout\ = (!counter_chD(4) & (!counter_chD(3) & (!counter_chD(2) & !counter_chD(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chD(4),
	datab => counter_chD(3),
	datac => counter_chD(2),
	datad => counter_chD(5),
	combout => \InD_done~1_combout\);

-- Location: LCCOMB_X6_Y27_N2
\InD_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InD_done~0_combout\ = (!\grnd~input_o\ & (!counter_chD(1) & (\wav[1]~input_o\ $ (counter_chD(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grnd~input_o\,
	datab => \wav[1]~input_o\,
	datac => counter_chD(1),
	datad => counter_chD(0),
	combout => \InD_done~0_combout\);

-- Location: LCCOMB_X6_Y27_N24
\InD_done~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InD_done~2_combout\ = (!counter_chD(6) & (!counter_chD(7) & (\InD_done~1_combout\ & \InD_done~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chD(6),
	datab => counter_chD(7),
	datac => \InD_done~1_combout\,
	datad => \InD_done~0_combout\,
	combout => \InD_done~2_combout\);

-- Location: LCCOMB_X3_Y27_N20
\InD_done~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InD_done~3_combout\ = (\InD_done~2_combout\) # ((!\process_7~5_combout\ & (!counter_chD(0) & \process_7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_7~5_combout\,
	datab => counter_chD(0),
	datac => \InD_done~2_combout\,
	datad => \process_7~4_combout\,
	combout => \InD_done~3_combout\);

-- Location: LCCOMB_X3_Y27_N30
\InD_done~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InD_done~4_combout\ = (\InD_done~3_combout\) # (\process_7~6_combout\ $ (((\process_7~12_combout\ & \process_7~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_7~12_combout\,
	datab => \process_7~10_combout\,
	datac => \process_7~6_combout\,
	datad => \InD_done~3_combout\,
	combout => \InD_done~4_combout\);

-- Location: LCCOMB_X3_Y27_N24
\InC_signal~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InC_signal~feeder_combout\ = \state.state3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.state3~q\,
	combout => \InC_signal~feeder_combout\);

-- Location: FF_X3_Y27_N25
InC_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \InC_signal~feeder_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InC_signal~q\);

-- Location: CLKCTRL_G12
\InC_signal~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \InC_signal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \InC_signal~clkctrl_outclk\);

-- Location: LCCOMB_X4_Y27_N4
\counter_chC[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chC[0]~21_combout\ = !counter_chC(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_chC(0),
	combout => \counter_chC[0]~21_combout\);

-- Location: FF_X4_Y27_N5
\counter_chC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InC_signal~clkctrl_outclk\,
	d => \counter_chC[0]~21_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chC(0));

-- Location: LCCOMB_X4_Y27_N16
\counter_chC[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chC[1]~7_combout\ = (counter_chC(1) & (counter_chC(0) $ (VCC))) # (!counter_chC(1) & (counter_chC(0) & VCC))
-- \counter_chC[1]~8\ = CARRY((counter_chC(1) & counter_chC(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chC(1),
	datab => counter_chC(0),
	datad => VCC,
	combout => \counter_chC[1]~7_combout\,
	cout => \counter_chC[1]~8\);

-- Location: FF_X4_Y27_N17
\counter_chC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InC_signal~clkctrl_outclk\,
	d => \counter_chC[1]~7_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chC(1));

-- Location: LCCOMB_X4_Y27_N18
\counter_chC[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chC[2]~9_combout\ = (counter_chC(2) & (!\counter_chC[1]~8\)) # (!counter_chC(2) & ((\counter_chC[1]~8\) # (GND)))
-- \counter_chC[2]~10\ = CARRY((!\counter_chC[1]~8\) # (!counter_chC(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_chC(2),
	datad => VCC,
	cin => \counter_chC[1]~8\,
	combout => \counter_chC[2]~9_combout\,
	cout => \counter_chC[2]~10\);

-- Location: FF_X4_Y27_N19
\counter_chC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InC_signal~clkctrl_outclk\,
	d => \counter_chC[2]~9_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chC(2));

-- Location: LCCOMB_X4_Y27_N20
\counter_chC[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chC[3]~11_combout\ = (counter_chC(3) & (\counter_chC[2]~10\ $ (GND))) # (!counter_chC(3) & (!\counter_chC[2]~10\ & VCC))
-- \counter_chC[3]~12\ = CARRY((counter_chC(3) & !\counter_chC[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_chC(3),
	datad => VCC,
	cin => \counter_chC[2]~10\,
	combout => \counter_chC[3]~11_combout\,
	cout => \counter_chC[3]~12\);

-- Location: FF_X4_Y27_N21
\counter_chC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InC_signal~clkctrl_outclk\,
	d => \counter_chC[3]~11_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chC(3));

-- Location: LCCOMB_X4_Y27_N22
\counter_chC[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chC[4]~13_combout\ = (counter_chC(4) & (!\counter_chC[3]~12\)) # (!counter_chC(4) & ((\counter_chC[3]~12\) # (GND)))
-- \counter_chC[4]~14\ = CARRY((!\counter_chC[3]~12\) # (!counter_chC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_chC(4),
	datad => VCC,
	cin => \counter_chC[3]~12\,
	combout => \counter_chC[4]~13_combout\,
	cout => \counter_chC[4]~14\);

-- Location: FF_X4_Y27_N23
\counter_chC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InC_signal~clkctrl_outclk\,
	d => \counter_chC[4]~13_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chC(4));

-- Location: LCCOMB_X5_Y27_N4
\process_7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~20_combout\ = (\Add5~4_combout\ & (counter_chC(3) & (\Add5~6_combout\ $ (!counter_chC(4))))) # (!\Add5~4_combout\ & (!counter_chC(3) & (\Add5~6_combout\ $ (!counter_chC(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datab => \Add5~6_combout\,
	datac => counter_chC(3),
	datad => counter_chC(4),
	combout => \process_7~20_combout\);

-- Location: LCCOMB_X5_Y27_N2
\process_7~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~19_combout\ = (\Add5~2_combout\ & (counter_chC(2) & (\Add5~0_combout\ $ (!counter_chC(1))))) # (!\Add5~2_combout\ & (!counter_chC(2) & (\Add5~0_combout\ $ (!counter_chC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~2_combout\,
	datab => \Add5~0_combout\,
	datac => counter_chC(1),
	datad => counter_chC(2),
	combout => \process_7~19_combout\);

-- Location: LCCOMB_X5_Y27_N26
\process_7~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~21_combout\ = (\process_7~7_combout\ & (\Add5~16_combout\ & (\process_7~20_combout\ & \process_7~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_7~7_combout\,
	datab => \Add5~16_combout\,
	datac => \process_7~20_combout\,
	datad => \process_7~19_combout\,
	combout => \process_7~21_combout\);

-- Location: LCCOMB_X4_Y27_N24
\counter_chC[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chC[5]~15_combout\ = (counter_chC(5) & (\counter_chC[4]~14\ $ (GND))) # (!counter_chC(5) & (!\counter_chC[4]~14\ & VCC))
-- \counter_chC[5]~16\ = CARRY((counter_chC(5) & !\counter_chC[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_chC(5),
	datad => VCC,
	cin => \counter_chC[4]~14\,
	combout => \counter_chC[5]~15_combout\,
	cout => \counter_chC[5]~16\);

-- Location: FF_X4_Y27_N25
\counter_chC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InC_signal~clkctrl_outclk\,
	d => \counter_chC[5]~15_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chC(5));

-- Location: LCCOMB_X4_Y27_N26
\counter_chC[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chC[6]~17_combout\ = (counter_chC(6) & (!\counter_chC[5]~16\)) # (!counter_chC(6) & ((\counter_chC[5]~16\) # (GND)))
-- \counter_chC[6]~18\ = CARRY((!\counter_chC[5]~16\) # (!counter_chC(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_chC(6),
	datad => VCC,
	cin => \counter_chC[5]~16\,
	combout => \counter_chC[6]~17_combout\,
	cout => \counter_chC[6]~18\);

-- Location: FF_X4_Y27_N27
\counter_chC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InC_signal~clkctrl_outclk\,
	d => \counter_chC[6]~17_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chC(6));

-- Location: LCCOMB_X4_Y27_N28
\counter_chC[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chC[7]~19_combout\ = \counter_chC[6]~18\ $ (!counter_chC(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter_chC(7),
	cin => \counter_chC[6]~18\,
	combout => \counter_chC[7]~19_combout\);

-- Location: FF_X4_Y27_N29
\counter_chC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InC_signal~clkctrl_outclk\,
	d => \counter_chC[7]~19_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chC(7));

-- Location: LCCOMB_X4_Y27_N6
\process_7~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~22_combout\ = (\Add5~10_combout\ & (counter_chC(6) & (\Add5~8_combout\ $ (!counter_chC(5))))) # (!\Add5~10_combout\ & (!counter_chC(6) & (\Add5~8_combout\ $ (!counter_chC(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \Add5~8_combout\,
	datac => counter_chC(6),
	datad => counter_chC(5),
	combout => \process_7~22_combout\);

-- Location: LCCOMB_X3_Y27_N12
\process_7~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~23_combout\ = (counter_chC(0) & (\process_7~22_combout\ & (counter_chC(7) $ (!\Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chC(0),
	datab => counter_chC(7),
	datac => \Add5~12_combout\,
	datad => \process_7~22_combout\,
	combout => \process_7~23_combout\);

-- Location: LCCOMB_X4_Y27_N8
\process_7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~16_combout\ = (!\np[7]~input_o\ & (\grnd~input_o\ & (\np[6]~input_o\ $ (!counter_chC(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[6]~input_o\,
	datab => \np[7]~input_o\,
	datac => \grnd~input_o\,
	datad => counter_chC(7),
	combout => \process_7~16_combout\);

-- Location: LCCOMB_X4_Y27_N0
\process_7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~14_combout\ = (\np[3]~input_o\ & (counter_chC(4) & (\np[2]~input_o\ $ (!counter_chC(3))))) # (!\np[3]~input_o\ & (!counter_chC(4) & (\np[2]~input_o\ $ (!counter_chC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[3]~input_o\,
	datab => \np[2]~input_o\,
	datac => counter_chC(4),
	datad => counter_chC(3),
	combout => \process_7~14_combout\);

-- Location: LCCOMB_X4_Y27_N30
\process_7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~13_combout\ = (\np[1]~input_o\ & (counter_chC(2) & (counter_chC(1) $ (!\np[0]~input_o\)))) # (!\np[1]~input_o\ & (!counter_chC(2) & (counter_chC(1) $ (!\np[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[1]~input_o\,
	datab => counter_chC(1),
	datac => \np[0]~input_o\,
	datad => counter_chC(2),
	combout => \process_7~13_combout\);

-- Location: LCCOMB_X4_Y27_N10
\process_7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~15_combout\ = (\np[4]~input_o\ & (counter_chC(5) & (\np[5]~input_o\ $ (!counter_chC(6))))) # (!\np[4]~input_o\ & (!counter_chC(5) & (\np[5]~input_o\ $ (!counter_chC(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[4]~input_o\,
	datab => \np[5]~input_o\,
	datac => counter_chC(6),
	datad => counter_chC(5),
	combout => \process_7~15_combout\);

-- Location: LCCOMB_X4_Y27_N2
\process_7~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~17_combout\ = (\process_7~16_combout\ & (\process_7~14_combout\ & (\process_7~13_combout\ & \process_7~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_7~16_combout\,
	datab => \process_7~14_combout\,
	datac => \process_7~13_combout\,
	datad => \process_7~15_combout\,
	combout => \process_7~17_combout\);

-- Location: LCCOMB_X3_Y27_N8
\process_7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_7~18_combout\ = (counter_chC(0) & (!\wav[1]~input_o\ & (\wav[0]~input_o\ & \process_7~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chC(0),
	datab => \wav[1]~input_o\,
	datac => \wav[0]~input_o\,
	datad => \process_7~17_combout\,
	combout => \process_7~18_combout\);

-- Location: LCCOMB_X4_Y27_N12
\all_wave_done~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \all_wave_done~1_combout\ = (!counter_chC(4) & (!counter_chC(2) & (!counter_chC(3) & !counter_chC(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chC(4),
	datab => counter_chC(2),
	datac => counter_chC(3),
	datad => counter_chC(5),
	combout => \all_wave_done~1_combout\);

-- Location: LCCOMB_X4_Y27_N14
\all_wave_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \all_wave_done~0_combout\ = (!\grnd~input_o\ & (!counter_chC(1) & (\wav[1]~input_o\ $ (counter_chC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grnd~input_o\,
	datab => \wav[1]~input_o\,
	datac => counter_chC(0),
	datad => counter_chC(1),
	combout => \all_wave_done~0_combout\);

-- Location: LCCOMB_X3_Y27_N14
\all_wave_done~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \all_wave_done~2_combout\ = (\all_wave_done~1_combout\ & (!counter_chC(7) & (\all_wave_done~0_combout\ & !counter_chC(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \all_wave_done~1_combout\,
	datab => counter_chC(7),
	datac => \all_wave_done~0_combout\,
	datad => counter_chC(6),
	combout => \all_wave_done~2_combout\);

-- Location: LCCOMB_X3_Y27_N2
\all_wave_done~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \all_wave_done~3_combout\ = (\all_wave_done~2_combout\) # ((!counter_chC(0) & (!\process_7~5_combout\ & \process_7~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chC(0),
	datab => \process_7~5_combout\,
	datac => \all_wave_done~2_combout\,
	datad => \process_7~17_combout\,
	combout => \all_wave_done~3_combout\);

-- Location: LCCOMB_X3_Y27_N6
\all_wave_done~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \all_wave_done~4_combout\ = (\all_wave_done~3_combout\) # (\process_7~18_combout\ $ (((\process_7~21_combout\ & \process_7~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_7~21_combout\,
	datab => \process_7~23_combout\,
	datac => \process_7~18_combout\,
	datad => \all_wave_done~3_combout\,
	combout => \all_wave_done~4_combout\);

-- Location: LCCOMB_X3_Y27_N18
\all_wave_done~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \all_wave_done~5_combout\ = (\InA_done~5_combout\ & (\InA_InB_done~4_combout\ & (\InD_done~4_combout\ & \all_wave_done~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA_done~5_combout\,
	datab => \InA_InB_done~4_combout\,
	datac => \InD_done~4_combout\,
	datad => \all_wave_done~4_combout\,
	combout => \all_wave_done~5_combout\);

-- Location: LCCOMB_X3_Y28_N8
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\state.state0~q\ & \flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.state0~q\,
	datad => \flag~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X3_Y28_N16
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\state.state2~q\ & (!\grnd~input_o\ & !\InA_done~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.state2~q\,
	datab => \grnd~input_o\,
	datac => \Selector1~0_combout\,
	datad => \InA_done~5_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X3_Y28_N20
\Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~1_combout\) # ((\Selector2~1_combout\ & (\Equal0~4_combout\ & !\all_wave_done~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \Equal0~4_combout\,
	datac => \all_wave_done~5_combout\,
	datad => \Selector1~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: FF_X3_Y28_N21
\state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \Selector1~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state1~q\);

-- Location: FF_X3_Y28_N31
InA_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \state.state1~q\,
	clrn => \ALT_INV_clr_1~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InA_signal~q\);

-- Location: CLKCTRL_G4
\InA_signal~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \InA_signal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \InA_signal~clkctrl_outclk\);

-- Location: FF_X1_Y27_N23
\counter_chA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InA_signal~clkctrl_outclk\,
	d => \counter_chA[4]~13_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chA(4));

-- Location: LCCOMB_X2_Y28_N26
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (counter_chB(5) & (counter_chA(5) & (counter_chB(4) $ (!counter_chA(4))))) # (!counter_chB(5) & (!counter_chA(5) & (counter_chB(4) $ (!counter_chA(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chB(5),
	datab => counter_chB(4),
	datac => counter_chA(4),
	datad => counter_chA(5),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X2_Y28_N10
\counter_chB[6]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chB[6]~17_combout\ = (counter_chB(6) & (!\counter_chB[5]~16\)) # (!counter_chB(6) & ((\counter_chB[5]~16\) # (GND)))
-- \counter_chB[6]~18\ = CARRY((!\counter_chB[5]~16\) # (!counter_chB(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_chB(6),
	datad => VCC,
	cin => \counter_chB[5]~16\,
	combout => \counter_chB[6]~17_combout\,
	cout => \counter_chB[6]~18\);

-- Location: FF_X2_Y28_N11
\counter_chB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InB_signal~clkctrl_outclk\,
	d => \counter_chB[6]~17_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chB(6));

-- Location: LCCOMB_X2_Y28_N12
\counter_chB[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter_chB[7]~19_combout\ = counter_chB(7) $ (!\counter_chB[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_chB(7),
	cin => \counter_chB[6]~18\,
	combout => \counter_chB[7]~19_combout\);

-- Location: FF_X2_Y28_N13
\counter_chB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InB_signal~clkctrl_outclk\,
	d => \counter_chB[7]~19_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chB(7));

-- Location: LCCOMB_X2_Y28_N24
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (counter_chA(7) & (counter_chB(7) & (counter_chB(6) $ (!counter_chA(6))))) # (!counter_chA(7) & (!counter_chB(7) & (counter_chB(6) $ (!counter_chA(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chA(7),
	datab => counter_chB(7),
	datac => counter_chB(6),
	datad => counter_chA(6),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X1_Y28_N26
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (counter_chB(3) & (counter_chA(3) & (counter_chA(2) $ (!counter_chB(2))))) # (!counter_chB(3) & (!counter_chA(3) & (counter_chA(2) $ (!counter_chB(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chB(3),
	datab => counter_chA(2),
	datac => counter_chB(2),
	datad => counter_chA(3),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y28_N24
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter_chB(0) & (counter_chA(0) & (counter_chB(1) $ (!counter_chA(1))))) # (!counter_chB(0) & (!counter_chA(0) & (counter_chB(1) $ (!counter_chA(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_chB(0),
	datab => counter_chA(0),
	datac => counter_chB(1),
	datad => counter_chA(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y28_N18
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~3_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X3_Y28_N6
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\grnd~input_o\ & (\state.state1~q\ & ((!\InA_done~5_combout\) # (!\wav[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wav[0]~input_o\,
	datab => \grnd~input_o\,
	datac => \state.state1~q\,
	datad => \InA_done~5_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X3_Y28_N2
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector2~0_combout\) # ((\Selector2~1_combout\ & (!\Equal0~4_combout\ & !\all_wave_done~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \Equal0~4_combout\,
	datac => \all_wave_done~5_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~2_combout\);

-- Location: FF_X3_Y28_N3
\state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \Selector2~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state2~q\);

-- Location: LCCOMB_X3_Y28_N18
\InB_signal~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InB_signal~feeder_combout\ = \state.state2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.state2~q\,
	combout => \InB_signal~feeder_combout\);

-- Location: FF_X3_Y28_N19
InB_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \InB_signal~feeder_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \InB_signal~q\);

-- Location: CLKCTRL_G0
\InB_signal~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \InB_signal~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \InB_signal~clkctrl_outclk\);

-- Location: FF_X2_Y28_N5
\counter_chB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \InB_signal~clkctrl_outclk\,
	d => \counter_chB[3]~11_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_chB(3));

-- Location: LCCOMB_X2_Y28_N22
\InA_InB_done~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InA_InB_done~1_combout\ = (\np[3]~input_o\ & (counter_chB(3) & (\np[2]~input_o\ $ (!counter_chB(2))))) # (!\np[3]~input_o\ & (!counter_chB(3) & (\np[2]~input_o\ $ (!counter_chB(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[3]~input_o\,
	datab => \np[2]~input_o\,
	datac => counter_chB(3),
	datad => counter_chB(2),
	combout => \InA_InB_done~1_combout\);

-- Location: LCCOMB_X2_Y28_N20
\InA_InB_done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InA_InB_done~0_combout\ = (\np[0]~input_o\ & (counter_chB(0) & (\np[1]~input_o\ $ (!counter_chB(1))))) # (!\np[0]~input_o\ & (!counter_chB(0) & (\np[1]~input_o\ $ (!counter_chB(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[0]~input_o\,
	datab => \np[1]~input_o\,
	datac => counter_chB(0),
	datad => counter_chB(1),
	combout => \InA_InB_done~0_combout\);

-- Location: LCCOMB_X2_Y28_N30
\InA_InB_done~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InA_InB_done~3_combout\ = (\np[7]~input_o\ & (counter_chB(7) & (\np[6]~input_o\ $ (!counter_chB(6))))) # (!\np[7]~input_o\ & (!counter_chB(7) & (\np[6]~input_o\ $ (!counter_chB(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[7]~input_o\,
	datab => \np[6]~input_o\,
	datac => counter_chB(7),
	datad => counter_chB(6),
	combout => \InA_InB_done~3_combout\);

-- Location: LCCOMB_X2_Y28_N16
\InA_InB_done~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InA_InB_done~2_combout\ = (\np[4]~input_o\ & (counter_chB(4) & (\np[5]~input_o\ $ (!counter_chB(5))))) # (!\np[4]~input_o\ & (!counter_chB(4) & (\np[5]~input_o\ $ (!counter_chB(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \np[4]~input_o\,
	datab => \np[5]~input_o\,
	datac => counter_chB(5),
	datad => counter_chB(4),
	combout => \InA_InB_done~2_combout\);

-- Location: LCCOMB_X2_Y28_N28
\InA_InB_done~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InA_InB_done~4_combout\ = (\InA_InB_done~1_combout\ & (\InA_InB_done~0_combout\ & (\InA_InB_done~3_combout\ & \InA_InB_done~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InA_InB_done~1_combout\,
	datab => \InA_InB_done~0_combout\,
	datac => \InA_InB_done~3_combout\,
	datad => \InA_InB_done~2_combout\,
	combout => \InA_InB_done~4_combout\);

-- Location: LCCOMB_X2_Y27_N20
\process_2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~3_combout\ = (\InA_InB_done~4_combout\ & ((\InA_done~5_combout\ & ((\process_2~2_combout\))) # (!\InA_done~5_combout\ & (\grnd~input_o\)))) # (!\InA_InB_done~4_combout\ & (\grnd~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grnd~input_o\,
	datab => \process_2~2_combout\,
	datac => \InA_InB_done~4_combout\,
	datad => \InA_done~5_combout\,
	combout => \process_2~3_combout\);

-- Location: LCCOMB_X2_Y27_N30
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\state.state2~q\ & ((\grnd~input_o\) # (\InA_done~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grnd~input_o\,
	datab => \InA_done~5_combout\,
	datad => \state.state2~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X2_Y27_N24
\process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (!\Add4~14_combout\ & (!\wav[1]~input_o\ & (\Equal2~4_combout\ & \wav[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => \wav[1]~input_o\,
	datac => \Equal2~4_combout\,
	datad => \wav[0]~input_o\,
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X2_Y27_N26
\process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_2~1_combout\ = (\process_2~0_combout\) # ((\grnd~input_o\ & ((!\wav[0]~input_o\) # (!\wav[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grnd~input_o\,
	datab => \wav[1]~input_o\,
	datac => \wav[0]~input_o\,
	datad => \process_2~0_combout\,
	combout => \process_2~1_combout\);

-- Location: LCCOMB_X2_Y27_N2
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.state1~q\ & ((\grnd~input_o\) # ((\wav[0]~input_o\ & \InA_done~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grnd~input_o\,
	datab => \wav[0]~input_o\,
	datac => \state.state1~q\,
	datad => \InA_done~5_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X2_Y27_N12
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Selector0~0_combout\ & ((\process_2~1_combout\) # ((\grnd~input_o\ & !\InA_done~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grnd~input_o\,
	datab => \InA_done~5_combout\,
	datac => \process_2~1_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X2_Y27_N28
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\process_2~3_combout\ & \Selector0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_2~3_combout\,
	datac => \Selector0~1_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X2_Y27_N29
\state.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \Selector3~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state3~q\);

-- Location: LCCOMB_X2_Y27_N8
\Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (!\process_2~1_combout\ & (\Selector0~0_combout\ & ((\InA_done~5_combout\) # (!\grnd~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \grnd~input_o\,
	datab => \InA_done~5_combout\,
	datac => \process_2~1_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X2_Y27_N4
\Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\state.state0~q\ & (\state.state3~q\ & (!\grnd~input_o\))) # (!\state.state0~q\ & (((\state.state3~q\ & !\grnd~input_o\)) # (!\flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.state0~q\,
	datab => \state.state3~q\,
	datac => \grnd~input_o\,
	datad => \flag~q\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X2_Y27_N22
\Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\Selector0~2_combout\) # ((\Selector0~1_combout\ & !\process_2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~2_combout\,
	datac => \Selector0~1_combout\,
	datad => \process_2~3_combout\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X2_Y27_N6
\Selector0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (!\Selector0~4_combout\ & (!\Selector0~3_combout\ & ((!\all_wave_done~5_combout\) # (!\state.state3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.state3~q\,
	datab => \Selector0~4_combout\,
	datac => \Selector0~3_combout\,
	datad => \all_wave_done~5_combout\,
	combout => \Selector0~5_combout\);

-- Location: FF_X2_Y27_N7
\state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \Selector0~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state0~q\);

-- Location: LCCOMB_X3_Y27_N16
\clr_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clr_0~0_combout\ = (\clr_0~q\) # ((!\state.state0~q\ & \all_wave_done~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.state0~q\,
	datac => \clr_0~q\,
	datad => \all_wave_done~5_combout\,
	combout => \clr_0~0_combout\);

-- Location: FF_X3_Y27_N17
clr_0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \clr_0~0_combout\,
	clrn => \flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clr_0~q\);

-- Location: LCCOMB_X3_Y27_N0
clr_1 : cycloneiii_lcell_comb
-- Equation(s):
-- \clr_1~combout\ = (\clr_0~q\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \clr_0~q\,
	combout => \clr_1~combout\);

-- Location: FF_X3_Y27_N29
flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prf~input_o\,
	d => \flag~0_combout\,
	clrn => \ALT_INV_clr_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag~q\);

-- Location: IOIBUF_X0_Y22_N15
\phase~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_phase,
	o => \phase~input_o\);

-- Location: LCCOMB_X3_Y28_N30
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\enable~input_o\ & ((\phase~input_o\ & (\InB_signal~q\)) # (!\phase~input_o\ & ((\InA_signal~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phase~input_o\,
	datab => \InB_signal~q\,
	datac => \InA_signal~q\,
	datad => \enable~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X3_Y28_N28
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\enable~input_o\ & ((\phase~input_o\ & ((\InA_signal~q\))) # (!\phase~input_o\ & (\InB_signal~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \phase~input_o\,
	datab => \InB_signal~q\,
	datac => \InA_signal~q\,
	datad => \enable~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X3_Y28_N14
\InCout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InCout~0_combout\ = (\InC_signal~q\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InC_signal~q\,
	datad => \enable~input_o\,
	combout => \InCout~0_combout\);

-- Location: LCCOMB_X3_Y28_N24
\InDout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \InDout~0_combout\ = (\InD_signal~q\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \InD_signal~q\,
	datad => \enable~input_o\,
	combout => \InDout~0_combout\);

ww_busy <= \busy~output_o\;

ww_InAout <= \InAout~output_o\;

ww_InBout <= \InBout~output_o\;

ww_InCout <= \InCout~output_o\;

ww_InDout <= \InDout~output_o\;
END structure;


