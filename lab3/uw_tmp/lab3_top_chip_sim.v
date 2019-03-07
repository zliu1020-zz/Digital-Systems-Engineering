// Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus Prime License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

// DATE "06/24/2018 15:43:19"

// 
// Device: Altera 10M08SAE144C8G Package EQFP144
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module lab3_top_chip (	reset_n,
	clk,
	uart_rx,
	uart_tx,
	seg7_en,
	seg7_data,
	led,
	sw);
input 	reset_n;
input 	clk;
input 	uart_rx;
output 	uart_tx;
output 	[1:0] seg7_en;
output 	[7:0] seg7_data;
output 	[7:0] led;
input 	[7:0] sw;

// Design Ports Information
// uart_tx	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_en[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_en[1]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
// seg7_data[7]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[0]	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[2]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[3]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[4]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[6]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
// led[7]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[3]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[4]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[5]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[6]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
// uart_rx	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[1]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[2]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
// sw[7]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
// clk	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
// reset_n	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
wire sw_a3_a_ainput_o;
wire sw_a4_a_ainput_o;
wire sw_a5_a_ainput_o;
wire sw_a6_a_ainput_o;
wire a_aQUARTUS_CREATED_GND_aI_combout;
wire a_aQUARTUS_CREATED_UNVM_a_abusy;
wire a_aQUARTUS_CREATED_ADC1_a_aeoc;
wire seg7_data_a1_a_aoutput_o;
wire seg7_data_a5_a_aoutput_o;
wire seg7_data_a6_a_aoutput_o;
wire uart_tx_aoutput_o;
wire seg7_en_a0_a_aoutput_o;
wire seg7_en_a1_a_aoutput_o;
wire seg7_data_a0_a_aoutput_o;
wire seg7_data_a2_a_aoutput_o;
wire seg7_data_a3_a_aoutput_o;
wire seg7_data_a4_a_aoutput_o;
wire seg7_data_a7_a_aoutput_o;
wire led_a0_a_aoutput_o;
wire led_a1_a_aoutput_o;
wire led_a2_a_aoutput_o;
wire led_a3_a_aoutput_o;
wire led_a4_a_aoutput_o;
wire led_a5_a_aoutput_o;
wire led_a6_a_aoutput_o;
wire led_a7_a_aoutput_o;
wire clk_ainput_o;
wire clk_ainputclkctrl_outclk;
wire inc_d_0__dup_2773;
wire reset_n_ainput_o;
wire u_seg7_u_dual_seg7_reg_prev_reset_a0_combout;
wire u_seg7_u_dual_seg7_reg_prev_reset_aq;
wire nx60244z1;
wire reg_q_0__dup_7_aq;
wire nx9230z2;
wire inc_d_1__dup_2774;
wire reg_q_1__dup_6_aq;
wire nx41135z2;
wire inc_d_2__dup_2775;
wire reg_q_2__dup_5_aq;
wire nx25561z2;
wire inc_d_3__dup_2776;
wire reg_q_3__dup_4_aq;
wire nx55549z2;
wire inc_d_4__dup_2777;
wire reg_q_4__dup_3_aq;
wire nx28436z2;
wire inc_d_5__dup_2778;
wire reg_q_5__dup_2_aq;
wire nx62824z2;
wire inc_d_6__dup_2779;
wire reg_q_6__dup_1_aq;
wire nx63336z2;
wire inc_d_7__dup_2780;
wire reg_q_7__dup_0_aq;
wire nx13374z2;
wire inc_d_8_;
wire reg_q_8__aq;
wire nx47005z2;
wire inc_d_9_;
wire reg_q_9__aq;
wire nx10744z1;
wire inc_d_10_;
wire reg_q_10__aq;
wire sw_a1_a_ainput_o;
wire inc_d_0_;
wire yes_uart_u_uart_reg_RxFSM_1__a0_combout;
wire uart_rx_ainput_o;
wire yes_uart_u_uart_reg_Rx_r_a0_combout;
wire yes_uart_u_uart_reg_Rx_r_aq;
wire inc_d_0__dup_2818;
wire nx22863z1;
wire reg_q_0__dup_18_aq;
wire nx49129z1;
wire inc_d_1__dup_2820;
wire reg_q_1__dup_17_aq;
wire nx50038z1;
wire inc_d_2__dup_2822;
wire reg_q_2__dup_16_aq;
wire nx76z1;
wire inc_d_3__dup_2824;
wire reg_q_3__dup_15_aq;
wire nx15650z1;
wire inc_d_4__dup_2826;
wire reg_q_4__dup_14_aq;
wire nx34312z1;
wire inc_d_5__dup_2828;
wire reg_q_5__dup_13_aq;
wire nx18738z1;
wire inc_d_6__dup_2830;
wire reg_q_6__dup_12_aq;
wire nx4678z1;
wire inc_d_7__dup_2832;
wire reg_q_7__dup_11_aq;
wire nx10896z1;
wire inc_d_8__dup_2833;
wire reg_q_8__dup_10_aq;
wire nx26470z1;
wire inc_d_9__dup_2834;
wire reg_q_9__dup_9_aq;
wire nx34257z1;
wire inc_d_10__dup_2835;
wire reg_q_10__dup_8_aq;
wire nx60456z6;
wire nx60456z5;
wire yes_uart_u_uart_reg_RxDivisor_4__afeeder_combout;
wire yes_uart_u_uart_reg_RxDivisor_4__aq;
wire nx60456z3;
wire nx60456z4;
wire nx60456z2;
wire nx60456z1;
wire yes_uart_u_uart_reg_TopRx_aq;
wire nx64005z2;
wire nx64005z1;
wire yes_uart_u_uart_reg_RxFSM_1__aq;
wire nx2457z1;
wire yes_uart_u_uart_reg_RxFSM_5__aq;
wire nx63008z1;
wire yes_uart_u_uart_reg_RxFSM_0__aq;
wire nx46026z1;
wire nx65002z1;
wire yes_uart_u_uart_reg_RxFSM_2__aq;
wire nx463z1;
wire yes_uart_u_uart_reg_RxFSM_3__aq;
wire nx46026z3;
wire yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0__aq;
wire nx45029z1;
wire yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1__aq;
wire nx44032z1;
wire yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2__aq;
wire nx43035z2;
wire nx43035z1;
wire yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3__aq;
wire nx1460z2;
wire nx1460z1;
wire yes_uart_u_uart_reg_RxFSM_4__aq;
wire nx46463z1;
wire yes_uart_u_uart_reg_RxRDYi_afeeder_combout;
wire yes_uart_u_uart_reg_RxRDYi_aq;
wire u_lab3_rtlc0_PS25_n202;
wire reg_q_0__aq;
wire nx27063z1;
wire inc_d_1_;
wire reg_q_1__aq;
wire nx39256z1;
wire inc_d_2_;
wire reg_q_2__aq;
wire nx57428z1;
wire inc_d_3_;
wire reg_q_3__aq;
wire nx23040z1;
wire inc_d_4_;
wire reg_q_4__aq;
wire nx58827z1;
wire inc_d_5_;
wire reg_q_5__aq;
wire nx37857z1;
wire inc_d_6_;
wire reg_q_6__aq;
wire sw_a7_a_ainput_o;
wire yes_uart_u_uart_reg_Rx_Reg_7__a0_combout;
wire nx2098z1;
wire yes_uart_u_uart_reg_Rx_Reg_7__aq;
wire yes_uart_u_uart_reg_Rx_Reg_6__aq;
wire yes_uart_u_uart_reg_Dout_6__aq;
wire reg_byte_reg_6__aq;
wire nx51544z10;
wire sw_a0_a_ainput_o;
wire inc_d_0__dup_3036;
wire nx53092z2;
wire u_lab3_modgen_counter_column_ainc_d_0_;
wire nx48923z5;
wire u_lab3_modgen_counter_row_asload_mux_0_dup_365;
wire nx41843z2;
wire nx41843z7;
wire nx41843z12;
wire nx41843z10;
wire nx41843z11;
wire nx41843z13;
wire nx41843z9;
wire nx41843z8;
wire nx41843z5;
wire nx41843z3;
wire nx41843z1;
wire u_lab3_modgen_counter_row_areg_q_0__aq;
wire u_lab3_modgen_counter_row_anx27063z2;
wire u_lab3_modgen_counter_row_asload_mux_1_dup_366;
wire u_lab3_modgen_counter_row_areg_q_1__aq;
wire u_lab3_modgen_counter_row_anx39256z2;
wire u_lab3_modgen_counter_row_anx57428z2;
wire u_lab3_modgen_counter_row_asload_mux_3_dup_368;
wire u_lab3_modgen_counter_row_areg_q_3__aq;
wire u_lab3_modgen_counter_row_anx23040z2;
wire u_lab3_modgen_counter_row_asload_mux_4_dup_369;
wire u_lab3_modgen_counter_row_areg_q_4__aq;
wire u_lab3_modgen_counter_row_anx58827z2;
wire u_lab3_modgen_counter_row_asload_mux_5_dup_370;
wire u_lab3_modgen_counter_row_areg_q_5__aq;
wire u_lab3_modgen_counter_row_anx37857z2;
wire u_lab3_modgen_counter_row_asload_mux_6_dup_371;
wire u_lab3_modgen_counter_row_areg_q_6__aq;
wire u_lab3_modgen_counter_row_anx21526z2;
wire u_lab3_modgen_counter_row_asload_mux_7_dup_372;
wire u_lab3_modgen_counter_row_areg_q_7__aq;
wire u_lab3_modgen_counter_row_anx12862z2;
wire u_lab3_modgen_counter_row_asload_mux_8_dup_373;
wire u_lab3_modgen_counter_row_areg_q_8__aq;
wire u_lab3_modgen_counter_row_anx47250z2;
wire u_lab3_modgen_counter_row_asload_mux_9_dup_374;
wire u_lab3_modgen_counter_row_areg_q_9__aq;
wire u_lab3_modgen_counter_row_anx1955z2;
wire u_lab3_modgen_counter_row_asload_mux_10_dup_375;
wire u_lab3_modgen_counter_row_areg_q_10__aq;
wire u_lab3_modgen_counter_row_anx32433z2;
wire u_lab3_modgen_counter_row_asload_mux_11_dup_376;
wire u_lab3_modgen_counter_row_areg_q_11__aq;
wire u_lab3_modgen_counter_row_anx48764z2;
wire u_lab3_modgen_counter_row_asload_mux_12_dup_377;
wire u_lab3_modgen_counter_row_areg_q_12__aq;
wire u_lab3_modgen_counter_row_anx47920z2;
wire u_lab3_modgen_counter_row_asload_mux_13_dup_378;
wire u_lab3_modgen_counter_row_areg_q_13__aq;
wire u_lab3_modgen_counter_row_anx13532z2;
wire u_lab3_modgen_counter_row_asload_mux_14_dup_379;
wire u_lab3_modgen_counter_row_areg_q_14__aq;
wire u_lab3_modgen_counter_row_anx2799z2;
wire u_lab3_modgen_counter_row_asload_mux_15_dup_380;
wire u_lab3_modgen_counter_row_areg_q_15__aq;
wire u_lab3_modgen_counter_row_anx28349z2;
wire u_lab3_modgen_counter_row_asload_mux_16_dup_381;
wire u_lab3_modgen_counter_row_areg_q_16__aq;
wire u_lab3_modgen_counter_row_anx12018z2;
wire u_lab3_modgen_counter_row_asload_mux_17_dup_382;
wire u_lab3_modgen_counter_row_areg_q_17__aq;
wire u_lab3_modgen_counter_row_anx22370z2;
wire u_lab3_modgen_counter_row_asload_mux_18_dup_383;
wire u_lab3_modgen_counter_row_areg_q_18__aq;
wire u_lab3_modgen_counter_row_anx56758z2;
wire u_lab3_modgen_counter_row_asload_mux_19_dup_384;
wire u_lab3_modgen_counter_row_areg_q_19__aq;
wire u_lab3_modgen_counter_row_anx57983z2;
wire u_lab3_modgen_counter_row_asload_mux_20_dup_385;
wire u_lab3_modgen_counter_row_areg_q_20__aq;
wire u_lab3_modgen_counter_row_anx41941z2;
wire u_lab3_modgen_counter_row_asload_mux_21_dup_386;
wire u_lab3_modgen_counter_row_areg_q_21__aq;
wire u_lab3_modgen_counter_row_anx58272z2;
wire u_lab3_modgen_counter_row_asload_mux_22_dup_387;
wire u_lab3_modgen_counter_row_areg_q_22__aq;
wire u_lab3_modgen_counter_row_anx38412z2;
wire u_lab3_modgen_counter_row_asload_mux_23_dup_388;
wire u_lab3_modgen_counter_row_areg_q_23__aq;
wire u_lab3_modgen_counter_row_anx61512z2;
wire u_lab3_modgen_counter_row_asload_mux_24_dup_389;
wire u_lab3_modgen_counter_row_areg_q_24__aq;
wire u_lab3_modgen_counter_row_anx36406z2;
wire u_lab3_modgen_counter_row_asload_mux_25_dup_390;
wire u_lab3_modgen_counter_row_areg_q_25__aq;
wire u_lab3_modgen_counter_row_anx63518z2;
wire u_lab3_modgen_counter_row_asload_mux_26_dup_391;
wire u_lab3_modgen_counter_row_areg_q_26__aq;
wire u_lab3_modgen_counter_row_anx14313z2;
wire u_lab3_modgen_counter_row_asload_mux_27_dup_392;
wire u_lab3_modgen_counter_row_areg_q_27__aq;
wire u_lab3_modgen_counter_row_anx16835z2;
wire u_lab3_modgen_counter_row_asload_mux_28_dup_393;
wire u_lab3_modgen_counter_row_areg_q_28__aq;
wire u_lab3_modgen_counter_row_anx17553z2;
wire u_lab3_modgen_counter_row_asload_mux_29_dup_394;
wire u_lab3_modgen_counter_row_areg_q_29__aq;
wire u_lab3_modgen_counter_row_anx33884z2;
wire u_lab3_modgen_counter_row_asload_mux_30_dup_395;
wire u_lab3_modgen_counter_row_areg_q_30__aq;
wire u_lab3_modgen_counter_row_anx18310z2;
wire u_lab3_modgen_counter_row_asload_mux_31_dup_396;
wire u_lab3_modgen_counter_row_areg_q_31__aq;
wire nx41843z6;
wire nx60357z6;
wire nx60357z5;
wire nx60357z4;
wire nx62976z3;
wire nx62976z4;
wire nx62976z2;
wire nx62976z1;
wire u_lab3_reg_flag_aq;
wire nx60357z3;
wire nx60357z2;
wire nx60357z7;
wire nx60357z1;
wire u_lab3_reg_state_1__aq;
wire u_lab3_modgen_counter_row_asload_mux_2_dup_367;
wire u_lab3_modgen_counter_row_areg_q_2__aq;
wire nx41843z4;
wire nx48923z6;
wire nx48923z4;
wire nx48923z2;
wire nx48923z3;
wire nx48923z1;
wire u_lab3_modgen_counter_column_areg_q_0__aq;
wire u_lab3_modgen_counter_column_anx27063z2;
wire u_lab3_modgen_counter_column_ainc_d_1_;
wire u_lab3_modgen_counter_column_areg_q_1__aq;
wire u_lab3_modgen_counter_column_anx39256z2;
wire u_lab3_modgen_counter_column_ainc_d_2_;
wire u_lab3_modgen_counter_column_areg_q_2__aq;
wire u_lab3_modgen_counter_column_anx57428z2;
wire u_lab3_modgen_counter_column_ainc_d_3_;
wire u_lab3_modgen_counter_column_areg_q_3__aq;
wire u_lab3_modgen_counter_column_anx23040z2;
wire u_lab3_modgen_counter_column_ainc_d_4_;
wire u_lab3_modgen_counter_column_areg_q_4__aq;
wire u_lab3_modgen_counter_column_anx58827z2;
wire u_lab3_modgen_counter_column_ainc_d_5_;
wire u_lab3_modgen_counter_column_areg_q_5__aq;
wire u_lab3_modgen_counter_column_anx37857z2;
wire u_lab3_modgen_counter_column_ainc_d_6_;
wire u_lab3_modgen_counter_column_areg_q_6__aq;
wire u_lab3_modgen_counter_column_anx21526z2;
wire u_lab3_modgen_counter_column_ainc_d_7_;
wire u_lab3_modgen_counter_column_areg_q_7__aq;
wire u_lab3_modgen_counter_column_anx12862z2;
wire u_lab3_modgen_counter_column_ainc_d_8_;
wire u_lab3_modgen_counter_column_areg_q_8__aq;
wire u_lab3_modgen_counter_column_anx47250z2;
wire u_lab3_modgen_counter_column_ainc_d_9_;
wire u_lab3_modgen_counter_column_areg_q_9__aq;
wire u_lab3_modgen_counter_column_anx1955z2;
wire u_lab3_modgen_counter_column_ainc_d_10_;
wire u_lab3_modgen_counter_column_areg_q_10__aq;
wire u_lab3_modgen_counter_column_anx32433z2;
wire u_lab3_modgen_counter_column_ainc_d_11_;
wire u_lab3_modgen_counter_column_areg_q_11__aq;
wire u_lab3_modgen_counter_column_anx48764z2;
wire u_lab3_modgen_counter_column_ainc_d_12_;
wire u_lab3_modgen_counter_column_areg_q_12__aq;
wire u_lab3_modgen_counter_column_anx47920z2;
wire u_lab3_modgen_counter_column_ainc_d_13_;
wire u_lab3_modgen_counter_column_areg_q_13__aq;
wire u_lab3_modgen_counter_column_anx13532z2;
wire u_lab3_modgen_counter_column_ainc_d_14_;
wire u_lab3_modgen_counter_column_areg_q_14__aq;
wire u_lab3_modgen_counter_column_anx2799z2;
wire u_lab3_modgen_counter_column_ainc_d_15_;
wire u_lab3_modgen_counter_column_areg_q_15__aq;
wire u_lab3_modgen_counter_column_anx28349z2;
wire u_lab3_modgen_counter_column_ainc_d_16_;
wire u_lab3_modgen_counter_column_areg_q_16__aq;
wire u_lab3_modgen_counter_column_anx12018z2;
wire u_lab3_modgen_counter_column_ainc_d_17_;
wire u_lab3_modgen_counter_column_areg_q_17__aq;
wire u_lab3_modgen_counter_column_anx22370z2;
wire u_lab3_modgen_counter_column_ainc_d_18_;
wire u_lab3_modgen_counter_column_areg_q_18__aq;
wire u_lab3_modgen_counter_column_anx56758z2;
wire u_lab3_modgen_counter_column_ainc_d_19_;
wire u_lab3_modgen_counter_column_areg_q_19__aq;
wire u_lab3_modgen_counter_column_anx57983z2;
wire u_lab3_modgen_counter_column_ainc_d_20_;
wire u_lab3_modgen_counter_column_areg_q_20__aq;
wire u_lab3_modgen_counter_column_anx41941z2;
wire u_lab3_modgen_counter_column_ainc_d_21_;
wire u_lab3_modgen_counter_column_areg_q_21__aq;
wire u_lab3_modgen_counter_column_anx58272z2;
wire u_lab3_modgen_counter_column_ainc_d_22_;
wire u_lab3_modgen_counter_column_areg_q_22__aq;
wire u_lab3_modgen_counter_column_anx38412z2;
wire u_lab3_modgen_counter_column_ainc_d_23_;
wire u_lab3_modgen_counter_column_areg_q_23__aq;
wire u_lab3_modgen_counter_column_anx61512z2;
wire u_lab3_modgen_counter_column_ainc_d_24_;
wire u_lab3_modgen_counter_column_areg_q_24__aq;
wire u_lab3_modgen_counter_column_anx36406z2;
wire u_lab3_modgen_counter_column_ainc_d_25_;
wire u_lab3_modgen_counter_column_areg_q_25__aq;
wire u_lab3_modgen_counter_column_anx63518z2;
wire u_lab3_modgen_counter_column_ainc_d_26_;
wire u_lab3_modgen_counter_column_areg_q_26__aq;
wire u_lab3_modgen_counter_column_anx14313z2;
wire u_lab3_modgen_counter_column_ainc_d_27_;
wire u_lab3_modgen_counter_column_areg_q_27__aq;
wire nx63348z5;
wire nx63348z7;
wire nx63348z8;
wire nx63348z6;
wire nx63348z10;
wire nx63348z11;
wire nx63348z12;
wire nx63348z13;
wire nx63348z9;
wire u_lab3_modgen_counter_column_anx16835z2;
wire u_lab3_modgen_counter_column_ainc_d_28_;
wire u_lab3_modgen_counter_column_areg_q_28__aq;
wire u_lab3_modgen_counter_column_anx17553z2;
wire u_lab3_modgen_counter_column_ainc_d_29_;
wire u_lab3_modgen_counter_column_areg_q_29__aq;
wire u_lab3_modgen_counter_column_anx33884z2;
wire u_lab3_modgen_counter_column_ainc_d_30_;
wire u_lab3_modgen_counter_column_areg_q_30__aq;
wire u_lab3_modgen_counter_column_anx18310z2;
wire u_lab3_modgen_counter_column_ainc_d_31_;
wire u_lab3_modgen_counter_column_areg_q_31__aq;
wire nx63348z4;
wire nx63348z3;
wire nx53092z1;
wire u_lab3_reg_compute_flag_aq;
wire nx62351z4;
wire nx62351z3;
wire nx62351z2;
wire nx61354z1;
wire u_lab3_reg_state_2__aq;
wire nx63348z2;
wire nx62351z1;
wire u_lab3_reg_state_3__aq;
wire nx63348z1;
wire u_lab3_reg_state_4__aq;
wire nx59360z1;
wire u_lab3_reg_state_0__aq;
wire yes_uart_u_uart_reg_Dout_7__aq;
wire nx16929z1;
wire u_lab3_reg_addend_15__7__aq;
wire nx13001z1;
wire nx3960z1;
wire u_lab3_reg_stage_1__aq;
wire nx11351z5;
wire nx11351z4;
wire nx11351z3;
wire nx13001z2;
wire u_lab3_reg_subtrahend_15__7__aq;
wire u_lab3_not_minuend_1n1s2_14;
wire nx22064z1;
wire u_lab3_reg_addend_14__7__aq;
wire nx18136z1;
wire nx18136z2;
wire u_lab3_reg_subtrahend_14__7__aq;
wire u_lab3_not_minuend_1n1s2_13;
wire nx27199z1;
wire u_lab3_reg_addend_13__7__aq;
wire nx23271z1;
wire nx23271z2;
wire u_lab3_reg_subtrahend_13__7__aq;
wire u_lab3_not_minuend_1n1s2_12;
wire nx32334z1;
wire u_lab3_reg_addend_12__7__aq;
wire nx28406z1;
wire nx28406z2;
wire u_lab3_reg_subtrahend_12__7__aq;
wire nx46976z18;
wire nx46976z17;
wire u_lab3_not_minuend_1n1s2_8;
wire nx6231z1;
wire u_lab3_reg_addend_8__7__aq;
wire nx29729z1;
wire nx29729z2;
wire u_lab3_reg_subtrahend_8__7__aq;
wire u_lab3_not_minuend_1n1s2_9;
wire nx64440z1;
wire u_lab3_reg_addend_9__7__aq;
wire nx34864z1;
wire nx34864z2;
wire u_lab3_reg_subtrahend_9__7__aq;
wire nx46976z16;
wire u_lab3_not_minuend_1n1s2_11;
wire nx37469z1;
wire u_lab3_reg_addend_11__7__aq;
wire nx33541z1;
wire nx33541z2;
wire u_lab3_reg_subtrahend_11__7__aq;
wire u_lab3_not_minuend_1n1s2_10;
wire nx42604z1;
wire u_lab3_reg_addend_10__7__aq;
wire nx38676z1;
wire nx38676z2;
wire u_lab3_reg_subtrahend_10__7__aq;
wire nx46976z15;
wire u_lab3_not_minuend_1n1s2_6;
wire nx16501z1;
wire u_lab3_reg_addend_6__7__aq;
wire nx46077z1;
wire nx46077z2;
wire u_lab3_reg_subtrahend_6__7__aq;
wire u_lab3_not_minuend_1n1s2_5;
wire nx21636z1;
wire u_lab3_reg_addend_5__7__aq;
wire nx51212z1;
wire nx51212z2;
wire u_lab3_reg_subtrahend_5__7__aq;
wire u_lab3_not_minuend_1n1s2_4;
wire nx26771z1;
wire u_lab3_reg_addend_4__7__aq;
wire nx56347z1;
wire nx56347z2;
wire u_lab3_reg_subtrahend_4__7__aq;
wire nx46976z14;
wire u_lab3_not_minuend_1n1s2_7;
wire nx11366z1;
wire u_lab3_reg_addend_7__7__aq;
wire nx40942z1;
wire nx40942z2;
wire u_lab3_reg_subtrahend_7__7__aq;
wire nx46976z13;
wire u_lab3_not_minuend_1n1s2_2;
wire nx37041z1;
wire u_lab3_reg_addend_2__7__aq;
wire nx1081z1;
wire nx1081z2;
wire u_lab3_reg_subtrahend_2__7__aq;
wire u_lab3_not_minuend_1n1s2_3;
wire nx31906z1;
wire u_lab3_reg_addend_3__7__aq;
wire nx61482z1;
wire nx61482z2;
wire u_lab3_reg_subtrahend_3__7__aq;
wire u_lab3_not_minuend_1n1s2_1;
wire nx42176z1;
wire u_lab3_reg_addend_1__7__aq;
wire nx6216z1;
wire nx6216z2;
wire u_lab3_reg_subtrahend_1__7__aq;
wire u_lab3_not_minuend_1n1s2_0;
wire nx47311z1;
wire u_lab3_reg_addend_0__7__aq;
wire nx11351z1;
wire nx11351z2;
wire u_lab3_reg_subtrahend_0__7__aq;
wire nx46976z12;
wire nx46976z11;
wire nx46976z10;
wire nx22088z1;
wire u_lab3_minuend_1n10ss1_327_;
wire nx22088z2;
wire u_lab3_reg_minuend_10__7__aq;
wire nx27223z1;
wire u_lab3_minuend_1n10ss1_359_;
wire nx27223z2;
wire u_lab3_reg_minuend_11__7__aq;
wire nx36429z1;
wire u_lab3_minuend_1n10ss1_263_;
wire nx36429z2;
wire u_lab3_reg_minuend_8__7__aq;
wire nx41564z1;
wire u_lab3_minuend_1n10ss1_295_;
wire nx41564z2;
wire u_lab3_reg_minuend_9__7__aq;
wire nx46976z7;
wire nx46976z6;
wire nx31294z1;
wire u_lab3_minuend_1n10ss1_231_;
wire nx31294z2;
wire u_lab3_reg_minuend_7__7__aq;
wire nx26159z1;
wire u_lab3_minuend_1n10ss1_199_;
wire nx26159z2;
wire u_lab3_reg_minuend_6__7__aq;
wire nx21024z1;
wire u_lab3_minuend_1n10ss1_167_;
wire nx21024z2;
wire u_lab3_reg_minuend_5__7__aq;
wire nx15889z1;
wire u_lab3_minuend_1n10ss1_135_;
wire nx15889z2;
wire u_lab3_reg_minuend_4__7__aq;
wire nx46976z5;
wire nx46976z4;
wire nx4651z1;
wire u_lab3_minuend_1n10ss1_7_;
wire nx4651z2;
wire u_lab3_reg_minuend_0__7__aq;
wire nx65052z1;
wire u_lab3_minuend_1n10ss1_39_;
wire nx65052z2;
wire u_lab3_reg_minuend_1__7__aq;
wire nx46976z3;
wire nx59917z1;
wire u_lab3_minuend_1n10ss1_71_;
wire nx59917z2;
wire u_lab3_reg_minuend_2__7__aq;
wire nx54782z1;
wire u_lab3_minuend_1n10ss1_103_;
wire nx54782z2;
wire u_lab3_reg_minuend_3__7__aq;
wire nx46976z2;
wire nx46976z1;
wire nx32358z1;
wire u_lab3_minuend_1n10ss1_391_;
wire nx32358z2;
wire u_lab3_reg_minuend_12__7__aq;
wire nx37493z1;
wire u_lab3_minuend_1n10ss1_423_;
wire nx37493z2;
wire u_lab3_reg_minuend_13__7__aq;
wire nx46976z9;
wire nx47763z1;
wire u_lab3_minuend_1n10ss1_487_;
wire nx47763z2;
wire u_lab3_reg_minuend_15__7__aq;
wire nx42628z1;
wire u_lab3_minuend_1n10ss1_455_;
wire nx42628z2;
wire u_lab3_reg_minuend_14__7__aq;
wire nx46976z8;
wire u_lab3_reg_addend_15__6__aq;
wire nx12004z1;
wire u_lab3_reg_subtrahend_15__6__aq;
wire u_lab3_reg_addend_14__6__aq;
wire nx17139z1;
wire u_lab3_reg_subtrahend_14__6__aq;
wire u_lab3_reg_addend_12__6__aq;
wire nx27409z1;
wire u_lab3_reg_subtrahend_12__6__aq;
wire u_lab3_reg_addend_13__6__aq;
wire nx22274z1;
wire u_lab3_reg_subtrahend_13__6__aq;
wire nx63307z18;
wire nx63307z17;
wire u_lab3_reg_addend_7__6__aq;
wire nx39945z1;
wire u_lab3_reg_subtrahend_7__6__aq;
wire u_lab3_reg_addend_6__6__aq;
wire nx45080z1;
wire u_lab3_reg_subtrahend_6__6__aq;
wire u_lab3_reg_addend_4__6__aq;
wire nx55350z1;
wire u_lab3_reg_subtrahend_4__6__aq;
wire u_lab3_reg_addend_5__6__aq;
wire nx50215z1;
wire u_lab3_reg_subtrahend_5__6__aq;
wire nx63307z14;
wire nx63307z13;
wire u_lab3_reg_addend_2__6__aq;
wire nx84z1;
wire u_lab3_reg_subtrahend_2__6__aq;
wire u_lab3_reg_addend_3__6__aq;
wire nx60485z1;
wire u_lab3_reg_subtrahend_3__6__aq;
wire u_lab3_reg_addend_0__6__aq;
wire nx10354z1;
wire u_lab3_reg_subtrahend_0__6__aq;
wire u_lab3_reg_addend_1__6__aq;
wire nx5219z1;
wire u_lab3_reg_subtrahend_1__6__aq;
wire nx63307z12;
wire nx63307z11;
wire nx63307z10;
wire u_lab3_reg_addend_10__6__aq;
wire nx37679z1;
wire u_lab3_reg_subtrahend_10__6__aq;
wire u_lab3_reg_addend_11__6__aq;
wire nx32544z1;
wire u_lab3_reg_subtrahend_11__6__aq;
wire u_lab3_reg_addend_9__6__aq;
wire nx35861z1;
wire u_lab3_reg_subtrahend_9__6__aq;
wire u_lab3_reg_addend_8__6__aq;
wire nx30726z1;
wire u_lab3_reg_subtrahend_8__6__aq;
wire nx63307z16;
wire nx63307z15;
wire u_lab3_minuend_1n10ss1_454_;
wire u_lab3_reg_minuend_14__6__aq;
wire u_lab3_minuend_1n10ss1_390_;
wire u_lab3_reg_minuend_12__6__aq;
wire u_lab3_minuend_1n10ss1_422_;
wire u_lab3_reg_minuend_13__6__aq;
wire nx63307z9;
wire u_lab3_minuend_1n10ss1_486_;
wire u_lab3_reg_minuend_15__6__aq;
wire nx63307z8;
wire u_lab3_minuend_1n10ss1_326_;
wire u_lab3_reg_minuend_10__6__aq;
wire u_lab3_minuend_1n10ss1_358_;
wire u_lab3_reg_minuend_11__6__aq;
wire u_lab3_minuend_1n10ss1_262_;
wire u_lab3_reg_minuend_8__6__aq;
wire u_lab3_minuend_1n10ss1_294_;
wire u_lab3_reg_minuend_9__6__aq;
wire nx63307z7;
wire nx63307z6;
wire u_lab3_minuend_1n10ss1_166_;
wire u_lab3_reg_minuend_5__6__aq;
wire u_lab3_minuend_1n10ss1_134_;
wire u_lab3_reg_minuend_4__6__aq;
wire nx63307z5;
wire u_lab3_minuend_1n10ss1_230_;
wire u_lab3_reg_minuend_7__6__aq;
wire u_lab3_minuend_1n10ss1_198_;
wire u_lab3_reg_minuend_6__6__aq;
wire nx63307z4;
wire u_lab3_minuend_1n10ss1_102_;
wire u_lab3_reg_minuend_3__6__aq;
wire u_lab3_minuend_1n10ss1_70_;
wire u_lab3_reg_minuend_2__6__aq;
wire u_lab3_minuend_1n10ss1_6_;
wire u_lab3_reg_minuend_0__6__aq;
wire u_lab3_minuend_1n10ss1_38_;
wire u_lab3_reg_minuend_1__6__aq;
wire nx63307z3;
wire nx63307z2;
wire nx63307z1;
wire yes_uart_u_uart_reg_Rx_Reg_5__afeeder_combout;
wire yes_uart_u_uart_reg_Rx_Reg_5__aq;
wire yes_uart_u_uart_reg_Dout_5__aq;
wire u_lab3_reg_addend_11__5__aq;
wire nx31547z1;
wire u_lab3_reg_subtrahend_11__5__aq;
wire u_lab3_reg_addend_10__5__aq;
wire nx36682z1;
wire u_lab3_reg_subtrahend_10__5__aq;
wire u_lab3_reg_addend_8__5__aq;
wire nx31723z1;
wire u_lab3_reg_subtrahend_8__5__aq;
wire u_lab3_reg_addend_9__5__aq;
wire nx36858z1;
wire u_lab3_reg_subtrahend_9__5__aq;
wire nx33377z16;
wire nx33377z15;
wire u_lab3_reg_addend_7__5__aq;
wire nx38948z1;
wire u_lab3_reg_subtrahend_7__5__aq;
wire u_lab3_reg_addend_6__5__aq;
wire nx44083z1;
wire u_lab3_reg_subtrahend_6__5__aq;
wire u_lab3_reg_addend_4__5__aq;
wire nx54353z1;
wire u_lab3_reg_subtrahend_4__5__aq;
wire u_lab3_reg_addend_5__5__aq;
wire nx49218z1;
wire u_lab3_reg_subtrahend_5__5__aq;
wire nx33377z14;
wire nx33377z13;
wire u_lab3_reg_addend_3__5__aq;
wire nx59488z1;
wire u_lab3_reg_subtrahend_3__5__aq;
wire u_lab3_reg_addend_2__5__aq;
wire nx64623z1;
wire u_lab3_reg_subtrahend_2__5__aq;
wire u_lab3_reg_addend_0__5__aq;
wire nx9357z1;
wire u_lab3_reg_subtrahend_0__5__aq;
wire u_lab3_reg_addend_1__5__aq;
wire nx4222z1;
wire u_lab3_reg_subtrahend_1__5__aq;
wire nx33377z12;
wire nx33377z11;
wire nx33377z10;
wire u_lab3_reg_addend_15__5__aq;
wire nx11007z1;
wire u_lab3_reg_subtrahend_15__5__aq;
wire u_lab3_reg_addend_14__5__aq;
wire nx16142z1;
wire u_lab3_reg_subtrahend_14__5__aq;
wire u_lab3_reg_addend_13__5__aq;
wire nx21277z1;
wire u_lab3_reg_subtrahend_13__5__aq;
wire u_lab3_reg_addend_12__5__aq;
wire nx26412z1;
wire u_lab3_reg_subtrahend_12__5__aq;
wire nx33377z18;
wire nx33377z17;
wire u_lab3_minuend_1n10ss1_453_;
wire u_lab3_reg_minuend_14__5__aq;
wire u_lab3_minuend_1n10ss1_485_;
wire u_lab3_reg_minuend_15__5__aq;
wire u_lab3_minuend_1n10ss1_389_;
wire u_lab3_reg_minuend_12__5__aq;
wire u_lab3_minuend_1n10ss1_421_;
wire u_lab3_reg_minuend_13__5__aq;
wire nx33377z9;
wire nx33377z8;
wire u_lab3_minuend_1n10ss1_357_;
wire u_lab3_reg_minuend_11__5__aq;
wire u_lab3_minuend_1n10ss1_325_;
wire u_lab3_reg_minuend_10__5__aq;
wire u_lab3_minuend_1n10ss1_261_;
wire u_lab3_reg_minuend_8__5__aq;
wire u_lab3_minuend_1n10ss1_293_;
wire u_lab3_reg_minuend_9__5__aq;
wire nx33377z7;
wire nx33377z6;
wire u_lab3_minuend_1n10ss1_229_;
wire u_lab3_reg_minuend_7__5__aq;
wire u_lab3_minuend_1n10ss1_197_;
wire u_lab3_reg_minuend_6__5__aq;
wire u_lab3_minuend_1n10ss1_133_;
wire u_lab3_reg_minuend_4__5__aq;
wire u_lab3_minuend_1n10ss1_165_;
wire u_lab3_reg_minuend_5__5__aq;
wire nx33377z5;
wire nx33377z4;
wire u_lab3_minuend_1n10ss1_69_;
wire u_lab3_reg_minuend_2__5__aq;
wire u_lab3_minuend_1n10ss1_101_;
wire u_lab3_reg_minuend_3__5__aq;
wire u_lab3_minuend_1n10ss1_5_;
wire u_lab3_reg_minuend_0__5__aq;
wire u_lab3_minuend_1n10ss1_37_;
wire u_lab3_reg_minuend_1__5__aq;
wire nx33377z3;
wire nx33377z2;
wire nx33377z1;
wire yes_uart_u_uart_reg_Rx_Reg_4__aq;
wire yes_uart_u_uart_reg_Dout_4__aq;
wire u_lab3_reg_addend_11__4__aq;
wire nx30550z1;
wire u_lab3_reg_subtrahend_11__4__aq;
wire u_lab3_reg_addend_8__4__aq;
wire nx32720z1;
wire u_lab3_reg_subtrahend_8__4__aq;
wire u_lab3_reg_addend_9__4__aq;
wire nx37855z1;
wire u_lab3_reg_subtrahend_9__4__aq;
wire nx64525z16;
wire u_lab3_reg_addend_10__4__aq;
wire nx35685z1;
wire u_lab3_reg_subtrahend_10__4__aq;
wire nx64525z15;
wire u_lab3_reg_addend_15__4__aq;
wire nx10010z1;
wire u_lab3_reg_subtrahend_15__4__aq;
wire u_lab3_reg_addend_14__4__aq;
wire nx15145z1;
wire u_lab3_reg_subtrahend_14__4__aq;
wire u_lab3_reg_addend_13__4__aq;
wire nx20280z1;
wire u_lab3_reg_subtrahend_13__4__aq;
wire u_lab3_reg_addend_12__4__aq;
wire nx25415z1;
wire u_lab3_reg_subtrahend_12__4__aq;
wire nx64525z18;
wire nx64525z17;
wire u_lab3_reg_addend_6__4__aq;
wire nx43086z1;
wire u_lab3_reg_subtrahend_6__4__aq;
wire u_lab3_reg_addend_7__4__aq;
wire nx37951z1;
wire u_lab3_reg_subtrahend_7__4__aq;
wire u_lab3_reg_addend_5__4__aq;
wire nx48221z1;
wire u_lab3_reg_subtrahend_5__4__aq;
wire u_lab3_reg_addend_4__4__aq;
wire nx53356z1;
wire u_lab3_reg_subtrahend_4__4__aq;
wire nx64525z14;
wire nx64525z13;
wire u_lab3_reg_addend_2__4__aq;
wire nx63626z1;
wire u_lab3_reg_subtrahend_2__4__aq;
wire u_lab3_reg_addend_3__4__aq;
wire nx58491z1;
wire u_lab3_reg_subtrahend_3__4__aq;
wire u_lab3_reg_addend_0__4__aq;
wire nx8360z1;
wire u_lab3_reg_subtrahend_0__4__aq;
wire u_lab3_reg_addend_1__4__aq;
wire nx3225z1;
wire u_lab3_reg_subtrahend_1__4__aq;
wire nx64525z12;
wire nx64525z11;
wire nx64525z10;
wire u_lab3_minuend_1n10ss1_324_;
wire u_lab3_reg_minuend_10__4__aq;
wire u_lab3_minuend_1n10ss1_356_;
wire u_lab3_reg_minuend_11__4__aq;
wire u_lab3_minuend_1n10ss1_292_;
wire u_lab3_reg_minuend_9__4__aq;
wire u_lab3_minuend_1n10ss1_260_;
wire u_lab3_reg_minuend_8__4__aq;
wire nx64525z7;
wire nx64525z6;
wire u_lab3_minuend_1n10ss1_452_;
wire u_lab3_reg_minuend_14__4__aq;
wire u_lab3_minuend_1n10ss1_484_;
wire u_lab3_reg_minuend_15__4__aq;
wire u_lab3_minuend_1n10ss1_388_;
wire u_lab3_reg_minuend_12__4__aq;
wire u_lab3_minuend_1n10ss1_420_;
wire u_lab3_reg_minuend_13__4__aq;
wire nx64525z9;
wire nx64525z8;
wire u_lab3_minuend_1n10ss1_228_;
wire u_lab3_reg_minuend_7__4__aq;
wire u_lab3_minuend_1n10ss1_196_;
wire u_lab3_reg_minuend_6__4__aq;
wire u_lab3_minuend_1n10ss1_132_;
wire u_lab3_reg_minuend_4__4__aq;
wire u_lab3_minuend_1n10ss1_164_;
wire u_lab3_reg_minuend_5__4__aq;
wire nx64525z5;
wire nx64525z4;
wire u_lab3_minuend_1n10ss1_100_;
wire u_lab3_reg_minuend_3__4__aq;
wire u_lab3_minuend_1n10ss1_68_;
wire u_lab3_reg_minuend_2__4__aq;
wire u_lab3_minuend_1n10ss1_4_;
wire u_lab3_reg_minuend_0__4__aq;
wire u_lab3_minuend_1n10ss1_36_;
wire u_lab3_reg_minuend_1__4__aq;
wire nx64525z3;
wire nx64525z2;
wire nx64525z1;
wire yes_uart_u_uart_reg_Rx_Reg_3__afeeder_combout;
wire yes_uart_u_uart_reg_Rx_Reg_3__aq;
wire yes_uart_u_uart_reg_Dout_3__aq;
wire u_lab3_reg_addend_11__3__aq;
wire nx29553z1;
wire u_lab3_reg_subtrahend_11__3__aq;
wire u_lab3_minuend_1n10ss1_355_;
wire u_lab3_reg_minuend_11__3__aq;
wire u_lab3_reg_addend_10__3__aq;
wire nx34688z1;
wire u_lab3_reg_subtrahend_10__3__aq;
wire u_lab3_minuend_1n10ss1_323_;
wire u_lab3_reg_minuend_10__3__aq;
wire u_lab3_reg_addend_9__3__aq;
wire nx38852z1;
wire u_lab3_reg_subtrahend_9__3__aq;
wire u_lab3_minuend_1n10ss1_291_;
wire u_lab3_reg_minuend_9__3__aq;
wire u_lab3_reg_addend_8__3__aq;
wire nx33717z1;
wire u_lab3_reg_subtrahend_8__3__aq;
wire u_lab3_minuend_1n10ss1_259_;
wire u_lab3_reg_minuend_8__3__aq;
wire nx17342z7;
wire nx17342z6;
wire u_lab3_reg_addend_7__3__aq;
wire nx36954z1;
wire u_lab3_reg_subtrahend_7__3__aq;
wire u_lab3_minuend_1n10ss1_227_;
wire u_lab3_reg_minuend_7__3__aq;
wire u_lab3_reg_addend_6__3__aq;
wire nx42089z1;
wire u_lab3_reg_subtrahend_6__3__aq;
wire u_lab3_minuend_1n10ss1_195_;
wire u_lab3_reg_minuend_6__3__aq;
wire u_lab3_reg_addend_4__3__aq;
wire nx52359z1;
wire u_lab3_reg_subtrahend_4__3__aq;
wire u_lab3_minuend_1n10ss1_131_;
wire u_lab3_reg_minuend_4__3__aq;
wire u_lab3_reg_addend_5__3__aq;
wire nx47224z1;
wire u_lab3_reg_subtrahend_5__3__aq;
wire u_lab3_minuend_1n10ss1_163_;
wire u_lab3_reg_minuend_5__3__aq;
wire nx17342z5;
wire nx17342z4;
wire u_lab3_reg_addend_3__3__aq;
wire nx57494z1;
wire u_lab3_reg_subtrahend_3__3__aq;
wire u_lab3_minuend_1n10ss1_99_;
wire u_lab3_reg_minuend_3__3__aq;
wire u_lab3_reg_addend_2__3__aq;
wire nx62629z1;
wire u_lab3_reg_subtrahend_2__3__aq;
wire u_lab3_minuend_1n10ss1_67_;
wire u_lab3_reg_minuend_2__3__aq;
wire u_lab3_reg_addend_1__3__aq;
wire nx2228z1;
wire u_lab3_reg_subtrahend_1__3__aq;
wire u_lab3_minuend_1n10ss1_35_;
wire u_lab3_reg_minuend_1__3__aq;
wire u_lab3_reg_addend_0__3__aq;
wire nx7363z1;
wire u_lab3_reg_subtrahend_0__3__aq;
wire u_lab3_minuend_1n10ss1_3_;
wire u_lab3_reg_minuend_0__3__aq;
wire nx17342z3;
wire nx17342z2;
wire nx17342z1;
wire u_lab3_reg_addend_14__3__aq;
wire nx14148z1;
wire u_lab3_reg_subtrahend_14__3__aq;
wire u_lab3_minuend_1n10ss1_451_;
wire u_lab3_reg_minuend_14__3__aq;
wire u_lab3_reg_addend_13__3__aq;
wire nx19283z1;
wire u_lab3_reg_subtrahend_13__3__aq;
wire u_lab3_minuend_1n10ss1_419_;
wire u_lab3_reg_minuend_13__3__aq;
wire u_lab3_reg_addend_12__3__aq;
wire nx24418z1;
wire u_lab3_reg_subtrahend_12__3__aq;
wire u_lab3_minuend_1n10ss1_387_;
wire u_lab3_reg_minuend_12__3__aq;
wire nx17342z9;
wire u_lab3_reg_addend_15__3__aq;
wire nx9013z1;
wire u_lab3_reg_subtrahend_15__3__aq;
wire u_lab3_minuend_1n10ss1_483_;
wire u_lab3_reg_minuend_15__3__aq;
wire nx17342z8;
wire nx17342z12;
wire nx17342z11;
wire nx17342z14;
wire nx17342z13;
wire nx17342z10;
wire nx17342z16;
wire nx17342z15;
wire nx17342z18;
wire nx17342z17;
wire yes_uart_u_uart_reg_Rx_Reg_2__afeeder_combout;
wire yes_uart_u_uart_reg_Rx_Reg_2__aq;
wire yes_uart_u_uart_reg_Dout_2__aq;
wire u_lab3_reg_addend_11__2__aq;
wire nx28556z1;
wire u_lab3_reg_subtrahend_11__2__aq;
wire u_lab3_reg_addend_10__2__aq;
wire nx33691z1;
wire u_lab3_reg_subtrahend_10__2__aq;
wire u_lab3_reg_addend_9__2__aq;
wire nx39849z1;
wire u_lab3_reg_subtrahend_9__2__afeeder_combout;
wire u_lab3_reg_subtrahend_9__2__aq;
wire u_lab3_reg_addend_8__2__aq;
wire nx34714z1;
wire u_lab3_reg_subtrahend_8__2__aq;
wire nx13806z16;
wire nx13806z15;
wire u_lab3_reg_addend_14__2__aq;
wire nx13151z1;
wire u_lab3_reg_subtrahend_14__2__aq;
wire u_lab3_reg_addend_15__2__aq;
wire nx8016z1;
wire u_lab3_reg_subtrahend_15__2__aq;
wire u_lab3_reg_addend_13__2__aq;
wire nx18286z1;
wire u_lab3_reg_subtrahend_13__2__aq;
wire u_lab3_reg_addend_12__2__aq;
wire nx23421z1;
wire u_lab3_reg_subtrahend_12__2__aq;
wire nx13806z18;
wire nx13806z17;
wire u_lab3_reg_addend_6__2__aq;
wire nx41092z1;
wire u_lab3_reg_subtrahend_6__2__aq;
wire u_lab3_reg_addend_7__2__aq;
wire nx35957z1;
wire u_lab3_reg_subtrahend_7__2__aq;
wire u_lab3_reg_addend_5__2__aq;
wire nx46227z1;
wire u_lab3_reg_subtrahend_5__2__aq;
wire u_lab3_reg_addend_4__2__aq;
wire nx51362z1;
wire u_lab3_reg_subtrahend_4__2__aq;
wire nx13806z14;
wire nx13806z13;
wire u_lab3_reg_addend_2__2__aq;
wire nx61632z1;
wire u_lab3_reg_subtrahend_2__2__aq;
wire u_lab3_reg_addend_3__2__aq;
wire nx56497z1;
wire u_lab3_reg_subtrahend_3__2__aq;
wire u_lab3_reg_addend_0__2__aq;
wire nx6366z1;
wire u_lab3_reg_subtrahend_0__2__aq;
wire u_lab3_reg_addend_1__2__aq;
wire nx1231z1;
wire u_lab3_reg_subtrahend_1__2__aq;
wire nx13806z12;
wire nx13806z11;
wire nx13806z10;
wire u_lab3_minuend_1n10ss1_354_;
wire u_lab3_reg_minuend_11__2__aq;
wire u_lab3_minuend_1n10ss1_322_;
wire u_lab3_reg_minuend_10__2__aq;
wire u_lab3_minuend_1n10ss1_258_;
wire u_lab3_reg_minuend_8__2__aq;
wire u_lab3_minuend_1n10ss1_290_;
wire u_lab3_reg_minuend_9__2__aq;
wire nx13806z7;
wire nx13806z6;
wire u_lab3_minuend_1n10ss1_482_;
wire u_lab3_reg_minuend_15__2__aq;
wire u_lab3_minuend_1n10ss1_450_;
wire u_lab3_reg_minuend_14__2__aq;
wire u_lab3_minuend_1n10ss1_386_;
wire u_lab3_reg_minuend_12__2__aq;
wire u_lab3_minuend_1n10ss1_418_;
wire u_lab3_reg_minuend_13__2__aq;
wire nx13806z9;
wire nx13806z8;
wire u_lab3_minuend_1n10ss1_194_;
wire u_lab3_reg_minuend_6__2__aq;
wire u_lab3_minuend_1n10ss1_226_;
wire u_lab3_reg_minuend_7__2__aq;
wire u_lab3_minuend_1n10ss1_162_;
wire u_lab3_reg_minuend_5__2__aq;
wire u_lab3_minuend_1n10ss1_130_;
wire u_lab3_reg_minuend_4__2__aq;
wire nx13806z5;
wire nx13806z4;
wire u_lab3_minuend_1n10ss1_66_;
wire u_lab3_reg_minuend_2__2__aq;
wire u_lab3_minuend_1n10ss1_98_;
wire u_lab3_reg_minuend_3__2__aq;
wire u_lab3_minuend_1n10ss1_34_;
wire u_lab3_reg_minuend_1__2__aq;
wire u_lab3_minuend_1n10ss1_2_;
wire u_lab3_reg_minuend_0__2__aq;
wire nx13806z3;
wire nx13806z2;
wire nx13806z1;
wire yes_uart_u_uart_reg_Rx_Reg_1__afeeder_combout;
wire yes_uart_u_uart_reg_Rx_Reg_1__aq;
wire yes_uart_u_uart_reg_Dout_1__aq;
wire u_lab3_reg_addend_11__1__aq;
wire nx27559z1;
wire u_lab3_reg_subtrahend_11__1__aq;
wire u_lab3_reg_addend_10__1__aq;
wire nx32694z1;
wire u_lab3_reg_subtrahend_10__1__aq;
wire u_lab3_reg_addend_9__1__aq;
wire nx40846z1;
wire u_lab3_reg_subtrahend_9__1__aq;
wire u_lab3_reg_addend_8__1__aq;
wire nx35711z1;
wire u_lab3_reg_subtrahend_8__1__aq;
wire nx63011z16;
wire nx63011z15;
wire u_lab3_reg_addend_6__1__aq;
wire nx40095z1;
wire u_lab3_reg_subtrahend_6__1__aq;
wire u_lab3_reg_addend_7__1__aq;
wire nx34960z1;
wire u_lab3_reg_subtrahend_7__1__aq;
wire u_lab3_reg_addend_4__1__aq;
wire nx50365z1;
wire u_lab3_reg_subtrahend_4__1__aq;
wire u_lab3_reg_addend_5__1__aq;
wire nx45230z1;
wire u_lab3_reg_subtrahend_5__1__aq;
wire nx63011z14;
wire nx63011z13;
wire u_lab3_reg_addend_3__1__aq;
wire nx55500z1;
wire u_lab3_reg_subtrahend_3__1__aq;
wire u_lab3_reg_addend_2__1__aq;
wire nx60635z1;
wire u_lab3_reg_subtrahend_2__1__aq;
wire u_lab3_reg_addend_1__1__aq;
wire nx234z1;
wire u_lab3_reg_subtrahend_1__1__aq;
wire u_lab3_reg_addend_0__1__aq;
wire nx5369z1;
wire u_lab3_reg_subtrahend_0__1__aq;
wire nx63011z12;
wire nx63011z11;
wire nx63011z10;
wire u_lab3_reg_addend_15__1__aq;
wire nx7019z1;
wire u_lab3_reg_subtrahend_15__1__aq;
wire u_lab3_reg_addend_14__1__aq;
wire nx12154z1;
wire u_lab3_reg_subtrahend_14__1__aq;
wire u_lab3_reg_addend_12__1__aq;
wire nx22424z1;
wire u_lab3_reg_subtrahend_12__1__aq;
wire u_lab3_reg_addend_13__1__aq;
wire nx17289z1;
wire u_lab3_reg_subtrahend_13__1__aq;
wire nx63011z18;
wire nx63011z17;
wire u_lab3_minuend_1n10ss1_289_;
wire u_lab3_reg_minuend_9__1__aq;
wire u_lab3_minuend_1n10ss1_257_;
wire u_lab3_reg_minuend_8__1__aq;
wire nx63011z7;
wire u_lab3_minuend_1n10ss1_353_;
wire u_lab3_reg_minuend_11__1__aq;
wire u_lab3_minuend_1n10ss1_321_;
wire u_lab3_reg_minuend_10__1__aq;
wire nx63011z6;
wire u_lab3_minuend_1n10ss1_97_;
wire u_lab3_reg_minuend_3__1__aq;
wire u_lab3_minuend_1n10ss1_65_;
wire u_lab3_reg_minuend_2__1__aq;
wire u_lab3_minuend_1n10ss1_33_;
wire u_lab3_reg_minuend_1__1__aq;
wire u_lab3_minuend_1n10ss1_1_;
wire u_lab3_reg_minuend_0__1__aq;
wire nx63011z3;
wire nx63011z2;
wire u_lab3_minuend_1n10ss1_193_;
wire u_lab3_reg_minuend_6__1__aq;
wire u_lab3_minuend_1n10ss1_225_;
wire u_lab3_reg_minuend_7__1__aq;
wire u_lab3_minuend_1n10ss1_129_;
wire u_lab3_reg_minuend_4__1__aq;
wire u_lab3_minuend_1n10ss1_161_;
wire u_lab3_reg_minuend_5__1__aq;
wire nx63011z5;
wire nx63011z4;
wire nx63011z1;
wire u_lab3_minuend_1n10ss1_385_;
wire u_lab3_reg_minuend_12__1__aq;
wire u_lab3_minuend_1n10ss1_417_;
wire u_lab3_reg_minuend_13__1__aq;
wire nx63011z9;
wire u_lab3_minuend_1n10ss1_481_;
wire u_lab3_reg_minuend_15__1__aq;
wire u_lab3_minuend_1n10ss1_449_;
wire u_lab3_reg_minuend_14__1__aq;
wire nx63011z8;
wire yes_uart_u_uart_reg_Rx_Reg_0__afeeder_combout;
wire yes_uart_u_uart_reg_Rx_Reg_0__aq;
wire yes_uart_u_uart_reg_Dout_0__afeeder_combout;
wire yes_uart_u_uart_reg_Dout_0__aq;
wire u_lab3_reg_addend_15__0__aq;
wire nx6022z1;
wire u_lab3_reg_subtrahend_15__0__aq;
wire u_lab3_reg_addend_14__0__aq;
wire nx11157z1;
wire u_lab3_reg_subtrahend_14__0__aq;
wire u_lab3_reg_addend_13__0__aq;
wire nx16292z1;
wire u_lab3_reg_subtrahend_13__0__aq;
wire u_lab3_reg_addend_12__0__aq;
wire nx21427z1;
wire u_lab3_reg_subtrahend_12__0__aq;
wire nx36913z18;
wire nx36913z17;
wire u_lab3_reg_addend_11__0__aq;
wire nx26562z1;
wire u_lab3_reg_subtrahend_11__0__aq;
wire u_lab3_reg_addend_10__0__aq;
wire nx31697z1;
wire u_lab3_reg_subtrahend_10__0__aq;
wire u_lab3_reg_addend_9__0__aq;
wire nx41843z14;
wire u_lab3_reg_subtrahend_9__0__afeeder_combout;
wire u_lab3_reg_subtrahend_9__0__aq;
wire u_lab3_reg_addend_8__0__aq;
wire nx36708z1;
wire u_lab3_reg_subtrahend_8__0__aq;
wire nx36913z16;
wire nx36913z15;
wire u_lab3_reg_addend_2__0__aq;
wire nx59638z1;
wire u_lab3_reg_subtrahend_2__0__aq;
wire u_lab3_reg_addend_3__0__aq;
wire nx54503z1;
wire u_lab3_reg_subtrahend_3__0__aq;
wire u_lab3_reg_addend_0__0__aq;
wire nx4372z1;
wire u_lab3_reg_subtrahend_0__0__aq;
wire u_lab3_reg_addend_1__0__aq;
wire nx64773z1;
wire u_lab3_reg_subtrahend_1__0__aq;
wire nx36913z12;
wire nx36913z11;
wire u_lab3_reg_addend_6__0__aq;
wire nx39098z1;
wire u_lab3_reg_subtrahend_6__0__aq;
wire u_lab3_reg_addend_7__0__aq;
wire nx33963z1;
wire u_lab3_reg_subtrahend_7__0__aq;
wire u_lab3_reg_addend_4__0__aq;
wire nx49368z1;
wire u_lab3_reg_subtrahend_4__0__aq;
wire u_lab3_reg_addend_5__0__aq;
wire nx44233z1;
wire u_lab3_reg_subtrahend_5__0__aq;
wire nx36913z14;
wire nx36913z13;
wire nx36913z10;
wire u_lab3_minuend_1n10ss1_352_;
wire u_lab3_reg_minuend_11__0__aq;
wire u_lab3_minuend_1n10ss1_320_;
wire u_lab3_reg_minuend_10__0__aq;
wire u_lab3_minuend_1n10ss1_288_;
wire u_lab3_reg_minuend_9__0__aq;
wire u_lab3_minuend_1n10ss1_256_;
wire u_lab3_reg_minuend_8__0__aq;
wire nx36913z7;
wire nx36913z6;
wire u_lab3_minuend_1n10ss1_448_;
wire u_lab3_reg_minuend_14__0__aq;
wire u_lab3_minuend_1n10ss1_480_;
wire u_lab3_reg_minuend_15__0__aq;
wire u_lab3_minuend_1n10ss1_384_;
wire u_lab3_reg_minuend_12__0__aq;
wire u_lab3_minuend_1n10ss1_416_;
wire u_lab3_reg_minuend_13__0__aq;
wire nx36913z9;
wire nx36913z8;
wire u_lab3_minuend_1n10ss1_192_;
wire u_lab3_reg_minuend_6__0__aq;
wire u_lab3_minuend_1n10ss1_224_;
wire u_lab3_reg_minuend_7__0__aq;
wire u_lab3_minuend_1n10ss1_128_;
wire u_lab3_reg_minuend_4__0__aq;
wire u_lab3_minuend_1n10ss1_160_;
wire u_lab3_reg_minuend_5__0__aq;
wire nx36913z5;
wire nx36913z4;
wire u_lab3_minuend_1n10ss1_96_;
wire u_lab3_reg_minuend_3__0__aq;
wire u_lab3_minuend_1n10ss1_64_;
wire u_lab3_reg_minuend_2__0__aq;
wire u_lab3_minuend_1n10ss1_0_;
wire u_lab3_reg_minuend_0__0__aq;
wire u_lab3_minuend_1n10ss1_32_;
wire u_lab3_reg_minuend_1__0__aq;
wire nx36913z3;
wire nx36913z2;
wire nx36913z1;
wire nx63011z19;
wire nx13806z19;
wire nx17342z19;
wire nx64525z19;
wire nx33377z19;
wire nx63307z19;
wire nx46976z19;
wire nx17564z1;
wire u_lab3_p_1n7s3_9_;
wire u_lab3_p_1n7s3_7_;
wire u_lab3_p_1n7s3_6_;
wire u_lab3_p_1n7s3_5_;
wire u_lab3_p_1n7s3_4_;
wire u_lab3_p_1n7s3_3_;
wire u_lab3_p_1n7s3_2_;
wire u_lab3_p_1n7s3_1_;
wire u_lab3_p_1n7s3_0_;
wire nx43842z1;
wire nx59416z1;
wire nx27511z1;
wire nx43085z1;
wire nx6877z1;
wire nx56839z1;
wire nx41265z1;
wire nx19195z1;
wire nx57902z1;
wire u_lab3_p_add9_1i276_ix60_fadd_a1_cout;
wire nx49424z1;
wire u_lab3_p_1n7s2_31_;
wire nx31891z1;
wire u_lab3_reg_p_31__aq;
wire nx19416z1;
wire reg_q_0__dup_37_aq;
wire nx18768z1;
wire inc_d_1__dup_3038;
wire reg_q_1__dup_36_aq;
wire nx52399z1;
wire inc_d_2__dup_3040;
wire reg_q_2__dup_35_aq;
wire nx2437z1;
wire inc_d_3__dup_3042;
wire reg_q_3__dup_34_aq;
wire nx47525z1;
wire inc_d_4__dup_3044;
wire reg_q_4__dup_33_aq;
wire nx31951z1;
wire inc_d_5__dup_3046;
wire reg_q_5__dup_32_aq;
wire nx16377z1;
wire inc_d_6__dup_3048;
wire reg_q_6__dup_31_aq;
wire reg_byte_reg_5__aq;
wire nx51544z9;
wire nx56069z1;
wire inc_d_7__dup_3050;
wire reg_q_7__dup_30_aq;
wire nx53431z1;
wire inc_d_7_;
wire reg_q_7__aq;
wire reg_byte_reg_7__aq;
wire nx51544z11;
wire reg_byte_reg_4__aq;
wire nx51544z8;
wire reg_byte_reg_2__aq;
wire nx51544z5;
wire reg_byte_reg_1__aq;
wire nx51544z4;
wire reg_byte_reg_3__aq;
wire nx51544z6;
wire reg_byte_reg_0__aq;
wire nx51544z3;
wire nx18625z1;
wire u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout;
wire u_seg7_u_dual_seg7_reg_prev_char0_en_aq;
wire u_seg7_u_dual_seg7_load_reg;
wire u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq;
wire nx28027z1;
wire u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq;
wire nx51544z1;
wire u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq;
wire u_seg7_u_dual_seg7_muxed_char_0_;
wire u_seg7_u_dual_seg7_reg_o_char_0__aq;
wire u_seg7_u_dual_seg7_muxed_char_2_;
wire u_seg7_u_dual_seg7_reg_o_char_2__aq;
wire u_seg7_u_dual_seg7_muxed_char_3_;
wire u_seg7_u_dual_seg7_reg_o_char_3__aq;
wire u_seg7_u_dual_seg7_muxed_char_4_;
wire u_seg7_u_dual_seg7_reg_o_char_4__aq;
wire nx6634z1;
wire u_lab3_reg_o_done_aq;
wire u_seg7_u_dual_seg7_reg_o_char_7__afeeder_combout;
wire u_seg7_u_dual_seg7_reg_o_char_7__aq;
wire sw_a2_a_ainput_o;
wire inc_d_0__dup_2867;
wire reg_q_0__dup_29_aq;
wire nx47817z1;
wire inc_d_1__dup_2869;
wire reg_q_1__dup_28_aq;
wire nx51350z1;
wire inc_d_2__dup_2871;
wire reg_q_2__dup_27_aq;
wire nx1388z1;
wire inc_d_3__dup_2873;
wire reg_q_3__dup_26_aq;
wire nx16962z1;
wire inc_d_4__dup_2875;
wire reg_q_4__dup_25_aq;
wire nx32536z1;
wire inc_d_5__dup_2877;
wire reg_q_5__dup_24_aq;
wire nx17426z1;
wire inc_d_6__dup_2879;
wire reg_q_6__dup_23_aq;
wire nx49331z1;
wire inc_d_7__dup_2881;
wire reg_q_7__dup_22_aq;
wire nx33757z1;
wire inc_d_8__dup_2883;
wire reg_q_8__dup_21_aq;
wire nx62450z6;
wire nx62450z5;
wire nx62450z4;
wire nx47250z1;
wire inc_d_9__dup_2885;
wire reg_q_9__dup_20_aq;
wire nx47353z1;
wire inc_d_10__dup_2887;
wire reg_q_10__dup_19_aq;
wire nx62450z3;
wire nx55140z1;
wire inc_d_11_;
wire reg_q_11__aq;
wire nx62450z2;
wire nx62450z1;
wire yes_uart_u_uart_reg_TopTx_aq;
wire nx45921z1;
wire yes_uart_u_uart_reg_TxFSM_1__aq;
wire nx46262z1;
wire yes_uart_u_uart_reg_TxBusy_aq;
wire byte_valid_3n0r1;
wire reg_byte_valid_aq;
wire nx46918z5;
wire nx51272z1;
wire nx51272z2;
wire yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0__aq;
wire nx50275z1;
wire yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1__aq;
wire nx48281z2;
wire nx49278z2;
wire nx49278z1;
wire yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2__aq;
wire nx48281z1;
wire yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3__aq;
wire nx46918z4;
wire nx46918z3;
wire nx46918z2;
wire nx46918z1;
wire yes_uart_u_uart_reg_TxFSM_0__aq;
wire NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_8_;
wire nx21131z1;
wire yes_uart_u_uart_reg_Tx_Reg_8__aq;
wire NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_7_;
wire yes_uart_u_uart_reg_Tx_Reg_7__aq;
wire NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_6_;
wire yes_uart_u_uart_reg_Tx_Reg_6__aq;
wire NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_5_;
wire yes_uart_u_uart_reg_Tx_Reg_5__aq;
wire NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_4_;
wire yes_uart_u_uart_reg_Tx_Reg_4__aq;
wire NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_3_;
wire yes_uart_u_uart_reg_Tx_Reg_3__aq;
wire NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_2_;
wire yes_uart_u_uart_reg_Tx_Reg_2__aq;
wire NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_1_;
wire yes_uart_u_uart_reg_Tx_Reg_1__aq;
wire nx29107z2;
wire nx29107z1;
wire yes_uart_u_uart_reg_Tx_Reg_0__aq;
wire [7:0] u_lab3_p_1n7s3f2;
wire [7:0] u_lab3_p_1n7s3f1;
wire [7:0] byte_reg_2n1ss1;
wire [0:0] yes_uart_u_uart_Tx_Reg_14n6ss1;
wire [13:0] u_seg7_rtlcP1;
wire [7:0] seg7_num;


// Location: LCCOMB_X11_Y12_N16
fiftyfivenm_lcell_comb a_aQUARTUS_CREATED_GND_aI(
// Equation(s):
// a_aQUARTUS_CREATED_GND_aI_combout = GND

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(a_aQUARTUS_CREATED_GND_aI_combout),
	.cout());
// synopsys translate_off
defparam a_aQUARTUS_CREATED_GND_aI.lut_mask = 16'h0000;
defparam a_aQUARTUS_CREATED_GND_aI.sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOOBUF_X3_Y10_N23
fiftyfivenm_io_obuf seg7_data_a1_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a1_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a1_a_aoutput.bus_hold = "false";
defparam seg7_data_a1_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X6_Y10_N30
fiftyfivenm_io_obuf seg7_data_a5_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a5_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a5_a_aoutput.bus_hold = "false";
defparam seg7_data_a5_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X3_Y10_N16
fiftyfivenm_io_obuf seg7_data_a6_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a6_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a6_a_aoutput.bus_hold = "false";
defparam seg7_data_a6_a_aoutput.open_drain_output = "true";
// synopsys translate_on

// Location: IOOBUF_X11_Y25_N16
fiftyfivenm_io_obuf uart_tx_aoutput(
	.i(uart_rx_ainput_o),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(uart_tx_aoutput_o),
	.obar());
// synopsys translate_off
defparam uart_tx_aoutput.bus_hold = "false";
defparam uart_tx_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X15_Y25_N16
fiftyfivenm_io_obuf seg7_en_a0_a_aoutput(
	.i(!reg_q_10__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_en_a0_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_en_a0_a_aoutput.bus_hold = "false";
defparam seg7_en_a0_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X13_Y25_N9
fiftyfivenm_io_obuf seg7_en_a1_a_aoutput(
	.i(reg_q_10__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_en_a1_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_en_a1_a_aoutput.bus_hold = "false";
defparam seg7_en_a1_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X13_Y25_N30
fiftyfivenm_io_obuf seg7_data_a0_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_0__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a0_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a0_a_aoutput.bus_hold = "false";
defparam seg7_data_a0_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X1_Y10_N9
fiftyfivenm_io_obuf seg7_data_a2_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_2__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a2_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a2_a_aoutput.bus_hold = "false";
defparam seg7_data_a2_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X31_Y22_N23
fiftyfivenm_io_obuf seg7_data_a3_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_3__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a3_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a3_a_aoutput.bus_hold = "false";
defparam seg7_data_a3_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X15_Y25_N23
fiftyfivenm_io_obuf seg7_data_a4_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_4__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a4_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a4_a_aoutput.bus_hold = "false";
defparam seg7_data_a4_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X11_Y25_N2
fiftyfivenm_io_obuf seg7_data_a7_a_aoutput(
	.i(u_seg7_u_dual_seg7_reg_o_char_7__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(seg7_data_a7_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam seg7_data_a7_a_aoutput.bus_hold = "false";
defparam seg7_data_a7_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y7_N23
fiftyfivenm_io_obuf led_a0_a_aoutput(
	.i(sw_a0_a_ainput_o),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a0_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a0_a_aoutput.bus_hold = "false";
defparam led_a0_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X0_Y6_N16
fiftyfivenm_io_obuf led_a1_a_aoutput(
	.i(sw_a1_a_ainput_o),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a1_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a1_a_aoutput.bus_hold = "false";
defparam led_a1_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X10_Y17_N2
fiftyfivenm_io_obuf led_a2_a_aoutput(
	.i(sw_a2_a_ainput_o),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a2_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a2_a_aoutput.bus_hold = "false";
defparam led_a2_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X10_Y20_N23
fiftyfivenm_io_obuf led_a3_a_aoutput(
	.i(!yes_uart_u_uart_reg_Tx_Reg_0__aq),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a3_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a3_a_aoutput.bus_hold = "false";
defparam led_a3_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X10_Y21_N23
fiftyfivenm_io_obuf led_a4_a_aoutput(
	.i(uart_rx_ainput_o),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a4_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a4_a_aoutput.bus_hold = "false";
defparam led_a4_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X10_Y22_N23
fiftyfivenm_io_obuf led_a5_a_aoutput(
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a5_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a5_a_aoutput.bus_hold = "false";
defparam led_a5_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X3_Y0_N16
fiftyfivenm_io_obuf led_a6_a_aoutput(
	.i(gnd),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a6_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a6_a_aoutput.bus_hold = "false";
defparam led_a6_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOOBUF_X6_Y0_N23
fiftyfivenm_io_obuf led_a7_a_aoutput(
	.i(sw_a7_a_ainput_o),
	.oe(vcc),
	.seriesterminationcontrol(16'b0000000000000000),
	.devoe(devoe),
	.o(led_a7_a_aoutput_o),
	.obar());
// synopsys translate_off
defparam led_a7_a_aoutput.bus_hold = "false";
defparam led_a7_a_aoutput.open_drain_output = "false";
// synopsys translate_on

// Location: IOIBUF_X0_Y6_N22
fiftyfivenm_io_ibuf clk_ainput(
	.i(clk),
	.ibar(gnd),
	.nsleep(vcc),
	.o(clk_ainput_o));
// synopsys translate_off
defparam clk_ainput.bus_hold = "false";
defparam clk_ainput.listen_to_nsleep_signal = "false";
defparam clk_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: CLKCTRL_G4
fiftyfivenm_clkctrl clk_ainputclkctrl(
	.ena(vcc),
	.inclk({vcc,vcc,vcc,clk_ainput_o}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(clk_ainputclkctrl_outclk));
// synopsys translate_off
defparam clk_ainputclkctrl.clock_type = "global clock";
defparam clk_ainputclkctrl.ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X12_Y15_N6
fiftyfivenm_lcell_comb ix2757_fadd(
// Equation(s):
// inc_d_0__dup_2773 = reg_q_0__dup_7_aq $ (VCC)
// nx9230z2 = CARRY(reg_q_0__dup_7_aq)

	.dataa(reg_q_0__dup_7_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_2773),
	.cout(nx9230z2));
// synopsys translate_off
defparam ix2757_fadd.lut_mask = 16'h55AA;
defparam ix2757_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X0_Y2_N15
fiftyfivenm_io_ibuf reset_n_ainput(
	.i(reset_n),
	.ibar(gnd),
	.nsleep(vcc),
	.o(reset_n_ainput_o));
// synopsys translate_off
defparam reset_n_ainput.bus_hold = "false";
defparam reset_n_ainput.listen_to_nsleep_signal = "false";
defparam reset_n_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X12_Y15_N2
fiftyfivenm_lcell_comb u_seg7_u_dual_seg7_reg_prev_reset_a0(
// Equation(s):
// u_seg7_u_dual_seg7_reg_prev_reset_a0_combout = !reset_n_ainput_o

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(reset_n_ainput_o),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_reg_prev_reset_a0_combout),
	.cout());
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_prev_reset_a0.lut_mask = 16'h00FF;
defparam u_seg7_u_dual_seg7_reg_prev_reset_a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X12_Y15_N3
dffeas u_seg7_u_dual_seg7_reg_prev_reset(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_reg_prev_reset_a0_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_prev_reset_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_prev_reset.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_prev_reset.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y15_N0
fiftyfivenm_lcell_comb ix60244z7095(
// Equation(s):
// nx60244z1 = (!reset_n_ainput_o & !u_seg7_u_dual_seg7_reg_prev_reset_aq)

	.dataa(gnd),
	.datab(reset_n_ainput_o),
	.datac(gnd),
	.datad(u_seg7_u_dual_seg7_reg_prev_reset_aq),
	.cin(gnd),
	.combout(nx60244z1),
	.cout());
// synopsys translate_off
defparam ix60244z7095.lut_mask = 16'h0033;
defparam ix60244z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X12_Y15_N7
dffeas reg_q_0__dup_7(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_2773),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx60244z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_7_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_7.is_wysiwyg = "true";
defparam reg_q_0__dup_7.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y15_N8
fiftyfivenm_lcell_comb ix2759_fadd(
// Equation(s):
// inc_d_1__dup_2774 = (reg_q_1__dup_6_aq & (!nx9230z2)) # (!reg_q_1__dup_6_aq & ((nx9230z2) # (GND)))
// nx41135z2 = CARRY((!nx9230z2) # (!reg_q_1__dup_6_aq))

	.dataa(gnd),
	.datab(reg_q_1__dup_6_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx9230z2),
	.combout(inc_d_1__dup_2774),
	.cout(nx41135z2));
// synopsys translate_off
defparam ix2759_fadd.lut_mask = 16'h3C3F;
defparam ix2759_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X12_Y15_N9
dffeas reg_q_1__dup_6(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_2774),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx60244z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_6_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_6.is_wysiwyg = "true";
defparam reg_q_1__dup_6.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y15_N10
fiftyfivenm_lcell_comb ix2761_fadd(
// Equation(s):
// inc_d_2__dup_2775 = (reg_q_2__dup_5_aq & (nx41135z2 $ (GND))) # (!reg_q_2__dup_5_aq & (!nx41135z2 & VCC))
// nx25561z2 = CARRY((reg_q_2__dup_5_aq & !nx41135z2))

	.dataa(reg_q_2__dup_5_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx41135z2),
	.combout(inc_d_2__dup_2775),
	.cout(nx25561z2));
// synopsys translate_off
defparam ix2761_fadd.lut_mask = 16'hA50A;
defparam ix2761_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X12_Y15_N11
dffeas reg_q_2__dup_5(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_2775),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx60244z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_5_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_5.is_wysiwyg = "true";
defparam reg_q_2__dup_5.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y15_N12
fiftyfivenm_lcell_comb ix2763_fadd(
// Equation(s):
// inc_d_3__dup_2776 = (reg_q_3__dup_4_aq & (!nx25561z2)) # (!reg_q_3__dup_4_aq & ((nx25561z2) # (GND)))
// nx55549z2 = CARRY((!nx25561z2) # (!reg_q_3__dup_4_aq))

	.dataa(reg_q_3__dup_4_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx25561z2),
	.combout(inc_d_3__dup_2776),
	.cout(nx55549z2));
// synopsys translate_off
defparam ix2763_fadd.lut_mask = 16'h5A5F;
defparam ix2763_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X12_Y15_N13
dffeas reg_q_3__dup_4(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_2776),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx60244z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_4_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_4.is_wysiwyg = "true";
defparam reg_q_3__dup_4.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y15_N14
fiftyfivenm_lcell_comb ix2765_fadd(
// Equation(s):
// inc_d_4__dup_2777 = (reg_q_4__dup_3_aq & (nx55549z2 $ (GND))) # (!reg_q_4__dup_3_aq & (!nx55549z2 & VCC))
// nx28436z2 = CARRY((reg_q_4__dup_3_aq & !nx55549z2))

	.dataa(gnd),
	.datab(reg_q_4__dup_3_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx55549z2),
	.combout(inc_d_4__dup_2777),
	.cout(nx28436z2));
// synopsys translate_off
defparam ix2765_fadd.lut_mask = 16'hC30C;
defparam ix2765_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X12_Y15_N15
dffeas reg_q_4__dup_3(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_2777),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx60244z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_3_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_3.is_wysiwyg = "true";
defparam reg_q_4__dup_3.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y15_N16
fiftyfivenm_lcell_comb ix32_fadd(
// Equation(s):
// inc_d_5__dup_2778 = (reg_q_5__dup_2_aq & (!nx28436z2)) # (!reg_q_5__dup_2_aq & ((nx28436z2) # (GND)))
// nx62824z2 = CARRY((!nx28436z2) # (!reg_q_5__dup_2_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_2_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx28436z2),
	.combout(inc_d_5__dup_2778),
	.cout(nx62824z2));
// synopsys translate_off
defparam ix32_fadd.lut_mask = 16'h3C3F;
defparam ix32_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X12_Y15_N17
dffeas reg_q_5__dup_2(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_2778),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx60244z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_2_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_2.is_wysiwyg = "true";
defparam reg_q_5__dup_2.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y15_N18
fiftyfivenm_lcell_comb ix36_fadd(
// Equation(s):
// inc_d_6__dup_2779 = (reg_q_6__dup_1_aq & (nx62824z2 $ (GND))) # (!reg_q_6__dup_1_aq & (!nx62824z2 & VCC))
// nx63336z2 = CARRY((reg_q_6__dup_1_aq & !nx62824z2))

	.dataa(gnd),
	.datab(reg_q_6__dup_1_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx62824z2),
	.combout(inc_d_6__dup_2779),
	.cout(nx63336z2));
// synopsys translate_off
defparam ix36_fadd.lut_mask = 16'hC30C;
defparam ix36_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X12_Y15_N19
dffeas reg_q_6__dup_1(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_2779),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx60244z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_1_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_1.is_wysiwyg = "true";
defparam reg_q_6__dup_1.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y15_N20
fiftyfivenm_lcell_comb ix2766_fadd(
// Equation(s):
// inc_d_7__dup_2780 = (reg_q_7__dup_0_aq & (!nx63336z2)) # (!reg_q_7__dup_0_aq & ((nx63336z2) # (GND)))
// nx13374z2 = CARRY((!nx63336z2) # (!reg_q_7__dup_0_aq))

	.dataa(gnd),
	.datab(reg_q_7__dup_0_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx63336z2),
	.combout(inc_d_7__dup_2780),
	.cout(nx13374z2));
// synopsys translate_off
defparam ix2766_fadd.lut_mask = 16'h3C3F;
defparam ix2766_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X12_Y15_N21
dffeas reg_q_7__dup_0(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_2780),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx60244z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_0_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_0.is_wysiwyg = "true";
defparam reg_q_7__dup_0.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y15_N22
fiftyfivenm_lcell_comb ix2768_fadd(
// Equation(s):
// inc_d_8_ = (reg_q_8__aq & (nx13374z2 $ (GND))) # (!reg_q_8__aq & (!nx13374z2 & VCC))
// nx47005z2 = CARRY((reg_q_8__aq & !nx13374z2))

	.dataa(reg_q_8__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx13374z2),
	.combout(inc_d_8_),
	.cout(nx47005z2));
// synopsys translate_off
defparam ix2768_fadd.lut_mask = 16'hA50A;
defparam ix2768_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X12_Y15_N23
dffeas reg_q_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_8_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx60244z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8_.is_wysiwyg = "true";
defparam reg_q_8_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y15_N24
fiftyfivenm_lcell_comb ix2770_fadd(
// Equation(s):
// inc_d_9_ = (reg_q_9__aq & (!nx47005z2)) # (!reg_q_9__aq & ((nx47005z2) # (GND)))
// nx10744z1 = CARRY((!nx47005z2) # (!reg_q_9__aq))

	.dataa(gnd),
	.datab(reg_q_9__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx47005z2),
	.combout(inc_d_9_),
	.cout(nx10744z1));
// synopsys translate_off
defparam ix2770_fadd.lut_mask = 16'h3C3F;
defparam ix2770_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X12_Y15_N25
dffeas reg_q_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_9_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx60244z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_9_.is_wysiwyg = "true";
defparam reg_q_9_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y15_N26
fiftyfivenm_lcell_comb ix2771_fadd(
// Equation(s):
// inc_d_10_ = reg_q_10__aq $ (!nx10744z1)

	.dataa(reg_q_10__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx10744z1),
	.combout(inc_d_10_),
	.cout());
// synopsys translate_off
defparam ix2771_fadd.lut_mask = 16'hA5A5;
defparam ix2771_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X12_Y15_N27
dffeas reg_q_10_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_10_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx60244z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_10__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_10_.is_wysiwyg = "true";
defparam reg_q_10_.power_up = "low";
// synopsys translate_on

// Location: IOIBUF_X10_Y19_N15
fiftyfivenm_io_ibuf sw_a1_a_ainput(
	.i(sw[1]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a1_a_ainput_o));
// synopsys translate_off
defparam sw_a1_a_ainput.bus_hold = "false";
defparam sw_a1_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a1_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N14
fiftyfivenm_lcell_comb ix2_fadd(
// Equation(s):
// inc_d_0_ = reg_q_0__aq $ (VCC)
// nx27063z1 = CARRY(reg_q_0__aq)

	.dataa(gnd),
	.datab(reg_q_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0_),
	.cout(nx27063z1));
// synopsys translate_off
defparam ix2_fadd.lut_mask = 16'h33CC;
defparam ix2_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N22
fiftyfivenm_lcell_comb yes_uart_u_uart_reg_RxFSM_1__a0(
// Equation(s):
// yes_uart_u_uart_reg_RxFSM_1__a0_combout = !yes_uart_u_uart_reg_RxFSM_0__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(yes_uart_u_uart_reg_RxFSM_1__a0_combout),
	.cout());
// synopsys translate_off
defparam yes_uart_u_uart_reg_RxFSM_1__a0.lut_mask = 16'h00FF;
defparam yes_uart_u_uart_reg_RxFSM_1__a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X11_Y25_N22
fiftyfivenm_io_ibuf uart_rx_ainput(
	.i(uart_rx),
	.ibar(gnd),
	.nsleep(vcc),
	.o(uart_rx_ainput_o));
// synopsys translate_off
defparam uart_rx_ainput.bus_hold = "false";
defparam uart_rx_ainput.listen_to_nsleep_signal = "false";
defparam uart_rx_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N12
fiftyfivenm_lcell_comb yes_uart_u_uart_reg_Rx_r_a0(
// Equation(s):
// yes_uart_u_uart_reg_Rx_r_a0_combout = !uart_rx_ainput_o

	.dataa(gnd),
	.datab(gnd),
	.datac(uart_rx_ainput_o),
	.datad(gnd),
	.cin(gnd),
	.combout(yes_uart_u_uart_reg_Rx_r_a0_combout),
	.cout());
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_r_a0.lut_mask = 16'h0F0F;
defparam yes_uart_u_uart_reg_Rx_r_a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y14_N13
dffeas yes_uart_u_uart_reg_Rx_r(
	.clk(clk_ainputclkctrl_outclk),
	.d(yes_uart_u_uart_reg_Rx_r_a0_combout),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Rx_r_aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_r.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Rx_r.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N8
fiftyfivenm_lcell_comb ix2787_fadd(
// Equation(s):
// inc_d_0__dup_2818 = reg_q_0__dup_18_aq $ (VCC)
// nx49129z1 = CARRY(reg_q_0__dup_18_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_18_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_2818),
	.cout(nx49129z1));
// synopsys translate_off
defparam ix2787_fadd.lut_mask = 16'h33CC;
defparam ix2787_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N6
fiftyfivenm_lcell_comb ix22863z7095(
// Equation(s):
// nx22863z1 = (nx60456z2) # (!yes_uart_u_uart_reg_RxFSM_0__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(nx60456z2),
	.datad(yes_uart_u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(nx22863z1),
	.cout());
// synopsys translate_off
defparam ix22863z7095.lut_mask = 16'hF0FF;
defparam ix22863z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X11_Y14_N9
dffeas reg_q_0__dup_18(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_2818),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx22863z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_18_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_18.is_wysiwyg = "true";
defparam reg_q_0__dup_18.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N10
fiftyfivenm_lcell_comb ix2789_fadd(
// Equation(s):
// inc_d_1__dup_2820 = (reg_q_1__dup_17_aq & (!nx49129z1)) # (!reg_q_1__dup_17_aq & ((nx49129z1) # (GND)))
// nx50038z1 = CARRY((!nx49129z1) # (!reg_q_1__dup_17_aq))

	.dataa(reg_q_1__dup_17_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx49129z1),
	.combout(inc_d_1__dup_2820),
	.cout(nx50038z1));
// synopsys translate_off
defparam ix2789_fadd.lut_mask = 16'h5A5F;
defparam ix2789_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y14_N11
dffeas reg_q_1__dup_17(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_2820),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx22863z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_17_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_17.is_wysiwyg = "true";
defparam reg_q_1__dup_17.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N12
fiftyfivenm_lcell_comb ix2791_fadd(
// Equation(s):
// inc_d_2__dup_2822 = (reg_q_2__dup_16_aq & (nx50038z1 $ (GND))) # (!reg_q_2__dup_16_aq & (!nx50038z1 & VCC))
// nx76z1 = CARRY((reg_q_2__dup_16_aq & !nx50038z1))

	.dataa(reg_q_2__dup_16_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx50038z1),
	.combout(inc_d_2__dup_2822),
	.cout(nx76z1));
// synopsys translate_off
defparam ix2791_fadd.lut_mask = 16'hA50A;
defparam ix2791_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y14_N13
dffeas reg_q_2__dup_16(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_2822),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx22863z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_16_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_16.is_wysiwyg = "true";
defparam reg_q_2__dup_16.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N14
fiftyfivenm_lcell_comb ix2793_fadd(
// Equation(s):
// inc_d_3__dup_2824 = (reg_q_3__dup_15_aq & (!nx76z1)) # (!reg_q_3__dup_15_aq & ((nx76z1) # (GND)))
// nx15650z1 = CARRY((!nx76z1) # (!reg_q_3__dup_15_aq))

	.dataa(gnd),
	.datab(reg_q_3__dup_15_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx76z1),
	.combout(inc_d_3__dup_2824),
	.cout(nx15650z1));
// synopsys translate_off
defparam ix2793_fadd.lut_mask = 16'h3C3F;
defparam ix2793_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y14_N15
dffeas reg_q_3__dup_15(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_2824),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx22863z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_15_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_15.is_wysiwyg = "true";
defparam reg_q_3__dup_15.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N16
fiftyfivenm_lcell_comb ix2795_fadd(
// Equation(s):
// inc_d_4__dup_2826 = (reg_q_4__dup_14_aq & (nx15650z1 $ (GND))) # (!reg_q_4__dup_14_aq & (!nx15650z1 & VCC))
// nx34312z1 = CARRY((reg_q_4__dup_14_aq & !nx15650z1))

	.dataa(gnd),
	.datab(reg_q_4__dup_14_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx15650z1),
	.combout(inc_d_4__dup_2826),
	.cout(nx34312z1));
// synopsys translate_off
defparam ix2795_fadd.lut_mask = 16'hC30C;
defparam ix2795_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y14_N17
dffeas reg_q_4__dup_14(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_2826),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx22863z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_14_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_14.is_wysiwyg = "true";
defparam reg_q_4__dup_14.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N18
fiftyfivenm_lcell_comb ix2797_fadd(
// Equation(s):
// inc_d_5__dup_2828 = (reg_q_5__dup_13_aq & (!nx34312z1)) # (!reg_q_5__dup_13_aq & ((nx34312z1) # (GND)))
// nx18738z1 = CARRY((!nx34312z1) # (!reg_q_5__dup_13_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_13_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx34312z1),
	.combout(inc_d_5__dup_2828),
	.cout(nx18738z1));
// synopsys translate_off
defparam ix2797_fadd.lut_mask = 16'h3C3F;
defparam ix2797_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y14_N19
dffeas reg_q_5__dup_13(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_2828),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx22863z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_13_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_13.is_wysiwyg = "true";
defparam reg_q_5__dup_13.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N20
fiftyfivenm_lcell_comb ix2799_fadd(
// Equation(s):
// inc_d_6__dup_2830 = (reg_q_6__dup_12_aq & (nx18738z1 $ (GND))) # (!reg_q_6__dup_12_aq & (!nx18738z1 & VCC))
// nx4678z1 = CARRY((reg_q_6__dup_12_aq & !nx18738z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_12_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx18738z1),
	.combout(inc_d_6__dup_2830),
	.cout(nx4678z1));
// synopsys translate_off
defparam ix2799_fadd.lut_mask = 16'hC30C;
defparam ix2799_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y14_N21
dffeas reg_q_6__dup_12(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_2830),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx22863z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_12_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_12.is_wysiwyg = "true";
defparam reg_q_6__dup_12.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N22
fiftyfivenm_lcell_comb ix2801_fadd(
// Equation(s):
// inc_d_7__dup_2832 = (reg_q_7__dup_11_aq & (!nx4678z1)) # (!reg_q_7__dup_11_aq & ((nx4678z1) # (GND)))
// nx10896z1 = CARRY((!nx4678z1) # (!reg_q_7__dup_11_aq))

	.dataa(reg_q_7__dup_11_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx4678z1),
	.combout(inc_d_7__dup_2832),
	.cout(nx10896z1));
// synopsys translate_off
defparam ix2801_fadd.lut_mask = 16'h5A5F;
defparam ix2801_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y14_N23
dffeas reg_q_7__dup_11(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_2832),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx22863z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_11_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_11.is_wysiwyg = "true";
defparam reg_q_7__dup_11.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N24
fiftyfivenm_lcell_comb ix2803_fadd(
// Equation(s):
// inc_d_8__dup_2833 = (reg_q_8__dup_10_aq & (nx10896z1 $ (GND))) # (!reg_q_8__dup_10_aq & (!nx10896z1 & VCC))
// nx26470z1 = CARRY((reg_q_8__dup_10_aq & !nx10896z1))

	.dataa(gnd),
	.datab(reg_q_8__dup_10_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx10896z1),
	.combout(inc_d_8__dup_2833),
	.cout(nx26470z1));
// synopsys translate_off
defparam ix2803_fadd.lut_mask = 16'hC30C;
defparam ix2803_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y14_N25
dffeas reg_q_8__dup_10(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_8__dup_2833),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx22863z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__dup_10_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8__dup_10.is_wysiwyg = "true";
defparam reg_q_8__dup_10.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N26
fiftyfivenm_lcell_comb ix2805_fadd(
// Equation(s):
// inc_d_9__dup_2834 = (reg_q_9__dup_9_aq & (!nx26470z1)) # (!reg_q_9__dup_9_aq & ((nx26470z1) # (GND)))
// nx34257z1 = CARRY((!nx26470z1) # (!reg_q_9__dup_9_aq))

	.dataa(reg_q_9__dup_9_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx26470z1),
	.combout(inc_d_9__dup_2834),
	.cout(nx34257z1));
// synopsys translate_off
defparam ix2805_fadd.lut_mask = 16'h5A5F;
defparam ix2805_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y14_N27
dffeas reg_q_9__dup_9(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_9__dup_2834),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx22863z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_9__dup_9_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_9__dup_9.is_wysiwyg = "true";
defparam reg_q_9__dup_9.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N28
fiftyfivenm_lcell_comb ix2806_fadd(
// Equation(s):
// inc_d_10__dup_2835 = nx34257z1 $ (!reg_q_10__dup_8_aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(reg_q_10__dup_8_aq),
	.cin(nx34257z1),
	.combout(inc_d_10__dup_2835),
	.cout());
// synopsys translate_off
defparam ix2806_fadd.lut_mask = 16'hF00F;
defparam ix2806_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y14_N29
dffeas reg_q_10__dup_8(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_10__dup_2835),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx22863z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_10__dup_8_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_10__dup_8.is_wysiwyg = "true";
defparam reg_q_10__dup_8.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N4
fiftyfivenm_lcell_comb ix60456z7100(
// Equation(s):
// nx60456z6 = (!reg_q_1__dup_17_aq & (!reg_q_10__dup_8_aq & (!reg_q_0__dup_18_aq & !reg_q_2__dup_16_aq)))

	.dataa(reg_q_1__dup_17_aq),
	.datab(reg_q_10__dup_8_aq),
	.datac(reg_q_0__dup_18_aq),
	.datad(reg_q_2__dup_16_aq),
	.cin(gnd),
	.combout(nx60456z6),
	.cout());
// synopsys translate_off
defparam ix60456z7100.lut_mask = 16'h0001;
defparam ix60456z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N6
fiftyfivenm_lcell_comb ix60456z7099(
// Equation(s):
// nx60456z5 = (!reg_q_9__dup_9_aq & (!reg_q_8__dup_10_aq & (nx60456z6 & !reg_q_5__dup_13_aq)))

	.dataa(reg_q_9__dup_9_aq),
	.datab(reg_q_8__dup_10_aq),
	.datac(nx60456z6),
	.datad(reg_q_5__dup_13_aq),
	.cin(gnd),
	.combout(nx60456z5),
	.cout());
// synopsys translate_off
defparam ix60456z7099.lut_mask = 16'h0010;
defparam ix60456z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y14_N30
fiftyfivenm_lcell_comb yes_uart_u_uart_reg_RxDivisor_4__afeeder(
// Equation(s):
// yes_uart_u_uart_reg_RxDivisor_4__afeeder_combout = VCC

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(yes_uart_u_uart_reg_RxDivisor_4__afeeder_combout),
	.cout());
// synopsys translate_off
defparam yes_uart_u_uart_reg_RxDivisor_4__afeeder.lut_mask = 16'hFFFF;
defparam yes_uart_u_uart_reg_RxDivisor_4__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y14_N31
dffeas yes_uart_u_uart_reg_RxDivisor_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(yes_uart_u_uart_reg_RxDivisor_4__afeeder_combout),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_RxDivisor_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_RxDivisor_4_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_RxDivisor_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N0
fiftyfivenm_lcell_comb ix60456z7097(
// Equation(s):
// nx60456z3 = (reg_q_7__dup_11_aq & (reg_q_4__dup_14_aq & (reg_q_3__dup_15_aq & yes_uart_u_uart_reg_RxDivisor_4__aq)))

	.dataa(reg_q_7__dup_11_aq),
	.datab(reg_q_4__dup_14_aq),
	.datac(reg_q_3__dup_15_aq),
	.datad(yes_uart_u_uart_reg_RxDivisor_4__aq),
	.cin(gnd),
	.combout(nx60456z3),
	.cout());
// synopsys translate_off
defparam ix60456z7097.lut_mask = 16'h8000;
defparam ix60456z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N2
fiftyfivenm_lcell_comb ix60456z7098(
// Equation(s):
// nx60456z4 = (!reg_q_7__dup_11_aq & (!reg_q_4__dup_14_aq & (!reg_q_3__dup_15_aq & !yes_uart_u_uart_reg_RxDivisor_4__aq)))

	.dataa(reg_q_7__dup_11_aq),
	.datab(reg_q_4__dup_14_aq),
	.datac(reg_q_3__dup_15_aq),
	.datad(yes_uart_u_uart_reg_RxDivisor_4__aq),
	.cin(gnd),
	.combout(nx60456z4),
	.cout());
// synopsys translate_off
defparam ix60456z7098.lut_mask = 16'h0001;
defparam ix60456z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X11_Y14_N30
fiftyfivenm_lcell_comb ix60456z7096(
// Equation(s):
// nx60456z2 = (nx60456z5 & ((reg_q_6__dup_12_aq & (nx60456z3)) # (!reg_q_6__dup_12_aq & ((nx60456z4)))))

	.dataa(nx60456z5),
	.datab(reg_q_6__dup_12_aq),
	.datac(nx60456z3),
	.datad(nx60456z4),
	.cin(gnd),
	.combout(nx60456z2),
	.cout());
// synopsys translate_off
defparam ix60456z7096.lut_mask = 16'hA280;
defparam ix60456z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N26
fiftyfivenm_lcell_comb ix60456z7095(
// Equation(s):
// nx60456z1 = (nx60456z2 & yes_uart_u_uart_reg_RxFSM_0__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(nx60456z2),
	.datad(yes_uart_u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(nx60456z1),
	.cout());
// synopsys translate_off
defparam ix60456z7095.lut_mask = 16'hF000;
defparam ix60456z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y14_N27
dffeas yes_uart_u_uart_reg_TopRx(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx60456z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_TopRx_aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_TopRx.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_TopRx.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N14
fiftyfivenm_lcell_comb ix64005z7097(
// Equation(s):
// nx64005z2 = (yes_uart_u_uart_reg_RxFSM_5__aq & (((!uart_rx_ainput_o)))) # (!yes_uart_u_uart_reg_RxFSM_5__aq & (!yes_uart_u_uart_reg_TopRx_aq & ((yes_uart_u_uart_reg_RxFSM_0__aq))))

	.dataa(yes_uart_u_uart_reg_TopRx_aq),
	.datab(yes_uart_u_uart_reg_RxFSM_5__aq),
	.datac(uart_rx_ainput_o),
	.datad(yes_uart_u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(nx64005z2),
	.cout());
// synopsys translate_off
defparam ix64005z7097.lut_mask = 16'h1D0C;
defparam ix64005z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N8
fiftyfivenm_lcell_comb ix64005z7096(
// Equation(s):
// nx64005z1 = (!nx64005z2 & ((yes_uart_u_uart_reg_Rx_r_aq) # (yes_uart_u_uart_reg_RxFSM_0__aq)))

	.dataa(yes_uart_u_uart_reg_Rx_r_aq),
	.datab(gnd),
	.datac(nx64005z2),
	.datad(yes_uart_u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(nx64005z1),
	.cout());
// synopsys translate_off
defparam ix64005z7096.lut_mask = 16'h0F0A;
defparam ix64005z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y14_N23
dffeas yes_uart_u_uart_reg_RxFSM_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(yes_uart_u_uart_reg_RxFSM_1__a0_combout),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64005z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_RxFSM_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_RxFSM_1_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_RxFSM_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N28
fiftyfivenm_lcell_comb ix2457z7095(
// Equation(s):
// nx2457z1 = (yes_uart_u_uart_reg_Rx_r_aq & (yes_uart_u_uart_reg_RxFSM_4__aq)) # (!yes_uart_u_uart_reg_Rx_r_aq & ((yes_uart_u_uart_reg_RxFSM_1__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_RxFSM_4__aq),
	.datac(yes_uart_u_uart_reg_RxFSM_1__aq),
	.datad(yes_uart_u_uart_reg_Rx_r_aq),
	.cin(gnd),
	.combout(nx2457z1),
	.cout());
// synopsys translate_off
defparam ix2457z7095.lut_mask = 16'hCCF0;
defparam ix2457z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y14_N29
dffeas yes_uart_u_uart_reg_RxFSM_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx2457z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64005z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_RxFSM_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_RxFSM_5_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_RxFSM_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N10
fiftyfivenm_lcell_comb ix63008z7095(
// Equation(s):
// nx63008z1 = (!yes_uart_u_uart_reg_RxFSM_5__aq & ((yes_uart_u_uart_reg_Rx_r_aq) # (!yes_uart_u_uart_reg_RxFSM_4__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_RxFSM_5__aq),
	.datac(yes_uart_u_uart_reg_RxFSM_4__aq),
	.datad(yes_uart_u_uart_reg_Rx_r_aq),
	.cin(gnd),
	.combout(nx63008z1),
	.cout());
// synopsys translate_off
defparam ix63008z7095.lut_mask = 16'h3303;
defparam ix63008z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y14_N11
dffeas yes_uart_u_uart_reg_RxFSM_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx63008z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64005z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_RxFSM_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_RxFSM_0_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_RxFSM_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y13_N10
fiftyfivenm_lcell_comb ix46026z7095(
// Equation(s):
// nx46026z1 = (!yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0__aq & yes_uart_u_uart_reg_RxFSM_0__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.datad(yes_uart_u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(nx46026z1),
	.cout());
// synopsys translate_off
defparam ix46026z7095.lut_mask = 16'h0F00;
defparam ix46026z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N0
fiftyfivenm_lcell_comb ix65002z7095(
// Equation(s):
// nx65002z1 = (yes_uart_u_uart_reg_RxFSM_3__aq) # ((yes_uart_u_uart_reg_RxFSM_1__aq & yes_uart_u_uart_reg_Rx_r_aq))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_RxFSM_3__aq),
	.datac(yes_uart_u_uart_reg_RxFSM_1__aq),
	.datad(yes_uart_u_uart_reg_Rx_r_aq),
	.cin(gnd),
	.combout(nx65002z1),
	.cout());
// synopsys translate_off
defparam ix65002z7095.lut_mask = 16'hFCCC;
defparam ix65002z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y14_N1
dffeas yes_uart_u_uart_reg_RxFSM_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx65002z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64005z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_RxFSM_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_RxFSM_2_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_RxFSM_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N24
fiftyfivenm_lcell_comb ix463z7095(
// Equation(s):
// nx463z1 = (!nx1460z2 & yes_uart_u_uart_reg_RxFSM_2__aq)

	.dataa(gnd),
	.datab(nx1460z2),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_RxFSM_2__aq),
	.cin(gnd),
	.combout(nx463z1),
	.cout());
// synopsys translate_off
defparam ix463z7095.lut_mask = 16'h3300;
defparam ix463z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y14_N25
dffeas yes_uart_u_uart_reg_RxFSM_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx463z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64005z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_RxFSM_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_RxFSM_3_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_RxFSM_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N30
fiftyfivenm_lcell_comb ix46026z7096(
// Equation(s):
// nx46026z3 = (yes_uart_u_uart_reg_RxFSM_3__aq & (yes_uart_u_uart_reg_TopRx_aq)) # (!yes_uart_u_uart_reg_RxFSM_3__aq & ((!yes_uart_u_uart_reg_RxFSM_0__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_RxFSM_3__aq),
	.datac(yes_uart_u_uart_reg_TopRx_aq),
	.datad(yes_uart_u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(nx46026z3),
	.cout());
// synopsys translate_off
defparam ix46026z7096.lut_mask = 16'hC0F3;
defparam ix46026z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y13_N11
dffeas yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx46026z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx46026z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_.is_wysiwyg = "true";
defparam yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y13_N28
fiftyfivenm_lcell_comb ix45029z7095(
// Equation(s):
// nx45029z1 = (yes_uart_u_uart_reg_RxFSM_0__aq & (yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0__aq $ (yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1__aq)))

	.dataa(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.datad(yes_uart_u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(nx45029z1),
	.cout());
// synopsys translate_off
defparam ix45029z7095.lut_mask = 16'h5A00;
defparam ix45029z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y13_N29
dffeas yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx45029z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx46026z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_.is_wysiwyg = "true";
defparam yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y13_N30
fiftyfivenm_lcell_comb ix44032z7095(
// Equation(s):
// nx44032z1 = (yes_uart_u_uart_reg_RxFSM_0__aq & (yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2__aq $ (((yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0__aq & yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1__aq)))))

	.dataa(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.datab(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.datac(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2__aq),
	.datad(yes_uart_u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(nx44032z1),
	.cout());
// synopsys translate_off
defparam ix44032z7095.lut_mask = 16'h7800;
defparam ix44032z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y13_N31
dffeas yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx44032z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx46026z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2_.is_wysiwyg = "true";
defparam yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y13_N8
fiftyfivenm_lcell_comb ix43035z7096(
// Equation(s):
// nx43035z2 = (yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0__aq & yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1__aq)

	.dataa(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.cin(gnd),
	.combout(nx43035z2),
	.cout());
// synopsys translate_off
defparam ix43035z7096.lut_mask = 16'hAA00;
defparam ix43035z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y13_N18
fiftyfivenm_lcell_comb ix43035z7095(
// Equation(s):
// nx43035z1 = (yes_uart_u_uart_reg_RxFSM_0__aq & (yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3__aq $ (((yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2__aq & nx43035z2)))))

	.dataa(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2__aq),
	.datab(nx43035z2),
	.datac(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3__aq),
	.datad(yes_uart_u_uart_reg_RxFSM_0__aq),
	.cin(gnd),
	.combout(nx43035z1),
	.cout());
// synopsys translate_off
defparam ix43035z7095.lut_mask = 16'h7800;
defparam ix43035z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y13_N19
dffeas yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx43035z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx46026z3),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3_.is_wysiwyg = "true";
defparam yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y13_N0
fiftyfivenm_lcell_comb ix1460z7096(
// Equation(s):
// nx1460z2 = (!yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0__aq & (yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3__aq & (!yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2__aq & !yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1__aq)))

	.dataa(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0__aq),
	.datab(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3__aq),
	.datac(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2__aq),
	.datad(yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1__aq),
	.cin(gnd),
	.combout(nx1460z2),
	.cout());
// synopsys translate_off
defparam ix1460z7096.lut_mask = 16'h0004;
defparam ix1460z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N4
fiftyfivenm_lcell_comb ix1460z7095(
// Equation(s):
// nx1460z1 = (nx1460z2 & yes_uart_u_uart_reg_RxFSM_2__aq)

	.dataa(gnd),
	.datab(nx1460z2),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_RxFSM_2__aq),
	.cin(gnd),
	.combout(nx1460z1),
	.cout());
// synopsys translate_off
defparam ix1460z7095.lut_mask = 16'hCC00;
defparam ix1460z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y14_N5
dffeas yes_uart_u_uart_reg_RxFSM_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx1460z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx64005z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_RxFSM_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_RxFSM_4_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_RxFSM_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N18
fiftyfivenm_lcell_comb ix46463z7095(
// Equation(s):
// nx46463z1 = (yes_uart_u_uart_reg_RxFSM_4__aq & (yes_uart_u_uart_reg_TopRx_aq & !yes_uart_u_uart_reg_Rx_r_aq))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_RxFSM_4__aq),
	.datac(yes_uart_u_uart_reg_TopRx_aq),
	.datad(yes_uart_u_uart_reg_Rx_r_aq),
	.cin(gnd),
	.combout(nx46463z1),
	.cout());
// synopsys translate_off
defparam ix46463z7095.lut_mask = 16'h00C0;
defparam ix46463z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N2
fiftyfivenm_lcell_comb yes_uart_u_uart_reg_RxRDYi_afeeder(
// Equation(s):
// yes_uart_u_uart_reg_RxRDYi_afeeder_combout = nx46463z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx46463z1),
	.cin(gnd),
	.combout(yes_uart_u_uart_reg_RxRDYi_afeeder_combout),
	.cout());
// synopsys translate_off
defparam yes_uart_u_uart_reg_RxRDYi_afeeder.lut_mask = 16'hFF00;
defparam yes_uart_u_uart_reg_RxRDYi_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y14_N3
dffeas yes_uart_u_uart_reg_RxRDYi(
	.clk(clk_ainputclkctrl_outclk),
	.d(yes_uart_u_uart_reg_RxRDYi_afeeder_combout),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_RxRDYi_aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_RxRDYi.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_RxRDYi.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N16
fiftyfivenm_lcell_comb ix63348z7096(
// Equation(s):
// u_lab3_rtlc0_PS25_n202 = (yes_uart_u_uart_reg_RxRDYi_aq) # (!reset_n_ainput_o)

	.dataa(gnd),
	.datab(reset_n_ainput_o),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_RxRDYi_aq),
	.cin(gnd),
	.combout(u_lab3_rtlc0_PS25_n202),
	.cout());
// synopsys translate_off
defparam ix63348z7096.lut_mask = 16'hFF33;
defparam ix63348z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X11_Y16_N15
dffeas reg_q_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0_.is_wysiwyg = "true";
defparam reg_q_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N16
fiftyfivenm_lcell_comb ix6_fadd(
// Equation(s):
// inc_d_1_ = (reg_q_1__aq & (!nx27063z1)) # (!reg_q_1__aq & ((nx27063z1) # (GND)))
// nx39256z1 = CARRY((!nx27063z1) # (!reg_q_1__aq))

	.dataa(gnd),
	.datab(reg_q_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx27063z1),
	.combout(inc_d_1_),
	.cout(nx39256z1));
// synopsys translate_off
defparam ix6_fadd.lut_mask = 16'h3C3F;
defparam ix6_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y16_N17
dffeas reg_q_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1_.is_wysiwyg = "true";
defparam reg_q_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N18
fiftyfivenm_lcell_comb ix10_fadd(
// Equation(s):
// inc_d_2_ = (reg_q_2__aq & (nx39256z1 $ (GND))) # (!reg_q_2__aq & (!nx39256z1 & VCC))
// nx57428z1 = CARRY((reg_q_2__aq & !nx39256z1))

	.dataa(gnd),
	.datab(reg_q_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx39256z1),
	.combout(inc_d_2_),
	.cout(nx57428z1));
// synopsys translate_off
defparam ix10_fadd.lut_mask = 16'hC30C;
defparam ix10_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y16_N19
dffeas reg_q_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2_.is_wysiwyg = "true";
defparam reg_q_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N20
fiftyfivenm_lcell_comb ix14_fadd(
// Equation(s):
// inc_d_3_ = (reg_q_3__aq & (!nx57428z1)) # (!reg_q_3__aq & ((nx57428z1) # (GND)))
// nx23040z1 = CARRY((!nx57428z1) # (!reg_q_3__aq))

	.dataa(reg_q_3__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx57428z1),
	.combout(inc_d_3_),
	.cout(nx23040z1));
// synopsys translate_off
defparam ix14_fadd.lut_mask = 16'h5A5F;
defparam ix14_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y16_N21
dffeas reg_q_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3_.is_wysiwyg = "true";
defparam reg_q_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N22
fiftyfivenm_lcell_comb ix18_fadd(
// Equation(s):
// inc_d_4_ = (reg_q_4__aq & (nx23040z1 $ (GND))) # (!reg_q_4__aq & (!nx23040z1 & VCC))
// nx58827z1 = CARRY((reg_q_4__aq & !nx23040z1))

	.dataa(reg_q_4__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx23040z1),
	.combout(inc_d_4_),
	.cout(nx58827z1));
// synopsys translate_off
defparam ix18_fadd.lut_mask = 16'hA50A;
defparam ix18_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y16_N23
dffeas reg_q_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4_.is_wysiwyg = "true";
defparam reg_q_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N24
fiftyfivenm_lcell_comb ix22_fadd(
// Equation(s):
// inc_d_5_ = (reg_q_5__aq & (!nx58827z1)) # (!reg_q_5__aq & ((nx58827z1) # (GND)))
// nx37857z1 = CARRY((!nx58827z1) # (!reg_q_5__aq))

	.dataa(gnd),
	.datab(reg_q_5__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx58827z1),
	.combout(inc_d_5_),
	.cout(nx37857z1));
// synopsys translate_off
defparam ix22_fadd.lut_mask = 16'h3C3F;
defparam ix22_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y16_N25
dffeas reg_q_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5_.is_wysiwyg = "true";
defparam reg_q_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N26
fiftyfivenm_lcell_comb ix26_fadd(
// Equation(s):
// inc_d_6_ = (reg_q_6__aq & (nx37857z1 $ (GND))) # (!reg_q_6__aq & (!nx37857z1 & VCC))
// nx53431z1 = CARRY((reg_q_6__aq & !nx37857z1))

	.dataa(reg_q_6__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx37857z1),
	.combout(inc_d_6_),
	.cout(nx53431z1));
// synopsys translate_off
defparam ix26_fadd.lut_mask = 16'hA50A;
defparam ix26_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y16_N27
dffeas reg_q_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6_.is_wysiwyg = "true";
defparam reg_q_6_.power_up = "low";
// synopsys translate_on

// Location: IOIBUF_X1_Y10_N15
fiftyfivenm_io_ibuf sw_a7_a_ainput(
	.i(sw[7]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a7_a_ainput_o));
// synopsys translate_off
defparam sw_a7_a_ainput.bus_hold = "false";
defparam sw_a7_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a7_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X15_Y13_N26
fiftyfivenm_lcell_comb yes_uart_u_uart_reg_Rx_Reg_7__a0(
// Equation(s):
// yes_uart_u_uart_reg_Rx_Reg_7__a0_combout = !yes_uart_u_uart_reg_Rx_r_aq

	.dataa(gnd),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Rx_r_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(yes_uart_u_uart_reg_Rx_Reg_7__a0_combout),
	.cout());
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_Reg_7__a0.lut_mask = 16'h0F0F;
defparam yes_uart_u_uart_reg_Rx_Reg_7__a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y14_N20
fiftyfivenm_lcell_comb ix2098z7096(
// Equation(s):
// nx2098z1 = (yes_uart_u_uart_reg_RxFSM_3__aq & yes_uart_u_uart_reg_TopRx_aq)

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_RxFSM_3__aq),
	.datac(yes_uart_u_uart_reg_TopRx_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx2098z1),
	.cout());
// synopsys translate_off
defparam ix2098z7096.lut_mask = 16'hC0C0;
defparam ix2098z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y13_N27
dffeas yes_uart_u_uart_reg_Rx_Reg_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(yes_uart_u_uart_reg_Rx_Reg_7__a0_combout),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2098z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Rx_Reg_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_Reg_7_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Rx_Reg_7_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y13_N17
dffeas yes_uart_u_uart_reg_Rx_Reg_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Rx_Reg_7__aq),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx2098z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Rx_Reg_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_Reg_6_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Rx_Reg_6_.power_up = "low";
// synopsys translate_on

// Location: FF_X18_Y13_N25
dffeas yes_uart_u_uart_reg_Dout_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Rx_Reg_6__aq),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx46463z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Dout_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Dout_6_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Dout_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N8
fiftyfivenm_lcell_comb ix9543z7095(
// Equation(s):
// byte_reg_2n1ss1[6] = (sw_a7_a_ainput_o & (reg_q_6__aq)) # (!sw_a7_a_ainput_o & ((yes_uart_u_uart_reg_Dout_6__aq)))

	.dataa(gnd),
	.datab(reg_q_6__aq),
	.datac(sw_a7_a_ainput_o),
	.datad(yes_uart_u_uart_reg_Dout_6__aq),
	.cin(gnd),
	.combout(byte_reg_2n1ss1[6]),
	.cout());
// synopsys translate_off
defparam ix9543z7095.lut_mask = 16'hCFC0;
defparam ix9543z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y13_N9
dffeas reg_byte_reg_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(byte_reg_2n1ss1[6]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_byte_reg_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_byte_reg_6_.is_wysiwyg = "true";
defparam reg_byte_reg_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N26
fiftyfivenm_lcell_comb ix51544z7111(
// Equation(s):
// nx51544z10 = (sw_a1_a_ainput_o & (reg_byte_reg_6__aq)) # (!sw_a1_a_ainput_o & ((reg_q_6__aq)))

	.dataa(sw_a1_a_ainput_o),
	.datab(reg_byte_reg_6__aq),
	.datac(reg_q_6__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx51544z10),
	.cout());
// synopsys translate_off
defparam ix51544z7111.lut_mask = 16'hD8D8;
defparam ix51544z7111.sum_lutc_input = "datac";
// synopsys translate_on

// Location: IOIBUF_X0_Y5_N1
fiftyfivenm_io_ibuf sw_a0_a_ainput(
	.i(sw[0]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a0_a_ainput_o));
// synopsys translate_off
defparam sw_a0_a_ainput.bus_hold = "false";
defparam sw_a0_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a0_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N8
fiftyfivenm_lcell_comb ix3017_fadd(
// Equation(s):
// inc_d_0__dup_3036 = reg_q_0__dup_37_aq $ (VCC)
// nx18768z1 = CARRY(reg_q_0__dup_37_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_37_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_3036),
	.cout(nx18768z1));
// synopsys translate_off
defparam ix3017_fadd.lut_mask = 16'h33CC;
defparam ix3017_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N8
fiftyfivenm_lcell_comb ix53092z7096(
// Equation(s):
// nx53092z2 = (u_lab3_reg_state_3__aq & (!yes_uart_u_uart_reg_RxRDYi_aq)) # (!u_lab3_reg_state_3__aq & ((u_lab3_reg_state_0__aq)))

	.dataa(u_lab3_reg_state_3__aq),
	.datab(yes_uart_u_uart_reg_RxRDYi_aq),
	.datac(u_lab3_reg_state_0__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx53092z2),
	.cout());
// synopsys translate_off
defparam ix53092z7096.lut_mask = 16'h7272;
defparam ix53092z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N0
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix2_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_0_ = u_lab3_modgen_counter_column_areg_q_0__aq $ (VCC)
// u_lab3_modgen_counter_column_anx27063z2 = CARRY(u_lab3_modgen_counter_column_areg_q_0__aq)

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(u_lab3_modgen_counter_column_ainc_d_0_),
	.cout(u_lab3_modgen_counter_column_anx27063z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix2_fadd.lut_mask = 16'h33CC;
defparam u_lab3_modgen_counter_column_aix2_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N22
fiftyfivenm_lcell_comb ix48923z7099(
// Equation(s):
// nx48923z5 = (!yes_uart_u_uart_reg_RxRDYi_aq & !u_lab3_reg_state_0__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_reg_state_0__aq),
	.cin(gnd),
	.combout(nx48923z5),
	.cout());
// synopsys translate_off
defparam ix48923z7099.lut_mask = 16'h000F;
defparam ix48923z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y17_N0
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix51271z7095(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_0_dup_365 = (u_lab3_reg_state_1__aq) # (!u_lab3_modgen_counter_row_areg_q_0__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(u_lab3_modgen_counter_row_areg_q_0__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(u_lab3_modgen_counter_row_asload_mux_0_dup_365),
	.cout());
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix51271z7095.lut_mask = 16'hFF0F;
defparam u_lab3_modgen_counter_row_aix51271z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N6
fiftyfivenm_lcell_comb ix41843z7096(
// Equation(s):
// nx41843z2 = (u_lab3_reg_state_3__aq) # (u_lab3_reg_state_4__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(u_lab3_reg_state_3__aq),
	.datad(u_lab3_reg_state_4__aq),
	.cin(gnd),
	.combout(nx41843z2),
	.cout());
// synopsys translate_off
defparam ix41843z7096.lut_mask = 16'hFFF0;
defparam ix41843z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N0
fiftyfivenm_lcell_comb ix41843z7101(
// Equation(s):
// nx41843z7 = (!u_lab3_modgen_counter_row_areg_q_27__aq & (!u_lab3_modgen_counter_row_areg_q_24__aq & (!u_lab3_modgen_counter_row_areg_q_25__aq & !u_lab3_modgen_counter_row_areg_q_26__aq)))

	.dataa(u_lab3_modgen_counter_row_areg_q_27__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_24__aq),
	.datac(u_lab3_modgen_counter_row_areg_q_25__aq),
	.datad(u_lab3_modgen_counter_row_areg_q_26__aq),
	.cin(gnd),
	.combout(nx41843z7),
	.cout());
// synopsys translate_off
defparam ix41843z7101.lut_mask = 16'h0001;
defparam ix41843z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y21_N16
fiftyfivenm_lcell_comb ix41843z7106(
// Equation(s):
// nx41843z12 = (!u_lab3_modgen_counter_row_areg_q_10__aq & (!u_lab3_modgen_counter_row_areg_q_11__aq & (!u_lab3_modgen_counter_row_areg_q_8__aq & !u_lab3_modgen_counter_row_areg_q_9__aq)))

	.dataa(u_lab3_modgen_counter_row_areg_q_10__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_11__aq),
	.datac(u_lab3_modgen_counter_row_areg_q_8__aq),
	.datad(u_lab3_modgen_counter_row_areg_q_9__aq),
	.cin(gnd),
	.combout(nx41843z12),
	.cout());
// synopsys translate_off
defparam ix41843z7106.lut_mask = 16'h0001;
defparam ix41843z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N24
fiftyfivenm_lcell_comb ix41843z7104(
// Equation(s):
// nx41843z10 = (!u_lab3_modgen_counter_row_areg_q_17__aq & (!u_lab3_modgen_counter_row_areg_q_16__aq & (!u_lab3_modgen_counter_row_areg_q_19__aq & !u_lab3_modgen_counter_row_areg_q_18__aq)))

	.dataa(u_lab3_modgen_counter_row_areg_q_17__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_16__aq),
	.datac(u_lab3_modgen_counter_row_areg_q_19__aq),
	.datad(u_lab3_modgen_counter_row_areg_q_18__aq),
	.cin(gnd),
	.combout(nx41843z10),
	.cout());
// synopsys translate_off
defparam ix41843z7104.lut_mask = 16'h0001;
defparam ix41843z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y16_N0
fiftyfivenm_lcell_comb ix41843z7105(
// Equation(s):
// nx41843z11 = (!u_lab3_modgen_counter_row_areg_q_14__aq & (!u_lab3_modgen_counter_row_areg_q_13__aq & (!u_lab3_modgen_counter_row_areg_q_15__aq & !u_lab3_modgen_counter_row_areg_q_12__aq)))

	.dataa(u_lab3_modgen_counter_row_areg_q_14__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_13__aq),
	.datac(u_lab3_modgen_counter_row_areg_q_15__aq),
	.datad(u_lab3_modgen_counter_row_areg_q_12__aq),
	.cin(gnd),
	.combout(nx41843z11),
	.cout());
// synopsys translate_off
defparam ix41843z7105.lut_mask = 16'h0001;
defparam ix41843z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y20_N0
fiftyfivenm_lcell_comb ix41843z7107(
// Equation(s):
// nx41843z13 = (!u_lab3_modgen_counter_row_areg_q_7__aq & (!u_lab3_modgen_counter_row_areg_q_5__aq & (!u_lab3_modgen_counter_row_areg_q_4__aq & !u_lab3_modgen_counter_row_areg_q_6__aq)))

	.dataa(u_lab3_modgen_counter_row_areg_q_7__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_5__aq),
	.datac(u_lab3_modgen_counter_row_areg_q_4__aq),
	.datad(u_lab3_modgen_counter_row_areg_q_6__aq),
	.cin(gnd),
	.combout(nx41843z13),
	.cout());
// synopsys translate_off
defparam ix41843z7107.lut_mask = 16'h0001;
defparam ix41843z7107.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N26
fiftyfivenm_lcell_comb ix41843z7103(
// Equation(s):
// nx41843z9 = (nx41843z12 & (nx41843z10 & (nx41843z11 & nx41843z13)))

	.dataa(nx41843z12),
	.datab(nx41843z10),
	.datac(nx41843z11),
	.datad(nx41843z13),
	.cin(gnd),
	.combout(nx41843z9),
	.cout());
// synopsys translate_off
defparam ix41843z7103.lut_mask = 16'h8000;
defparam ix41843z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y19_N8
fiftyfivenm_lcell_comb ix41843z7102(
// Equation(s):
// nx41843z8 = (!u_lab3_modgen_counter_row_areg_q_22__aq & (!u_lab3_modgen_counter_row_areg_q_21__aq & (!u_lab3_modgen_counter_row_areg_q_23__aq & !u_lab3_modgen_counter_row_areg_q_20__aq)))

	.dataa(u_lab3_modgen_counter_row_areg_q_22__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_21__aq),
	.datac(u_lab3_modgen_counter_row_areg_q_23__aq),
	.datad(u_lab3_modgen_counter_row_areg_q_20__aq),
	.cin(gnd),
	.combout(nx41843z8),
	.cout());
// synopsys translate_off
defparam ix41843z7102.lut_mask = 16'h0001;
defparam ix41843z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N2
fiftyfivenm_lcell_comb ix41843z7099(
// Equation(s):
// nx41843z5 = (nx41843z6 & (nx41843z7 & (nx41843z9 & nx41843z8)))

	.dataa(nx41843z6),
	.datab(nx41843z7),
	.datac(nx41843z9),
	.datad(nx41843z8),
	.cin(gnd),
	.combout(nx41843z5),
	.cout());
// synopsys translate_off
defparam ix41843z7099.lut_mask = 16'h8000;
defparam ix41843z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N16
fiftyfivenm_lcell_comb ix41843z7097(
// Equation(s):
// nx41843z3 = (u_lab3_reg_state_1__aq & (((!nx41843z5) # (!yes_uart_u_uart_reg_RxRDYi_aq)) # (!nx41843z4)))

	.dataa(nx41843z4),
	.datab(yes_uart_u_uart_reg_RxRDYi_aq),
	.datac(nx41843z5),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx41843z3),
	.cout());
// synopsys translate_off
defparam ix41843z7097.lut_mask = 16'h7F00;
defparam ix41843z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N0
fiftyfivenm_lcell_comb ix41843z7095(
// Equation(s):
// nx41843z1 = (!nx41843z2 & (!nx41843z3 & ((nx63348z3) # (!u_lab3_reg_state_1__aq))))

	.dataa(nx41843z2),
	.datab(nx63348z3),
	.datac(u_lab3_reg_state_1__aq),
	.datad(nx41843z3),
	.cin(gnd),
	.combout(nx41843z1),
	.cout());
// synopsys translate_off
defparam ix41843z7095.lut_mask = 16'h0045;
defparam ix41843z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y17_N1
dffeas u_lab3_modgen_counter_row_areg_q_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_0_dup_365),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_0_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N0
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix2_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_anx27063z2 = CARRY(u_lab3_modgen_counter_row_areg_q_0__aq)

	.dataa(u_lab3_modgen_counter_row_areg_q_0__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(u_lab3_modgen_counter_row_anx27063z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix2_fadd.lut_mask = 16'h00AA;
defparam u_lab3_modgen_counter_row_aix2_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N2
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix6_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_1_dup_366 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_1__aq $ (u_lab3_modgen_counter_row_anx27063z2)))) # (GND)
// u_lab3_modgen_counter_row_anx39256z2 = CARRY((!u_lab3_modgen_counter_row_anx27063z2) # (!u_lab3_modgen_counter_row_areg_q_1__aq))

	.dataa(u_lab3_modgen_counter_row_areg_q_1__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx27063z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_1_dup_366),
	.cout(u_lab3_modgen_counter_row_anx39256z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix6_fadd.lut_mask = 16'h125F;
defparam u_lab3_modgen_counter_row_aix6_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y20_N3
dffeas u_lab3_modgen_counter_row_areg_q_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_1_dup_366),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_1_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N4
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix10_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_2_dup_367 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_2__aq $ (!u_lab3_modgen_counter_row_anx39256z2)))) # (GND)
// u_lab3_modgen_counter_row_anx57428z2 = CARRY((u_lab3_modgen_counter_row_areg_q_2__aq & !u_lab3_modgen_counter_row_anx39256z2))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx39256z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_2_dup_367),
	.cout(u_lab3_modgen_counter_row_anx57428z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix10_fadd.lut_mask = 16'h410C;
defparam u_lab3_modgen_counter_row_aix10_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N6
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix14_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_3_dup_368 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_3__aq $ (u_lab3_modgen_counter_row_anx57428z2)))) # (GND)
// u_lab3_modgen_counter_row_anx23040z2 = CARRY((!u_lab3_modgen_counter_row_anx57428z2) # (!u_lab3_modgen_counter_row_areg_q_3__aq))

	.dataa(u_lab3_modgen_counter_row_areg_q_3__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx57428z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_3_dup_368),
	.cout(u_lab3_modgen_counter_row_anx23040z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix14_fadd.lut_mask = 16'h125F;
defparam u_lab3_modgen_counter_row_aix14_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y20_N7
dffeas u_lab3_modgen_counter_row_areg_q_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_3_dup_368),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_3_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N8
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix18_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_4_dup_369 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_4__aq $ (!u_lab3_modgen_counter_row_anx23040z2)))) # (GND)
// u_lab3_modgen_counter_row_anx58827z2 = CARRY((u_lab3_modgen_counter_row_areg_q_4__aq & !u_lab3_modgen_counter_row_anx23040z2))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_4__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx23040z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_4_dup_369),
	.cout(u_lab3_modgen_counter_row_anx58827z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix18_fadd.lut_mask = 16'h410C;
defparam u_lab3_modgen_counter_row_aix18_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y20_N9
dffeas u_lab3_modgen_counter_row_areg_q_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_4_dup_369),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_4_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N10
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix22_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_5_dup_370 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_5__aq $ (u_lab3_modgen_counter_row_anx58827z2)))) # (GND)
// u_lab3_modgen_counter_row_anx37857z2 = CARRY((!u_lab3_modgen_counter_row_anx58827z2) # (!u_lab3_modgen_counter_row_areg_q_5__aq))

	.dataa(u_lab3_modgen_counter_row_areg_q_5__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx58827z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_5_dup_370),
	.cout(u_lab3_modgen_counter_row_anx37857z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix22_fadd.lut_mask = 16'h125F;
defparam u_lab3_modgen_counter_row_aix22_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y20_N11
dffeas u_lab3_modgen_counter_row_areg_q_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_5_dup_370),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_5_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N12
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix26_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_6_dup_371 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_6__aq $ (!u_lab3_modgen_counter_row_anx37857z2)))) # (GND)
// u_lab3_modgen_counter_row_anx21526z2 = CARRY((u_lab3_modgen_counter_row_areg_q_6__aq & !u_lab3_modgen_counter_row_anx37857z2))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_6__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx37857z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_6_dup_371),
	.cout(u_lab3_modgen_counter_row_anx21526z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix26_fadd.lut_mask = 16'h410C;
defparam u_lab3_modgen_counter_row_aix26_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y20_N13
dffeas u_lab3_modgen_counter_row_areg_q_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_6_dup_371),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_6_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N14
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix30_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_7_dup_372 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_7__aq $ (u_lab3_modgen_counter_row_anx21526z2)))) # (GND)
// u_lab3_modgen_counter_row_anx12862z2 = CARRY((!u_lab3_modgen_counter_row_anx21526z2) # (!u_lab3_modgen_counter_row_areg_q_7__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx21526z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_7_dup_372),
	.cout(u_lab3_modgen_counter_row_anx12862z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix30_fadd.lut_mask = 16'h143F;
defparam u_lab3_modgen_counter_row_aix30_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y20_N15
dffeas u_lab3_modgen_counter_row_areg_q_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_7_dup_372),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_7_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N16
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix34_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_8_dup_373 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_8__aq $ (!u_lab3_modgen_counter_row_anx12862z2)))) # (GND)
// u_lab3_modgen_counter_row_anx47250z2 = CARRY((u_lab3_modgen_counter_row_areg_q_8__aq & !u_lab3_modgen_counter_row_anx12862z2))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_8__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx12862z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_8_dup_373),
	.cout(u_lab3_modgen_counter_row_anx47250z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix34_fadd.lut_mask = 16'h410C;
defparam u_lab3_modgen_counter_row_aix34_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y20_N17
dffeas u_lab3_modgen_counter_row_areg_q_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_8_dup_373),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_8_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_8_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N18
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix38_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_9_dup_374 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_9__aq $ (u_lab3_modgen_counter_row_anx47250z2)))) # (GND)
// u_lab3_modgen_counter_row_anx1955z2 = CARRY((!u_lab3_modgen_counter_row_anx47250z2) # (!u_lab3_modgen_counter_row_areg_q_9__aq))

	.dataa(u_lab3_modgen_counter_row_areg_q_9__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx47250z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_9_dup_374),
	.cout(u_lab3_modgen_counter_row_anx1955z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix38_fadd.lut_mask = 16'h125F;
defparam u_lab3_modgen_counter_row_aix38_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y20_N19
dffeas u_lab3_modgen_counter_row_areg_q_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_9_dup_374),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_9_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_9_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N20
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix42_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_10_dup_375 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_10__aq $ (!u_lab3_modgen_counter_row_anx1955z2)))) # (GND)
// u_lab3_modgen_counter_row_anx32433z2 = CARRY((u_lab3_modgen_counter_row_areg_q_10__aq & !u_lab3_modgen_counter_row_anx1955z2))

	.dataa(u_lab3_modgen_counter_row_areg_q_10__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx1955z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_10_dup_375),
	.cout(u_lab3_modgen_counter_row_anx32433z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix42_fadd.lut_mask = 16'h210A;
defparam u_lab3_modgen_counter_row_aix42_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y20_N21
dffeas u_lab3_modgen_counter_row_areg_q_10_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_10_dup_375),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_10__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_10_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_10_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N22
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix46_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_11_dup_376 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_11__aq $ (u_lab3_modgen_counter_row_anx32433z2)))) # (GND)
// u_lab3_modgen_counter_row_anx48764z2 = CARRY((!u_lab3_modgen_counter_row_anx32433z2) # (!u_lab3_modgen_counter_row_areg_q_11__aq))

	.dataa(u_lab3_modgen_counter_row_areg_q_11__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx32433z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_11_dup_376),
	.cout(u_lab3_modgen_counter_row_anx48764z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix46_fadd.lut_mask = 16'h125F;
defparam u_lab3_modgen_counter_row_aix46_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y20_N23
dffeas u_lab3_modgen_counter_row_areg_q_11_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_11_dup_376),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_11__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_11_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_11_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N24
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix50_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_12_dup_377 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_12__aq $ (!u_lab3_modgen_counter_row_anx48764z2)))) # (GND)
// u_lab3_modgen_counter_row_anx47920z2 = CARRY((u_lab3_modgen_counter_row_areg_q_12__aq & !u_lab3_modgen_counter_row_anx48764z2))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_12__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx48764z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_12_dup_377),
	.cout(u_lab3_modgen_counter_row_anx47920z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix50_fadd.lut_mask = 16'h410C;
defparam u_lab3_modgen_counter_row_aix50_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y20_N25
dffeas u_lab3_modgen_counter_row_areg_q_12_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_12_dup_377),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_12__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_12_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_12_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N26
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix54_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_13_dup_378 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_13__aq $ (u_lab3_modgen_counter_row_anx47920z2)))) # (GND)
// u_lab3_modgen_counter_row_anx13532z2 = CARRY((!u_lab3_modgen_counter_row_anx47920z2) # (!u_lab3_modgen_counter_row_areg_q_13__aq))

	.dataa(u_lab3_modgen_counter_row_areg_q_13__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx47920z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_13_dup_378),
	.cout(u_lab3_modgen_counter_row_anx13532z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix54_fadd.lut_mask = 16'h125F;
defparam u_lab3_modgen_counter_row_aix54_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y20_N27
dffeas u_lab3_modgen_counter_row_areg_q_13_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_13_dup_378),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_13__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_13_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_13_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N28
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix58_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_14_dup_379 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_14__aq $ (!u_lab3_modgen_counter_row_anx13532z2)))) # (GND)
// u_lab3_modgen_counter_row_anx2799z2 = CARRY((u_lab3_modgen_counter_row_areg_q_14__aq & !u_lab3_modgen_counter_row_anx13532z2))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_14__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx13532z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_14_dup_379),
	.cout(u_lab3_modgen_counter_row_anx2799z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix58_fadd.lut_mask = 16'h410C;
defparam u_lab3_modgen_counter_row_aix58_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y20_N29
dffeas u_lab3_modgen_counter_row_areg_q_14_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_14_dup_379),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_14__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_14_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_14_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y20_N30
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix62_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_15_dup_380 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_15__aq $ (u_lab3_modgen_counter_row_anx2799z2)))) # (GND)
// u_lab3_modgen_counter_row_anx28349z2 = CARRY((!u_lab3_modgen_counter_row_anx2799z2) # (!u_lab3_modgen_counter_row_areg_q_15__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_15__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx2799z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_15_dup_380),
	.cout(u_lab3_modgen_counter_row_anx28349z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix62_fadd.lut_mask = 16'h143F;
defparam u_lab3_modgen_counter_row_aix62_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y20_N31
dffeas u_lab3_modgen_counter_row_areg_q_15_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_15_dup_380),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_15__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_15_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_15_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N0
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix66_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_16_dup_381 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_16__aq $ (!u_lab3_modgen_counter_row_anx28349z2)))) # (GND)
// u_lab3_modgen_counter_row_anx12018z2 = CARRY((u_lab3_modgen_counter_row_areg_q_16__aq & !u_lab3_modgen_counter_row_anx28349z2))

	.dataa(u_lab3_modgen_counter_row_areg_q_16__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx28349z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_16_dup_381),
	.cout(u_lab3_modgen_counter_row_anx12018z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix66_fadd.lut_mask = 16'h210A;
defparam u_lab3_modgen_counter_row_aix66_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N1
dffeas u_lab3_modgen_counter_row_areg_q_16_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_16_dup_381),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_16__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_16_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_16_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N2
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix70_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_17_dup_382 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_17__aq $ (u_lab3_modgen_counter_row_anx12018z2)))) # (GND)
// u_lab3_modgen_counter_row_anx22370z2 = CARRY((!u_lab3_modgen_counter_row_anx12018z2) # (!u_lab3_modgen_counter_row_areg_q_17__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_17__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx12018z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_17_dup_382),
	.cout(u_lab3_modgen_counter_row_anx22370z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix70_fadd.lut_mask = 16'h143F;
defparam u_lab3_modgen_counter_row_aix70_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N3
dffeas u_lab3_modgen_counter_row_areg_q_17_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_17_dup_382),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_17__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_17_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_17_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N4
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix74_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_18_dup_383 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_18__aq $ (!u_lab3_modgen_counter_row_anx22370z2)))) # (GND)
// u_lab3_modgen_counter_row_anx56758z2 = CARRY((u_lab3_modgen_counter_row_areg_q_18__aq & !u_lab3_modgen_counter_row_anx22370z2))

	.dataa(u_lab3_modgen_counter_row_areg_q_18__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx22370z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_18_dup_383),
	.cout(u_lab3_modgen_counter_row_anx56758z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix74_fadd.lut_mask = 16'h210A;
defparam u_lab3_modgen_counter_row_aix74_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N5
dffeas u_lab3_modgen_counter_row_areg_q_18_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_18_dup_383),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_18__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_18_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_18_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N6
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix78_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_19_dup_384 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_19__aq $ (u_lab3_modgen_counter_row_anx56758z2)))) # (GND)
// u_lab3_modgen_counter_row_anx57983z2 = CARRY((!u_lab3_modgen_counter_row_anx56758z2) # (!u_lab3_modgen_counter_row_areg_q_19__aq))

	.dataa(u_lab3_modgen_counter_row_areg_q_19__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx56758z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_19_dup_384),
	.cout(u_lab3_modgen_counter_row_anx57983z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix78_fadd.lut_mask = 16'h125F;
defparam u_lab3_modgen_counter_row_aix78_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N7
dffeas u_lab3_modgen_counter_row_areg_q_19_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_19_dup_384),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_19__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_19_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_19_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N8
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix82_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_20_dup_385 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_20__aq $ (!u_lab3_modgen_counter_row_anx57983z2)))) # (GND)
// u_lab3_modgen_counter_row_anx41941z2 = CARRY((u_lab3_modgen_counter_row_areg_q_20__aq & !u_lab3_modgen_counter_row_anx57983z2))

	.dataa(u_lab3_modgen_counter_row_areg_q_20__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx57983z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_20_dup_385),
	.cout(u_lab3_modgen_counter_row_anx41941z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix82_fadd.lut_mask = 16'h210A;
defparam u_lab3_modgen_counter_row_aix82_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N9
dffeas u_lab3_modgen_counter_row_areg_q_20_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_20_dup_385),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_20__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_20_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_20_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N10
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix86_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_21_dup_386 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_21__aq $ (u_lab3_modgen_counter_row_anx41941z2)))) # (GND)
// u_lab3_modgen_counter_row_anx58272z2 = CARRY((!u_lab3_modgen_counter_row_anx41941z2) # (!u_lab3_modgen_counter_row_areg_q_21__aq))

	.dataa(u_lab3_modgen_counter_row_areg_q_21__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx41941z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_21_dup_386),
	.cout(u_lab3_modgen_counter_row_anx58272z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix86_fadd.lut_mask = 16'h125F;
defparam u_lab3_modgen_counter_row_aix86_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N11
dffeas u_lab3_modgen_counter_row_areg_q_21_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_21_dup_386),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_21__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_21_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_21_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N12
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix90_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_22_dup_387 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_22__aq $ (!u_lab3_modgen_counter_row_anx58272z2)))) # (GND)
// u_lab3_modgen_counter_row_anx38412z2 = CARRY((u_lab3_modgen_counter_row_areg_q_22__aq & !u_lab3_modgen_counter_row_anx58272z2))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_22__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx58272z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_22_dup_387),
	.cout(u_lab3_modgen_counter_row_anx38412z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix90_fadd.lut_mask = 16'h410C;
defparam u_lab3_modgen_counter_row_aix90_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N13
dffeas u_lab3_modgen_counter_row_areg_q_22_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_22_dup_387),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_22__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_22_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_22_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N14
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix94_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_23_dup_388 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_23__aq $ (u_lab3_modgen_counter_row_anx38412z2)))) # (GND)
// u_lab3_modgen_counter_row_anx61512z2 = CARRY((!u_lab3_modgen_counter_row_anx38412z2) # (!u_lab3_modgen_counter_row_areg_q_23__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_23__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx38412z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_23_dup_388),
	.cout(u_lab3_modgen_counter_row_anx61512z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix94_fadd.lut_mask = 16'h143F;
defparam u_lab3_modgen_counter_row_aix94_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N15
dffeas u_lab3_modgen_counter_row_areg_q_23_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_23_dup_388),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_23__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_23_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_23_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N16
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix98_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_24_dup_389 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_24__aq $ (!u_lab3_modgen_counter_row_anx61512z2)))) # (GND)
// u_lab3_modgen_counter_row_anx36406z2 = CARRY((u_lab3_modgen_counter_row_areg_q_24__aq & !u_lab3_modgen_counter_row_anx61512z2))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_24__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx61512z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_24_dup_389),
	.cout(u_lab3_modgen_counter_row_anx36406z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix98_fadd.lut_mask = 16'h410C;
defparam u_lab3_modgen_counter_row_aix98_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N17
dffeas u_lab3_modgen_counter_row_areg_q_24_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_24_dup_389),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_24__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_24_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_24_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N18
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix133_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_25_dup_390 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_25__aq $ (u_lab3_modgen_counter_row_anx36406z2)))) # (GND)
// u_lab3_modgen_counter_row_anx63518z2 = CARRY((!u_lab3_modgen_counter_row_anx36406z2) # (!u_lab3_modgen_counter_row_areg_q_25__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_25__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx36406z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_25_dup_390),
	.cout(u_lab3_modgen_counter_row_anx63518z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix133_fadd.lut_mask = 16'h143F;
defparam u_lab3_modgen_counter_row_aix133_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N19
dffeas u_lab3_modgen_counter_row_areg_q_25_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_25_dup_390),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_25__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_25_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_25_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N20
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix137_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_26_dup_391 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_26__aq $ (!u_lab3_modgen_counter_row_anx63518z2)))) # (GND)
// u_lab3_modgen_counter_row_anx14313z2 = CARRY((u_lab3_modgen_counter_row_areg_q_26__aq & !u_lab3_modgen_counter_row_anx63518z2))

	.dataa(u_lab3_modgen_counter_row_areg_q_26__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx63518z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_26_dup_391),
	.cout(u_lab3_modgen_counter_row_anx14313z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix137_fadd.lut_mask = 16'h210A;
defparam u_lab3_modgen_counter_row_aix137_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N21
dffeas u_lab3_modgen_counter_row_areg_q_26_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_26_dup_391),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_26__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_26_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_26_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N22
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix141_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_27_dup_392 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_27__aq $ (u_lab3_modgen_counter_row_anx14313z2)))) # (GND)
// u_lab3_modgen_counter_row_anx16835z2 = CARRY((!u_lab3_modgen_counter_row_anx14313z2) # (!u_lab3_modgen_counter_row_areg_q_27__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_27__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx14313z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_27_dup_392),
	.cout(u_lab3_modgen_counter_row_anx16835z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix141_fadd.lut_mask = 16'h143F;
defparam u_lab3_modgen_counter_row_aix141_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N23
dffeas u_lab3_modgen_counter_row_areg_q_27_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_27_dup_392),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_27__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_27_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_27_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N24
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix145_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_28_dup_393 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_28__aq $ (!u_lab3_modgen_counter_row_anx16835z2)))) # (GND)
// u_lab3_modgen_counter_row_anx17553z2 = CARRY((u_lab3_modgen_counter_row_areg_q_28__aq & !u_lab3_modgen_counter_row_anx16835z2))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_28__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx16835z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_28_dup_393),
	.cout(u_lab3_modgen_counter_row_anx17553z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix145_fadd.lut_mask = 16'h410C;
defparam u_lab3_modgen_counter_row_aix145_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N25
dffeas u_lab3_modgen_counter_row_areg_q_28_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_28_dup_393),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_28__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_28_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_28_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N26
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix149_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_29_dup_394 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_29__aq $ (u_lab3_modgen_counter_row_anx17553z2)))) # (GND)
// u_lab3_modgen_counter_row_anx33884z2 = CARRY((!u_lab3_modgen_counter_row_anx17553z2) # (!u_lab3_modgen_counter_row_areg_q_29__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_29__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx17553z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_29_dup_394),
	.cout(u_lab3_modgen_counter_row_anx33884z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix149_fadd.lut_mask = 16'h143F;
defparam u_lab3_modgen_counter_row_aix149_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N27
dffeas u_lab3_modgen_counter_row_areg_q_29_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_29_dup_394),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_29__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_29_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_29_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N28
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix153_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_30_dup_395 = ((!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_30__aq $ (!u_lab3_modgen_counter_row_anx33884z2)))) # (GND)
// u_lab3_modgen_counter_row_anx18310z2 = CARRY((u_lab3_modgen_counter_row_areg_q_30__aq & !u_lab3_modgen_counter_row_anx33884z2))

	.dataa(u_lab3_modgen_counter_row_areg_q_30__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_row_anx33884z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_30_dup_395),
	.cout(u_lab3_modgen_counter_row_anx18310z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix153_fadd.lut_mask = 16'h210A;
defparam u_lab3_modgen_counter_row_aix153_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N29
dffeas u_lab3_modgen_counter_row_areg_q_30_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_30_dup_395),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_30__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_30_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_30_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y19_N30
fiftyfivenm_lcell_comb u_lab3_modgen_counter_row_aix155_fadd(
// Equation(s):
// u_lab3_modgen_counter_row_asload_mux_31_dup_396 = (!u_lab3_reg_state_1__aq & (u_lab3_modgen_counter_row_areg_q_31__aq $ (u_lab3_modgen_counter_row_anx18310z2)))

	.dataa(u_lab3_modgen_counter_row_areg_q_31__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(u_lab3_reg_state_1__aq),
	.cin(u_lab3_modgen_counter_row_anx18310z2),
	.combout(u_lab3_modgen_counter_row_asload_mux_31_dup_396),
	.cout());
// synopsys translate_off
defparam u_lab3_modgen_counter_row_aix155_fadd.lut_mask = 16'h005A;
defparam u_lab3_modgen_counter_row_aix155_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X17_Y19_N31
dffeas u_lab3_modgen_counter_row_areg_q_31_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_31_dup_396),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_31__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_31_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_31_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N10
fiftyfivenm_lcell_comb ix41843z7100(
// Equation(s):
// nx41843z6 = (!u_lab3_modgen_counter_row_areg_q_30__aq & (!u_lab3_modgen_counter_row_areg_q_31__aq & (!u_lab3_modgen_counter_row_areg_q_28__aq & !u_lab3_modgen_counter_row_areg_q_29__aq)))

	.dataa(u_lab3_modgen_counter_row_areg_q_30__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_31__aq),
	.datac(u_lab3_modgen_counter_row_areg_q_28__aq),
	.datad(u_lab3_modgen_counter_row_areg_q_29__aq),
	.cin(gnd),
	.combout(nx41843z6),
	.cout());
// synopsys translate_off
defparam ix41843z7100.lut_mask = 16'h0001;
defparam ix41843z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N4
fiftyfivenm_lcell_comb ix60357z7100(
// Equation(s):
// nx60357z6 = (!u_lab3_modgen_counter_row_areg_q_25__aq & !u_lab3_modgen_counter_row_areg_q_24__aq)

	.dataa(u_lab3_modgen_counter_row_areg_q_25__aq),
	.datab(gnd),
	.datac(u_lab3_modgen_counter_row_areg_q_24__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx60357z6),
	.cout());
// synopsys translate_off
defparam ix60357z7100.lut_mask = 16'h0505;
defparam ix60357z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N14
fiftyfivenm_lcell_comb ix60357z7099(
// Equation(s):
// nx60357z5 = (!u_lab3_modgen_counter_row_areg_q_26__aq & (nx41843z8 & (nx60357z6 & !u_lab3_modgen_counter_row_areg_q_27__aq)))

	.dataa(u_lab3_modgen_counter_row_areg_q_26__aq),
	.datab(nx41843z8),
	.datac(nx60357z6),
	.datad(u_lab3_modgen_counter_row_areg_q_27__aq),
	.cin(gnd),
	.combout(nx60357z5),
	.cout());
// synopsys translate_off
defparam ix60357z7099.lut_mask = 16'h0040;
defparam ix60357z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N22
fiftyfivenm_lcell_comb ix60357z7098(
// Equation(s):
// nx60357z4 = (nx41843z6 & (nx60357z5 & (nx41843z9 & !u_lab3_modgen_counter_row_areg_q_1__aq)))

	.dataa(nx41843z6),
	.datab(nx60357z5),
	.datac(nx41843z9),
	.datad(u_lab3_modgen_counter_row_areg_q_1__aq),
	.cin(gnd),
	.combout(nx60357z4),
	.cout());
// synopsys translate_off
defparam ix60357z7098.lut_mask = 16'h0080;
defparam ix60357z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N26
fiftyfivenm_lcell_comb ix62976z7097(
// Equation(s):
// nx62976z3 = (u_lab3_reg_state_1__aq & (((nx41843z5 & nx41843z4)) # (!yes_uart_u_uart_reg_RxRDYi_aq)))

	.dataa(nx41843z5),
	.datab(nx41843z4),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx62976z3),
	.cout());
// synopsys translate_off
defparam ix62976z7097.lut_mask = 16'h8F00;
defparam ix62976z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N6
fiftyfivenm_lcell_comb ix62976z7098(
// Equation(s):
// nx62976z4 = (u_lab3_reg_state_1__aq) # (!u_lab3_reg_state_0__aq)

	.dataa(gnd),
	.datab(u_lab3_reg_state_0__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx62976z4),
	.cout());
// synopsys translate_off
defparam ix62976z7098.lut_mask = 16'hF3F3;
defparam ix62976z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N12
fiftyfivenm_lcell_comb ix62976z7096(
// Equation(s):
// nx62976z2 = (u_lab3_reg_state_1__aq & nx63348z3)

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(nx63348z3),
	.cin(gnd),
	.combout(nx62976z2),
	.cout());
// synopsys translate_off
defparam ix62976z7096.lut_mask = 16'hAA00;
defparam ix62976z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N4
fiftyfivenm_lcell_comb ix62976z7095(
// Equation(s):
// nx62976z1 = (nx62976z3 & (((u_lab3_reg_flag_aq)))) # (!nx62976z3 & ((nx62976z4 & ((nx62976z2))) # (!nx62976z4 & (u_lab3_reg_flag_aq))))

	.dataa(nx62976z3),
	.datab(nx62976z4),
	.datac(u_lab3_reg_flag_aq),
	.datad(nx62976z2),
	.cin(gnd),
	.combout(nx62976z1),
	.cout());
// synopsys translate_off
defparam ix62976z7095.lut_mask = 16'hF4B0;
defparam ix62976z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y16_N5
dffeas u_lab3_reg_flag(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx62976z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_flag_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_flag.is_wysiwyg = "true";
defparam u_lab3_reg_flag.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N28
fiftyfivenm_lcell_comb ix60357z7097(
// Equation(s):
// nx60357z3 = (!u_lab3_modgen_counter_row_areg_q_3__aq & (!u_lab3_modgen_counter_row_areg_q_2__aq & u_lab3_reg_flag_aq))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_row_areg_q_3__aq),
	.datac(u_lab3_modgen_counter_row_areg_q_2__aq),
	.datad(u_lab3_reg_flag_aq),
	.cin(gnd),
	.combout(nx60357z3),
	.cout());
// synopsys translate_off
defparam ix60357z7097.lut_mask = 16'h0300;
defparam ix60357z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N8
fiftyfivenm_lcell_comb ix60357z7096(
// Equation(s):
// nx60357z2 = (nx60357z4 & (nx60357z3 & (nx63348z3 & u_lab3_modgen_counter_row_areg_q_0__aq)))

	.dataa(nx60357z4),
	.datab(nx60357z3),
	.datac(nx63348z3),
	.datad(u_lab3_modgen_counter_row_areg_q_0__aq),
	.cin(gnd),
	.combout(nx60357z2),
	.cout());
// synopsys translate_off
defparam ix60357z7096.lut_mask = 16'h8000;
defparam ix60357z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N24
fiftyfivenm_lcell_comb ix60357z7101(
// Equation(s):
// nx60357z7 = (yes_uart_u_uart_reg_RxRDYi_aq & reset_n_ainput_o)

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_RxRDYi_aq),
	.datac(reset_n_ainput_o),
	.datad(gnd),
	.cin(gnd),
	.combout(nx60357z7),
	.cout());
// synopsys translate_off
defparam ix60357z7101.lut_mask = 16'hC0C0;
defparam ix60357z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N10
fiftyfivenm_lcell_comb ix60357z7095(
// Equation(s):
// nx60357z1 = (nx60357z2 & (nx60357z7 & ((!u_lab3_reg_state_0__aq)))) # (!nx60357z2 & ((u_lab3_reg_state_1__aq) # ((nx60357z7 & !u_lab3_reg_state_0__aq))))

	.dataa(nx60357z2),
	.datab(nx60357z7),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_state_0__aq),
	.cin(gnd),
	.combout(nx60357z1),
	.cout());
// synopsys translate_off
defparam ix60357z7095.lut_mask = 16'h50DC;
defparam ix60357z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y16_N11
dffeas u_lab3_reg_state_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx60357z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_state_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_state_1_.is_wysiwyg = "true";
defparam u_lab3_reg_state_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X17_Y20_N5
dffeas u_lab3_modgen_counter_row_areg_q_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_row_asload_mux_2_dup_367),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx41843z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_row_areg_q_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_row_areg_q_2_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_row_areg_q_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N30
fiftyfivenm_lcell_comb ix41843z7098(
// Equation(s):
// nx41843z4 = (!u_lab3_modgen_counter_row_areg_q_2__aq & (!u_lab3_modgen_counter_row_areg_q_3__aq & (!u_lab3_modgen_counter_row_areg_q_0__aq & !u_lab3_modgen_counter_row_areg_q_1__aq)))

	.dataa(u_lab3_modgen_counter_row_areg_q_2__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_3__aq),
	.datac(u_lab3_modgen_counter_row_areg_q_0__aq),
	.datad(u_lab3_modgen_counter_row_areg_q_1__aq),
	.cin(gnd),
	.combout(nx41843z4),
	.cout());
// synopsys translate_off
defparam ix41843z7098.lut_mask = 16'h0001;
defparam ix41843z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y18_N8
fiftyfivenm_lcell_comb ix48923z7100(
// Equation(s):
// nx48923z6 = (nx41843z4 & (yes_uart_u_uart_reg_RxRDYi_aq & nx41843z5))

	.dataa(nx41843z4),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(nx41843z5),
	.cin(gnd),
	.combout(nx48923z6),
	.cout());
// synopsys translate_off
defparam ix48923z7100.lut_mask = 16'hA000;
defparam ix48923z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N8
fiftyfivenm_lcell_comb ix48923z7098(
// Equation(s):
// nx48923z4 = (nx48923z5) # ((u_lab3_reg_state_2__aq) # ((nx48923z6 & nx62976z2)))

	.dataa(nx48923z5),
	.datab(u_lab3_reg_state_2__aq),
	.datac(nx48923z6),
	.datad(nx62976z2),
	.cin(gnd),
	.combout(nx48923z4),
	.cout());
// synopsys translate_off
defparam ix48923z7098.lut_mask = 16'hFEEE;
defparam ix48923z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N2
fiftyfivenm_lcell_comb ix48923z7096(
// Equation(s):
// nx48923z2 = (u_lab3_reg_state_4__aq) # ((u_lab3_reg_state_3__aq & ((nx63348z3) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(u_lab3_reg_state_4__aq),
	.datab(yes_uart_u_uart_reg_RxRDYi_aq),
	.datac(u_lab3_reg_state_3__aq),
	.datad(nx63348z3),
	.cin(gnd),
	.combout(nx48923z2),
	.cout());
// synopsys translate_off
defparam ix48923z7096.lut_mask = 16'hFABA;
defparam ix48923z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N4
fiftyfivenm_lcell_comb ix48923z7097(
// Equation(s):
// nx48923z3 = ((nx63348z3) # ((nx41843z4 & nx41843z5))) # (!yes_uart_u_uart_reg_RxRDYi_aq)

	.dataa(nx41843z4),
	.datab(yes_uart_u_uart_reg_RxRDYi_aq),
	.datac(nx41843z5),
	.datad(nx63348z3),
	.cin(gnd),
	.combout(nx48923z3),
	.cout());
// synopsys translate_off
defparam ix48923z7097.lut_mask = 16'hFFB3;
defparam ix48923z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N20
fiftyfivenm_lcell_comb ix48923z7095(
// Equation(s):
// nx48923z1 = (nx48923z4) # ((!nx48923z2 & ((!nx48923z3) # (!nx41843z3))))

	.dataa(nx41843z3),
	.datab(nx48923z2),
	.datac(nx48923z4),
	.datad(nx48923z3),
	.cin(gnd),
	.combout(nx48923z1),
	.cout());
// synopsys translate_off
defparam ix48923z7095.lut_mask = 16'hF1F3;
defparam ix48923z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y15_N1
dffeas u_lab3_modgen_counter_column_areg_q_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_0_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_0_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N2
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix6_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_1_ = (u_lab3_modgen_counter_column_areg_q_1__aq & (!u_lab3_modgen_counter_column_anx27063z2)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_anx27063z2) # (GND)))
// u_lab3_modgen_counter_column_anx39256z2 = CARRY((!u_lab3_modgen_counter_column_anx27063z2) # (!u_lab3_modgen_counter_column_areg_q_1__aq))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx27063z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_1_),
	.cout(u_lab3_modgen_counter_column_anx39256z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix6_fadd.lut_mask = 16'h3C3F;
defparam u_lab3_modgen_counter_column_aix6_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N3
dffeas u_lab3_modgen_counter_column_areg_q_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_1_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_1_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N4
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix10_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_2_ = (u_lab3_modgen_counter_column_areg_q_2__aq & (u_lab3_modgen_counter_column_anx39256z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_2__aq & (!u_lab3_modgen_counter_column_anx39256z2 & VCC))
// u_lab3_modgen_counter_column_anx57428z2 = CARRY((u_lab3_modgen_counter_column_areg_q_2__aq & !u_lab3_modgen_counter_column_anx39256z2))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx39256z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_2_),
	.cout(u_lab3_modgen_counter_column_anx57428z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix10_fadd.lut_mask = 16'hC30C;
defparam u_lab3_modgen_counter_column_aix10_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N5
dffeas u_lab3_modgen_counter_column_areg_q_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_2_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_2_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N6
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix14_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_3_ = (u_lab3_modgen_counter_column_areg_q_3__aq & (!u_lab3_modgen_counter_column_anx57428z2)) # (!u_lab3_modgen_counter_column_areg_q_3__aq & ((u_lab3_modgen_counter_column_anx57428z2) # (GND)))
// u_lab3_modgen_counter_column_anx23040z2 = CARRY((!u_lab3_modgen_counter_column_anx57428z2) # (!u_lab3_modgen_counter_column_areg_q_3__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx57428z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_3_),
	.cout(u_lab3_modgen_counter_column_anx23040z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix14_fadd.lut_mask = 16'h5A5F;
defparam u_lab3_modgen_counter_column_aix14_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N7
dffeas u_lab3_modgen_counter_column_areg_q_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_3_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_3_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N8
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix18_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_4_ = (u_lab3_modgen_counter_column_areg_q_4__aq & (u_lab3_modgen_counter_column_anx23040z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_4__aq & (!u_lab3_modgen_counter_column_anx23040z2 & VCC))
// u_lab3_modgen_counter_column_anx58827z2 = CARRY((u_lab3_modgen_counter_column_areg_q_4__aq & !u_lab3_modgen_counter_column_anx23040z2))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_4__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx23040z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_4_),
	.cout(u_lab3_modgen_counter_column_anx58827z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix18_fadd.lut_mask = 16'hC30C;
defparam u_lab3_modgen_counter_column_aix18_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N9
dffeas u_lab3_modgen_counter_column_areg_q_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_4_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_4_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N10
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix22_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_5_ = (u_lab3_modgen_counter_column_areg_q_5__aq & (!u_lab3_modgen_counter_column_anx58827z2)) # (!u_lab3_modgen_counter_column_areg_q_5__aq & ((u_lab3_modgen_counter_column_anx58827z2) # (GND)))
// u_lab3_modgen_counter_column_anx37857z2 = CARRY((!u_lab3_modgen_counter_column_anx58827z2) # (!u_lab3_modgen_counter_column_areg_q_5__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_5__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx58827z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_5_),
	.cout(u_lab3_modgen_counter_column_anx37857z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix22_fadd.lut_mask = 16'h5A5F;
defparam u_lab3_modgen_counter_column_aix22_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N11
dffeas u_lab3_modgen_counter_column_areg_q_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_5_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_5_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N12
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix26_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_6_ = (u_lab3_modgen_counter_column_areg_q_6__aq & (u_lab3_modgen_counter_column_anx37857z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_6__aq & (!u_lab3_modgen_counter_column_anx37857z2 & VCC))
// u_lab3_modgen_counter_column_anx21526z2 = CARRY((u_lab3_modgen_counter_column_areg_q_6__aq & !u_lab3_modgen_counter_column_anx37857z2))

	.dataa(u_lab3_modgen_counter_column_areg_q_6__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx37857z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_6_),
	.cout(u_lab3_modgen_counter_column_anx21526z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix26_fadd.lut_mask = 16'hA50A;
defparam u_lab3_modgen_counter_column_aix26_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N13
dffeas u_lab3_modgen_counter_column_areg_q_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_6_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_6_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N14
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix30_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_7_ = (u_lab3_modgen_counter_column_areg_q_7__aq & (!u_lab3_modgen_counter_column_anx21526z2)) # (!u_lab3_modgen_counter_column_areg_q_7__aq & ((u_lab3_modgen_counter_column_anx21526z2) # (GND)))
// u_lab3_modgen_counter_column_anx12862z2 = CARRY((!u_lab3_modgen_counter_column_anx21526z2) # (!u_lab3_modgen_counter_column_areg_q_7__aq))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_7__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx21526z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_7_),
	.cout(u_lab3_modgen_counter_column_anx12862z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix30_fadd.lut_mask = 16'h3C3F;
defparam u_lab3_modgen_counter_column_aix30_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N15
dffeas u_lab3_modgen_counter_column_areg_q_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_7_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_7_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N16
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix34_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_8_ = (u_lab3_modgen_counter_column_areg_q_8__aq & (u_lab3_modgen_counter_column_anx12862z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_8__aq & (!u_lab3_modgen_counter_column_anx12862z2 & VCC))
// u_lab3_modgen_counter_column_anx47250z2 = CARRY((u_lab3_modgen_counter_column_areg_q_8__aq & !u_lab3_modgen_counter_column_anx12862z2))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_8__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx12862z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_8_),
	.cout(u_lab3_modgen_counter_column_anx47250z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix34_fadd.lut_mask = 16'hC30C;
defparam u_lab3_modgen_counter_column_aix34_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N17
dffeas u_lab3_modgen_counter_column_areg_q_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_8_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_8_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_8_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N18
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix38_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_9_ = (u_lab3_modgen_counter_column_areg_q_9__aq & (!u_lab3_modgen_counter_column_anx47250z2)) # (!u_lab3_modgen_counter_column_areg_q_9__aq & ((u_lab3_modgen_counter_column_anx47250z2) # (GND)))
// u_lab3_modgen_counter_column_anx1955z2 = CARRY((!u_lab3_modgen_counter_column_anx47250z2) # (!u_lab3_modgen_counter_column_areg_q_9__aq))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_9__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx47250z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_9_),
	.cout(u_lab3_modgen_counter_column_anx1955z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix38_fadd.lut_mask = 16'h3C3F;
defparam u_lab3_modgen_counter_column_aix38_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N19
dffeas u_lab3_modgen_counter_column_areg_q_9_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_9_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_9__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_9_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_9_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N20
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix42_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_10_ = (u_lab3_modgen_counter_column_areg_q_10__aq & (u_lab3_modgen_counter_column_anx1955z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_10__aq & (!u_lab3_modgen_counter_column_anx1955z2 & VCC))
// u_lab3_modgen_counter_column_anx32433z2 = CARRY((u_lab3_modgen_counter_column_areg_q_10__aq & !u_lab3_modgen_counter_column_anx1955z2))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_10__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx1955z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_10_),
	.cout(u_lab3_modgen_counter_column_anx32433z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix42_fadd.lut_mask = 16'hC30C;
defparam u_lab3_modgen_counter_column_aix42_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N21
dffeas u_lab3_modgen_counter_column_areg_q_10_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_10_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_10__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_10_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_10_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N22
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix46_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_11_ = (u_lab3_modgen_counter_column_areg_q_11__aq & (!u_lab3_modgen_counter_column_anx32433z2)) # (!u_lab3_modgen_counter_column_areg_q_11__aq & ((u_lab3_modgen_counter_column_anx32433z2) # (GND)))
// u_lab3_modgen_counter_column_anx48764z2 = CARRY((!u_lab3_modgen_counter_column_anx32433z2) # (!u_lab3_modgen_counter_column_areg_q_11__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_11__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx32433z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_11_),
	.cout(u_lab3_modgen_counter_column_anx48764z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix46_fadd.lut_mask = 16'h5A5F;
defparam u_lab3_modgen_counter_column_aix46_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N23
dffeas u_lab3_modgen_counter_column_areg_q_11_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_11_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_11__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_11_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_11_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N24
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix50_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_12_ = (u_lab3_modgen_counter_column_areg_q_12__aq & (u_lab3_modgen_counter_column_anx48764z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_12__aq & (!u_lab3_modgen_counter_column_anx48764z2 & VCC))
// u_lab3_modgen_counter_column_anx47920z2 = CARRY((u_lab3_modgen_counter_column_areg_q_12__aq & !u_lab3_modgen_counter_column_anx48764z2))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_12__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx48764z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_12_),
	.cout(u_lab3_modgen_counter_column_anx47920z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix50_fadd.lut_mask = 16'hC30C;
defparam u_lab3_modgen_counter_column_aix50_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N25
dffeas u_lab3_modgen_counter_column_areg_q_12_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_12_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_12__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_12_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_12_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N26
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix54_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_13_ = (u_lab3_modgen_counter_column_areg_q_13__aq & (!u_lab3_modgen_counter_column_anx47920z2)) # (!u_lab3_modgen_counter_column_areg_q_13__aq & ((u_lab3_modgen_counter_column_anx47920z2) # (GND)))
// u_lab3_modgen_counter_column_anx13532z2 = CARRY((!u_lab3_modgen_counter_column_anx47920z2) # (!u_lab3_modgen_counter_column_areg_q_13__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_13__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx47920z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_13_),
	.cout(u_lab3_modgen_counter_column_anx13532z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix54_fadd.lut_mask = 16'h5A5F;
defparam u_lab3_modgen_counter_column_aix54_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N27
dffeas u_lab3_modgen_counter_column_areg_q_13_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_13_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_13__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_13_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_13_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N28
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix58_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_14_ = (u_lab3_modgen_counter_column_areg_q_14__aq & (u_lab3_modgen_counter_column_anx13532z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_14__aq & (!u_lab3_modgen_counter_column_anx13532z2 & VCC))
// u_lab3_modgen_counter_column_anx2799z2 = CARRY((u_lab3_modgen_counter_column_areg_q_14__aq & !u_lab3_modgen_counter_column_anx13532z2))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_14__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx13532z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_14_),
	.cout(u_lab3_modgen_counter_column_anx2799z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix58_fadd.lut_mask = 16'hC30C;
defparam u_lab3_modgen_counter_column_aix58_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N29
dffeas u_lab3_modgen_counter_column_areg_q_14_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_14_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_14__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_14_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_14_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y15_N30
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix62_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_15_ = (u_lab3_modgen_counter_column_areg_q_15__aq & (!u_lab3_modgen_counter_column_anx2799z2)) # (!u_lab3_modgen_counter_column_areg_q_15__aq & ((u_lab3_modgen_counter_column_anx2799z2) # (GND)))
// u_lab3_modgen_counter_column_anx28349z2 = CARRY((!u_lab3_modgen_counter_column_anx2799z2) # (!u_lab3_modgen_counter_column_areg_q_15__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_15__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx2799z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_15_),
	.cout(u_lab3_modgen_counter_column_anx28349z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix62_fadd.lut_mask = 16'h5A5F;
defparam u_lab3_modgen_counter_column_aix62_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y15_N31
dffeas u_lab3_modgen_counter_column_areg_q_15_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_15_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_15__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_15_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_15_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N0
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix66_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_16_ = (u_lab3_modgen_counter_column_areg_q_16__aq & (u_lab3_modgen_counter_column_anx28349z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_16__aq & (!u_lab3_modgen_counter_column_anx28349z2 & VCC))
// u_lab3_modgen_counter_column_anx12018z2 = CARRY((u_lab3_modgen_counter_column_areg_q_16__aq & !u_lab3_modgen_counter_column_anx28349z2))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_16__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx28349z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_16_),
	.cout(u_lab3_modgen_counter_column_anx12018z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix66_fadd.lut_mask = 16'hC30C;
defparam u_lab3_modgen_counter_column_aix66_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N1
dffeas u_lab3_modgen_counter_column_areg_q_16_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_16_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_16__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_16_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_16_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N2
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix70_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_17_ = (u_lab3_modgen_counter_column_areg_q_17__aq & (!u_lab3_modgen_counter_column_anx12018z2)) # (!u_lab3_modgen_counter_column_areg_q_17__aq & ((u_lab3_modgen_counter_column_anx12018z2) # (GND)))
// u_lab3_modgen_counter_column_anx22370z2 = CARRY((!u_lab3_modgen_counter_column_anx12018z2) # (!u_lab3_modgen_counter_column_areg_q_17__aq))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_17__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx12018z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_17_),
	.cout(u_lab3_modgen_counter_column_anx22370z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix70_fadd.lut_mask = 16'h3C3F;
defparam u_lab3_modgen_counter_column_aix70_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N3
dffeas u_lab3_modgen_counter_column_areg_q_17_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_17_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_17__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_17_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_17_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N4
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix74_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_18_ = (u_lab3_modgen_counter_column_areg_q_18__aq & (u_lab3_modgen_counter_column_anx22370z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_18__aq & (!u_lab3_modgen_counter_column_anx22370z2 & VCC))
// u_lab3_modgen_counter_column_anx56758z2 = CARRY((u_lab3_modgen_counter_column_areg_q_18__aq & !u_lab3_modgen_counter_column_anx22370z2))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_18__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx22370z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_18_),
	.cout(u_lab3_modgen_counter_column_anx56758z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix74_fadd.lut_mask = 16'hC30C;
defparam u_lab3_modgen_counter_column_aix74_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N5
dffeas u_lab3_modgen_counter_column_areg_q_18_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_18_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_18__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_18_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_18_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N6
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix78_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_19_ = (u_lab3_modgen_counter_column_areg_q_19__aq & (!u_lab3_modgen_counter_column_anx56758z2)) # (!u_lab3_modgen_counter_column_areg_q_19__aq & ((u_lab3_modgen_counter_column_anx56758z2) # (GND)))
// u_lab3_modgen_counter_column_anx57983z2 = CARRY((!u_lab3_modgen_counter_column_anx56758z2) # (!u_lab3_modgen_counter_column_areg_q_19__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_19__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx56758z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_19_),
	.cout(u_lab3_modgen_counter_column_anx57983z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix78_fadd.lut_mask = 16'h5A5F;
defparam u_lab3_modgen_counter_column_aix78_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N7
dffeas u_lab3_modgen_counter_column_areg_q_19_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_19_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_19__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_19_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_19_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N8
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix82_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_20_ = (u_lab3_modgen_counter_column_areg_q_20__aq & (u_lab3_modgen_counter_column_anx57983z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_20__aq & (!u_lab3_modgen_counter_column_anx57983z2 & VCC))
// u_lab3_modgen_counter_column_anx41941z2 = CARRY((u_lab3_modgen_counter_column_areg_q_20__aq & !u_lab3_modgen_counter_column_anx57983z2))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_20__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx57983z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_20_),
	.cout(u_lab3_modgen_counter_column_anx41941z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix82_fadd.lut_mask = 16'hC30C;
defparam u_lab3_modgen_counter_column_aix82_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N9
dffeas u_lab3_modgen_counter_column_areg_q_20_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_20_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_20__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_20_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_20_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N10
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix86_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_21_ = (u_lab3_modgen_counter_column_areg_q_21__aq & (!u_lab3_modgen_counter_column_anx41941z2)) # (!u_lab3_modgen_counter_column_areg_q_21__aq & ((u_lab3_modgen_counter_column_anx41941z2) # (GND)))
// u_lab3_modgen_counter_column_anx58272z2 = CARRY((!u_lab3_modgen_counter_column_anx41941z2) # (!u_lab3_modgen_counter_column_areg_q_21__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_21__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx41941z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_21_),
	.cout(u_lab3_modgen_counter_column_anx58272z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix86_fadd.lut_mask = 16'h5A5F;
defparam u_lab3_modgen_counter_column_aix86_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N11
dffeas u_lab3_modgen_counter_column_areg_q_21_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_21_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_21__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_21_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_21_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N12
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix90_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_22_ = (u_lab3_modgen_counter_column_areg_q_22__aq & (u_lab3_modgen_counter_column_anx58272z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_22__aq & (!u_lab3_modgen_counter_column_anx58272z2 & VCC))
// u_lab3_modgen_counter_column_anx38412z2 = CARRY((u_lab3_modgen_counter_column_areg_q_22__aq & !u_lab3_modgen_counter_column_anx58272z2))

	.dataa(u_lab3_modgen_counter_column_areg_q_22__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx58272z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_22_),
	.cout(u_lab3_modgen_counter_column_anx38412z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix90_fadd.lut_mask = 16'hA50A;
defparam u_lab3_modgen_counter_column_aix90_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N13
dffeas u_lab3_modgen_counter_column_areg_q_22_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_22_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_22__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_22_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_22_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N14
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix94_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_23_ = (u_lab3_modgen_counter_column_areg_q_23__aq & (!u_lab3_modgen_counter_column_anx38412z2)) # (!u_lab3_modgen_counter_column_areg_q_23__aq & ((u_lab3_modgen_counter_column_anx38412z2) # (GND)))
// u_lab3_modgen_counter_column_anx61512z2 = CARRY((!u_lab3_modgen_counter_column_anx38412z2) # (!u_lab3_modgen_counter_column_areg_q_23__aq))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_23__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx38412z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_23_),
	.cout(u_lab3_modgen_counter_column_anx61512z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix94_fadd.lut_mask = 16'h3C3F;
defparam u_lab3_modgen_counter_column_aix94_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N15
dffeas u_lab3_modgen_counter_column_areg_q_23_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_23_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_23__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_23_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_23_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N16
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix98_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_24_ = (u_lab3_modgen_counter_column_areg_q_24__aq & (u_lab3_modgen_counter_column_anx61512z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_24__aq & (!u_lab3_modgen_counter_column_anx61512z2 & VCC))
// u_lab3_modgen_counter_column_anx36406z2 = CARRY((u_lab3_modgen_counter_column_areg_q_24__aq & !u_lab3_modgen_counter_column_anx61512z2))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_24__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx61512z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_24_),
	.cout(u_lab3_modgen_counter_column_anx36406z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix98_fadd.lut_mask = 16'hC30C;
defparam u_lab3_modgen_counter_column_aix98_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N17
dffeas u_lab3_modgen_counter_column_areg_q_24_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_24_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_24__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_24_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_24_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N18
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix133_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_25_ = (u_lab3_modgen_counter_column_areg_q_25__aq & (!u_lab3_modgen_counter_column_anx36406z2)) # (!u_lab3_modgen_counter_column_areg_q_25__aq & ((u_lab3_modgen_counter_column_anx36406z2) # (GND)))
// u_lab3_modgen_counter_column_anx63518z2 = CARRY((!u_lab3_modgen_counter_column_anx36406z2) # (!u_lab3_modgen_counter_column_areg_q_25__aq))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_25__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx36406z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_25_),
	.cout(u_lab3_modgen_counter_column_anx63518z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix133_fadd.lut_mask = 16'h3C3F;
defparam u_lab3_modgen_counter_column_aix133_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N19
dffeas u_lab3_modgen_counter_column_areg_q_25_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_25_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_25__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_25_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_25_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N20
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix137_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_26_ = (u_lab3_modgen_counter_column_areg_q_26__aq & (u_lab3_modgen_counter_column_anx63518z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_26__aq & (!u_lab3_modgen_counter_column_anx63518z2 & VCC))
// u_lab3_modgen_counter_column_anx14313z2 = CARRY((u_lab3_modgen_counter_column_areg_q_26__aq & !u_lab3_modgen_counter_column_anx63518z2))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_26__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx63518z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_26_),
	.cout(u_lab3_modgen_counter_column_anx14313z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix137_fadd.lut_mask = 16'hC30C;
defparam u_lab3_modgen_counter_column_aix137_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N21
dffeas u_lab3_modgen_counter_column_areg_q_26_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_26_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_26__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_26_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_26_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N22
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix141_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_27_ = (u_lab3_modgen_counter_column_areg_q_27__aq & (!u_lab3_modgen_counter_column_anx14313z2)) # (!u_lab3_modgen_counter_column_areg_q_27__aq & ((u_lab3_modgen_counter_column_anx14313z2) # (GND)))
// u_lab3_modgen_counter_column_anx16835z2 = CARRY((!u_lab3_modgen_counter_column_anx14313z2) # (!u_lab3_modgen_counter_column_areg_q_27__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_27__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx14313z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_27_),
	.cout(u_lab3_modgen_counter_column_anx16835z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix141_fadd.lut_mask = 16'h5A5F;
defparam u_lab3_modgen_counter_column_aix141_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N23
dffeas u_lab3_modgen_counter_column_areg_q_27_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_27_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_27__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_27_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_27_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N26
fiftyfivenm_lcell_comb ix63348z7100(
// Equation(s):
// nx63348z5 = (!u_lab3_modgen_counter_column_areg_q_26__aq & (!u_lab3_modgen_counter_column_areg_q_27__aq & (!u_lab3_modgen_counter_column_areg_q_24__aq & !u_lab3_modgen_counter_column_areg_q_25__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_26__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_27__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_24__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_25__aq),
	.cin(gnd),
	.combout(nx63348z5),
	.cout());
// synopsys translate_off
defparam ix63348z7100.lut_mask = 16'h0001;
defparam ix63348z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N20
fiftyfivenm_lcell_comb ix63348z7102(
// Equation(s):
// nx63348z7 = (!u_lab3_modgen_counter_column_areg_q_21__aq & !u_lab3_modgen_counter_column_areg_q_20__aq)

	.dataa(u_lab3_modgen_counter_column_areg_q_21__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(u_lab3_modgen_counter_column_areg_q_20__aq),
	.cin(gnd),
	.combout(nx63348z7),
	.cout());
// synopsys translate_off
defparam ix63348z7102.lut_mask = 16'h0055;
defparam ix63348z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N30
fiftyfivenm_lcell_comb ix63348z7103(
// Equation(s):
// nx63348z8 = (!u_lab3_modgen_counter_column_areg_q_16__aq & (!u_lab3_modgen_counter_column_areg_q_19__aq & (!u_lab3_modgen_counter_column_areg_q_18__aq & !u_lab3_modgen_counter_column_areg_q_17__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_16__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_19__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_18__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_17__aq),
	.cin(gnd),
	.combout(nx63348z8),
	.cout());
// synopsys translate_off
defparam ix63348z7103.lut_mask = 16'h0001;
defparam ix63348z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N0
fiftyfivenm_lcell_comb ix63348z7101(
// Equation(s):
// nx63348z6 = (!u_lab3_modgen_counter_column_areg_q_22__aq & (nx63348z7 & (nx63348z8 & !u_lab3_modgen_counter_column_areg_q_23__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_22__aq),
	.datab(nx63348z7),
	.datac(nx63348z8),
	.datad(u_lab3_modgen_counter_column_areg_q_23__aq),
	.cin(gnd),
	.combout(nx63348z6),
	.cout());
// synopsys translate_off
defparam ix63348z7101.lut_mask = 16'h0040;
defparam ix63348z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N10
fiftyfivenm_lcell_comb ix63348z7105(
// Equation(s):
// nx63348z10 = (!u_lab3_modgen_counter_column_areg_q_15__aq & (!u_lab3_modgen_counter_column_areg_q_14__aq & (!u_lab3_modgen_counter_column_areg_q_12__aq & !u_lab3_modgen_counter_column_areg_q_13__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_15__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_14__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_12__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_13__aq),
	.cin(gnd),
	.combout(nx63348z10),
	.cout());
// synopsys translate_off
defparam ix63348z7105.lut_mask = 16'h0001;
defparam ix63348z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N28
fiftyfivenm_lcell_comb ix63348z7106(
// Equation(s):
// nx63348z11 = (!u_lab3_modgen_counter_column_areg_q_8__aq & (!u_lab3_modgen_counter_column_areg_q_11__aq & (!u_lab3_modgen_counter_column_areg_q_10__aq & !u_lab3_modgen_counter_column_areg_q_9__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_8__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_11__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_10__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_9__aq),
	.cin(gnd),
	.combout(nx63348z11),
	.cout());
// synopsys translate_off
defparam ix63348z7106.lut_mask = 16'h0001;
defparam ix63348z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N22
fiftyfivenm_lcell_comb ix63348z7107(
// Equation(s):
// nx63348z12 = (!u_lab3_modgen_counter_column_areg_q_6__aq & (!u_lab3_modgen_counter_column_areg_q_5__aq & (!u_lab3_modgen_counter_column_areg_q_7__aq & !u_lab3_modgen_counter_column_areg_q_4__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_6__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_5__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_7__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_4__aq),
	.cin(gnd),
	.combout(nx63348z12),
	.cout());
// synopsys translate_off
defparam ix63348z7107.lut_mask = 16'h0001;
defparam ix63348z7107.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N24
fiftyfivenm_lcell_comb ix63348z7108(
// Equation(s):
// nx63348z13 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_modgen_counter_column_areg_q_3__aq & u_lab3_modgen_counter_column_areg_q_2__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_2__aq),
	.cin(gnd),
	.combout(nx63348z13),
	.cout());
// synopsys translate_off
defparam ix63348z7108.lut_mask = 16'h8000;
defparam ix63348z7108.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N8
fiftyfivenm_lcell_comb ix63348z7104(
// Equation(s):
// nx63348z9 = (nx63348z10 & (nx63348z11 & (nx63348z12 & nx63348z13)))

	.dataa(nx63348z10),
	.datab(nx63348z11),
	.datac(nx63348z12),
	.datad(nx63348z13),
	.cin(gnd),
	.combout(nx63348z9),
	.cout());
// synopsys translate_off
defparam ix63348z7104.lut_mask = 16'h8000;
defparam ix63348z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N24
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix145_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_28_ = (u_lab3_modgen_counter_column_areg_q_28__aq & (u_lab3_modgen_counter_column_anx16835z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_28__aq & (!u_lab3_modgen_counter_column_anx16835z2 & VCC))
// u_lab3_modgen_counter_column_anx17553z2 = CARRY((u_lab3_modgen_counter_column_areg_q_28__aq & !u_lab3_modgen_counter_column_anx16835z2))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_28__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx16835z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_28_),
	.cout(u_lab3_modgen_counter_column_anx17553z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix145_fadd.lut_mask = 16'hC30C;
defparam u_lab3_modgen_counter_column_aix145_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N25
dffeas u_lab3_modgen_counter_column_areg_q_28_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_28_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_28__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_28_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_28_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N26
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix149_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_29_ = (u_lab3_modgen_counter_column_areg_q_29__aq & (!u_lab3_modgen_counter_column_anx17553z2)) # (!u_lab3_modgen_counter_column_areg_q_29__aq & ((u_lab3_modgen_counter_column_anx17553z2) # (GND)))
// u_lab3_modgen_counter_column_anx33884z2 = CARRY((!u_lab3_modgen_counter_column_anx17553z2) # (!u_lab3_modgen_counter_column_areg_q_29__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_29__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx17553z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_29_),
	.cout(u_lab3_modgen_counter_column_anx33884z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix149_fadd.lut_mask = 16'h5A5F;
defparam u_lab3_modgen_counter_column_aix149_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N27
dffeas u_lab3_modgen_counter_column_areg_q_29_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_29_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_29__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_29_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_29_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N28
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix153_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_30_ = (u_lab3_modgen_counter_column_areg_q_30__aq & (u_lab3_modgen_counter_column_anx33884z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_30__aq & (!u_lab3_modgen_counter_column_anx33884z2 & VCC))
// u_lab3_modgen_counter_column_anx18310z2 = CARRY((u_lab3_modgen_counter_column_areg_q_30__aq & !u_lab3_modgen_counter_column_anx33884z2))

	.dataa(gnd),
	.datab(u_lab3_modgen_counter_column_areg_q_30__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_modgen_counter_column_anx33884z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_30_),
	.cout(u_lab3_modgen_counter_column_anx18310z2));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix153_fadd.lut_mask = 16'hC30C;
defparam u_lab3_modgen_counter_column_aix153_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N29
dffeas u_lab3_modgen_counter_column_areg_q_30_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_30_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_30__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_30_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_30_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y14_N30
fiftyfivenm_lcell_comb u_lab3_modgen_counter_column_aix155_fadd(
// Equation(s):
// u_lab3_modgen_counter_column_ainc_d_31_ = u_lab3_modgen_counter_column_areg_q_31__aq $ (u_lab3_modgen_counter_column_anx18310z2)

	.dataa(u_lab3_modgen_counter_column_areg_q_31__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(u_lab3_modgen_counter_column_anx18310z2),
	.combout(u_lab3_modgen_counter_column_ainc_d_31_),
	.cout());
// synopsys translate_off
defparam u_lab3_modgen_counter_column_aix155_fadd.lut_mask = 16'h5A5A;
defparam u_lab3_modgen_counter_column_aix155_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X23_Y14_N31
dffeas u_lab3_modgen_counter_column_areg_q_31_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_modgen_counter_column_ainc_d_31_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(nx48923z4),
	.sload(gnd),
	.ena(nx48923z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_modgen_counter_column_areg_q_31__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_modgen_counter_column_areg_q_31_.is_wysiwyg = "true";
defparam u_lab3_modgen_counter_column_areg_q_31_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N24
fiftyfivenm_lcell_comb ix63348z7099(
// Equation(s):
// nx63348z4 = (!u_lab3_modgen_counter_column_areg_q_30__aq & (!u_lab3_modgen_counter_column_areg_q_31__aq & (!u_lab3_modgen_counter_column_areg_q_29__aq & !u_lab3_modgen_counter_column_areg_q_28__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_30__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_31__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_29__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_28__aq),
	.cin(gnd),
	.combout(nx63348z4),
	.cout());
// synopsys translate_off
defparam ix63348z7099.lut_mask = 16'h0001;
defparam ix63348z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y14_N18
fiftyfivenm_lcell_comb ix63348z7098(
// Equation(s):
// nx63348z3 = (nx63348z5 & (nx63348z6 & (nx63348z9 & nx63348z4)))

	.dataa(nx63348z5),
	.datab(nx63348z6),
	.datac(nx63348z9),
	.datad(nx63348z4),
	.cin(gnd),
	.combout(nx63348z3),
	.cout());
// synopsys translate_off
defparam ix63348z7098.lut_mask = 16'h8000;
defparam ix63348z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y14_N28
fiftyfivenm_lcell_comb ix53092z7095(
// Equation(s):
// nx53092z1 = (nx53092z2 & (((u_lab3_reg_compute_flag_aq)))) # (!nx53092z2 & (u_lab3_reg_state_3__aq & ((nx63348z3))))

	.dataa(u_lab3_reg_state_3__aq),
	.datab(nx53092z2),
	.datac(u_lab3_reg_compute_flag_aq),
	.datad(nx63348z3),
	.cin(gnd),
	.combout(nx53092z1),
	.cout());
// synopsys translate_off
defparam ix53092z7095.lut_mask = 16'hE2C0;
defparam ix53092z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y14_N29
dffeas u_lab3_reg_compute_flag(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx53092z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_compute_flag_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_compute_flag.is_wysiwyg = "true";
defparam u_lab3_reg_compute_flag.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N16
fiftyfivenm_lcell_comb ix62351z7098(
// Equation(s):
// nx62351z4 = (u_lab3_modgen_counter_row_areg_q_2__aq & (u_lab3_modgen_counter_row_areg_q_3__aq & (u_lab3_modgen_counter_row_areg_q_0__aq & u_lab3_modgen_counter_row_areg_q_1__aq)))

	.dataa(u_lab3_modgen_counter_row_areg_q_2__aq),
	.datab(u_lab3_modgen_counter_row_areg_q_3__aq),
	.datac(u_lab3_modgen_counter_row_areg_q_0__aq),
	.datad(u_lab3_modgen_counter_row_areg_q_1__aq),
	.cin(gnd),
	.combout(nx62351z4),
	.cout());
// synopsys translate_off
defparam ix62351z7098.lut_mask = 16'h8000;
defparam ix62351z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N12
fiftyfivenm_lcell_comb ix62351z7097(
// Equation(s):
// nx62351z3 = (nx41843z6 & (nx60357z5 & (nx41843z9 & nx62351z4)))

	.dataa(nx41843z6),
	.datab(nx60357z5),
	.datac(nx41843z9),
	.datad(nx62351z4),
	.cin(gnd),
	.combout(nx62351z3),
	.cout());
// synopsys translate_off
defparam ix62351z7097.lut_mask = 16'h8000;
defparam ix62351z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y14_N12
fiftyfivenm_lcell_comb ix62351z7096(
// Equation(s):
// nx62351z2 = ((u_lab3_reg_compute_flag_aq & (!nx62351z3 & nx63348z3))) # (!u_lab3_reg_state_3__aq)

	.dataa(u_lab3_reg_state_3__aq),
	.datab(u_lab3_reg_compute_flag_aq),
	.datac(nx62351z3),
	.datad(nx63348z3),
	.cin(gnd),
	.combout(nx62351z2),
	.cout());
// synopsys translate_off
defparam ix62351z7096.lut_mask = 16'h5D55;
defparam ix62351z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y14_N0
fiftyfivenm_lcell_comb ix61354z7095(
// Equation(s):
// nx61354z1 = (nx62351z2 & ((u_lab3_reg_state_1__aq & (nx60357z2)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_state_3__aq)))))

	.dataa(nx62351z2),
	.datab(nx60357z2),
	.datac(u_lab3_reg_state_3__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx61354z1),
	.cout());
// synopsys translate_off
defparam ix61354z7095.lut_mask = 16'h88A0;
defparam ix61354z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y14_N1
dffeas u_lab3_reg_state_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx61354z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_state_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_state_2_.is_wysiwyg = "true";
defparam u_lab3_reg_state_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y14_N22
fiftyfivenm_lcell_comb ix63348z7097(
// Equation(s):
// nx63348z2 = (u_lab3_reg_compute_flag_aq & (nx62351z3 & nx63348z3))

	.dataa(gnd),
	.datab(u_lab3_reg_compute_flag_aq),
	.datac(nx62351z3),
	.datad(nx63348z3),
	.cin(gnd),
	.combout(nx63348z2),
	.cout());
// synopsys translate_off
defparam ix63348z7097.lut_mask = 16'hC000;
defparam ix63348z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y14_N26
fiftyfivenm_lcell_comb ix62351z7095(
// Equation(s):
// nx62351z1 = (reset_n_ainput_o & ((u_lab3_reg_state_2__aq) # ((!nx63348z2 & !nx62351z2))))

	.dataa(reset_n_ainput_o),
	.datab(u_lab3_reg_state_2__aq),
	.datac(nx63348z2),
	.datad(nx62351z2),
	.cin(gnd),
	.combout(nx62351z1),
	.cout());
// synopsys translate_off
defparam ix62351z7095.lut_mask = 16'h888A;
defparam ix62351z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y14_N27
dffeas u_lab3_reg_state_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx62351z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_state_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_state_3_.is_wysiwyg = "true";
defparam u_lab3_reg_state_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y14_N6
fiftyfivenm_lcell_comb ix63348z7095(
// Equation(s):
// nx63348z1 = (u_lab3_reg_state_3__aq & (nx63348z2 & ((!u_lab3_rtlc0_PS25_n202) # (!u_lab3_reg_state_4__aq)))) # (!u_lab3_reg_state_3__aq & (((u_lab3_reg_state_4__aq & !u_lab3_rtlc0_PS25_n202))))

	.dataa(u_lab3_reg_state_3__aq),
	.datab(nx63348z2),
	.datac(u_lab3_reg_state_4__aq),
	.datad(u_lab3_rtlc0_PS25_n202),
	.cin(gnd),
	.combout(nx63348z1),
	.cout());
// synopsys translate_off
defparam ix63348z7095.lut_mask = 16'h08D8;
defparam ix63348z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y14_N7
dffeas u_lab3_reg_state_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx63348z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_state_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_state_4_.is_wysiwyg = "true";
defparam u_lab3_reg_state_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N16
fiftyfivenm_lcell_comb ix59360z7095(
// Equation(s):
// nx59360z1 = (reset_n_ainput_o & ((yes_uart_u_uart_reg_RxRDYi_aq & ((!u_lab3_reg_state_4__aq))) # (!yes_uart_u_uart_reg_RxRDYi_aq & (u_lab3_reg_state_0__aq)))) # (!reset_n_ainput_o & (((u_lab3_reg_state_0__aq & !u_lab3_reg_state_4__aq))))

	.dataa(reset_n_ainput_o),
	.datab(yes_uart_u_uart_reg_RxRDYi_aq),
	.datac(u_lab3_reg_state_0__aq),
	.datad(u_lab3_reg_state_4__aq),
	.cin(gnd),
	.combout(nx59360z1),
	.cout());
// synopsys translate_off
defparam ix59360z7095.lut_mask = 16'h20F8;
defparam ix59360z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y16_N17
dffeas u_lab3_reg_state_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx59360z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_state_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_state_0_.is_wysiwyg = "true";
defparam u_lab3_reg_state_0_.power_up = "low";
// synopsys translate_on

// Location: FF_X18_Y13_N27
dffeas yes_uart_u_uart_reg_Dout_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Rx_Reg_7__aq),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx46463z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Dout_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Dout_7_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Dout_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N28
fiftyfivenm_lcell_comb ix16929z7095(
// Equation(s):
// nx16929z1 = (u_lab3_reg_state_3__aq & (nx63348z13 & (yes_uart_u_uart_reg_RxRDYi_aq))) # (!u_lab3_reg_state_3__aq & (((!u_lab3_reg_state_0__aq))))

	.dataa(nx63348z13),
	.datab(u_lab3_reg_state_3__aq),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_reg_state_0__aq),
	.cin(gnd),
	.combout(nx16929z1),
	.cout());
// synopsys translate_off
defparam ix16929z7095.lut_mask = 16'h80B3;
defparam ix16929z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y12_N19
dffeas u_lab3_reg_addend_15__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16929z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_15__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_15__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_15__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N24
fiftyfivenm_lcell_comb ix13001z7095(
// Equation(s):
// nx13001z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_15__7__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(u_lab3_reg_addend_15__7__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx13001z1),
	.cout());
// synopsys translate_off
defparam ix13001z7095.lut_mask = 16'hACAC;
defparam ix13001z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N30
fiftyfivenm_lcell_comb ix3960z7095(
// Equation(s):
// nx3960z1 = (u_lab3_reg_state_2__aq) # ((u_lab3_reg_stage_1__aq & u_lab3_reg_state_0__aq))

	.dataa(gnd),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_stage_1__aq),
	.datad(u_lab3_reg_state_0__aq),
	.cin(gnd),
	.combout(nx3960z1),
	.cout());
// synopsys translate_off
defparam ix3960z7095.lut_mask = 16'hFCCC;
defparam ix3960z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y16_N31
dffeas u_lab3_reg_stage_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx3960z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_stage_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_stage_1_.is_wysiwyg = "true";
defparam u_lab3_reg_stage_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N18
fiftyfivenm_lcell_comb ix11351z7099(
// Equation(s):
// nx11351z5 = (u_lab3_reg_state_3__aq) # ((u_lab3_reg_state_4__aq) # ((u_lab3_reg_state_2__aq & !u_lab3_reg_stage_1__aq)))

	.dataa(u_lab3_reg_state_3__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_stage_1__aq),
	.datad(u_lab3_reg_state_4__aq),
	.cin(gnd),
	.combout(nx11351z5),
	.cout());
// synopsys translate_off
defparam ix11351z7099.lut_mask = 16'hFFAE;
defparam ix11351z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N18
fiftyfivenm_lcell_comb ix11351z7098(
// Equation(s):
// nx11351z4 = (nx41843z4 & (nx60357z5 & (nx41843z9 & nx41843z6)))

	.dataa(nx41843z4),
	.datab(nx60357z5),
	.datac(nx41843z9),
	.datad(nx41843z6),
	.cin(gnd),
	.combout(nx11351z4),
	.cout());
// synopsys translate_off
defparam ix11351z7098.lut_mask = 16'h8000;
defparam ix11351z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y18_N20
fiftyfivenm_lcell_comb ix11351z7097(
// Equation(s):
// nx11351z3 = (nx11351z5) # ((u_lab3_reg_state_1__aq & ((nx11351z4) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(nx11351z5),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(nx11351z4),
	.cin(gnd),
	.combout(nx11351z3),
	.cout());
// synopsys translate_off
defparam ix11351z7097.lut_mask = 16'hEEAE;
defparam ix11351z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N4
fiftyfivenm_lcell_comb ix13001z7096(
// Equation(s):
// nx13001z2 = (!nx11351z3 & ((nx63348z13) # (!u_lab3_reg_state_1__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(nx63348z13),
	.datad(nx11351z3),
	.cin(gnd),
	.combout(nx13001z2),
	.cout());
// synopsys translate_off
defparam ix13001z7096.lut_mask = 16'h00F5;
defparam ix13001z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N25
dffeas u_lab3_reg_subtrahend_15__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx13001z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx13001z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_15__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_15__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_15__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N22
fiftyfivenm_lcell_comb ix22064z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_14 = (u_lab3_modgen_counter_column_areg_q_0__aq) # (((!u_lab3_modgen_counter_column_areg_q_1__aq) # (!u_lab3_modgen_counter_column_areg_q_3__aq)) # (!u_lab3_modgen_counter_column_areg_q_2__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_14),
	.cout());
// synopsys translate_off
defparam ix22064z7096.lut_mask = 16'hBFFF;
defparam ix22064z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N26
fiftyfivenm_lcell_comb ix22064z7095(
// Equation(s):
// nx22064z1 = (u_lab3_reg_state_3__aq & (((!u_lab3_not_minuend_1n1s2_14 & yes_uart_u_uart_reg_RxRDYi_aq)))) # (!u_lab3_reg_state_3__aq & (!u_lab3_reg_state_0__aq))

	.dataa(u_lab3_reg_state_0__aq),
	.datab(u_lab3_not_minuend_1n1s2_14),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_reg_state_3__aq),
	.cin(gnd),
	.combout(nx22064z1),
	.cout());
// synopsys translate_off
defparam ix22064z7095.lut_mask = 16'h3055;
defparam ix22064z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X28_Y14_N19
dffeas u_lab3_reg_addend_14__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx22064z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_14__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_14__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_14__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N24
fiftyfivenm_lcell_comb ix18136z7095(
// Equation(s):
// nx18136z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_14__7__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(gnd),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_14__7__aq),
	.cin(gnd),
	.combout(nx18136z1),
	.cout());
// synopsys translate_off
defparam ix18136z7095.lut_mask = 16'hAFA0;
defparam ix18136z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N4
fiftyfivenm_lcell_comb ix18136z7096(
// Equation(s):
// nx18136z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_14) # (!u_lab3_reg_state_1__aq)))

	.dataa(gnd),
	.datab(nx11351z3),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_not_minuend_1n1s2_14),
	.cin(gnd),
	.combout(nx18136z2),
	.cout());
// synopsys translate_off
defparam ix18136z7096.lut_mask = 16'h0333;
defparam ix18136z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y14_N25
dffeas u_lab3_reg_subtrahend_14__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx18136z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx18136z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_14__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_14__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_14__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N12
fiftyfivenm_lcell_comb ix27199z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_13 = (((u_lab3_modgen_counter_column_areg_q_1__aq) # (!u_lab3_modgen_counter_column_areg_q_3__aq)) # (!u_lab3_modgen_counter_column_areg_q_2__aq)) # (!u_lab3_modgen_counter_column_areg_q_0__aq)

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_13),
	.cout());
// synopsys translate_off
defparam ix27199z7096.lut_mask = 16'hFF7F;
defparam ix27199z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N14
fiftyfivenm_lcell_comb ix27199z7095(
// Equation(s):
// nx27199z1 = (u_lab3_reg_state_3__aq & (yes_uart_u_uart_reg_RxRDYi_aq & ((!u_lab3_not_minuend_1n1s2_13)))) # (!u_lab3_reg_state_3__aq & (((!u_lab3_reg_state_0__aq))))

	.dataa(yes_uart_u_uart_reg_RxRDYi_aq),
	.datab(u_lab3_reg_state_0__aq),
	.datac(u_lab3_reg_state_3__aq),
	.datad(u_lab3_not_minuend_1n1s2_13),
	.cin(gnd),
	.combout(nx27199z1),
	.cout());
// synopsys translate_off
defparam ix27199z7095.lut_mask = 16'h03A3;
defparam ix27199z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X28_Y14_N9
dffeas u_lab3_reg_addend_13__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx27199z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_13__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_13__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_13__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N10
fiftyfivenm_lcell_comb ix23271z7095(
// Equation(s):
// nx23271z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_13__7__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_7__aq),
	.datad(u_lab3_reg_addend_13__7__aq),
	.cin(gnd),
	.combout(nx23271z1),
	.cout());
// synopsys translate_off
defparam ix23271z7095.lut_mask = 16'hF5A0;
defparam ix23271z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N2
fiftyfivenm_lcell_comb ix23271z7096(
// Equation(s):
// nx23271z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_13) # (!u_lab3_reg_state_1__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(u_lab3_not_minuend_1n1s2_13),
	.datad(nx11351z3),
	.cin(gnd),
	.combout(nx23271z2),
	.cout());
// synopsys translate_off
defparam ix23271z7096.lut_mask = 16'h005F;
defparam ix23271z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y12_N11
dffeas u_lab3_reg_subtrahend_13__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx23271z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx23271z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_13__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_13__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_13__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N10
fiftyfivenm_lcell_comb ix32334z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_12 = (u_lab3_modgen_counter_column_areg_q_0__aq) # (((u_lab3_modgen_counter_column_areg_q_1__aq) # (!u_lab3_modgen_counter_column_areg_q_3__aq)) # (!u_lab3_modgen_counter_column_areg_q_2__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_12),
	.cout());
// synopsys translate_off
defparam ix32334z7096.lut_mask = 16'hFFBF;
defparam ix32334z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N30
fiftyfivenm_lcell_comb ix32334z7095(
// Equation(s):
// nx32334z1 = (u_lab3_reg_state_3__aq & (!u_lab3_not_minuend_1n1s2_12 & ((yes_uart_u_uart_reg_RxRDYi_aq)))) # (!u_lab3_reg_state_3__aq & (((!u_lab3_reg_state_0__aq))))

	.dataa(u_lab3_not_minuend_1n1s2_12),
	.datab(u_lab3_reg_state_3__aq),
	.datac(u_lab3_reg_state_0__aq),
	.datad(yes_uart_u_uart_reg_RxRDYi_aq),
	.cin(gnd),
	.combout(nx32334z1),
	.cout());
// synopsys translate_off
defparam ix32334z7095.lut_mask = 16'h4703;
defparam ix32334z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y12_N17
dffeas u_lab3_reg_addend_12__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx32334z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_12__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_12__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_12__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N24
fiftyfivenm_lcell_comb ix28406z7095(
// Equation(s):
// nx28406z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_12__7__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_7__aq),
	.datad(u_lab3_reg_addend_12__7__aq),
	.cin(gnd),
	.combout(nx28406z1),
	.cout());
// synopsys translate_off
defparam ix28406z7095.lut_mask = 16'hF5A0;
defparam ix28406z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N8
fiftyfivenm_lcell_comb ix28406z7096(
// Equation(s):
// nx28406z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_12) # (!u_lab3_reg_state_1__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(u_lab3_not_minuend_1n1s2_12),
	.datad(nx11351z3),
	.cin(gnd),
	.combout(nx28406z2),
	.cout());
// synopsys translate_off
defparam ix28406z7096.lut_mask = 16'h005F;
defparam ix28406z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y12_N25
dffeas u_lab3_reg_subtrahend_12__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx28406z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx28406z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_12__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_12__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_12__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N28
fiftyfivenm_lcell_comb ix46976z7114(
// Equation(s):
// nx46976z18 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_13__7__aq) # ((u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_subtrahend_12__7__aq & 
// !u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_reg_subtrahend_13__7__aq),
	.datab(u_lab3_reg_subtrahend_12__7__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx46976z18),
	.cout());
// synopsys translate_off
defparam ix46976z7114.lut_mask = 16'hF0AC;
defparam ix46976z7114.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N30
fiftyfivenm_lcell_comb ix46976z7113(
// Equation(s):
// nx46976z17 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx46976z18 & (u_lab3_reg_subtrahend_15__7__aq)) # (!nx46976z18 & ((u_lab3_reg_subtrahend_14__7__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx46976z18))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_15__7__aq),
	.datac(u_lab3_reg_subtrahend_14__7__aq),
	.datad(nx46976z18),
	.cin(gnd),
	.combout(nx46976z17),
	.cout());
// synopsys translate_off
defparam ix46976z7113.lut_mask = 16'hDDA0;
defparam ix46976z7113.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N22
fiftyfivenm_lcell_comb ix6231z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_8 = (u_lab3_modgen_counter_column_areg_q_1__aq) # ((u_lab3_modgen_counter_column_areg_q_2__aq) # ((u_lab3_modgen_counter_column_areg_q_0__aq) # (!u_lab3_modgen_counter_column_areg_q_3__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_8),
	.cout());
// synopsys translate_off
defparam ix6231z7096.lut_mask = 16'hFFEF;
defparam ix6231z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N6
fiftyfivenm_lcell_comb ix6231z7095(
// Equation(s):
// nx6231z1 = (u_lab3_reg_state_3__aq & (yes_uart_u_uart_reg_RxRDYi_aq & (!u_lab3_not_minuend_1n1s2_8))) # (!u_lab3_reg_state_3__aq & (((!u_lab3_reg_state_0__aq))))

	.dataa(yes_uart_u_uart_reg_RxRDYi_aq),
	.datab(u_lab3_reg_state_3__aq),
	.datac(u_lab3_not_minuend_1n1s2_8),
	.datad(u_lab3_reg_state_0__aq),
	.cin(gnd),
	.combout(nx6231z1),
	.cout());
// synopsys translate_off
defparam ix6231z7095.lut_mask = 16'h083B;
defparam ix6231z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y14_N11
dffeas u_lab3_reg_addend_8__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx6231z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_8__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_8__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_8__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N0
fiftyfivenm_lcell_comb ix29729z7095(
// Equation(s):
// nx29729z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_8__7__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_7__aq),
	.datad(u_lab3_reg_addend_8__7__aq),
	.cin(gnd),
	.combout(nx29729z1),
	.cout());
// synopsys translate_off
defparam ix29729z7095.lut_mask = 16'hF3C0;
defparam ix29729z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N30
fiftyfivenm_lcell_comb ix29729z7096(
// Equation(s):
// nx29729z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_8) # (!u_lab3_reg_state_1__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(nx11351z3),
	.datad(u_lab3_not_minuend_1n1s2_8),
	.cin(gnd),
	.combout(nx29729z2),
	.cout());
// synopsys translate_off
defparam ix29729z7096.lut_mask = 16'h030F;
defparam ix29729z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y16_N1
dffeas u_lab3_reg_subtrahend_8__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx29729z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx29729z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_8__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_8__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_8__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N28
fiftyfivenm_lcell_comb ix64440z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_9 = ((u_lab3_modgen_counter_column_areg_q_1__aq) # ((u_lab3_modgen_counter_column_areg_q_2__aq) # (!u_lab3_modgen_counter_column_areg_q_0__aq))) # (!u_lab3_modgen_counter_column_areg_q_3__aq)

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_2__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_9),
	.cout());
// synopsys translate_off
defparam ix64440z7096.lut_mask = 16'hFFDF;
defparam ix64440z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N0
fiftyfivenm_lcell_comb ix64440z7095(
// Equation(s):
// nx64440z1 = (u_lab3_reg_state_3__aq & (yes_uart_u_uart_reg_RxRDYi_aq & (!u_lab3_not_minuend_1n1s2_9))) # (!u_lab3_reg_state_3__aq & (((!u_lab3_reg_state_0__aq))))

	.dataa(u_lab3_reg_state_3__aq),
	.datab(yes_uart_u_uart_reg_RxRDYi_aq),
	.datac(u_lab3_not_minuend_1n1s2_9),
	.datad(u_lab3_reg_state_0__aq),
	.cin(gnd),
	.combout(nx64440z1),
	.cout());
// synopsys translate_off
defparam ix64440z7095.lut_mask = 16'h085D;
defparam ix64440z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y16_N19
dffeas u_lab3_reg_addend_9__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx64440z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_9__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_9__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_9__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N26
fiftyfivenm_lcell_comb ix34864z7095(
// Equation(s):
// nx34864z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_7__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_9__7__aq))

	.dataa(u_lab3_reg_addend_9__7__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_7__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx34864z1),
	.cout());
// synopsys translate_off
defparam ix34864z7095.lut_mask = 16'hE2E2;
defparam ix34864z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N16
fiftyfivenm_lcell_comb ix34864z7096(
// Equation(s):
// nx34864z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_9) # (!u_lab3_reg_state_1__aq)))

	.dataa(nx11351z3),
	.datab(u_lab3_reg_state_1__aq),
	.datac(u_lab3_not_minuend_1n1s2_9),
	.datad(gnd),
	.cin(gnd),
	.combout(nx34864z2),
	.cout());
// synopsys translate_off
defparam ix34864z7096.lut_mask = 16'h1515;
defparam ix34864z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y16_N27
dffeas u_lab3_reg_subtrahend_9__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx34864z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx34864z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_9__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_9__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_9__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N12
fiftyfivenm_lcell_comb ix46976z7112(
// Equation(s):
// nx46976z16 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_modgen_counter_column_areg_q_1__aq) # ((u_lab3_reg_subtrahend_9__7__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (!u_lab3_modgen_counter_column_areg_q_1__aq & 
// (u_lab3_reg_subtrahend_8__7__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_subtrahend_8__7__aq),
	.datad(u_lab3_reg_subtrahend_9__7__aq),
	.cin(gnd),
	.combout(nx46976z16),
	.cout());
// synopsys translate_off
defparam ix46976z7112.lut_mask = 16'hBA98;
defparam ix46976z7112.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N8
fiftyfivenm_lcell_comb ix37469z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_11 = ((u_lab3_modgen_counter_column_areg_q_2__aq) # ((!u_lab3_modgen_counter_column_areg_q_1__aq) # (!u_lab3_modgen_counter_column_areg_q_3__aq))) # (!u_lab3_modgen_counter_column_areg_q_0__aq)

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_11),
	.cout());
// synopsys translate_off
defparam ix37469z7096.lut_mask = 16'hDFFF;
defparam ix37469z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N28
fiftyfivenm_lcell_comb ix37469z7095(
// Equation(s):
// nx37469z1 = (u_lab3_reg_state_3__aq & (((yes_uart_u_uart_reg_RxRDYi_aq & !u_lab3_not_minuend_1n1s2_11)))) # (!u_lab3_reg_state_3__aq & (!u_lab3_reg_state_0__aq))

	.dataa(u_lab3_reg_state_3__aq),
	.datab(u_lab3_reg_state_0__aq),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_not_minuend_1n1s2_11),
	.cin(gnd),
	.combout(nx37469z1),
	.cout());
// synopsys translate_off
defparam ix37469z7095.lut_mask = 16'h11B1;
defparam ix37469z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y17_N3
dffeas u_lab3_reg_addend_11__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37469z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_11__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_11__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_11__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N16
fiftyfivenm_lcell_comb ix33541z7095(
// Equation(s):
// nx33541z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_11__7__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_7__aq),
	.datad(u_lab3_reg_addend_11__7__aq),
	.cin(gnd),
	.combout(nx33541z1),
	.cout());
// synopsys translate_off
defparam ix33541z7095.lut_mask = 16'hF3C0;
defparam ix33541z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N8
fiftyfivenm_lcell_comb ix33541z7096(
// Equation(s):
// nx33541z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_11) # (!u_lab3_reg_state_1__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(nx11351z3),
	.datad(u_lab3_not_minuend_1n1s2_11),
	.cin(gnd),
	.combout(nx33541z2),
	.cout());
// synopsys translate_off
defparam ix33541z7096.lut_mask = 16'h030F;
defparam ix33541z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N17
dffeas u_lab3_reg_subtrahend_11__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx33541z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx33541z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_11__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_11__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_11__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N14
fiftyfivenm_lcell_comb ix42604z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_10 = (u_lab3_modgen_counter_column_areg_q_0__aq) # ((u_lab3_modgen_counter_column_areg_q_2__aq) # ((!u_lab3_modgen_counter_column_areg_q_1__aq) # (!u_lab3_modgen_counter_column_areg_q_3__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_10),
	.cout());
// synopsys translate_off
defparam ix42604z7096.lut_mask = 16'hEFFF;
defparam ix42604z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N26
fiftyfivenm_lcell_comb ix42604z7095(
// Equation(s):
// nx42604z1 = (u_lab3_reg_state_3__aq & (((yes_uart_u_uart_reg_RxRDYi_aq & !u_lab3_not_minuend_1n1s2_10)))) # (!u_lab3_reg_state_3__aq & (!u_lab3_reg_state_0__aq))

	.dataa(u_lab3_reg_state_3__aq),
	.datab(u_lab3_reg_state_0__aq),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_not_minuend_1n1s2_10),
	.cin(gnd),
	.combout(nx42604z1),
	.cout());
// synopsys translate_off
defparam ix42604z7095.lut_mask = 16'h11B1;
defparam ix42604z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y18_N19
dffeas u_lab3_reg_addend_10__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42604z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_10__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_10__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_10__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N0
fiftyfivenm_lcell_comb ix38676z7095(
// Equation(s):
// nx38676z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_10__7__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(gnd),
	.datac(u_lab3_reg_addend_10__7__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx38676z1),
	.cout());
// synopsys translate_off
defparam ix38676z7095.lut_mask = 16'hAAF0;
defparam ix38676z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N30
fiftyfivenm_lcell_comb ix38676z7096(
// Equation(s):
// nx38676z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_10) # (!u_lab3_reg_state_1__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(nx11351z3),
	.datad(u_lab3_not_minuend_1n1s2_10),
	.cin(gnd),
	.combout(nx38676z2),
	.cout());
// synopsys translate_off
defparam ix38676z7096.lut_mask = 16'h030F;
defparam ix38676z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N1
dffeas u_lab3_reg_subtrahend_10__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx38676z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx38676z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_10__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_10__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_10__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N30
fiftyfivenm_lcell_comb ix46976z7111(
// Equation(s):
// nx46976z15 = (nx46976z16 & ((u_lab3_reg_subtrahend_11__7__aq) # ((!u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!nx46976z16 & (((u_lab3_modgen_counter_column_areg_q_1__aq & u_lab3_reg_subtrahend_10__7__aq))))

	.dataa(nx46976z16),
	.datab(u_lab3_reg_subtrahend_11__7__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_reg_subtrahend_10__7__aq),
	.cin(gnd),
	.combout(nx46976z15),
	.cout());
// synopsys translate_off
defparam ix46976z7111.lut_mask = 16'hDA8A;
defparam ix46976z7111.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N10
fiftyfivenm_lcell_comb ix16501z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_6 = (u_lab3_modgen_counter_column_areg_q_0__aq) # (((u_lab3_modgen_counter_column_areg_q_3__aq) # (!u_lab3_modgen_counter_column_areg_q_2__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_3__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_6),
	.cout());
// synopsys translate_off
defparam ix16501z7096.lut_mask = 16'hFFBF;
defparam ix16501z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N20
fiftyfivenm_lcell_comb ix16501z7095(
// Equation(s):
// nx16501z1 = (u_lab3_reg_state_3__aq & (((yes_uart_u_uart_reg_RxRDYi_aq & !u_lab3_not_minuend_1n1s2_6)))) # (!u_lab3_reg_state_3__aq & (!u_lab3_reg_state_0__aq))

	.dataa(u_lab3_reg_state_3__aq),
	.datab(u_lab3_reg_state_0__aq),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_not_minuend_1n1s2_6),
	.cin(gnd),
	.combout(nx16501z1),
	.cout());
// synopsys translate_off
defparam ix16501z7095.lut_mask = 16'h11B1;
defparam ix16501z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y14_N17
dffeas u_lab3_reg_addend_6__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16501z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_6__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_6__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_6__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N8
fiftyfivenm_lcell_comb ix46077z7095(
// Equation(s):
// nx46077z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_6__7__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_7__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_6__7__aq),
	.cin(gnd),
	.combout(nx46077z1),
	.cout());
// synopsys translate_off
defparam ix46077z7095.lut_mask = 16'hCFC0;
defparam ix46077z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N2
fiftyfivenm_lcell_comb ix46077z7096(
// Equation(s):
// nx46077z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_6) # (!u_lab3_reg_state_1__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(nx11351z3),
	.datad(u_lab3_not_minuend_1n1s2_6),
	.cin(gnd),
	.combout(nx46077z2),
	.cout());
// synopsys translate_off
defparam ix46077z7096.lut_mask = 16'h030F;
defparam ix46077z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y12_N9
dffeas u_lab3_reg_subtrahend_6__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx46077z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx46077z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_6__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_6__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_6__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N2
fiftyfivenm_lcell_comb ix21636z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_5 = (u_lab3_modgen_counter_column_areg_q_3__aq) # (((u_lab3_modgen_counter_column_areg_q_1__aq) # (!u_lab3_modgen_counter_column_areg_q_2__aq)) # (!u_lab3_modgen_counter_column_areg_q_0__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_2__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_5),
	.cout());
// synopsys translate_off
defparam ix21636z7096.lut_mask = 16'hFBFF;
defparam ix21636z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N18
fiftyfivenm_lcell_comb ix21636z7095(
// Equation(s):
// nx21636z1 = (u_lab3_reg_state_3__aq & (((yes_uart_u_uart_reg_RxRDYi_aq & !u_lab3_not_minuend_1n1s2_5)))) # (!u_lab3_reg_state_3__aq & (!u_lab3_reg_state_0__aq))

	.dataa(u_lab3_reg_state_3__aq),
	.datab(u_lab3_reg_state_0__aq),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_not_minuend_1n1s2_5),
	.cin(gnd),
	.combout(nx21636z1),
	.cout());
// synopsys translate_off
defparam ix21636z7095.lut_mask = 16'h11B1;
defparam ix21636z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y17_N9
dffeas u_lab3_reg_addend_5__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx21636z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_5__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_5__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_5__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N18
fiftyfivenm_lcell_comb ix51212z7095(
// Equation(s):
// nx51212z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_5__7__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(u_lab3_reg_addend_5__7__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx51212z1),
	.cout());
// synopsys translate_off
defparam ix51212z7095.lut_mask = 16'hACAC;
defparam ix51212z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N18
fiftyfivenm_lcell_comb ix51212z7096(
// Equation(s):
// nx51212z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_5) # (!u_lab3_reg_state_1__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(nx11351z3),
	.datad(u_lab3_not_minuend_1n1s2_5),
	.cin(gnd),
	.combout(nx51212z2),
	.cout());
// synopsys translate_off
defparam ix51212z7096.lut_mask = 16'h050F;
defparam ix51212z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y15_N19
dffeas u_lab3_reg_subtrahend_5__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx51212z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx51212z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_5__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_5__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_5__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N0
fiftyfivenm_lcell_comb ix26771z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_4 = (u_lab3_modgen_counter_column_areg_q_1__aq) # (((u_lab3_modgen_counter_column_areg_q_3__aq) # (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_2__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_4),
	.cout());
// synopsys translate_off
defparam ix26771z7096.lut_mask = 16'hFFFB;
defparam ix26771z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N14
fiftyfivenm_lcell_comb ix26771z7095(
// Equation(s):
// nx26771z1 = (u_lab3_reg_state_3__aq & (((yes_uart_u_uart_reg_RxRDYi_aq & !u_lab3_not_minuend_1n1s2_4)))) # (!u_lab3_reg_state_3__aq & (!u_lab3_reg_state_0__aq))

	.dataa(u_lab3_reg_state_0__aq),
	.datab(yes_uart_u_uart_reg_RxRDYi_aq),
	.datac(u_lab3_reg_state_3__aq),
	.datad(u_lab3_not_minuend_1n1s2_4),
	.cin(gnd),
	.combout(nx26771z1),
	.cout());
// synopsys translate_off
defparam ix26771z7095.lut_mask = 16'h05C5;
defparam ix26771z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y16_N17
dffeas u_lab3_reg_addend_4__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx26771z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_4__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_4__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_4__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N16
fiftyfivenm_lcell_comb ix56347z7095(
// Equation(s):
// nx56347z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_4__7__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(gnd),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_4__7__aq),
	.cin(gnd),
	.combout(nx56347z1),
	.cout());
// synopsys translate_off
defparam ix56347z7095.lut_mask = 16'hAFA0;
defparam ix56347z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N8
fiftyfivenm_lcell_comb ix56347z7096(
// Equation(s):
// nx56347z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_4) # (!u_lab3_reg_state_1__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(nx11351z3),
	.datad(u_lab3_not_minuend_1n1s2_4),
	.cin(gnd),
	.combout(nx56347z2),
	.cout());
// synopsys translate_off
defparam ix56347z7096.lut_mask = 16'h050F;
defparam ix56347z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N17
dffeas u_lab3_reg_subtrahend_4__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx56347z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx56347z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_4__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_4__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_4__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N4
fiftyfivenm_lcell_comb ix46976z7110(
// Equation(s):
// nx46976z14 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_5__7__aq) # ((u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (((!u_lab3_modgen_counter_column_areg_q_1__aq & 
// u_lab3_reg_subtrahend_4__7__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_reg_subtrahend_5__7__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_reg_subtrahend_4__7__aq),
	.cin(gnd),
	.combout(nx46976z14),
	.cout());
// synopsys translate_off
defparam ix46976z7110.lut_mask = 16'hADA8;
defparam ix46976z7110.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N4
fiftyfivenm_lcell_comb ix11366z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_7 = (((u_lab3_modgen_counter_column_areg_q_3__aq) # (!u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_2__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq)

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_7),
	.cout());
// synopsys translate_off
defparam ix11366z7096.lut_mask = 16'hF7FF;
defparam ix11366z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N22
fiftyfivenm_lcell_comb ix11366z7095(
// Equation(s):
// nx11366z1 = (u_lab3_reg_state_3__aq & (((yes_uart_u_uart_reg_RxRDYi_aq & !u_lab3_not_minuend_1n1s2_7)))) # (!u_lab3_reg_state_3__aq & (!u_lab3_reg_state_0__aq))

	.dataa(u_lab3_reg_state_3__aq),
	.datab(u_lab3_reg_state_0__aq),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_not_minuend_1n1s2_7),
	.cin(gnd),
	.combout(nx11366z1),
	.cout());
// synopsys translate_off
defparam ix11366z7095.lut_mask = 16'h11B1;
defparam ix11366z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N19
dffeas u_lab3_reg_addend_7__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx11366z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_7__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_7__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_7__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N6
fiftyfivenm_lcell_comb ix40942z7095(
// Equation(s):
// nx40942z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_7__7__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(gnd),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_7__7__aq),
	.cin(gnd),
	.combout(nx40942z1),
	.cout());
// synopsys translate_off
defparam ix40942z7095.lut_mask = 16'hAFA0;
defparam ix40942z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N12
fiftyfivenm_lcell_comb ix40942z7096(
// Equation(s):
// nx40942z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_7) # (!u_lab3_reg_state_1__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(nx11351z3),
	.datad(u_lab3_not_minuend_1n1s2_7),
	.cin(gnd),
	.combout(nx40942z2),
	.cout());
// synopsys translate_off
defparam ix40942z7096.lut_mask = 16'h030F;
defparam ix40942z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y15_N7
dffeas u_lab3_reg_subtrahend_7__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx40942z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx40942z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_7__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_7__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_7__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N24
fiftyfivenm_lcell_comb ix46976z7109(
// Equation(s):
// nx46976z13 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx46976z14 & ((u_lab3_reg_subtrahend_7__7__aq))) # (!nx46976z14 & (u_lab3_reg_subtrahend_6__7__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx46976z14))))

	.dataa(u_lab3_reg_subtrahend_6__7__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(nx46976z14),
	.datad(u_lab3_reg_subtrahend_7__7__aq),
	.cin(gnd),
	.combout(nx46976z13),
	.cout());
// synopsys translate_off
defparam ix46976z7109.lut_mask = 16'hF838;
defparam ix46976z7109.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N14
fiftyfivenm_lcell_comb ix37041z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_2 = ((u_lab3_modgen_counter_column_areg_q_2__aq) # ((u_lab3_modgen_counter_column_areg_q_3__aq) # (u_lab3_modgen_counter_column_areg_q_0__aq))) # (!u_lab3_modgen_counter_column_areg_q_1__aq)

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_2),
	.cout());
// synopsys translate_off
defparam ix37041z7096.lut_mask = 16'hFFFD;
defparam ix37041z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N0
fiftyfivenm_lcell_comb ix37041z7095(
// Equation(s):
// nx37041z1 = (u_lab3_reg_state_3__aq & (((!u_lab3_not_minuend_1n1s2_2 & yes_uart_u_uart_reg_RxRDYi_aq)))) # (!u_lab3_reg_state_3__aq & (!u_lab3_reg_state_0__aq))

	.dataa(u_lab3_reg_state_0__aq),
	.datab(u_lab3_not_minuend_1n1s2_2),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_reg_state_3__aq),
	.cin(gnd),
	.combout(nx37041z1),
	.cout());
// synopsys translate_off
defparam ix37041z7095.lut_mask = 16'h3055;
defparam ix37041z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y18_N17
dffeas u_lab3_reg_addend_2__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37041z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_2__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_2__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_2__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N24
fiftyfivenm_lcell_comb ix1081z7095(
// Equation(s):
// nx1081z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_2__7__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_7__aq),
	.datad(u_lab3_reg_addend_2__7__aq),
	.cin(gnd),
	.combout(nx1081z1),
	.cout());
// synopsys translate_off
defparam ix1081z7095.lut_mask = 16'hF5A0;
defparam ix1081z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N2
fiftyfivenm_lcell_comb ix1081z7096(
// Equation(s):
// nx1081z2 = (!nx11351z3 & ((!u_lab3_reg_state_1__aq) # (!u_lab3_not_minuend_1n1s2_2)))

	.dataa(gnd),
	.datab(u_lab3_not_minuend_1n1s2_2),
	.datac(u_lab3_reg_state_1__aq),
	.datad(nx11351z3),
	.cin(gnd),
	.combout(nx1081z2),
	.cout());
// synopsys translate_off
defparam ix1081z7096.lut_mask = 16'h003F;
defparam ix1081z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N25
dffeas u_lab3_reg_subtrahend_2__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx1081z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx1081z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_2__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_2__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_2__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N0
fiftyfivenm_lcell_comb ix31906z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_3 = (u_lab3_modgen_counter_column_areg_q_3__aq) # (((u_lab3_modgen_counter_column_areg_q_2__aq) # (!u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_2__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_3),
	.cout());
// synopsys translate_off
defparam ix31906z7096.lut_mask = 16'hFFBF;
defparam ix31906z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y15_N0
fiftyfivenm_lcell_comb ix31906z7095(
// Equation(s):
// nx31906z1 = (u_lab3_reg_state_3__aq & (yes_uart_u_uart_reg_RxRDYi_aq & ((!u_lab3_not_minuend_1n1s2_3)))) # (!u_lab3_reg_state_3__aq & (((!u_lab3_reg_state_0__aq))))

	.dataa(yes_uart_u_uart_reg_RxRDYi_aq),
	.datab(u_lab3_reg_state_0__aq),
	.datac(u_lab3_reg_state_3__aq),
	.datad(u_lab3_not_minuend_1n1s2_3),
	.cin(gnd),
	.combout(nx31906z1),
	.cout());
// synopsys translate_off
defparam ix31906z7095.lut_mask = 16'h03A3;
defparam ix31906z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y17_N19
dffeas u_lab3_reg_addend_3__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx31906z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_3__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_3__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_3__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N0
fiftyfivenm_lcell_comb ix61482z7095(
// Equation(s):
// nx61482z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_3__7__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_7__aq),
	.datac(u_lab3_reg_addend_3__7__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx61482z1),
	.cout());
// synopsys translate_off
defparam ix61482z7095.lut_mask = 16'hCCF0;
defparam ix61482z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y20_N26
fiftyfivenm_lcell_comb ix61482z7096(
// Equation(s):
// nx61482z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_3) # (!u_lab3_reg_state_1__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(nx11351z3),
	.datad(u_lab3_not_minuend_1n1s2_3),
	.cin(gnd),
	.combout(nx61482z2),
	.cout());
// synopsys translate_off
defparam ix61482z7096.lut_mask = 16'h030F;
defparam ix61482z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y16_N1
dffeas u_lab3_reg_subtrahend_3__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx61482z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx61482z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_3__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_3__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_3__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N8
fiftyfivenm_lcell_comb ix42176z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_1 = ((u_lab3_modgen_counter_column_areg_q_1__aq) # ((u_lab3_modgen_counter_column_areg_q_2__aq) # (u_lab3_modgen_counter_column_areg_q_3__aq))) # (!u_lab3_modgen_counter_column_areg_q_0__aq)

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_3__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_1),
	.cout());
// synopsys translate_off
defparam ix42176z7096.lut_mask = 16'hFFFD;
defparam ix42176z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N30
fiftyfivenm_lcell_comb ix42176z7095(
// Equation(s):
// nx42176z1 = (u_lab3_reg_state_3__aq & (yes_uart_u_uart_reg_RxRDYi_aq & ((!u_lab3_not_minuend_1n1s2_1)))) # (!u_lab3_reg_state_3__aq & (((!u_lab3_reg_state_0__aq))))

	.dataa(yes_uart_u_uart_reg_RxRDYi_aq),
	.datab(u_lab3_reg_state_3__aq),
	.datac(u_lab3_reg_state_0__aq),
	.datad(u_lab3_not_minuend_1n1s2_1),
	.cin(gnd),
	.combout(nx42176z1),
	.cout());
// synopsys translate_off
defparam ix42176z7095.lut_mask = 16'h038B;
defparam ix42176z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N1
dffeas u_lab3_reg_addend_1__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42176z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_1__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_1__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_1__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N16
fiftyfivenm_lcell_comb ix6216z7095(
// Equation(s):
// nx6216z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_1__7__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(gnd),
	.datac(u_lab3_reg_addend_1__7__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx6216z1),
	.cout());
// synopsys translate_off
defparam ix6216z7095.lut_mask = 16'hAAF0;
defparam ix6216z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N8
fiftyfivenm_lcell_comb ix6216z7096(
// Equation(s):
// nx6216z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_1) # (!u_lab3_reg_state_1__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(nx11351z3),
	.datad(u_lab3_not_minuend_1n1s2_1),
	.cin(gnd),
	.combout(nx6216z2),
	.cout());
// synopsys translate_off
defparam ix6216z7096.lut_mask = 16'h050F;
defparam ix6216z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y15_N17
dffeas u_lab3_reg_subtrahend_1__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx6216z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx6216z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_1__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_1__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_1__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N12
fiftyfivenm_lcell_comb ix47311z7096(
// Equation(s):
// u_lab3_not_minuend_1n1s2_0 = (u_lab3_modgen_counter_column_areg_q_1__aq) # ((u_lab3_modgen_counter_column_areg_q_2__aq) # ((u_lab3_modgen_counter_column_areg_q_3__aq) # (u_lab3_modgen_counter_column_areg_q_0__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(u_lab3_not_minuend_1n1s2_0),
	.cout());
// synopsys translate_off
defparam ix47311z7096.lut_mask = 16'hFFFE;
defparam ix47311z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N14
fiftyfivenm_lcell_comb ix47311z7095(
// Equation(s):
// nx47311z1 = (u_lab3_reg_state_3__aq & (!u_lab3_not_minuend_1n1s2_0 & (yes_uart_u_uart_reg_RxRDYi_aq))) # (!u_lab3_reg_state_3__aq & (((!u_lab3_reg_state_0__aq))))

	.dataa(u_lab3_not_minuend_1n1s2_0),
	.datab(u_lab3_reg_state_3__aq),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_reg_state_0__aq),
	.cin(gnd),
	.combout(nx47311z1),
	.cout());
// synopsys translate_off
defparam ix47311z7095.lut_mask = 16'h4073;
defparam ix47311z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y17_N25
dffeas u_lab3_reg_addend_0__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_7__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx47311z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_0__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_0__7_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_0__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N0
fiftyfivenm_lcell_comb ix11351z7095(
// Equation(s):
// nx11351z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_7__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_0__7__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(u_lab3_reg_addend_0__7__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx11351z1),
	.cout());
// synopsys translate_off
defparam ix11351z7095.lut_mask = 16'hB8B8;
defparam ix11351z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N26
fiftyfivenm_lcell_comb ix11351z7096(
// Equation(s):
// nx11351z2 = (!nx11351z3 & ((!u_lab3_reg_state_1__aq) # (!u_lab3_not_minuend_1n1s2_0)))

	.dataa(u_lab3_not_minuend_1n1s2_0),
	.datab(u_lab3_reg_state_1__aq),
	.datac(nx11351z3),
	.datad(gnd),
	.cin(gnd),
	.combout(nx11351z2),
	.cout());
// synopsys translate_off
defparam ix11351z7096.lut_mask = 16'h0707;
defparam ix11351z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y17_N1
dffeas u_lab3_reg_subtrahend_0__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx11351z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx11351z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_0__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_0__7_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_0__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N2
fiftyfivenm_lcell_comb ix46976z7108(
// Equation(s):
// nx46976z12 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_1__7__aq) # ((u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (((!u_lab3_modgen_counter_column_areg_q_1__aq & 
// u_lab3_reg_subtrahend_0__7__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_reg_subtrahend_1__7__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_reg_subtrahend_0__7__aq),
	.cin(gnd),
	.combout(nx46976z12),
	.cout());
// synopsys translate_off
defparam ix46976z7108.lut_mask = 16'hADA8;
defparam ix46976z7108.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N0
fiftyfivenm_lcell_comb ix46976z7107(
// Equation(s):
// nx46976z11 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx46976z12 & ((u_lab3_reg_subtrahend_3__7__aq))) # (!nx46976z12 & (u_lab3_reg_subtrahend_2__7__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx46976z12))))

	.dataa(u_lab3_reg_subtrahend_2__7__aq),
	.datab(u_lab3_reg_subtrahend_3__7__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(nx46976z12),
	.cin(gnd),
	.combout(nx46976z11),
	.cout());
// synopsys translate_off
defparam ix46976z7107.lut_mask = 16'hCFA0;
defparam ix46976z7107.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N2
fiftyfivenm_lcell_comb ix46976z7106(
// Equation(s):
// nx46976z10 = (u_lab3_modgen_counter_column_areg_q_3__aq & (((u_lab3_modgen_counter_column_areg_q_2__aq)))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & ((u_lab3_modgen_counter_column_areg_q_2__aq & (nx46976z13)) # 
// (!u_lab3_modgen_counter_column_areg_q_2__aq & ((nx46976z11)))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(nx46976z13),
	.datac(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datad(nx46976z11),
	.cin(gnd),
	.combout(nx46976z10),
	.cout());
// synopsys translate_off
defparam ix46976z7106.lut_mask = 16'hE5E0;
defparam ix46976z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N16
fiftyfivenm_lcell_comb ix46976z7105(
// Equation(s):
// u_lab3_p_1n7s3f2[7] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx46976z10 & (nx46976z17)) # (!nx46976z10 & ((nx46976z15))))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx46976z10))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(nx46976z17),
	.datac(nx46976z15),
	.datad(nx46976z10),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f2[7]),
	.cout());
// synopsys translate_off
defparam ix46976z7105.lut_mask = 16'hDDA0;
defparam ix46976z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N18
fiftyfivenm_lcell_comb ix22088z7096(
// Equation(s):
// nx22088z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_10) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(yes_uart_u_uart_reg_RxRDYi_aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_not_minuend_1n1s2_10),
	.datad(u_lab3_reg_state_0__aq),
	.cin(gnd),
	.combout(nx22088z1),
	.cout());
// synopsys translate_off
defparam ix22088z7096.lut_mask = 16'hCCFD;
defparam ix22088z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N12
fiftyfivenm_lcell_comb ix22088z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_327_ = (yes_uart_u_uart_reg_Dout_7__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_10__7__aq)) # (!nx22088z1))) # (!yes_uart_u_uart_reg_Dout_7__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_10__7__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(nx22088z1),
	.datac(u_lab3_reg_state_2__aq),
	.datad(u_lab3_reg_subtrahend_10__7__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_327_),
	.cout());
// synopsys translate_off
defparam ix22088z7095.lut_mask = 16'hF222;
defparam ix22088z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N22
fiftyfivenm_lcell_comb ix22088z7097(
// Equation(s):
// nx22088z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_not_minuend_1n1s2_10) # (!u_lab3_reg_state_1__aq))))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_not_minuend_1n1s2_10),
	.datac(nx11351z5),
	.datad(nx41843z3),
	.cin(gnd),
	.combout(nx22088z2),
	.cout());
// synopsys translate_off
defparam ix22088z7097.lut_mask = 16'h0007;
defparam ix22088z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N13
dffeas u_lab3_reg_minuend_10__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_327_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx22088z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_10__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_10__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_10__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N28
fiftyfivenm_lcell_comb ix27223z7096(
// Equation(s):
// nx27223z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_11) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(u_lab3_reg_state_0__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_not_minuend_1n1s2_11),
	.cin(gnd),
	.combout(nx27223z1),
	.cout());
// synopsys translate_off
defparam ix27223z7096.lut_mask = 16'hDDCD;
defparam ix27223z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N30
fiftyfivenm_lcell_comb ix27223z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_359_ = (yes_uart_u_uart_reg_Dout_7__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_11__7__aq)) # (!nx27223z1))) # (!yes_uart_u_uart_reg_Dout_7__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_11__7__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(nx27223z1),
	.datac(u_lab3_reg_state_2__aq),
	.datad(u_lab3_reg_subtrahend_11__7__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_359_),
	.cout());
// synopsys translate_off
defparam ix27223z7095.lut_mask = 16'hF222;
defparam ix27223z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N8
fiftyfivenm_lcell_comb ix27223z7097(
// Equation(s):
// nx27223z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_reg_state_1__aq) # (!u_lab3_not_minuend_1n1s2_11))))

	.dataa(u_lab3_not_minuend_1n1s2_11),
	.datab(nx11351z5),
	.datac(u_lab3_reg_state_1__aq),
	.datad(nx41843z3),
	.cin(gnd),
	.combout(nx27223z2),
	.cout());
// synopsys translate_off
defparam ix27223z7097.lut_mask = 16'h0013;
defparam ix27223z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N31
dffeas u_lab3_reg_minuend_11__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_359_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx27223z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_11__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_11__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_11__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N8
fiftyfivenm_lcell_comb ix36429z7096(
// Equation(s):
// nx36429z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_8) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(yes_uart_u_uart_reg_RxRDYi_aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_not_minuend_1n1s2_8),
	.datad(u_lab3_reg_state_0__aq),
	.cin(gnd),
	.combout(nx36429z1),
	.cout());
// synopsys translate_off
defparam ix36429z7096.lut_mask = 16'hCCFD;
defparam ix36429z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N6
fiftyfivenm_lcell_comb ix36429z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_263_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_8__7__aq) # ((yes_uart_u_uart_reg_Dout_7__aq & !nx36429z1)))) # (!u_lab3_reg_state_2__aq & (yes_uart_u_uart_reg_Dout_7__aq & (!nx36429z1)))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(yes_uart_u_uart_reg_Dout_7__aq),
	.datac(nx36429z1),
	.datad(u_lab3_reg_subtrahend_8__7__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_263_),
	.cout());
// synopsys translate_off
defparam ix36429z7095.lut_mask = 16'hAE0C;
defparam ix36429z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N26
fiftyfivenm_lcell_comb ix36429z7097(
// Equation(s):
// nx36429z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_not_minuend_1n1s2_8) # (!u_lab3_reg_state_1__aq))))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(nx11351z5),
	.datac(u_lab3_not_minuend_1n1s2_8),
	.datad(nx41843z3),
	.cin(gnd),
	.combout(nx36429z2),
	.cout());
// synopsys translate_off
defparam ix36429z7097.lut_mask = 16'h0013;
defparam ix36429z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y15_N7
dffeas u_lab3_reg_minuend_8__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_263_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36429z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_8__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_8__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_8__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N24
fiftyfivenm_lcell_comb ix41564z7096(
// Equation(s):
// nx41564z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_9) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(yes_uart_u_uart_reg_RxRDYi_aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_state_0__aq),
	.datad(u_lab3_not_minuend_1n1s2_9),
	.cin(gnd),
	.combout(nx41564z1),
	.cout());
// synopsys translate_off
defparam ix41564z7096.lut_mask = 16'hCFCD;
defparam ix41564z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N8
fiftyfivenm_lcell_comb ix41564z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_295_ = (u_lab3_reg_subtrahend_9__7__aq & ((u_lab3_reg_state_2__aq) # ((!nx41564z1 & yes_uart_u_uart_reg_Dout_7__aq)))) # (!u_lab3_reg_subtrahend_9__7__aq & (!nx41564z1 & ((yes_uart_u_uart_reg_Dout_7__aq))))

	.dataa(u_lab3_reg_subtrahend_9__7__aq),
	.datab(nx41564z1),
	.datac(u_lab3_reg_state_2__aq),
	.datad(yes_uart_u_uart_reg_Dout_7__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_295_),
	.cout());
// synopsys translate_off
defparam ix41564z7095.lut_mask = 16'hB3A0;
defparam ix41564z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N30
fiftyfivenm_lcell_comb ix41564z7097(
// Equation(s):
// nx41564z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_not_minuend_1n1s2_9) # (!u_lab3_reg_state_1__aq))))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(nx11351z5),
	.datac(u_lab3_not_minuend_1n1s2_9),
	.datad(nx41843z3),
	.cin(gnd),
	.combout(nx41564z2),
	.cout());
// synopsys translate_off
defparam ix41564z7097.lut_mask = 16'h0013;
defparam ix41564z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y15_N9
dffeas u_lab3_reg_minuend_9__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_295_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41564z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_9__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_9__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_9__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N24
fiftyfivenm_lcell_comb ix46976z7102(
// Equation(s):
// nx46976z7 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_9__7__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_8__7__aq))))

	.dataa(u_lab3_reg_minuend_8__7__aq),
	.datab(u_lab3_reg_minuend_9__7__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx46976z7),
	.cout());
// synopsys translate_off
defparam ix46976z7102.lut_mask = 16'hFC0A;
defparam ix46976z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N18
fiftyfivenm_lcell_comb ix46976z7101(
// Equation(s):
// nx46976z6 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx46976z7 & ((u_lab3_reg_minuend_11__7__aq))) # (!nx46976z7 & (u_lab3_reg_minuend_10__7__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx46976z7))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_10__7__aq),
	.datac(u_lab3_reg_minuend_11__7__aq),
	.datad(nx46976z7),
	.cin(gnd),
	.combout(nx46976z6),
	.cout());
// synopsys translate_off
defparam ix46976z7101.lut_mask = 16'hF588;
defparam ix46976z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N24
fiftyfivenm_lcell_comb ix31294z7096(
// Equation(s):
// nx31294z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_7) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(u_lab3_reg_state_0__aq),
	.datab(yes_uart_u_uart_reg_RxRDYi_aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(u_lab3_not_minuend_1n1s2_7),
	.cin(gnd),
	.combout(nx31294z1),
	.cout());
// synopsys translate_off
defparam ix31294z7096.lut_mask = 16'hF5F1;
defparam ix31294z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N26
fiftyfivenm_lcell_comb ix31294z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_231_ = (yes_uart_u_uart_reg_Dout_7__aq & (((u_lab3_reg_subtrahend_7__7__aq & u_lab3_reg_state_2__aq)) # (!nx31294z1))) # (!yes_uart_u_uart_reg_Dout_7__aq & (u_lab3_reg_subtrahend_7__7__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(u_lab3_reg_subtrahend_7__7__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx31294z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_231_),
	.cout());
// synopsys translate_off
defparam ix31294z7095.lut_mask = 16'hC0EA;
defparam ix31294z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N28
fiftyfivenm_lcell_comb ix31294z7097(
// Equation(s):
// nx31294z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_not_minuend_1n1s2_7) # (!u_lab3_reg_state_1__aq))))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(nx11351z5),
	.datac(nx41843z3),
	.datad(u_lab3_not_minuend_1n1s2_7),
	.cin(gnd),
	.combout(nx31294z2),
	.cout());
// synopsys translate_off
defparam ix31294z7097.lut_mask = 16'h0103;
defparam ix31294z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y19_N27
dffeas u_lab3_reg_minuend_7__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_231_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx31294z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_7__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_7__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_7__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N4
fiftyfivenm_lcell_comb ix26159z7096(
// Equation(s):
// nx26159z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_6) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(u_lab3_not_minuend_1n1s2_6),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_reg_state_0__aq),
	.cin(gnd),
	.combout(nx26159z1),
	.cout());
// synopsys translate_off
defparam ix26159z7096.lut_mask = 16'hCCEF;
defparam ix26159z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N6
fiftyfivenm_lcell_comb ix26159z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_199_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_6__7__aq) # ((!nx26159z1 & yes_uart_u_uart_reg_Dout_7__aq)))) # (!u_lab3_reg_state_2__aq & (((!nx26159z1 & yes_uart_u_uart_reg_Dout_7__aq))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_subtrahend_6__7__aq),
	.datac(nx26159z1),
	.datad(yes_uart_u_uart_reg_Dout_7__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_199_),
	.cout());
// synopsys translate_off
defparam ix26159z7095.lut_mask = 16'h8F88;
defparam ix26159z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N0
fiftyfivenm_lcell_comb ix26159z7097(
// Equation(s):
// nx26159z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_reg_state_1__aq) # (!u_lab3_not_minuend_1n1s2_6))))

	.dataa(u_lab3_not_minuend_1n1s2_6),
	.datab(nx11351z5),
	.datac(u_lab3_reg_state_1__aq),
	.datad(nx41843z3),
	.cin(gnd),
	.combout(nx26159z2),
	.cout());
// synopsys translate_off
defparam ix26159z7097.lut_mask = 16'h0013;
defparam ix26159z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y12_N7
dffeas u_lab3_reg_minuend_6__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_199_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26159z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_6__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_6__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_6__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N6
fiftyfivenm_lcell_comb ix21024z7096(
// Equation(s):
// nx21024z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_5) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(yes_uart_u_uart_reg_RxRDYi_aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_state_0__aq),
	.datad(u_lab3_not_minuend_1n1s2_5),
	.cin(gnd),
	.combout(nx21024z1),
	.cout());
// synopsys translate_off
defparam ix21024z7096.lut_mask = 16'hCFCD;
defparam ix21024z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N30
fiftyfivenm_lcell_comb ix21024z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_167_ = (yes_uart_u_uart_reg_Dout_7__aq & (((u_lab3_reg_subtrahend_5__7__aq & u_lab3_reg_state_2__aq)) # (!nx21024z1))) # (!yes_uart_u_uart_reg_Dout_7__aq & (u_lab3_reg_subtrahend_5__7__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(u_lab3_reg_subtrahend_5__7__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx21024z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_167_),
	.cout());
// synopsys translate_off
defparam ix21024z7095.lut_mask = 16'hC0EA;
defparam ix21024z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N24
fiftyfivenm_lcell_comb ix21024z7097(
// Equation(s):
// nx21024z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_reg_state_1__aq) # (!u_lab3_not_minuend_1n1s2_5))))

	.dataa(nx11351z5),
	.datab(u_lab3_not_minuend_1n1s2_5),
	.datac(u_lab3_reg_state_1__aq),
	.datad(nx41843z3),
	.cin(gnd),
	.combout(nx21024z2),
	.cout());
// synopsys translate_off
defparam ix21024z7097.lut_mask = 16'h0015;
defparam ix21024z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N31
dffeas u_lab3_reg_minuend_5__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_167_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx21024z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_5__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_5__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_5__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N18
fiftyfivenm_lcell_comb ix15889z7096(
// Equation(s):
// nx15889z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_4) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(u_lab3_not_minuend_1n1s2_4),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_reg_state_0__aq),
	.cin(gnd),
	.combout(nx15889z1),
	.cout());
// synopsys translate_off
defparam ix15889z7096.lut_mask = 16'hCCEF;
defparam ix15889z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N4
fiftyfivenm_lcell_comb ix15889z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_135_ = (yes_uart_u_uart_reg_Dout_7__aq & (((u_lab3_reg_subtrahend_4__7__aq & u_lab3_reg_state_2__aq)) # (!nx15889z1))) # (!yes_uart_u_uart_reg_Dout_7__aq & (u_lab3_reg_subtrahend_4__7__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(u_lab3_reg_subtrahend_4__7__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx15889z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_135_),
	.cout());
// synopsys translate_off
defparam ix15889z7095.lut_mask = 16'hC0EA;
defparam ix15889z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N22
fiftyfivenm_lcell_comb ix15889z7097(
// Equation(s):
// nx15889z2 = (!nx41843z3 & (!nx11351z5 & ((!u_lab3_reg_state_1__aq) # (!u_lab3_not_minuend_1n1s2_4))))

	.dataa(u_lab3_not_minuend_1n1s2_4),
	.datab(u_lab3_reg_state_1__aq),
	.datac(nx41843z3),
	.datad(nx11351z5),
	.cin(gnd),
	.combout(nx15889z2),
	.cout());
// synopsys translate_off
defparam ix15889z7097.lut_mask = 16'h0007;
defparam ix15889z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N5
dffeas u_lab3_reg_minuend_4__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_135_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx15889z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_4__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_4__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_4__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N12
fiftyfivenm_lcell_comb ix46976z7100(
// Equation(s):
// nx46976z5 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_5__7__aq)) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_4__7__aq)))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_minuend_5__7__aq),
	.datad(u_lab3_reg_minuend_4__7__aq),
	.cin(gnd),
	.combout(nx46976z5),
	.cout());
// synopsys translate_off
defparam ix46976z7100.lut_mask = 16'hD9C8;
defparam ix46976z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N22
fiftyfivenm_lcell_comb ix46976z7099(
// Equation(s):
// nx46976z4 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx46976z5 & (u_lab3_reg_minuend_7__7__aq)) # (!nx46976z5 & ((u_lab3_reg_minuend_6__7__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx46976z5))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_7__7__aq),
	.datac(u_lab3_reg_minuend_6__7__aq),
	.datad(nx46976z5),
	.cin(gnd),
	.combout(nx46976z4),
	.cout());
// synopsys translate_off
defparam ix46976z7099.lut_mask = 16'hDDA0;
defparam ix46976z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N22
fiftyfivenm_lcell_comb ix4651z7096(
// Equation(s):
// nx4651z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_0) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(yes_uart_u_uart_reg_RxRDYi_aq),
	.datac(u_lab3_not_minuend_1n1s2_0),
	.datad(u_lab3_reg_state_0__aq),
	.cin(gnd),
	.combout(nx4651z1),
	.cout());
// synopsys translate_off
defparam ix4651z7096.lut_mask = 16'hAAFB;
defparam ix4651z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N18
fiftyfivenm_lcell_comb ix4651z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_7_ = (yes_uart_u_uart_reg_Dout_7__aq & (((u_lab3_reg_subtrahend_0__7__aq & u_lab3_reg_state_2__aq)) # (!nx4651z1))) # (!yes_uart_u_uart_reg_Dout_7__aq & (u_lab3_reg_subtrahend_0__7__aq & ((u_lab3_reg_state_2__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(u_lab3_reg_subtrahend_0__7__aq),
	.datac(nx4651z1),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_7_),
	.cout());
// synopsys translate_off
defparam ix4651z7095.lut_mask = 16'hCE0A;
defparam ix4651z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N8
fiftyfivenm_lcell_comb ix4651z7097(
// Equation(s):
// nx4651z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_reg_state_1__aq) # (!u_lab3_not_minuend_1n1s2_0))))

	.dataa(u_lab3_not_minuend_1n1s2_0),
	.datab(nx11351z5),
	.datac(u_lab3_reg_state_1__aq),
	.datad(nx41843z3),
	.cin(gnd),
	.combout(nx4651z2),
	.cout());
// synopsys translate_off
defparam ix4651z7097.lut_mask = 16'h0013;
defparam ix4651z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y15_N19
dffeas u_lab3_reg_minuend_0__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_7_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx4651z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_0__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_0__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_0__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N12
fiftyfivenm_lcell_comb ix65052z7096(
// Equation(s):
// nx65052z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_1) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(yes_uart_u_uart_reg_RxRDYi_aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_state_0__aq),
	.datad(u_lab3_not_minuend_1n1s2_1),
	.cin(gnd),
	.combout(nx65052z1),
	.cout());
// synopsys translate_off
defparam ix65052z7096.lut_mask = 16'hCFCD;
defparam ix65052z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N4
fiftyfivenm_lcell_comb ix65052z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_39_ = (yes_uart_u_uart_reg_Dout_7__aq & (((u_lab3_reg_subtrahend_1__7__aq & u_lab3_reg_state_2__aq)) # (!nx65052z1))) # (!yes_uart_u_uart_reg_Dout_7__aq & (u_lab3_reg_subtrahend_1__7__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(u_lab3_reg_subtrahend_1__7__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx65052z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_39_),
	.cout());
// synopsys translate_off
defparam ix65052z7095.lut_mask = 16'hC0EA;
defparam ix65052z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N30
fiftyfivenm_lcell_comb ix65052z7097(
// Equation(s):
// nx65052z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_not_minuend_1n1s2_1) # (!u_lab3_reg_state_1__aq))))

	.dataa(nx11351z5),
	.datab(u_lab3_reg_state_1__aq),
	.datac(nx41843z3),
	.datad(u_lab3_not_minuend_1n1s2_1),
	.cin(gnd),
	.combout(nx65052z2),
	.cout());
// synopsys translate_off
defparam ix65052z7097.lut_mask = 16'h0105;
defparam ix65052z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y13_N5
dffeas u_lab3_reg_minuend_1__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_39_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx65052z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_1__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_1__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_1__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N24
fiftyfivenm_lcell_comb ix46976z7098(
// Equation(s):
// nx46976z3 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_1__7__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_0__7__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_minuend_0__7__aq),
	.datad(u_lab3_reg_minuend_1__7__aq),
	.cin(gnd),
	.combout(nx46976z3),
	.cout());
// synopsys translate_off
defparam ix46976z7098.lut_mask = 16'hDC98;
defparam ix46976z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N26
fiftyfivenm_lcell_comb ix59917z7096(
// Equation(s):
// nx59917z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_2) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_not_minuend_1n1s2_2),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_reg_state_0__aq),
	.cin(gnd),
	.combout(nx59917z1),
	.cout());
// synopsys translate_off
defparam ix59917z7096.lut_mask = 16'hAAEF;
defparam ix59917z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N8
fiftyfivenm_lcell_comb ix59917z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_71_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_2__7__aq) # ((!nx59917z1 & yes_uart_u_uart_reg_Dout_7__aq)))) # (!u_lab3_reg_state_2__aq & (!nx59917z1 & (yes_uart_u_uart_reg_Dout_7__aq)))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(nx59917z1),
	.datac(yes_uart_u_uart_reg_Dout_7__aq),
	.datad(u_lab3_reg_subtrahend_2__7__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_71_),
	.cout());
// synopsys translate_off
defparam ix59917z7095.lut_mask = 16'hBA30;
defparam ix59917z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N20
fiftyfivenm_lcell_comb ix59917z7097(
// Equation(s):
// nx59917z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_not_minuend_1n1s2_2) # (!u_lab3_reg_state_1__aq))))

	.dataa(nx11351z5),
	.datab(u_lab3_reg_state_1__aq),
	.datac(u_lab3_not_minuend_1n1s2_2),
	.datad(nx41843z3),
	.cin(gnd),
	.combout(nx59917z2),
	.cout());
// synopsys translate_off
defparam ix59917z7097.lut_mask = 16'h0015;
defparam ix59917z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N9
dffeas u_lab3_reg_minuend_2__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_71_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59917z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_2__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_2__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_2__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N4
fiftyfivenm_lcell_comb ix54782z7096(
// Equation(s):
// nx54782z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_3) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(yes_uart_u_uart_reg_RxRDYi_aq),
	.datab(u_lab3_reg_state_0__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(u_lab3_not_minuend_1n1s2_3),
	.cin(gnd),
	.combout(nx54782z1),
	.cout());
// synopsys translate_off
defparam ix54782z7096.lut_mask = 16'hF3F1;
defparam ix54782z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N30
fiftyfivenm_lcell_comb ix54782z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_103_ = (nx54782z1 & (u_lab3_reg_subtrahend_3__7__aq & (u_lab3_reg_state_2__aq))) # (!nx54782z1 & ((yes_uart_u_uart_reg_Dout_7__aq) # ((u_lab3_reg_subtrahend_3__7__aq & u_lab3_reg_state_2__aq))))

	.dataa(nx54782z1),
	.datab(u_lab3_reg_subtrahend_3__7__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(yes_uart_u_uart_reg_Dout_7__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_103_),
	.cout());
// synopsys translate_off
defparam ix54782z7095.lut_mask = 16'hD5C0;
defparam ix54782z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N8
fiftyfivenm_lcell_comb ix54782z7097(
// Equation(s):
// nx54782z2 = (!nx41843z3 & (!nx11351z5 & ((!u_lab3_not_minuend_1n1s2_3) # (!u_lab3_reg_state_1__aq))))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_not_minuend_1n1s2_3),
	.datac(nx41843z3),
	.datad(nx11351z5),
	.cin(gnd),
	.combout(nx54782z2),
	.cout());
// synopsys translate_off
defparam ix54782z7097.lut_mask = 16'h0007;
defparam ix54782z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y16_N31
dffeas u_lab3_reg_minuend_3__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_103_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx54782z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_3__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_3__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_3__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N10
fiftyfivenm_lcell_comb ix46976z7097(
// Equation(s):
// nx46976z2 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx46976z3 & ((u_lab3_reg_minuend_3__7__aq))) # (!nx46976z3 & (u_lab3_reg_minuend_2__7__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (nx46976z3))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(nx46976z3),
	.datac(u_lab3_reg_minuend_2__7__aq),
	.datad(u_lab3_reg_minuend_3__7__aq),
	.cin(gnd),
	.combout(nx46976z2),
	.cout());
// synopsys translate_off
defparam ix46976z7097.lut_mask = 16'hEC64;
defparam ix46976z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N8
fiftyfivenm_lcell_comb ix46976z7096(
// Equation(s):
// nx46976z1 = (u_lab3_modgen_counter_column_areg_q_2__aq & ((u_lab3_modgen_counter_column_areg_q_3__aq) # ((nx46976z4)))) # (!u_lab3_modgen_counter_column_areg_q_2__aq & (!u_lab3_modgen_counter_column_areg_q_3__aq & ((nx46976z2))))

	.dataa(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datac(nx46976z4),
	.datad(nx46976z2),
	.cin(gnd),
	.combout(nx46976z1),
	.cout());
// synopsys translate_off
defparam ix46976z7096.lut_mask = 16'hB9A8;
defparam ix46976z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N26
fiftyfivenm_lcell_comb ix32358z7096(
// Equation(s):
// nx32358z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_12) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(u_lab3_not_minuend_1n1s2_12),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_state_0__aq),
	.datad(yes_uart_u_uart_reg_RxRDYi_aq),
	.cin(gnd),
	.combout(nx32358z1),
	.cout());
// synopsys translate_off
defparam ix32358z7096.lut_mask = 16'hCECF;
defparam ix32358z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N20
fiftyfivenm_lcell_comb ix32358z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_391_ = (nx32358z1 & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_12__7__aq)))) # (!nx32358z1 & ((yes_uart_u_uart_reg_Dout_7__aq) # ((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_12__7__aq))))

	.dataa(nx32358z1),
	.datab(yes_uart_u_uart_reg_Dout_7__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(u_lab3_reg_subtrahend_12__7__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_391_),
	.cout());
// synopsys translate_off
defparam ix32358z7095.lut_mask = 16'hF444;
defparam ix32358z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N6
fiftyfivenm_lcell_comb ix32358z7097(
// Equation(s):
// nx32358z2 = (!nx41843z3 & (!nx11351z5 & ((!u_lab3_reg_state_1__aq) # (!u_lab3_not_minuend_1n1s2_12))))

	.dataa(u_lab3_not_minuend_1n1s2_12),
	.datab(u_lab3_reg_state_1__aq),
	.datac(nx41843z3),
	.datad(nx11351z5),
	.cin(gnd),
	.combout(nx32358z2),
	.cout());
// synopsys translate_off
defparam ix32358z7097.lut_mask = 16'h0007;
defparam ix32358z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y13_N21
dffeas u_lab3_reg_minuend_12__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_391_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx32358z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_12__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_12__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_12__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N22
fiftyfivenm_lcell_comb ix37493z7096(
// Equation(s):
// nx37493z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_13) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_state_0__aq),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(u_lab3_not_minuend_1n1s2_13),
	.cin(gnd),
	.combout(nx37493z1),
	.cout());
// synopsys translate_off
defparam ix37493z7096.lut_mask = 16'hBBAB;
defparam ix37493z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N16
fiftyfivenm_lcell_comb ix37493z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_423_ = (u_lab3_reg_subtrahend_13__7__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_7__aq & !nx37493z1)))) # (!u_lab3_reg_subtrahend_13__7__aq & (yes_uart_u_uart_reg_Dout_7__aq & (!nx37493z1)))

	.dataa(u_lab3_reg_subtrahend_13__7__aq),
	.datab(yes_uart_u_uart_reg_Dout_7__aq),
	.datac(nx37493z1),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_423_),
	.cout());
// synopsys translate_off
defparam ix37493z7095.lut_mask = 16'hAE0C;
defparam ix37493z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N26
fiftyfivenm_lcell_comb ix37493z7097(
// Equation(s):
// nx37493z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_reg_state_1__aq) # (!u_lab3_not_minuend_1n1s2_13))))

	.dataa(nx11351z5),
	.datab(u_lab3_not_minuend_1n1s2_13),
	.datac(u_lab3_reg_state_1__aq),
	.datad(nx41843z3),
	.cin(gnd),
	.combout(nx37493z2),
	.cout());
// synopsys translate_off
defparam ix37493z7097.lut_mask = 16'h0015;
defparam ix37493z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N17
dffeas u_lab3_reg_minuend_13__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_423_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx37493z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_13__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_13__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_13__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N8
fiftyfivenm_lcell_comb ix46976z7104(
// Equation(s):
// nx46976z9 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_13__7__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_12__7__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_12__7__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datad(u_lab3_reg_minuend_13__7__aq),
	.cin(gnd),
	.combout(nx46976z9),
	.cout());
// synopsys translate_off
defparam ix46976z7104.lut_mask = 16'hF4A4;
defparam ix46976z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N28
fiftyfivenm_lcell_comb ix47763z7096(
// Equation(s):
// nx47763z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((!nx63348z13) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_state_0__aq),
	.datac(yes_uart_u_uart_reg_RxRDYi_aq),
	.datad(nx63348z13),
	.cin(gnd),
	.combout(nx47763z1),
	.cout());
// synopsys translate_off
defparam ix47763z7096.lut_mask = 16'hABBB;
defparam ix47763z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N30
fiftyfivenm_lcell_comb ix47763z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_487_ = (yes_uart_u_uart_reg_Dout_7__aq & (((u_lab3_reg_subtrahend_15__7__aq & u_lab3_reg_state_2__aq)) # (!nx47763z1))) # (!yes_uart_u_uart_reg_Dout_7__aq & (u_lab3_reg_subtrahend_15__7__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(u_lab3_reg_subtrahend_15__7__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx47763z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_487_),
	.cout());
// synopsys translate_off
defparam ix47763z7095.lut_mask = 16'hC0EA;
defparam ix47763z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y16_N14
fiftyfivenm_lcell_comb ix47763z7097(
// Equation(s):
// nx47763z2 = (!nx11351z5 & (!nx41843z3 & ((nx63348z13) # (!u_lab3_reg_state_1__aq))))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(nx63348z13),
	.datac(nx11351z5),
	.datad(nx41843z3),
	.cin(gnd),
	.combout(nx47763z2),
	.cout());
// synopsys translate_off
defparam ix47763z7097.lut_mask = 16'h000D;
defparam ix47763z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N31
dffeas u_lab3_reg_minuend_15__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_487_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx47763z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_15__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_15__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_15__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N6
fiftyfivenm_lcell_comb ix42628z7096(
// Equation(s):
// nx42628z1 = (u_lab3_reg_state_2__aq) # ((!u_lab3_reg_state_0__aq & ((u_lab3_not_minuend_1n1s2_14) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

	.dataa(yes_uart_u_uart_reg_RxRDYi_aq),
	.datab(u_lab3_reg_state_0__aq),
	.datac(u_lab3_not_minuend_1n1s2_14),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(nx42628z1),
	.cout());
// synopsys translate_off
defparam ix42628z7096.lut_mask = 16'hFF31;
defparam ix42628z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N20
fiftyfivenm_lcell_comb ix42628z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_455_ = (u_lab3_reg_subtrahend_14__7__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_7__aq & !nx42628z1)))) # (!u_lab3_reg_subtrahend_14__7__aq & (((yes_uart_u_uart_reg_Dout_7__aq & !nx42628z1))))

	.dataa(u_lab3_reg_subtrahend_14__7__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_7__aq),
	.datad(nx42628z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_455_),
	.cout());
// synopsys translate_off
defparam ix42628z7095.lut_mask = 16'h88F8;
defparam ix42628z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N2
fiftyfivenm_lcell_comb ix42628z7097(
// Equation(s):
// nx42628z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_not_minuend_1n1s2_14) # (!u_lab3_reg_state_1__aq))))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(nx11351z5),
	.datac(nx41843z3),
	.datad(u_lab3_not_minuend_1n1s2_14),
	.cin(gnd),
	.combout(nx42628z2),
	.cout());
// synopsys translate_off
defparam ix42628z7097.lut_mask = 16'h0103;
defparam ix42628z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N21
dffeas u_lab3_reg_minuend_14__7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_455_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx42628z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_14__7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_14__7_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_14__7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N10
fiftyfivenm_lcell_comb ix46976z7103(
// Equation(s):
// nx46976z8 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx46976z9 & (u_lab3_reg_minuend_15__7__aq)) # (!nx46976z9 & ((u_lab3_reg_minuend_14__7__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (nx46976z9))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(nx46976z9),
	.datac(u_lab3_reg_minuend_15__7__aq),
	.datad(u_lab3_reg_minuend_14__7__aq),
	.cin(gnd),
	.combout(nx46976z8),
	.cout());
// synopsys translate_off
defparam ix46976z7103.lut_mask = 16'hE6C4;
defparam ix46976z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N20
fiftyfivenm_lcell_comb ix46976z7095(
// Equation(s):
// u_lab3_p_1n7s3f1[7] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx46976z1 & ((nx46976z8))) # (!nx46976z1 & (nx46976z6)))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx46976z1))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(nx46976z6),
	.datac(nx46976z1),
	.datad(nx46976z8),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f1[7]),
	.cout());
// synopsys translate_off
defparam ix46976z7095.lut_mask = 16'hF858;
defparam ix46976z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y12_N23
dffeas u_lab3_reg_addend_15__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16929z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_15__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_15__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_15__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N10
fiftyfivenm_lcell_comb ix12004z7095(
// Equation(s):
// nx12004z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_6__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_15__6__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_6__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_15__6__aq),
	.cin(gnd),
	.combout(nx12004z1),
	.cout());
// synopsys translate_off
defparam ix12004z7095.lut_mask = 16'hCFC0;
defparam ix12004z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N11
dffeas u_lab3_reg_subtrahend_15__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx12004z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx13001z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_15__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_15__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_15__6_.power_up = "low";
// synopsys translate_on

// Location: FF_X28_Y14_N23
dffeas u_lab3_reg_addend_14__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx22064z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_14__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_14__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_14__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N18
fiftyfivenm_lcell_comb ix17139z7095(
// Equation(s):
// nx17139z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_6__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_14__6__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_6__aq),
	.datad(u_lab3_reg_addend_14__6__aq),
	.cin(gnd),
	.combout(nx17139z1),
	.cout());
// synopsys translate_off
defparam ix17139z7095.lut_mask = 16'hF5A0;
defparam ix17139z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y14_N19
dffeas u_lab3_reg_subtrahend_14__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx17139z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx18136z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_14__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_14__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_14__6_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y12_N13
dffeas u_lab3_reg_addend_12__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx32334z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_12__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_12__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_12__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N28
fiftyfivenm_lcell_comb ix27409z7095(
// Equation(s):
// nx27409z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_6__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_12__6__aq))

	.dataa(u_lab3_reg_addend_12__6__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_6__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx27409z1),
	.cout());
// synopsys translate_off
defparam ix27409z7095.lut_mask = 16'hE2E2;
defparam ix27409z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y13_N29
dffeas u_lab3_reg_subtrahend_12__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx27409z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx28406z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_12__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_12__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_12__6_.power_up = "low";
// synopsys translate_on

// Location: FF_X28_Y14_N21
dffeas u_lab3_reg_addend_13__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx27199z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_13__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_13__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_13__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N16
fiftyfivenm_lcell_comb ix22274z7095(
// Equation(s):
// nx22274z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_6__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_13__6__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_6__aq),
	.datad(u_lab3_reg_addend_13__6__aq),
	.cin(gnd),
	.combout(nx22274z1),
	.cout());
// synopsys translate_off
defparam ix22274z7095.lut_mask = 16'hF5A0;
defparam ix22274z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y12_N17
dffeas u_lab3_reg_subtrahend_13__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx22274z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx23271z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_13__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_13__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_13__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N14
fiftyfivenm_lcell_comb ix63307z7114(
// Equation(s):
// nx63307z18 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_13__6__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_12__6__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_12__6__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datad(u_lab3_reg_subtrahend_13__6__aq),
	.cin(gnd),
	.combout(nx63307z18),
	.cout());
// synopsys translate_off
defparam ix63307z7114.lut_mask = 16'hF4A4;
defparam ix63307z7114.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N12
fiftyfivenm_lcell_comb ix63307z7113(
// Equation(s):
// nx63307z17 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx63307z18 & (u_lab3_reg_subtrahend_15__6__aq)) # (!nx63307z18 & ((u_lab3_reg_subtrahend_14__6__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx63307z18))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_15__6__aq),
	.datac(u_lab3_reg_subtrahend_14__6__aq),
	.datad(nx63307z18),
	.cin(gnd),
	.combout(nx63307z17),
	.cout());
// synopsys translate_off
defparam ix63307z7113.lut_mask = 16'hDDA0;
defparam ix63307z7113.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N23
dffeas u_lab3_reg_addend_7__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx11366z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_7__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_7__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_7__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N0
fiftyfivenm_lcell_comb ix39945z7095(
// Equation(s):
// nx39945z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_6__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_7__6__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_6__aq),
	.datad(u_lab3_reg_addend_7__6__aq),
	.cin(gnd),
	.combout(nx39945z1),
	.cout());
// synopsys translate_off
defparam ix39945z7095.lut_mask = 16'hF5A0;
defparam ix39945z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y19_N1
dffeas u_lab3_reg_subtrahend_7__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx39945z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx40942z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_7__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_7__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_7__6_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y14_N21
dffeas u_lab3_reg_addend_6__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16501z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_6__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_6__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_6__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N10
fiftyfivenm_lcell_comb ix45080z7095(
// Equation(s):
// nx45080z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_6__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_6__6__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_6__aq),
	.datab(gnd),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_6__6__aq),
	.cin(gnd),
	.combout(nx45080z1),
	.cout());
// synopsys translate_off
defparam ix45080z7095.lut_mask = 16'hAFA0;
defparam ix45080z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y12_N11
dffeas u_lab3_reg_subtrahend_6__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx45080z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx46077z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_6__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_6__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_6__6_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y16_N5
dffeas u_lab3_reg_addend_4__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx26771z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_4__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_4__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_4__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N2
fiftyfivenm_lcell_comb ix55350z7095(
// Equation(s):
// nx55350z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_6__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_4__6__aq))

	.dataa(u_lab3_reg_addend_4__6__aq),
	.datab(gnd),
	.datac(u_lab3_reg_state_1__aq),
	.datad(yes_uart_u_uart_reg_Dout_6__aq),
	.cin(gnd),
	.combout(nx55350z1),
	.cout());
// synopsys translate_off
defparam ix55350z7095.lut_mask = 16'hFA0A;
defparam ix55350z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N3
dffeas u_lab3_reg_subtrahend_4__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx55350z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx56347z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_4__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_4__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_4__6_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y17_N13
dffeas u_lab3_reg_addend_5__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx21636z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_5__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_5__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_5__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N16
fiftyfivenm_lcell_comb ix50215z7095(
// Equation(s):
// nx50215z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_6__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_5__6__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(yes_uart_u_uart_reg_Dout_6__aq),
	.datac(u_lab3_reg_addend_5__6__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx50215z1),
	.cout());
// synopsys translate_off
defparam ix50215z7095.lut_mask = 16'hD8D8;
defparam ix50215z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N17
dffeas u_lab3_reg_subtrahend_5__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx50215z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx51212z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_5__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_5__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_5__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N28
fiftyfivenm_lcell_comb ix63307z7110(
// Equation(s):
// nx63307z14 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_5__6__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_4__6__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_4__6__aq),
	.datac(u_lab3_reg_subtrahend_5__6__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx63307z14),
	.cout());
// synopsys translate_off
defparam ix63307z7110.lut_mask = 16'hFA44;
defparam ix63307z7110.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N22
fiftyfivenm_lcell_comb ix63307z7109(
// Equation(s):
// nx63307z13 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx63307z14 & (u_lab3_reg_subtrahend_7__6__aq)) # (!nx63307z14 & ((u_lab3_reg_subtrahend_6__6__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx63307z14))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_7__6__aq),
	.datac(u_lab3_reg_subtrahend_6__6__aq),
	.datad(nx63307z14),
	.cin(gnd),
	.combout(nx63307z13),
	.cout());
// synopsys translate_off
defparam ix63307z7109.lut_mask = 16'hDDA0;
defparam ix63307z7109.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y18_N21
dffeas u_lab3_reg_addend_2__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37041z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_2__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_2__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_2__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N18
fiftyfivenm_lcell_comb ix84z7095(
// Equation(s):
// nx84z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_6__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_2__6__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_6__aq),
	.datad(u_lab3_reg_addend_2__6__aq),
	.cin(gnd),
	.combout(nx84z1),
	.cout());
// synopsys translate_off
defparam ix84z7095.lut_mask = 16'hF5A0;
defparam ix84z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N19
dffeas u_lab3_reg_subtrahend_2__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx84z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx1081z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_2__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_2__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_2__6_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y17_N31
dffeas u_lab3_reg_addend_3__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx31906z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_3__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_3__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_3__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N2
fiftyfivenm_lcell_comb ix60485z7095(
// Equation(s):
// nx60485z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_6__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_3__6__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_6__aq),
	.datab(gnd),
	.datac(u_lab3_reg_addend_3__6__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx60485z1),
	.cout());
// synopsys translate_off
defparam ix60485z7095.lut_mask = 16'hAAF0;
defparam ix60485z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y16_N3
dffeas u_lab3_reg_subtrahend_3__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx60485z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx61482z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_3__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_3__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_3__6_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y17_N29
dffeas u_lab3_reg_addend_0__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx47311z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_0__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_0__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_0__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N2
fiftyfivenm_lcell_comb ix10354z7095(
// Equation(s):
// nx10354z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_6__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_0__6__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_6__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(u_lab3_reg_addend_0__6__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx10354z1),
	.cout());
// synopsys translate_off
defparam ix10354z7095.lut_mask = 16'hB8B8;
defparam ix10354z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y17_N3
dffeas u_lab3_reg_subtrahend_0__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx10354z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx11351z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_0__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_0__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_0__6_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N5
dffeas u_lab3_reg_addend_1__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42176z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_1__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_1__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_1__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N20
fiftyfivenm_lcell_comb ix5219z7095(
// Equation(s):
// nx5219z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_6__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_1__6__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_reg_addend_1__6__aq),
	.datac(yes_uart_u_uart_reg_Dout_6__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx5219z1),
	.cout());
// synopsys translate_off
defparam ix5219z7095.lut_mask = 16'hE4E4;
defparam ix5219z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y15_N21
dffeas u_lab3_reg_subtrahend_1__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx5219z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx6216z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_1__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_1__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_1__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N24
fiftyfivenm_lcell_comb ix63307z7108(
// Equation(s):
// nx63307z12 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_1__6__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_0__6__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_subtrahend_0__6__aq),
	.datad(u_lab3_reg_subtrahend_1__6__aq),
	.cin(gnd),
	.combout(nx63307z12),
	.cout());
// synopsys translate_off
defparam ix63307z7108.lut_mask = 16'hDC98;
defparam ix63307z7108.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N10
fiftyfivenm_lcell_comb ix63307z7107(
// Equation(s):
// nx63307z11 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx63307z12 & ((u_lab3_reg_subtrahend_3__6__aq))) # (!nx63307z12 & (u_lab3_reg_subtrahend_2__6__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx63307z12))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_2__6__aq),
	.datac(u_lab3_reg_subtrahend_3__6__aq),
	.datad(nx63307z12),
	.cin(gnd),
	.combout(nx63307z11),
	.cout());
// synopsys translate_off
defparam ix63307z7107.lut_mask = 16'hF588;
defparam ix63307z7107.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N8
fiftyfivenm_lcell_comb ix63307z7106(
// Equation(s):
// nx63307z10 = (u_lab3_modgen_counter_column_areg_q_2__aq & ((u_lab3_modgen_counter_column_areg_q_3__aq) # ((nx63307z13)))) # (!u_lab3_modgen_counter_column_areg_q_2__aq & (!u_lab3_modgen_counter_column_areg_q_3__aq & ((nx63307z11))))

	.dataa(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datac(nx63307z13),
	.datad(nx63307z11),
	.cin(gnd),
	.combout(nx63307z10),
	.cout());
// synopsys translate_off
defparam ix63307z7106.lut_mask = 16'hB9A8;
defparam ix63307z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y18_N23
dffeas u_lab3_reg_addend_10__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42604z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_10__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_10__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_10__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N10
fiftyfivenm_lcell_comb ix37679z7095(
// Equation(s):
// nx37679z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_6__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_10__6__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_6__aq),
	.datad(u_lab3_reg_addend_10__6__aq),
	.cin(gnd),
	.combout(nx37679z1),
	.cout());
// synopsys translate_off
defparam ix37679z7095.lut_mask = 16'hF5A0;
defparam ix37679z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N11
dffeas u_lab3_reg_subtrahend_10__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx37679z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx38676z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_10__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_10__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_10__6_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y17_N31
dffeas u_lab3_reg_addend_11__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37469z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_11__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_11__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_11__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N26
fiftyfivenm_lcell_comb ix32544z7095(
// Equation(s):
// nx32544z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_6__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_11__6__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_6__aq),
	.datad(u_lab3_reg_addend_11__6__aq),
	.cin(gnd),
	.combout(nx32544z1),
	.cout());
// synopsys translate_off
defparam ix32544z7095.lut_mask = 16'hF3C0;
defparam ix32544z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N27
dffeas u_lab3_reg_subtrahend_11__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx32544z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx33541z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_11__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_11__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_11__6_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y16_N31
dffeas u_lab3_reg_addend_9__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx64440z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_9__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_9__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_9__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y15_N24
fiftyfivenm_lcell_comb ix35861z7095(
// Equation(s):
// nx35861z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_6__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_9__6__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_6__aq),
	.datab(gnd),
	.datac(u_lab3_reg_addend_9__6__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx35861z1),
	.cout());
// synopsys translate_off
defparam ix35861z7095.lut_mask = 16'hAAF0;
defparam ix35861z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y15_N25
dffeas u_lab3_reg_subtrahend_9__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx35861z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx34864z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_9__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_9__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_9__6_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y14_N23
dffeas u_lab3_reg_addend_8__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_6__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx6231z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_8__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_8__6_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_8__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N16
fiftyfivenm_lcell_comb ix30726z7095(
// Equation(s):
// nx30726z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_6__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_8__6__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_6__aq),
	.datad(u_lab3_reg_addend_8__6__aq),
	.cin(gnd),
	.combout(nx30726z1),
	.cout());
// synopsys translate_off
defparam ix30726z7095.lut_mask = 16'hF5A0;
defparam ix30726z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y17_N17
dffeas u_lab3_reg_subtrahend_8__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx30726z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx29729z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_8__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_8__6_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_8__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N18
fiftyfivenm_lcell_comb ix63307z7112(
// Equation(s):
// nx63307z16 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_9__6__aq) # ((u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (((!u_lab3_modgen_counter_column_areg_q_1__aq & 
// u_lab3_reg_subtrahend_8__6__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_reg_subtrahend_9__6__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_reg_subtrahend_8__6__aq),
	.cin(gnd),
	.combout(nx63307z16),
	.cout());
// synopsys translate_off
defparam ix63307z7112.lut_mask = 16'hADA8;
defparam ix63307z7112.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N2
fiftyfivenm_lcell_comb ix63307z7111(
// Equation(s):
// nx63307z15 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx63307z16 & ((u_lab3_reg_subtrahend_11__6__aq))) # (!nx63307z16 & (u_lab3_reg_subtrahend_10__6__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx63307z16))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_10__6__aq),
	.datac(u_lab3_reg_subtrahend_11__6__aq),
	.datad(nx63307z16),
	.cin(gnd),
	.combout(nx63307z15),
	.cout());
// synopsys translate_off
defparam ix63307z7111.lut_mask = 16'hF588;
defparam ix63307z7111.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N6
fiftyfivenm_lcell_comb ix63307z7105(
// Equation(s):
// u_lab3_p_1n7s3f2[6] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx63307z10 & (nx63307z17)) # (!nx63307z10 & ((nx63307z15))))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx63307z10))))

	.dataa(nx63307z17),
	.datab(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datac(nx63307z10),
	.datad(nx63307z15),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f2[6]),
	.cout());
// synopsys translate_off
defparam ix63307z7105.lut_mask = 16'hBCB0;
defparam ix63307z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N8
fiftyfivenm_lcell_comb ix43625z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_454_ = (nx42628z1 & (((u_lab3_reg_subtrahend_14__6__aq & u_lab3_reg_state_2__aq)))) # (!nx42628z1 & ((yes_uart_u_uart_reg_Dout_6__aq) # ((u_lab3_reg_subtrahend_14__6__aq & u_lab3_reg_state_2__aq))))

	.dataa(nx42628z1),
	.datab(yes_uart_u_uart_reg_Dout_6__aq),
	.datac(u_lab3_reg_subtrahend_14__6__aq),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_454_),
	.cout());
// synopsys translate_off
defparam ix43625z7095.lut_mask = 16'hF444;
defparam ix43625z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N9
dffeas u_lab3_reg_minuend_14__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_454_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx42628z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_14__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_14__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_14__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N0
fiftyfivenm_lcell_comb ix33355z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_390_ = (yes_uart_u_uart_reg_Dout_6__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_12__6__aq)) # (!nx32358z1))) # (!yes_uart_u_uart_reg_Dout_6__aq & (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_12__6__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_6__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(nx32358z1),
	.datad(u_lab3_reg_subtrahend_12__6__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_390_),
	.cout());
// synopsys translate_off
defparam ix33355z7095.lut_mask = 16'hCE0A;
defparam ix33355z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y13_N1
dffeas u_lab3_reg_minuend_12__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_390_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx32358z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_12__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_12__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_12__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N14
fiftyfivenm_lcell_comb ix38490z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_422_ = (nx37493z1 & (u_lab3_reg_state_2__aq & (u_lab3_reg_subtrahend_13__6__aq))) # (!nx37493z1 & ((yes_uart_u_uart_reg_Dout_6__aq) # ((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_13__6__aq))))

	.dataa(nx37493z1),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_subtrahend_13__6__aq),
	.datad(yes_uart_u_uart_reg_Dout_6__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_422_),
	.cout());
// synopsys translate_off
defparam ix38490z7095.lut_mask = 16'hD5C0;
defparam ix38490z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N15
dffeas u_lab3_reg_minuend_13__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_422_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx37493z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_13__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_13__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_13__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N22
fiftyfivenm_lcell_comb ix63307z7104(
// Equation(s):
// nx63307z9 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_modgen_counter_column_areg_q_1__aq) # ((u_lab3_reg_minuend_13__6__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (!u_lab3_modgen_counter_column_areg_q_1__aq & 
// (u_lab3_reg_minuend_12__6__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_minuend_12__6__aq),
	.datad(u_lab3_reg_minuend_13__6__aq),
	.cin(gnd),
	.combout(nx63307z9),
	.cout());
// synopsys translate_off
defparam ix63307z7104.lut_mask = 16'hBA98;
defparam ix63307z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N16
fiftyfivenm_lcell_comb ix48760z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_486_ = (nx47763z1 & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_15__6__aq)))) # (!nx47763z1 & ((yes_uart_u_uart_reg_Dout_6__aq) # ((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_15__6__aq))))

	.dataa(nx47763z1),
	.datab(yes_uart_u_uart_reg_Dout_6__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(u_lab3_reg_subtrahend_15__6__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_486_),
	.cout());
// synopsys translate_off
defparam ix48760z7095.lut_mask = 16'hF444;
defparam ix48760z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N17
dffeas u_lab3_reg_minuend_15__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_486_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx47763z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_15__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_15__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_15__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N8
fiftyfivenm_lcell_comb ix63307z7103(
// Equation(s):
// nx63307z8 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx63307z9 & ((u_lab3_reg_minuend_15__6__aq))) # (!nx63307z9 & (u_lab3_reg_minuend_14__6__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx63307z9))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_14__6__aq),
	.datac(nx63307z9),
	.datad(u_lab3_reg_minuend_15__6__aq),
	.cin(gnd),
	.combout(nx63307z8),
	.cout());
// synopsys translate_off
defparam ix63307z7103.lut_mask = 16'hF858;
defparam ix63307z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N8
fiftyfivenm_lcell_comb ix23085z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_326_ = (u_lab3_reg_subtrahend_10__6__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_6__aq & !nx22088z1)))) # (!u_lab3_reg_subtrahend_10__6__aq & (yes_uart_u_uart_reg_Dout_6__aq & ((!nx22088z1))))

	.dataa(u_lab3_reg_subtrahend_10__6__aq),
	.datab(yes_uart_u_uart_reg_Dout_6__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx22088z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_326_),
	.cout());
// synopsys translate_off
defparam ix23085z7095.lut_mask = 16'hA0EC;
defparam ix23085z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N9
dffeas u_lab3_reg_minuend_10__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_326_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx22088z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_10__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_10__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_10__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N18
fiftyfivenm_lcell_comb ix28220z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_358_ = (yes_uart_u_uart_reg_Dout_6__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_11__6__aq)) # (!nx27223z1))) # (!yes_uart_u_uart_reg_Dout_6__aq & (u_lab3_reg_state_2__aq & (u_lab3_reg_subtrahend_11__6__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_6__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_subtrahend_11__6__aq),
	.datad(nx27223z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_358_),
	.cout());
// synopsys translate_off
defparam ix28220z7095.lut_mask = 16'hC0EA;
defparam ix28220z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N19
dffeas u_lab3_reg_minuend_11__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_358_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx27223z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_11__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_11__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_11__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N2
fiftyfivenm_lcell_comb ix37426z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_262_ = (yes_uart_u_uart_reg_Dout_6__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_8__6__aq)) # (!nx36429z1))) # (!yes_uart_u_uart_reg_Dout_6__aq & (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_8__6__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_6__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(nx36429z1),
	.datad(u_lab3_reg_subtrahend_8__6__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_262_),
	.cout());
// synopsys translate_off
defparam ix37426z7095.lut_mask = 16'hCE0A;
defparam ix37426z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y15_N3
dffeas u_lab3_reg_minuend_8__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_262_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36429z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_8__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_8__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_8__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N4
fiftyfivenm_lcell_comb ix42561z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_294_ = (yes_uart_u_uart_reg_Dout_6__aq & (((u_lab3_reg_subtrahend_9__6__aq & u_lab3_reg_state_2__aq)) # (!nx41564z1))) # (!yes_uart_u_uart_reg_Dout_6__aq & (u_lab3_reg_subtrahend_9__6__aq & ((u_lab3_reg_state_2__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_6__aq),
	.datab(u_lab3_reg_subtrahend_9__6__aq),
	.datac(nx41564z1),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_294_),
	.cout());
// synopsys translate_off
defparam ix42561z7095.lut_mask = 16'hCE0A;
defparam ix42561z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y15_N5
dffeas u_lab3_reg_minuend_9__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_294_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41564z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_9__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_9__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_9__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N26
fiftyfivenm_lcell_comb ix63307z7102(
// Equation(s):
// nx63307z7 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_modgen_counter_column_areg_q_1__aq) # ((u_lab3_reg_minuend_9__6__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (!u_lab3_modgen_counter_column_areg_q_1__aq & 
// (u_lab3_reg_minuend_8__6__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_minuend_8__6__aq),
	.datad(u_lab3_reg_minuend_9__6__aq),
	.cin(gnd),
	.combout(nx63307z7),
	.cout());
// synopsys translate_off
defparam ix63307z7102.lut_mask = 16'hBA98;
defparam ix63307z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N4
fiftyfivenm_lcell_comb ix63307z7101(
// Equation(s):
// nx63307z6 = (nx63307z7 & (((u_lab3_reg_minuend_11__6__aq) # (!u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!nx63307z7 & (u_lab3_reg_minuend_10__6__aq & ((u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_reg_minuend_10__6__aq),
	.datab(u_lab3_reg_minuend_11__6__aq),
	.datac(nx63307z7),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx63307z6),
	.cout());
// synopsys translate_off
defparam ix63307z7101.lut_mask = 16'hCAF0;
defparam ix63307z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N10
fiftyfivenm_lcell_comb ix22021z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_166_ = (u_lab3_reg_subtrahend_5__6__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_6__aq & !nx21024z1)))) # (!u_lab3_reg_subtrahend_5__6__aq & (((yes_uart_u_uart_reg_Dout_6__aq & !nx21024z1))))

	.dataa(u_lab3_reg_subtrahend_5__6__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_6__aq),
	.datad(nx21024z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_166_),
	.cout());
// synopsys translate_off
defparam ix22021z7095.lut_mask = 16'h88F8;
defparam ix22021z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N11
dffeas u_lab3_reg_minuend_5__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_166_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx21024z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_5__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_5__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_5__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N24
fiftyfivenm_lcell_comb ix16886z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_134_ = (u_lab3_reg_subtrahend_4__6__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_6__aq & !nx15889z1)))) # (!u_lab3_reg_subtrahend_4__6__aq & (((yes_uart_u_uart_reg_Dout_6__aq & !nx15889z1))))

	.dataa(u_lab3_reg_subtrahend_4__6__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_6__aq),
	.datad(nx15889z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_134_),
	.cout());
// synopsys translate_off
defparam ix16886z7095.lut_mask = 16'h88F8;
defparam ix16886z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N25
dffeas u_lab3_reg_minuend_4__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_134_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx15889z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_4__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_4__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_4__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N12
fiftyfivenm_lcell_comb ix63307z7100(
// Equation(s):
// nx63307z5 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_5__6__aq) # ((u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_minuend_4__6__aq & 
// !u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_reg_minuend_5__6__aq),
	.datab(u_lab3_reg_minuend_4__6__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx63307z5),
	.cout());
// synopsys translate_off
defparam ix63307z7100.lut_mask = 16'hF0AC;
defparam ix63307z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N30
fiftyfivenm_lcell_comb ix32291z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_230_ = (yes_uart_u_uart_reg_Dout_6__aq & (((u_lab3_reg_subtrahend_7__6__aq & u_lab3_reg_state_2__aq)) # (!nx31294z1))) # (!yes_uart_u_uart_reg_Dout_6__aq & (u_lab3_reg_subtrahend_7__6__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_6__aq),
	.datab(u_lab3_reg_subtrahend_7__6__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx31294z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_230_),
	.cout());
// synopsys translate_off
defparam ix32291z7095.lut_mask = 16'hC0EA;
defparam ix32291z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y19_N31
dffeas u_lab3_reg_minuend_7__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_230_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx31294z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_7__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_7__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_7__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N26
fiftyfivenm_lcell_comb ix27156z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_198_ = (u_lab3_reg_subtrahend_6__6__aq & ((u_lab3_reg_state_2__aq) # ((!nx26159z1 & yes_uart_u_uart_reg_Dout_6__aq)))) # (!u_lab3_reg_subtrahend_6__6__aq & (!nx26159z1 & (yes_uart_u_uart_reg_Dout_6__aq)))

	.dataa(u_lab3_reg_subtrahend_6__6__aq),
	.datab(nx26159z1),
	.datac(yes_uart_u_uart_reg_Dout_6__aq),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_198_),
	.cout());
// synopsys translate_off
defparam ix27156z7095.lut_mask = 16'hBA30;
defparam ix27156z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y12_N27
dffeas u_lab3_reg_minuend_6__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_198_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26159z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_6__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_6__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_6__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N6
fiftyfivenm_lcell_comb ix63307z7099(
// Equation(s):
// nx63307z4 = (nx63307z5 & ((u_lab3_reg_minuend_7__6__aq) # ((!u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!nx63307z5 & (((u_lab3_reg_minuend_6__6__aq & u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(nx63307z5),
	.datab(u_lab3_reg_minuend_7__6__aq),
	.datac(u_lab3_reg_minuend_6__6__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx63307z4),
	.cout());
// synopsys translate_off
defparam ix63307z7099.lut_mask = 16'hD8AA;
defparam ix63307z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N18
fiftyfivenm_lcell_comb ix53785z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_102_ = (nx54782z1 & (u_lab3_reg_subtrahend_3__6__aq & (u_lab3_reg_state_2__aq))) # (!nx54782z1 & ((yes_uart_u_uart_reg_Dout_6__aq) # ((u_lab3_reg_subtrahend_3__6__aq & u_lab3_reg_state_2__aq))))

	.dataa(nx54782z1),
	.datab(u_lab3_reg_subtrahend_3__6__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(yes_uart_u_uart_reg_Dout_6__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_102_),
	.cout());
// synopsys translate_off
defparam ix53785z7095.lut_mask = 16'hD5C0;
defparam ix53785z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y16_N19
dffeas u_lab3_reg_minuend_3__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_102_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx54782z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_3__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_3__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_3__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N26
fiftyfivenm_lcell_comb ix58920z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_70_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_2__6__aq) # ((yes_uart_u_uart_reg_Dout_6__aq & !nx59917z1)))) # (!u_lab3_reg_state_2__aq & (((yes_uart_u_uart_reg_Dout_6__aq & !nx59917z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_subtrahend_2__6__aq),
	.datac(yes_uart_u_uart_reg_Dout_6__aq),
	.datad(nx59917z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_70_),
	.cout());
// synopsys translate_off
defparam ix58920z7095.lut_mask = 16'h88F8;
defparam ix58920z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N27
dffeas u_lab3_reg_minuend_2__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_70_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59917z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_2__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_2__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_2__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N0
fiftyfivenm_lcell_comb ix3654z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_6_ = (nx4651z1 & (u_lab3_reg_subtrahend_0__6__aq & (u_lab3_reg_state_2__aq))) # (!nx4651z1 & ((yes_uart_u_uart_reg_Dout_6__aq) # ((u_lab3_reg_subtrahend_0__6__aq & u_lab3_reg_state_2__aq))))

	.dataa(nx4651z1),
	.datab(u_lab3_reg_subtrahend_0__6__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(yes_uart_u_uart_reg_Dout_6__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_6_),
	.cout());
// synopsys translate_off
defparam ix3654z7095.lut_mask = 16'hD5C0;
defparam ix3654z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y13_N1
dffeas u_lab3_reg_minuend_0__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_6_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx4651z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_0__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_0__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_0__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N26
fiftyfivenm_lcell_comb ix64055z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_38_ = (u_lab3_reg_subtrahend_1__6__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_6__aq & !nx65052z1)))) # (!u_lab3_reg_subtrahend_1__6__aq & (yes_uart_u_uart_reg_Dout_6__aq & ((!nx65052z1))))

	.dataa(u_lab3_reg_subtrahend_1__6__aq),
	.datab(yes_uart_u_uart_reg_Dout_6__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx65052z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_38_),
	.cout());
// synopsys translate_off
defparam ix64055z7095.lut_mask = 16'hA0EC;
defparam ix64055z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y13_N27
dffeas u_lab3_reg_minuend_1__6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_38_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx65052z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_1__6__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_1__6_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_1__6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N0
fiftyfivenm_lcell_comb ix63307z7098(
// Equation(s):
// nx63307z3 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_1__6__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_0__6__aq))))

	.dataa(u_lab3_reg_minuend_0__6__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_minuend_1__6__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx63307z3),
	.cout());
// synopsys translate_off
defparam ix63307z7098.lut_mask = 16'hFC22;
defparam ix63307z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N2
fiftyfivenm_lcell_comb ix63307z7097(
// Equation(s):
// nx63307z2 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx63307z3 & (u_lab3_reg_minuend_3__6__aq)) # (!nx63307z3 & ((u_lab3_reg_minuend_2__6__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx63307z3))))

	.dataa(u_lab3_reg_minuend_3__6__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_minuend_2__6__aq),
	.datad(nx63307z3),
	.cin(gnd),
	.combout(nx63307z2),
	.cout());
// synopsys translate_off
defparam ix63307z7097.lut_mask = 16'hBBC0;
defparam ix63307z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N16
fiftyfivenm_lcell_comb ix63307z7096(
// Equation(s):
// nx63307z1 = (u_lab3_modgen_counter_column_areg_q_2__aq & ((nx63307z4) # ((u_lab3_modgen_counter_column_areg_q_3__aq)))) # (!u_lab3_modgen_counter_column_areg_q_2__aq & (((!u_lab3_modgen_counter_column_areg_q_3__aq & nx63307z2))))

	.dataa(nx63307z4),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datad(nx63307z2),
	.cin(gnd),
	.combout(nx63307z1),
	.cout());
// synopsys translate_off
defparam ix63307z7096.lut_mask = 16'hCBC8;
defparam ix63307z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N18
fiftyfivenm_lcell_comb ix63307z7095(
// Equation(s):
// u_lab3_p_1n7s3f1[6] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx63307z1 & (nx63307z8)) # (!nx63307z1 & ((nx63307z6))))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx63307z1))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(nx63307z8),
	.datac(nx63307z6),
	.datad(nx63307z1),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f1[6]),
	.cout());
// synopsys translate_off
defparam ix63307z7095.lut_mask = 16'hDDA0;
defparam ix63307z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y13_N22
fiftyfivenm_lcell_comb yes_uart_u_uart_reg_Rx_Reg_5__afeeder(
// Equation(s):
// yes_uart_u_uart_reg_Rx_Reg_5__afeeder_combout = yes_uart_u_uart_reg_Rx_Reg_6__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_Rx_Reg_6__aq),
	.cin(gnd),
	.combout(yes_uart_u_uart_reg_Rx_Reg_5__afeeder_combout),
	.cout());
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_Reg_5__afeeder.lut_mask = 16'hFF00;
defparam yes_uart_u_uart_reg_Rx_Reg_5__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y13_N23
dffeas yes_uart_u_uart_reg_Rx_Reg_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(yes_uart_u_uart_reg_Rx_Reg_5__afeeder_combout),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2098z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Rx_Reg_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_Reg_5_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Rx_Reg_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X18_Y13_N23
dffeas yes_uart_u_uart_reg_Dout_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Rx_Reg_5__aq),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx46463z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Dout_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Dout_5_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Dout_5_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y17_N11
dffeas u_lab3_reg_addend_11__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37469z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_11__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_11__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_11__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N4
fiftyfivenm_lcell_comb ix31547z7095(
// Equation(s):
// nx31547z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_5__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_11__5__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_5__aq),
	.datad(u_lab3_reg_addend_11__5__aq),
	.cin(gnd),
	.combout(nx31547z1),
	.cout());
// synopsys translate_off
defparam ix31547z7095.lut_mask = 16'hF3C0;
defparam ix31547z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N5
dffeas u_lab3_reg_subtrahend_11__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx31547z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx33541z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_11__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_11__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_11__5_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y18_N3
dffeas u_lab3_reg_addend_10__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42604z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_10__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_10__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_10__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N30
fiftyfivenm_lcell_comb ix36682z7095(
// Equation(s):
// nx36682z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_5__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_10__5__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_5__aq),
	.datac(u_lab3_reg_addend_10__5__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx36682z1),
	.cout());
// synopsys translate_off
defparam ix36682z7095.lut_mask = 16'hCCF0;
defparam ix36682z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y16_N31
dffeas u_lab3_reg_subtrahend_10__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx36682z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx38676z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_10__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_10__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_10__5_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y14_N3
dffeas u_lab3_reg_addend_8__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx6231z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_8__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_8__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_8__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N10
fiftyfivenm_lcell_comb ix31723z7095(
// Equation(s):
// nx31723z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_5__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_8__5__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(yes_uart_u_uart_reg_Dout_5__aq),
	.datac(gnd),
	.datad(u_lab3_reg_addend_8__5__aq),
	.cin(gnd),
	.combout(nx31723z1),
	.cout());
// synopsys translate_off
defparam ix31723z7095.lut_mask = 16'hDD88;
defparam ix31723z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y17_N11
dffeas u_lab3_reg_subtrahend_8__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx31723z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx29729z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_8__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_8__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_8__5_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y16_N27
dffeas u_lab3_reg_addend_9__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx64440z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_9__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_9__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_9__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N4
fiftyfivenm_lcell_comb ix36858z7095(
// Equation(s):
// nx36858z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_5__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_9__5__aq))

	.dataa(u_lab3_reg_addend_9__5__aq),
	.datab(gnd),
	.datac(u_lab3_reg_state_1__aq),
	.datad(yes_uart_u_uart_reg_Dout_5__aq),
	.cin(gnd),
	.combout(nx36858z1),
	.cout());
// synopsys translate_off
defparam ix36858z7095.lut_mask = 16'hFA0A;
defparam ix36858z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y16_N5
dffeas u_lab3_reg_subtrahend_9__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx36858z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx34864z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_9__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_9__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_9__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N20
fiftyfivenm_lcell_comb ix33377z7112(
// Equation(s):
// nx33377z16 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_9__5__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_8__5__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_subtrahend_8__5__aq),
	.datad(u_lab3_reg_subtrahend_9__5__aq),
	.cin(gnd),
	.combout(nx33377z16),
	.cout());
// synopsys translate_off
defparam ix33377z7112.lut_mask = 16'hDC98;
defparam ix33377z7112.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N16
fiftyfivenm_lcell_comb ix33377z7111(
// Equation(s):
// nx33377z15 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx33377z16 & (u_lab3_reg_subtrahend_11__5__aq)) # (!nx33377z16 & ((u_lab3_reg_subtrahend_10__5__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx33377z16))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_11__5__aq),
	.datac(u_lab3_reg_subtrahend_10__5__aq),
	.datad(nx33377z16),
	.cin(gnd),
	.combout(nx33377z15),
	.cout());
// synopsys translate_off
defparam ix33377z7111.lut_mask = 16'hDDA0;
defparam ix33377z7111.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N11
dffeas u_lab3_reg_addend_7__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx11366z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_7__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_7__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_7__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N10
fiftyfivenm_lcell_comb ix38948z7095(
// Equation(s):
// nx38948z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_5__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_7__5__aq))

	.dataa(u_lab3_reg_addend_7__5__aq),
	.datab(yes_uart_u_uart_reg_Dout_5__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx38948z1),
	.cout());
// synopsys translate_off
defparam ix38948z7095.lut_mask = 16'hCACA;
defparam ix38948z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y19_N11
dffeas u_lab3_reg_subtrahend_7__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx38948z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx40942z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_7__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_7__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_7__5_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y14_N25
dffeas u_lab3_reg_addend_6__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16501z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_6__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_6__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_6__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N12
fiftyfivenm_lcell_comb ix44083z7095(
// Equation(s):
// nx44083z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_5__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_6__5__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_5__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_6__5__aq),
	.cin(gnd),
	.combout(nx44083z1),
	.cout());
// synopsys translate_off
defparam ix44083z7095.lut_mask = 16'hCFC0;
defparam ix44083z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y12_N13
dffeas u_lab3_reg_subtrahend_6__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx44083z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx46077z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_6__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_6__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_6__5_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y16_N25
dffeas u_lab3_reg_addend_4__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx26771z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_4__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_4__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_4__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N20
fiftyfivenm_lcell_comb ix54353z7095(
// Equation(s):
// nx54353z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_5__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_4__5__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_reg_addend_4__5__aq),
	.datac(yes_uart_u_uart_reg_Dout_5__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx54353z1),
	.cout());
// synopsys translate_off
defparam ix54353z7095.lut_mask = 16'hE4E4;
defparam ix54353z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N21
dffeas u_lab3_reg_subtrahend_4__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx54353z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx56347z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_4__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_4__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_4__5_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y17_N1
dffeas u_lab3_reg_addend_5__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx21636z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_5__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_5__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_5__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N26
fiftyfivenm_lcell_comb ix49218z7095(
// Equation(s):
// nx49218z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_5__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_5__5__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(yes_uart_u_uart_reg_Dout_5__aq),
	.datac(u_lab3_reg_addend_5__5__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx49218z1),
	.cout());
// synopsys translate_off
defparam ix49218z7095.lut_mask = 16'hD8D8;
defparam ix49218z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N27
dffeas u_lab3_reg_subtrahend_5__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx49218z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx51212z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_5__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_5__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_5__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N6
fiftyfivenm_lcell_comb ix33377z7110(
// Equation(s):
// nx33377z14 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_5__5__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_4__5__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_subtrahend_4__5__aq),
	.datad(u_lab3_reg_subtrahend_5__5__aq),
	.cin(gnd),
	.combout(nx33377z14),
	.cout());
// synopsys translate_off
defparam ix33377z7110.lut_mask = 16'hDC98;
defparam ix33377z7110.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N8
fiftyfivenm_lcell_comb ix33377z7109(
// Equation(s):
// nx33377z13 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx33377z14 & (u_lab3_reg_subtrahend_7__5__aq)) # (!nx33377z14 & ((u_lab3_reg_subtrahend_6__5__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx33377z14))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_7__5__aq),
	.datac(u_lab3_reg_subtrahend_6__5__aq),
	.datad(nx33377z14),
	.cin(gnd),
	.combout(nx33377z13),
	.cout());
// synopsys translate_off
defparam ix33377z7109.lut_mask = 16'hDDA0;
defparam ix33377z7109.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y17_N27
dffeas u_lab3_reg_addend_3__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx31906z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_3__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_3__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_3__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N28
fiftyfivenm_lcell_comb ix59488z7095(
// Equation(s):
// nx59488z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_5__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_3__5__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_reg_addend_3__5__aq),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_Dout_5__aq),
	.cin(gnd),
	.combout(nx59488z1),
	.cout());
// synopsys translate_off
defparam ix59488z7095.lut_mask = 16'hEE44;
defparam ix59488z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y16_N29
dffeas u_lab3_reg_subtrahend_3__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx59488z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx61482z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_3__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_3__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_3__5_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y18_N9
dffeas u_lab3_reg_addend_2__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37041z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_2__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_2__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_2__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N28
fiftyfivenm_lcell_comb ix64623z7095(
// Equation(s):
// nx64623z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_5__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_2__5__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_5__aq),
	.datab(gnd),
	.datac(u_lab3_reg_addend_2__5__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx64623z1),
	.cout());
// synopsys translate_off
defparam ix64623z7095.lut_mask = 16'hAAF0;
defparam ix64623z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N29
dffeas u_lab3_reg_subtrahend_2__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx64623z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx1081z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_2__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_2__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_2__5_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y17_N1
dffeas u_lab3_reg_addend_0__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx47311z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_0__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_0__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_0__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N28
fiftyfivenm_lcell_comb ix9357z7095(
// Equation(s):
// nx9357z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_5__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_0__5__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_5__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_0__5__aq),
	.cin(gnd),
	.combout(nx9357z1),
	.cout());
// synopsys translate_off
defparam ix9357z7095.lut_mask = 16'hCFC0;
defparam ix9357z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y17_N29
dffeas u_lab3_reg_subtrahend_0__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx9357z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx11351z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_0__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_0__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_0__5_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N17
dffeas u_lab3_reg_addend_1__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42176z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_1__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_1__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_1__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N22
fiftyfivenm_lcell_comb ix4222z7095(
// Equation(s):
// nx4222z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_5__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_1__5__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_5__aq),
	.datac(u_lab3_reg_addend_1__5__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx4222z1),
	.cout());
// synopsys translate_off
defparam ix4222z7095.lut_mask = 16'hCCF0;
defparam ix4222z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y15_N23
dffeas u_lab3_reg_subtrahend_1__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx4222z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx6216z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_1__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_1__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_1__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N10
fiftyfivenm_lcell_comb ix33377z7108(
// Equation(s):
// nx33377z12 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_1__5__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_0__5__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_subtrahend_0__5__aq),
	.datad(u_lab3_reg_subtrahend_1__5__aq),
	.cin(gnd),
	.combout(nx33377z12),
	.cout());
// synopsys translate_off
defparam ix33377z7108.lut_mask = 16'hDC98;
defparam ix33377z7108.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N28
fiftyfivenm_lcell_comb ix33377z7107(
// Equation(s):
// nx33377z11 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx33377z12 & (u_lab3_reg_subtrahend_3__5__aq)) # (!nx33377z12 & ((u_lab3_reg_subtrahend_2__5__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx33377z12))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_3__5__aq),
	.datac(u_lab3_reg_subtrahend_2__5__aq),
	.datad(nx33377z12),
	.cin(gnd),
	.combout(nx33377z11),
	.cout());
// synopsys translate_off
defparam ix33377z7107.lut_mask = 16'hDDA0;
defparam ix33377z7107.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N26
fiftyfivenm_lcell_comb ix33377z7106(
// Equation(s):
// nx33377z10 = (u_lab3_modgen_counter_column_areg_q_3__aq & (u_lab3_modgen_counter_column_areg_q_2__aq)) # (!u_lab3_modgen_counter_column_areg_q_3__aq & ((u_lab3_modgen_counter_column_areg_q_2__aq & (nx33377z13)) # 
// (!u_lab3_modgen_counter_column_areg_q_2__aq & ((nx33377z11)))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(nx33377z13),
	.datad(nx33377z11),
	.cin(gnd),
	.combout(nx33377z10),
	.cout());
// synopsys translate_off
defparam ix33377z7106.lut_mask = 16'hD9C8;
defparam ix33377z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y12_N3
dffeas u_lab3_reg_addend_15__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16929z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_15__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_15__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_15__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y12_N0
fiftyfivenm_lcell_comb ix11007z7095(
// Equation(s):
// nx11007z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_5__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_15__5__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_5__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_15__5__aq),
	.cin(gnd),
	.combout(nx11007z1),
	.cout());
// synopsys translate_off
defparam ix11007z7095.lut_mask = 16'hCFC0;
defparam ix11007z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y12_N1
dffeas u_lab3_reg_subtrahend_15__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx11007z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx13001z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_15__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_15__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_15__5_.power_up = "low";
// synopsys translate_on

// Location: FF_X28_Y14_N11
dffeas u_lab3_reg_addend_14__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx22064z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_14__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_14__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_14__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N28
fiftyfivenm_lcell_comb ix16142z7095(
// Equation(s):
// nx16142z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_5__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_14__5__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_reg_addend_14__5__aq),
	.datac(yes_uart_u_uart_reg_Dout_5__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx16142z1),
	.cout());
// synopsys translate_off
defparam ix16142z7095.lut_mask = 16'hE4E4;
defparam ix16142z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y14_N29
dffeas u_lab3_reg_subtrahend_14__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx16142z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx18136z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_14__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_14__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_14__5_.power_up = "low";
// synopsys translate_on

// Location: FF_X28_Y14_N25
dffeas u_lab3_reg_addend_13__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx27199z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_13__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_13__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_13__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N10
fiftyfivenm_lcell_comb ix21277z7095(
// Equation(s):
// nx21277z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_5__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_13__5__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_5__aq),
	.datab(gnd),
	.datac(u_lab3_reg_addend_13__5__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx21277z1),
	.cout());
// synopsys translate_off
defparam ix21277z7095.lut_mask = 16'hAAF0;
defparam ix21277z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y13_N11
dffeas u_lab3_reg_subtrahend_13__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx21277z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx23271z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_13__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_13__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_13__5_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y12_N1
dffeas u_lab3_reg_addend_12__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_5__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx32334z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_12__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_12__5_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_12__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N8
fiftyfivenm_lcell_comb ix26412z7095(
// Equation(s):
// nx26412z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_5__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_12__5__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_5__aq),
	.datad(u_lab3_reg_addend_12__5__aq),
	.cin(gnd),
	.combout(nx26412z1),
	.cout());
// synopsys translate_off
defparam ix26412z7095.lut_mask = 16'hF5A0;
defparam ix26412z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y13_N9
dffeas u_lab3_reg_subtrahend_12__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx26412z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx28406z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_12__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_12__5_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_12__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N28
fiftyfivenm_lcell_comb ix33377z7114(
// Equation(s):
// nx33377z18 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_13__5__aq)) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_12__5__aq)))))

	.dataa(u_lab3_reg_subtrahend_13__5__aq),
	.datab(u_lab3_reg_subtrahend_12__5__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx33377z18),
	.cout());
// synopsys translate_off
defparam ix33377z7114.lut_mask = 16'hFA0C;
defparam ix33377z7114.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N30
fiftyfivenm_lcell_comb ix33377z7113(
// Equation(s):
// nx33377z17 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx33377z18 & (u_lab3_reg_subtrahend_15__5__aq)) # (!nx33377z18 & ((u_lab3_reg_subtrahend_14__5__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx33377z18))))

	.dataa(u_lab3_reg_subtrahend_15__5__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_subtrahend_14__5__aq),
	.datad(nx33377z18),
	.cin(gnd),
	.combout(nx33377z17),
	.cout());
// synopsys translate_off
defparam ix33377z7113.lut_mask = 16'hBBC0;
defparam ix33377z7113.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N18
fiftyfivenm_lcell_comb ix33377z7105(
// Equation(s):
// u_lab3_p_1n7s3f2[5] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx33377z10 & ((nx33377z17))) # (!nx33377z10 & (nx33377z15)))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx33377z10))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(nx33377z15),
	.datac(nx33377z10),
	.datad(nx33377z17),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f2[5]),
	.cout());
// synopsys translate_off
defparam ix33377z7105.lut_mask = 16'hF858;
defparam ix33377z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N12
fiftyfivenm_lcell_comb ix44622z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_453_ = (nx42628z1 & (u_lab3_reg_subtrahend_14__5__aq & ((u_lab3_reg_state_2__aq)))) # (!nx42628z1 & ((yes_uart_u_uart_reg_Dout_5__aq) # ((u_lab3_reg_subtrahend_14__5__aq & u_lab3_reg_state_2__aq))))

	.dataa(nx42628z1),
	.datab(u_lab3_reg_subtrahend_14__5__aq),
	.datac(yes_uart_u_uart_reg_Dout_5__aq),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_453_),
	.cout());
// synopsys translate_off
defparam ix44622z7095.lut_mask = 16'hDC50;
defparam ix44622z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N13
dffeas u_lab3_reg_minuend_14__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_453_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx42628z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_14__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_14__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_14__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N2
fiftyfivenm_lcell_comb ix49757z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_485_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_15__5__aq) # ((yes_uart_u_uart_reg_Dout_5__aq & !nx47763z1)))) # (!u_lab3_reg_state_2__aq & (yes_uart_u_uart_reg_Dout_5__aq & ((!nx47763z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(yes_uart_u_uart_reg_Dout_5__aq),
	.datac(u_lab3_reg_subtrahend_15__5__aq),
	.datad(nx47763z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_485_),
	.cout());
// synopsys translate_off
defparam ix49757z7095.lut_mask = 16'hA0EC;
defparam ix49757z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N3
dffeas u_lab3_reg_minuend_15__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_485_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx47763z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_15__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_15__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_15__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N2
fiftyfivenm_lcell_comb ix34352z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_389_ = (nx32358z1 & (u_lab3_reg_subtrahend_12__5__aq & (u_lab3_reg_state_2__aq))) # (!nx32358z1 & ((yes_uart_u_uart_reg_Dout_5__aq) # ((u_lab3_reg_subtrahend_12__5__aq & u_lab3_reg_state_2__aq))))

	.dataa(nx32358z1),
	.datab(u_lab3_reg_subtrahend_12__5__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(yes_uart_u_uart_reg_Dout_5__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_389_),
	.cout());
// synopsys translate_off
defparam ix34352z7095.lut_mask = 16'hD5C0;
defparam ix34352z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y13_N3
dffeas u_lab3_reg_minuend_12__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_389_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx32358z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_12__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_12__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_12__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N2
fiftyfivenm_lcell_comb ix39487z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_421_ = (nx37493z1 & (u_lab3_reg_subtrahend_13__5__aq & ((u_lab3_reg_state_2__aq)))) # (!nx37493z1 & ((yes_uart_u_uart_reg_Dout_5__aq) # ((u_lab3_reg_subtrahend_13__5__aq & u_lab3_reg_state_2__aq))))

	.dataa(nx37493z1),
	.datab(u_lab3_reg_subtrahend_13__5__aq),
	.datac(yes_uart_u_uart_reg_Dout_5__aq),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_421_),
	.cout());
// synopsys translate_off
defparam ix39487z7095.lut_mask = 16'hDC50;
defparam ix39487z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N3
dffeas u_lab3_reg_minuend_13__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_421_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx37493z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_13__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_13__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_13__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N12
fiftyfivenm_lcell_comb ix33377z7104(
// Equation(s):
// nx33377z9 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_13__5__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_12__5__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_12__5__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datad(u_lab3_reg_minuend_13__5__aq),
	.cin(gnd),
	.combout(nx33377z9),
	.cout());
// synopsys translate_off
defparam ix33377z7104.lut_mask = 16'hF4A4;
defparam ix33377z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N14
fiftyfivenm_lcell_comb ix33377z7103(
// Equation(s):
// nx33377z8 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx33377z9 & ((u_lab3_reg_minuend_15__5__aq))) # (!nx33377z9 & (u_lab3_reg_minuend_14__5__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx33377z9))))

	.dataa(u_lab3_reg_minuend_14__5__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_minuend_15__5__aq),
	.datad(nx33377z9),
	.cin(gnd),
	.combout(nx33377z8),
	.cout());
// synopsys translate_off
defparam ix33377z7103.lut_mask = 16'hF388;
defparam ix33377z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N20
fiftyfivenm_lcell_comb ix29217z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_357_ = (yes_uart_u_uart_reg_Dout_5__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_11__5__aq)) # (!nx27223z1))) # (!yes_uart_u_uart_reg_Dout_5__aq & (u_lab3_reg_state_2__aq & (u_lab3_reg_subtrahend_11__5__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_5__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_subtrahend_11__5__aq),
	.datad(nx27223z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_357_),
	.cout());
// synopsys translate_off
defparam ix29217z7095.lut_mask = 16'hC0EA;
defparam ix29217z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N21
dffeas u_lab3_reg_minuend_11__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_357_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx27223z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_11__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_11__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_11__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N2
fiftyfivenm_lcell_comb ix24082z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_325_ = (yes_uart_u_uart_reg_Dout_5__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_10__5__aq)) # (!nx22088z1))) # (!yes_uart_u_uart_reg_Dout_5__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_10__5__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_5__aq),
	.datab(nx22088z1),
	.datac(u_lab3_reg_state_2__aq),
	.datad(u_lab3_reg_subtrahend_10__5__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_325_),
	.cout());
// synopsys translate_off
defparam ix24082z7095.lut_mask = 16'hF222;
defparam ix24082z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N3
dffeas u_lab3_reg_minuend_10__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_325_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx22088z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_10__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_10__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_10__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N30
fiftyfivenm_lcell_comb ix38423z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_261_ = (yes_uart_u_uart_reg_Dout_5__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_8__5__aq)) # (!nx36429z1))) # (!yes_uart_u_uart_reg_Dout_5__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_8__5__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_5__aq),
	.datab(nx36429z1),
	.datac(u_lab3_reg_state_2__aq),
	.datad(u_lab3_reg_subtrahend_8__5__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_261_),
	.cout());
// synopsys translate_off
defparam ix38423z7095.lut_mask = 16'hF222;
defparam ix38423z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y15_N31
dffeas u_lab3_reg_minuend_8__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_261_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36429z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_8__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_8__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_8__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N28
fiftyfivenm_lcell_comb ix43558z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_293_ = (nx41564z1 & (u_lab3_reg_subtrahend_9__5__aq & (u_lab3_reg_state_2__aq))) # (!nx41564z1 & ((yes_uart_u_uart_reg_Dout_5__aq) # ((u_lab3_reg_subtrahend_9__5__aq & u_lab3_reg_state_2__aq))))

	.dataa(nx41564z1),
	.datab(u_lab3_reg_subtrahend_9__5__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(yes_uart_u_uart_reg_Dout_5__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_293_),
	.cout());
// synopsys translate_off
defparam ix43558z7095.lut_mask = 16'hD5C0;
defparam ix43558z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y15_N29
dffeas u_lab3_reg_minuend_9__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_lab3_minuend_1n10ss1_293_),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx41564z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_9__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_9__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_9__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N28
fiftyfivenm_lcell_comb ix33377z7102(
// Equation(s):
// nx33377z7 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_9__5__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_8__5__aq))))

	.dataa(u_lab3_reg_minuend_8__5__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_minuend_9__5__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx33377z7),
	.cout());
// synopsys translate_off
defparam ix33377z7102.lut_mask = 16'hFC22;
defparam ix33377z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N26
fiftyfivenm_lcell_comb ix33377z7101(
// Equation(s):
// nx33377z6 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx33377z7 & (u_lab3_reg_minuend_11__5__aq)) # (!nx33377z7 & ((u_lab3_reg_minuend_10__5__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx33377z7))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_11__5__aq),
	.datac(u_lab3_reg_minuend_10__5__aq),
	.datad(nx33377z7),
	.cin(gnd),
	.combout(nx33377z6),
	.cout());
// synopsys translate_off
defparam ix33377z7101.lut_mask = 16'hDDA0;
defparam ix33377z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N8
fiftyfivenm_lcell_comb ix33288z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_229_ = (u_lab3_reg_subtrahend_7__5__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_5__aq & !nx31294z1)))) # (!u_lab3_reg_subtrahend_7__5__aq & (yes_uart_u_uart_reg_Dout_5__aq & ((!nx31294z1))))

	.dataa(u_lab3_reg_subtrahend_7__5__aq),
	.datab(yes_uart_u_uart_reg_Dout_5__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx31294z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_229_),
	.cout());
// synopsys translate_off
defparam ix33288z7095.lut_mask = 16'hA0EC;
defparam ix33288z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y19_N9
dffeas u_lab3_reg_minuend_7__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_229_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx31294z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_7__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_7__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_7__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N28
fiftyfivenm_lcell_comb ix28153z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_197_ = (u_lab3_reg_subtrahend_6__5__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_5__aq & !nx26159z1)))) # (!u_lab3_reg_subtrahend_6__5__aq & (yes_uart_u_uart_reg_Dout_5__aq & (!nx26159z1)))

	.dataa(u_lab3_reg_subtrahend_6__5__aq),
	.datab(yes_uart_u_uart_reg_Dout_5__aq),
	.datac(nx26159z1),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_197_),
	.cout());
// synopsys translate_off
defparam ix28153z7095.lut_mask = 16'hAE0C;
defparam ix28153z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y12_N29
dffeas u_lab3_reg_minuend_6__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_197_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26159z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_6__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_6__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_6__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N10
fiftyfivenm_lcell_comb ix17883z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_133_ = (nx15889z1 & (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_4__5__aq)))) # (!nx15889z1 & ((yes_uart_u_uart_reg_Dout_5__aq) # ((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_4__5__aq))))

	.dataa(nx15889z1),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_5__aq),
	.datad(u_lab3_reg_subtrahend_4__5__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_133_),
	.cout());
// synopsys translate_off
defparam ix17883z7095.lut_mask = 16'hDC50;
defparam ix17883z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N11
dffeas u_lab3_reg_minuend_4__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_133_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx15889z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_4__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_4__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_4__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N28
fiftyfivenm_lcell_comb ix23018z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_165_ = (nx21024z1 & (u_lab3_reg_state_2__aq & (u_lab3_reg_subtrahend_5__5__aq))) # (!nx21024z1 & ((yes_uart_u_uart_reg_Dout_5__aq) # ((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_5__5__aq))))

	.dataa(nx21024z1),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_subtrahend_5__5__aq),
	.datad(yes_uart_u_uart_reg_Dout_5__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_165_),
	.cout());
// synopsys translate_off
defparam ix23018z7095.lut_mask = 16'hD5C0;
defparam ix23018z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y16_N5
dffeas u_lab3_reg_minuend_5__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_lab3_minuend_1n10ss1_165_),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx21024z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_5__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_5__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_5__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N4
fiftyfivenm_lcell_comb ix33377z7100(
// Equation(s):
// nx33377z5 = (u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_minuend_5__5__aq) # (u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_4__5__aq & 
// ((!u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_reg_minuend_4__5__aq),
	.datac(u_lab3_reg_minuend_5__5__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx33377z5),
	.cout());
// synopsys translate_off
defparam ix33377z7100.lut_mask = 16'hAAE4;
defparam ix33377z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N30
fiftyfivenm_lcell_comb ix33377z7099(
// Equation(s):
// nx33377z4 = (nx33377z5 & ((u_lab3_reg_minuend_7__5__aq) # ((!u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!nx33377z5 & (((u_lab3_reg_minuend_6__5__aq & u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_reg_minuend_7__5__aq),
	.datab(u_lab3_reg_minuend_6__5__aq),
	.datac(nx33377z5),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx33377z4),
	.cout());
// synopsys translate_off
defparam ix33377z7099.lut_mask = 16'hACF0;
defparam ix33377z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N4
fiftyfivenm_lcell_comb ix57923z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_69_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_2__5__aq) # ((yes_uart_u_uart_reg_Dout_5__aq & !nx59917z1)))) # (!u_lab3_reg_state_2__aq & (((yes_uart_u_uart_reg_Dout_5__aq & !nx59917z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_subtrahend_2__5__aq),
	.datac(yes_uart_u_uart_reg_Dout_5__aq),
	.datad(nx59917z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_69_),
	.cout());
// synopsys translate_off
defparam ix57923z7095.lut_mask = 16'h88F8;
defparam ix57923z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N5
dffeas u_lab3_reg_minuend_2__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_69_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59917z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_2__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_2__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_2__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N20
fiftyfivenm_lcell_comb ix52788z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_101_ = (u_lab3_reg_subtrahend_3__5__aq & ((u_lab3_reg_state_2__aq) # ((!nx54782z1 & yes_uart_u_uart_reg_Dout_5__aq)))) # (!u_lab3_reg_subtrahend_3__5__aq & (!nx54782z1 & ((yes_uart_u_uart_reg_Dout_5__aq))))

	.dataa(u_lab3_reg_subtrahend_3__5__aq),
	.datab(nx54782z1),
	.datac(u_lab3_reg_state_2__aq),
	.datad(yes_uart_u_uart_reg_Dout_5__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_101_),
	.cout());
// synopsys translate_off
defparam ix52788z7095.lut_mask = 16'hB3A0;
defparam ix52788z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y16_N21
dffeas u_lab3_reg_minuend_3__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_101_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx54782z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_3__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_3__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_3__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N12
fiftyfivenm_lcell_comb ix2657z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_5_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_0__5__aq) # ((yes_uart_u_uart_reg_Dout_5__aq & !nx4651z1)))) # (!u_lab3_reg_state_2__aq & (((yes_uart_u_uart_reg_Dout_5__aq & !nx4651z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_subtrahend_0__5__aq),
	.datac(yes_uart_u_uart_reg_Dout_5__aq),
	.datad(nx4651z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_5_),
	.cout());
// synopsys translate_off
defparam ix2657z7095.lut_mask = 16'h88F8;
defparam ix2657z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y17_N13
dffeas u_lab3_reg_minuend_0__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_5_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx4651z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_0__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_0__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_0__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N10
fiftyfivenm_lcell_comb ix63058z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_37_ = (nx65052z1 & (u_lab3_reg_state_2__aq & (u_lab3_reg_subtrahend_1__5__aq))) # (!nx65052z1 & ((yes_uart_u_uart_reg_Dout_5__aq) # ((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_1__5__aq))))

	.dataa(nx65052z1),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_subtrahend_1__5__aq),
	.datad(yes_uart_u_uart_reg_Dout_5__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_37_),
	.cout());
// synopsys translate_off
defparam ix63058z7095.lut_mask = 16'hD5C0;
defparam ix63058z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y16_N25
dffeas u_lab3_reg_minuend_1__5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_lab3_minuend_1n10ss1_37_),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx65052z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_1__5__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_1__5_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_1__5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N24
fiftyfivenm_lcell_comb ix33377z7098(
// Equation(s):
// nx33377z3 = (u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_minuend_1__5__aq) # (u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_0__5__aq & 
// ((!u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_reg_minuend_0__5__aq),
	.datac(u_lab3_reg_minuend_1__5__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx33377z3),
	.cout());
// synopsys translate_off
defparam ix33377z7098.lut_mask = 16'hAAE4;
defparam ix33377z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N10
fiftyfivenm_lcell_comb ix33377z7097(
// Equation(s):
// nx33377z2 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx33377z3 & ((u_lab3_reg_minuend_3__5__aq))) # (!nx33377z3 & (u_lab3_reg_minuend_2__5__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx33377z3))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_2__5__aq),
	.datac(u_lab3_reg_minuend_3__5__aq),
	.datad(nx33377z3),
	.cin(gnd),
	.combout(nx33377z2),
	.cout());
// synopsys translate_off
defparam ix33377z7097.lut_mask = 16'hF588;
defparam ix33377z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N16
fiftyfivenm_lcell_comb ix33377z7096(
// Equation(s):
// nx33377z1 = (u_lab3_modgen_counter_column_areg_q_3__aq & (u_lab3_modgen_counter_column_areg_q_2__aq)) # (!u_lab3_modgen_counter_column_areg_q_3__aq & ((u_lab3_modgen_counter_column_areg_q_2__aq & (nx33377z4)) # (!u_lab3_modgen_counter_column_areg_q_2__aq 
// & ((nx33377z2)))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(nx33377z4),
	.datad(nx33377z2),
	.cin(gnd),
	.combout(nx33377z1),
	.cout());
// synopsys translate_off
defparam ix33377z7096.lut_mask = 16'hD9C8;
defparam ix33377z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N0
fiftyfivenm_lcell_comb ix33377z7095(
// Equation(s):
// u_lab3_p_1n7s3f1[5] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx33377z1 & (nx33377z8)) # (!nx33377z1 & ((nx33377z6))))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx33377z1))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(nx33377z8),
	.datac(nx33377z6),
	.datad(nx33377z1),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f1[5]),
	.cout());
// synopsys translate_off
defparam ix33377z7095.lut_mask = 16'hDDA0;
defparam ix33377z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y13_N21
dffeas yes_uart_u_uart_reg_Rx_Reg_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Rx_Reg_5__aq),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx2098z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Rx_Reg_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_Reg_4_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Rx_Reg_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X18_Y13_N21
dffeas yes_uart_u_uart_reg_Dout_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Rx_Reg_4__aq),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx46463z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Dout_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Dout_4_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Dout_4_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y17_N15
dffeas u_lab3_reg_addend_11__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37469z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_11__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_11__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_11__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N6
fiftyfivenm_lcell_comb ix30550z7095(
// Equation(s):
// nx30550z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_4__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_11__4__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_4__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_11__4__aq),
	.cin(gnd),
	.combout(nx30550z1),
	.cout());
// synopsys translate_off
defparam ix30550z7095.lut_mask = 16'hCFC0;
defparam ix30550z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N7
dffeas u_lab3_reg_subtrahend_11__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx30550z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx33541z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_11__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_11__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_11__4_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y14_N7
dffeas u_lab3_reg_addend_8__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx6231z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_8__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_8__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_8__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N4
fiftyfivenm_lcell_comb ix32720z7095(
// Equation(s):
// nx32720z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_4__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_8__4__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_4__aq),
	.datab(gnd),
	.datac(u_lab3_reg_addend_8__4__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx32720z1),
	.cout());
// synopsys translate_off
defparam ix32720z7095.lut_mask = 16'hAAF0;
defparam ix32720z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y17_N5
dffeas u_lab3_reg_subtrahend_8__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx32720z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx29729z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_8__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_8__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_8__4_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y16_N23
dffeas u_lab3_reg_addend_9__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx64440z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_9__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_9__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_9__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N14
fiftyfivenm_lcell_comb ix37855z7095(
// Equation(s):
// nx37855z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_4__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_9__4__aq))

	.dataa(u_lab3_reg_addend_9__4__aq),
	.datab(gnd),
	.datac(u_lab3_reg_state_1__aq),
	.datad(yes_uart_u_uart_reg_Dout_4__aq),
	.cin(gnd),
	.combout(nx37855z1),
	.cout());
// synopsys translate_off
defparam ix37855z7095.lut_mask = 16'hFA0A;
defparam ix37855z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y16_N15
dffeas u_lab3_reg_subtrahend_9__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx37855z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx34864z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_9__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_9__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_9__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N14
fiftyfivenm_lcell_comb ix64525z7112(
// Equation(s):
// nx64525z16 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_9__4__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_8__4__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_subtrahend_8__4__aq),
	.datad(u_lab3_reg_subtrahend_9__4__aq),
	.cin(gnd),
	.combout(nx64525z16),
	.cout());
// synopsys translate_off
defparam ix64525z7112.lut_mask = 16'hDC98;
defparam ix64525z7112.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y18_N31
dffeas u_lab3_reg_addend_10__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42604z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_10__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_10__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_10__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N20
fiftyfivenm_lcell_comb ix35685z7095(
// Equation(s):
// nx35685z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_4__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_10__4__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_4__aq),
	.datab(u_lab3_reg_addend_10__4__aq),
	.datac(gnd),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx35685z1),
	.cout());
// synopsys translate_off
defparam ix35685z7095.lut_mask = 16'hAACC;
defparam ix35685z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N21
dffeas u_lab3_reg_subtrahend_10__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx35685z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx38676z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_10__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_10__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_10__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N16
fiftyfivenm_lcell_comb ix64525z7111(
// Equation(s):
// nx64525z15 = (nx64525z16 & ((u_lab3_reg_subtrahend_11__4__aq) # ((!u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!nx64525z16 & (((u_lab3_reg_subtrahend_10__4__aq & u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_reg_subtrahend_11__4__aq),
	.datab(nx64525z16),
	.datac(u_lab3_reg_subtrahend_10__4__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx64525z15),
	.cout());
// synopsys translate_off
defparam ix64525z7111.lut_mask = 16'hB8CC;
defparam ix64525z7111.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y12_N7
dffeas u_lab3_reg_addend_15__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16929z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_15__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_15__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_15__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N12
fiftyfivenm_lcell_comb ix10010z7095(
// Equation(s):
// nx10010z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_4__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_15__4__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_4__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(u_lab3_reg_addend_15__4__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx10010z1),
	.cout());
// synopsys translate_off
defparam ix10010z7095.lut_mask = 16'hB8B8;
defparam ix10010z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N13
dffeas u_lab3_reg_subtrahend_15__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx10010z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx13001z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_15__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_15__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_15__4_.power_up = "low";
// synopsys translate_on

// Location: FF_X28_Y14_N31
dffeas u_lab3_reg_addend_14__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx22064z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_14__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_14__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_14__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N22
fiftyfivenm_lcell_comb ix15145z7095(
// Equation(s):
// nx15145z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_4__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_14__4__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_4__aq),
	.datad(u_lab3_reg_addend_14__4__aq),
	.cin(gnd),
	.combout(nx15145z1),
	.cout());
// synopsys translate_off
defparam ix15145z7095.lut_mask = 16'hF5A0;
defparam ix15145z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y14_N23
dffeas u_lab3_reg_subtrahend_14__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx15145z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx18136z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_14__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_14__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_14__4_.power_up = "low";
// synopsys translate_on

// Location: FF_X28_Y14_N5
dffeas u_lab3_reg_addend_13__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx27199z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_13__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_13__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_13__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N2
fiftyfivenm_lcell_comb ix20280z7095(
// Equation(s):
// nx20280z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_4__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_13__4__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(yes_uart_u_uart_reg_Dout_4__aq),
	.datac(gnd),
	.datad(u_lab3_reg_addend_13__4__aq),
	.cin(gnd),
	.combout(nx20280z1),
	.cout());
// synopsys translate_off
defparam ix20280z7095.lut_mask = 16'hDD88;
defparam ix20280z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y13_N3
dffeas u_lab3_reg_subtrahend_13__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx20280z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx23271z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_13__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_13__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_13__4_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y12_N5
dffeas u_lab3_reg_addend_12__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx32334z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_12__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_12__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_12__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N24
fiftyfivenm_lcell_comb ix25415z7095(
// Equation(s):
// nx25415z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_4__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_12__4__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(yes_uart_u_uart_reg_Dout_4__aq),
	.datac(gnd),
	.datad(u_lab3_reg_addend_12__4__aq),
	.cin(gnd),
	.combout(nx25415z1),
	.cout());
// synopsys translate_off
defparam ix25415z7095.lut_mask = 16'hDD88;
defparam ix25415z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y13_N25
dffeas u_lab3_reg_subtrahend_12__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx25415z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx28406z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_12__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_12__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_12__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N10
fiftyfivenm_lcell_comb ix64525z7114(
// Equation(s):
// nx64525z18 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_13__4__aq)) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_12__4__aq)))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_subtrahend_13__4__aq),
	.datad(u_lab3_reg_subtrahend_12__4__aq),
	.cin(gnd),
	.combout(nx64525z18),
	.cout());
// synopsys translate_off
defparam ix64525z7114.lut_mask = 16'hD9C8;
defparam ix64525z7114.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N4
fiftyfivenm_lcell_comb ix64525z7113(
// Equation(s):
// nx64525z17 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx64525z18 & (u_lab3_reg_subtrahend_15__4__aq)) # (!nx64525z18 & ((u_lab3_reg_subtrahend_14__4__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx64525z18))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_15__4__aq),
	.datac(u_lab3_reg_subtrahend_14__4__aq),
	.datad(nx64525z18),
	.cin(gnd),
	.combout(nx64525z17),
	.cout());
// synopsys translate_off
defparam ix64525z7113.lut_mask = 16'hDDA0;
defparam ix64525z7113.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y14_N29
dffeas u_lab3_reg_addend_6__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16501z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_6__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_6__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_6__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N22
fiftyfivenm_lcell_comb ix43086z7095(
// Equation(s):
// nx43086z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_4__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_6__4__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_4__aq),
	.datad(u_lab3_reg_addend_6__4__aq),
	.cin(gnd),
	.combout(nx43086z1),
	.cout());
// synopsys translate_off
defparam ix43086z7095.lut_mask = 16'hF3C0;
defparam ix43086z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y12_N23
dffeas u_lab3_reg_subtrahend_6__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx43086z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx46077z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_6__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_6__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_6__4_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N7
dffeas u_lab3_reg_addend_7__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx11366z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_7__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_7__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_7__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N20
fiftyfivenm_lcell_comb ix37951z7095(
// Equation(s):
// nx37951z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_4__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_7__4__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_4__aq),
	.datab(gnd),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_7__4__aq),
	.cin(gnd),
	.combout(nx37951z1),
	.cout());
// synopsys translate_off
defparam ix37951z7095.lut_mask = 16'hAFA0;
defparam ix37951z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y19_N21
dffeas u_lab3_reg_subtrahend_7__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx37951z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx40942z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_7__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_7__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_7__4_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y17_N29
dffeas u_lab3_reg_addend_5__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx21636z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_5__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_5__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_5__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N12
fiftyfivenm_lcell_comb ix48221z7095(
// Equation(s):
// nx48221z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_4__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_5__4__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_4__aq),
	.datad(u_lab3_reg_addend_5__4__aq),
	.cin(gnd),
	.combout(nx48221z1),
	.cout());
// synopsys translate_off
defparam ix48221z7095.lut_mask = 16'hF5A0;
defparam ix48221z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N13
dffeas u_lab3_reg_subtrahend_5__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx48221z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx51212z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_5__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_5__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_5__4_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y16_N29
dffeas u_lab3_reg_addend_4__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx26771z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_4__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_4__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_4__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N30
fiftyfivenm_lcell_comb ix53356z7095(
// Equation(s):
// nx53356z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_4__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_4__4__aq))

	.dataa(u_lab3_reg_addend_4__4__aq),
	.datab(gnd),
	.datac(u_lab3_reg_state_1__aq),
	.datad(yes_uart_u_uart_reg_Dout_4__aq),
	.cin(gnd),
	.combout(nx53356z1),
	.cout());
// synopsys translate_off
defparam ix53356z7095.lut_mask = 16'hFA0A;
defparam ix53356z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y13_N31
dffeas u_lab3_reg_subtrahend_4__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx53356z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx56347z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_4__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_4__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_4__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N0
fiftyfivenm_lcell_comb ix64525z7110(
// Equation(s):
// nx64525z14 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_5__4__aq)) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_4__4__aq)))))

	.dataa(u_lab3_reg_subtrahend_5__4__aq),
	.datab(u_lab3_reg_subtrahend_4__4__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx64525z14),
	.cout());
// synopsys translate_off
defparam ix64525z7110.lut_mask = 16'hFA0C;
defparam ix64525z7110.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N26
fiftyfivenm_lcell_comb ix64525z7109(
// Equation(s):
// nx64525z13 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx64525z14 & ((u_lab3_reg_subtrahend_7__4__aq))) # (!nx64525z14 & (u_lab3_reg_subtrahend_6__4__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx64525z14))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_6__4__aq),
	.datac(u_lab3_reg_subtrahend_7__4__aq),
	.datad(nx64525z14),
	.cin(gnd),
	.combout(nx64525z13),
	.cout());
// synopsys translate_off
defparam ix64525z7109.lut_mask = 16'hF588;
defparam ix64525z7109.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y18_N29
dffeas u_lab3_reg_addend_2__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37041z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_2__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_2__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_2__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N6
fiftyfivenm_lcell_comb ix63626z7095(
// Equation(s):
// nx63626z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_4__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_2__4__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_4__aq),
	.datad(u_lab3_reg_addend_2__4__aq),
	.cin(gnd),
	.combout(nx63626z1),
	.cout());
// synopsys translate_off
defparam ix63626z7095.lut_mask = 16'hF5A0;
defparam ix63626z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N7
dffeas u_lab3_reg_subtrahend_2__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx63626z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx1081z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_2__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_2__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_2__4_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y17_N23
dffeas u_lab3_reg_addend_3__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx31906z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_3__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_3__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_3__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N14
fiftyfivenm_lcell_comb ix58491z7095(
// Equation(s):
// nx58491z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_4__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_3__4__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_4__aq),
	.datac(u_lab3_reg_addend_3__4__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx58491z1),
	.cout());
// synopsys translate_off
defparam ix58491z7095.lut_mask = 16'hCCF0;
defparam ix58491z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y16_N15
dffeas u_lab3_reg_subtrahend_3__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx58491z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx61482z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_3__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_3__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_3__4_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y17_N5
dffeas u_lab3_reg_addend_0__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx47311z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_0__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_0__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_0__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N24
fiftyfivenm_lcell_comb ix8360z7095(
// Equation(s):
// nx8360z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_4__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_0__4__aq))

	.dataa(gnd),
	.datab(u_lab3_reg_addend_0__4__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(yes_uart_u_uart_reg_Dout_4__aq),
	.cin(gnd),
	.combout(nx8360z1),
	.cout());
// synopsys translate_off
defparam ix8360z7095.lut_mask = 16'hFC0C;
defparam ix8360z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y13_N25
dffeas u_lab3_reg_subtrahend_0__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx8360z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx11351z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_0__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_0__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_0__4_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N13
dffeas u_lab3_reg_addend_1__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_4__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42176z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_1__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_1__4_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_1__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N24
fiftyfivenm_lcell_comb ix3225z7095(
// Equation(s):
// nx3225z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_4__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_1__4__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(yes_uart_u_uart_reg_Dout_4__aq),
	.datac(gnd),
	.datad(u_lab3_reg_addend_1__4__aq),
	.cin(gnd),
	.combout(nx3225z1),
	.cout());
// synopsys translate_off
defparam ix3225z7095.lut_mask = 16'hDD88;
defparam ix3225z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y15_N25
dffeas u_lab3_reg_subtrahend_1__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx3225z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx6216z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_1__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_1__4_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_1__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N2
fiftyfivenm_lcell_comb ix64525z7108(
// Equation(s):
// nx64525z12 = (u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_modgen_counter_column_areg_q_1__aq) # (u_lab3_reg_subtrahend_1__4__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_0__4__aq & 
// (!u_lab3_modgen_counter_column_areg_q_1__aq)))

	.dataa(u_lab3_reg_subtrahend_0__4__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_reg_subtrahend_1__4__aq),
	.cin(gnd),
	.combout(nx64525z12),
	.cout());
// synopsys translate_off
defparam ix64525z7108.lut_mask = 16'hCEC2;
defparam ix64525z7108.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N20
fiftyfivenm_lcell_comb ix64525z7107(
// Equation(s):
// nx64525z11 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx64525z12 & ((u_lab3_reg_subtrahend_3__4__aq))) # (!nx64525z12 & (u_lab3_reg_subtrahend_2__4__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx64525z12))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_2__4__aq),
	.datac(u_lab3_reg_subtrahend_3__4__aq),
	.datad(nx64525z12),
	.cin(gnd),
	.combout(nx64525z11),
	.cout());
// synopsys translate_off
defparam ix64525z7107.lut_mask = 16'hF588;
defparam ix64525z7107.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N28
fiftyfivenm_lcell_comb ix64525z7106(
// Equation(s):
// nx64525z10 = (u_lab3_modgen_counter_column_areg_q_3__aq & (u_lab3_modgen_counter_column_areg_q_2__aq)) # (!u_lab3_modgen_counter_column_areg_q_3__aq & ((u_lab3_modgen_counter_column_areg_q_2__aq & (nx64525z13)) # 
// (!u_lab3_modgen_counter_column_areg_q_2__aq & ((nx64525z11)))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(nx64525z13),
	.datad(nx64525z11),
	.cin(gnd),
	.combout(nx64525z10),
	.cout());
// synopsys translate_off
defparam ix64525z7106.lut_mask = 16'hD9C8;
defparam ix64525z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N6
fiftyfivenm_lcell_comb ix64525z7105(
// Equation(s):
// u_lab3_p_1n7s3f2[4] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx64525z10 & ((nx64525z17))) # (!nx64525z10 & (nx64525z15)))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx64525z10))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(nx64525z15),
	.datac(nx64525z17),
	.datad(nx64525z10),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f2[4]),
	.cout());
// synopsys translate_off
defparam ix64525z7105.lut_mask = 16'hF588;
defparam ix64525z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N28
fiftyfivenm_lcell_comb ix25079z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_324_ = (yes_uart_u_uart_reg_Dout_4__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_10__4__aq)) # (!nx22088z1))) # (!yes_uart_u_uart_reg_Dout_4__aq & (u_lab3_reg_state_2__aq & (u_lab3_reg_subtrahend_10__4__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_4__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_subtrahend_10__4__aq),
	.datad(nx22088z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_324_),
	.cout());
// synopsys translate_off
defparam ix25079z7095.lut_mask = 16'hC0EA;
defparam ix25079z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N29
dffeas u_lab3_reg_minuend_10__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_324_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx22088z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_10__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_10__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_10__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N22
fiftyfivenm_lcell_comb ix30214z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_356_ = (u_lab3_reg_subtrahend_11__4__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_4__aq & !nx27223z1)))) # (!u_lab3_reg_subtrahend_11__4__aq & (yes_uart_u_uart_reg_Dout_4__aq & ((!nx27223z1))))

	.dataa(u_lab3_reg_subtrahend_11__4__aq),
	.datab(yes_uart_u_uart_reg_Dout_4__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx27223z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_356_),
	.cout());
// synopsys translate_off
defparam ix30214z7095.lut_mask = 16'hA0EC;
defparam ix30214z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N23
dffeas u_lab3_reg_minuend_11__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_356_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx27223z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_11__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_11__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_11__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N10
fiftyfivenm_lcell_comb ix44555z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_292_ = (yes_uart_u_uart_reg_Dout_4__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_9__4__aq)) # (!nx41564z1))) # (!yes_uart_u_uart_reg_Dout_4__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_9__4__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_4__aq),
	.datab(nx41564z1),
	.datac(u_lab3_reg_state_2__aq),
	.datad(u_lab3_reg_subtrahend_9__4__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_292_),
	.cout());
// synopsys translate_off
defparam ix44555z7095.lut_mask = 16'hF222;
defparam ix44555z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y15_N11
dffeas u_lab3_reg_minuend_9__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_292_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41564z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_9__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_9__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_9__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N0
fiftyfivenm_lcell_comb ix39420z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_260_ = (u_lab3_reg_subtrahend_8__4__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_4__aq & !nx36429z1)))) # (!u_lab3_reg_subtrahend_8__4__aq & (yes_uart_u_uart_reg_Dout_4__aq & (!nx36429z1)))

	.dataa(u_lab3_reg_subtrahend_8__4__aq),
	.datab(yes_uart_u_uart_reg_Dout_4__aq),
	.datac(nx36429z1),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_260_),
	.cout());
// synopsys translate_off
defparam ix39420z7095.lut_mask = 16'hAE0C;
defparam ix39420z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y15_N1
dffeas u_lab3_reg_minuend_8__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_260_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36429z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_8__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_8__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_8__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N14
fiftyfivenm_lcell_comb ix64525z7102(
// Equation(s):
// nx64525z7 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_9__4__aq)) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_8__4__aq)))))

	.dataa(u_lab3_reg_minuend_9__4__aq),
	.datab(u_lab3_reg_minuend_8__4__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx64525z7),
	.cout());
// synopsys translate_off
defparam ix64525z7102.lut_mask = 16'hFA0C;
defparam ix64525z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N26
fiftyfivenm_lcell_comb ix64525z7101(
// Equation(s):
// nx64525z6 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx64525z7 & ((u_lab3_reg_minuend_11__4__aq))) # (!nx64525z7 & (u_lab3_reg_minuend_10__4__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx64525z7))))

	.dataa(u_lab3_reg_minuend_10__4__aq),
	.datab(u_lab3_reg_minuend_11__4__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(nx64525z7),
	.cin(gnd),
	.combout(nx64525z6),
	.cout());
// synopsys translate_off
defparam ix64525z7101.lut_mask = 16'hCFA0;
defparam ix64525z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N0
fiftyfivenm_lcell_comb ix45619z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_452_ = (nx42628z1 & (((u_lab3_reg_subtrahend_14__4__aq & u_lab3_reg_state_2__aq)))) # (!nx42628z1 & ((yes_uart_u_uart_reg_Dout_4__aq) # ((u_lab3_reg_subtrahend_14__4__aq & u_lab3_reg_state_2__aq))))

	.dataa(nx42628z1),
	.datab(yes_uart_u_uart_reg_Dout_4__aq),
	.datac(u_lab3_reg_subtrahend_14__4__aq),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_452_),
	.cout());
// synopsys translate_off
defparam ix45619z7095.lut_mask = 16'hF444;
defparam ix45619z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N1
dffeas u_lab3_reg_minuend_14__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_452_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx42628z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_14__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_14__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_14__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N28
fiftyfivenm_lcell_comb ix50754z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_484_ = (yes_uart_u_uart_reg_Dout_4__aq & (((u_lab3_reg_subtrahend_15__4__aq & u_lab3_reg_state_2__aq)) # (!nx47763z1))) # (!yes_uart_u_uart_reg_Dout_4__aq & (u_lab3_reg_subtrahend_15__4__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_4__aq),
	.datab(u_lab3_reg_subtrahend_15__4__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx47763z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_484_),
	.cout());
// synopsys translate_off
defparam ix50754z7095.lut_mask = 16'hC0EA;
defparam ix50754z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N29
dffeas u_lab3_reg_minuend_15__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_484_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx47763z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_15__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_15__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_15__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N12
fiftyfivenm_lcell_comb ix35349z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_388_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_12__4__aq) # ((yes_uart_u_uart_reg_Dout_4__aq & !nx32358z1)))) # (!u_lab3_reg_state_2__aq & (yes_uart_u_uart_reg_Dout_4__aq & (!nx32358z1)))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(yes_uart_u_uart_reg_Dout_4__aq),
	.datac(nx32358z1),
	.datad(u_lab3_reg_subtrahend_12__4__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_388_),
	.cout());
// synopsys translate_off
defparam ix35349z7095.lut_mask = 16'hAE0C;
defparam ix35349z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y13_N13
dffeas u_lab3_reg_minuend_12__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_388_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx32358z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_12__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_12__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_12__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N22
fiftyfivenm_lcell_comb ix40484z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_420_ = (u_lab3_reg_subtrahend_13__4__aq & ((u_lab3_reg_state_2__aq) # ((!nx37493z1 & yes_uart_u_uart_reg_Dout_4__aq)))) # (!u_lab3_reg_subtrahend_13__4__aq & (((!nx37493z1 & yes_uart_u_uart_reg_Dout_4__aq))))

	.dataa(u_lab3_reg_subtrahend_13__4__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(nx37493z1),
	.datad(yes_uart_u_uart_reg_Dout_4__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_420_),
	.cout());
// synopsys translate_off
defparam ix40484z7095.lut_mask = 16'h8F88;
defparam ix40484z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N23
dffeas u_lab3_reg_minuend_13__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_420_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx37493z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_13__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_13__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_13__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N12
fiftyfivenm_lcell_comb ix64525z7104(
// Equation(s):
// nx64525z9 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_13__4__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_12__4__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_12__4__aq),
	.datac(u_lab3_reg_minuend_13__4__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx64525z9),
	.cout());
// synopsys translate_off
defparam ix64525z7104.lut_mask = 16'hFA44;
defparam ix64525z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N22
fiftyfivenm_lcell_comb ix64525z7103(
// Equation(s):
// nx64525z8 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx64525z9 & ((u_lab3_reg_minuend_15__4__aq))) # (!nx64525z9 & (u_lab3_reg_minuend_14__4__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx64525z9))))

	.dataa(u_lab3_reg_minuend_14__4__aq),
	.datab(u_lab3_reg_minuend_15__4__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(nx64525z9),
	.cin(gnd),
	.combout(nx64525z8),
	.cout());
// synopsys translate_off
defparam ix64525z7103.lut_mask = 16'hCFA0;
defparam ix64525z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N2
fiftyfivenm_lcell_comb ix34285z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_228_ = (yes_uart_u_uart_reg_Dout_4__aq & (((u_lab3_reg_subtrahend_7__4__aq & u_lab3_reg_state_2__aq)) # (!nx31294z1))) # (!yes_uart_u_uart_reg_Dout_4__aq & (u_lab3_reg_subtrahend_7__4__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_4__aq),
	.datab(u_lab3_reg_subtrahend_7__4__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx31294z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_228_),
	.cout());
// synopsys translate_off
defparam ix34285z7095.lut_mask = 16'hC0EA;
defparam ix34285z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y19_N3
dffeas u_lab3_reg_minuend_7__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_228_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx31294z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_7__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_7__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_7__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N30
fiftyfivenm_lcell_comb ix29150z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_196_ = (yes_uart_u_uart_reg_Dout_4__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_6__4__aq)) # (!nx26159z1))) # (!yes_uart_u_uart_reg_Dout_4__aq & (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_6__4__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_4__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(nx26159z1),
	.datad(u_lab3_reg_subtrahend_6__4__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_196_),
	.cout());
// synopsys translate_off
defparam ix29150z7095.lut_mask = 16'hCE0A;
defparam ix29150z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y12_N31
dffeas u_lab3_reg_minuend_6__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_196_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26159z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_6__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_6__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_6__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N20
fiftyfivenm_lcell_comb ix18880z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_132_ = (u_lab3_reg_subtrahend_4__4__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_4__aq & !nx15889z1)))) # (!u_lab3_reg_subtrahend_4__4__aq & (yes_uart_u_uart_reg_Dout_4__aq & ((!nx15889z1))))

	.dataa(u_lab3_reg_subtrahend_4__4__aq),
	.datab(yes_uart_u_uart_reg_Dout_4__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx15889z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_132_),
	.cout());
// synopsys translate_off
defparam ix18880z7095.lut_mask = 16'hA0EC;
defparam ix18880z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N21
dffeas u_lab3_reg_minuend_4__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_132_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx15889z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_4__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_4__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_4__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N0
fiftyfivenm_lcell_comb ix24015z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_164_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_5__4__aq) # ((yes_uart_u_uart_reg_Dout_4__aq & !nx21024z1)))) # (!u_lab3_reg_state_2__aq & (((yes_uart_u_uart_reg_Dout_4__aq & !nx21024z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_subtrahend_5__4__aq),
	.datac(yes_uart_u_uart_reg_Dout_4__aq),
	.datad(nx21024z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_164_),
	.cout());
// synopsys translate_off
defparam ix24015z7095.lut_mask = 16'h88F8;
defparam ix24015z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N29
dffeas u_lab3_reg_minuend_5__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_lab3_minuend_1n10ss1_164_),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx21024z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_5__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_5__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_5__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N28
fiftyfivenm_lcell_comb ix64525z7100(
// Equation(s):
// nx64525z5 = (u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_minuend_5__4__aq) # (u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_4__4__aq & 
// ((!u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_reg_minuend_4__4__aq),
	.datac(u_lab3_reg_minuend_5__4__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx64525z5),
	.cout());
// synopsys translate_off
defparam ix64525z7100.lut_mask = 16'hAAE4;
defparam ix64525z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N8
fiftyfivenm_lcell_comb ix64525z7099(
// Equation(s):
// nx64525z4 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx64525z5 & (u_lab3_reg_minuend_7__4__aq)) # (!nx64525z5 & ((u_lab3_reg_minuend_6__4__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx64525z5))))

	.dataa(u_lab3_reg_minuend_7__4__aq),
	.datab(u_lab3_reg_minuend_6__4__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(nx64525z5),
	.cin(gnd),
	.combout(nx64525z4),
	.cout());
// synopsys translate_off
defparam ix64525z7099.lut_mask = 16'hAFC0;
defparam ix64525z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N6
fiftyfivenm_lcell_comb ix51791z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_100_ = (nx54782z1 & (u_lab3_reg_state_2__aq & (u_lab3_reg_subtrahend_3__4__aq))) # (!nx54782z1 & ((yes_uart_u_uart_reg_Dout_4__aq) # ((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_3__4__aq))))

	.dataa(nx54782z1),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_subtrahend_3__4__aq),
	.datad(yes_uart_u_uart_reg_Dout_4__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_100_),
	.cout());
// synopsys translate_off
defparam ix51791z7095.lut_mask = 16'hD5C0;
defparam ix51791z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y16_N7
dffeas u_lab3_reg_minuend_3__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_100_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx54782z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_3__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_3__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_3__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N22
fiftyfivenm_lcell_comb ix56926z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_68_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_2__4__aq) # ((yes_uart_u_uart_reg_Dout_4__aq & !nx59917z1)))) # (!u_lab3_reg_state_2__aq & (((yes_uart_u_uart_reg_Dout_4__aq & !nx59917z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_subtrahend_2__4__aq),
	.datac(yes_uart_u_uart_reg_Dout_4__aq),
	.datad(nx59917z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_68_),
	.cout());
// synopsys translate_off
defparam ix56926z7095.lut_mask = 16'h88F8;
defparam ix56926z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N23
dffeas u_lab3_reg_minuend_2__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_68_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59917z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_2__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_2__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_2__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N20
fiftyfivenm_lcell_comb ix1660z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_4_ = (u_lab3_reg_subtrahend_0__4__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_4__aq & !nx4651z1)))) # (!u_lab3_reg_subtrahend_0__4__aq & (((yes_uart_u_uart_reg_Dout_4__aq & !nx4651z1))))

	.dataa(u_lab3_reg_subtrahend_0__4__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_4__aq),
	.datad(nx4651z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_4_),
	.cout());
// synopsys translate_off
defparam ix1660z7095.lut_mask = 16'h88F8;
defparam ix1660z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y13_N21
dffeas u_lab3_reg_minuend_0__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_4_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx4651z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_0__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_0__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_0__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N14
fiftyfivenm_lcell_comb ix62061z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_36_ = (u_lab3_reg_subtrahend_1__4__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_4__aq & !nx65052z1)))) # (!u_lab3_reg_subtrahend_1__4__aq & (((yes_uart_u_uart_reg_Dout_4__aq & !nx65052z1))))

	.dataa(u_lab3_reg_subtrahend_1__4__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_4__aq),
	.datad(nx65052z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_36_),
	.cout());
// synopsys translate_off
defparam ix62061z7095.lut_mask = 16'h88F8;
defparam ix62061z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y13_N17
dffeas u_lab3_reg_minuend_1__4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_lab3_minuend_1n10ss1_36_),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx65052z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_1__4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_1__4_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_1__4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N16
fiftyfivenm_lcell_comb ix64525z7098(
// Equation(s):
// nx64525z3 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_1__4__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_0__4__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_0__4__aq),
	.datac(u_lab3_reg_minuend_1__4__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx64525z3),
	.cout());
// synopsys translate_off
defparam ix64525z7098.lut_mask = 16'hFA44;
defparam ix64525z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y13_N18
fiftyfivenm_lcell_comb ix64525z7097(
// Equation(s):
// nx64525z2 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx64525z3 & (u_lab3_reg_minuend_3__4__aq)) # (!nx64525z3 & ((u_lab3_reg_minuend_2__4__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx64525z3))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_3__4__aq),
	.datac(u_lab3_reg_minuend_2__4__aq),
	.datad(nx64525z3),
	.cin(gnd),
	.combout(nx64525z2),
	.cout());
// synopsys translate_off
defparam ix64525z7097.lut_mask = 16'hDDA0;
defparam ix64525z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N18
fiftyfivenm_lcell_comb ix64525z7096(
// Equation(s):
// nx64525z1 = (u_lab3_modgen_counter_column_areg_q_3__aq & (u_lab3_modgen_counter_column_areg_q_2__aq)) # (!u_lab3_modgen_counter_column_areg_q_3__aq & ((u_lab3_modgen_counter_column_areg_q_2__aq & (nx64525z4)) # (!u_lab3_modgen_counter_column_areg_q_2__aq 
// & ((nx64525z2)))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(nx64525z4),
	.datad(nx64525z2),
	.cin(gnd),
	.combout(nx64525z1),
	.cout());
// synopsys translate_off
defparam ix64525z7096.lut_mask = 16'hD9C8;
defparam ix64525z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y13_N24
fiftyfivenm_lcell_comb ix64525z7095(
// Equation(s):
// u_lab3_p_1n7s3f1[4] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx64525z1 & ((nx64525z8))) # (!nx64525z1 & (nx64525z6)))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx64525z1))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(nx64525z6),
	.datac(nx64525z8),
	.datad(nx64525z1),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f1[4]),
	.cout());
// synopsys translate_off
defparam ix64525z7095.lut_mask = 16'hF588;
defparam ix64525z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y13_N2
fiftyfivenm_lcell_comb yes_uart_u_uart_reg_Rx_Reg_3__afeeder(
// Equation(s):
// yes_uart_u_uart_reg_Rx_Reg_3__afeeder_combout = yes_uart_u_uart_reg_Rx_Reg_4__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_Rx_Reg_4__aq),
	.cin(gnd),
	.combout(yes_uart_u_uart_reg_Rx_Reg_3__afeeder_combout),
	.cout());
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_Reg_3__afeeder.lut_mask = 16'hFF00;
defparam yes_uart_u_uart_reg_Rx_Reg_3__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y13_N3
dffeas yes_uart_u_uart_reg_Rx_Reg_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(yes_uart_u_uart_reg_Rx_Reg_3__afeeder_combout),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2098z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Rx_Reg_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_Reg_3_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Rx_Reg_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X18_Y13_N19
dffeas yes_uart_u_uart_reg_Dout_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Rx_Reg_3__aq),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx46463z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Dout_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Dout_3_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Dout_3_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y17_N19
dffeas u_lab3_reg_addend_11__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37469z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_11__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_11__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_11__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N0
fiftyfivenm_lcell_comb ix29553z7095(
// Equation(s):
// nx29553z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_3__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_11__3__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_3__aq),
	.datab(u_lab3_reg_addend_11__3__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx29553z1),
	.cout());
// synopsys translate_off
defparam ix29553z7095.lut_mask = 16'hACAC;
defparam ix29553z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N1
dffeas u_lab3_reg_subtrahend_11__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx29553z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx33541z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_11__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_11__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_11__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N24
fiftyfivenm_lcell_comb ix31211z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_355_ = (yes_uart_u_uart_reg_Dout_3__aq & (((u_lab3_reg_subtrahend_11__3__aq & u_lab3_reg_state_2__aq)) # (!nx27223z1))) # (!yes_uart_u_uart_reg_Dout_3__aq & (u_lab3_reg_subtrahend_11__3__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_3__aq),
	.datab(u_lab3_reg_subtrahend_11__3__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx27223z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_355_),
	.cout());
// synopsys translate_off
defparam ix31211z7095.lut_mask = 16'hC0EA;
defparam ix31211z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N25
dffeas u_lab3_reg_minuend_11__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_355_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx27223z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_11__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_11__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_11__3_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y18_N27
dffeas u_lab3_reg_addend_10__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42604z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_10__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_10__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_10__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N6
fiftyfivenm_lcell_comb ix34688z7095(
// Equation(s):
// nx34688z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_3__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_10__3__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_reg_addend_10__3__aq),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_Dout_3__aq),
	.cin(gnd),
	.combout(nx34688z1),
	.cout());
// synopsys translate_off
defparam ix34688z7095.lut_mask = 16'hEE44;
defparam ix34688z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N7
dffeas u_lab3_reg_subtrahend_10__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx34688z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx38676z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_10__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_10__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_10__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N14
fiftyfivenm_lcell_comb ix26076z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_323_ = (u_lab3_reg_subtrahend_10__3__aq & ((u_lab3_reg_state_2__aq) # ((!nx22088z1 & yes_uart_u_uart_reg_Dout_3__aq)))) # (!u_lab3_reg_subtrahend_10__3__aq & (!nx22088z1 & ((yes_uart_u_uart_reg_Dout_3__aq))))

	.dataa(u_lab3_reg_subtrahend_10__3__aq),
	.datab(nx22088z1),
	.datac(u_lab3_reg_state_2__aq),
	.datad(yes_uart_u_uart_reg_Dout_3__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_323_),
	.cout());
// synopsys translate_off
defparam ix26076z7095.lut_mask = 16'hB3A0;
defparam ix26076z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N15
dffeas u_lab3_reg_minuend_10__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_323_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx22088z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_10__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_10__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_10__3_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y16_N11
dffeas u_lab3_reg_addend_9__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx64440z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_9__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_9__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_9__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N8
fiftyfivenm_lcell_comb ix38852z7095(
// Equation(s):
// nx38852z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_3__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_9__3__aq))

	.dataa(gnd),
	.datab(u_lab3_reg_addend_9__3__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(yes_uart_u_uart_reg_Dout_3__aq),
	.cin(gnd),
	.combout(nx38852z1),
	.cout());
// synopsys translate_off
defparam ix38852z7095.lut_mask = 16'hFC0C;
defparam ix38852z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y16_N9
dffeas u_lab3_reg_subtrahend_9__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx38852z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx34864z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_9__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_9__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_9__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N12
fiftyfivenm_lcell_comb ix45552z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_291_ = (u_lab3_reg_subtrahend_9__3__aq & ((u_lab3_reg_state_2__aq) # ((!nx41564z1 & yes_uart_u_uart_reg_Dout_3__aq)))) # (!u_lab3_reg_subtrahend_9__3__aq & (((!nx41564z1 & yes_uart_u_uart_reg_Dout_3__aq))))

	.dataa(u_lab3_reg_subtrahend_9__3__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(nx41564z1),
	.datad(yes_uart_u_uart_reg_Dout_3__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_291_),
	.cout());
// synopsys translate_off
defparam ix45552z7095.lut_mask = 16'h8F88;
defparam ix45552z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y13_N13
dffeas u_lab3_reg_minuend_9__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_291_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41564z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_9__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_9__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_9__3_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y14_N27
dffeas u_lab3_reg_addend_8__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx6231z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_8__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_8__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_8__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y15_N0
fiftyfivenm_lcell_comb ix33717z7095(
// Equation(s):
// nx33717z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_3__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_8__3__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_3__aq),
	.datac(u_lab3_reg_addend_8__3__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx33717z1),
	.cout());
// synopsys translate_off
defparam ix33717z7095.lut_mask = 16'hCCF0;
defparam ix33717z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y15_N1
dffeas u_lab3_reg_subtrahend_8__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx33717z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx29729z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_8__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_8__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_8__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N18
fiftyfivenm_lcell_comb ix40417z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_259_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_8__3__aq) # ((!nx36429z1 & yes_uart_u_uart_reg_Dout_3__aq)))) # (!u_lab3_reg_state_2__aq & (!nx36429z1 & ((yes_uart_u_uart_reg_Dout_3__aq))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(nx36429z1),
	.datac(u_lab3_reg_subtrahend_8__3__aq),
	.datad(yes_uart_u_uart_reg_Dout_3__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_259_),
	.cout());
// synopsys translate_off
defparam ix40417z7095.lut_mask = 16'hB3A0;
defparam ix40417z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y13_N19
dffeas u_lab3_reg_minuend_8__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_259_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36429z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_8__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_8__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_8__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N10
fiftyfivenm_lcell_comb ix17342z7102(
// Equation(s):
// nx17342z7 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_9__3__aq)) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_8__3__aq)))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_minuend_9__3__aq),
	.datad(u_lab3_reg_minuend_8__3__aq),
	.cin(gnd),
	.combout(nx17342z7),
	.cout());
// synopsys translate_off
defparam ix17342z7102.lut_mask = 16'hD9C8;
defparam ix17342z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N28
fiftyfivenm_lcell_comb ix17342z7101(
// Equation(s):
// nx17342z6 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx17342z7 & (u_lab3_reg_minuend_11__3__aq)) # (!nx17342z7 & ((u_lab3_reg_minuend_10__3__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx17342z7))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_11__3__aq),
	.datac(u_lab3_reg_minuend_10__3__aq),
	.datad(nx17342z7),
	.cin(gnd),
	.combout(nx17342z6),
	.cout());
// synopsys translate_off
defparam ix17342z7101.lut_mask = 16'hDDA0;
defparam ix17342z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y15_N27
dffeas u_lab3_reg_addend_7__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx11366z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_7__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_7__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_7__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N6
fiftyfivenm_lcell_comb ix36954z7095(
// Equation(s):
// nx36954z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_3__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_7__3__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_3__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_7__3__aq),
	.cin(gnd),
	.combout(nx36954z1),
	.cout());
// synopsys translate_off
defparam ix36954z7095.lut_mask = 16'hCFC0;
defparam ix36954z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y19_N7
dffeas u_lab3_reg_subtrahend_7__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx36954z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx40942z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_7__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_7__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_7__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N12
fiftyfivenm_lcell_comb ix35282z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_227_ = (u_lab3_reg_subtrahend_7__3__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_3__aq & !nx31294z1)))) # (!u_lab3_reg_subtrahend_7__3__aq & (yes_uart_u_uart_reg_Dout_3__aq & ((!nx31294z1))))

	.dataa(u_lab3_reg_subtrahend_7__3__aq),
	.datab(yes_uart_u_uart_reg_Dout_3__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx31294z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_227_),
	.cout());
// synopsys translate_off
defparam ix35282z7095.lut_mask = 16'hA0EC;
defparam ix35282z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y19_N13
dffeas u_lab3_reg_minuend_7__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_227_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx31294z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_7__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_7__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_7__3_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y14_N1
dffeas u_lab3_reg_addend_6__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16501z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_6__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_6__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_6__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N24
fiftyfivenm_lcell_comb ix42089z7095(
// Equation(s):
// nx42089z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_3__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_6__3__aq))

	.dataa(u_lab3_reg_addend_6__3__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_3__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx42089z1),
	.cout());
// synopsys translate_off
defparam ix42089z7095.lut_mask = 16'hE2E2;
defparam ix42089z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y12_N25
dffeas u_lab3_reg_subtrahend_6__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx42089z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx46077z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_6__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_6__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_6__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N16
fiftyfivenm_lcell_comb ix30147z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_195_ = (yes_uart_u_uart_reg_Dout_3__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_6__3__aq)) # (!nx26159z1))) # (!yes_uart_u_uart_reg_Dout_3__aq & (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_6__3__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_3__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(nx26159z1),
	.datad(u_lab3_reg_subtrahend_6__3__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_195_),
	.cout());
// synopsys translate_off
defparam ix30147z7095.lut_mask = 16'hCE0A;
defparam ix30147z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y12_N17
dffeas u_lab3_reg_minuend_6__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_195_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26159z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_6__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_6__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_6__3_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y16_N1
dffeas u_lab3_reg_addend_4__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx26771z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_4__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_4__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_4__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N30
fiftyfivenm_lcell_comb ix52359z7095(
// Equation(s):
// nx52359z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_3__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_4__3__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(u_lab3_reg_addend_4__3__aq),
	.datad(yes_uart_u_uart_reg_Dout_3__aq),
	.cin(gnd),
	.combout(nx52359z1),
	.cout());
// synopsys translate_off
defparam ix52359z7095.lut_mask = 16'hFA50;
defparam ix52359z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N31
dffeas u_lab3_reg_subtrahend_4__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx52359z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx56347z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_4__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_4__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_4__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N6
fiftyfivenm_lcell_comb ix19877z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_131_ = (nx15889z1 & (u_lab3_reg_state_2__aq & (u_lab3_reg_subtrahend_4__3__aq))) # (!nx15889z1 & ((yes_uart_u_uart_reg_Dout_3__aq) # ((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_4__3__aq))))

	.dataa(nx15889z1),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_subtrahend_4__3__aq),
	.datad(yes_uart_u_uart_reg_Dout_3__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_131_),
	.cout());
// synopsys translate_off
defparam ix19877z7095.lut_mask = 16'hD5C0;
defparam ix19877z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N7
dffeas u_lab3_reg_minuend_4__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_131_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx15889z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_4__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_4__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_4__3_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y17_N17
dffeas u_lab3_reg_addend_5__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx21636z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_5__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_5__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_5__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N30
fiftyfivenm_lcell_comb ix47224z7095(
// Equation(s):
// nx47224z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_3__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_5__3__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(yes_uart_u_uart_reg_Dout_3__aq),
	.datac(gnd),
	.datad(u_lab3_reg_addend_5__3__aq),
	.cin(gnd),
	.combout(nx47224z1),
	.cout());
// synopsys translate_off
defparam ix47224z7095.lut_mask = 16'hDD88;
defparam ix47224z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N31
dffeas u_lab3_reg_subtrahend_5__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx47224z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx51212z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_5__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_5__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_5__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N24
fiftyfivenm_lcell_comb ix25012z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_163_ = (nx21024z1 & (u_lab3_reg_subtrahend_5__3__aq & (u_lab3_reg_state_2__aq))) # (!nx21024z1 & ((yes_uart_u_uart_reg_Dout_3__aq) # ((u_lab3_reg_subtrahend_5__3__aq & u_lab3_reg_state_2__aq))))

	.dataa(nx21024z1),
	.datab(u_lab3_reg_subtrahend_5__3__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(yes_uart_u_uart_reg_Dout_3__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_163_),
	.cout());
// synopsys translate_off
defparam ix25012z7095.lut_mask = 16'hD5C0;
defparam ix25012z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y16_N13
dffeas u_lab3_reg_minuend_5__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_lab3_minuend_1n10ss1_163_),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx21024z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_5__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_5__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_5__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N12
fiftyfivenm_lcell_comb ix17342z7100(
// Equation(s):
// nx17342z5 = (u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_minuend_5__3__aq) # (u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_4__3__aq & 
// ((!u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_reg_minuend_4__3__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_minuend_5__3__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx17342z5),
	.cout());
// synopsys translate_off
defparam ix17342z7100.lut_mask = 16'hCCE2;
defparam ix17342z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N22
fiftyfivenm_lcell_comb ix17342z7099(
// Equation(s):
// nx17342z4 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx17342z5 & (u_lab3_reg_minuend_7__3__aq)) # (!nx17342z5 & ((u_lab3_reg_minuend_6__3__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx17342z5))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_7__3__aq),
	.datac(u_lab3_reg_minuend_6__3__aq),
	.datad(nx17342z5),
	.cin(gnd),
	.combout(nx17342z4),
	.cout());
// synopsys translate_off
defparam ix17342z7099.lut_mask = 16'hDDA0;
defparam ix17342z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y17_N11
dffeas u_lab3_reg_addend_3__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx31906z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_3__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_3__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_3__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N24
fiftyfivenm_lcell_comb ix57494z7095(
// Equation(s):
// nx57494z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_3__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_3__3__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_3__aq),
	.datac(u_lab3_reg_addend_3__3__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx57494z1),
	.cout());
// synopsys translate_off
defparam ix57494z7095.lut_mask = 16'hCCF0;
defparam ix57494z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y16_N25
dffeas u_lab3_reg_subtrahend_3__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx57494z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx61482z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_3__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_3__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_3__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N16
fiftyfivenm_lcell_comb ix50794z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_99_ = (yes_uart_u_uart_reg_Dout_3__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_3__3__aq)) # (!nx54782z1))) # (!yes_uart_u_uart_reg_Dout_3__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_3__3__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_3__aq),
	.datab(nx54782z1),
	.datac(u_lab3_reg_state_2__aq),
	.datad(u_lab3_reg_subtrahend_3__3__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_99_),
	.cout());
// synopsys translate_off
defparam ix50794z7095.lut_mask = 16'hF222;
defparam ix50794z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y16_N17
dffeas u_lab3_reg_minuend_3__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_99_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx54782z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_3__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_3__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_3__3_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y18_N1
dffeas u_lab3_reg_addend_2__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37041z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_2__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_2__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_2__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N16
fiftyfivenm_lcell_comb ix62629z7095(
// Equation(s):
// nx62629z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_3__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_2__3__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_3__aq),
	.datab(gnd),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_2__3__aq),
	.cin(gnd),
	.combout(nx62629z1),
	.cout());
// synopsys translate_off
defparam ix62629z7095.lut_mask = 16'hAFA0;
defparam ix62629z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N17
dffeas u_lab3_reg_subtrahend_2__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx62629z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx1081z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_2__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_2__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_2__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N0
fiftyfivenm_lcell_comb ix55929z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_67_ = (u_lab3_reg_subtrahend_2__3__aq & ((u_lab3_reg_state_2__aq) # ((!nx59917z1 & yes_uart_u_uart_reg_Dout_3__aq)))) # (!u_lab3_reg_subtrahend_2__3__aq & (!nx59917z1 & (yes_uart_u_uart_reg_Dout_3__aq)))

	.dataa(u_lab3_reg_subtrahend_2__3__aq),
	.datab(nx59917z1),
	.datac(yes_uart_u_uart_reg_Dout_3__aq),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_67_),
	.cout());
// synopsys translate_off
defparam ix55929z7095.lut_mask = 16'hBA30;
defparam ix55929z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N1
dffeas u_lab3_reg_minuend_2__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_67_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59917z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_2__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_2__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_2__3_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N9
dffeas u_lab3_reg_addend_1__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42176z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_1__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_1__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_1__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N26
fiftyfivenm_lcell_comb ix2228z7095(
// Equation(s):
// nx2228z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_3__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_1__3__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_3__aq),
	.datad(u_lab3_reg_addend_1__3__aq),
	.cin(gnd),
	.combout(nx2228z1),
	.cout());
// synopsys translate_off
defparam ix2228z7095.lut_mask = 16'hF5A0;
defparam ix2228z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y15_N27
dffeas u_lab3_reg_subtrahend_1__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx2228z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx6216z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_1__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_1__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_1__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N4
fiftyfivenm_lcell_comb ix61064z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_35_ = (u_lab3_reg_subtrahend_1__3__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_3__aq & !nx65052z1)))) # (!u_lab3_reg_subtrahend_1__3__aq & (((yes_uart_u_uart_reg_Dout_3__aq & !nx65052z1))))

	.dataa(u_lab3_reg_subtrahend_1__3__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_3__aq),
	.datad(nx65052z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_35_),
	.cout());
// synopsys translate_off
defparam ix61064z7095.lut_mask = 16'h88F8;
defparam ix61064z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y16_N1
dffeas u_lab3_reg_minuend_1__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_lab3_minuend_1n10ss1_35_),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx65052z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_1__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_1__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_1__3_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y17_N9
dffeas u_lab3_reg_addend_0__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx47311z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_0__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_0__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_0__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N30
fiftyfivenm_lcell_comb ix7363z7095(
// Equation(s):
// nx7363z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_3__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_0__3__aq))

	.dataa(u_lab3_reg_addend_0__3__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_3__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx7363z1),
	.cout());
// synopsys translate_off
defparam ix7363z7095.lut_mask = 16'hE2E2;
defparam ix7363z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y17_N31
dffeas u_lab3_reg_subtrahend_0__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx7363z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx11351z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_0__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_0__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_0__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N6
fiftyfivenm_lcell_comb ix663z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_3_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_0__3__aq) # ((yes_uart_u_uart_reg_Dout_3__aq & !nx4651z1)))) # (!u_lab3_reg_state_2__aq & (((yes_uart_u_uart_reg_Dout_3__aq & !nx4651z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_subtrahend_0__3__aq),
	.datac(yes_uart_u_uart_reg_Dout_3__aq),
	.datad(nx4651z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_3_),
	.cout());
// synopsys translate_off
defparam ix663z7095.lut_mask = 16'h88F8;
defparam ix663z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y17_N7
dffeas u_lab3_reg_minuend_0__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_3_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx4651z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_0__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_0__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_0__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N0
fiftyfivenm_lcell_comb ix17342z7098(
// Equation(s):
// nx17342z3 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_1__3__aq)) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_0__3__aq)))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_minuend_1__3__aq),
	.datad(u_lab3_reg_minuend_0__3__aq),
	.cin(gnd),
	.combout(nx17342z3),
	.cout());
// synopsys translate_off
defparam ix17342z7098.lut_mask = 16'hD9C8;
defparam ix17342z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N2
fiftyfivenm_lcell_comb ix17342z7097(
// Equation(s):
// nx17342z2 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx17342z3 & (u_lab3_reg_minuend_3__3__aq)) # (!nx17342z3 & ((u_lab3_reg_minuend_2__3__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx17342z3))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_3__3__aq),
	.datac(u_lab3_reg_minuend_2__3__aq),
	.datad(nx17342z3),
	.cin(gnd),
	.combout(nx17342z2),
	.cout());
// synopsys translate_off
defparam ix17342z7097.lut_mask = 16'hDDA0;
defparam ix17342z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N8
fiftyfivenm_lcell_comb ix17342z7096(
// Equation(s):
// nx17342z1 = (u_lab3_modgen_counter_column_areg_q_2__aq & ((u_lab3_modgen_counter_column_areg_q_3__aq) # ((nx17342z4)))) # (!u_lab3_modgen_counter_column_areg_q_2__aq & (!u_lab3_modgen_counter_column_areg_q_3__aq & ((nx17342z2))))

	.dataa(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datac(nx17342z4),
	.datad(nx17342z2),
	.cin(gnd),
	.combout(nx17342z1),
	.cout());
// synopsys translate_off
defparam ix17342z7096.lut_mask = 16'hB9A8;
defparam ix17342z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X28_Y14_N27
dffeas u_lab3_reg_addend_14__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx22064z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_14__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_14__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_14__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N16
fiftyfivenm_lcell_comb ix14148z7095(
// Equation(s):
// nx14148z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_3__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_14__3__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_3__aq),
	.datad(u_lab3_reg_addend_14__3__aq),
	.cin(gnd),
	.combout(nx14148z1),
	.cout());
// synopsys translate_off
defparam ix14148z7095.lut_mask = 16'hF5A0;
defparam ix14148z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y14_N17
dffeas u_lab3_reg_subtrahend_14__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx14148z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx18136z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_14__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_14__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_14__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N28
fiftyfivenm_lcell_comb ix46616z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_451_ = (nx42628z1 & (((u_lab3_reg_subtrahend_14__3__aq & u_lab3_reg_state_2__aq)))) # (!nx42628z1 & ((yes_uart_u_uart_reg_Dout_3__aq) # ((u_lab3_reg_subtrahend_14__3__aq & u_lab3_reg_state_2__aq))))

	.dataa(nx42628z1),
	.datab(yes_uart_u_uart_reg_Dout_3__aq),
	.datac(u_lab3_reg_subtrahend_14__3__aq),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_451_),
	.cout());
// synopsys translate_off
defparam ix46616z7095.lut_mask = 16'hF444;
defparam ix46616z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N29
dffeas u_lab3_reg_minuend_14__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_451_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx42628z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_14__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_14__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_14__3_.power_up = "low";
// synopsys translate_on

// Location: FF_X28_Y14_N17
dffeas u_lab3_reg_addend_13__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx27199z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_13__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_13__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_13__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N22
fiftyfivenm_lcell_comb ix19283z7095(
// Equation(s):
// nx19283z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_3__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_13__3__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_3__aq),
	.datac(u_lab3_reg_addend_13__3__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx19283z1),
	.cout());
// synopsys translate_off
defparam ix19283z7095.lut_mask = 16'hCCF0;
defparam ix19283z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y13_N23
dffeas u_lab3_reg_subtrahend_13__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx19283z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx23271z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_13__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_13__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_13__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N10
fiftyfivenm_lcell_comb ix41481z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_419_ = (u_lab3_reg_subtrahend_13__3__aq & ((u_lab3_reg_state_2__aq) # ((!nx37493z1 & yes_uart_u_uart_reg_Dout_3__aq)))) # (!u_lab3_reg_subtrahend_13__3__aq & (((!nx37493z1 & yes_uart_u_uart_reg_Dout_3__aq))))

	.dataa(u_lab3_reg_subtrahend_13__3__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(nx37493z1),
	.datad(yes_uart_u_uart_reg_Dout_3__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_419_),
	.cout());
// synopsys translate_off
defparam ix41481z7095.lut_mask = 16'h8F88;
defparam ix41481z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N11
dffeas u_lab3_reg_minuend_13__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_419_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx37493z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_13__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_13__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_13__3_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y12_N25
dffeas u_lab3_reg_addend_12__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx32334z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_12__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_12__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_12__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N12
fiftyfivenm_lcell_comb ix24418z7095(
// Equation(s):
// nx24418z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_3__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_12__3__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_3__aq),
	.datac(u_lab3_reg_addend_12__3__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx24418z1),
	.cout());
// synopsys translate_off
defparam ix24418z7095.lut_mask = 16'hCCF0;
defparam ix24418z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y13_N13
dffeas u_lab3_reg_subtrahend_12__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx24418z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx28406z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_12__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_12__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_12__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N22
fiftyfivenm_lcell_comb ix36346z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_387_ = (nx32358z1 & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_12__3__aq)))) # (!nx32358z1 & ((yes_uart_u_uart_reg_Dout_3__aq) # ((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_12__3__aq))))

	.dataa(nx32358z1),
	.datab(yes_uart_u_uart_reg_Dout_3__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(u_lab3_reg_subtrahend_12__3__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_387_),
	.cout());
// synopsys translate_off
defparam ix36346z7095.lut_mask = 16'hF444;
defparam ix36346z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y13_N23
dffeas u_lab3_reg_minuend_12__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_387_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx32358z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_12__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_12__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_12__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N14
fiftyfivenm_lcell_comb ix17342z7104(
// Equation(s):
// nx17342z9 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_13__3__aq)) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_12__3__aq)))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_minuend_13__3__aq),
	.datad(u_lab3_reg_minuend_12__3__aq),
	.cin(gnd),
	.combout(nx17342z9),
	.cout());
// synopsys translate_off
defparam ix17342z7104.lut_mask = 16'hD9C8;
defparam ix17342z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y12_N11
dffeas u_lab3_reg_addend_15__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_3__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16929z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_15__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_15__3_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_15__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N22
fiftyfivenm_lcell_comb ix9013z7095(
// Equation(s):
// nx9013z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_3__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_15__3__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_3__aq),
	.datad(u_lab3_reg_addend_15__3__aq),
	.cin(gnd),
	.combout(nx9013z1),
	.cout());
// synopsys translate_off
defparam ix9013z7095.lut_mask = 16'hF3C0;
defparam ix9013z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N23
dffeas u_lab3_reg_subtrahend_15__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx9013z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx13001z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_15__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_15__3_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_15__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N14
fiftyfivenm_lcell_comb ix51751z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_483_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_15__3__aq) # ((yes_uart_u_uart_reg_Dout_3__aq & !nx47763z1)))) # (!u_lab3_reg_state_2__aq & (yes_uart_u_uart_reg_Dout_3__aq & ((!nx47763z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(yes_uart_u_uart_reg_Dout_3__aq),
	.datac(u_lab3_reg_subtrahend_15__3__aq),
	.datad(nx47763z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_483_),
	.cout());
// synopsys translate_off
defparam ix51751z7095.lut_mask = 16'hA0EC;
defparam ix51751z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N15
dffeas u_lab3_reg_minuend_15__3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_483_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx47763z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_15__3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_15__3_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_15__3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N24
fiftyfivenm_lcell_comb ix17342z7103(
// Equation(s):
// nx17342z8 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx17342z9 & ((u_lab3_reg_minuend_15__3__aq))) # (!nx17342z9 & (u_lab3_reg_minuend_14__3__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx17342z9))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_14__3__aq),
	.datac(nx17342z9),
	.datad(u_lab3_reg_minuend_15__3__aq),
	.cin(gnd),
	.combout(nx17342z8),
	.cout());
// synopsys translate_off
defparam ix17342z7103.lut_mask = 16'hF858;
defparam ix17342z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N26
fiftyfivenm_lcell_comb ix17342z7095(
// Equation(s):
// u_lab3_p_1n7s3f1[3] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx17342z1 & ((nx17342z8))) # (!nx17342z1 & (nx17342z6)))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx17342z1))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(nx17342z6),
	.datac(nx17342z1),
	.datad(nx17342z8),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f1[3]),
	.cout());
// synopsys translate_off
defparam ix17342z7095.lut_mask = 16'hF858;
defparam ix17342z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N20
fiftyfivenm_lcell_comb ix17342z7108(
// Equation(s):
// nx17342z12 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_1__3__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_0__3__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_subtrahend_0__3__aq),
	.datad(u_lab3_reg_subtrahend_1__3__aq),
	.cin(gnd),
	.combout(nx17342z12),
	.cout());
// synopsys translate_off
defparam ix17342z7108.lut_mask = 16'hDC98;
defparam ix17342z7108.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N30
fiftyfivenm_lcell_comb ix17342z7107(
// Equation(s):
// nx17342z11 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx17342z12 & (u_lab3_reg_subtrahend_3__3__aq)) # (!nx17342z12 & ((u_lab3_reg_subtrahend_2__3__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx17342z12))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_3__3__aq),
	.datac(u_lab3_reg_subtrahend_2__3__aq),
	.datad(nx17342z12),
	.cin(gnd),
	.combout(nx17342z11),
	.cout());
// synopsys translate_off
defparam ix17342z7107.lut_mask = 16'hDDA0;
defparam ix17342z7107.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N16
fiftyfivenm_lcell_comb ix17342z7110(
// Equation(s):
// nx17342z14 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_5__3__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_4__3__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_subtrahend_4__3__aq),
	.datad(u_lab3_reg_subtrahend_5__3__aq),
	.cin(gnd),
	.combout(nx17342z14),
	.cout());
// synopsys translate_off
defparam ix17342z7110.lut_mask = 16'hDC98;
defparam ix17342z7110.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N18
fiftyfivenm_lcell_comb ix17342z7109(
// Equation(s):
// nx17342z13 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx17342z14 & ((u_lab3_reg_subtrahend_7__3__aq))) # (!nx17342z14 & (u_lab3_reg_subtrahend_6__3__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (nx17342z14))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(nx17342z14),
	.datac(u_lab3_reg_subtrahend_6__3__aq),
	.datad(u_lab3_reg_subtrahend_7__3__aq),
	.cin(gnd),
	.combout(nx17342z13),
	.cout());
// synopsys translate_off
defparam ix17342z7109.lut_mask = 16'hEC64;
defparam ix17342z7109.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N4
fiftyfivenm_lcell_comb ix17342z7106(
// Equation(s):
// nx17342z10 = (u_lab3_modgen_counter_column_areg_q_2__aq & ((u_lab3_modgen_counter_column_areg_q_3__aq) # ((nx17342z13)))) # (!u_lab3_modgen_counter_column_areg_q_2__aq & (!u_lab3_modgen_counter_column_areg_q_3__aq & (nx17342z11)))

	.dataa(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datac(nx17342z11),
	.datad(nx17342z13),
	.cin(gnd),
	.combout(nx17342z10),
	.cout());
// synopsys translate_off
defparam ix17342z7106.lut_mask = 16'hBA98;
defparam ix17342z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N18
fiftyfivenm_lcell_comb ix17342z7112(
// Equation(s):
// nx17342z16 = (u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_subtrahend_9__3__aq) # (u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_8__3__aq & 
// ((!u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_reg_subtrahend_8__3__aq),
	.datab(u_lab3_reg_subtrahend_9__3__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx17342z16),
	.cout());
// synopsys translate_off
defparam ix17342z7112.lut_mask = 16'hF0CA;
defparam ix17342z7112.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N20
fiftyfivenm_lcell_comb ix17342z7111(
// Equation(s):
// nx17342z15 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx17342z16 & (u_lab3_reg_subtrahend_11__3__aq)) # (!nx17342z16 & ((u_lab3_reg_subtrahend_10__3__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx17342z16))))

	.dataa(u_lab3_reg_subtrahend_11__3__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_subtrahend_10__3__aq),
	.datad(nx17342z16),
	.cin(gnd),
	.combout(nx17342z15),
	.cout());
// synopsys translate_off
defparam ix17342z7111.lut_mask = 16'hBBC0;
defparam ix17342z7111.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N16
fiftyfivenm_lcell_comb ix17342z7114(
// Equation(s):
// nx17342z18 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_13__3__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_12__3__aq))))

	.dataa(u_lab3_reg_subtrahend_12__3__aq),
	.datab(u_lab3_reg_subtrahend_13__3__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx17342z18),
	.cout());
// synopsys translate_off
defparam ix17342z7114.lut_mask = 16'hFC0A;
defparam ix17342z7114.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N26
fiftyfivenm_lcell_comb ix17342z7113(
// Equation(s):
// nx17342z17 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx17342z18 & ((u_lab3_reg_subtrahend_15__3__aq))) # (!nx17342z18 & (u_lab3_reg_subtrahend_14__3__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx17342z18))))

	.dataa(u_lab3_reg_subtrahend_14__3__aq),
	.datab(u_lab3_reg_subtrahend_15__3__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(nx17342z18),
	.cin(gnd),
	.combout(nx17342z17),
	.cout());
// synopsys translate_off
defparam ix17342z7113.lut_mask = 16'hCFA0;
defparam ix17342z7113.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N6
fiftyfivenm_lcell_comb ix17342z7105(
// Equation(s):
// u_lab3_p_1n7s3f2[3] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx17342z10 & ((nx17342z17))) # (!nx17342z10 & (nx17342z15)))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (nx17342z10))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(nx17342z10),
	.datac(nx17342z15),
	.datad(nx17342z17),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f2[3]),
	.cout());
// synopsys translate_off
defparam ix17342z7105.lut_mask = 16'hEC64;
defparam ix17342z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y13_N24
fiftyfivenm_lcell_comb yes_uart_u_uart_reg_Rx_Reg_2__afeeder(
// Equation(s):
// yes_uart_u_uart_reg_Rx_Reg_2__afeeder_combout = yes_uart_u_uart_reg_Rx_Reg_3__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_Rx_Reg_3__aq),
	.cin(gnd),
	.combout(yes_uart_u_uart_reg_Rx_Reg_2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_Reg_2__afeeder.lut_mask = 16'hFF00;
defparam yes_uart_u_uart_reg_Rx_Reg_2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y13_N25
dffeas yes_uart_u_uart_reg_Rx_Reg_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(yes_uart_u_uart_reg_Rx_Reg_2__afeeder_combout),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2098z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Rx_Reg_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_Reg_2_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Rx_Reg_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X18_Y13_N17
dffeas yes_uart_u_uart_reg_Dout_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Rx_Reg_2__aq),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx46463z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Dout_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Dout_2_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Dout_2_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y17_N23
dffeas u_lab3_reg_addend_11__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37469z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_11__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_11__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_11__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N2
fiftyfivenm_lcell_comb ix28556z7095(
// Equation(s):
// nx28556z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_2__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_11__2__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_2__aq),
	.datad(u_lab3_reg_addend_11__2__aq),
	.cin(gnd),
	.combout(nx28556z1),
	.cout());
// synopsys translate_off
defparam ix28556z7095.lut_mask = 16'hF3C0;
defparam ix28556z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N3
dffeas u_lab3_reg_subtrahend_11__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx28556z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx33541z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_11__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_11__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_11__2_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y18_N7
dffeas u_lab3_reg_addend_10__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42604z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_10__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_10__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_10__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N24
fiftyfivenm_lcell_comb ix33691z7095(
// Equation(s):
// nx33691z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_2__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_10__2__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_reg_addend_10__2__aq),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_Dout_2__aq),
	.cin(gnd),
	.combout(nx33691z1),
	.cout());
// synopsys translate_off
defparam ix33691z7095.lut_mask = 16'hEE44;
defparam ix33691z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N25
dffeas u_lab3_reg_subtrahend_10__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx33691z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx38676z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_10__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_10__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_10__2_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y16_N7
dffeas u_lab3_reg_addend_9__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx64440z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_9__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_9__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_9__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N2
fiftyfivenm_lcell_comb ix39849z7095(
// Equation(s):
// nx39849z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_2__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_9__2__aq))

	.dataa(u_lab3_reg_addend_9__2__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_2__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx39849z1),
	.cout());
// synopsys translate_off
defparam ix39849z7095.lut_mask = 16'hE2E2;
defparam ix39849z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X17_Y13_N2
fiftyfivenm_lcell_comb u_lab3_reg_subtrahend_9__2__afeeder(
// Equation(s):
// u_lab3_reg_subtrahend_9__2__afeeder_combout = nx39849z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx39849z1),
	.cin(gnd),
	.combout(u_lab3_reg_subtrahend_9__2__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_lab3_reg_subtrahend_9__2__afeeder.lut_mask = 16'hFF00;
defparam u_lab3_reg_subtrahend_9__2__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X17_Y13_N3
dffeas u_lab3_reg_subtrahend_9__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_reg_subtrahend_9__2__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx34864z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_9__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_9__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_9__2_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y14_N31
dffeas u_lab3_reg_addend_8__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx6231z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_8__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_8__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_8__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N24
fiftyfivenm_lcell_comb ix34714z7095(
// Equation(s):
// nx34714z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_2__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_8__2__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(yes_uart_u_uart_reg_Dout_2__aq),
	.datac(u_lab3_reg_addend_8__2__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx34714z1),
	.cout());
// synopsys translate_off
defparam ix34714z7095.lut_mask = 16'hD8D8;
defparam ix34714z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y17_N25
dffeas u_lab3_reg_subtrahend_8__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx34714z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx29729z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_8__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_8__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_8__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N16
fiftyfivenm_lcell_comb ix13806z7112(
// Equation(s):
// nx13806z16 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_9__2__aq) # ((u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (((!u_lab3_modgen_counter_column_areg_q_1__aq & 
// u_lab3_reg_subtrahend_8__2__aq))))

	.dataa(u_lab3_reg_subtrahend_9__2__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_reg_subtrahend_8__2__aq),
	.cin(gnd),
	.combout(nx13806z16),
	.cout());
// synopsys translate_off
defparam ix13806z7112.lut_mask = 16'hCBC8;
defparam ix13806z7112.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N26
fiftyfivenm_lcell_comb ix13806z7111(
// Equation(s):
// nx13806z15 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx13806z16 & (u_lab3_reg_subtrahend_11__2__aq)) # (!nx13806z16 & ((u_lab3_reg_subtrahend_10__2__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx13806z16))))

	.dataa(u_lab3_reg_subtrahend_11__2__aq),
	.datab(u_lab3_reg_subtrahend_10__2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(nx13806z16),
	.cin(gnd),
	.combout(nx13806z15),
	.cout());
// synopsys translate_off
defparam ix13806z7111.lut_mask = 16'hAFC0;
defparam ix13806z7111.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X28_Y14_N15
dffeas u_lab3_reg_addend_14__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx22064z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_14__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_14__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_14__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N10
fiftyfivenm_lcell_comb ix13151z7095(
// Equation(s):
// nx13151z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_2__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_14__2__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_reg_addend_14__2__aq),
	.datac(yes_uart_u_uart_reg_Dout_2__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx13151z1),
	.cout());
// synopsys translate_off
defparam ix13151z7095.lut_mask = 16'hE4E4;
defparam ix13151z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y14_N11
dffeas u_lab3_reg_subtrahend_14__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx13151z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx18136z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_14__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_14__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_14__2_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y12_N31
dffeas u_lab3_reg_addend_15__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16929z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_15__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_15__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_15__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N0
fiftyfivenm_lcell_comb ix8016z7095(
// Equation(s):
// nx8016z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_2__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_15__2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_2__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(u_lab3_reg_addend_15__2__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx8016z1),
	.cout());
// synopsys translate_off
defparam ix8016z7095.lut_mask = 16'hB8B8;
defparam ix8016z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N1
dffeas u_lab3_reg_subtrahend_15__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx8016z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx13001z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_15__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_15__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_15__2_.power_up = "low";
// synopsys translate_on

// Location: FF_X28_Y14_N13
dffeas u_lab3_reg_addend_13__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx27199z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_13__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_13__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_13__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N6
fiftyfivenm_lcell_comb ix18286z7095(
// Equation(s):
// nx18286z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_2__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_13__2__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_2__aq),
	.datad(u_lab3_reg_addend_13__2__aq),
	.cin(gnd),
	.combout(nx18286z1),
	.cout());
// synopsys translate_off
defparam ix18286z7095.lut_mask = 16'hF5A0;
defparam ix18286z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y13_N7
dffeas u_lab3_reg_subtrahend_13__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx18286z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx23271z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_13__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_13__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_13__2_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y12_N29
dffeas u_lab3_reg_addend_12__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx32334z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_12__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_12__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_12__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N20
fiftyfivenm_lcell_comb ix23421z7095(
// Equation(s):
// nx23421z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_2__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_12__2__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_reg_addend_12__2__aq),
	.datac(yes_uart_u_uart_reg_Dout_2__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx23421z1),
	.cout());
// synopsys translate_off
defparam ix23421z7095.lut_mask = 16'hE4E4;
defparam ix23421z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y13_N21
dffeas u_lab3_reg_subtrahend_12__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx23421z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx28406z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_12__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_12__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_12__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N0
fiftyfivenm_lcell_comb ix13806z7114(
// Equation(s):
// nx13806z18 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_13__2__aq)) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_12__2__aq)))))

	.dataa(u_lab3_reg_subtrahend_13__2__aq),
	.datab(u_lab3_reg_subtrahend_12__2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx13806z18),
	.cout());
// synopsys translate_off
defparam ix13806z7114.lut_mask = 16'hFA0C;
defparam ix13806z7114.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N18
fiftyfivenm_lcell_comb ix13806z7113(
// Equation(s):
// nx13806z17 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx13806z18 & ((u_lab3_reg_subtrahend_15__2__aq))) # (!nx13806z18 & (u_lab3_reg_subtrahend_14__2__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx13806z18))))

	.dataa(u_lab3_reg_subtrahend_14__2__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_subtrahend_15__2__aq),
	.datad(nx13806z18),
	.cin(gnd),
	.combout(nx13806z17),
	.cout());
// synopsys translate_off
defparam ix13806z7113.lut_mask = 16'hF388;
defparam ix13806z7113.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y14_N13
dffeas u_lab3_reg_addend_6__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16501z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_6__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_6__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_6__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N2
fiftyfivenm_lcell_comb ix41092z7095(
// Equation(s):
// nx41092z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_2__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_6__2__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_2__aq),
	.datad(u_lab3_reg_addend_6__2__aq),
	.cin(gnd),
	.combout(nx41092z1),
	.cout());
// synopsys translate_off
defparam ix41092z7095.lut_mask = 16'hF3C0;
defparam ix41092z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y12_N3
dffeas u_lab3_reg_subtrahend_6__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx41092z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx46077z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_6__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_6__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_6__2_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N31
dffeas u_lab3_reg_addend_7__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx11366z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_7__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_7__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_7__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N28
fiftyfivenm_lcell_comb ix35957z7095(
// Equation(s):
// nx35957z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_2__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_7__2__aq))

	.dataa(u_lab3_reg_addend_7__2__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_2__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx35957z1),
	.cout());
// synopsys translate_off
defparam ix35957z7095.lut_mask = 16'hE2E2;
defparam ix35957z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y15_N29
dffeas u_lab3_reg_subtrahend_7__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx35957z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx40942z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_7__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_7__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_7__2_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y17_N5
dffeas u_lab3_reg_addend_5__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx21636z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_5__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_5__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_5__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N30
fiftyfivenm_lcell_comb ix46227z7095(
// Equation(s):
// nx46227z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_2__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_5__2__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_2__aq),
	.datad(u_lab3_reg_addend_5__2__aq),
	.cin(gnd),
	.combout(nx46227z1),
	.cout());
// synopsys translate_off
defparam ix46227z7095.lut_mask = 16'hF5A0;
defparam ix46227z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y12_N31
dffeas u_lab3_reg_subtrahend_5__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx46227z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx51212z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_5__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_5__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_5__2_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y16_N13
dffeas u_lab3_reg_addend_4__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx26771z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_4__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_4__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_4__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N20
fiftyfivenm_lcell_comb ix51362z7095(
// Equation(s):
// nx51362z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_2__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_4__2__aq))

	.dataa(u_lab3_reg_addend_4__2__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_2__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx51362z1),
	.cout());
// synopsys translate_off
defparam ix51362z7095.lut_mask = 16'hF0AA;
defparam ix51362z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y12_N21
dffeas u_lab3_reg_subtrahend_4__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx51362z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx56347z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_4__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_4__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_4__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N24
fiftyfivenm_lcell_comb ix13806z7110(
// Equation(s):
// nx13806z14 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_5__2__aq) # ((u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_subtrahend_4__2__aq & 
// !u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_reg_subtrahend_5__2__aq),
	.datab(u_lab3_reg_subtrahend_4__2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx13806z14),
	.cout());
// synopsys translate_off
defparam ix13806z7110.lut_mask = 16'hF0AC;
defparam ix13806z7110.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N26
fiftyfivenm_lcell_comb ix13806z7109(
// Equation(s):
// nx13806z13 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx13806z14 & ((u_lab3_reg_subtrahend_7__2__aq))) # (!nx13806z14 & (u_lab3_reg_subtrahend_6__2__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx13806z14))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_6__2__aq),
	.datac(u_lab3_reg_subtrahend_7__2__aq),
	.datad(nx13806z14),
	.cin(gnd),
	.combout(nx13806z13),
	.cout());
// synopsys translate_off
defparam ix13806z7109.lut_mask = 16'hF588;
defparam ix13806z7109.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y18_N13
dffeas u_lab3_reg_addend_2__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37041z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_2__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_2__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_2__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N10
fiftyfivenm_lcell_comb ix61632z7095(
// Equation(s):
// nx61632z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_2__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_2__2__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_2__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_2__2__aq),
	.cin(gnd),
	.combout(nx61632z1),
	.cout());
// synopsys translate_off
defparam ix61632z7095.lut_mask = 16'hCFC0;
defparam ix61632z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N11
dffeas u_lab3_reg_subtrahend_2__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx61632z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx1081z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_2__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_2__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_2__2_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y17_N7
dffeas u_lab3_reg_addend_3__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx31906z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_3__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_3__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_3__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N30
fiftyfivenm_lcell_comb ix56497z7095(
// Equation(s):
// nx56497z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_2__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_3__2__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_2__aq),
	.datac(u_lab3_reg_addend_3__2__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx56497z1),
	.cout());
// synopsys translate_off
defparam ix56497z7095.lut_mask = 16'hCCF0;
defparam ix56497z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y17_N31
dffeas u_lab3_reg_subtrahend_3__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx56497z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx61482z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_3__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_3__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_3__2_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y17_N21
dffeas u_lab3_reg_addend_0__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx47311z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_0__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_0__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_0__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N24
fiftyfivenm_lcell_comb ix6366z7095(
// Equation(s):
// nx6366z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_2__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_0__2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_2__aq),
	.datab(u_lab3_reg_addend_0__2__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx6366z1),
	.cout());
// synopsys translate_off
defparam ix6366z7095.lut_mask = 16'hACAC;
defparam ix6366z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y17_N25
dffeas u_lab3_reg_subtrahend_0__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx6366z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx11351z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_0__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_0__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_0__2_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N29
dffeas u_lab3_reg_addend_1__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_2__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42176z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_1__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_1__2_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_1__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N28
fiftyfivenm_lcell_comb ix1231z7095(
// Equation(s):
// nx1231z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_2__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_1__2__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(yes_uart_u_uart_reg_Dout_2__aq),
	.datac(u_lab3_reg_addend_1__2__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx1231z1),
	.cout());
// synopsys translate_off
defparam ix1231z7095.lut_mask = 16'hD8D8;
defparam ix1231z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y15_N29
dffeas u_lab3_reg_subtrahend_1__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx1231z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx6216z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_1__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_1__2_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_1__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N16
fiftyfivenm_lcell_comb ix13806z7108(
// Equation(s):
// nx13806z12 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_1__2__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_0__2__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_0__2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datad(u_lab3_reg_subtrahend_1__2__aq),
	.cin(gnd),
	.combout(nx13806z12),
	.cout());
// synopsys translate_off
defparam ix13806z7108.lut_mask = 16'hF4A4;
defparam ix13806z7108.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N18
fiftyfivenm_lcell_comb ix13806z7107(
// Equation(s):
// nx13806z11 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx13806z12 & ((u_lab3_reg_subtrahend_3__2__aq))) # (!nx13806z12 & (u_lab3_reg_subtrahend_2__2__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx13806z12))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_2__2__aq),
	.datac(u_lab3_reg_subtrahend_3__2__aq),
	.datad(nx13806z12),
	.cin(gnd),
	.combout(nx13806z11),
	.cout());
// synopsys translate_off
defparam ix13806z7107.lut_mask = 16'hF588;
defparam ix13806z7107.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N28
fiftyfivenm_lcell_comb ix13806z7106(
// Equation(s):
// nx13806z10 = (u_lab3_modgen_counter_column_areg_q_2__aq & ((u_lab3_modgen_counter_column_areg_q_3__aq) # ((nx13806z13)))) # (!u_lab3_modgen_counter_column_areg_q_2__aq & (!u_lab3_modgen_counter_column_areg_q_3__aq & ((nx13806z11))))

	.dataa(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datac(nx13806z13),
	.datad(nx13806z11),
	.cin(gnd),
	.combout(nx13806z10),
	.cout());
// synopsys translate_off
defparam ix13806z7106.lut_mask = 16'hB9A8;
defparam ix13806z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N10
fiftyfivenm_lcell_comb ix13806z7105(
// Equation(s):
// u_lab3_p_1n7s3f2[2] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx13806z10 & ((nx13806z17))) # (!nx13806z10 & (nx13806z15)))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx13806z10))))

	.dataa(nx13806z15),
	.datab(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datac(nx13806z17),
	.datad(nx13806z10),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f2[2]),
	.cout());
// synopsys translate_off
defparam ix13806z7105.lut_mask = 16'hF388;
defparam ix13806z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N10
fiftyfivenm_lcell_comb ix32208z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_354_ = (u_lab3_reg_subtrahend_11__2__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_2__aq & !nx27223z1)))) # (!u_lab3_reg_subtrahend_11__2__aq & (((yes_uart_u_uart_reg_Dout_2__aq & !nx27223z1))))

	.dataa(u_lab3_reg_subtrahend_11__2__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_2__aq),
	.datad(nx27223z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_354_),
	.cout());
// synopsys translate_off
defparam ix32208z7095.lut_mask = 16'h88F8;
defparam ix32208z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N11
dffeas u_lab3_reg_minuend_11__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_354_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx27223z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_11__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_11__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_11__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N16
fiftyfivenm_lcell_comb ix27073z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_322_ = (yes_uart_u_uart_reg_Dout_2__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_10__2__aq)) # (!nx22088z1))) # (!yes_uart_u_uart_reg_Dout_2__aq & (u_lab3_reg_state_2__aq & (u_lab3_reg_subtrahend_10__2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_2__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_subtrahend_10__2__aq),
	.datad(nx22088z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_322_),
	.cout());
// synopsys translate_off
defparam ix27073z7095.lut_mask = 16'hC0EA;
defparam ix27073z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N17
dffeas u_lab3_reg_minuend_10__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_322_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx22088z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_10__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_10__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_10__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N30
fiftyfivenm_lcell_comb ix41414z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_258_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_8__2__aq) # ((!nx36429z1 & yes_uart_u_uart_reg_Dout_2__aq)))) # (!u_lab3_reg_state_2__aq & (((!nx36429z1 & yes_uart_u_uart_reg_Dout_2__aq))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_subtrahend_8__2__aq),
	.datac(nx36429z1),
	.datad(yes_uart_u_uart_reg_Dout_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_258_),
	.cout());
// synopsys translate_off
defparam ix41414z7095.lut_mask = 16'h8F88;
defparam ix41414z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y13_N31
dffeas u_lab3_reg_minuend_8__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_258_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36429z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_8__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_8__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_8__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N24
fiftyfivenm_lcell_comb ix46549z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_290_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_9__2__aq) # ((yes_uart_u_uart_reg_Dout_2__aq & !nx41564z1)))) # (!u_lab3_reg_state_2__aq & (yes_uart_u_uart_reg_Dout_2__aq & (!nx41564z1)))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(yes_uart_u_uart_reg_Dout_2__aq),
	.datac(nx41564z1),
	.datad(u_lab3_reg_subtrahend_9__2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_290_),
	.cout());
// synopsys translate_off
defparam ix46549z7095.lut_mask = 16'hAE0C;
defparam ix46549z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y13_N25
dffeas u_lab3_reg_minuend_9__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_290_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41564z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_9__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_9__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_9__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N0
fiftyfivenm_lcell_comb ix13806z7102(
// Equation(s):
// nx13806z7 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_9__2__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_8__2__aq))))

	.dataa(u_lab3_reg_minuend_8__2__aq),
	.datab(u_lab3_reg_minuend_9__2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx13806z7),
	.cout());
// synopsys translate_off
defparam ix13806z7102.lut_mask = 16'hFC0A;
defparam ix13806z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N10
fiftyfivenm_lcell_comb ix13806z7101(
// Equation(s):
// nx13806z6 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx13806z7 & (u_lab3_reg_minuend_11__2__aq)) # (!nx13806z7 & ((u_lab3_reg_minuend_10__2__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx13806z7))))

	.dataa(u_lab3_reg_minuend_11__2__aq),
	.datab(u_lab3_reg_minuend_10__2__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(nx13806z7),
	.cin(gnd),
	.combout(nx13806z6),
	.cout());
// synopsys translate_off
defparam ix13806z7101.lut_mask = 16'hAFC0;
defparam ix13806z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N26
fiftyfivenm_lcell_comb ix52748z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_482_ = (yes_uart_u_uart_reg_Dout_2__aq & (((u_lab3_reg_subtrahend_15__2__aq & u_lab3_reg_state_2__aq)) # (!nx47763z1))) # (!yes_uart_u_uart_reg_Dout_2__aq & (u_lab3_reg_subtrahend_15__2__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_2__aq),
	.datab(u_lab3_reg_subtrahend_15__2__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx47763z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_482_),
	.cout());
// synopsys translate_off
defparam ix52748z7095.lut_mask = 16'hC0EA;
defparam ix52748z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N27
dffeas u_lab3_reg_minuend_15__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_482_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx47763z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_15__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_15__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_15__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N24
fiftyfivenm_lcell_comb ix47613z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_450_ = (nx42628z1 & (u_lab3_reg_state_2__aq & (u_lab3_reg_subtrahend_14__2__aq))) # (!nx42628z1 & ((yes_uart_u_uart_reg_Dout_2__aq) # ((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_14__2__aq))))

	.dataa(nx42628z1),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_subtrahend_14__2__aq),
	.datad(yes_uart_u_uart_reg_Dout_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_450_),
	.cout());
// synopsys translate_off
defparam ix47613z7095.lut_mask = 16'hD5C0;
defparam ix47613z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N25
dffeas u_lab3_reg_minuend_14__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_450_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx42628z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_14__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_14__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_14__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N24
fiftyfivenm_lcell_comb ix37343z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_386_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_12__2__aq) # ((!nx32358z1 & yes_uart_u_uart_reg_Dout_2__aq)))) # (!u_lab3_reg_state_2__aq & (((!nx32358z1 & yes_uart_u_uart_reg_Dout_2__aq))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_subtrahend_12__2__aq),
	.datac(nx32358z1),
	.datad(yes_uart_u_uart_reg_Dout_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_386_),
	.cout());
// synopsys translate_off
defparam ix37343z7095.lut_mask = 16'h8F88;
defparam ix37343z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y13_N25
dffeas u_lab3_reg_minuend_12__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_386_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx32358z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_12__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_12__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_12__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N30
fiftyfivenm_lcell_comb ix42478z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_418_ = (yes_uart_u_uart_reg_Dout_2__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_13__2__aq)) # (!nx37493z1))) # (!yes_uart_u_uart_reg_Dout_2__aq & (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_13__2__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_2__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(nx37493z1),
	.datad(u_lab3_reg_subtrahend_13__2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_418_),
	.cout());
// synopsys translate_off
defparam ix42478z7095.lut_mask = 16'hCE0A;
defparam ix42478z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N31
dffeas u_lab3_reg_minuend_13__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_418_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx37493z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_13__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_13__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_13__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N20
fiftyfivenm_lcell_comb ix13806z7104(
// Equation(s):
// nx13806z9 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_13__2__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_12__2__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_12__2__aq),
	.datac(u_lab3_reg_minuend_13__2__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx13806z9),
	.cout());
// synopsys translate_off
defparam ix13806z7104.lut_mask = 16'hFA44;
defparam ix13806z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N22
fiftyfivenm_lcell_comb ix13806z7103(
// Equation(s):
// nx13806z8 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx13806z9 & (u_lab3_reg_minuend_15__2__aq)) # (!nx13806z9 & ((u_lab3_reg_minuend_14__2__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx13806z9))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_15__2__aq),
	.datac(u_lab3_reg_minuend_14__2__aq),
	.datad(nx13806z9),
	.cin(gnd),
	.combout(nx13806z8),
	.cout());
// synopsys translate_off
defparam ix13806z7103.lut_mask = 16'hDDA0;
defparam ix13806z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N18
fiftyfivenm_lcell_comb ix31144z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_194_ = (yes_uart_u_uart_reg_Dout_2__aq & (((u_lab3_reg_subtrahend_6__2__aq & u_lab3_reg_state_2__aq)) # (!nx26159z1))) # (!yes_uart_u_uart_reg_Dout_2__aq & (u_lab3_reg_subtrahend_6__2__aq & ((u_lab3_reg_state_2__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_2__aq),
	.datab(u_lab3_reg_subtrahend_6__2__aq),
	.datac(nx26159z1),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_194_),
	.cout());
// synopsys translate_off
defparam ix31144z7095.lut_mask = 16'hCE0A;
defparam ix31144z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y12_N19
dffeas u_lab3_reg_minuend_6__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_194_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26159z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_6__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_6__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_6__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N22
fiftyfivenm_lcell_comb ix36279z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_226_ = (u_lab3_reg_subtrahend_7__2__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_2__aq & !nx31294z1)))) # (!u_lab3_reg_subtrahend_7__2__aq & (((yes_uart_u_uart_reg_Dout_2__aq & !nx31294z1))))

	.dataa(u_lab3_reg_subtrahend_7__2__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_2__aq),
	.datad(nx31294z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_226_),
	.cout());
// synopsys translate_off
defparam ix36279z7095.lut_mask = 16'h88F8;
defparam ix36279z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y19_N23
dffeas u_lab3_reg_minuend_7__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_226_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx31294z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_7__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_7__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_7__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N8
fiftyfivenm_lcell_comb ix26009z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_162_ = (yes_uart_u_uart_reg_Dout_2__aq & (((u_lab3_reg_subtrahend_5__2__aq & u_lab3_reg_state_2__aq)) # (!nx21024z1))) # (!yes_uart_u_uart_reg_Dout_2__aq & (u_lab3_reg_subtrahend_5__2__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_2__aq),
	.datab(u_lab3_reg_subtrahend_5__2__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx21024z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_162_),
	.cout());
// synopsys translate_off
defparam ix26009z7095.lut_mask = 16'hC0EA;
defparam ix26009z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y15_N3
dffeas u_lab3_reg_minuend_5__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_lab3_minuend_1n10ss1_162_),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx21024z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_5__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_5__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_5__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y14_N14
fiftyfivenm_lcell_comb ix20874z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_130_ = (yes_uart_u_uart_reg_Dout_2__aq & (((u_lab3_reg_subtrahend_4__2__aq & u_lab3_reg_state_2__aq)) # (!nx15889z1))) # (!yes_uart_u_uart_reg_Dout_2__aq & (u_lab3_reg_subtrahend_4__2__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_2__aq),
	.datab(u_lab3_reg_subtrahend_4__2__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx15889z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_130_),
	.cout());
// synopsys translate_off
defparam ix20874z7095.lut_mask = 16'hC0EA;
defparam ix20874z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y14_N15
dffeas u_lab3_reg_minuend_4__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_130_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx15889z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_4__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_4__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_4__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N2
fiftyfivenm_lcell_comb ix13806z7100(
// Equation(s):
// nx13806z5 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_5__2__aq)) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_4__2__aq)))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_minuend_5__2__aq),
	.datad(u_lab3_reg_minuend_4__2__aq),
	.cin(gnd),
	.combout(nx13806z5),
	.cout());
// synopsys translate_off
defparam ix13806z7100.lut_mask = 16'hD9C8;
defparam ix13806z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N4
fiftyfivenm_lcell_comb ix13806z7099(
// Equation(s):
// nx13806z4 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx13806z5 & ((u_lab3_reg_minuend_7__2__aq))) # (!nx13806z5 & (u_lab3_reg_minuend_6__2__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx13806z5))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_6__2__aq),
	.datac(u_lab3_reg_minuend_7__2__aq),
	.datad(nx13806z5),
	.cin(gnd),
	.combout(nx13806z4),
	.cout());
// synopsys translate_off
defparam ix13806z7099.lut_mask = 16'hF588;
defparam ix13806z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N2
fiftyfivenm_lcell_comb ix54932z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_66_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_2__2__aq) # ((yes_uart_u_uart_reg_Dout_2__aq & !nx59917z1)))) # (!u_lab3_reg_state_2__aq & (yes_uart_u_uart_reg_Dout_2__aq & ((!nx59917z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(yes_uart_u_uart_reg_Dout_2__aq),
	.datac(u_lab3_reg_subtrahend_2__2__aq),
	.datad(nx59917z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_66_),
	.cout());
// synopsys translate_off
defparam ix54932z7095.lut_mask = 16'hA0EC;
defparam ix54932z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N3
dffeas u_lab3_reg_minuend_2__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_66_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59917z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_2__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_2__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_2__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N10
fiftyfivenm_lcell_comb ix49797z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_98_ = (u_lab3_reg_subtrahend_3__2__aq & ((u_lab3_reg_state_2__aq) # ((!nx54782z1 & yes_uart_u_uart_reg_Dout_2__aq)))) # (!u_lab3_reg_subtrahend_3__2__aq & (!nx54782z1 & ((yes_uart_u_uart_reg_Dout_2__aq))))

	.dataa(u_lab3_reg_subtrahend_3__2__aq),
	.datab(nx54782z1),
	.datac(u_lab3_reg_state_2__aq),
	.datad(yes_uart_u_uart_reg_Dout_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_98_),
	.cout());
// synopsys translate_off
defparam ix49797z7095.lut_mask = 16'hB3A0;
defparam ix49797z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y16_N11
dffeas u_lab3_reg_minuend_3__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_98_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx54782z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_3__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_3__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_3__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y12_N2
fiftyfivenm_lcell_comb ix60067z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_34_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_1__2__aq) # ((!nx65052z1 & yes_uart_u_uart_reg_Dout_2__aq)))) # (!u_lab3_reg_state_2__aq & (!nx65052z1 & (yes_uart_u_uart_reg_Dout_2__aq)))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(nx65052z1),
	.datac(yes_uart_u_uart_reg_Dout_2__aq),
	.datad(u_lab3_reg_subtrahend_1__2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_34_),
	.cout());
// synopsys translate_off
defparam ix60067z7095.lut_mask = 16'hBA30;
defparam ix60067z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y15_N7
dffeas u_lab3_reg_minuend_1__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_lab3_minuend_1n10ss1_34_),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx65052z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_1__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_1__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_1__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N16
fiftyfivenm_lcell_comb ix65202z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_2_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_0__2__aq) # ((yes_uart_u_uart_reg_Dout_2__aq & !nx4651z1)))) # (!u_lab3_reg_state_2__aq & (((yes_uart_u_uart_reg_Dout_2__aq & !nx4651z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_subtrahend_0__2__aq),
	.datac(yes_uart_u_uart_reg_Dout_2__aq),
	.datad(nx4651z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_2_),
	.cout());
// synopsys translate_off
defparam ix65202z7095.lut_mask = 16'h88F8;
defparam ix65202z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y17_N17
dffeas u_lab3_reg_minuend_0__2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_2_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx4651z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_0__2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_0__2_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_0__2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N6
fiftyfivenm_lcell_comb ix13806z7098(
// Equation(s):
// nx13806z3 = (u_lab3_modgen_counter_column_areg_q_1__aq & (u_lab3_modgen_counter_column_areg_q_0__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_1__2__aq)) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_0__2__aq)))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datac(u_lab3_reg_minuend_1__2__aq),
	.datad(u_lab3_reg_minuend_0__2__aq),
	.cin(gnd),
	.combout(nx13806z3),
	.cout());
// synopsys translate_off
defparam ix13806z7098.lut_mask = 16'hD9C8;
defparam ix13806z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N16
fiftyfivenm_lcell_comb ix13806z7097(
// Equation(s):
// nx13806z2 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx13806z3 & ((u_lab3_reg_minuend_3__2__aq))) # (!nx13806z3 & (u_lab3_reg_minuend_2__2__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx13806z3))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_2__2__aq),
	.datac(u_lab3_reg_minuend_3__2__aq),
	.datad(nx13806z3),
	.cin(gnd),
	.combout(nx13806z2),
	.cout());
// synopsys translate_off
defparam ix13806z7097.lut_mask = 16'hF588;
defparam ix13806z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y15_N14
fiftyfivenm_lcell_comb ix13806z7096(
// Equation(s):
// nx13806z1 = (u_lab3_modgen_counter_column_areg_q_2__aq & ((u_lab3_modgen_counter_column_areg_q_3__aq) # ((nx13806z4)))) # (!u_lab3_modgen_counter_column_areg_q_2__aq & (!u_lab3_modgen_counter_column_areg_q_3__aq & ((nx13806z2))))

	.dataa(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datac(nx13806z4),
	.datad(nx13806z2),
	.cin(gnd),
	.combout(nx13806z1),
	.cout());
// synopsys translate_off
defparam ix13806z7096.lut_mask = 16'hB9A8;
defparam ix13806z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N0
fiftyfivenm_lcell_comb ix13806z7095(
// Equation(s):
// u_lab3_p_1n7s3f1[2] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx13806z1 & ((nx13806z8))) # (!nx13806z1 & (nx13806z6)))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx13806z1))))

	.dataa(nx13806z6),
	.datab(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datac(nx13806z8),
	.datad(nx13806z1),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f1[2]),
	.cout());
// synopsys translate_off
defparam ix13806z7095.lut_mask = 16'hF388;
defparam ix13806z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y13_N6
fiftyfivenm_lcell_comb yes_uart_u_uart_reg_Rx_Reg_1__afeeder(
// Equation(s):
// yes_uart_u_uart_reg_Rx_Reg_1__afeeder_combout = yes_uart_u_uart_reg_Rx_Reg_2__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_Rx_Reg_2__aq),
	.cin(gnd),
	.combout(yes_uart_u_uart_reg_Rx_Reg_1__afeeder_combout),
	.cout());
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_Reg_1__afeeder.lut_mask = 16'hFF00;
defparam yes_uart_u_uart_reg_Rx_Reg_1__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y13_N7
dffeas yes_uart_u_uart_reg_Rx_Reg_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(yes_uart_u_uart_reg_Rx_Reg_1__afeeder_combout),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2098z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Rx_Reg_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_Reg_1_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Rx_Reg_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X18_Y13_N15
dffeas yes_uart_u_uart_reg_Dout_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Rx_Reg_1__aq),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx46463z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Dout_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Dout_1_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Dout_1_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y17_N27
dffeas u_lab3_reg_addend_11__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37469z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_11__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_11__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_11__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N2
fiftyfivenm_lcell_comb ix27559z7095(
// Equation(s):
// nx27559z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_1__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_11__1__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_1__aq),
	.datad(u_lab3_reg_addend_11__1__aq),
	.cin(gnd),
	.combout(nx27559z1),
	.cout());
// synopsys translate_off
defparam ix27559z7095.lut_mask = 16'hF5A0;
defparam ix27559z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y18_N3
dffeas u_lab3_reg_subtrahend_11__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx27559z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx33541z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_11__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_11__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_11__1_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y18_N11
dffeas u_lab3_reg_addend_10__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42604z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_10__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_10__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_10__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N16
fiftyfivenm_lcell_comb ix32694z7095(
// Equation(s):
// nx32694z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_1__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_10__1__aq))

	.dataa(gnd),
	.datab(u_lab3_reg_addend_10__1__aq),
	.datac(yes_uart_u_uart_reg_Dout_1__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx32694z1),
	.cout());
// synopsys translate_off
defparam ix32694z7095.lut_mask = 16'hF0CC;
defparam ix32694z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y18_N17
dffeas u_lab3_reg_subtrahend_10__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx32694z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx38676z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_10__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_10__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_10__1_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y16_N3
dffeas u_lab3_reg_addend_9__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx64440z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_9__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_9__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_9__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N24
fiftyfivenm_lcell_comb ix40846z7095(
// Equation(s):
// nx40846z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_1__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_9__1__aq))

	.dataa(u_lab3_reg_addend_9__1__aq),
	.datab(gnd),
	.datac(u_lab3_reg_state_1__aq),
	.datad(yes_uart_u_uart_reg_Dout_1__aq),
	.cin(gnd),
	.combout(nx40846z1),
	.cout());
// synopsys translate_off
defparam ix40846z7095.lut_mask = 16'hFA0A;
defparam ix40846z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y16_N25
dffeas u_lab3_reg_subtrahend_9__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx40846z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx34864z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_9__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_9__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_9__1_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y14_N19
dffeas u_lab3_reg_addend_8__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx6231z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_8__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_8__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_8__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N22
fiftyfivenm_lcell_comb ix35711z7095(
// Equation(s):
// nx35711z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_1__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_8__1__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_1__aq),
	.datab(u_lab3_reg_addend_8__1__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx35711z1),
	.cout());
// synopsys translate_off
defparam ix35711z7095.lut_mask = 16'hACAC;
defparam ix35711z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y16_N23
dffeas u_lab3_reg_subtrahend_8__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx35711z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx29729z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_8__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_8__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_8__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N10
fiftyfivenm_lcell_comb ix63011z7112(
// Equation(s):
// nx63011z16 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_9__1__aq) # ((u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_subtrahend_8__1__aq & 
// !u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_reg_subtrahend_9__1__aq),
	.datac(u_lab3_reg_subtrahend_8__1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx63011z16),
	.cout());
// synopsys translate_off
defparam ix63011z7112.lut_mask = 16'hAAD8;
defparam ix63011z7112.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N12
fiftyfivenm_lcell_comb ix63011z7111(
// Equation(s):
// nx63011z15 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx63011z16 & (u_lab3_reg_subtrahend_11__1__aq)) # (!nx63011z16 & ((u_lab3_reg_subtrahend_10__1__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx63011z16))))

	.dataa(u_lab3_reg_subtrahend_11__1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_subtrahend_10__1__aq),
	.datad(nx63011z16),
	.cin(gnd),
	.combout(nx63011z15),
	.cout());
// synopsys translate_off
defparam ix63011z7111.lut_mask = 16'hBBC0;
defparam ix63011z7111.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y14_N9
dffeas u_lab3_reg_addend_6__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16501z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_6__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_6__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_6__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N16
fiftyfivenm_lcell_comb ix40095z7095(
// Equation(s):
// nx40095z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_1__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_6__1__aq))

	.dataa(u_lab3_reg_addend_6__1__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_1__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx40095z1),
	.cout());
// synopsys translate_off
defparam ix40095z7095.lut_mask = 16'hE2E2;
defparam ix40095z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y15_N17
dffeas u_lab3_reg_subtrahend_6__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx40095z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx46077z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_6__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_6__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_6__1_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N3
dffeas u_lab3_reg_addend_7__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx11366z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_7__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_7__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_7__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N10
fiftyfivenm_lcell_comb ix34960z7095(
// Equation(s):
// nx34960z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_1__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_7__1__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_1__aq),
	.datad(u_lab3_reg_addend_7__1__aq),
	.cin(gnd),
	.combout(nx34960z1),
	.cout());
// synopsys translate_off
defparam ix34960z7095.lut_mask = 16'hF3C0;
defparam ix34960z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y15_N11
dffeas u_lab3_reg_subtrahend_7__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx34960z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx40942z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_7__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_7__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_7__1_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y16_N9
dffeas u_lab3_reg_addend_4__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx26771z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_4__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_4__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_4__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N0
fiftyfivenm_lcell_comb ix50365z7095(
// Equation(s):
// nx50365z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_1__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_4__1__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_1__aq),
	.datab(gnd),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_4__1__aq),
	.cin(gnd),
	.combout(nx50365z1),
	.cout());
// synopsys translate_off
defparam ix50365z7095.lut_mask = 16'hAFA0;
defparam ix50365z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N1
dffeas u_lab3_reg_subtrahend_4__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx50365z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx56347z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_4__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_4__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_4__1_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y17_N25
dffeas u_lab3_reg_addend_5__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx21636z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_5__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_5__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_5__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N8
fiftyfivenm_lcell_comb ix45230z7095(
// Equation(s):
// nx45230z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_1__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_5__1__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_1__aq),
	.datab(u_lab3_reg_addend_5__1__aq),
	.datac(gnd),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx45230z1),
	.cout());
// synopsys translate_off
defparam ix45230z7095.lut_mask = 16'hAACC;
defparam ix45230z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N9
dffeas u_lab3_reg_subtrahend_5__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx45230z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx51212z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_5__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_5__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_5__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N10
fiftyfivenm_lcell_comb ix63011z7110(
// Equation(s):
// nx63011z14 = (u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_subtrahend_5__1__aq) # (u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_4__1__aq & 
// ((!u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_reg_subtrahend_4__1__aq),
	.datab(u_lab3_reg_subtrahend_5__1__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx63011z14),
	.cout());
// synopsys translate_off
defparam ix63011z7110.lut_mask = 16'hF0CA;
defparam ix63011z7110.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N4
fiftyfivenm_lcell_comb ix63011z7109(
// Equation(s):
// nx63011z13 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx63011z14 & ((u_lab3_reg_subtrahend_7__1__aq))) # (!nx63011z14 & (u_lab3_reg_subtrahend_6__1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx63011z14))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_6__1__aq),
	.datac(u_lab3_reg_subtrahend_7__1__aq),
	.datad(nx63011z14),
	.cin(gnd),
	.combout(nx63011z13),
	.cout());
// synopsys translate_off
defparam ix63011z7109.lut_mask = 16'hF588;
defparam ix63011z7109.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y17_N3
dffeas u_lab3_reg_addend_3__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx31906z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_3__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_3__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_3__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y17_N2
fiftyfivenm_lcell_comb ix55500z7095(
// Equation(s):
// nx55500z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_1__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_3__1__aq))

	.dataa(u_lab3_reg_addend_3__1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_1__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx55500z1),
	.cout());
// synopsys translate_off
defparam ix55500z7095.lut_mask = 16'hF0AA;
defparam ix55500z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y17_N3
dffeas u_lab3_reg_subtrahend_3__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx55500z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx61482z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_3__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_3__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_3__1_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y18_N25
dffeas u_lab3_reg_addend_2__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37041z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_2__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_2__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_2__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N20
fiftyfivenm_lcell_comb ix60635z7095(
// Equation(s):
// nx60635z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_1__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_2__1__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(u_lab3_reg_addend_2__1__aq),
	.datac(yes_uart_u_uart_reg_Dout_1__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx60635z1),
	.cout());
// synopsys translate_off
defparam ix60635z7095.lut_mask = 16'hE4E4;
defparam ix60635z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N21
dffeas u_lab3_reg_subtrahend_2__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx60635z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx1081z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_2__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_2__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_2__1_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N25
dffeas u_lab3_reg_addend_1__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42176z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_1__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_1__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_1__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N14
fiftyfivenm_lcell_comb ix234z7095(
// Equation(s):
// nx234z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_1__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_1__1__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(yes_uart_u_uart_reg_Dout_1__aq),
	.datac(gnd),
	.datad(u_lab3_reg_addend_1__1__aq),
	.cin(gnd),
	.combout(nx234z1),
	.cout());
// synopsys translate_off
defparam ix234z7095.lut_mask = 16'hDD88;
defparam ix234z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y15_N15
dffeas u_lab3_reg_subtrahend_1__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx234z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx6216z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_1__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_1__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_1__1_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y17_N17
dffeas u_lab3_reg_addend_0__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx47311z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_0__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_0__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_0__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N18
fiftyfivenm_lcell_comb ix5369z7095(
// Equation(s):
// nx5369z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_1__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_0__1__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_1__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_0__1__aq),
	.cin(gnd),
	.combout(nx5369z1),
	.cout());
// synopsys translate_off
defparam ix5369z7095.lut_mask = 16'hCFC0;
defparam ix5369z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y17_N19
dffeas u_lab3_reg_subtrahend_0__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx5369z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx11351z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_0__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_0__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_0__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N28
fiftyfivenm_lcell_comb ix63011z7108(
// Equation(s):
// nx63011z12 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_modgen_counter_column_areg_q_1__aq) # ((u_lab3_reg_subtrahend_1__1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (!u_lab3_modgen_counter_column_areg_q_1__aq & 
// ((u_lab3_reg_subtrahend_0__1__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_subtrahend_1__1__aq),
	.datad(u_lab3_reg_subtrahend_0__1__aq),
	.cin(gnd),
	.combout(nx63011z12),
	.cout());
// synopsys translate_off
defparam ix63011z7108.lut_mask = 16'hB9A8;
defparam ix63011z7108.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N14
fiftyfivenm_lcell_comb ix63011z7107(
// Equation(s):
// nx63011z11 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx63011z12 & (u_lab3_reg_subtrahend_3__1__aq)) # (!nx63011z12 & ((u_lab3_reg_subtrahend_2__1__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx63011z12))))

	.dataa(u_lab3_reg_subtrahend_3__1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_subtrahend_2__1__aq),
	.datad(nx63011z12),
	.cin(gnd),
	.combout(nx63011z11),
	.cout());
// synopsys translate_off
defparam ix63011z7107.lut_mask = 16'hBBC0;
defparam ix63011z7107.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N4
fiftyfivenm_lcell_comb ix63011z7106(
// Equation(s):
// nx63011z10 = (u_lab3_modgen_counter_column_areg_q_3__aq & (u_lab3_modgen_counter_column_areg_q_2__aq)) # (!u_lab3_modgen_counter_column_areg_q_3__aq & ((u_lab3_modgen_counter_column_areg_q_2__aq & (nx63011z13)) # 
// (!u_lab3_modgen_counter_column_areg_q_2__aq & ((nx63011z11)))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(nx63011z13),
	.datad(nx63011z11),
	.cin(gnd),
	.combout(nx63011z10),
	.cout());
// synopsys translate_off
defparam ix63011z7106.lut_mask = 16'hD9C8;
defparam ix63011z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y12_N27
dffeas u_lab3_reg_addend_15__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16929z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_15__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_15__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_15__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N18
fiftyfivenm_lcell_comb ix7019z7095(
// Equation(s):
// nx7019z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_1__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_15__1__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_1__aq),
	.datab(u_lab3_reg_addend_15__1__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx7019z1),
	.cout());
// synopsys translate_off
defparam ix7019z7095.lut_mask = 16'hACAC;
defparam ix7019z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N19
dffeas u_lab3_reg_subtrahend_15__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx7019z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx13001z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_15__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_15__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_15__1_.power_up = "low";
// synopsys translate_on

// Location: FF_X28_Y14_N3
dffeas u_lab3_reg_addend_14__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx22064z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_14__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_14__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_14__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N20
fiftyfivenm_lcell_comb ix12154z7095(
// Equation(s):
// nx12154z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_1__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_14__1__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_1__aq),
	.datab(u_lab3_reg_addend_14__1__aq),
	.datac(u_lab3_reg_state_1__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx12154z1),
	.cout());
// synopsys translate_off
defparam ix12154z7095.lut_mask = 16'hACAC;
defparam ix12154z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y14_N21
dffeas u_lab3_reg_subtrahend_14__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx12154z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx18136z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_14__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_14__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_14__1_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y12_N9
dffeas u_lab3_reg_addend_12__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx32334z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_12__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_12__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_12__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N16
fiftyfivenm_lcell_comb ix22424z7095(
// Equation(s):
// nx22424z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_1__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_12__1__aq))

	.dataa(u_lab3_reg_addend_12__1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_1__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx22424z1),
	.cout());
// synopsys translate_off
defparam ix22424z7095.lut_mask = 16'hF0AA;
defparam ix22424z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y13_N17
dffeas u_lab3_reg_subtrahend_12__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx22424z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx28406z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_12__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_12__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_12__1_.power_up = "low";
// synopsys translate_on

// Location: FF_X28_Y14_N1
dffeas u_lab3_reg_addend_13__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_1__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx27199z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_13__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_13__1_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_13__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N4
fiftyfivenm_lcell_comb ix17289z7095(
// Equation(s):
// nx17289z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_1__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_13__1__aq))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(u_lab3_reg_addend_13__1__aq),
	.datad(yes_uart_u_uart_reg_Dout_1__aq),
	.cin(gnd),
	.combout(nx17289z1),
	.cout());
// synopsys translate_off
defparam ix17289z7095.lut_mask = 16'hFA50;
defparam ix17289z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y13_N5
dffeas u_lab3_reg_subtrahend_13__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx17289z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx23271z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_13__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_13__1_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_13__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y13_N14
fiftyfivenm_lcell_comb ix63011z7114(
// Equation(s):
// nx63011z18 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_13__1__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_12__1__aq))))

	.dataa(u_lab3_reg_subtrahend_12__1__aq),
	.datab(u_lab3_reg_subtrahend_13__1__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx63011z18),
	.cout());
// synopsys translate_off
defparam ix63011z7114.lut_mask = 16'hFC0A;
defparam ix63011z7114.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N30
fiftyfivenm_lcell_comb ix63011z7113(
// Equation(s):
// nx63011z17 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx63011z18 & (u_lab3_reg_subtrahend_15__1__aq)) # (!nx63011z18 & ((u_lab3_reg_subtrahend_14__1__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx63011z18))))

	.dataa(u_lab3_reg_subtrahend_15__1__aq),
	.datab(u_lab3_reg_subtrahend_14__1__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(nx63011z18),
	.cin(gnd),
	.combout(nx63011z17),
	.cout());
// synopsys translate_off
defparam ix63011z7113.lut_mask = 16'hAFC0;
defparam ix63011z7113.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N6
fiftyfivenm_lcell_comb ix63011z7105(
// Equation(s):
// u_lab3_p_1n7s3f2[1] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx63011z10 & ((nx63011z17))) # (!nx63011z10 & (nx63011z15)))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx63011z10))))

	.dataa(nx63011z15),
	.datab(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datac(nx63011z10),
	.datad(nx63011z17),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f2[1]),
	.cout());
// synopsys translate_off
defparam ix63011z7105.lut_mask = 16'hF838;
defparam ix63011z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N4
fiftyfivenm_lcell_comb ix47546z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_289_ = (nx41564z1 & (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_9__1__aq)))) # (!nx41564z1 & ((yes_uart_u_uart_reg_Dout_1__aq) # ((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_9__1__aq))))

	.dataa(nx41564z1),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_1__aq),
	.datad(u_lab3_reg_subtrahend_9__1__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_289_),
	.cout());
// synopsys translate_off
defparam ix47546z7095.lut_mask = 16'hDC50;
defparam ix47546z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y13_N5
dffeas u_lab3_reg_minuend_9__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_289_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41564z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_9__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_9__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_9__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N2
fiftyfivenm_lcell_comb ix42411z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_257_ = (u_lab3_reg_subtrahend_8__1__aq & ((u_lab3_reg_state_2__aq) # ((!nx36429z1 & yes_uart_u_uart_reg_Dout_1__aq)))) # (!u_lab3_reg_subtrahend_8__1__aq & (((!nx36429z1 & yes_uart_u_uart_reg_Dout_1__aq))))

	.dataa(u_lab3_reg_subtrahend_8__1__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(nx36429z1),
	.datad(yes_uart_u_uart_reg_Dout_1__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_257_),
	.cout());
// synopsys translate_off
defparam ix42411z7095.lut_mask = 16'h8F88;
defparam ix42411z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y13_N3
dffeas u_lab3_reg_minuend_8__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_257_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36429z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_8__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_8__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_8__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N10
fiftyfivenm_lcell_comb ix63011z7102(
// Equation(s):
// nx63011z7 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_modgen_counter_column_areg_q_1__aq) # ((u_lab3_reg_minuend_9__1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (!u_lab3_modgen_counter_column_areg_q_1__aq & 
// ((u_lab3_reg_minuend_8__1__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_minuend_9__1__aq),
	.datad(u_lab3_reg_minuend_8__1__aq),
	.cin(gnd),
	.combout(nx63011z7),
	.cout());
// synopsys translate_off
defparam ix63011z7102.lut_mask = 16'hB9A8;
defparam ix63011z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N12
fiftyfivenm_lcell_comb ix33205z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_353_ = (yes_uart_u_uart_reg_Dout_1__aq & (((u_lab3_reg_subtrahend_11__1__aq & u_lab3_reg_state_2__aq)) # (!nx27223z1))) # (!yes_uart_u_uart_reg_Dout_1__aq & (u_lab3_reg_subtrahend_11__1__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_1__aq),
	.datab(u_lab3_reg_subtrahend_11__1__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx27223z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_353_),
	.cout());
// synopsys translate_off
defparam ix33205z7095.lut_mask = 16'hC0EA;
defparam ix33205z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N13
dffeas u_lab3_reg_minuend_11__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_353_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx27223z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_11__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_11__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_11__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N26
fiftyfivenm_lcell_comb ix28070z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_321_ = (yes_uart_u_uart_reg_Dout_1__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_10__1__aq)) # (!nx22088z1))) # (!yes_uart_u_uart_reg_Dout_1__aq & (u_lab3_reg_state_2__aq & (u_lab3_reg_subtrahend_10__1__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_1__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_subtrahend_10__1__aq),
	.datad(nx22088z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_321_),
	.cout());
// synopsys translate_off
defparam ix28070z7095.lut_mask = 16'hC0EA;
defparam ix28070z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N27
dffeas u_lab3_reg_minuend_10__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_321_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx22088z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_10__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_10__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_10__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N12
fiftyfivenm_lcell_comb ix63011z7101(
// Equation(s):
// nx63011z6 = (nx63011z7 & ((u_lab3_reg_minuend_11__1__aq) # ((!u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!nx63011z7 & (((u_lab3_reg_minuend_10__1__aq & u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(nx63011z7),
	.datab(u_lab3_reg_minuend_11__1__aq),
	.datac(u_lab3_reg_minuend_10__1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx63011z6),
	.cout());
// synopsys translate_off
defparam ix63011z7101.lut_mask = 16'hD8AA;
defparam ix63011z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N12
fiftyfivenm_lcell_comb ix48800z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_97_ = (u_lab3_reg_subtrahend_3__1__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_1__aq & !nx54782z1)))) # (!u_lab3_reg_subtrahend_3__1__aq & (yes_uart_u_uart_reg_Dout_1__aq & ((!nx54782z1))))

	.dataa(u_lab3_reg_subtrahend_3__1__aq),
	.datab(yes_uart_u_uart_reg_Dout_1__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx54782z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_97_),
	.cout());
// synopsys translate_off
defparam ix48800z7095.lut_mask = 16'hA0EC;
defparam ix48800z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y16_N13
dffeas u_lab3_reg_minuend_3__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_97_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx54782z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_3__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_3__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_3__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N12
fiftyfivenm_lcell_comb ix53935z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_65_ = (yes_uart_u_uart_reg_Dout_1__aq & (((u_lab3_reg_subtrahend_2__1__aq & u_lab3_reg_state_2__aq)) # (!nx59917z1))) # (!yes_uart_u_uart_reg_Dout_1__aq & (((u_lab3_reg_subtrahend_2__1__aq & u_lab3_reg_state_2__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_1__aq),
	.datab(nx59917z1),
	.datac(u_lab3_reg_subtrahend_2__1__aq),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_65_),
	.cout());
// synopsys translate_off
defparam ix53935z7095.lut_mask = 16'hF222;
defparam ix53935z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N13
dffeas u_lab3_reg_minuend_2__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_65_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59917z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_2__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_2__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_2__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N4
fiftyfivenm_lcell_comb ix59070z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_33_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_1__1__aq) # ((!nx65052z1 & yes_uart_u_uart_reg_Dout_1__aq)))) # (!u_lab3_reg_state_2__aq & (!nx65052z1 & ((yes_uart_u_uart_reg_Dout_1__aq))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(nx65052z1),
	.datac(u_lab3_reg_subtrahend_1__1__aq),
	.datad(yes_uart_u_uart_reg_Dout_1__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_33_),
	.cout());
// synopsys translate_off
defparam ix59070z7095.lut_mask = 16'hB3A0;
defparam ix59070z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y13_N1
dffeas u_lab3_reg_minuend_1__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_lab3_minuend_1n10ss1_33_),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx65052z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_1__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_1__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_1__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N10
fiftyfivenm_lcell_comb ix64205z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_1_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_0__1__aq) # ((yes_uart_u_uart_reg_Dout_1__aq & !nx4651z1)))) # (!u_lab3_reg_state_2__aq & (((yes_uart_u_uart_reg_Dout_1__aq & !nx4651z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_subtrahend_0__1__aq),
	.datac(yes_uart_u_uart_reg_Dout_1__aq),
	.datad(nx4651z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_1_),
	.cout());
// synopsys translate_off
defparam ix64205z7095.lut_mask = 16'h88F8;
defparam ix64205z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y17_N11
dffeas u_lab3_reg_minuend_0__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_1_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx4651z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_0__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_0__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_0__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N0
fiftyfivenm_lcell_comb ix63011z7098(
// Equation(s):
// nx63011z3 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_modgen_counter_column_areg_q_1__aq) # ((u_lab3_reg_minuend_1__1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (!u_lab3_modgen_counter_column_areg_q_1__aq & 
// ((u_lab3_reg_minuend_0__1__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_minuend_1__1__aq),
	.datad(u_lab3_reg_minuend_0__1__aq),
	.cin(gnd),
	.combout(nx63011z3),
	.cout());
// synopsys translate_off
defparam ix63011z7098.lut_mask = 16'hB9A8;
defparam ix63011z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N26
fiftyfivenm_lcell_comb ix63011z7097(
// Equation(s):
// nx63011z2 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx63011z3 & (u_lab3_reg_minuend_3__1__aq)) # (!nx63011z3 & ((u_lab3_reg_minuend_2__1__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx63011z3))))

	.dataa(u_lab3_reg_minuend_3__1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_minuend_2__1__aq),
	.datad(nx63011z3),
	.cin(gnd),
	.combout(nx63011z2),
	.cout());
// synopsys translate_off
defparam ix63011z7097.lut_mask = 16'hBBC0;
defparam ix63011z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N20
fiftyfivenm_lcell_comb ix32141z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_193_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_6__1__aq) # ((!nx26159z1 & yes_uart_u_uart_reg_Dout_1__aq)))) # (!u_lab3_reg_state_2__aq & (!nx26159z1 & ((yes_uart_u_uart_reg_Dout_1__aq))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(nx26159z1),
	.datac(u_lab3_reg_subtrahend_6__1__aq),
	.datad(yes_uart_u_uart_reg_Dout_1__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_193_),
	.cout());
// synopsys translate_off
defparam ix32141z7095.lut_mask = 16'hB3A0;
defparam ix32141z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y12_N21
dffeas u_lab3_reg_minuend_6__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_193_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26159z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_6__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_6__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_6__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N16
fiftyfivenm_lcell_comb ix37276z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_225_ = (yes_uart_u_uart_reg_Dout_1__aq & (((u_lab3_reg_subtrahend_7__1__aq & u_lab3_reg_state_2__aq)) # (!nx31294z1))) # (!yes_uart_u_uart_reg_Dout_1__aq & (u_lab3_reg_subtrahend_7__1__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_1__aq),
	.datab(u_lab3_reg_subtrahend_7__1__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx31294z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_225_),
	.cout());
// synopsys translate_off
defparam ix37276z7095.lut_mask = 16'hC0EA;
defparam ix37276z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y19_N17
dffeas u_lab3_reg_minuend_7__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_225_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx31294z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_7__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_7__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_7__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N26
fiftyfivenm_lcell_comb ix21871z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_129_ = (yes_uart_u_uart_reg_Dout_1__aq & (((u_lab3_reg_subtrahend_4__1__aq & u_lab3_reg_state_2__aq)) # (!nx15889z1))) # (!yes_uart_u_uart_reg_Dout_1__aq & (u_lab3_reg_subtrahend_4__1__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_1__aq),
	.datab(u_lab3_reg_subtrahend_4__1__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx15889z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_129_),
	.cout());
// synopsys translate_off
defparam ix21871z7095.lut_mask = 16'hC0EA;
defparam ix21871z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N27
dffeas u_lab3_reg_minuend_4__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_129_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx15889z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_4__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_4__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_4__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N20
fiftyfivenm_lcell_comb ix27006z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_161_ = (yes_uart_u_uart_reg_Dout_1__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_5__1__aq)) # (!nx21024z1))) # (!yes_uart_u_uart_reg_Dout_1__aq & (u_lab3_reg_state_2__aq & (u_lab3_reg_subtrahend_5__1__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_1__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_subtrahend_5__1__aq),
	.datad(nx21024z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_161_),
	.cout());
// synopsys translate_off
defparam ix27006z7095.lut_mask = 16'hC0EA;
defparam ix27006z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X23_Y13_N21
dffeas u_lab3_reg_minuend_5__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_lab3_minuend_1n10ss1_161_),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx21024z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_5__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_5__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_5__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N20
fiftyfivenm_lcell_comb ix63011z7100(
// Equation(s):
// nx63011z5 = (u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_minuend_5__1__aq) # (u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_4__1__aq & 
// ((!u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_reg_minuend_4__1__aq),
	.datac(u_lab3_reg_minuend_5__1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx63011z5),
	.cout());
// synopsys translate_off
defparam ix63011z7100.lut_mask = 16'hAAE4;
defparam ix63011z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N6
fiftyfivenm_lcell_comb ix63011z7099(
// Equation(s):
// nx63011z4 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx63011z5 & ((u_lab3_reg_minuend_7__1__aq))) # (!nx63011z5 & (u_lab3_reg_minuend_6__1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx63011z5))))

	.dataa(u_lab3_reg_minuend_6__1__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_minuend_7__1__aq),
	.datad(nx63011z5),
	.cin(gnd),
	.combout(nx63011z4),
	.cout());
// synopsys translate_off
defparam ix63011z7099.lut_mask = 16'hF388;
defparam ix63011z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N8
fiftyfivenm_lcell_comb ix63011z7096(
// Equation(s):
// nx63011z1 = (u_lab3_modgen_counter_column_areg_q_2__aq & ((u_lab3_modgen_counter_column_areg_q_3__aq) # ((nx63011z4)))) # (!u_lab3_modgen_counter_column_areg_q_2__aq & (!u_lab3_modgen_counter_column_areg_q_3__aq & (nx63011z2)))

	.dataa(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datac(nx63011z2),
	.datad(nx63011z4),
	.cin(gnd),
	.combout(nx63011z1),
	.cout());
// synopsys translate_off
defparam ix63011z7096.lut_mask = 16'hBA98;
defparam ix63011z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N18
fiftyfivenm_lcell_comb ix38340z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_385_ = (nx32358z1 & (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_12__1__aq)))) # (!nx32358z1 & ((yes_uart_u_uart_reg_Dout_1__aq) # ((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_12__1__aq))))

	.dataa(nx32358z1),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_1__aq),
	.datad(u_lab3_reg_subtrahend_12__1__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_385_),
	.cout());
// synopsys translate_off
defparam ix38340z7095.lut_mask = 16'hDC50;
defparam ix38340z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y13_N19
dffeas u_lab3_reg_minuend_12__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_385_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx32358z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_12__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_12__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_12__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N18
fiftyfivenm_lcell_comb ix43475z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_417_ = (yes_uart_u_uart_reg_Dout_1__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_13__1__aq)) # (!nx37493z1))) # (!yes_uart_u_uart_reg_Dout_1__aq & (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_13__1__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_1__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(nx37493z1),
	.datad(u_lab3_reg_subtrahend_13__1__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_417_),
	.cout());
// synopsys translate_off
defparam ix43475z7095.lut_mask = 16'hCE0A;
defparam ix43475z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N19
dffeas u_lab3_reg_minuend_13__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_417_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx37493z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_13__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_13__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_13__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N22
fiftyfivenm_lcell_comb ix63011z7104(
// Equation(s):
// nx63011z9 = (u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_minuend_13__1__aq) # (u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_12__1__aq & 
// ((!u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_reg_minuend_12__1__aq),
	.datac(u_lab3_reg_minuend_13__1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx63011z9),
	.cout());
// synopsys translate_off
defparam ix63011z7104.lut_mask = 16'hAAE4;
defparam ix63011z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N4
fiftyfivenm_lcell_comb ix53745z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_481_ = (yes_uart_u_uart_reg_Dout_1__aq & (((u_lab3_reg_subtrahend_15__1__aq & u_lab3_reg_state_2__aq)) # (!nx47763z1))) # (!yes_uart_u_uart_reg_Dout_1__aq & (u_lab3_reg_subtrahend_15__1__aq & (u_lab3_reg_state_2__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_1__aq),
	.datab(u_lab3_reg_subtrahend_15__1__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx47763z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_481_),
	.cout());
// synopsys translate_off
defparam ix53745z7095.lut_mask = 16'hC0EA;
defparam ix53745z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N5
dffeas u_lab3_reg_minuend_15__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_481_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx47763z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_15__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_15__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_15__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N14
fiftyfivenm_lcell_comb ix48610z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_449_ = (nx42628z1 & (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_14__1__aq)))) # (!nx42628z1 & ((yes_uart_u_uart_reg_Dout_1__aq) # ((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_14__1__aq))))

	.dataa(nx42628z1),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_1__aq),
	.datad(u_lab3_reg_subtrahend_14__1__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_449_),
	.cout());
// synopsys translate_off
defparam ix48610z7095.lut_mask = 16'hDC50;
defparam ix48610z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y14_N15
dffeas u_lab3_reg_minuend_14__1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_449_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx42628z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_14__1__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_14__1_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_14__1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N24
fiftyfivenm_lcell_comb ix63011z7103(
// Equation(s):
// nx63011z8 = (nx63011z9 & (((u_lab3_reg_minuend_15__1__aq)) # (!u_lab3_modgen_counter_column_areg_q_1__aq))) # (!nx63011z9 & (u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_reg_minuend_14__1__aq))))

	.dataa(nx63011z9),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_minuend_15__1__aq),
	.datad(u_lab3_reg_minuend_14__1__aq),
	.cin(gnd),
	.combout(nx63011z8),
	.cout());
// synopsys translate_off
defparam ix63011z7103.lut_mask = 16'hE6A2;
defparam ix63011z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N18
fiftyfivenm_lcell_comb ix63011z7095(
// Equation(s):
// u_lab3_p_1n7s3f1[1] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx63011z1 & ((nx63011z8))) # (!nx63011z1 & (nx63011z6)))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx63011z1))))

	.dataa(nx63011z6),
	.datab(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datac(nx63011z1),
	.datad(nx63011z8),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f1[1]),
	.cout());
// synopsys translate_off
defparam ix63011z7095.lut_mask = 16'hF838;
defparam ix63011z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y13_N4
fiftyfivenm_lcell_comb yes_uart_u_uart_reg_Rx_Reg_0__afeeder(
// Equation(s):
// yes_uart_u_uart_reg_Rx_Reg_0__afeeder_combout = yes_uart_u_uart_reg_Rx_Reg_1__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_Rx_Reg_1__aq),
	.cin(gnd),
	.combout(yes_uart_u_uart_reg_Rx_Reg_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_Reg_0__afeeder.lut_mask = 16'hFF00;
defparam yes_uart_u_uart_reg_Rx_Reg_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y13_N5
dffeas yes_uart_u_uart_reg_Rx_Reg_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(yes_uart_u_uart_reg_Rx_Reg_0__afeeder_combout),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx2098z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Rx_Reg_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Rx_Reg_0_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Rx_Reg_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N30
fiftyfivenm_lcell_comb yes_uart_u_uart_reg_Dout_0__afeeder(
// Equation(s):
// yes_uart_u_uart_reg_Dout_0__afeeder_combout = yes_uart_u_uart_reg_Rx_Reg_0__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_Rx_Reg_0__aq),
	.cin(gnd),
	.combout(yes_uart_u_uart_reg_Dout_0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam yes_uart_u_uart_reg_Dout_0__afeeder.lut_mask = 16'hFF00;
defparam yes_uart_u_uart_reg_Dout_0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y13_N31
dffeas yes_uart_u_uart_reg_Dout_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(yes_uart_u_uart_reg_Dout_0__afeeder_combout),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx46463z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Dout_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Dout_0_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Dout_0_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y12_N15
dffeas u_lab3_reg_addend_15__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16929z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_15__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_15__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_15__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N20
fiftyfivenm_lcell_comb ix6022z7095(
// Equation(s):
// nx6022z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_0__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_15__0__aq))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(u_lab3_reg_addend_15__0__aq),
	.datad(yes_uart_u_uart_reg_Dout_0__aq),
	.cin(gnd),
	.combout(nx6022z1),
	.cout());
// synopsys translate_off
defparam ix6022z7095.lut_mask = 16'hFC30;
defparam ix6022z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N21
dffeas u_lab3_reg_subtrahend_15__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx6022z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx13001z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_15__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_15__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_15__0_.power_up = "low";
// synopsys translate_on

// Location: FF_X28_Y14_N7
dffeas u_lab3_reg_addend_14__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx22064z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_14__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_14__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_14__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y14_N8
fiftyfivenm_lcell_comb ix11157z7095(
// Equation(s):
// nx11157z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_0__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_14__0__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_0__aq),
	.datad(u_lab3_reg_addend_14__0__aq),
	.cin(gnd),
	.combout(nx11157z1),
	.cout());
// synopsys translate_off
defparam ix11157z7095.lut_mask = 16'hF5A0;
defparam ix11157z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y14_N9
dffeas u_lab3_reg_subtrahend_14__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx11157z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx18136z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_14__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_14__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_14__0_.power_up = "low";
// synopsys translate_on

// Location: FF_X28_Y14_N29
dffeas u_lab3_reg_addend_13__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx27199z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_13__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_13__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_13__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N12
fiftyfivenm_lcell_comb ix16292z7095(
// Equation(s):
// nx16292z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_0__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_13__0__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_0__aq),
	.datac(u_lab3_reg_addend_13__0__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx16292z1),
	.cout());
// synopsys translate_off
defparam ix16292z7095.lut_mask = 16'hCCF0;
defparam ix16292z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y12_N13
dffeas u_lab3_reg_subtrahend_13__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx16292z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx23271z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_13__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_13__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_13__0_.power_up = "low";
// synopsys translate_on

// Location: FF_X23_Y12_N21
dffeas u_lab3_reg_addend_12__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx32334z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_12__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_12__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_12__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N18
fiftyfivenm_lcell_comb ix21427z7095(
// Equation(s):
// nx21427z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_0__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_12__0__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Dout_0__aq),
	.datac(u_lab3_reg_addend_12__0__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx21427z1),
	.cout());
// synopsys translate_off
defparam ix21427z7095.lut_mask = 16'hCCF0;
defparam ix21427z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y12_N19
dffeas u_lab3_reg_subtrahend_12__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx21427z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx28406z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_12__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_12__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_12__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N6
fiftyfivenm_lcell_comb ix36913z7114(
// Equation(s):
// nx36913z18 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_13__0__aq) # ((u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_subtrahend_12__0__aq & 
// !u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_reg_subtrahend_13__0__aq),
	.datab(u_lab3_reg_subtrahend_12__0__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx36913z18),
	.cout());
// synopsys translate_off
defparam ix36913z7114.lut_mask = 16'hF0AC;
defparam ix36913z7114.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y12_N0
fiftyfivenm_lcell_comb ix36913z7113(
// Equation(s):
// nx36913z17 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx36913z18 & (u_lab3_reg_subtrahend_15__0__aq)) # (!nx36913z18 & ((u_lab3_reg_subtrahend_14__0__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx36913z18))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_subtrahend_15__0__aq),
	.datac(u_lab3_reg_subtrahend_14__0__aq),
	.datad(nx36913z18),
	.cin(gnd),
	.combout(nx36913z17),
	.cout());
// synopsys translate_off
defparam ix36913z7113.lut_mask = 16'hDDA0;
defparam ix36913z7113.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y17_N7
dffeas u_lab3_reg_addend_11__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37469z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_11__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_11__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_11__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N22
fiftyfivenm_lcell_comb ix26562z7095(
// Equation(s):
// nx26562z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_0__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_11__0__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_0__aq),
	.datad(u_lab3_reg_addend_11__0__aq),
	.cin(gnd),
	.combout(nx26562z1),
	.cout());
// synopsys translate_off
defparam ix26562z7095.lut_mask = 16'hF5A0;
defparam ix26562z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y18_N23
dffeas u_lab3_reg_subtrahend_11__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx26562z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx33541z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_11__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_11__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_11__0_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y18_N15
dffeas u_lab3_reg_addend_10__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42604z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_10__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_10__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_10__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N20
fiftyfivenm_lcell_comb ix31697z7095(
// Equation(s):
// nx31697z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_0__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_10__0__aq))

	.dataa(gnd),
	.datab(u_lab3_reg_addend_10__0__aq),
	.datac(yes_uart_u_uart_reg_Dout_0__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx31697z1),
	.cout());
// synopsys translate_off
defparam ix31697z7095.lut_mask = 16'hF0CC;
defparam ix31697z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y18_N21
dffeas u_lab3_reg_subtrahend_10__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx31697z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx38676z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_10__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_10__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_10__0_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y16_N15
dffeas u_lab3_reg_addend_9__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx64440z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_9__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_9__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_9__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y16_N28
fiftyfivenm_lcell_comb ix41843z7113(
// Equation(s):
// nx41843z14 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_0__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_9__0__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_0__aq),
	.datab(u_lab3_reg_state_1__aq),
	.datac(u_lab3_reg_addend_9__0__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx41843z14),
	.cout());
// synopsys translate_off
defparam ix41843z7113.lut_mask = 16'hB8B8;
defparam ix41843z7113.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X15_Y15_N20
fiftyfivenm_lcell_comb u_lab3_reg_subtrahend_9__0__afeeder(
// Equation(s):
// u_lab3_reg_subtrahend_9__0__afeeder_combout = nx41843z14

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(nx41843z14),
	.cin(gnd),
	.combout(u_lab3_reg_subtrahend_9__0__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_lab3_reg_subtrahend_9__0__afeeder.lut_mask = 16'hFF00;
defparam u_lab3_reg_subtrahend_9__0__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y15_N21
dffeas u_lab3_reg_subtrahend_9__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_reg_subtrahend_9__0__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx34864z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_9__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_9__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_9__0_.power_up = "low";
// synopsys translate_on

// Location: FF_X19_Y14_N15
dffeas u_lab3_reg_addend_8__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx6231z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_8__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_8__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_8__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X15_Y15_N10
fiftyfivenm_lcell_comb ix36708z7095(
// Equation(s):
// nx36708z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_0__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_8__0__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_0__aq),
	.datab(gnd),
	.datac(u_lab3_reg_addend_8__0__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx36708z1),
	.cout());
// synopsys translate_off
defparam ix36708z7095.lut_mask = 16'hAAF0;
defparam ix36708z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X15_Y15_N11
dffeas u_lab3_reg_subtrahend_8__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx36708z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx29729z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_8__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_8__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_8__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N12
fiftyfivenm_lcell_comb ix36913z7112(
// Equation(s):
// nx36913z16 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_9__0__aq)) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_subtrahend_8__0__aq)))))

	.dataa(u_lab3_reg_subtrahend_9__0__aq),
	.datab(u_lab3_reg_subtrahend_8__0__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx36913z16),
	.cout());
// synopsys translate_off
defparam ix36913z7112.lut_mask = 16'hFA0C;
defparam ix36913z7112.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y15_N14
fiftyfivenm_lcell_comb ix36913z7111(
// Equation(s):
// nx36913z15 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx36913z16 & (u_lab3_reg_subtrahend_11__0__aq)) # (!nx36913z16 & ((u_lab3_reg_subtrahend_10__0__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx36913z16))))

	.dataa(u_lab3_reg_subtrahend_11__0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_subtrahend_10__0__aq),
	.datad(nx36913z16),
	.cin(gnd),
	.combout(nx36913z15),
	.cout());
// synopsys translate_off
defparam ix36913z7111.lut_mask = 16'hBBC0;
defparam ix36913z7111.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y18_N5
dffeas u_lab3_reg_addend_2__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx37041z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_2__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_2__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_2__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N14
fiftyfivenm_lcell_comb ix59638z7095(
// Equation(s):
// nx59638z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_0__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_2__0__aq))

	.dataa(u_lab3_reg_addend_2__0__aq),
	.datab(gnd),
	.datac(u_lab3_reg_state_1__aq),
	.datad(yes_uart_u_uart_reg_Dout_0__aq),
	.cin(gnd),
	.combout(nx59638z1),
	.cout());
// synopsys translate_off
defparam ix59638z7095.lut_mask = 16'hFA0A;
defparam ix59638z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N15
dffeas u_lab3_reg_subtrahend_2__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx59638z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx1081z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_2__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_2__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_2__0_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y17_N15
dffeas u_lab3_reg_addend_3__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx31906z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_3__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_3__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_3__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N26
fiftyfivenm_lcell_comb ix54503z7095(
// Equation(s):
// nx54503z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_0__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_3__0__aq))

	.dataa(gnd),
	.datab(u_lab3_reg_addend_3__0__aq),
	.datac(yes_uart_u_uart_reg_Dout_0__aq),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx54503z1),
	.cout());
// synopsys translate_off
defparam ix54503z7095.lut_mask = 16'hF0CC;
defparam ix54503z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y16_N27
dffeas u_lab3_reg_subtrahend_3__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx54503z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx61482z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_3__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_3__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_3__0_.power_up = "low";
// synopsys translate_on

// Location: FF_X15_Y17_N13
dffeas u_lab3_reg_addend_0__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx47311z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_0__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_0__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_0__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N20
fiftyfivenm_lcell_comb ix4372z7095(
// Equation(s):
// nx4372z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_0__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_0__0__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_0__aq),
	.datab(gnd),
	.datac(u_lab3_reg_state_1__aq),
	.datad(u_lab3_reg_addend_0__0__aq),
	.cin(gnd),
	.combout(nx4372z1),
	.cout());
// synopsys translate_off
defparam ix4372z7095.lut_mask = 16'hAFA0;
defparam ix4372z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y17_N21
dffeas u_lab3_reg_subtrahend_0__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx4372z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx11351z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_0__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_0__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_0__0_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N21
dffeas u_lab3_reg_addend_1__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx42176z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_1__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_1__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_1__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y15_N0
fiftyfivenm_lcell_comb ix64773z7095(
// Equation(s):
// nx64773z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_0__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_1__0__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_reg_Dout_0__aq),
	.datad(u_lab3_reg_addend_1__0__aq),
	.cin(gnd),
	.combout(nx64773z1),
	.cout());
// synopsys translate_off
defparam ix64773z7095.lut_mask = 16'hF5A0;
defparam ix64773z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y15_N1
dffeas u_lab3_reg_subtrahend_1__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx64773z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx6216z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_1__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_1__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_1__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N16
fiftyfivenm_lcell_comb ix36913z7108(
// Equation(s):
// nx36913z12 = (u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_modgen_counter_column_areg_q_1__aq) # ((u_lab3_reg_subtrahend_1__0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (!u_lab3_modgen_counter_column_areg_q_1__aq & 
// (u_lab3_reg_subtrahend_0__0__aq)))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_subtrahend_0__0__aq),
	.datad(u_lab3_reg_subtrahend_1__0__aq),
	.cin(gnd),
	.combout(nx36913z12),
	.cout());
// synopsys translate_off
defparam ix36913z7108.lut_mask = 16'hBA98;
defparam ix36913z7108.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N2
fiftyfivenm_lcell_comb ix36913z7107(
// Equation(s):
// nx36913z11 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx36913z12 & ((u_lab3_reg_subtrahend_3__0__aq))) # (!nx36913z12 & (u_lab3_reg_subtrahend_2__0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx36913z12))))

	.dataa(u_lab3_reg_subtrahend_2__0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_subtrahend_3__0__aq),
	.datad(nx36913z12),
	.cin(gnd),
	.combout(nx36913z11),
	.cout());
// synopsys translate_off
defparam ix36913z7107.lut_mask = 16'hF388;
defparam ix36913z7107.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y14_N5
dffeas u_lab3_reg_addend_6__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx16501z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_6__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_6__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_6__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N4
fiftyfivenm_lcell_comb ix39098z7095(
// Equation(s):
// nx39098z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_0__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_6__0__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_0__aq),
	.datad(u_lab3_reg_addend_6__0__aq),
	.cin(gnd),
	.combout(nx39098z1),
	.cout());
// synopsys translate_off
defparam ix39098z7095.lut_mask = 16'hF3C0;
defparam ix39098z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y15_N5
dffeas u_lab3_reg_subtrahend_6__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx39098z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx46077z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_6__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_6__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_6__0_.power_up = "low";
// synopsys translate_on

// Location: FF_X24_Y15_N15
dffeas u_lab3_reg_addend_7__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx11366z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_7__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_7__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_7__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y15_N6
fiftyfivenm_lcell_comb ix33963z7095(
// Equation(s):
// nx33963z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_0__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_7__0__aq)))

	.dataa(gnd),
	.datab(u_lab3_reg_state_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_0__aq),
	.datad(u_lab3_reg_addend_7__0__aq),
	.cin(gnd),
	.combout(nx33963z1),
	.cout());
// synopsys translate_off
defparam ix33963z7095.lut_mask = 16'hF3C0;
defparam ix33963z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y15_N7
dffeas u_lab3_reg_subtrahend_7__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx33963z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx40942z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_7__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_7__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_7__0_.power_up = "low";
// synopsys translate_on

// Location: FF_X16_Y16_N21
dffeas u_lab3_reg_addend_4__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx26771z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_4__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_4__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_4__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N22
fiftyfivenm_lcell_comb ix49368z7095(
// Equation(s):
// nx49368z1 = (u_lab3_reg_state_1__aq & ((yes_uart_u_uart_reg_Dout_0__aq))) # (!u_lab3_reg_state_1__aq & (u_lab3_reg_addend_4__0__aq))

	.dataa(u_lab3_reg_addend_4__0__aq),
	.datab(yes_uart_u_uart_reg_Dout_0__aq),
	.datac(gnd),
	.datad(u_lab3_reg_state_1__aq),
	.cin(gnd),
	.combout(nx49368z1),
	.cout());
// synopsys translate_off
defparam ix49368z7095.lut_mask = 16'hCCAA;
defparam ix49368z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N23
dffeas u_lab3_reg_subtrahend_4__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx49368z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx56347z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_4__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_4__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_4__0_.power_up = "low";
// synopsys translate_on

// Location: FF_X22_Y17_N21
dffeas u_lab3_reg_addend_5__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(yes_uart_u_uart_reg_Dout_0__aq),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_3__aq),
	.sload(vcc),
	.ena(nx21636z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_addend_5__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_addend_5__0_.is_wysiwyg = "true";
defparam u_lab3_reg_addend_5__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N0
fiftyfivenm_lcell_comb ix44233z7095(
// Equation(s):
// nx44233z1 = (u_lab3_reg_state_1__aq & (yes_uart_u_uart_reg_Dout_0__aq)) # (!u_lab3_reg_state_1__aq & ((u_lab3_reg_addend_5__0__aq)))

	.dataa(u_lab3_reg_state_1__aq),
	.datab(yes_uart_u_uart_reg_Dout_0__aq),
	.datac(u_lab3_reg_addend_5__0__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx44233z1),
	.cout());
// synopsys translate_off
defparam ix44233z7095.lut_mask = 16'hD8D8;
defparam ix44233z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y17_N1
dffeas u_lab3_reg_subtrahend_5__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx44233z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx51212z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_subtrahend_5__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_subtrahend_5__0_.is_wysiwyg = "true";
defparam u_lab3_reg_subtrahend_5__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N2
fiftyfivenm_lcell_comb ix36913z7110(
// Equation(s):
// nx36913z14 = (u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_subtrahend_5__0__aq) # (u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_subtrahend_4__0__aq & 
// ((!u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_reg_subtrahend_4__0__aq),
	.datab(u_lab3_reg_subtrahend_5__0__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx36913z14),
	.cout());
// synopsys translate_off
defparam ix36913z7110.lut_mask = 16'hF0CA;
defparam ix36913z7110.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N28
fiftyfivenm_lcell_comb ix36913z7109(
// Equation(s):
// nx36913z13 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx36913z14 & ((u_lab3_reg_subtrahend_7__0__aq))) # (!nx36913z14 & (u_lab3_reg_subtrahend_6__0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx36913z14))))

	.dataa(u_lab3_reg_subtrahend_6__0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_subtrahend_7__0__aq),
	.datad(nx36913z14),
	.cin(gnd),
	.combout(nx36913z13),
	.cout());
// synopsys translate_off
defparam ix36913z7109.lut_mask = 16'hF388;
defparam ix36913z7109.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N2
fiftyfivenm_lcell_comb ix36913z7106(
// Equation(s):
// nx36913z10 = (u_lab3_modgen_counter_column_areg_q_3__aq & (u_lab3_modgen_counter_column_areg_q_2__aq)) # (!u_lab3_modgen_counter_column_areg_q_3__aq & ((u_lab3_modgen_counter_column_areg_q_2__aq & ((nx36913z13))) # 
// (!u_lab3_modgen_counter_column_areg_q_2__aq & (nx36913z11))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(nx36913z11),
	.datad(nx36913z13),
	.cin(gnd),
	.combout(nx36913z10),
	.cout());
// synopsys translate_off
defparam ix36913z7106.lut_mask = 16'hDC98;
defparam ix36913z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N30
fiftyfivenm_lcell_comb ix36913z7105(
// Equation(s):
// u_lab3_p_1n7s3f2[0] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx36913z10 & (nx36913z17)) # (!nx36913z10 & ((nx36913z15))))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx36913z10))))

	.dataa(nx36913z17),
	.datab(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datac(nx36913z15),
	.datad(nx36913z10),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f2[0]),
	.cout());
// synopsys translate_off
defparam ix36913z7105.lut_mask = 16'hBBC0;
defparam ix36913z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X20_Y16_N14
fiftyfivenm_lcell_comb ix34202z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_352_ = (yes_uart_u_uart_reg_Dout_0__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_11__0__aq)) # (!nx27223z1))) # (!yes_uart_u_uart_reg_Dout_0__aq & (u_lab3_reg_state_2__aq & (u_lab3_reg_subtrahend_11__0__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_0__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_subtrahend_11__0__aq),
	.datad(nx27223z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_352_),
	.cout());
// synopsys translate_off
defparam ix34202z7095.lut_mask = 16'hC0EA;
defparam ix34202z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y16_N15
dffeas u_lab3_reg_minuend_11__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_352_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx27223z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_11__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_11__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_11__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y14_N4
fiftyfivenm_lcell_comb ix29067z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_320_ = (yes_uart_u_uart_reg_Dout_0__aq & (((u_lab3_reg_state_2__aq & u_lab3_reg_subtrahend_10__0__aq)) # (!nx22088z1))) # (!yes_uart_u_uart_reg_Dout_0__aq & (u_lab3_reg_state_2__aq & (u_lab3_reg_subtrahend_10__0__aq)))

	.dataa(yes_uart_u_uart_reg_Dout_0__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(u_lab3_reg_subtrahend_10__0__aq),
	.datad(nx22088z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_320_),
	.cout());
// synopsys translate_off
defparam ix29067z7095.lut_mask = 16'hC0EA;
defparam ix29067z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y14_N5
dffeas u_lab3_reg_minuend_10__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_320_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx22088z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_10__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_10__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_10__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N22
fiftyfivenm_lcell_comb ix48543z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_288_ = (yes_uart_u_uart_reg_Dout_0__aq & (((u_lab3_reg_subtrahend_9__0__aq & u_lab3_reg_state_2__aq)) # (!nx41564z1))) # (!yes_uart_u_uart_reg_Dout_0__aq & (u_lab3_reg_subtrahend_9__0__aq & ((u_lab3_reg_state_2__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_0__aq),
	.datab(u_lab3_reg_subtrahend_9__0__aq),
	.datac(nx41564z1),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_288_),
	.cout());
// synopsys translate_off
defparam ix48543z7095.lut_mask = 16'hCE0A;
defparam ix48543z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y15_N23
dffeas u_lab3_reg_minuend_9__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_288_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx41564z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_9__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_9__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_9__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N20
fiftyfivenm_lcell_comb ix43408z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_256_ = (yes_uart_u_uart_reg_Dout_0__aq & (((u_lab3_reg_subtrahend_8__0__aq & u_lab3_reg_state_2__aq)) # (!nx36429z1))) # (!yes_uart_u_uart_reg_Dout_0__aq & (((u_lab3_reg_subtrahend_8__0__aq & u_lab3_reg_state_2__aq))))

	.dataa(yes_uart_u_uart_reg_Dout_0__aq),
	.datab(nx36429z1),
	.datac(u_lab3_reg_subtrahend_8__0__aq),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_256_),
	.cout());
// synopsys translate_off
defparam ix43408z7095.lut_mask = 16'hF222;
defparam ix43408z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y15_N21
dffeas u_lab3_reg_minuend_8__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_256_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx36429z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_8__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_8__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_8__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N16
fiftyfivenm_lcell_comb ix36913z7102(
// Equation(s):
// nx36913z7 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_9__0__aq)) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_8__0__aq)))))

	.dataa(u_lab3_reg_minuend_9__0__aq),
	.datab(u_lab3_reg_minuend_8__0__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx36913z7),
	.cout());
// synopsys translate_off
defparam ix36913z7102.lut_mask = 16'hFA0C;
defparam ix36913z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y15_N26
fiftyfivenm_lcell_comb ix36913z7101(
// Equation(s):
// nx36913z6 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx36913z7 & (u_lab3_reg_minuend_11__0__aq)) # (!nx36913z7 & ((u_lab3_reg_minuend_10__0__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx36913z7))))

	.dataa(u_lab3_reg_minuend_11__0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_minuend_10__0__aq),
	.datad(nx36913z7),
	.cin(gnd),
	.combout(nx36913z6),
	.cout());
// synopsys translate_off
defparam ix36913z7101.lut_mask = 16'hBBC0;
defparam ix36913z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N6
fiftyfivenm_lcell_comb ix49607z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_448_ = (u_lab3_reg_subtrahend_14__0__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_0__aq & !nx42628z1)))) # (!u_lab3_reg_subtrahend_14__0__aq & (((yes_uart_u_uart_reg_Dout_0__aq & !nx42628z1))))

	.dataa(u_lab3_reg_subtrahend_14__0__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_0__aq),
	.datad(nx42628z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_448_),
	.cout());
// synopsys translate_off
defparam ix49607z7095.lut_mask = 16'h88F8;
defparam ix49607z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N7
dffeas u_lab3_reg_minuend_14__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_448_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx42628z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_14__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_14__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_14__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X22_Y12_N6
fiftyfivenm_lcell_comb ix54742z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_480_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_15__0__aq) # ((yes_uart_u_uart_reg_Dout_0__aq & !nx47763z1)))) # (!u_lab3_reg_state_2__aq & (yes_uart_u_uart_reg_Dout_0__aq & ((!nx47763z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(yes_uart_u_uart_reg_Dout_0__aq),
	.datac(u_lab3_reg_subtrahend_15__0__aq),
	.datad(nx47763z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_480_),
	.cout());
// synopsys translate_off
defparam ix54742z7095.lut_mask = 16'hA0EC;
defparam ix54742z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X22_Y12_N7
dffeas u_lab3_reg_minuend_15__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_480_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx47763z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_15__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_15__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_15__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y13_N4
fiftyfivenm_lcell_comb ix39337z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_384_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_12__0__aq) # ((yes_uart_u_uart_reg_Dout_0__aq & !nx32358z1)))) # (!u_lab3_reg_state_2__aq & (yes_uart_u_uart_reg_Dout_0__aq & (!nx32358z1)))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(yes_uart_u_uart_reg_Dout_0__aq),
	.datac(nx32358z1),
	.datad(u_lab3_reg_subtrahend_12__0__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_384_),
	.cout());
// synopsys translate_off
defparam ix39337z7095.lut_mask = 16'hAE0C;
defparam ix39337z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y13_N5
dffeas u_lab3_reg_minuend_12__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_384_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx32358z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_12__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_12__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_12__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X27_Y12_N4
fiftyfivenm_lcell_comb ix44472z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_416_ = (u_lab3_reg_subtrahend_13__0__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_0__aq & !nx37493z1)))) # (!u_lab3_reg_subtrahend_13__0__aq & (yes_uart_u_uart_reg_Dout_0__aq & (!nx37493z1)))

	.dataa(u_lab3_reg_subtrahend_13__0__aq),
	.datab(yes_uart_u_uart_reg_Dout_0__aq),
	.datac(nx37493z1),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_416_),
	.cout());
// synopsys translate_off
defparam ix44472z7095.lut_mask = 16'hAE0C;
defparam ix44472z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X27_Y12_N5
dffeas u_lab3_reg_minuend_13__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_416_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx37493z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_13__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_13__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_13__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N28
fiftyfivenm_lcell_comb ix36913z7104(
// Equation(s):
// nx36913z9 = (u_lab3_modgen_counter_column_areg_q_1__aq & (((u_lab3_modgen_counter_column_areg_q_0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & ((u_lab3_modgen_counter_column_areg_q_0__aq & ((u_lab3_reg_minuend_13__0__aq))) # 
// (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_12__0__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_12__0__aq),
	.datac(u_lab3_reg_minuend_13__0__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_0__aq),
	.cin(gnd),
	.combout(nx36913z9),
	.cout());
// synopsys translate_off
defparam ix36913z7104.lut_mask = 16'hFA44;
defparam ix36913z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y13_N14
fiftyfivenm_lcell_comb ix36913z7103(
// Equation(s):
// nx36913z8 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx36913z9 & ((u_lab3_reg_minuend_15__0__aq))) # (!nx36913z9 & (u_lab3_reg_minuend_14__0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx36913z9))))

	.dataa(u_lab3_reg_minuend_14__0__aq),
	.datab(u_lab3_reg_minuend_15__0__aq),
	.datac(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datad(nx36913z9),
	.cin(gnd),
	.combout(nx36913z8),
	.cout());
// synopsys translate_off
defparam ix36913z7103.lut_mask = 16'hCFA0;
defparam ix36913z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y12_N14
fiftyfivenm_lcell_comb ix33138z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_192_ = (u_lab3_reg_subtrahend_6__0__aq & ((u_lab3_reg_state_2__aq) # ((!nx26159z1 & yes_uart_u_uart_reg_Dout_0__aq)))) # (!u_lab3_reg_subtrahend_6__0__aq & (!nx26159z1 & (yes_uart_u_uart_reg_Dout_0__aq)))

	.dataa(u_lab3_reg_subtrahend_6__0__aq),
	.datab(nx26159z1),
	.datac(yes_uart_u_uart_reg_Dout_0__aq),
	.datad(u_lab3_reg_state_2__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_192_),
	.cout());
// synopsys translate_off
defparam ix33138z7095.lut_mask = 16'hBA30;
defparam ix33138z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y12_N15
dffeas u_lab3_reg_minuend_6__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_192_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx26159z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_6__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_6__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_6__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y19_N18
fiftyfivenm_lcell_comb ix38273z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_224_ = (u_lab3_reg_subtrahend_7__0__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_0__aq & !nx31294z1)))) # (!u_lab3_reg_subtrahend_7__0__aq & (yes_uart_u_uart_reg_Dout_0__aq & ((!nx31294z1))))

	.dataa(u_lab3_reg_subtrahend_7__0__aq),
	.datab(yes_uart_u_uart_reg_Dout_0__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx31294z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_224_),
	.cout());
// synopsys translate_off
defparam ix38273z7095.lut_mask = 16'hA0EC;
defparam ix38273z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y19_N19
dffeas u_lab3_reg_minuend_7__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_224_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx31294z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_7__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_7__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_7__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X24_Y16_N12
fiftyfivenm_lcell_comb ix22868z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_128_ = (u_lab3_reg_subtrahend_4__0__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_0__aq & !nx15889z1)))) # (!u_lab3_reg_subtrahend_4__0__aq & (((yes_uart_u_uart_reg_Dout_0__aq & !nx15889z1))))

	.dataa(u_lab3_reg_subtrahend_4__0__aq),
	.datab(u_lab3_reg_state_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_0__aq),
	.datad(nx15889z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_128_),
	.cout());
// synopsys translate_off
defparam ix22868z7095.lut_mask = 16'h88F8;
defparam ix22868z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X24_Y16_N13
dffeas u_lab3_reg_minuend_4__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_128_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx15889z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_4__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_4__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_4__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y17_N14
fiftyfivenm_lcell_comb ix28003z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_160_ = (nx21024z1 & (u_lab3_reg_subtrahend_5__0__aq & (u_lab3_reg_state_2__aq))) # (!nx21024z1 & ((yes_uart_u_uart_reg_Dout_0__aq) # ((u_lab3_reg_subtrahend_5__0__aq & u_lab3_reg_state_2__aq))))

	.dataa(nx21024z1),
	.datab(u_lab3_reg_subtrahend_5__0__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(yes_uart_u_uart_reg_Dout_0__aq),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_160_),
	.cout());
// synopsys translate_off
defparam ix28003z7095.lut_mask = 16'hD5C0;
defparam ix28003z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y16_N7
dffeas u_lab3_reg_minuend_5__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_lab3_minuend_1n10ss1_160_),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx21024z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_5__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_5__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_5__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N6
fiftyfivenm_lcell_comb ix36913z7100(
// Equation(s):
// nx36913z5 = (u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_minuend_5__0__aq) # (u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_4__0__aq & 
// ((!u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_reg_minuend_4__0__aq),
	.datac(u_lab3_reg_minuend_5__0__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx36913z5),
	.cout());
// synopsys translate_off
defparam ix36913z7100.lut_mask = 16'hAAE4;
defparam ix36913z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N8
fiftyfivenm_lcell_comb ix36913z7099(
// Equation(s):
// nx36913z4 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx36913z5 & ((u_lab3_reg_minuend_7__0__aq))) # (!nx36913z5 & (u_lab3_reg_minuend_6__0__aq)))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx36913z5))))

	.dataa(u_lab3_reg_minuend_6__0__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datac(u_lab3_reg_minuend_7__0__aq),
	.datad(nx36913z5),
	.cin(gnd),
	.combout(nx36913z4),
	.cout());
// synopsys translate_off
defparam ix36913z7099.lut_mask = 16'hF388;
defparam ix36913z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y16_N22
fiftyfivenm_lcell_comb ix47803z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_96_ = (u_lab3_reg_subtrahend_3__0__aq & ((u_lab3_reg_state_2__aq) # ((yes_uart_u_uart_reg_Dout_0__aq & !nx54782z1)))) # (!u_lab3_reg_subtrahend_3__0__aq & (yes_uart_u_uart_reg_Dout_0__aq & ((!nx54782z1))))

	.dataa(u_lab3_reg_subtrahend_3__0__aq),
	.datab(yes_uart_u_uart_reg_Dout_0__aq),
	.datac(u_lab3_reg_state_2__aq),
	.datad(nx54782z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_96_),
	.cout());
// synopsys translate_off
defparam ix47803z7095.lut_mask = 16'hA0EC;
defparam ix47803z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y16_N23
dffeas u_lab3_reg_minuend_3__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_96_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx54782z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_3__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_3__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_3__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X25_Y16_N30
fiftyfivenm_lcell_comb ix52938z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_64_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_2__0__aq) # ((yes_uart_u_uart_reg_Dout_0__aq & !nx59917z1)))) # (!u_lab3_reg_state_2__aq & (yes_uart_u_uart_reg_Dout_0__aq & ((!nx59917z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(yes_uart_u_uart_reg_Dout_0__aq),
	.datac(u_lab3_reg_subtrahend_2__0__aq),
	.datad(nx59917z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_64_),
	.cout());
// synopsys translate_off
defparam ix52938z7095.lut_mask = 16'hA0EC;
defparam ix52938z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X25_Y16_N31
dffeas u_lab3_reg_minuend_2__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_64_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx59917z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_2__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_2__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_2__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X20_Y17_N4
fiftyfivenm_lcell_comb ix63208z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_0_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_0__0__aq) # ((yes_uart_u_uart_reg_Dout_0__aq & !nx4651z1)))) # (!u_lab3_reg_state_2__aq & (((yes_uart_u_uart_reg_Dout_0__aq & !nx4651z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_subtrahend_0__0__aq),
	.datac(yes_uart_u_uart_reg_Dout_0__aq),
	.datad(nx4651z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_0_),
	.cout());
// synopsys translate_off
defparam ix63208z7095.lut_mask = 16'h88F8;
defparam ix63208z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X20_Y17_N5
dffeas u_lab3_reg_minuend_0__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_lab3_minuend_1n10ss1_0_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx4651z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_0__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_0__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_0__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X23_Y13_N30
fiftyfivenm_lcell_comb ix58073z7095(
// Equation(s):
// u_lab3_minuend_1n10ss1_32_ = (u_lab3_reg_state_2__aq & ((u_lab3_reg_subtrahend_1__0__aq) # ((yes_uart_u_uart_reg_Dout_0__aq & !nx65052z1)))) # (!u_lab3_reg_state_2__aq & (((yes_uart_u_uart_reg_Dout_0__aq & !nx65052z1))))

	.dataa(u_lab3_reg_state_2__aq),
	.datab(u_lab3_reg_subtrahend_1__0__aq),
	.datac(yes_uart_u_uart_reg_Dout_0__aq),
	.datad(nx65052z1),
	.cin(gnd),
	.combout(u_lab3_minuend_1n10ss1_32_),
	.cout());
// synopsys translate_off
defparam ix58073z7095.lut_mask = 16'h88F8;
defparam ix58073z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X19_Y16_N3
dffeas u_lab3_reg_minuend_1__0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(gnd),
	.asdata(u_lab3_minuend_1n10ss1_32_),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx65052z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_minuend_1__0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_minuend_1__0_.is_wysiwyg = "true";
defparam u_lab3_reg_minuend_1__0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N2
fiftyfivenm_lcell_comb ix36913z7098(
// Equation(s):
// nx36913z3 = (u_lab3_modgen_counter_column_areg_q_0__aq & (((u_lab3_reg_minuend_1__0__aq) # (u_lab3_modgen_counter_column_areg_q_1__aq)))) # (!u_lab3_modgen_counter_column_areg_q_0__aq & (u_lab3_reg_minuend_0__0__aq & 
// ((!u_lab3_modgen_counter_column_areg_q_1__aq))))

	.dataa(u_lab3_modgen_counter_column_areg_q_0__aq),
	.datab(u_lab3_reg_minuend_0__0__aq),
	.datac(u_lab3_reg_minuend_1__0__aq),
	.datad(u_lab3_modgen_counter_column_areg_q_1__aq),
	.cin(gnd),
	.combout(nx36913z3),
	.cout());
// synopsys translate_off
defparam ix36913z7098.lut_mask = 16'hAAE4;
defparam ix36913z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N20
fiftyfivenm_lcell_comb ix36913z7097(
// Equation(s):
// nx36913z2 = (u_lab3_modgen_counter_column_areg_q_1__aq & ((nx36913z3 & (u_lab3_reg_minuend_3__0__aq)) # (!nx36913z3 & ((u_lab3_reg_minuend_2__0__aq))))) # (!u_lab3_modgen_counter_column_areg_q_1__aq & (((nx36913z3))))

	.dataa(u_lab3_modgen_counter_column_areg_q_1__aq),
	.datab(u_lab3_reg_minuend_3__0__aq),
	.datac(u_lab3_reg_minuend_2__0__aq),
	.datad(nx36913z3),
	.cin(gnd),
	.combout(nx36913z2),
	.cout());
// synopsys translate_off
defparam ix36913z7097.lut_mask = 16'hDDA0;
defparam ix36913z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y16_N18
fiftyfivenm_lcell_comb ix36913z7096(
// Equation(s):
// nx36913z1 = (u_lab3_modgen_counter_column_areg_q_3__aq & (u_lab3_modgen_counter_column_areg_q_2__aq)) # (!u_lab3_modgen_counter_column_areg_q_3__aq & ((u_lab3_modgen_counter_column_areg_q_2__aq & (nx36913z4)) # (!u_lab3_modgen_counter_column_areg_q_2__aq 
// & ((nx36913z2)))))

	.dataa(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datab(u_lab3_modgen_counter_column_areg_q_2__aq),
	.datac(nx36913z4),
	.datad(nx36913z2),
	.cin(gnd),
	.combout(nx36913z1),
	.cout());
// synopsys translate_off
defparam ix36913z7096.lut_mask = 16'hD9C8;
defparam ix36913z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N8
fiftyfivenm_lcell_comb ix36913z7095(
// Equation(s):
// u_lab3_p_1n7s3f1[0] = (u_lab3_modgen_counter_column_areg_q_3__aq & ((nx36913z1 & ((nx36913z8))) # (!nx36913z1 & (nx36913z6)))) # (!u_lab3_modgen_counter_column_areg_q_3__aq & (((nx36913z1))))

	.dataa(nx36913z6),
	.datab(u_lab3_modgen_counter_column_areg_q_3__aq),
	.datac(nx36913z8),
	.datad(nx36913z1),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3f1[0]),
	.cout());
// synopsys translate_off
defparam ix36913z7095.lut_mask = 16'hF388;
defparam ix36913z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N12
fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix35_fadd(
// Equation(s):
// u_lab3_p_1n7s3_0_ = (u_lab3_p_1n7s3f2[0] & (u_lab3_p_1n7s3f1[0] $ (VCC))) # (!u_lab3_p_1n7s3f2[0] & ((u_lab3_p_1n7s3f1[0]) # (GND)))
// nx63011z19 = CARRY((u_lab3_p_1n7s3f1[0]) # (!u_lab3_p_1n7s3f2[0]))

	.dataa(u_lab3_p_1n7s3f2[0]),
	.datab(u_lab3_p_1n7s3f1[0]),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(u_lab3_p_1n7s3_0_),
	.cout(nx63011z19));
// synopsys translate_off
defparam u_lab3_p_sub8_1i275_ix35_fadd.lut_mask = 16'h66DD;
defparam u_lab3_p_sub8_1i275_ix35_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N14
fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix39_fadd(
// Equation(s):
// u_lab3_p_1n7s3_1_ = (u_lab3_p_1n7s3f2[1] & ((u_lab3_p_1n7s3f1[1] & (!nx63011z19)) # (!u_lab3_p_1n7s3f1[1] & ((nx63011z19) # (GND))))) # (!u_lab3_p_1n7s3f2[1] & ((u_lab3_p_1n7s3f1[1] & (nx63011z19 & VCC)) # (!u_lab3_p_1n7s3f1[1] & (!nx63011z19))))
// nx13806z19 = CARRY((u_lab3_p_1n7s3f2[1] & ((!nx63011z19) # (!u_lab3_p_1n7s3f1[1]))) # (!u_lab3_p_1n7s3f2[1] & (!u_lab3_p_1n7s3f1[1] & !nx63011z19)))

	.dataa(u_lab3_p_1n7s3f2[1]),
	.datab(u_lab3_p_1n7s3f1[1]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx63011z19),
	.combout(u_lab3_p_1n7s3_1_),
	.cout(nx13806z19));
// synopsys translate_off
defparam u_lab3_p_sub8_1i275_ix39_fadd.lut_mask = 16'h692B;
defparam u_lab3_p_sub8_1i275_ix39_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N16
fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix43_fadd(
// Equation(s):
// u_lab3_p_1n7s3_2_ = ((u_lab3_p_1n7s3f2[2] $ (u_lab3_p_1n7s3f1[2] $ (nx13806z19)))) # (GND)
// nx17342z19 = CARRY((u_lab3_p_1n7s3f2[2] & (u_lab3_p_1n7s3f1[2] & !nx13806z19)) # (!u_lab3_p_1n7s3f2[2] & ((u_lab3_p_1n7s3f1[2]) # (!nx13806z19))))

	.dataa(u_lab3_p_1n7s3f2[2]),
	.datab(u_lab3_p_1n7s3f1[2]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx13806z19),
	.combout(u_lab3_p_1n7s3_2_),
	.cout(nx17342z19));
// synopsys translate_off
defparam u_lab3_p_sub8_1i275_ix43_fadd.lut_mask = 16'h964D;
defparam u_lab3_p_sub8_1i275_ix43_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N18
fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix47_fadd(
// Equation(s):
// u_lab3_p_1n7s3_3_ = (u_lab3_p_1n7s3f1[3] & ((u_lab3_p_1n7s3f2[3] & (!nx17342z19)) # (!u_lab3_p_1n7s3f2[3] & (nx17342z19 & VCC)))) # (!u_lab3_p_1n7s3f1[3] & ((u_lab3_p_1n7s3f2[3] & ((nx17342z19) # (GND))) # (!u_lab3_p_1n7s3f2[3] & (!nx17342z19))))
// nx64525z19 = CARRY((u_lab3_p_1n7s3f1[3] & (u_lab3_p_1n7s3f2[3] & !nx17342z19)) # (!u_lab3_p_1n7s3f1[3] & ((u_lab3_p_1n7s3f2[3]) # (!nx17342z19))))

	.dataa(u_lab3_p_1n7s3f1[3]),
	.datab(u_lab3_p_1n7s3f2[3]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx17342z19),
	.combout(u_lab3_p_1n7s3_3_),
	.cout(nx64525z19));
// synopsys translate_off
defparam u_lab3_p_sub8_1i275_ix47_fadd.lut_mask = 16'h694D;
defparam u_lab3_p_sub8_1i275_ix47_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N20
fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix51_fadd(
// Equation(s):
// u_lab3_p_1n7s3_4_ = ((u_lab3_p_1n7s3f2[4] $ (u_lab3_p_1n7s3f1[4] $ (nx64525z19)))) # (GND)
// nx33377z19 = CARRY((u_lab3_p_1n7s3f2[4] & (u_lab3_p_1n7s3f1[4] & !nx64525z19)) # (!u_lab3_p_1n7s3f2[4] & ((u_lab3_p_1n7s3f1[4]) # (!nx64525z19))))

	.dataa(u_lab3_p_1n7s3f2[4]),
	.datab(u_lab3_p_1n7s3f1[4]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx64525z19),
	.combout(u_lab3_p_1n7s3_4_),
	.cout(nx33377z19));
// synopsys translate_off
defparam u_lab3_p_sub8_1i275_ix51_fadd.lut_mask = 16'h964D;
defparam u_lab3_p_sub8_1i275_ix51_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N22
fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix55_fadd(
// Equation(s):
// u_lab3_p_1n7s3_5_ = (u_lab3_p_1n7s3f2[5] & ((u_lab3_p_1n7s3f1[5] & (!nx33377z19)) # (!u_lab3_p_1n7s3f1[5] & ((nx33377z19) # (GND))))) # (!u_lab3_p_1n7s3f2[5] & ((u_lab3_p_1n7s3f1[5] & (nx33377z19 & VCC)) # (!u_lab3_p_1n7s3f1[5] & (!nx33377z19))))
// nx63307z19 = CARRY((u_lab3_p_1n7s3f2[5] & ((!nx33377z19) # (!u_lab3_p_1n7s3f1[5]))) # (!u_lab3_p_1n7s3f2[5] & (!u_lab3_p_1n7s3f1[5] & !nx33377z19)))

	.dataa(u_lab3_p_1n7s3f2[5]),
	.datab(u_lab3_p_1n7s3f1[5]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx33377z19),
	.combout(u_lab3_p_1n7s3_5_),
	.cout(nx63307z19));
// synopsys translate_off
defparam u_lab3_p_sub8_1i275_ix55_fadd.lut_mask = 16'h692B;
defparam u_lab3_p_sub8_1i275_ix55_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N24
fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix59_fadd(
// Equation(s):
// u_lab3_p_1n7s3_6_ = ((u_lab3_p_1n7s3f2[6] $ (u_lab3_p_1n7s3f1[6] $ (nx63307z19)))) # (GND)
// nx46976z19 = CARRY((u_lab3_p_1n7s3f2[6] & (u_lab3_p_1n7s3f1[6] & !nx63307z19)) # (!u_lab3_p_1n7s3f2[6] & ((u_lab3_p_1n7s3f1[6]) # (!nx63307z19))))

	.dataa(u_lab3_p_1n7s3f2[6]),
	.datab(u_lab3_p_1n7s3f1[6]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx63307z19),
	.combout(u_lab3_p_1n7s3_6_),
	.cout(nx46976z19));
// synopsys translate_off
defparam u_lab3_p_sub8_1i275_ix59_fadd.lut_mask = 16'h964D;
defparam u_lab3_p_sub8_1i275_ix59_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N26
fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix63_fadd(
// Equation(s):
// u_lab3_p_1n7s3_7_ = (u_lab3_p_1n7s3f2[7] & ((u_lab3_p_1n7s3f1[7] & (!nx46976z19)) # (!u_lab3_p_1n7s3f1[7] & ((nx46976z19) # (GND))))) # (!u_lab3_p_1n7s3f2[7] & ((u_lab3_p_1n7s3f1[7] & (nx46976z19 & VCC)) # (!u_lab3_p_1n7s3f1[7] & (!nx46976z19))))
// nx17564z1 = CARRY((u_lab3_p_1n7s3f2[7] & ((!nx46976z19) # (!u_lab3_p_1n7s3f1[7]))) # (!u_lab3_p_1n7s3f2[7] & (!u_lab3_p_1n7s3f1[7] & !nx46976z19)))

	.dataa(u_lab3_p_1n7s3f2[7]),
	.datab(u_lab3_p_1n7s3f1[7]),
	.datac(gnd),
	.datad(vcc),
	.cin(nx46976z19),
	.combout(u_lab3_p_1n7s3_7_),
	.cout(nx17564z1));
// synopsys translate_off
defparam u_lab3_p_sub8_1i275_ix63_fadd.lut_mask = 16'h692B;
defparam u_lab3_p_sub8_1i275_ix63_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X19_Y13_N28
fiftyfivenm_lcell_comb u_lab3_p_sub8_1i275_ix63_fadd_buf(
// Equation(s):
// u_lab3_p_1n7s3_9_ = nx17564z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx17564z1),
	.combout(u_lab3_p_1n7s3_9_),
	.cout());
// synopsys translate_off
defparam u_lab3_p_sub8_1i275_ix63_fadd_buf.lut_mask = 16'hF0F0;
defparam u_lab3_p_sub8_1i275_ix63_fadd_buf.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N12
fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix44_fadd(
// Equation(s):
// nx43842z1 = CARRY((yes_uart_u_uart_reg_Dout_0__aq & u_lab3_p_1n7s3_0_))

	.dataa(yes_uart_u_uart_reg_Dout_0__aq),
	.datab(u_lab3_p_1n7s3_0_),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(nx43842z1));
// synopsys translate_off
defparam u_lab3_p_add9_1i276_ix44_fadd.lut_mask = 16'h0088;
defparam u_lab3_p_add9_1i276_ix44_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N14
fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix46_fadd(
// Equation(s):
// nx59416z1 = CARRY((yes_uart_u_uart_reg_Dout_1__aq & (!u_lab3_p_1n7s3_1_ & !nx43842z1)) # (!yes_uart_u_uart_reg_Dout_1__aq & ((!nx43842z1) # (!u_lab3_p_1n7s3_1_))))

	.dataa(yes_uart_u_uart_reg_Dout_1__aq),
	.datab(u_lab3_p_1n7s3_1_),
	.datac(gnd),
	.datad(vcc),
	.cin(nx43842z1),
	.combout(),
	.cout(nx59416z1));
// synopsys translate_off
defparam u_lab3_p_add9_1i276_ix46_fadd.lut_mask = 16'h0017;
defparam u_lab3_p_add9_1i276_ix46_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N16
fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix48_fadd(
// Equation(s):
// nx27511z1 = CARRY((yes_uart_u_uart_reg_Dout_2__aq & ((u_lab3_p_1n7s3_2_) # (!nx59416z1))) # (!yes_uart_u_uart_reg_Dout_2__aq & (u_lab3_p_1n7s3_2_ & !nx59416z1)))

	.dataa(yes_uart_u_uart_reg_Dout_2__aq),
	.datab(u_lab3_p_1n7s3_2_),
	.datac(gnd),
	.datad(vcc),
	.cin(nx59416z1),
	.combout(),
	.cout(nx27511z1));
// synopsys translate_off
defparam u_lab3_p_add9_1i276_ix48_fadd.lut_mask = 16'h008E;
defparam u_lab3_p_add9_1i276_ix48_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N18
fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix50_fadd(
// Equation(s):
// nx43085z1 = CARRY((yes_uart_u_uart_reg_Dout_3__aq & (!u_lab3_p_1n7s3_3_ & !nx27511z1)) # (!yes_uart_u_uart_reg_Dout_3__aq & ((!nx27511z1) # (!u_lab3_p_1n7s3_3_))))

	.dataa(yes_uart_u_uart_reg_Dout_3__aq),
	.datab(u_lab3_p_1n7s3_3_),
	.datac(gnd),
	.datad(vcc),
	.cin(nx27511z1),
	.combout(),
	.cout(nx43085z1));
// synopsys translate_off
defparam u_lab3_p_add9_1i276_ix50_fadd.lut_mask = 16'h0017;
defparam u_lab3_p_add9_1i276_ix50_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N20
fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix52_fadd(
// Equation(s):
// nx6877z1 = CARRY((u_lab3_p_1n7s3_4_ & ((yes_uart_u_uart_reg_Dout_4__aq) # (!nx43085z1))) # (!u_lab3_p_1n7s3_4_ & (yes_uart_u_uart_reg_Dout_4__aq & !nx43085z1)))

	.dataa(u_lab3_p_1n7s3_4_),
	.datab(yes_uart_u_uart_reg_Dout_4__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx43085z1),
	.combout(),
	.cout(nx6877z1));
// synopsys translate_off
defparam u_lab3_p_add9_1i276_ix52_fadd.lut_mask = 16'h008E;
defparam u_lab3_p_add9_1i276_ix52_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N22
fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix54_fadd(
// Equation(s):
// nx56839z1 = CARRY((yes_uart_u_uart_reg_Dout_5__aq & (!u_lab3_p_1n7s3_5_ & !nx6877z1)) # (!yes_uart_u_uart_reg_Dout_5__aq & ((!nx6877z1) # (!u_lab3_p_1n7s3_5_))))

	.dataa(yes_uart_u_uart_reg_Dout_5__aq),
	.datab(u_lab3_p_1n7s3_5_),
	.datac(gnd),
	.datad(vcc),
	.cin(nx6877z1),
	.combout(),
	.cout(nx56839z1));
// synopsys translate_off
defparam u_lab3_p_add9_1i276_ix54_fadd.lut_mask = 16'h0017;
defparam u_lab3_p_add9_1i276_ix54_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N24
fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix56_fadd(
// Equation(s):
// nx41265z1 = CARRY((u_lab3_p_1n7s3_6_ & ((yes_uart_u_uart_reg_Dout_6__aq) # (!nx56839z1))) # (!u_lab3_p_1n7s3_6_ & (yes_uart_u_uart_reg_Dout_6__aq & !nx56839z1)))

	.dataa(u_lab3_p_1n7s3_6_),
	.datab(yes_uart_u_uart_reg_Dout_6__aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx56839z1),
	.combout(),
	.cout(nx41265z1));
// synopsys translate_off
defparam u_lab3_p_add9_1i276_ix56_fadd.lut_mask = 16'h008E;
defparam u_lab3_p_add9_1i276_ix56_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N26
fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix58_fadd(
// Equation(s):
// nx19195z1 = CARRY((yes_uart_u_uart_reg_Dout_7__aq & (!u_lab3_p_1n7s3_7_ & !nx41265z1)) # (!yes_uart_u_uart_reg_Dout_7__aq & ((!nx41265z1) # (!u_lab3_p_1n7s3_7_))))

	.dataa(yes_uart_u_uart_reg_Dout_7__aq),
	.datab(u_lab3_p_1n7s3_7_),
	.datac(gnd),
	.datad(vcc),
	.cin(nx41265z1),
	.combout(),
	.cout(nx19195z1));
// synopsys translate_off
defparam u_lab3_p_add9_1i276_ix58_fadd.lut_mask = 16'h0017;
defparam u_lab3_p_add9_1i276_ix58_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N28
fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix58_fadd_buf(
// Equation(s):
// nx57902z1 = !nx19195z1

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx19195z1),
	.combout(nx57902z1),
	.cout());
// synopsys translate_off
defparam u_lab3_p_add9_1i276_ix58_fadd_buf.lut_mask = 16'h0F0F;
defparam u_lab3_p_add9_1i276_ix58_fadd_buf.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N2
fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix60_fadd_a1(
// Equation(s):
// u_lab3_p_add9_1i276_ix60_fadd_a1_cout = CARRY(u_lab3_p_1n7s3_9_)

	.dataa(gnd),
	.datab(u_lab3_p_1n7s3_9_),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(u_lab3_p_add9_1i276_ix60_fadd_a1_cout));
// synopsys translate_off
defparam u_lab3_p_add9_1i276_ix60_fadd_a1.lut_mask = 16'h00CC;
defparam u_lab3_p_add9_1i276_ix60_fadd_a1.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N4
fiftyfivenm_lcell_comb u_lab3_p_add9_1i276_ix60_fadd(
// Equation(s):
// nx49424z1 = CARRY((!u_lab3_p_add9_1i276_ix60_fadd_a1_cout) # (!nx57902z1))

	.dataa(gnd),
	.datab(nx57902z1),
	.datac(gnd),
	.datad(vcc),
	.cin(u_lab3_p_add9_1i276_ix60_fadd_a1_cout),
	.combout(),
	.cout(nx49424z1));
// synopsys translate_off
defparam u_lab3_p_add9_1i276_ix60_fadd.lut_mask = 16'h003F;
defparam u_lab3_p_add9_1i276_ix60_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N6
fiftyfivenm_lcell_comb ix3639_fadd(
// Equation(s):
// u_lab3_p_1n7s2_31_ = (nx49424z1 & u_lab3_p_1n7s3_9_)

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_lab3_p_1n7s3_9_),
	.cin(nx49424z1),
	.combout(u_lab3_p_1n7s2_31_),
	.cout());
// synopsys translate_off
defparam ix3639_fadd.lut_mask = 16'hF000;
defparam ix3639_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N10
fiftyfivenm_lcell_comb ix31891z7095(
// Equation(s):
// nx31891z1 = (nx53092z2 & (((u_lab3_reg_p_31__aq)))) # (!nx53092z2 & (u_lab3_reg_state_3__aq & ((u_lab3_p_1n7s2_31_))))

	.dataa(u_lab3_reg_state_3__aq),
	.datab(nx53092z2),
	.datac(u_lab3_reg_p_31__aq),
	.datad(u_lab3_p_1n7s2_31_),
	.cin(gnd),
	.combout(nx31891z1),
	.cout());
// synopsys translate_off
defparam ix31891z7095.lut_mask = 16'hE2C0;
defparam ix31891z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X18_Y13_N11
dffeas u_lab3_reg_p_31_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx31891z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_p_31__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_p_31_.is_wysiwyg = "true";
defparam u_lab3_reg_p_31_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X18_Y13_N0
fiftyfivenm_lcell_comb ix19416z7095(
// Equation(s):
// nx19416z1 = (u_lab3_reg_state_3__aq & (!u_lab3_reg_p_31__aq & (yes_uart_u_uart_reg_RxRDYi_aq))) # (!u_lab3_reg_state_3__aq & (((!u_lab3_reg_state_0__aq))))

	.dataa(u_lab3_reg_p_31__aq),
	.datab(yes_uart_u_uart_reg_RxRDYi_aq),
	.datac(u_lab3_reg_state_0__aq),
	.datad(u_lab3_reg_state_3__aq),
	.cin(gnd),
	.combout(nx19416z1),
	.cout());
// synopsys translate_off
defparam ix19416z7095.lut_mask = 16'h440F;
defparam ix19416z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y14_N9
dffeas reg_q_0__dup_37(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_3036),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx19416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_37_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_37.is_wysiwyg = "true";
defparam reg_q_0__dup_37.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N10
fiftyfivenm_lcell_comb ix3019_fadd(
// Equation(s):
// inc_d_1__dup_3038 = (reg_q_1__dup_36_aq & (!nx18768z1)) # (!reg_q_1__dup_36_aq & ((nx18768z1) # (GND)))
// nx52399z1 = CARRY((!nx18768z1) # (!reg_q_1__dup_36_aq))

	.dataa(reg_q_1__dup_36_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx18768z1),
	.combout(inc_d_1__dup_3038),
	.cout(nx52399z1));
// synopsys translate_off
defparam ix3019_fadd.lut_mask = 16'h5A5F;
defparam ix3019_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X14_Y14_N11
dffeas reg_q_1__dup_36(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_3038),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx19416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_36_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_36.is_wysiwyg = "true";
defparam reg_q_1__dup_36.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N12
fiftyfivenm_lcell_comb ix3021_fadd(
// Equation(s):
// inc_d_2__dup_3040 = (reg_q_2__dup_35_aq & (nx52399z1 $ (GND))) # (!reg_q_2__dup_35_aq & (!nx52399z1 & VCC))
// nx2437z1 = CARRY((reg_q_2__dup_35_aq & !nx52399z1))

	.dataa(reg_q_2__dup_35_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx52399z1),
	.combout(inc_d_2__dup_3040),
	.cout(nx2437z1));
// synopsys translate_off
defparam ix3021_fadd.lut_mask = 16'hA50A;
defparam ix3021_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X14_Y14_N13
dffeas reg_q_2__dup_35(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_3040),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx19416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_35_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_35.is_wysiwyg = "true";
defparam reg_q_2__dup_35.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N14
fiftyfivenm_lcell_comb ix3023_fadd(
// Equation(s):
// inc_d_3__dup_3042 = (reg_q_3__dup_34_aq & (!nx2437z1)) # (!reg_q_3__dup_34_aq & ((nx2437z1) # (GND)))
// nx47525z1 = CARRY((!nx2437z1) # (!reg_q_3__dup_34_aq))

	.dataa(gnd),
	.datab(reg_q_3__dup_34_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx2437z1),
	.combout(inc_d_3__dup_3042),
	.cout(nx47525z1));
// synopsys translate_off
defparam ix3023_fadd.lut_mask = 16'h3C3F;
defparam ix3023_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X14_Y14_N15
dffeas reg_q_3__dup_34(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_3042),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx19416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_34_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_34.is_wysiwyg = "true";
defparam reg_q_3__dup_34.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N16
fiftyfivenm_lcell_comb ix3025_fadd(
// Equation(s):
// inc_d_4__dup_3044 = (reg_q_4__dup_33_aq & (nx47525z1 $ (GND))) # (!reg_q_4__dup_33_aq & (!nx47525z1 & VCC))
// nx31951z1 = CARRY((reg_q_4__dup_33_aq & !nx47525z1))

	.dataa(gnd),
	.datab(reg_q_4__dup_33_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx47525z1),
	.combout(inc_d_4__dup_3044),
	.cout(nx31951z1));
// synopsys translate_off
defparam ix3025_fadd.lut_mask = 16'hC30C;
defparam ix3025_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X14_Y14_N17
dffeas reg_q_4__dup_33(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_3044),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx19416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_33_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_33.is_wysiwyg = "true";
defparam reg_q_4__dup_33.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N18
fiftyfivenm_lcell_comb ix3027_fadd(
// Equation(s):
// inc_d_5__dup_3046 = (reg_q_5__dup_32_aq & (!nx31951z1)) # (!reg_q_5__dup_32_aq & ((nx31951z1) # (GND)))
// nx16377z1 = CARRY((!nx31951z1) # (!reg_q_5__dup_32_aq))

	.dataa(gnd),
	.datab(reg_q_5__dup_32_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx31951z1),
	.combout(inc_d_5__dup_3046),
	.cout(nx16377z1));
// synopsys translate_off
defparam ix3027_fadd.lut_mask = 16'h3C3F;
defparam ix3027_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X14_Y14_N19
dffeas reg_q_5__dup_32(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_3046),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx19416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_32_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_32.is_wysiwyg = "true";
defparam reg_q_5__dup_32.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N20
fiftyfivenm_lcell_comb ix3029_fadd(
// Equation(s):
// inc_d_6__dup_3048 = (reg_q_6__dup_31_aq & (nx16377z1 $ (GND))) # (!reg_q_6__dup_31_aq & (!nx16377z1 & VCC))
// nx56069z1 = CARRY((reg_q_6__dup_31_aq & !nx16377z1))

	.dataa(gnd),
	.datab(reg_q_6__dup_31_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx16377z1),
	.combout(inc_d_6__dup_3048),
	.cout(nx56069z1));
// synopsys translate_off
defparam ix3029_fadd.lut_mask = 16'hC30C;
defparam ix3029_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X14_Y14_N21
dffeas reg_q_6__dup_31(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_3048),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx19416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_31_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_31.is_wysiwyg = "true";
defparam reg_q_6__dup_31.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N28
fiftyfivenm_lcell_comb ix51544z7110(
// Equation(s):
// seg7_num[6] = (sw_a0_a_ainput_o & (nx51544z10)) # (!sw_a0_a_ainput_o & ((reg_q_6__dup_31_aq)))

	.dataa(nx51544z10),
	.datab(gnd),
	.datac(sw_a0_a_ainput_o),
	.datad(reg_q_6__dup_31_aq),
	.cin(gnd),
	.combout(seg7_num[6]),
	.cout());
// synopsys translate_off
defparam ix51544z7110.lut_mask = 16'hAFA0;
defparam ix51544z7110.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N12
fiftyfivenm_lcell_comb ix10540z7095(
// Equation(s):
// byte_reg_2n1ss1[5] = (sw_a7_a_ainput_o & ((reg_q_5__aq))) # (!sw_a7_a_ainput_o & (yes_uart_u_uart_reg_Dout_5__aq))

	.dataa(yes_uart_u_uart_reg_Dout_5__aq),
	.datab(reg_q_5__aq),
	.datac(sw_a7_a_ainput_o),
	.datad(gnd),
	.cin(gnd),
	.combout(byte_reg_2n1ss1[5]),
	.cout());
// synopsys translate_off
defparam ix10540z7095.lut_mask = 16'hCACA;
defparam ix10540z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y13_N13
dffeas reg_byte_reg_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(byte_reg_2n1ss1[5]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_byte_reg_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_byte_reg_5_.is_wysiwyg = "true";
defparam reg_byte_reg_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N14
fiftyfivenm_lcell_comb ix51544z7109(
// Equation(s):
// nx51544z9 = (sw_a1_a_ainput_o & ((reg_byte_reg_5__aq))) # (!sw_a1_a_ainput_o & (reg_q_5__aq))

	.dataa(sw_a1_a_ainput_o),
	.datab(reg_q_5__aq),
	.datac(gnd),
	.datad(reg_byte_reg_5__aq),
	.cin(gnd),
	.combout(nx51544z9),
	.cout());
// synopsys translate_off
defparam ix51544z7109.lut_mask = 16'hEE44;
defparam ix51544z7109.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N26
fiftyfivenm_lcell_comb ix51544z7108(
// Equation(s):
// seg7_num[5] = (sw_a0_a_ainput_o & (nx51544z9)) # (!sw_a0_a_ainput_o & ((reg_q_5__dup_32_aq)))

	.dataa(nx51544z9),
	.datab(gnd),
	.datac(sw_a0_a_ainput_o),
	.datad(reg_q_5__dup_32_aq),
	.cin(gnd),
	.combout(seg7_num[5]),
	.cout());
// synopsys translate_off
defparam ix51544z7108.lut_mask = 16'hAFA0;
defparam ix51544z7108.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N22
fiftyfivenm_lcell_comb ix3030_fadd(
// Equation(s):
// inc_d_7__dup_3050 = reg_q_7__dup_30_aq $ (nx56069z1)

	.dataa(reg_q_7__dup_30_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx56069z1),
	.combout(inc_d_7__dup_3050),
	.cout());
// synopsys translate_off
defparam ix3030_fadd.lut_mask = 16'h5A5A;
defparam ix3030_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X14_Y14_N23
dffeas reg_q_7__dup_30(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_3050),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!u_lab3_reg_state_0__aq),
	.sload(gnd),
	.ena(nx19416z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_30_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_30.is_wysiwyg = "true";
defparam reg_q_7__dup_30.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N28
fiftyfivenm_lcell_comb ix28_fadd(
// Equation(s):
// inc_d_7_ = nx53431z1 $ (reg_q_7__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(reg_q_7__aq),
	.cin(nx53431z1),
	.combout(inc_d_7_),
	.cout());
// synopsys translate_off
defparam ix28_fadd.lut_mask = 16'h0FF0;
defparam ix28_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y16_N29
dffeas reg_q_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7_.is_wysiwyg = "true";
defparam reg_q_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N4
fiftyfivenm_lcell_comb ix8546z7095(
// Equation(s):
// byte_reg_2n1ss1[7] = (sw_a7_a_ainput_o & (reg_q_7__aq)) # (!sw_a7_a_ainput_o & ((yes_uart_u_uart_reg_Dout_7__aq)))

	.dataa(reg_q_7__aq),
	.datab(gnd),
	.datac(sw_a7_a_ainput_o),
	.datad(yes_uart_u_uart_reg_Dout_7__aq),
	.cin(gnd),
	.combout(byte_reg_2n1ss1[7]),
	.cout());
// synopsys translate_off
defparam ix8546z7095.lut_mask = 16'hAFA0;
defparam ix8546z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y13_N5
dffeas reg_byte_reg_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(byte_reg_2n1ss1[7]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_byte_reg_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_byte_reg_7_.is_wysiwyg = "true";
defparam reg_byte_reg_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N6
fiftyfivenm_lcell_comb ix51544z7113(
// Equation(s):
// nx51544z11 = (sw_a1_a_ainput_o & (reg_byte_reg_7__aq)) # (!sw_a1_a_ainput_o & ((reg_q_7__aq)))

	.dataa(sw_a1_a_ainput_o),
	.datab(reg_byte_reg_7__aq),
	.datac(reg_q_7__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx51544z11),
	.cout());
// synopsys translate_off
defparam ix51544z7113.lut_mask = 16'hD8D8;
defparam ix51544z7113.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N30
fiftyfivenm_lcell_comb ix51544z7112(
// Equation(s):
// seg7_num[7] = (sw_a0_a_ainput_o & ((nx51544z11))) # (!sw_a0_a_ainput_o & (reg_q_7__dup_30_aq))

	.dataa(sw_a0_a_ainput_o),
	.datab(gnd),
	.datac(reg_q_7__dup_30_aq),
	.datad(nx51544z11),
	.cin(gnd),
	.combout(seg7_num[7]),
	.cout());
// synopsys translate_off
defparam ix51544z7112.lut_mask = 16'hFA50;
defparam ix51544z7112.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N24
fiftyfivenm_lcell_comb ix11537z7095(
// Equation(s):
// byte_reg_2n1ss1[4] = (sw_a7_a_ainput_o & ((reg_q_4__aq))) # (!sw_a7_a_ainput_o & (yes_uart_u_uart_reg_Dout_4__aq))

	.dataa(yes_uart_u_uart_reg_Dout_4__aq),
	.datab(reg_q_4__aq),
	.datac(sw_a7_a_ainput_o),
	.datad(gnd),
	.cin(gnd),
	.combout(byte_reg_2n1ss1[4]),
	.cout());
// synopsys translate_off
defparam ix11537z7095.lut_mask = 16'hCACA;
defparam ix11537z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y13_N25
dffeas reg_byte_reg_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(byte_reg_2n1ss1[4]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_byte_reg_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_byte_reg_4_.is_wysiwyg = "true";
defparam reg_byte_reg_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N2
fiftyfivenm_lcell_comb ix51544z7107(
// Equation(s):
// nx51544z8 = (sw_a1_a_ainput_o & ((reg_byte_reg_4__aq))) # (!sw_a1_a_ainput_o & (reg_q_4__aq))

	.dataa(sw_a1_a_ainput_o),
	.datab(reg_q_4__aq),
	.datac(gnd),
	.datad(reg_byte_reg_4__aq),
	.cin(gnd),
	.combout(nx51544z8),
	.cout());
// synopsys translate_off
defparam ix51544z7107.lut_mask = 16'hEE44;
defparam ix51544z7107.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N24
fiftyfivenm_lcell_comb ix51544z7106(
// Equation(s):
// seg7_num[4] = (sw_a0_a_ainput_o & (nx51544z8)) # (!sw_a0_a_ainput_o & ((reg_q_4__dup_33_aq)))

	.dataa(nx51544z8),
	.datab(gnd),
	.datac(sw_a0_a_ainput_o),
	.datad(reg_q_4__dup_33_aq),
	.cin(gnd),
	.combout(seg7_num[4]),
	.cout());
// synopsys translate_off
defparam ix51544z7106.lut_mask = 16'hAFA0;
defparam ix51544z7106.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N2
fiftyfivenm_lcell_comb ix18625z7097(
// Equation(s):
// u_seg7_rtlcP1[8] = (seg7_num[5] & ((seg7_num[4] & ((!seg7_num[7]))) # (!seg7_num[4] & (!seg7_num[6])))) # (!seg7_num[5] & ((seg7_num[7] $ (!seg7_num[4])) # (!seg7_num[6])))

	.dataa(seg7_num[6]),
	.datab(seg7_num[5]),
	.datac(seg7_num[7]),
	.datad(seg7_num[4]),
	.cin(gnd),
	.combout(u_seg7_rtlcP1[8]),
	.cout());
// synopsys translate_off
defparam ix18625z7097.lut_mask = 16'h3D57;
defparam ix18625z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N0
fiftyfivenm_lcell_comb ix13531z7095(
// Equation(s):
// byte_reg_2n1ss1[2] = (sw_a7_a_ainput_o & (reg_q_2__aq)) # (!sw_a7_a_ainput_o & ((yes_uart_u_uart_reg_Dout_2__aq)))

	.dataa(sw_a7_a_ainput_o),
	.datab(reg_q_2__aq),
	.datac(yes_uart_u_uart_reg_Dout_2__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(byte_reg_2n1ss1[2]),
	.cout());
// synopsys translate_off
defparam ix13531z7095.lut_mask = 16'hD8D8;
defparam ix13531z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X11_Y16_N1
dffeas reg_byte_reg_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(byte_reg_2n1ss1[2]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_byte_reg_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_byte_reg_2_.is_wysiwyg = "true";
defparam reg_byte_reg_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N2
fiftyfivenm_lcell_comb ix51544z7102(
// Equation(s):
// nx51544z5 = (sw_a1_a_ainput_o & ((reg_byte_reg_2__aq))) # (!sw_a1_a_ainput_o & (reg_q_2__aq))

	.dataa(gnd),
	.datab(reg_q_2__aq),
	.datac(sw_a1_a_ainput_o),
	.datad(reg_byte_reg_2__aq),
	.cin(gnd),
	.combout(nx51544z5),
	.cout());
// synopsys translate_off
defparam ix51544z7102.lut_mask = 16'hFC0C;
defparam ix51544z7102.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N4
fiftyfivenm_lcell_comb ix51544z7101(
// Equation(s):
// seg7_num[2] = (sw_a0_a_ainput_o & (nx51544z5)) # (!sw_a0_a_ainput_o & ((reg_q_2__dup_35_aq)))

	.dataa(gnd),
	.datab(nx51544z5),
	.datac(sw_a0_a_ainput_o),
	.datad(reg_q_2__dup_35_aq),
	.cin(gnd),
	.combout(seg7_num[2]),
	.cout());
// synopsys translate_off
defparam ix51544z7101.lut_mask = 16'hCFC0;
defparam ix51544z7101.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N12
fiftyfivenm_lcell_comb ix14528z7095(
// Equation(s):
// byte_reg_2n1ss1[1] = (sw_a7_a_ainput_o & (reg_q_1__aq)) # (!sw_a7_a_ainput_o & ((yes_uart_u_uart_reg_Dout_1__aq)))

	.dataa(sw_a7_a_ainput_o),
	.datab(reg_q_1__aq),
	.datac(yes_uart_u_uart_reg_Dout_1__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(byte_reg_2n1ss1[1]),
	.cout());
// synopsys translate_off
defparam ix14528z7095.lut_mask = 16'hD8D8;
defparam ix14528z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X11_Y16_N13
dffeas reg_byte_reg_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(byte_reg_2n1ss1[1]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_byte_reg_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_byte_reg_1_.is_wysiwyg = "true";
defparam reg_byte_reg_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N30
fiftyfivenm_lcell_comb ix51544z7100(
// Equation(s):
// nx51544z4 = (sw_a1_a_ainput_o & ((reg_byte_reg_1__aq))) # (!sw_a1_a_ainput_o & (reg_q_1__aq))

	.dataa(gnd),
	.datab(reg_q_1__aq),
	.datac(sw_a1_a_ainput_o),
	.datad(reg_byte_reg_1__aq),
	.cin(gnd),
	.combout(nx51544z4),
	.cout());
// synopsys translate_off
defparam ix51544z7100.lut_mask = 16'hFC0C;
defparam ix51544z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N2
fiftyfivenm_lcell_comb ix51544z7099(
// Equation(s):
// seg7_num[1] = (sw_a0_a_ainput_o & (nx51544z4)) # (!sw_a0_a_ainput_o & ((reg_q_1__dup_36_aq)))

	.dataa(sw_a0_a_ainput_o),
	.datab(gnd),
	.datac(nx51544z4),
	.datad(reg_q_1__dup_36_aq),
	.cin(gnd),
	.combout(seg7_num[1]),
	.cout());
// synopsys translate_off
defparam ix51544z7099.lut_mask = 16'hF5A0;
defparam ix51544z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N4
fiftyfivenm_lcell_comb ix12534z7095(
// Equation(s):
// byte_reg_2n1ss1[3] = (sw_a7_a_ainput_o & ((reg_q_3__aq))) # (!sw_a7_a_ainput_o & (yes_uart_u_uart_reg_Dout_3__aq))

	.dataa(sw_a7_a_ainput_o),
	.datab(yes_uart_u_uart_reg_Dout_3__aq),
	.datac(reg_q_3__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(byte_reg_2n1ss1[3]),
	.cout());
// synopsys translate_off
defparam ix12534z7095.lut_mask = 16'hE4E4;
defparam ix12534z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X11_Y16_N5
dffeas reg_byte_reg_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(byte_reg_2n1ss1[3]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_byte_reg_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_byte_reg_3_.is_wysiwyg = "true";
defparam reg_byte_reg_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N6
fiftyfivenm_lcell_comb ix51544z7104(
// Equation(s):
// nx51544z6 = (sw_a1_a_ainput_o & ((reg_byte_reg_3__aq))) # (!sw_a1_a_ainput_o & (reg_q_3__aq))

	.dataa(reg_q_3__aq),
	.datab(reg_byte_reg_3__aq),
	.datac(sw_a1_a_ainput_o),
	.datad(gnd),
	.cin(gnd),
	.combout(nx51544z6),
	.cout());
// synopsys translate_off
defparam ix51544z7104.lut_mask = 16'hCACA;
defparam ix51544z7104.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N6
fiftyfivenm_lcell_comb ix51544z7103(
// Equation(s):
// seg7_num[3] = (sw_a0_a_ainput_o & ((nx51544z6))) # (!sw_a0_a_ainput_o & (reg_q_3__dup_34_aq))

	.dataa(sw_a0_a_ainput_o),
	.datab(gnd),
	.datac(reg_q_3__dup_34_aq),
	.datad(nx51544z6),
	.cin(gnd),
	.combout(seg7_num[3]),
	.cout());
// synopsys translate_off
defparam ix51544z7103.lut_mask = 16'hFA50;
defparam ix51544z7103.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N8
fiftyfivenm_lcell_comb ix15525z7095(
// Equation(s):
// byte_reg_2n1ss1[0] = (sw_a7_a_ainput_o & (reg_q_0__aq)) # (!sw_a7_a_ainput_o & ((yes_uart_u_uart_reg_Dout_0__aq)))

	.dataa(sw_a7_a_ainput_o),
	.datab(gnd),
	.datac(reg_q_0__aq),
	.datad(yes_uart_u_uart_reg_Dout_0__aq),
	.cin(gnd),
	.combout(byte_reg_2n1ss1[0]),
	.cout());
// synopsys translate_off
defparam ix15525z7095.lut_mask = 16'hF5A0;
defparam ix15525z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X11_Y16_N9
dffeas reg_byte_reg_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(byte_reg_2n1ss1[0]),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(!reset_n_ainput_o),
	.sload(gnd),
	.ena(u_lab3_rtlc0_PS25_n202),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_byte_reg_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_byte_reg_0_.is_wysiwyg = "true";
defparam reg_byte_reg_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y16_N10
fiftyfivenm_lcell_comb ix51544z7098(
// Equation(s):
// nx51544z3 = (sw_a1_a_ainput_o & ((reg_byte_reg_0__aq))) # (!sw_a1_a_ainput_o & (reg_q_0__aq))

	.dataa(gnd),
	.datab(reg_q_0__aq),
	.datac(reg_byte_reg_0__aq),
	.datad(sw_a1_a_ainput_o),
	.cin(gnd),
	.combout(nx51544z3),
	.cout());
// synopsys translate_off
defparam ix51544z7098.lut_mask = 16'hF0CC;
defparam ix51544z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X14_Y14_N0
fiftyfivenm_lcell_comb ix51544z7097(
// Equation(s):
// seg7_num[0] = (sw_a0_a_ainput_o & ((nx51544z3))) # (!sw_a0_a_ainput_o & (reg_q_0__dup_37_aq))

	.dataa(sw_a0_a_ainput_o),
	.datab(gnd),
	.datac(reg_q_0__dup_37_aq),
	.datad(nx51544z3),
	.cin(gnd),
	.combout(seg7_num[0]),
	.cout());
// synopsys translate_off
defparam ix51544z7097.lut_mask = 16'hFA50;
defparam ix51544z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y16_N24
fiftyfivenm_lcell_comb ix18625z7096(
// Equation(s):
// u_seg7_rtlcP1[1] = (seg7_num[1] & ((seg7_num[0] & ((!seg7_num[3]))) # (!seg7_num[0] & (!seg7_num[2])))) # (!seg7_num[1] & ((seg7_num[3] $ (!seg7_num[0])) # (!seg7_num[2])))

	.dataa(seg7_num[2]),
	.datab(seg7_num[1]),
	.datac(seg7_num[3]),
	.datad(seg7_num[0]),
	.cin(gnd),
	.combout(u_seg7_rtlcP1[1]),
	.cout());
// synopsys translate_off
defparam ix18625z7096.lut_mask = 16'h3D57;
defparam ix18625z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N4
fiftyfivenm_lcell_comb ix18625z7095(
// Equation(s):
// nx18625z1 = (reg_q_10__aq & (u_seg7_rtlcP1[8])) # (!reg_q_10__aq & ((u_seg7_rtlcP1[1])))

	.dataa(reg_q_10__aq),
	.datab(u_seg7_rtlcP1[8]),
	.datac(u_seg7_rtlcP1[1]),
	.datad(gnd),
	.cin(gnd),
	.combout(nx18625z1),
	.cout());
// synopsys translate_off
defparam ix18625z7095.lut_mask = 16'hD8D8;
defparam ix18625z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N22
fiftyfivenm_lcell_comb u_seg7_u_dual_seg7_reg_prev_char0_en_a0(
// Equation(s):
// u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout = !reg_q_10__aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(reg_q_10__aq),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout),
	.cout());
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_prev_char0_en_a0.lut_mask = 16'h00FF;
defparam u_seg7_u_dual_seg7_reg_prev_char0_en_a0.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X12_Y14_N23
dffeas u_seg7_u_dual_seg7_reg_prev_char0_en(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_prev_char0_en_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_prev_char0_en.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_prev_char0_en.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N12
fiftyfivenm_lcell_comb ix10356z7095(
// Equation(s):
// u_seg7_u_dual_seg7_load_reg = u_seg7_u_dual_seg7_reg_prev_char0_en_aq $ (!reg_q_10__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(u_seg7_u_dual_seg7_reg_prev_char0_en_aq),
	.datad(reg_q_10__aq),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_load_reg),
	.cout());
// synopsys translate_off
defparam ix10356z7095.lut_mask = 16'hF00F;
defparam ix10356z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X12_Y14_N5
dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx18625z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N30
fiftyfivenm_lcell_comb ix28027z7097(
// Equation(s):
// u_seg7_rtlcP1[12] = (seg7_num[6] & ((seg7_num[5] $ (!seg7_num[7])) # (!seg7_num[4]))) # (!seg7_num[6] & ((seg7_num[7]) # ((!seg7_num[5] & !seg7_num[4]))))

	.dataa(seg7_num[6]),
	.datab(seg7_num[5]),
	.datac(seg7_num[7]),
	.datad(seg7_num[4]),
	.cin(gnd),
	.combout(u_seg7_rtlcP1[12]),
	.cout());
// synopsys translate_off
defparam ix28027z7097.lut_mask = 16'hD2FB;
defparam ix28027z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y16_N26
fiftyfivenm_lcell_comb ix28027z7096(
// Equation(s):
// u_seg7_rtlcP1[5] = (seg7_num[2] & ((seg7_num[1] $ (!seg7_num[3])) # (!seg7_num[0]))) # (!seg7_num[2] & ((seg7_num[3]) # ((!seg7_num[1] & !seg7_num[0]))))

	.dataa(seg7_num[2]),
	.datab(seg7_num[1]),
	.datac(seg7_num[3]),
	.datad(seg7_num[0]),
	.cin(gnd),
	.combout(u_seg7_rtlcP1[5]),
	.cout());
// synopsys translate_off
defparam ix28027z7096.lut_mask = 16'hD2FB;
defparam ix28027z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N24
fiftyfivenm_lcell_comb ix28027z7095(
// Equation(s):
// nx28027z1 = (reg_q_10__aq & (u_seg7_rtlcP1[12])) # (!reg_q_10__aq & ((u_seg7_rtlcP1[5])))

	.dataa(reg_q_10__aq),
	.datab(gnd),
	.datac(u_seg7_rtlcP1[12]),
	.datad(u_seg7_rtlcP1[5]),
	.cin(gnd),
	.combout(nx28027z1),
	.cout());
// synopsys translate_off
defparam ix28027z7095.lut_mask = 16'hF5A0;
defparam ix28027z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X12_Y14_N25
dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx28027z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N26
fiftyfivenm_lcell_comb ix51544z7105(
// Equation(s):
// u_seg7_rtlcP1[13] = (seg7_num[4] & ((seg7_num[7]) # (seg7_num[6] $ (seg7_num[5])))) # (!seg7_num[4] & ((seg7_num[5]) # (seg7_num[6] $ (seg7_num[7]))))

	.dataa(seg7_num[6]),
	.datab(seg7_num[5]),
	.datac(seg7_num[7]),
	.datad(seg7_num[4]),
	.cin(gnd),
	.combout(u_seg7_rtlcP1[13]),
	.cout());
// synopsys translate_off
defparam ix51544z7105.lut_mask = 16'hF6DE;
defparam ix51544z7105.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y16_N12
fiftyfivenm_lcell_comb ix51544z7096(
// Equation(s):
// u_seg7_rtlcP1[6] = (seg7_num[0] & ((seg7_num[3]) # (seg7_num[2] $ (seg7_num[1])))) # (!seg7_num[0] & ((seg7_num[1]) # (seg7_num[2] $ (seg7_num[3]))))

	.dataa(seg7_num[2]),
	.datab(seg7_num[1]),
	.datac(seg7_num[3]),
	.datad(seg7_num[0]),
	.cin(gnd),
	.combout(u_seg7_rtlcP1[6]),
	.cout());
// synopsys translate_off
defparam ix51544z7096.lut_mask = 16'hF6DE;
defparam ix51544z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N20
fiftyfivenm_lcell_comb ix51544z7095(
// Equation(s):
// nx51544z1 = (reg_q_10__aq & (u_seg7_rtlcP1[13])) # (!reg_q_10__aq & ((u_seg7_rtlcP1[6])))

	.dataa(reg_q_10__aq),
	.datab(gnd),
	.datac(u_seg7_rtlcP1[13]),
	.datad(u_seg7_rtlcP1[6]),
	.cin(gnd),
	.combout(nx51544z1),
	.cout());
// synopsys translate_off
defparam ix51544z7095.lut_mask = 16'hF5A0;
defparam ix51544z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X12_Y14_N21
dffeas u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx51544z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N0
fiftyfivenm_lcell_comb ix3377z7097(
// Equation(s):
// u_seg7_rtlcP1[7] = (seg7_num[6] & ((seg7_num[5]) # (seg7_num[7] $ (seg7_num[4])))) # (!seg7_num[6] & ((seg7_num[5] $ (seg7_num[7])) # (!seg7_num[4])))

	.dataa(seg7_num[6]),
	.datab(seg7_num[5]),
	.datac(seg7_num[7]),
	.datad(seg7_num[4]),
	.cin(gnd),
	.combout(u_seg7_rtlcP1[7]),
	.cout());
// synopsys translate_off
defparam ix3377z7097.lut_mask = 16'h9EFD;
defparam ix3377z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y16_N8
fiftyfivenm_lcell_comb ix3377z7096(
// Equation(s):
// u_seg7_rtlcP1[0] = (seg7_num[2] & ((seg7_num[1]) # (seg7_num[3] $ (seg7_num[0])))) # (!seg7_num[2] & ((seg7_num[1] $ (seg7_num[3])) # (!seg7_num[0])))

	.dataa(seg7_num[2]),
	.datab(seg7_num[1]),
	.datac(seg7_num[3]),
	.datad(seg7_num[0]),
	.cin(gnd),
	.combout(u_seg7_rtlcP1[0]),
	.cout());
// synopsys translate_off
defparam ix3377z7096.lut_mask = 16'h9EFD;
defparam ix3377z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N18
fiftyfivenm_lcell_comb ix3377z7095(
// Equation(s):
// u_seg7_u_dual_seg7_muxed_char_0_ = (reg_q_10__aq & (u_seg7_rtlcP1[7])) # (!reg_q_10__aq & ((u_seg7_rtlcP1[0])))

	.dataa(reg_q_10__aq),
	.datab(u_seg7_rtlcP1[7]),
	.datac(gnd),
	.datad(u_seg7_rtlcP1[0]),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_muxed_char_0_),
	.cout());
// synopsys translate_off
defparam ix3377z7095.lut_mask = 16'hDD88;
defparam ix3377z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X12_Y14_N19
dffeas u_seg7_u_dual_seg7_reg_o_char_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_muxed_char_0_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_0_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N14
fiftyfivenm_lcell_comb ix5371z7097(
// Equation(s):
// u_seg7_rtlcP1[9] = (seg7_num[6] & (((!seg7_num[5] & seg7_num[4])) # (!seg7_num[7]))) # (!seg7_num[6] & (((seg7_num[7]) # (seg7_num[4])) # (!seg7_num[5])))

	.dataa(seg7_num[6]),
	.datab(seg7_num[5]),
	.datac(seg7_num[7]),
	.datad(seg7_num[4]),
	.cin(gnd),
	.combout(u_seg7_rtlcP1[9]),
	.cout());
// synopsys translate_off
defparam ix5371z7097.lut_mask = 16'h7F5B;
defparam ix5371z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y16_N18
fiftyfivenm_lcell_comb ix5371z7096(
// Equation(s):
// u_seg7_rtlcP1[2] = (seg7_num[2] & (((!seg7_num[1] & seg7_num[0])) # (!seg7_num[3]))) # (!seg7_num[2] & (((seg7_num[3]) # (seg7_num[0])) # (!seg7_num[1])))

	.dataa(seg7_num[2]),
	.datab(seg7_num[1]),
	.datac(seg7_num[3]),
	.datad(seg7_num[0]),
	.cin(gnd),
	.combout(u_seg7_rtlcP1[2]),
	.cout());
// synopsys translate_off
defparam ix5371z7096.lut_mask = 16'h7F5B;
defparam ix5371z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N8
fiftyfivenm_lcell_comb ix5371z7095(
// Equation(s):
// u_seg7_u_dual_seg7_muxed_char_2_ = (reg_q_10__aq & (u_seg7_rtlcP1[9])) # (!reg_q_10__aq & ((u_seg7_rtlcP1[2])))

	.dataa(reg_q_10__aq),
	.datab(gnd),
	.datac(u_seg7_rtlcP1[9]),
	.datad(u_seg7_rtlcP1[2]),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_muxed_char_2_),
	.cout());
// synopsys translate_off
defparam ix5371z7095.lut_mask = 16'hF5A0;
defparam ix5371z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X12_Y14_N9
dffeas u_seg7_u_dual_seg7_reg_o_char_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_muxed_char_2_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_2_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y16_N4
fiftyfivenm_lcell_comb ix6368z7096(
// Equation(s):
// u_seg7_rtlcP1[3] = (seg7_num[1] & ((seg7_num[2] & ((!seg7_num[0]))) # (!seg7_num[2] & ((seg7_num[0]) # (!seg7_num[3]))))) # (!seg7_num[1] & ((seg7_num[3]) # (seg7_num[2] $ (!seg7_num[0]))))

	.dataa(seg7_num[2]),
	.datab(seg7_num[1]),
	.datac(seg7_num[3]),
	.datad(seg7_num[0]),
	.cin(gnd),
	.combout(u_seg7_rtlcP1[3]),
	.cout());
// synopsys translate_off
defparam ix6368z7096.lut_mask = 16'h76BD;
defparam ix6368z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N10
fiftyfivenm_lcell_comb ix6368z7097(
// Equation(s):
// u_seg7_rtlcP1[10] = (seg7_num[5] & ((seg7_num[6] & ((!seg7_num[4]))) # (!seg7_num[6] & ((seg7_num[4]) # (!seg7_num[7]))))) # (!seg7_num[5] & ((seg7_num[7]) # (seg7_num[6] $ (!seg7_num[4]))))

	.dataa(seg7_num[6]),
	.datab(seg7_num[5]),
	.datac(seg7_num[7]),
	.datad(seg7_num[4]),
	.cin(gnd),
	.combout(u_seg7_rtlcP1[10]),
	.cout());
// synopsys translate_off
defparam ix6368z7097.lut_mask = 16'h76BD;
defparam ix6368z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N28
fiftyfivenm_lcell_comb ix6368z7095(
// Equation(s):
// u_seg7_u_dual_seg7_muxed_char_3_ = (reg_q_10__aq & ((u_seg7_rtlcP1[10]))) # (!reg_q_10__aq & (u_seg7_rtlcP1[3]))

	.dataa(reg_q_10__aq),
	.datab(gnd),
	.datac(u_seg7_rtlcP1[3]),
	.datad(u_seg7_rtlcP1[10]),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_muxed_char_3_),
	.cout());
// synopsys translate_off
defparam ix6368z7095.lut_mask = 16'hFA50;
defparam ix6368z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X12_Y14_N29
dffeas u_seg7_u_dual_seg7_reg_o_char_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_muxed_char_3_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_3_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N6
fiftyfivenm_lcell_comb ix7365z7097(
// Equation(s):
// u_seg7_rtlcP1[11] = (seg7_num[5] & (((seg7_num[7]) # (!seg7_num[4])))) # (!seg7_num[5] & ((seg7_num[6] & (seg7_num[7])) # (!seg7_num[6] & ((!seg7_num[4])))))

	.dataa(seg7_num[6]),
	.datab(seg7_num[5]),
	.datac(seg7_num[7]),
	.datad(seg7_num[4]),
	.cin(gnd),
	.combout(u_seg7_rtlcP1[11]),
	.cout());
// synopsys translate_off
defparam ix7365z7097.lut_mask = 16'hE0FD;
defparam ix7365z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y16_N14
fiftyfivenm_lcell_comb ix7365z7096(
// Equation(s):
// u_seg7_rtlcP1[4] = (seg7_num[1] & (((seg7_num[3]) # (!seg7_num[0])))) # (!seg7_num[1] & ((seg7_num[2] & (seg7_num[3])) # (!seg7_num[2] & ((!seg7_num[0])))))

	.dataa(seg7_num[2]),
	.datab(seg7_num[1]),
	.datac(seg7_num[3]),
	.datad(seg7_num[0]),
	.cin(gnd),
	.combout(u_seg7_rtlcP1[4]),
	.cout());
// synopsys translate_off
defparam ix7365z7096.lut_mask = 16'hE0FD;
defparam ix7365z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X12_Y14_N16
fiftyfivenm_lcell_comb ix7365z7095(
// Equation(s):
// u_seg7_u_dual_seg7_muxed_char_4_ = (reg_q_10__aq & (u_seg7_rtlcP1[11])) # (!reg_q_10__aq & ((u_seg7_rtlcP1[4])))

	.dataa(u_seg7_rtlcP1[11]),
	.datab(gnd),
	.datac(u_seg7_rtlcP1[4]),
	.datad(reg_q_10__aq),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_muxed_char_4_),
	.cout());
// synopsys translate_off
defparam ix7365z7095.lut_mask = 16'hAAF0;
defparam ix7365z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X12_Y14_N17
dffeas u_seg7_u_dual_seg7_reg_o_char_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_muxed_char_4_),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_4_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y16_N6
fiftyfivenm_lcell_comb ix6634z7095(
// Equation(s):
// nx6634z1 = (u_lab3_reg_state_0__aq & ((u_lab3_reg_o_done_aq) # (u_lab3_reg_state_4__aq)))

	.dataa(u_lab3_reg_state_0__aq),
	.datab(gnd),
	.datac(u_lab3_reg_o_done_aq),
	.datad(u_lab3_reg_state_4__aq),
	.cin(gnd),
	.combout(nx6634z1),
	.cout());
// synopsys translate_off
defparam ix6634z7095.lut_mask = 16'hAAA0;
defparam ix6634z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X12_Y16_N7
dffeas u_lab3_reg_o_done(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx6634z1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_lab3_reg_o_done_aq),
	.prn(vcc));
// synopsys translate_off
defparam u_lab3_reg_o_done.is_wysiwyg = "true";
defparam u_lab3_reg_o_done.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X12_Y16_N0
fiftyfivenm_lcell_comb u_seg7_u_dual_seg7_reg_o_char_7__afeeder(
// Equation(s):
// u_seg7_u_dual_seg7_reg_o_char_7__afeeder_combout = u_lab3_reg_o_done_aq

	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(u_lab3_reg_o_done_aq),
	.cin(gnd),
	.combout(u_seg7_u_dual_seg7_reg_o_char_7__afeeder_combout),
	.cout());
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_7__afeeder.lut_mask = 16'hFF00;
defparam u_seg7_u_dual_seg7_reg_o_char_7__afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X12_Y16_N1
dffeas u_seg7_u_dual_seg7_reg_o_char_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(u_seg7_u_dual_seg7_reg_o_char_7__afeeder_combout),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(u_seg7_u_dual_seg7_load_reg),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(u_seg7_u_dual_seg7_reg_o_char_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam u_seg7_u_dual_seg7_reg_o_char_7_.is_wysiwyg = "true";
defparam u_seg7_u_dual_seg7_reg_o_char_7_.power_up = "low";
// synopsys translate_on

// Location: IOIBUF_X10_Y19_N22
fiftyfivenm_io_ibuf sw_a2_a_ainput(
	.i(sw[2]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a2_a_ainput_o));
// synopsys translate_off
defparam sw_a2_a_ainput.bus_hold = "false";
defparam sw_a2_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a2_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N0
fiftyfivenm_lcell_comb ix2837_fadd(
// Equation(s):
// inc_d_0__dup_2867 = reg_q_0__dup_29_aq $ (VCC)
// nx47817z1 = CARRY(reg_q_0__dup_29_aq)

	.dataa(gnd),
	.datab(reg_q_0__dup_29_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(inc_d_0__dup_2867),
	.cout(nx47817z1));
// synopsys translate_off
defparam ix2837_fadd.lut_mask = 16'h33CC;
defparam ix2837_fadd.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X11_Y10_N1
dffeas reg_q_0__dup_29(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_0__dup_2867),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx62450z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_0__dup_29_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_0__dup_29.is_wysiwyg = "true";
defparam reg_q_0__dup_29.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N2
fiftyfivenm_lcell_comb ix2839_fadd(
// Equation(s):
// inc_d_1__dup_2869 = (reg_q_1__dup_28_aq & (!nx47817z1)) # (!reg_q_1__dup_28_aq & ((nx47817z1) # (GND)))
// nx51350z1 = CARRY((!nx47817z1) # (!reg_q_1__dup_28_aq))

	.dataa(gnd),
	.datab(reg_q_1__dup_28_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx47817z1),
	.combout(inc_d_1__dup_2869),
	.cout(nx51350z1));
// synopsys translate_off
defparam ix2839_fadd.lut_mask = 16'h3C3F;
defparam ix2839_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y10_N3
dffeas reg_q_1__dup_28(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_1__dup_2869),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx62450z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_1__dup_28_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_1__dup_28.is_wysiwyg = "true";
defparam reg_q_1__dup_28.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N4
fiftyfivenm_lcell_comb ix2841_fadd(
// Equation(s):
// inc_d_2__dup_2871 = (reg_q_2__dup_27_aq & (nx51350z1 $ (GND))) # (!reg_q_2__dup_27_aq & (!nx51350z1 & VCC))
// nx1388z1 = CARRY((reg_q_2__dup_27_aq & !nx51350z1))

	.dataa(gnd),
	.datab(reg_q_2__dup_27_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx51350z1),
	.combout(inc_d_2__dup_2871),
	.cout(nx1388z1));
// synopsys translate_off
defparam ix2841_fadd.lut_mask = 16'hC30C;
defparam ix2841_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y10_N5
dffeas reg_q_2__dup_27(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_2__dup_2871),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx62450z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_2__dup_27_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_2__dup_27.is_wysiwyg = "true";
defparam reg_q_2__dup_27.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N6
fiftyfivenm_lcell_comb ix2843_fadd(
// Equation(s):
// inc_d_3__dup_2873 = (reg_q_3__dup_26_aq & (!nx1388z1)) # (!reg_q_3__dup_26_aq & ((nx1388z1) # (GND)))
// nx16962z1 = CARRY((!nx1388z1) # (!reg_q_3__dup_26_aq))

	.dataa(reg_q_3__dup_26_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx1388z1),
	.combout(inc_d_3__dup_2873),
	.cout(nx16962z1));
// synopsys translate_off
defparam ix2843_fadd.lut_mask = 16'h5A5F;
defparam ix2843_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y10_N7
dffeas reg_q_3__dup_26(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_3__dup_2873),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx62450z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_3__dup_26_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_3__dup_26.is_wysiwyg = "true";
defparam reg_q_3__dup_26.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N8
fiftyfivenm_lcell_comb ix2845_fadd(
// Equation(s):
// inc_d_4__dup_2875 = (reg_q_4__dup_25_aq & (nx16962z1 $ (GND))) # (!reg_q_4__dup_25_aq & (!nx16962z1 & VCC))
// nx32536z1 = CARRY((reg_q_4__dup_25_aq & !nx16962z1))

	.dataa(gnd),
	.datab(reg_q_4__dup_25_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx16962z1),
	.combout(inc_d_4__dup_2875),
	.cout(nx32536z1));
// synopsys translate_off
defparam ix2845_fadd.lut_mask = 16'hC30C;
defparam ix2845_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y10_N9
dffeas reg_q_4__dup_25(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_4__dup_2875),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx62450z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_4__dup_25_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_4__dup_25.is_wysiwyg = "true";
defparam reg_q_4__dup_25.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N10
fiftyfivenm_lcell_comb ix2847_fadd(
// Equation(s):
// inc_d_5__dup_2877 = (reg_q_5__dup_24_aq & (!nx32536z1)) # (!reg_q_5__dup_24_aq & ((nx32536z1) # (GND)))
// nx17426z1 = CARRY((!nx32536z1) # (!reg_q_5__dup_24_aq))

	.dataa(reg_q_5__dup_24_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx32536z1),
	.combout(inc_d_5__dup_2877),
	.cout(nx17426z1));
// synopsys translate_off
defparam ix2847_fadd.lut_mask = 16'h5A5F;
defparam ix2847_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y10_N11
dffeas reg_q_5__dup_24(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_5__dup_2877),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx62450z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_5__dup_24_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_5__dup_24.is_wysiwyg = "true";
defparam reg_q_5__dup_24.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N12
fiftyfivenm_lcell_comb ix2849_fadd(
// Equation(s):
// inc_d_6__dup_2879 = (reg_q_6__dup_23_aq & (nx17426z1 $ (GND))) # (!reg_q_6__dup_23_aq & (!nx17426z1 & VCC))
// nx49331z1 = CARRY((reg_q_6__dup_23_aq & !nx17426z1))

	.dataa(reg_q_6__dup_23_aq),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(nx17426z1),
	.combout(inc_d_6__dup_2879),
	.cout(nx49331z1));
// synopsys translate_off
defparam ix2849_fadd.lut_mask = 16'hA50A;
defparam ix2849_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y10_N13
dffeas reg_q_6__dup_23(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_6__dup_2879),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx62450z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_6__dup_23_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_6__dup_23.is_wysiwyg = "true";
defparam reg_q_6__dup_23.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N14
fiftyfivenm_lcell_comb ix2851_fadd(
// Equation(s):
// inc_d_7__dup_2881 = (reg_q_7__dup_22_aq & (!nx49331z1)) # (!reg_q_7__dup_22_aq & ((nx49331z1) # (GND)))
// nx33757z1 = CARRY((!nx49331z1) # (!reg_q_7__dup_22_aq))

	.dataa(gnd),
	.datab(reg_q_7__dup_22_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx49331z1),
	.combout(inc_d_7__dup_2881),
	.cout(nx33757z1));
// synopsys translate_off
defparam ix2851_fadd.lut_mask = 16'h3C3F;
defparam ix2851_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y10_N15
dffeas reg_q_7__dup_22(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_7__dup_2881),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx62450z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_7__dup_22_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_7__dup_22.is_wysiwyg = "true";
defparam reg_q_7__dup_22.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N16
fiftyfivenm_lcell_comb ix2853_fadd(
// Equation(s):
// inc_d_8__dup_2883 = (reg_q_8__dup_21_aq & (nx33757z1 $ (GND))) # (!reg_q_8__dup_21_aq & (!nx33757z1 & VCC))
// nx47250z1 = CARRY((reg_q_8__dup_21_aq & !nx33757z1))

	.dataa(gnd),
	.datab(reg_q_8__dup_21_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx33757z1),
	.combout(inc_d_8__dup_2883),
	.cout(nx47250z1));
// synopsys translate_off
defparam ix2853_fadd.lut_mask = 16'hC30C;
defparam ix2853_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y10_N17
dffeas reg_q_8__dup_21(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_8__dup_2883),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx62450z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_8__dup_21_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_8__dup_21.is_wysiwyg = "true";
defparam reg_q_8__dup_21.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y14_N18
fiftyfivenm_lcell_comb ix62450z7100(
// Equation(s):
// nx62450z6 = (!reg_q_4__dup_25_aq & (!reg_q_0__dup_29_aq & (!yes_uart_u_uart_reg_RxDivisor_4__aq & !reg_q_7__dup_22_aq)))

	.dataa(reg_q_4__dup_25_aq),
	.datab(reg_q_0__dup_29_aq),
	.datac(yes_uart_u_uart_reg_RxDivisor_4__aq),
	.datad(reg_q_7__dup_22_aq),
	.cin(gnd),
	.combout(nx62450z6),
	.cout());
// synopsys translate_off
defparam ix62450z7100.lut_mask = 16'h0001;
defparam ix62450z7100.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y14_N24
fiftyfivenm_lcell_comb ix62450z7099(
// Equation(s):
// nx62450z5 = (reg_q_4__dup_25_aq & (reg_q_0__dup_29_aq & (yes_uart_u_uart_reg_RxDivisor_4__aq & reg_q_7__dup_22_aq)))

	.dataa(reg_q_4__dup_25_aq),
	.datab(reg_q_0__dup_29_aq),
	.datac(yes_uart_u_uart_reg_RxDivisor_4__aq),
	.datad(reg_q_7__dup_22_aq),
	.cin(gnd),
	.combout(nx62450z5),
	.cout());
// synopsys translate_off
defparam ix62450z7099.lut_mask = 16'h8000;
defparam ix62450z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N28
fiftyfivenm_lcell_comb ix62450z7098(
// Equation(s):
// nx62450z4 = (reg_q_5__dup_24_aq & (reg_q_8__dup_21_aq & ((nx62450z5)))) # (!reg_q_5__dup_24_aq & (!reg_q_8__dup_21_aq & (nx62450z6)))

	.dataa(reg_q_5__dup_24_aq),
	.datab(reg_q_8__dup_21_aq),
	.datac(nx62450z6),
	.datad(nx62450z5),
	.cin(gnd),
	.combout(nx62450z4),
	.cout());
// synopsys translate_off
defparam ix62450z7098.lut_mask = 16'h9810;
defparam ix62450z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N18
fiftyfivenm_lcell_comb ix38_fadd(
// Equation(s):
// inc_d_9__dup_2885 = (reg_q_9__dup_20_aq & (!nx47250z1)) # (!reg_q_9__dup_20_aq & ((nx47250z1) # (GND)))
// nx47353z1 = CARRY((!nx47250z1) # (!reg_q_9__dup_20_aq))

	.dataa(gnd),
	.datab(reg_q_9__dup_20_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx47250z1),
	.combout(inc_d_9__dup_2885),
	.cout(nx47353z1));
// synopsys translate_off
defparam ix38_fadd.lut_mask = 16'h3C3F;
defparam ix38_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y10_N19
dffeas reg_q_9__dup_20(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_9__dup_2885),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx62450z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_9__dup_20_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_9__dup_20.is_wysiwyg = "true";
defparam reg_q_9__dup_20.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N20
fiftyfivenm_lcell_comb ix2855_fadd(
// Equation(s):
// inc_d_10__dup_2887 = (reg_q_10__dup_19_aq & (nx47353z1 $ (GND))) # (!reg_q_10__dup_19_aq & (!nx47353z1 & VCC))
// nx55140z1 = CARRY((reg_q_10__dup_19_aq & !nx47353z1))

	.dataa(gnd),
	.datab(reg_q_10__dup_19_aq),
	.datac(gnd),
	.datad(vcc),
	.cin(nx47353z1),
	.combout(inc_d_10__dup_2887),
	.cout(nx55140z1));
// synopsys translate_off
defparam ix2855_fadd.lut_mask = 16'hC30C;
defparam ix2855_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y10_N21
dffeas reg_q_10__dup_19(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_10__dup_2887),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx62450z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_10__dup_19_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_10__dup_19.is_wysiwyg = "true";
defparam reg_q_10__dup_19.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N26
fiftyfivenm_lcell_comb ix62450z7097(
// Equation(s):
// nx62450z3 = (!reg_q_10__dup_19_aq & !reg_q_9__dup_20_aq)

	.dataa(gnd),
	.datab(reg_q_10__dup_19_aq),
	.datac(gnd),
	.datad(reg_q_9__dup_20_aq),
	.cin(gnd),
	.combout(nx62450z3),
	.cout());
// synopsys translate_off
defparam ix62450z7097.lut_mask = 16'h0033;
defparam ix62450z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N22
fiftyfivenm_lcell_comb ix2856_fadd(
// Equation(s):
// inc_d_11_ = reg_q_11__aq $ (nx55140z1)

	.dataa(reg_q_11__aq),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(nx55140z1),
	.combout(inc_d_11_),
	.cout());
// synopsys translate_off
defparam ix2856_fadd.lut_mask = 16'h5A5A;
defparam ix2856_fadd.sum_lutc_input = "cin";
// synopsys translate_on

// Location: FF_X11_Y10_N23
dffeas reg_q_11_(
	.clk(clk_ainputclkctrl_outclk),
	.d(inc_d_11_),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(nx62450z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_q_11__aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_q_11_.is_wysiwyg = "true";
defparam reg_q_11_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N24
fiftyfivenm_lcell_comb ix62450z7096(
// Equation(s):
// nx62450z2 = (!reg_q_11__aq & (!reg_q_1__dup_28_aq & (!reg_q_2__dup_27_aq & !reg_q_3__dup_26_aq)))

	.dataa(reg_q_11__aq),
	.datab(reg_q_1__dup_28_aq),
	.datac(reg_q_2__dup_27_aq),
	.datad(reg_q_3__dup_26_aq),
	.cin(gnd),
	.combout(nx62450z2),
	.cout());
// synopsys translate_off
defparam ix62450z7096.lut_mask = 16'h0001;
defparam ix62450z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X11_Y10_N30
fiftyfivenm_lcell_comb ix62450z7095(
// Equation(s):
// nx62450z1 = (!reg_q_6__dup_23_aq & (nx62450z4 & (nx62450z3 & nx62450z2)))

	.dataa(reg_q_6__dup_23_aq),
	.datab(nx62450z4),
	.datac(nx62450z3),
	.datad(nx62450z2),
	.cin(gnd),
	.combout(nx62450z1),
	.cout());
// synopsys translate_off
defparam ix62450z7095.lut_mask = 16'h4000;
defparam ix62450z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X11_Y10_N31
dffeas yes_uart_u_uart_reg_TopTx(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx62450z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_TopTx_aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_TopTx.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_TopTx.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N18
fiftyfivenm_lcell_comb ix45921z7095(
// Equation(s):
// nx45921z1 = yes_uart_u_uart_reg_TxFSM_1__aq $ (((!nx46918z2 & yes_uart_u_uart_reg_TxFSM_0__aq)))

	.dataa(gnd),
	.datab(nx46918z2),
	.datac(yes_uart_u_uart_reg_TxFSM_1__aq),
	.datad(yes_uart_u_uart_reg_TxFSM_0__aq),
	.cin(gnd),
	.combout(nx45921z1),
	.cout());
// synopsys translate_off
defparam ix45921z7095.lut_mask = 16'hC3F0;
defparam ix45921z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y13_N19
dffeas yes_uart_u_uart_reg_TxFSM_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx45921z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_TxFSM_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_TxFSM_1_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_TxFSM_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N22
fiftyfivenm_lcell_comb ix46262z7095(
// Equation(s):
// nx46262z1 = (reg_byte_valid_aq) # ((yes_uart_u_uart_reg_TxFSM_0__aq) # (yes_uart_u_uart_reg_TxFSM_1__aq))

	.dataa(gnd),
	.datab(reg_byte_valid_aq),
	.datac(yes_uart_u_uart_reg_TxFSM_0__aq),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(nx46262z1),
	.cout());
// synopsys translate_off
defparam ix46262z7095.lut_mask = 16'hFFFC;
defparam ix46262z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y13_N23
dffeas yes_uart_u_uart_reg_TxBusy(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx46262z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_TxBusy_aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_TxBusy.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_TxBusy.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N28
fiftyfivenm_lcell_comb ix60976z7095(
// Equation(s):
// byte_valid_3n0r1 = (yes_uart_u_uart_reg_RxRDYi_aq) # ((yes_uart_u_uart_reg_TxBusy_aq & reg_byte_valid_aq))

	.dataa(yes_uart_u_uart_reg_TxBusy_aq),
	.datab(yes_uart_u_uart_reg_RxRDYi_aq),
	.datac(reg_byte_valid_aq),
	.datad(gnd),
	.cin(gnd),
	.combout(byte_valid_3n0r1),
	.cout());
// synopsys translate_off
defparam ix60976z7095.lut_mask = 16'hECEC;
defparam ix60976z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y13_N29
dffeas reg_byte_valid(
	.clk(clk_ainputclkctrl_outclk),
	.d(byte_valid_3n0r1),
	.asdata(vcc),
	.clrn(vcc),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(reg_byte_valid_aq),
	.prn(vcc));
// synopsys translate_off
defparam reg_byte_valid.is_wysiwyg = "true";
defparam reg_byte_valid.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N12
fiftyfivenm_lcell_comb ix46918z7099(
// Equation(s):
// nx46918z5 = (yes_uart_u_uart_reg_TxFSM_0__aq & (((yes_uart_u_uart_reg_TxFSM_1__aq)) # (!yes_uart_u_uart_reg_TopTx_aq))) # (!yes_uart_u_uart_reg_TxFSM_0__aq & (((!reg_byte_valid_aq & !yes_uart_u_uart_reg_TxFSM_1__aq))))

	.dataa(yes_uart_u_uart_reg_TxFSM_0__aq),
	.datab(yes_uart_u_uart_reg_TopTx_aq),
	.datac(reg_byte_valid_aq),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(nx46918z5),
	.cout());
// synopsys translate_off
defparam ix46918z7099.lut_mask = 16'hAA27;
defparam ix46918z7099.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N26
fiftyfivenm_lcell_comb ix51272z7095(
// Equation(s):
// nx51272z1 = ((yes_uart_u_uart_reg_TopTx_aq & !yes_uart_u_uart_reg_TxFSM_1__aq)) # (!yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0__aq)

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_TopTx_aq),
	.datac(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(nx51272z1),
	.cout());
// synopsys translate_off
defparam ix51272z7095.lut_mask = 16'h0FCF;
defparam ix51272z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N20
fiftyfivenm_lcell_comb ix51272z7096(
// Equation(s):
// nx51272z2 = (yes_uart_u_uart_reg_TopTx_aq & (yes_uart_u_uart_reg_TxFSM_0__aq $ (yes_uart_u_uart_reg_TxFSM_1__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_TopTx_aq),
	.datac(yes_uart_u_uart_reg_TxFSM_0__aq),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(nx51272z2),
	.cout());
// synopsys translate_off
defparam ix51272z7096.lut_mask = 16'h0CC0;
defparam ix51272z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y13_N27
dffeas yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx51272z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx51272z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_.is_wysiwyg = "true";
defparam yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N4
fiftyfivenm_lcell_comb ix50275z7095(
// Equation(s):
// nx50275z1 = (yes_uart_u_uart_reg_TopTx_aq & (yes_uart_u_uart_reg_TxFSM_1__aq & (yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0__aq $ (!yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1__aq)))) # (!yes_uart_u_uart_reg_TopTx_aq & 
// (yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0__aq $ ((!yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1__aq))))

	.dataa(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.datab(yes_uart_u_uart_reg_TopTx_aq),
	.datac(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(nx50275z1),
	.cout());
// synopsys translate_off
defparam ix50275z7095.lut_mask = 16'hA521;
defparam ix50275z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y13_N5
dffeas yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx50275z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx51272z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_.is_wysiwyg = "true";
defparam yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N6
fiftyfivenm_lcell_comb ix48281z7096(
// Equation(s):
// nx48281z2 = (yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0__aq) # (yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1__aq)

	.dataa(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.datab(gnd),
	.datac(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx48281z2),
	.cout());
// synopsys translate_off
defparam ix48281z7096.lut_mask = 16'hFAFA;
defparam ix48281z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N16
fiftyfivenm_lcell_comb ix49278z7096(
// Equation(s):
// nx49278z2 = (yes_uart_u_uart_reg_TopTx_aq & !yes_uart_u_uart_reg_TxFSM_1__aq)

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_TopTx_aq),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(nx49278z2),
	.cout());
// synopsys translate_off
defparam ix49278z7096.lut_mask = 16'h00CC;
defparam ix49278z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N2
fiftyfivenm_lcell_comb ix49278z7095(
// Equation(s):
// nx49278z1 = (!nx49278z2 & (yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2__aq $ (((!yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0__aq & !yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1__aq)))))

	.dataa(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.datab(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.datac(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2__aq),
	.datad(nx49278z2),
	.cin(gnd),
	.combout(nx49278z1),
	.cout());
// synopsys translate_off
defparam ix49278z7095.lut_mask = 16'h00E1;
defparam ix49278z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y13_N3
dffeas yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx49278z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx51272z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2_.is_wysiwyg = "true";
defparam yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N8
fiftyfivenm_lcell_comb ix48281z7095(
// Equation(s):
// nx48281z1 = (nx49278z2) # (yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3__aq $ (((!nx48281z2 & !yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2__aq))))

	.dataa(nx48281z2),
	.datab(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2__aq),
	.datac(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3__aq),
	.datad(nx49278z2),
	.cin(gnd),
	.combout(nx48281z1),
	.cout());
// synopsys translate_off
defparam ix48281z7095.lut_mask = 16'hFFE1;
defparam ix48281z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y13_N9
dffeas yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx48281z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx51272z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3_.is_wysiwyg = "true";
defparam yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N24
fiftyfivenm_lcell_comb ix46918z7098(
// Equation(s):
// nx46918z4 = (!yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3__aq & !yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3__aq),
	.datad(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2__aq),
	.cin(gnd),
	.combout(nx46918z4),
	.cout());
// synopsys translate_off
defparam ix46918z7098.lut_mask = 16'h000F;
defparam ix46918z7098.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N10
fiftyfivenm_lcell_comb ix46918z7097(
// Equation(s):
// nx46918z3 = (((yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1__aq) # (!nx46918z4)) # (!yes_uart_u_uart_reg_TopTx_aq)) # (!yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0__aq)

	.dataa(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0__aq),
	.datab(yes_uart_u_uart_reg_TopTx_aq),
	.datac(yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1__aq),
	.datad(nx46918z4),
	.cin(gnd),
	.combout(nx46918z3),
	.cout());
// synopsys translate_off
defparam ix46918z7097.lut_mask = 16'hF7FF;
defparam ix46918z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N14
fiftyfivenm_lcell_comb ix46918z7096(
// Equation(s):
// nx46918z2 = (nx46918z5 & (((!yes_uart_u_uart_reg_TxFSM_1__aq)) # (!yes_uart_u_uart_reg_TopTx_aq))) # (!nx46918z5 & (((nx46918z3 & yes_uart_u_uart_reg_TxFSM_1__aq))))

	.dataa(nx46918z5),
	.datab(yes_uart_u_uart_reg_TopTx_aq),
	.datac(nx46918z3),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(nx46918z2),
	.cout());
// synopsys translate_off
defparam ix46918z7096.lut_mask = 16'h72AA;
defparam ix46918z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N0
fiftyfivenm_lcell_comb ix46918z7095(
// Equation(s):
// nx46918z1 = nx46918z2 $ (!yes_uart_u_uart_reg_TxFSM_0__aq)

	.dataa(gnd),
	.datab(nx46918z2),
	.datac(yes_uart_u_uart_reg_TxFSM_0__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx46918z1),
	.cout());
// synopsys translate_off
defparam ix46918z7095.lut_mask = 16'hC3C3;
defparam ix46918z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y13_N1
dffeas yes_uart_u_uart_reg_TxFSM_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx46918z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_TxFSM_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_TxFSM_0_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_TxFSM_0_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N30
fiftyfivenm_lcell_comb ix21131z7095(
// Equation(s):
// NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_8_ = (!reg_byte_reg_7__aq & !yes_uart_u_uart_reg_TxFSM_1__aq)

	.dataa(gnd),
	.datab(gnd),
	.datac(reg_byte_reg_7__aq),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_8_),
	.cout());
// synopsys translate_off
defparam ix21131z7095.lut_mask = 16'h000F;
defparam ix21131z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y13_N30
fiftyfivenm_lcell_comb ix21131z7096(
// Equation(s):
// nx21131z1 = (!yes_uart_u_uart_reg_TxFSM_0__aq & ((yes_uart_u_uart_reg_TxFSM_1__aq & (yes_uart_u_uart_reg_TopTx_aq)) # (!yes_uart_u_uart_reg_TxFSM_1__aq & ((reg_byte_valid_aq)))))

	.dataa(yes_uart_u_uart_reg_TxFSM_0__aq),
	.datab(yes_uart_u_uart_reg_TopTx_aq),
	.datac(reg_byte_valid_aq),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(nx21131z1),
	.cout());
// synopsys translate_off
defparam ix21131z7096.lut_mask = 16'h4450;
defparam ix21131z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y13_N31
dffeas yes_uart_u_uart_reg_Tx_Reg_8_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_8_),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx21131z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Tx_Reg_8__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Tx_Reg_8_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Tx_Reg_8_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N28
fiftyfivenm_lcell_comb ix22128z7095(
// Equation(s):
// NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_7_ = (yes_uart_u_uart_reg_TxFSM_1__aq & ((yes_uart_u_uart_reg_Tx_Reg_8__aq))) # (!yes_uart_u_uart_reg_TxFSM_1__aq & (!reg_byte_reg_6__aq))

	.dataa(gnd),
	.datab(reg_byte_reg_6__aq),
	.datac(yes_uart_u_uart_reg_Tx_Reg_8__aq),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_7_),
	.cout());
// synopsys translate_off
defparam ix22128z7095.lut_mask = 16'hF033;
defparam ix22128z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y13_N29
dffeas yes_uart_u_uart_reg_Tx_Reg_7_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_7_),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx21131z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Tx_Reg_7__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Tx_Reg_7_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Tx_Reg_7_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N18
fiftyfivenm_lcell_comb ix23125z7095(
// Equation(s):
// NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_6_ = (yes_uart_u_uart_reg_TxFSM_1__aq & ((yes_uart_u_uart_reg_Tx_Reg_7__aq))) # (!yes_uart_u_uart_reg_TxFSM_1__aq & (!reg_byte_reg_5__aq))

	.dataa(reg_byte_reg_5__aq),
	.datab(yes_uart_u_uart_reg_Tx_Reg_7__aq),
	.datac(gnd),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_6_),
	.cout());
// synopsys translate_off
defparam ix23125z7095.lut_mask = 16'hCC55;
defparam ix23125z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y13_N19
dffeas yes_uart_u_uart_reg_Tx_Reg_6_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_6_),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx21131z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Tx_Reg_6__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Tx_Reg_6_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Tx_Reg_6_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N16
fiftyfivenm_lcell_comb ix24122z7095(
// Equation(s):
// NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_5_ = (yes_uart_u_uart_reg_TxFSM_1__aq & (yes_uart_u_uart_reg_Tx_Reg_6__aq)) # (!yes_uart_u_uart_reg_TxFSM_1__aq & ((!reg_byte_reg_4__aq)))

	.dataa(yes_uart_u_uart_reg_TxFSM_1__aq),
	.datab(yes_uart_u_uart_reg_Tx_Reg_6__aq),
	.datac(gnd),
	.datad(reg_byte_reg_4__aq),
	.cin(gnd),
	.combout(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_5_),
	.cout());
// synopsys translate_off
defparam ix24122z7095.lut_mask = 16'h88DD;
defparam ix24122z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y13_N17
dffeas yes_uart_u_uart_reg_Tx_Reg_5_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_5_),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx21131z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Tx_Reg_5__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Tx_Reg_5_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Tx_Reg_5_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N22
fiftyfivenm_lcell_comb ix25119z7095(
// Equation(s):
// NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_4_ = (yes_uart_u_uart_reg_TxFSM_1__aq & (yes_uart_u_uart_reg_Tx_Reg_5__aq)) # (!yes_uart_u_uart_reg_TxFSM_1__aq & ((!reg_byte_reg_3__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Tx_Reg_5__aq),
	.datac(reg_byte_reg_3__aq),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_4_),
	.cout());
// synopsys translate_off
defparam ix25119z7095.lut_mask = 16'hCC0F;
defparam ix25119z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y13_N23
dffeas yes_uart_u_uart_reg_Tx_Reg_4_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_4_),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx21131z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Tx_Reg_4__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Tx_Reg_4_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Tx_Reg_4_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N20
fiftyfivenm_lcell_comb ix26116z7095(
// Equation(s):
// NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_3_ = (yes_uart_u_uart_reg_TxFSM_1__aq & (yes_uart_u_uart_reg_Tx_Reg_4__aq)) # (!yes_uart_u_uart_reg_TxFSM_1__aq & ((!reg_byte_reg_2__aq)))

	.dataa(yes_uart_u_uart_reg_Tx_Reg_4__aq),
	.datab(gnd),
	.datac(reg_byte_reg_2__aq),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_3_),
	.cout());
// synopsys translate_off
defparam ix26116z7095.lut_mask = 16'hAA0F;
defparam ix26116z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y13_N21
dffeas yes_uart_u_uart_reg_Tx_Reg_3_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_3_),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx21131z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Tx_Reg_3__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Tx_Reg_3_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Tx_Reg_3_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N10
fiftyfivenm_lcell_comb ix27113z7095(
// Equation(s):
// NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_2_ = (yes_uart_u_uart_reg_TxFSM_1__aq & (yes_uart_u_uart_reg_Tx_Reg_3__aq)) # (!yes_uart_u_uart_reg_TxFSM_1__aq & ((!reg_byte_reg_1__aq)))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_Tx_Reg_3__aq),
	.datac(reg_byte_reg_1__aq),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_2_),
	.cout());
// synopsys translate_off
defparam ix27113z7095.lut_mask = 16'hCC0F;
defparam ix27113z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y13_N11
dffeas yes_uart_u_uart_reg_Tx_Reg_2_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_2_),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx21131z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Tx_Reg_2__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Tx_Reg_2_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Tx_Reg_2_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X14_Y13_N0
fiftyfivenm_lcell_comb ix28110z7095(
// Equation(s):
// NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_1_ = (yes_uart_u_uart_reg_TxFSM_1__aq & (yes_uart_u_uart_reg_Tx_Reg_2__aq)) # (!yes_uart_u_uart_reg_TxFSM_1__aq & ((!reg_byte_reg_0__aq)))

	.dataa(yes_uart_u_uart_reg_Tx_Reg_2__aq),
	.datab(gnd),
	.datac(reg_byte_reg_0__aq),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_1_),
	.cout());
// synopsys translate_off
defparam ix28110z7095.lut_mask = 16'hAA0F;
defparam ix28110z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X14_Y13_N1
dffeas yes_uart_u_uart_reg_Tx_Reg_1_(
	.clk(clk_ainputclkctrl_outclk),
	.d(NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_1_),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx21131z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Tx_Reg_1__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Tx_Reg_1_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Tx_Reg_1_.power_up = "low";
// synopsys translate_on

// Location: LCCOMB_X16_Y14_N10
fiftyfivenm_lcell_comb ix29107z7097(
// Equation(s):
// yes_uart_u_uart_Tx_Reg_14n6ss1[0] = (yes_uart_u_uart_reg_TxFSM_1__aq & ((!yes_uart_u_uart_reg_Tx_Reg_1__aq))) # (!yes_uart_u_uart_reg_TxFSM_1__aq & (!yes_uart_u_uart_reg_TxFSM_0__aq))

	.dataa(gnd),
	.datab(yes_uart_u_uart_reg_TxFSM_0__aq),
	.datac(yes_uart_u_uart_reg_Tx_Reg_1__aq),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(yes_uart_u_uart_Tx_Reg_14n6ss1[0]),
	.cout());
// synopsys translate_off
defparam ix29107z7097.lut_mask = 16'h0F33;
defparam ix29107z7097.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y14_N8
fiftyfivenm_lcell_comb ix29107z7096(
// Equation(s):
// nx29107z2 = (yes_uart_u_uart_reg_TxFSM_0__aq & (((yes_uart_u_uart_reg_TxFSM_1__aq)) # (!yes_uart_u_uart_reg_TopTx_aq))) # (!yes_uart_u_uart_reg_TxFSM_0__aq & ((yes_uart_u_uart_reg_TxFSM_1__aq & (!yes_uart_u_uart_reg_TopTx_aq)) # 
// (!yes_uart_u_uart_reg_TxFSM_1__aq & ((!reg_byte_valid_aq)))))

	.dataa(yes_uart_u_uart_reg_TopTx_aq),
	.datab(yes_uart_u_uart_reg_TxFSM_0__aq),
	.datac(reg_byte_valid_aq),
	.datad(yes_uart_u_uart_reg_TxFSM_1__aq),
	.cin(gnd),
	.combout(nx29107z2),
	.cout());
// synopsys translate_off
defparam ix29107z7096.lut_mask = 16'hDD47;
defparam ix29107z7096.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X16_Y14_N4
fiftyfivenm_lcell_comb ix29107z7095(
// Equation(s):
// nx29107z1 = (nx29107z2 & ((yes_uart_u_uart_reg_Tx_Reg_0__aq))) # (!nx29107z2 & (!yes_uart_u_uart_Tx_Reg_14n6ss1[0]))

	.dataa(yes_uart_u_uart_Tx_Reg_14n6ss1[0]),
	.datab(nx29107z2),
	.datac(yes_uart_u_uart_reg_Tx_Reg_0__aq),
	.datad(gnd),
	.cin(gnd),
	.combout(nx29107z1),
	.cout());
// synopsys translate_off
defparam ix29107z7095.lut_mask = 16'hD1D1;
defparam ix29107z7095.sum_lutc_input = "datac";
// synopsys translate_on

// Location: FF_X16_Y14_N5
dffeas yes_uart_u_uart_reg_Tx_Reg_0_(
	.clk(clk_ainputclkctrl_outclk),
	.d(nx29107z1),
	.asdata(vcc),
	.clrn(reset_n_ainput_o),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.q(yes_uart_u_uart_reg_Tx_Reg_0__aq),
	.prn(vcc));
// synopsys translate_off
defparam yes_uart_u_uart_reg_Tx_Reg_0_.is_wysiwyg = "true";
defparam yes_uart_u_uart_reg_Tx_Reg_0_.power_up = "low";
// synopsys translate_on

// Location: IOIBUF_X10_Y20_N15
fiftyfivenm_io_ibuf sw_a3_a_ainput(
	.i(sw[3]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a3_a_ainput_o));
// synopsys translate_off
defparam sw_a3_a_ainput.bus_hold = "false";
defparam sw_a3_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a3_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X10_Y21_N15
fiftyfivenm_io_ibuf sw_a4_a_ainput(
	.i(sw[4]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a4_a_ainput_o));
// synopsys translate_off
defparam sw_a4_a_ainput.bus_hold = "false";
defparam sw_a4_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a4_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X10_Y22_N15
fiftyfivenm_io_ibuf sw_a5_a_ainput(
	.i(sw[5]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a5_a_ainput_o));
// synopsys translate_off
defparam sw_a5_a_ainput.bus_hold = "false";
defparam sw_a5_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a5_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: IOIBUF_X3_Y0_N8
fiftyfivenm_io_ibuf sw_a6_a_ainput(
	.i(sw[6]),
	.ibar(gnd),
	.nsleep(vcc),
	.o(sw_a6_a_ainput_o));
// synopsys translate_off
defparam sw_a6_a_ainput.bus_hold = "false";
defparam sw_a6_a_ainput.listen_to_nsleep_signal = "false";
defparam sw_a6_a_ainput.simulate_z_as = "z";
// synopsys translate_on

// Location: UNVM_X0_Y11_N40
fiftyfivenm_unvm a_aQUARTUS_CREATED_UNVM_a(
	.arclk(vcc),
	.arshft(vcc),
	.drclk(vcc),
	.drshft(vcc),
	.drdin(vcc),
	.nprogram(vcc),
	.nerase(vcc),
	.nosc_ena(a_aQUARTUS_CREATED_GND_aI_combout),
	.par_en(vcc),
	.xe_ye(a_aQUARTUS_CREATED_GND_aI_combout),
	.se(a_aQUARTUS_CREATED_GND_aI_combout),
	.ardin(23'b11111111111111111111111),
	.busy(a_aQUARTUS_CREATED_UNVM_a_abusy),
	.osc(),
	.bgpbusy(),
	.sp_pass(),
	.se_pass(),
	.drdout());
// synopsys translate_off
defparam a_aQUARTUS_CREATED_UNVM_a.addr_range1_end_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.addr_range1_offset = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.addr_range2_offset = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.is_compressed_image = "false";
defparam a_aQUARTUS_CREATED_UNVM_a.is_dual_boot = "false";
defparam a_aQUARTUS_CREATED_UNVM_a.is_eram_skip = "false";
defparam a_aQUARTUS_CREATED_UNVM_a.max_ufm_valid_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.max_valid_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.min_ufm_valid_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.min_valid_addr = -1;
defparam a_aQUARTUS_CREATED_UNVM_a.part_name = "quartus_created_unvm";
defparam a_aQUARTUS_CREATED_UNVM_a.reserve_block = "true";
// synopsys translate_on

// Location: ADCBLOCK_X10_Y24_N0
fiftyfivenm_adcblock a_aQUARTUS_CREATED_ADC1_a(
	.soc(a_aQUARTUS_CREATED_GND_aI_combout),
	.usr_pwd(vcc),
	.tsen(a_aQUARTUS_CREATED_GND_aI_combout),
	.clkin_from_pll_c0(gnd),
	.chsel({a_aQUARTUS_CREATED_GND_aI_combout,a_aQUARTUS_CREATED_GND_aI_combout,a_aQUARTUS_CREATED_GND_aI_combout,a_aQUARTUS_CREATED_GND_aI_combout,a_aQUARTUS_CREATED_GND_aI_combout}),
	.eoc(a_aQUARTUS_CREATED_ADC1_a_aeoc),
	.dout());
// synopsys translate_off
defparam a_aQUARTUS_CREATED_ADC1_a.analog_input_pin_mask = 0;
defparam a_aQUARTUS_CREATED_ADC1_a.clkdiv = 1;
defparam a_aQUARTUS_CREATED_ADC1_a.device_partname_fivechar_prefix = "none";
defparam a_aQUARTUS_CREATED_ADC1_a.is_this_first_or_second_adc = 1;
defparam a_aQUARTUS_CREATED_ADC1_a.prescalar = 0;
defparam a_aQUARTUS_CREATED_ADC1_a.pwd = 1;
defparam a_aQUARTUS_CREATED_ADC1_a.refsel = 0;
defparam a_aQUARTUS_CREATED_ADC1_a.reserve_block = "true";
defparam a_aQUARTUS_CREATED_ADC1_a.testbits = 66;
defparam a_aQUARTUS_CREATED_ADC1_a.tsclkdiv = 1;
defparam a_aQUARTUS_CREATED_ADC1_a.tsclksel = 0;
// synopsys translate_on

assign uart_tx = uart_tx_aoutput_o;

assign seg7_en[0] = seg7_en_a0_a_aoutput_o;

assign seg7_en[1] = seg7_en_a1_a_aoutput_o;

assign seg7_data[0] = seg7_data_a0_a_aoutput_o;

assign seg7_data[1] = seg7_data_a1_a_aoutput_o;

assign seg7_data[2] = seg7_data_a2_a_aoutput_o;

assign seg7_data[3] = seg7_data_a3_a_aoutput_o;

assign seg7_data[4] = seg7_data_a4_a_aoutput_o;

assign seg7_data[5] = seg7_data_a5_a_aoutput_o;

assign seg7_data[6] = seg7_data_a6_a_aoutput_o;

assign seg7_data[7] = seg7_data_a7_a_aoutput_o;

assign led[0] = led_a0_a_aoutput_o;

assign led[1] = led_a1_a_aoutput_o;

assign led[2] = led_a2_a_aoutput_o;

assign led[3] = led_a3_a_aoutput_o;

assign led[4] = led_a4_a_aoutput_o;

assign led[5] = led_a5_a_aoutput_o;

assign led[6] = led_a6_a_aoutput_o;

assign led[7] = led_a7_a_aoutput_o;

endmodule
