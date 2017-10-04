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
 This file contains Slow Corner delays for the design using part EP3C16F484C8
 with speed grade 8, core voltage 1.2V, and temperature 0 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "incremental_encoder_reader";
DATE "03/05/2017 15:40:42";
PROGRAM "Quartus II 64-Bit";



INPUT enable;
INPUT dir_sel;
INPUT B;
INPUT reset;
INPUT A;
INPUT coef[13];
INPUT coef[12];
INPUT coef[11];
INPUT coef[10];
INPUT coef[9];
INPUT coef[8];
INPUT coef[7];
INPUT coef[6];
INPUT coef[5];
INPUT coef[4];
INPUT coef[3];
INPUT coef[2];
INPUT coef[1];
INPUT coef[0];
INPUT Z;
OUTPUT overflow;
OUTPUT position[0];
OUTPUT position[1];
OUTPUT position[2];
OUTPUT position[3];
OUTPUT position[4];
OUTPUT position[5];
OUTPUT position[6];
OUTPUT position[7];
OUTPUT position[8];
OUTPUT position[9];
OUTPUT position[10];
OUTPUT position[11];
OUTPUT position[12];
OUTPUT position[13];
OUTPUT position[14];
OUTPUT position[15];
OUTPUT position[16];

/*Arc definitions start here*/
pos_B__A__setup:		SETUP (POSEDGE) B A ;
pos_dir_sel__A__setup:		SETUP (POSEDGE) dir_sel A ;
pos_enable__B__setup:		SETUP (POSEDGE) enable B ;
pos_B__A__hold:		HOLD (POSEDGE) B A ;
pos_dir_sel__A__hold:		HOLD (POSEDGE) dir_sel A ;
pos_enable__B__hold:		HOLD (POSEDGE) enable B ;
pos_B__overflow__delay:		DELAY (POSEDGE) B overflow ;
pos_B__position[0]__delay:		DELAY (POSEDGE) B position[0] ;
pos_B__position[1]__delay:		DELAY (POSEDGE) B position[1] ;
pos_B__position[2]__delay:		DELAY (POSEDGE) B position[2] ;
pos_B__position[3]__delay:		DELAY (POSEDGE) B position[3] ;
pos_B__position[4]__delay:		DELAY (POSEDGE) B position[4] ;
pos_B__position[5]__delay:		DELAY (POSEDGE) B position[5] ;
pos_B__position[6]__delay:		DELAY (POSEDGE) B position[6] ;
pos_B__position[7]__delay:		DELAY (POSEDGE) B position[7] ;
pos_B__position[8]__delay:		DELAY (POSEDGE) B position[8] ;
pos_B__position[9]__delay:		DELAY (POSEDGE) B position[9] ;
pos_B__position[10]__delay:		DELAY (POSEDGE) B position[10] ;
pos_B__position[11]__delay:		DELAY (POSEDGE) B position[11] ;
pos_B__position[12]__delay:		DELAY (POSEDGE) B position[12] ;
pos_B__position[13]__delay:		DELAY (POSEDGE) B position[13] ;
pos_B__position[14]__delay:		DELAY (POSEDGE) B position[14] ;
pos_B__position[15]__delay:		DELAY (POSEDGE) B position[15] ;
pos_B__position[16]__delay:		DELAY (POSEDGE) B position[16] ;
_104.283__104.029__delay:		DELAY 104.283 104.029 ;
_104.490__104.217__delay:		DELAY 104.490 104.217 ;
_104.864__104.509__delay:		DELAY 104.864 104.509 ;
_105.367__104.985__delay:		DELAY 105.367 104.985 ;
_105.269__104.851__delay:		DELAY 105.269 104.851 ;
_105.671__105.343__delay:		DELAY 105.671 105.343 ;
_105.114__104.839__delay:		DELAY 105.114 104.839 ;
_106.145__105.652__delay:		DELAY 106.145 105.652 ;
_104.957__104.717__delay:		DELAY 104.957 104.717 ;
_105.353__105.041__delay:		DELAY 105.353 105.041 ;
_105.622__105.359__delay:		DELAY 105.622 105.359 ;
_105.505__105.184__delay:		DELAY 105.505 105.184 ;
_105.677__105.422__delay:		DELAY 105.677 105.422 ;
_105.623__105.309__delay:		DELAY 105.623 105.309 ;
_106.000__105.609__delay:		DELAY 106.000 105.609 ;
_105.909__105.513__delay:		DELAY 105.909 105.513 ;
_105.467__105.231__delay:		DELAY 105.467 105.231 ;
_104.280__104.026__delay:		DELAY 104.280 104.026 ;
_104.487__104.214__delay:		DELAY 104.487 104.214 ;
_104.861__104.506__delay:		DELAY 104.861 104.506 ;
_105.364__104.982__delay:		DELAY 105.364 104.982 ;
_105.266__104.848__delay:		DELAY 105.266 104.848 ;
_105.668__105.340__delay:		DELAY 105.668 105.340 ;
_105.111__104.836__delay:		DELAY 105.111 104.836 ;
_106.142__105.649__delay:		DELAY 106.142 105.649 ;
_104.954__104.714__delay:		DELAY 104.954 104.714 ;
_105.350__105.038__delay:		DELAY 105.350 105.038 ;
_105.619__105.356__delay:		DELAY 105.619 105.356 ;
_105.502__105.181__delay:		DELAY 105.502 105.181 ;
_105.674__105.419__delay:		DELAY 105.674 105.419 ;
_105.620__105.306__delay:		DELAY 105.620 105.306 ;
_105.997__105.606__delay:		DELAY 105.997 105.606 ;
_105.906__105.510__delay:		DELAY 105.906 105.510 ;
_105.464__105.228__delay:		DELAY 105.464 105.228 ;
_104.675__104.421__delay:		DELAY 104.675 104.421 ;
_104.882__104.609__delay:		DELAY 104.882 104.609 ;
_105.256__104.901__delay:		DELAY 105.256 104.901 ;
_105.759__105.377__delay:		DELAY 105.759 105.377 ;
_105.661__105.243__delay:		DELAY 105.661 105.243 ;
_106.063__105.735__delay:		DELAY 106.063 105.735 ;
_105.506__105.231__delay:		DELAY 105.506 105.231 ;
_106.537__106.044__delay:		DELAY 106.537 106.044 ;
_105.349__105.109__delay:		DELAY 105.349 105.109 ;
_105.745__105.433__delay:		DELAY 105.745 105.433 ;
_106.014__105.751__delay:		DELAY 106.014 105.751 ;
_105.897__105.576__delay:		DELAY 105.897 105.576 ;
_106.069__105.814__delay:		DELAY 106.069 105.814 ;
_106.015__105.701__delay:		DELAY 106.015 105.701 ;
_106.392__106.001__delay:		DELAY 106.392 106.001 ;
_106.301__105.905__delay:		DELAY 106.301 105.905 ;
_105.859__105.623__delay:		DELAY 105.859 105.623 ;
_104.368__104.114__delay:		DELAY 104.368 104.114 ;
_104.575__104.302__delay:		DELAY 104.575 104.302 ;
_104.949__104.594__delay:		DELAY 104.949 104.594 ;
_105.452__105.070__delay:		DELAY 105.452 105.070 ;
_105.354__104.936__delay:		DELAY 105.354 104.936 ;
_105.756__105.428__delay:		DELAY 105.756 105.428 ;
_105.199__104.924__delay:		DELAY 105.199 104.924 ;
_106.230__105.737__delay:		DELAY 106.230 105.737 ;
_105.042__104.802__delay:		DELAY 105.042 104.802 ;
_105.438__105.126__delay:		DELAY 105.438 105.126 ;
_105.707__105.444__delay:		DELAY 105.707 105.444 ;
_105.590__105.269__delay:		DELAY 105.590 105.269 ;
_105.762__105.507__delay:		DELAY 105.762 105.507 ;
_105.708__105.394__delay:		DELAY 105.708 105.394 ;
_106.085__105.694__delay:		DELAY 106.085 105.694 ;
_105.994__105.598__delay:		DELAY 105.994 105.598 ;
_105.552__105.316__delay:		DELAY 105.552 105.316 ;
_104.947__104.693__delay:		DELAY 104.947 104.693 ;
_105.154__104.881__delay:		DELAY 105.154 104.881 ;
_105.528__105.173__delay:		DELAY 105.528 105.173 ;
_106.031__105.649__delay:		DELAY 106.031 105.649 ;
_105.933__105.515__delay:		DELAY 105.933 105.515 ;
_106.335__106.007__delay:		DELAY 106.335 106.007 ;
_105.778__105.503__delay:		DELAY 105.778 105.503 ;
_106.809__106.316__delay:		DELAY 106.809 106.316 ;
_105.621__105.381__delay:		DELAY 105.621 105.381 ;
_106.017__105.705__delay:		DELAY 106.017 105.705 ;
_106.286__106.023__delay:		DELAY 106.286 106.023 ;
_106.169__105.848__delay:		DELAY 106.169 105.848 ;
_106.341__106.086__delay:		DELAY 106.341 106.086 ;
_106.287__105.973__delay:		DELAY 106.287 105.973 ;
_106.664__106.273__delay:		DELAY 106.664 106.273 ;
_106.573__106.177__delay:		DELAY 106.573 106.177 ;
_106.131__105.895__delay:		DELAY 106.131 105.895 ;
_104.636__104.382__delay:		DELAY 104.636 104.382 ;
_104.843__104.570__delay:		DELAY 104.843 104.570 ;
_105.217__104.862__delay:		DELAY 105.217 104.862 ;
_105.720__105.338__delay:		DELAY 105.720 105.338 ;
_105.622__105.204__delay:		DELAY 105.622 105.204 ;
_106.024__105.696__delay:		DELAY 106.024 105.696 ;
_105.467__105.192__delay:		DELAY 105.467 105.192 ;
_106.498__106.005__delay:		DELAY 106.498 106.005 ;
_105.310__105.070__delay:		DELAY 105.310 105.070 ;
_105.706__105.394__delay:		DELAY 105.706 105.394 ;
_105.975__105.712__delay:		DELAY 105.975 105.712 ;
_105.858__105.537__delay:		DELAY 105.858 105.537 ;
_106.030__105.775__delay:		DELAY 106.030 105.775 ;
_105.976__105.662__delay:		DELAY 105.976 105.662 ;
_106.353__105.962__delay:		DELAY 106.353 105.962 ;
_106.262__105.866__delay:		DELAY 106.262 105.866 ;
_105.820__105.584__delay:		DELAY 105.820 105.584 ;
_104.704__104.450__delay:		DELAY 104.704 104.450 ;
_104.911__104.638__delay:		DELAY 104.911 104.638 ;
_105.285__104.930__delay:		DELAY 105.285 104.930 ;
_105.788__105.406__delay:		DELAY 105.788 105.406 ;
_105.690__105.272__delay:		DELAY 105.690 105.272 ;
_106.092__105.764__delay:		DELAY 106.092 105.764 ;
_105.535__105.260__delay:		DELAY 105.535 105.260 ;
_106.566__106.073__delay:		DELAY 106.566 106.073 ;
_105.378__105.138__delay:		DELAY 105.378 105.138 ;
_105.774__105.462__delay:		DELAY 105.774 105.462 ;
_106.043__105.780__delay:		DELAY 106.043 105.780 ;
_105.926__105.605__delay:		DELAY 105.926 105.605 ;
_106.098__105.843__delay:		DELAY 106.098 105.843 ;
_106.044__105.730__delay:		DELAY 106.044 105.730 ;
_106.421__106.030__delay:		DELAY 106.421 106.030 ;
_106.330__105.934__delay:		DELAY 106.330 105.934 ;
_105.888__105.652__delay:		DELAY 105.888 105.652 ;
_104.731__104.477__delay:		DELAY 104.731 104.477 ;
_104.938__104.665__delay:		DELAY 104.938 104.665 ;
_105.312__104.957__delay:		DELAY 105.312 104.957 ;
_105.815__105.433__delay:		DELAY 105.815 105.433 ;
_105.717__105.299__delay:		DELAY 105.717 105.299 ;
_106.119__105.791__delay:		DELAY 106.119 105.791 ;
_105.562__105.287__delay:		DELAY 105.562 105.287 ;
_106.593__106.100__delay:		DELAY 106.593 106.100 ;
_105.405__105.165__delay:		DELAY 105.405 105.165 ;
_105.801__105.489__delay:		DELAY 105.801 105.489 ;
_106.070__105.807__delay:		DELAY 106.070 105.807 ;
_105.953__105.632__delay:		DELAY 105.953 105.632 ;
_106.125__105.870__delay:		DELAY 106.125 105.870 ;
_106.071__105.757__delay:		DELAY 106.071 105.757 ;
_106.448__106.057__delay:		DELAY 106.448 106.057 ;
_106.357__105.961__delay:		DELAY 106.357 105.961 ;
_105.915__105.679__delay:		DELAY 105.915 105.679 ;
_104.752__104.498__delay:		DELAY 104.752 104.498 ;
_104.959__104.686__delay:		DELAY 104.959 104.686 ;
_105.333__104.978__delay:		DELAY 105.333 104.978 ;
_105.836__105.454__delay:		DELAY 105.836 105.454 ;
_105.738__105.320__delay:		DELAY 105.738 105.320 ;
_106.140__105.812__delay:		DELAY 106.140 105.812 ;
_105.583__105.308__delay:		DELAY 105.583 105.308 ;
_106.614__106.121__delay:		DELAY 106.614 106.121 ;
_105.426__105.186__delay:		DELAY 105.426 105.186 ;
_105.822__105.510__delay:		DELAY 105.822 105.510 ;
_106.091__105.828__delay:		DELAY 106.091 105.828 ;
_105.974__105.653__delay:		DELAY 105.974 105.653 ;
_106.146__105.891__delay:		DELAY 106.146 105.891 ;
_106.092__105.778__delay:		DELAY 106.092 105.778 ;
_106.469__106.078__delay:		DELAY 106.469 106.078 ;
_106.378__105.982__delay:		DELAY 106.378 105.982 ;
_105.936__105.700__delay:		DELAY 105.936 105.700 ;
_104.260__104.006__delay:		DELAY 104.260 104.006 ;
_104.467__104.194__delay:		DELAY 104.467 104.194 ;
_104.841__104.486__delay:		DELAY 104.841 104.486 ;
_105.344__104.962__delay:		DELAY 105.344 104.962 ;
_105.246__104.828__delay:		DELAY 105.246 104.828 ;
_105.648__105.320__delay:		DELAY 105.648 105.320 ;
_105.091__104.816__delay:		DELAY 105.091 104.816 ;
_106.122__105.629__delay:		DELAY 106.122 105.629 ;
_104.934__104.694__delay:		DELAY 104.934 104.694 ;
_105.330__105.018__delay:		DELAY 105.330 105.018 ;
_105.599__105.336__delay:		DELAY 105.599 105.336 ;
_105.482__105.161__delay:		DELAY 105.482 105.161 ;
_105.654__105.399__delay:		DELAY 105.654 105.399 ;
_105.600__105.286__delay:		DELAY 105.600 105.286 ;
_105.977__105.586__delay:		DELAY 105.977 105.586 ;
_105.886__105.490__delay:		DELAY 105.886 105.490 ;
_105.444__105.208__delay:		DELAY 105.444 105.208 ;
_104.632__104.378__delay:		DELAY 104.632 104.378 ;
_104.839__104.566__delay:		DELAY 104.839 104.566 ;
_105.213__104.858__delay:		DELAY 105.213 104.858 ;
_105.716__105.334__delay:		DELAY 105.716 105.334 ;
_105.618__105.200__delay:		DELAY 105.618 105.200 ;
_106.020__105.692__delay:		DELAY 106.020 105.692 ;
_105.463__105.188__delay:		DELAY 105.463 105.188 ;
_106.494__106.001__delay:		DELAY 106.494 106.001 ;
_105.306__105.066__delay:		DELAY 105.306 105.066 ;
_105.702__105.390__delay:		DELAY 105.702 105.390 ;
_105.971__105.708__delay:		DELAY 105.971 105.708 ;
_105.854__105.533__delay:		DELAY 105.854 105.533 ;
_106.026__105.771__delay:		DELAY 106.026 105.771 ;
_105.972__105.658__delay:		DELAY 105.972 105.658 ;
_106.349__105.958__delay:		DELAY 106.349 105.958 ;
_106.258__105.862__delay:		DELAY 106.258 105.862 ;
_105.816__105.580__delay:		DELAY 105.816 105.580 ;
_104.605__104.351__delay:		DELAY 104.605 104.351 ;
_104.812__104.539__delay:		DELAY 104.812 104.539 ;
_105.186__104.831__delay:		DELAY 105.186 104.831 ;
_105.689__105.307__delay:		DELAY 105.689 105.307 ;
_105.591__105.173__delay:		DELAY 105.591 105.173 ;
_105.993__105.665__delay:		DELAY 105.993 105.665 ;
_105.436__105.161__delay:		DELAY 105.436 105.161 ;
_106.467__105.974__delay:		DELAY 106.467 105.974 ;
_105.279__105.039__delay:		DELAY 105.279 105.039 ;
_105.675__105.363__delay:		DELAY 105.675 105.363 ;
_105.944__105.681__delay:		DELAY 105.944 105.681 ;
_105.827__105.506__delay:		DELAY 105.827 105.506 ;
_105.999__105.744__delay:		DELAY 105.999 105.744 ;
_105.945__105.631__delay:		DELAY 105.945 105.631 ;
_106.322__105.931__delay:		DELAY 106.322 105.931 ;
_106.231__105.835__delay:		DELAY 106.231 105.835 ;
_105.789__105.553__delay:		DELAY 105.789 105.553 ;
_104.282__104.028__delay:		DELAY 104.282 104.028 ;
_104.489__104.216__delay:		DELAY 104.489 104.216 ;
_104.863__104.508__delay:		DELAY 104.863 104.508 ;
_105.366__104.984__delay:		DELAY 105.366 104.984 ;
_105.268__104.850__delay:		DELAY 105.268 104.850 ;
_105.670__105.342__delay:		DELAY 105.670 105.342 ;
_105.113__104.838__delay:		DELAY 105.113 104.838 ;
_106.144__105.651__delay:		DELAY 106.144 105.651 ;
_104.956__104.716__delay:		DELAY 104.956 104.716 ;
_105.352__105.040__delay:		DELAY 105.352 105.040 ;
_105.621__105.358__delay:		DELAY 105.621 105.358 ;
_105.504__105.183__delay:		DELAY 105.504 105.183 ;
_105.676__105.421__delay:		DELAY 105.676 105.421 ;
_105.622__105.308__delay:		DELAY 105.622 105.308 ;
_105.999__105.608__delay:		DELAY 105.999 105.608 ;
_105.908__105.512__delay:		DELAY 105.908 105.512 ;
_105.466__105.230__delay:		DELAY 105.466 105.230 ;
_104.204__103.950__delay:		DELAY 104.204 103.950 ;
_104.411__104.138__delay:		DELAY 104.411 104.138 ;
_104.785__104.430__delay:		DELAY 104.785 104.430 ;
_105.288__104.906__delay:		DELAY 105.288 104.906 ;
_105.190__104.772__delay:		DELAY 105.190 104.772 ;
_105.592__105.264__delay:		DELAY 105.592 105.264 ;
_105.035__104.760__delay:		DELAY 105.035 104.760 ;
_106.066__105.573__delay:		DELAY 106.066 105.573 ;
_104.878__104.638__delay:		DELAY 104.878 104.638 ;
_105.274__104.962__delay:		DELAY 105.274 104.962 ;
_105.543__105.280__delay:		DELAY 105.543 105.280 ;
_105.426__105.105__delay:		DELAY 105.426 105.105 ;
_105.598__105.343__delay:		DELAY 105.598 105.343 ;
_105.544__105.230__delay:		DELAY 105.544 105.230 ;
_105.921__105.530__delay:		DELAY 105.921 105.530 ;
_105.830__105.434__delay:		DELAY 105.830 105.434 ;
_105.388__105.152__delay:		DELAY 105.388 105.152 ;

ENDMODEL