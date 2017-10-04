


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
