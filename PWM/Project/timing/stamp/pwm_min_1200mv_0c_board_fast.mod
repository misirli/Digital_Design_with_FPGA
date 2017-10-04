/*
 Copyright (C) 1991-2013 Altera Corporation
 Your use of Altera Corporation's design tools, logic functions 
 and other software and tools, and its AMPP partner logic 
 functions, and any output files from any of the foregoing 
 (including device programming or simulation files), and any 
 associated documentation or information are expressly subject 
 to the terms and conditions of the Altera Program License 
 Subscription Agreement, Altera MegaCore Function License 
 Agreement, or other applicable license agreement, including, 
 without limitation, that your use is for the sole purpose of 
 programming logic devices manufactured by Altera and sold by 
 Altera or its authorized distributors.  Please refer to the 
 applicable agreement for further details.
*/
MODEL
/*MODEL HEADER*/
/*
 This file contains Fast Corner delays for the design using part EP3C16F484C8
 with speed grade M, core voltage 1.2V, and temperature 0 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "pwm";
DATE "02/28/2017 10:39:57";
PROGRAM "Quartus II 64-Bit";



INPUT ena;
INPUT reset_n;
INPUT duty[2];
INPUT duty[3];
INPUT duty[1];
INPUT duty[0];
INPUT duty[4];
INPUT duty[5];
INPUT duty[6];
INPUT duty[7];
INPUT clk;
OUTPUT pwm_out[0];
OUTPUT pwm_out[1];
OUTPUT pwm_out[2];
OUTPUT pwm_n_out[0];
OUTPUT pwm_n_out[1];
OUTPUT pwm_n_out[2];

/*Arc definitions start here*/
pos_duty[0]__clk__setup:		SETUP (POSEDGE) duty[0] clk ;
pos_duty[1]__clk__setup:		SETUP (POSEDGE) duty[1] clk ;
pos_duty[2]__clk__setup:		SETUP (POSEDGE) duty[2] clk ;
pos_duty[3]__clk__setup:		SETUP (POSEDGE) duty[3] clk ;
pos_duty[4]__clk__setup:		SETUP (POSEDGE) duty[4] clk ;
pos_duty[5]__clk__setup:		SETUP (POSEDGE) duty[5] clk ;
pos_duty[6]__clk__setup:		SETUP (POSEDGE) duty[6] clk ;
pos_duty[7]__clk__setup:		SETUP (POSEDGE) duty[7] clk ;
pos_ena__clk__setup:		SETUP (POSEDGE) ena clk ;
pos_reset_n__clk__setup:		SETUP (POSEDGE) reset_n clk ;
pos_duty[0]__clk__hold:		HOLD (POSEDGE) duty[0] clk ;
pos_duty[1]__clk__hold:		HOLD (POSEDGE) duty[1] clk ;
pos_duty[2]__clk__hold:		HOLD (POSEDGE) duty[2] clk ;
pos_duty[3]__clk__hold:		HOLD (POSEDGE) duty[3] clk ;
pos_duty[4]__clk__hold:		HOLD (POSEDGE) duty[4] clk ;
pos_duty[5]__clk__hold:		HOLD (POSEDGE) duty[5] clk ;
pos_duty[6]__clk__hold:		HOLD (POSEDGE) duty[6] clk ;
pos_duty[7]__clk__hold:		HOLD (POSEDGE) duty[7] clk ;
pos_ena__clk__hold:		HOLD (POSEDGE) ena clk ;
pos_reset_n__clk__hold:		HOLD (POSEDGE) reset_n clk ;
pos_clk__pwm_n_out[0]__delay:		DELAY (POSEDGE) clk pwm_n_out[0] ;
pos_clk__pwm_n_out[1]__delay:		DELAY (POSEDGE) clk pwm_n_out[1] ;
pos_clk__pwm_n_out[2]__delay:		DELAY (POSEDGE) clk pwm_n_out[2] ;
pos_clk__pwm_out[0]__delay:		DELAY (POSEDGE) clk pwm_out[0] ;
pos_clk__pwm_out[1]__delay:		DELAY (POSEDGE) clk pwm_out[1] ;
pos_clk__pwm_out[2]__delay:		DELAY (POSEDGE) clk pwm_out[2] ;

ENDMODEL
