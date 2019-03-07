-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "06/24/2018 15:43:14"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab3_top IS
    PORT (
	reset_n : IN std_logic;
	clk : IN std_logic;
	uart_rx : IN std_logic;
	uart_tx : OUT std_logic;
	seg7_en : OUT std_logic_vector(1 DOWNTO 0);
	seg7_data : OUT std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(7 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0)
	);
END lab3_top;

-- Design Ports Information
-- uart_tx	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_en[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_en[1]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg7_data[7]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[7]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_rx	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_uart_rx : std_logic;
SIGNAL ww_uart_tx : std_logic;
SIGNAL ww_seg7_en : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus : std_logic_vector(4 DOWNTO 0);
SIGNAL clk_ainputclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL sw_a3_a_ainput_o : std_logic;
SIGNAL sw_a4_a_ainput_o : std_logic;
SIGNAL sw_a5_a_ainput_o : std_logic;
SIGNAL sw_a6_a_ainput_o : std_logic;
SIGNAL a_aQUARTUS_CREATED_GND_aI_combout : std_logic;
SIGNAL a_aQUARTUS_CREATED_UNVM_a_abusy : std_logic;
SIGNAL a_aQUARTUS_CREATED_ADC1_a_aeoc : std_logic;
SIGNAL seg7_data_a1_a_aoutput_o : std_logic;
SIGNAL seg7_data_a5_a_aoutput_o : std_logic;
SIGNAL seg7_data_a6_a_aoutput_o : std_logic;
SIGNAL uart_tx_aoutput_o : std_logic;
SIGNAL seg7_en_a0_a_aoutput_o : std_logic;
SIGNAL seg7_en_a1_a_aoutput_o : std_logic;
SIGNAL seg7_data_a0_a_aoutput_o : std_logic;
SIGNAL seg7_data_a2_a_aoutput_o : std_logic;
SIGNAL seg7_data_a3_a_aoutput_o : std_logic;
SIGNAL seg7_data_a4_a_aoutput_o : std_logic;
SIGNAL seg7_data_a7_a_aoutput_o : std_logic;
SIGNAL led_a0_a_aoutput_o : std_logic;
SIGNAL led_a1_a_aoutput_o : std_logic;
SIGNAL led_a2_a_aoutput_o : std_logic;
SIGNAL led_a3_a_aoutput_o : std_logic;
SIGNAL led_a4_a_aoutput_o : std_logic;
SIGNAL led_a5_a_aoutput_o : std_logic;
SIGNAL led_a6_a_aoutput_o : std_logic;
SIGNAL led_a7_a_aoutput_o : std_logic;
SIGNAL clk_ainput_o : std_logic;
SIGNAL clk_ainputclkctrl_outclk : std_logic;
SIGNAL inc_d_0_dup_2773 : std_logic;
SIGNAL reset_n_ainput_o : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_prev_reset_a0_combout : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_prev_reset_aq : std_logic;
SIGNAL nx60244z1 : std_logic;
SIGNAL reg_q_0_dup_7_aq : std_logic;
SIGNAL nx9230z2 : std_logic;
SIGNAL inc_d_1_dup_2774 : std_logic;
SIGNAL reg_q_1_dup_6_aq : std_logic;
SIGNAL nx41135z2 : std_logic;
SIGNAL inc_d_2_dup_2775 : std_logic;
SIGNAL reg_q_2_dup_5_aq : std_logic;
SIGNAL nx25561z2 : std_logic;
SIGNAL inc_d_3_dup_2776 : std_logic;
SIGNAL reg_q_3_dup_4_aq : std_logic;
SIGNAL nx55549z2 : std_logic;
SIGNAL inc_d_4_dup_2777 : std_logic;
SIGNAL reg_q_4_dup_3_aq : std_logic;
SIGNAL nx28436z2 : std_logic;
SIGNAL inc_d_5_dup_2778 : std_logic;
SIGNAL reg_q_5_dup_2_aq : std_logic;
SIGNAL nx62824z2 : std_logic;
SIGNAL inc_d_6_dup_2779 : std_logic;
SIGNAL reg_q_6_dup_1_aq : std_logic;
SIGNAL nx63336z2 : std_logic;
SIGNAL inc_d_7_dup_2780 : std_logic;
SIGNAL reg_q_7_dup_0_aq : std_logic;
SIGNAL nx13374z2 : std_logic;
SIGNAL inc_d_8_a : std_logic;
SIGNAL reg_q_8_aq : std_logic;
SIGNAL nx47005z2 : std_logic;
SIGNAL inc_d_9_a : std_logic;
SIGNAL reg_q_9_aq : std_logic;
SIGNAL nx10744z1 : std_logic;
SIGNAL inc_d_10_a : std_logic;
SIGNAL reg_q_10_aq : std_logic;
SIGNAL sw_a1_a_ainput_o : std_logic;
SIGNAL inc_d_0_a : std_logic;
SIGNAL yes_uart_u_uart_reg_RxFSM_1_a0_combout : std_logic;
SIGNAL uart_rx_ainput_o : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_r_a0_combout : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_r_aq : std_logic;
SIGNAL inc_d_0_dup_2818 : std_logic;
SIGNAL nx22863z1 : std_logic;
SIGNAL reg_q_0_dup_18_aq : std_logic;
SIGNAL nx49129z1 : std_logic;
SIGNAL inc_d_1_dup_2820 : std_logic;
SIGNAL reg_q_1_dup_17_aq : std_logic;
SIGNAL nx50038z1 : std_logic;
SIGNAL inc_d_2_dup_2822 : std_logic;
SIGNAL reg_q_2_dup_16_aq : std_logic;
SIGNAL nx76z1 : std_logic;
SIGNAL inc_d_3_dup_2824 : std_logic;
SIGNAL reg_q_3_dup_15_aq : std_logic;
SIGNAL nx15650z1 : std_logic;
SIGNAL inc_d_4_dup_2826 : std_logic;
SIGNAL reg_q_4_dup_14_aq : std_logic;
SIGNAL nx34312z1 : std_logic;
SIGNAL inc_d_5_dup_2828 : std_logic;
SIGNAL reg_q_5_dup_13_aq : std_logic;
SIGNAL nx18738z1 : std_logic;
SIGNAL inc_d_6_dup_2830 : std_logic;
SIGNAL reg_q_6_dup_12_aq : std_logic;
SIGNAL nx4678z1 : std_logic;
SIGNAL inc_d_7_dup_2832 : std_logic;
SIGNAL reg_q_7_dup_11_aq : std_logic;
SIGNAL nx10896z1 : std_logic;
SIGNAL inc_d_8_dup_2833 : std_logic;
SIGNAL reg_q_8_dup_10_aq : std_logic;
SIGNAL nx26470z1 : std_logic;
SIGNAL inc_d_9_dup_2834 : std_logic;
SIGNAL reg_q_9_dup_9_aq : std_logic;
SIGNAL nx34257z1 : std_logic;
SIGNAL inc_d_10_dup_2835 : std_logic;
SIGNAL reg_q_10_dup_8_aq : std_logic;
SIGNAL nx60456z6 : std_logic;
SIGNAL nx60456z5 : std_logic;
SIGNAL yes_uart_u_uart_reg_RxDivisor_4_afeeder_combout : std_logic;
SIGNAL yes_uart_u_uart_reg_RxDivisor_4_aq : std_logic;
SIGNAL nx60456z3 : std_logic;
SIGNAL nx60456z4 : std_logic;
SIGNAL nx60456z2 : std_logic;
SIGNAL nx60456z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_TopRx_aq : std_logic;
SIGNAL nx64005z2 : std_logic;
SIGNAL nx64005z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_RxFSM_1_aq : std_logic;
SIGNAL nx2457z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_RxFSM_5_aq : std_logic;
SIGNAL nx63008z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_RxFSM_0_aq : std_logic;
SIGNAL nx46026z1 : std_logic;
SIGNAL nx65002z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_RxFSM_2_aq : std_logic;
SIGNAL nx463z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_RxFSM_3_aq : std_logic;
SIGNAL nx46026z3 : std_logic;
SIGNAL yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_aq : std_logic;
SIGNAL nx45029z1 : std_logic;
SIGNAL yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_aq : std_logic;
SIGNAL nx44032z1 : std_logic;
SIGNAL yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2_aq : std_logic;
SIGNAL nx43035z2 : std_logic;
SIGNAL nx43035z1 : std_logic;
SIGNAL yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3_aq : std_logic;
SIGNAL nx1460z2 : std_logic;
SIGNAL nx1460z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_RxFSM_4_aq : std_logic;
SIGNAL nx46463z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_RxRDYi_afeeder_combout : std_logic;
SIGNAL yes_uart_u_uart_reg_RxRDYi_aq : std_logic;
SIGNAL u_lab3_rtlc0_PS25_n202 : std_logic;
SIGNAL reg_q_0_aq : std_logic;
SIGNAL nx27063z1 : std_logic;
SIGNAL inc_d_1_a : std_logic;
SIGNAL reg_q_1_aq : std_logic;
SIGNAL nx39256z1 : std_logic;
SIGNAL inc_d_2_a : std_logic;
SIGNAL reg_q_2_aq : std_logic;
SIGNAL nx57428z1 : std_logic;
SIGNAL inc_d_3_a : std_logic;
SIGNAL reg_q_3_aq : std_logic;
SIGNAL nx23040z1 : std_logic;
SIGNAL inc_d_4_a : std_logic;
SIGNAL reg_q_4_aq : std_logic;
SIGNAL nx58827z1 : std_logic;
SIGNAL inc_d_5_a : std_logic;
SIGNAL reg_q_5_aq : std_logic;
SIGNAL nx37857z1 : std_logic;
SIGNAL inc_d_6_a : std_logic;
SIGNAL reg_q_6_aq : std_logic;
SIGNAL sw_a7_a_ainput_o : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_Reg_7_a0_combout : std_logic;
SIGNAL nx2098z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_Reg_7_aq : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_Reg_6_aq : std_logic;
SIGNAL yes_uart_u_uart_reg_Dout_6_aq : std_logic;
SIGNAL reg_byte_reg_6_aq : std_logic;
SIGNAL nx51544z10 : std_logic;
SIGNAL sw_a0_a_ainput_o : std_logic;
SIGNAL inc_d_0_dup_3036 : std_logic;
SIGNAL nx53092z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_0_a : std_logic;
SIGNAL nx48923z5 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_0_dup_365 : std_logic;
SIGNAL nx41843z2 : std_logic;
SIGNAL nx41843z7 : std_logic;
SIGNAL nx41843z12 : std_logic;
SIGNAL nx41843z10 : std_logic;
SIGNAL nx41843z11 : std_logic;
SIGNAL nx41843z13 : std_logic;
SIGNAL nx41843z9 : std_logic;
SIGNAL nx41843z8 : std_logic;
SIGNAL nx41843z5 : std_logic;
SIGNAL nx41843z3 : std_logic;
SIGNAL nx41843z1 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_0_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx27063z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_1_dup_366 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_1_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx39256z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx57428z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_3_dup_368 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_3_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx23040z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_4_dup_369 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_4_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx58827z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_5_dup_370 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_5_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx37857z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_6_dup_371 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_6_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx21526z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_7_dup_372 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_7_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx12862z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_8_dup_373 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_8_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx47250z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_9_dup_374 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_9_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx1955z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_10_dup_375 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_10_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx32433z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_11_dup_376 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_11_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx48764z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_12_dup_377 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_12_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx47920z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_13_dup_378 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_13_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx13532z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_14_dup_379 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_14_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx2799z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_15_dup_380 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_15_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx28349z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_16_dup_381 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_16_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx12018z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_17_dup_382 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_17_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx22370z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_18_dup_383 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_18_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx56758z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_19_dup_384 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_19_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx57983z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_20_dup_385 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_20_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx41941z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_21_dup_386 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_21_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx58272z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_22_dup_387 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_22_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx38412z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_23_dup_388 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_23_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx61512z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_24_dup_389 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_24_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx36406z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_25_dup_390 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_25_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx63518z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_26_dup_391 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_26_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx14313z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_27_dup_392 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_27_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx16835z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_28_dup_393 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_28_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx17553z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_29_dup_394 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_29_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx33884z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_30_dup_395 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_30_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_anx18310z2 : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_31_dup_396 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_31_aq : std_logic;
SIGNAL nx41843z6 : std_logic;
SIGNAL nx60357z6 : std_logic;
SIGNAL nx60357z5 : std_logic;
SIGNAL nx60357z4 : std_logic;
SIGNAL nx62976z3 : std_logic;
SIGNAL nx62976z4 : std_logic;
SIGNAL nx62976z2 : std_logic;
SIGNAL nx62976z1 : std_logic;
SIGNAL u_lab3_reg_flag_aq : std_logic;
SIGNAL nx60357z3 : std_logic;
SIGNAL nx60357z2 : std_logic;
SIGNAL nx60357z7 : std_logic;
SIGNAL nx60357z1 : std_logic;
SIGNAL u_lab3_reg_state_1_aq : std_logic;
SIGNAL u_lab3_modgen_counter_row_asload_mux_2_dup_367 : std_logic;
SIGNAL u_lab3_modgen_counter_row_areg_q_2_aq : std_logic;
SIGNAL nx41843z4 : std_logic;
SIGNAL nx48923z6 : std_logic;
SIGNAL nx48923z4 : std_logic;
SIGNAL nx48923z2 : std_logic;
SIGNAL nx48923z3 : std_logic;
SIGNAL nx48923z1 : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_0_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx27063z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_1_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_1_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx39256z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_2_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_2_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx57428z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_3_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_3_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx23040z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_4_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_4_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx58827z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_5_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_5_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx37857z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_6_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_6_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx21526z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_7_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_7_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx12862z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_8_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_8_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx47250z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_9_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_9_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx1955z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_10_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_10_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx32433z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_11_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_11_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx48764z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_12_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_12_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx47920z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_13_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_13_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx13532z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_14_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_14_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx2799z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_15_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_15_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx28349z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_16_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_16_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx12018z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_17_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_17_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx22370z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_18_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_18_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx56758z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_19_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_19_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx57983z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_20_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_20_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx41941z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_21_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_21_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx58272z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_22_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_22_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx38412z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_23_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_23_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx61512z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_24_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_24_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx36406z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_25_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_25_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx63518z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_26_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_26_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx14313z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_27_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_27_aq : std_logic;
SIGNAL nx63348z5 : std_logic;
SIGNAL nx63348z7 : std_logic;
SIGNAL nx63348z8 : std_logic;
SIGNAL nx63348z6 : std_logic;
SIGNAL nx63348z10 : std_logic;
SIGNAL nx63348z11 : std_logic;
SIGNAL nx63348z12 : std_logic;
SIGNAL nx63348z13 : std_logic;
SIGNAL nx63348z9 : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx16835z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_28_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_28_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx17553z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_29_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_29_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx33884z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_30_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_30_aq : std_logic;
SIGNAL u_lab3_modgen_counter_column_anx18310z2 : std_logic;
SIGNAL u_lab3_modgen_counter_column_ainc_d_31_a : std_logic;
SIGNAL u_lab3_modgen_counter_column_areg_q_31_aq : std_logic;
SIGNAL nx63348z4 : std_logic;
SIGNAL nx63348z3 : std_logic;
SIGNAL nx53092z1 : std_logic;
SIGNAL u_lab3_reg_compute_flag_aq : std_logic;
SIGNAL nx62351z4 : std_logic;
SIGNAL nx62351z3 : std_logic;
SIGNAL nx62351z2 : std_logic;
SIGNAL nx61354z1 : std_logic;
SIGNAL u_lab3_reg_state_2_aq : std_logic;
SIGNAL nx63348z2 : std_logic;
SIGNAL nx62351z1 : std_logic;
SIGNAL u_lab3_reg_state_3_aq : std_logic;
SIGNAL nx63348z1 : std_logic;
SIGNAL u_lab3_reg_state_4_aq : std_logic;
SIGNAL nx59360z1 : std_logic;
SIGNAL u_lab3_reg_state_0_aq : std_logic;
SIGNAL yes_uart_u_uart_reg_Dout_7_aq : std_logic;
SIGNAL nx16929z1 : std_logic;
SIGNAL u_lab3_reg_addend_15_7_aq : std_logic;
SIGNAL nx13001z1 : std_logic;
SIGNAL nx3960z1 : std_logic;
SIGNAL u_lab3_reg_stage_1_aq : std_logic;
SIGNAL nx11351z5 : std_logic;
SIGNAL nx11351z4 : std_logic;
SIGNAL nx11351z3 : std_logic;
SIGNAL nx13001z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_15_7_aq : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_14 : std_logic;
SIGNAL nx22064z1 : std_logic;
SIGNAL u_lab3_reg_addend_14_7_aq : std_logic;
SIGNAL nx18136z1 : std_logic;
SIGNAL nx18136z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_14_7_aq : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_13 : std_logic;
SIGNAL nx27199z1 : std_logic;
SIGNAL u_lab3_reg_addend_13_7_aq : std_logic;
SIGNAL nx23271z1 : std_logic;
SIGNAL nx23271z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_13_7_aq : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_12 : std_logic;
SIGNAL nx32334z1 : std_logic;
SIGNAL u_lab3_reg_addend_12_7_aq : std_logic;
SIGNAL nx28406z1 : std_logic;
SIGNAL nx28406z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_12_7_aq : std_logic;
SIGNAL nx46976z18 : std_logic;
SIGNAL nx46976z17 : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_8 : std_logic;
SIGNAL nx6231z1 : std_logic;
SIGNAL u_lab3_reg_addend_8_7_aq : std_logic;
SIGNAL nx29729z1 : std_logic;
SIGNAL nx29729z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_8_7_aq : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_9 : std_logic;
SIGNAL nx64440z1 : std_logic;
SIGNAL u_lab3_reg_addend_9_7_aq : std_logic;
SIGNAL nx34864z1 : std_logic;
SIGNAL nx34864z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_9_7_aq : std_logic;
SIGNAL nx46976z16 : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_11 : std_logic;
SIGNAL nx37469z1 : std_logic;
SIGNAL u_lab3_reg_addend_11_7_aq : std_logic;
SIGNAL nx33541z1 : std_logic;
SIGNAL nx33541z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_11_7_aq : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_10 : std_logic;
SIGNAL nx42604z1 : std_logic;
SIGNAL u_lab3_reg_addend_10_7_aq : std_logic;
SIGNAL nx38676z1 : std_logic;
SIGNAL nx38676z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_10_7_aq : std_logic;
SIGNAL nx46976z15 : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_6 : std_logic;
SIGNAL nx16501z1 : std_logic;
SIGNAL u_lab3_reg_addend_6_7_aq : std_logic;
SIGNAL nx46077z1 : std_logic;
SIGNAL nx46077z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_6_7_aq : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_5 : std_logic;
SIGNAL nx21636z1 : std_logic;
SIGNAL u_lab3_reg_addend_5_7_aq : std_logic;
SIGNAL nx51212z1 : std_logic;
SIGNAL nx51212z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_5_7_aq : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_4 : std_logic;
SIGNAL nx26771z1 : std_logic;
SIGNAL u_lab3_reg_addend_4_7_aq : std_logic;
SIGNAL nx56347z1 : std_logic;
SIGNAL nx56347z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_4_7_aq : std_logic;
SIGNAL nx46976z14 : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_7 : std_logic;
SIGNAL nx11366z1 : std_logic;
SIGNAL u_lab3_reg_addend_7_7_aq : std_logic;
SIGNAL nx40942z1 : std_logic;
SIGNAL nx40942z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_7_7_aq : std_logic;
SIGNAL nx46976z13 : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_2 : std_logic;
SIGNAL nx37041z1 : std_logic;
SIGNAL u_lab3_reg_addend_2_7_aq : std_logic;
SIGNAL nx1081z1 : std_logic;
SIGNAL nx1081z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_2_7_aq : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_3 : std_logic;
SIGNAL nx31906z1 : std_logic;
SIGNAL u_lab3_reg_addend_3_7_aq : std_logic;
SIGNAL nx61482z1 : std_logic;
SIGNAL nx61482z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_3_7_aq : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_1 : std_logic;
SIGNAL nx42176z1 : std_logic;
SIGNAL u_lab3_reg_addend_1_7_aq : std_logic;
SIGNAL nx6216z1 : std_logic;
SIGNAL nx6216z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_1_7_aq : std_logic;
SIGNAL u_lab3_not_minuend_1n1s2_0 : std_logic;
SIGNAL nx47311z1 : std_logic;
SIGNAL u_lab3_reg_addend_0_7_aq : std_logic;
SIGNAL nx11351z1 : std_logic;
SIGNAL nx11351z2 : std_logic;
SIGNAL u_lab3_reg_subtrahend_0_7_aq : std_logic;
SIGNAL nx46976z12 : std_logic;
SIGNAL nx46976z11 : std_logic;
SIGNAL nx46976z10 : std_logic;
SIGNAL nx22088z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_327_a : std_logic;
SIGNAL nx22088z2 : std_logic;
SIGNAL u_lab3_reg_minuend_10_7_aq : std_logic;
SIGNAL nx27223z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_359_a : std_logic;
SIGNAL nx27223z2 : std_logic;
SIGNAL u_lab3_reg_minuend_11_7_aq : std_logic;
SIGNAL nx36429z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_263_a : std_logic;
SIGNAL nx36429z2 : std_logic;
SIGNAL u_lab3_reg_minuend_8_7_aq : std_logic;
SIGNAL nx41564z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_295_a : std_logic;
SIGNAL nx41564z2 : std_logic;
SIGNAL u_lab3_reg_minuend_9_7_aq : std_logic;
SIGNAL nx46976z7 : std_logic;
SIGNAL nx46976z6 : std_logic;
SIGNAL nx31294z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_231_a : std_logic;
SIGNAL nx31294z2 : std_logic;
SIGNAL u_lab3_reg_minuend_7_7_aq : std_logic;
SIGNAL nx26159z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_199_a : std_logic;
SIGNAL nx26159z2 : std_logic;
SIGNAL u_lab3_reg_minuend_6_7_aq : std_logic;
SIGNAL nx21024z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_167_a : std_logic;
SIGNAL nx21024z2 : std_logic;
SIGNAL u_lab3_reg_minuend_5_7_aq : std_logic;
SIGNAL nx15889z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_135_a : std_logic;
SIGNAL nx15889z2 : std_logic;
SIGNAL u_lab3_reg_minuend_4_7_aq : std_logic;
SIGNAL nx46976z5 : std_logic;
SIGNAL nx46976z4 : std_logic;
SIGNAL nx4651z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_7_a : std_logic;
SIGNAL nx4651z2 : std_logic;
SIGNAL u_lab3_reg_minuend_0_7_aq : std_logic;
SIGNAL nx65052z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_39_a : std_logic;
SIGNAL nx65052z2 : std_logic;
SIGNAL u_lab3_reg_minuend_1_7_aq : std_logic;
SIGNAL nx46976z3 : std_logic;
SIGNAL nx59917z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_71_a : std_logic;
SIGNAL nx59917z2 : std_logic;
SIGNAL u_lab3_reg_minuend_2_7_aq : std_logic;
SIGNAL nx54782z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_103_a : std_logic;
SIGNAL nx54782z2 : std_logic;
SIGNAL u_lab3_reg_minuend_3_7_aq : std_logic;
SIGNAL nx46976z2 : std_logic;
SIGNAL nx46976z1 : std_logic;
SIGNAL nx32358z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_391_a : std_logic;
SIGNAL nx32358z2 : std_logic;
SIGNAL u_lab3_reg_minuend_12_7_aq : std_logic;
SIGNAL nx37493z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_423_a : std_logic;
SIGNAL nx37493z2 : std_logic;
SIGNAL u_lab3_reg_minuend_13_7_aq : std_logic;
SIGNAL nx46976z9 : std_logic;
SIGNAL nx47763z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_487_a : std_logic;
SIGNAL nx47763z2 : std_logic;
SIGNAL u_lab3_reg_minuend_15_7_aq : std_logic;
SIGNAL nx42628z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_455_a : std_logic;
SIGNAL nx42628z2 : std_logic;
SIGNAL u_lab3_reg_minuend_14_7_aq : std_logic;
SIGNAL nx46976z8 : std_logic;
SIGNAL u_lab3_reg_addend_15_6_aq : std_logic;
SIGNAL nx12004z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_15_6_aq : std_logic;
SIGNAL u_lab3_reg_addend_14_6_aq : std_logic;
SIGNAL nx17139z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_14_6_aq : std_logic;
SIGNAL u_lab3_reg_addend_12_6_aq : std_logic;
SIGNAL nx27409z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_12_6_aq : std_logic;
SIGNAL u_lab3_reg_addend_13_6_aq : std_logic;
SIGNAL nx22274z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_13_6_aq : std_logic;
SIGNAL nx63307z18 : std_logic;
SIGNAL nx63307z17 : std_logic;
SIGNAL u_lab3_reg_addend_7_6_aq : std_logic;
SIGNAL nx39945z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_7_6_aq : std_logic;
SIGNAL u_lab3_reg_addend_6_6_aq : std_logic;
SIGNAL nx45080z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_6_6_aq : std_logic;
SIGNAL u_lab3_reg_addend_4_6_aq : std_logic;
SIGNAL nx55350z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_4_6_aq : std_logic;
SIGNAL u_lab3_reg_addend_5_6_aq : std_logic;
SIGNAL nx50215z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_5_6_aq : std_logic;
SIGNAL nx63307z14 : std_logic;
SIGNAL nx63307z13 : std_logic;
SIGNAL u_lab3_reg_addend_2_6_aq : std_logic;
SIGNAL nx84z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_2_6_aq : std_logic;
SIGNAL u_lab3_reg_addend_3_6_aq : std_logic;
SIGNAL nx60485z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_3_6_aq : std_logic;
SIGNAL u_lab3_reg_addend_0_6_aq : std_logic;
SIGNAL nx10354z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_0_6_aq : std_logic;
SIGNAL u_lab3_reg_addend_1_6_aq : std_logic;
SIGNAL nx5219z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_1_6_aq : std_logic;
SIGNAL nx63307z12 : std_logic;
SIGNAL nx63307z11 : std_logic;
SIGNAL nx63307z10 : std_logic;
SIGNAL u_lab3_reg_addend_10_6_aq : std_logic;
SIGNAL nx37679z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_10_6_aq : std_logic;
SIGNAL u_lab3_reg_addend_11_6_aq : std_logic;
SIGNAL nx32544z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_11_6_aq : std_logic;
SIGNAL u_lab3_reg_addend_9_6_aq : std_logic;
SIGNAL nx35861z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_9_6_aq : std_logic;
SIGNAL u_lab3_reg_addend_8_6_aq : std_logic;
SIGNAL nx30726z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_8_6_aq : std_logic;
SIGNAL nx63307z16 : std_logic;
SIGNAL nx63307z15 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_454_a : std_logic;
SIGNAL u_lab3_reg_minuend_14_6_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_390_a : std_logic;
SIGNAL u_lab3_reg_minuend_12_6_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_422_a : std_logic;
SIGNAL u_lab3_reg_minuend_13_6_aq : std_logic;
SIGNAL nx63307z9 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_486_a : std_logic;
SIGNAL u_lab3_reg_minuend_15_6_aq : std_logic;
SIGNAL nx63307z8 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_326_a : std_logic;
SIGNAL u_lab3_reg_minuend_10_6_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_358_a : std_logic;
SIGNAL u_lab3_reg_minuend_11_6_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_262_a : std_logic;
SIGNAL u_lab3_reg_minuend_8_6_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_294_a : std_logic;
SIGNAL u_lab3_reg_minuend_9_6_aq : std_logic;
SIGNAL nx63307z7 : std_logic;
SIGNAL nx63307z6 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_166_a : std_logic;
SIGNAL u_lab3_reg_minuend_5_6_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_134_a : std_logic;
SIGNAL u_lab3_reg_minuend_4_6_aq : std_logic;
SIGNAL nx63307z5 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_230_a : std_logic;
SIGNAL u_lab3_reg_minuend_7_6_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_198_a : std_logic;
SIGNAL u_lab3_reg_minuend_6_6_aq : std_logic;
SIGNAL nx63307z4 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_102_a : std_logic;
SIGNAL u_lab3_reg_minuend_3_6_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_70_a : std_logic;
SIGNAL u_lab3_reg_minuend_2_6_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_6_a : std_logic;
SIGNAL u_lab3_reg_minuend_0_6_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_38_a : std_logic;
SIGNAL u_lab3_reg_minuend_1_6_aq : std_logic;
SIGNAL nx63307z3 : std_logic;
SIGNAL nx63307z2 : std_logic;
SIGNAL nx63307z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_Reg_5_afeeder_combout : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_Reg_5_aq : std_logic;
SIGNAL yes_uart_u_uart_reg_Dout_5_aq : std_logic;
SIGNAL u_lab3_reg_addend_11_5_aq : std_logic;
SIGNAL nx31547z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_11_5_aq : std_logic;
SIGNAL u_lab3_reg_addend_10_5_aq : std_logic;
SIGNAL nx36682z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_10_5_aq : std_logic;
SIGNAL u_lab3_reg_addend_8_5_aq : std_logic;
SIGNAL nx31723z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_8_5_aq : std_logic;
SIGNAL u_lab3_reg_addend_9_5_aq : std_logic;
SIGNAL nx36858z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_9_5_aq : std_logic;
SIGNAL nx33377z16 : std_logic;
SIGNAL nx33377z15 : std_logic;
SIGNAL u_lab3_reg_addend_7_5_aq : std_logic;
SIGNAL nx38948z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_7_5_aq : std_logic;
SIGNAL u_lab3_reg_addend_6_5_aq : std_logic;
SIGNAL nx44083z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_6_5_aq : std_logic;
SIGNAL u_lab3_reg_addend_4_5_aq : std_logic;
SIGNAL nx54353z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_4_5_aq : std_logic;
SIGNAL u_lab3_reg_addend_5_5_aq : std_logic;
SIGNAL nx49218z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_5_5_aq : std_logic;
SIGNAL nx33377z14 : std_logic;
SIGNAL nx33377z13 : std_logic;
SIGNAL u_lab3_reg_addend_3_5_aq : std_logic;
SIGNAL nx59488z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_3_5_aq : std_logic;
SIGNAL u_lab3_reg_addend_2_5_aq : std_logic;
SIGNAL nx64623z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_2_5_aq : std_logic;
SIGNAL u_lab3_reg_addend_0_5_aq : std_logic;
SIGNAL nx9357z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_0_5_aq : std_logic;
SIGNAL u_lab3_reg_addend_1_5_aq : std_logic;
SIGNAL nx4222z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_1_5_aq : std_logic;
SIGNAL nx33377z12 : std_logic;
SIGNAL nx33377z11 : std_logic;
SIGNAL nx33377z10 : std_logic;
SIGNAL u_lab3_reg_addend_15_5_aq : std_logic;
SIGNAL nx11007z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_15_5_aq : std_logic;
SIGNAL u_lab3_reg_addend_14_5_aq : std_logic;
SIGNAL nx16142z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_14_5_aq : std_logic;
SIGNAL u_lab3_reg_addend_13_5_aq : std_logic;
SIGNAL nx21277z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_13_5_aq : std_logic;
SIGNAL u_lab3_reg_addend_12_5_aq : std_logic;
SIGNAL nx26412z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_12_5_aq : std_logic;
SIGNAL nx33377z18 : std_logic;
SIGNAL nx33377z17 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_453_a : std_logic;
SIGNAL u_lab3_reg_minuend_14_5_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_485_a : std_logic;
SIGNAL u_lab3_reg_minuend_15_5_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_389_a : std_logic;
SIGNAL u_lab3_reg_minuend_12_5_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_421_a : std_logic;
SIGNAL u_lab3_reg_minuend_13_5_aq : std_logic;
SIGNAL nx33377z9 : std_logic;
SIGNAL nx33377z8 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_357_a : std_logic;
SIGNAL u_lab3_reg_minuend_11_5_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_325_a : std_logic;
SIGNAL u_lab3_reg_minuend_10_5_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_261_a : std_logic;
SIGNAL u_lab3_reg_minuend_8_5_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_293_a : std_logic;
SIGNAL u_lab3_reg_minuend_9_5_aq : std_logic;
SIGNAL nx33377z7 : std_logic;
SIGNAL nx33377z6 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_229_a : std_logic;
SIGNAL u_lab3_reg_minuend_7_5_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_197_a : std_logic;
SIGNAL u_lab3_reg_minuend_6_5_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_133_a : std_logic;
SIGNAL u_lab3_reg_minuend_4_5_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_165_a : std_logic;
SIGNAL u_lab3_reg_minuend_5_5_aq : std_logic;
SIGNAL nx33377z5 : std_logic;
SIGNAL nx33377z4 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_69_a : std_logic;
SIGNAL u_lab3_reg_minuend_2_5_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_101_a : std_logic;
SIGNAL u_lab3_reg_minuend_3_5_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_5_a : std_logic;
SIGNAL u_lab3_reg_minuend_0_5_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_37_a : std_logic;
SIGNAL u_lab3_reg_minuend_1_5_aq : std_logic;
SIGNAL nx33377z3 : std_logic;
SIGNAL nx33377z2 : std_logic;
SIGNAL nx33377z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_Reg_4_aq : std_logic;
SIGNAL yes_uart_u_uart_reg_Dout_4_aq : std_logic;
SIGNAL u_lab3_reg_addend_11_4_aq : std_logic;
SIGNAL nx30550z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_11_4_aq : std_logic;
SIGNAL u_lab3_reg_addend_8_4_aq : std_logic;
SIGNAL nx32720z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_8_4_aq : std_logic;
SIGNAL u_lab3_reg_addend_9_4_aq : std_logic;
SIGNAL nx37855z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_9_4_aq : std_logic;
SIGNAL nx64525z16 : std_logic;
SIGNAL u_lab3_reg_addend_10_4_aq : std_logic;
SIGNAL nx35685z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_10_4_aq : std_logic;
SIGNAL nx64525z15 : std_logic;
SIGNAL u_lab3_reg_addend_15_4_aq : std_logic;
SIGNAL nx10010z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_15_4_aq : std_logic;
SIGNAL u_lab3_reg_addend_14_4_aq : std_logic;
SIGNAL nx15145z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_14_4_aq : std_logic;
SIGNAL u_lab3_reg_addend_13_4_aq : std_logic;
SIGNAL nx20280z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_13_4_aq : std_logic;
SIGNAL u_lab3_reg_addend_12_4_aq : std_logic;
SIGNAL nx25415z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_12_4_aq : std_logic;
SIGNAL nx64525z18 : std_logic;
SIGNAL nx64525z17 : std_logic;
SIGNAL u_lab3_reg_addend_6_4_aq : std_logic;
SIGNAL nx43086z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_6_4_aq : std_logic;
SIGNAL u_lab3_reg_addend_7_4_aq : std_logic;
SIGNAL nx37951z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_7_4_aq : std_logic;
SIGNAL u_lab3_reg_addend_5_4_aq : std_logic;
SIGNAL nx48221z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_5_4_aq : std_logic;
SIGNAL u_lab3_reg_addend_4_4_aq : std_logic;
SIGNAL nx53356z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_4_4_aq : std_logic;
SIGNAL nx64525z14 : std_logic;
SIGNAL nx64525z13 : std_logic;
SIGNAL u_lab3_reg_addend_2_4_aq : std_logic;
SIGNAL nx63626z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_2_4_aq : std_logic;
SIGNAL u_lab3_reg_addend_3_4_aq : std_logic;
SIGNAL nx58491z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_3_4_aq : std_logic;
SIGNAL u_lab3_reg_addend_0_4_aq : std_logic;
SIGNAL nx8360z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_0_4_aq : std_logic;
SIGNAL u_lab3_reg_addend_1_4_aq : std_logic;
SIGNAL nx3225z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_1_4_aq : std_logic;
SIGNAL nx64525z12 : std_logic;
SIGNAL nx64525z11 : std_logic;
SIGNAL nx64525z10 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_324_a : std_logic;
SIGNAL u_lab3_reg_minuend_10_4_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_356_a : std_logic;
SIGNAL u_lab3_reg_minuend_11_4_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_292_a : std_logic;
SIGNAL u_lab3_reg_minuend_9_4_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_260_a : std_logic;
SIGNAL u_lab3_reg_minuend_8_4_aq : std_logic;
SIGNAL nx64525z7 : std_logic;
SIGNAL nx64525z6 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_452_a : std_logic;
SIGNAL u_lab3_reg_minuend_14_4_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_484_a : std_logic;
SIGNAL u_lab3_reg_minuend_15_4_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_388_a : std_logic;
SIGNAL u_lab3_reg_minuend_12_4_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_420_a : std_logic;
SIGNAL u_lab3_reg_minuend_13_4_aq : std_logic;
SIGNAL nx64525z9 : std_logic;
SIGNAL nx64525z8 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_228_a : std_logic;
SIGNAL u_lab3_reg_minuend_7_4_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_196_a : std_logic;
SIGNAL u_lab3_reg_minuend_6_4_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_132_a : std_logic;
SIGNAL u_lab3_reg_minuend_4_4_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_164_a : std_logic;
SIGNAL u_lab3_reg_minuend_5_4_aq : std_logic;
SIGNAL nx64525z5 : std_logic;
SIGNAL nx64525z4 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_100_a : std_logic;
SIGNAL u_lab3_reg_minuend_3_4_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_68_a : std_logic;
SIGNAL u_lab3_reg_minuend_2_4_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_4_a : std_logic;
SIGNAL u_lab3_reg_minuend_0_4_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_36_a : std_logic;
SIGNAL u_lab3_reg_minuend_1_4_aq : std_logic;
SIGNAL nx64525z3 : std_logic;
SIGNAL nx64525z2 : std_logic;
SIGNAL nx64525z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_Reg_3_afeeder_combout : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_Reg_3_aq : std_logic;
SIGNAL yes_uart_u_uart_reg_Dout_3_aq : std_logic;
SIGNAL u_lab3_reg_addend_11_3_aq : std_logic;
SIGNAL nx29553z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_11_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_355_a : std_logic;
SIGNAL u_lab3_reg_minuend_11_3_aq : std_logic;
SIGNAL u_lab3_reg_addend_10_3_aq : std_logic;
SIGNAL nx34688z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_10_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_323_a : std_logic;
SIGNAL u_lab3_reg_minuend_10_3_aq : std_logic;
SIGNAL u_lab3_reg_addend_9_3_aq : std_logic;
SIGNAL nx38852z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_9_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_291_a : std_logic;
SIGNAL u_lab3_reg_minuend_9_3_aq : std_logic;
SIGNAL u_lab3_reg_addend_8_3_aq : std_logic;
SIGNAL nx33717z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_8_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_259_a : std_logic;
SIGNAL u_lab3_reg_minuend_8_3_aq : std_logic;
SIGNAL nx17342z7 : std_logic;
SIGNAL nx17342z6 : std_logic;
SIGNAL u_lab3_reg_addend_7_3_aq : std_logic;
SIGNAL nx36954z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_7_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_227_a : std_logic;
SIGNAL u_lab3_reg_minuend_7_3_aq : std_logic;
SIGNAL u_lab3_reg_addend_6_3_aq : std_logic;
SIGNAL nx42089z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_6_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_195_a : std_logic;
SIGNAL u_lab3_reg_minuend_6_3_aq : std_logic;
SIGNAL u_lab3_reg_addend_4_3_aq : std_logic;
SIGNAL nx52359z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_4_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_131_a : std_logic;
SIGNAL u_lab3_reg_minuend_4_3_aq : std_logic;
SIGNAL u_lab3_reg_addend_5_3_aq : std_logic;
SIGNAL nx47224z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_5_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_163_a : std_logic;
SIGNAL u_lab3_reg_minuend_5_3_aq : std_logic;
SIGNAL nx17342z5 : std_logic;
SIGNAL nx17342z4 : std_logic;
SIGNAL u_lab3_reg_addend_3_3_aq : std_logic;
SIGNAL nx57494z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_3_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_99_a : std_logic;
SIGNAL u_lab3_reg_minuend_3_3_aq : std_logic;
SIGNAL u_lab3_reg_addend_2_3_aq : std_logic;
SIGNAL nx62629z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_2_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_67_a : std_logic;
SIGNAL u_lab3_reg_minuend_2_3_aq : std_logic;
SIGNAL u_lab3_reg_addend_1_3_aq : std_logic;
SIGNAL nx2228z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_1_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_35_a : std_logic;
SIGNAL u_lab3_reg_minuend_1_3_aq : std_logic;
SIGNAL u_lab3_reg_addend_0_3_aq : std_logic;
SIGNAL nx7363z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_0_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_3_a : std_logic;
SIGNAL u_lab3_reg_minuend_0_3_aq : std_logic;
SIGNAL nx17342z3 : std_logic;
SIGNAL nx17342z2 : std_logic;
SIGNAL nx17342z1 : std_logic;
SIGNAL u_lab3_reg_addend_14_3_aq : std_logic;
SIGNAL nx14148z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_14_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_451_a : std_logic;
SIGNAL u_lab3_reg_minuend_14_3_aq : std_logic;
SIGNAL u_lab3_reg_addend_13_3_aq : std_logic;
SIGNAL nx19283z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_13_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_419_a : std_logic;
SIGNAL u_lab3_reg_minuend_13_3_aq : std_logic;
SIGNAL u_lab3_reg_addend_12_3_aq : std_logic;
SIGNAL nx24418z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_12_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_387_a : std_logic;
SIGNAL u_lab3_reg_minuend_12_3_aq : std_logic;
SIGNAL nx17342z9 : std_logic;
SIGNAL u_lab3_reg_addend_15_3_aq : std_logic;
SIGNAL nx9013z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_15_3_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_483_a : std_logic;
SIGNAL u_lab3_reg_minuend_15_3_aq : std_logic;
SIGNAL nx17342z8 : std_logic;
SIGNAL nx17342z12 : std_logic;
SIGNAL nx17342z11 : std_logic;
SIGNAL nx17342z14 : std_logic;
SIGNAL nx17342z13 : std_logic;
SIGNAL nx17342z10 : std_logic;
SIGNAL nx17342z16 : std_logic;
SIGNAL nx17342z15 : std_logic;
SIGNAL nx17342z18 : std_logic;
SIGNAL nx17342z17 : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_Reg_2_afeeder_combout : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_Reg_2_aq : std_logic;
SIGNAL yes_uart_u_uart_reg_Dout_2_aq : std_logic;
SIGNAL u_lab3_reg_addend_11_2_aq : std_logic;
SIGNAL nx28556z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_11_2_aq : std_logic;
SIGNAL u_lab3_reg_addend_10_2_aq : std_logic;
SIGNAL nx33691z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_10_2_aq : std_logic;
SIGNAL u_lab3_reg_addend_9_2_aq : std_logic;
SIGNAL nx39849z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_9_2_afeeder_combout : std_logic;
SIGNAL u_lab3_reg_subtrahend_9_2_aq : std_logic;
SIGNAL u_lab3_reg_addend_8_2_aq : std_logic;
SIGNAL nx34714z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_8_2_aq : std_logic;
SIGNAL nx13806z16 : std_logic;
SIGNAL nx13806z15 : std_logic;
SIGNAL u_lab3_reg_addend_14_2_aq : std_logic;
SIGNAL nx13151z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_14_2_aq : std_logic;
SIGNAL u_lab3_reg_addend_15_2_aq : std_logic;
SIGNAL nx8016z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_15_2_aq : std_logic;
SIGNAL u_lab3_reg_addend_13_2_aq : std_logic;
SIGNAL nx18286z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_13_2_aq : std_logic;
SIGNAL u_lab3_reg_addend_12_2_aq : std_logic;
SIGNAL nx23421z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_12_2_aq : std_logic;
SIGNAL nx13806z18 : std_logic;
SIGNAL nx13806z17 : std_logic;
SIGNAL u_lab3_reg_addend_6_2_aq : std_logic;
SIGNAL nx41092z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_6_2_aq : std_logic;
SIGNAL u_lab3_reg_addend_7_2_aq : std_logic;
SIGNAL nx35957z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_7_2_aq : std_logic;
SIGNAL u_lab3_reg_addend_5_2_aq : std_logic;
SIGNAL nx46227z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_5_2_aq : std_logic;
SIGNAL u_lab3_reg_addend_4_2_aq : std_logic;
SIGNAL nx51362z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_4_2_aq : std_logic;
SIGNAL nx13806z14 : std_logic;
SIGNAL nx13806z13 : std_logic;
SIGNAL u_lab3_reg_addend_2_2_aq : std_logic;
SIGNAL nx61632z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_2_2_aq : std_logic;
SIGNAL u_lab3_reg_addend_3_2_aq : std_logic;
SIGNAL nx56497z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_3_2_aq : std_logic;
SIGNAL u_lab3_reg_addend_0_2_aq : std_logic;
SIGNAL nx6366z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_0_2_aq : std_logic;
SIGNAL u_lab3_reg_addend_1_2_aq : std_logic;
SIGNAL nx1231z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_1_2_aq : std_logic;
SIGNAL nx13806z12 : std_logic;
SIGNAL nx13806z11 : std_logic;
SIGNAL nx13806z10 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_354_a : std_logic;
SIGNAL u_lab3_reg_minuend_11_2_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_322_a : std_logic;
SIGNAL u_lab3_reg_minuend_10_2_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_258_a : std_logic;
SIGNAL u_lab3_reg_minuend_8_2_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_290_a : std_logic;
SIGNAL u_lab3_reg_minuend_9_2_aq : std_logic;
SIGNAL nx13806z7 : std_logic;
SIGNAL nx13806z6 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_482_a : std_logic;
SIGNAL u_lab3_reg_minuend_15_2_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_450_a : std_logic;
SIGNAL u_lab3_reg_minuend_14_2_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_386_a : std_logic;
SIGNAL u_lab3_reg_minuend_12_2_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_418_a : std_logic;
SIGNAL u_lab3_reg_minuend_13_2_aq : std_logic;
SIGNAL nx13806z9 : std_logic;
SIGNAL nx13806z8 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_194_a : std_logic;
SIGNAL u_lab3_reg_minuend_6_2_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_226_a : std_logic;
SIGNAL u_lab3_reg_minuend_7_2_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_162_a : std_logic;
SIGNAL u_lab3_reg_minuend_5_2_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_130_a : std_logic;
SIGNAL u_lab3_reg_minuend_4_2_aq : std_logic;
SIGNAL nx13806z5 : std_logic;
SIGNAL nx13806z4 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_66_a : std_logic;
SIGNAL u_lab3_reg_minuend_2_2_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_98_a : std_logic;
SIGNAL u_lab3_reg_minuend_3_2_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_34_a : std_logic;
SIGNAL u_lab3_reg_minuend_1_2_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_2_a : std_logic;
SIGNAL u_lab3_reg_minuend_0_2_aq : std_logic;
SIGNAL nx13806z3 : std_logic;
SIGNAL nx13806z2 : std_logic;
SIGNAL nx13806z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_Reg_1_afeeder_combout : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_Reg_1_aq : std_logic;
SIGNAL yes_uart_u_uart_reg_Dout_1_aq : std_logic;
SIGNAL u_lab3_reg_addend_11_1_aq : std_logic;
SIGNAL nx27559z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_11_1_aq : std_logic;
SIGNAL u_lab3_reg_addend_10_1_aq : std_logic;
SIGNAL nx32694z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_10_1_aq : std_logic;
SIGNAL u_lab3_reg_addend_9_1_aq : std_logic;
SIGNAL nx40846z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_9_1_aq : std_logic;
SIGNAL u_lab3_reg_addend_8_1_aq : std_logic;
SIGNAL nx35711z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_8_1_aq : std_logic;
SIGNAL nx63011z16 : std_logic;
SIGNAL nx63011z15 : std_logic;
SIGNAL u_lab3_reg_addend_6_1_aq : std_logic;
SIGNAL nx40095z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_6_1_aq : std_logic;
SIGNAL u_lab3_reg_addend_7_1_aq : std_logic;
SIGNAL nx34960z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_7_1_aq : std_logic;
SIGNAL u_lab3_reg_addend_4_1_aq : std_logic;
SIGNAL nx50365z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_4_1_aq : std_logic;
SIGNAL u_lab3_reg_addend_5_1_aq : std_logic;
SIGNAL nx45230z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_5_1_aq : std_logic;
SIGNAL nx63011z14 : std_logic;
SIGNAL nx63011z13 : std_logic;
SIGNAL u_lab3_reg_addend_3_1_aq : std_logic;
SIGNAL nx55500z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_3_1_aq : std_logic;
SIGNAL u_lab3_reg_addend_2_1_aq : std_logic;
SIGNAL nx60635z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_2_1_aq : std_logic;
SIGNAL u_lab3_reg_addend_1_1_aq : std_logic;
SIGNAL nx234z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_1_1_aq : std_logic;
SIGNAL u_lab3_reg_addend_0_1_aq : std_logic;
SIGNAL nx5369z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_0_1_aq : std_logic;
SIGNAL nx63011z12 : std_logic;
SIGNAL nx63011z11 : std_logic;
SIGNAL nx63011z10 : std_logic;
SIGNAL u_lab3_reg_addend_15_1_aq : std_logic;
SIGNAL nx7019z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_15_1_aq : std_logic;
SIGNAL u_lab3_reg_addend_14_1_aq : std_logic;
SIGNAL nx12154z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_14_1_aq : std_logic;
SIGNAL u_lab3_reg_addend_12_1_aq : std_logic;
SIGNAL nx22424z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_12_1_aq : std_logic;
SIGNAL u_lab3_reg_addend_13_1_aq : std_logic;
SIGNAL nx17289z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_13_1_aq : std_logic;
SIGNAL nx63011z18 : std_logic;
SIGNAL nx63011z17 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_289_a : std_logic;
SIGNAL u_lab3_reg_minuend_9_1_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_257_a : std_logic;
SIGNAL u_lab3_reg_minuend_8_1_aq : std_logic;
SIGNAL nx63011z7 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_353_a : std_logic;
SIGNAL u_lab3_reg_minuend_11_1_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_321_a : std_logic;
SIGNAL u_lab3_reg_minuend_10_1_aq : std_logic;
SIGNAL nx63011z6 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_97_a : std_logic;
SIGNAL u_lab3_reg_minuend_3_1_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_65_a : std_logic;
SIGNAL u_lab3_reg_minuend_2_1_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_33_a : std_logic;
SIGNAL u_lab3_reg_minuend_1_1_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_1_a : std_logic;
SIGNAL u_lab3_reg_minuend_0_1_aq : std_logic;
SIGNAL nx63011z3 : std_logic;
SIGNAL nx63011z2 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_193_a : std_logic;
SIGNAL u_lab3_reg_minuend_6_1_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_225_a : std_logic;
SIGNAL u_lab3_reg_minuend_7_1_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_129_a : std_logic;
SIGNAL u_lab3_reg_minuend_4_1_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_161_a : std_logic;
SIGNAL u_lab3_reg_minuend_5_1_aq : std_logic;
SIGNAL nx63011z5 : std_logic;
SIGNAL nx63011z4 : std_logic;
SIGNAL nx63011z1 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_385_a : std_logic;
SIGNAL u_lab3_reg_minuend_12_1_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_417_a : std_logic;
SIGNAL u_lab3_reg_minuend_13_1_aq : std_logic;
SIGNAL nx63011z9 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_481_a : std_logic;
SIGNAL u_lab3_reg_minuend_15_1_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_449_a : std_logic;
SIGNAL u_lab3_reg_minuend_14_1_aq : std_logic;
SIGNAL nx63011z8 : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_Reg_0_afeeder_combout : std_logic;
SIGNAL yes_uart_u_uart_reg_Rx_Reg_0_aq : std_logic;
SIGNAL yes_uart_u_uart_reg_Dout_0_afeeder_combout : std_logic;
SIGNAL yes_uart_u_uart_reg_Dout_0_aq : std_logic;
SIGNAL u_lab3_reg_addend_15_0_aq : std_logic;
SIGNAL nx6022z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_15_0_aq : std_logic;
SIGNAL u_lab3_reg_addend_14_0_aq : std_logic;
SIGNAL nx11157z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_14_0_aq : std_logic;
SIGNAL u_lab3_reg_addend_13_0_aq : std_logic;
SIGNAL nx16292z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_13_0_aq : std_logic;
SIGNAL u_lab3_reg_addend_12_0_aq : std_logic;
SIGNAL nx21427z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_12_0_aq : std_logic;
SIGNAL nx36913z18 : std_logic;
SIGNAL nx36913z17 : std_logic;
SIGNAL u_lab3_reg_addend_11_0_aq : std_logic;
SIGNAL nx26562z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_11_0_aq : std_logic;
SIGNAL u_lab3_reg_addend_10_0_aq : std_logic;
SIGNAL nx31697z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_10_0_aq : std_logic;
SIGNAL u_lab3_reg_addend_9_0_aq : std_logic;
SIGNAL nx41843z14 : std_logic;
SIGNAL u_lab3_reg_subtrahend_9_0_afeeder_combout : std_logic;
SIGNAL u_lab3_reg_subtrahend_9_0_aq : std_logic;
SIGNAL u_lab3_reg_addend_8_0_aq : std_logic;
SIGNAL nx36708z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_8_0_aq : std_logic;
SIGNAL nx36913z16 : std_logic;
SIGNAL nx36913z15 : std_logic;
SIGNAL u_lab3_reg_addend_2_0_aq : std_logic;
SIGNAL nx59638z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_2_0_aq : std_logic;
SIGNAL u_lab3_reg_addend_3_0_aq : std_logic;
SIGNAL nx54503z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_3_0_aq : std_logic;
SIGNAL u_lab3_reg_addend_0_0_aq : std_logic;
SIGNAL nx4372z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_0_0_aq : std_logic;
SIGNAL u_lab3_reg_addend_1_0_aq : std_logic;
SIGNAL nx64773z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_1_0_aq : std_logic;
SIGNAL nx36913z12 : std_logic;
SIGNAL nx36913z11 : std_logic;
SIGNAL u_lab3_reg_addend_6_0_aq : std_logic;
SIGNAL nx39098z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_6_0_aq : std_logic;
SIGNAL u_lab3_reg_addend_7_0_aq : std_logic;
SIGNAL nx33963z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_7_0_aq : std_logic;
SIGNAL u_lab3_reg_addend_4_0_aq : std_logic;
SIGNAL nx49368z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_4_0_aq : std_logic;
SIGNAL u_lab3_reg_addend_5_0_aq : std_logic;
SIGNAL nx44233z1 : std_logic;
SIGNAL u_lab3_reg_subtrahend_5_0_aq : std_logic;
SIGNAL nx36913z14 : std_logic;
SIGNAL nx36913z13 : std_logic;
SIGNAL nx36913z10 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_352_a : std_logic;
SIGNAL u_lab3_reg_minuend_11_0_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_320_a : std_logic;
SIGNAL u_lab3_reg_minuend_10_0_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_288_a : std_logic;
SIGNAL u_lab3_reg_minuend_9_0_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_256_a : std_logic;
SIGNAL u_lab3_reg_minuend_8_0_aq : std_logic;
SIGNAL nx36913z7 : std_logic;
SIGNAL nx36913z6 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_448_a : std_logic;
SIGNAL u_lab3_reg_minuend_14_0_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_480_a : std_logic;
SIGNAL u_lab3_reg_minuend_15_0_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_384_a : std_logic;
SIGNAL u_lab3_reg_minuend_12_0_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_416_a : std_logic;
SIGNAL u_lab3_reg_minuend_13_0_aq : std_logic;
SIGNAL nx36913z9 : std_logic;
SIGNAL nx36913z8 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_192_a : std_logic;
SIGNAL u_lab3_reg_minuend_6_0_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_224_a : std_logic;
SIGNAL u_lab3_reg_minuend_7_0_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_128_a : std_logic;
SIGNAL u_lab3_reg_minuend_4_0_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_160_a : std_logic;
SIGNAL u_lab3_reg_minuend_5_0_aq : std_logic;
SIGNAL nx36913z5 : std_logic;
SIGNAL nx36913z4 : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_96_a : std_logic;
SIGNAL u_lab3_reg_minuend_3_0_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_64_a : std_logic;
SIGNAL u_lab3_reg_minuend_2_0_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_0_a : std_logic;
SIGNAL u_lab3_reg_minuend_0_0_aq : std_logic;
SIGNAL u_lab3_minuend_1n10ss1_32_a : std_logic;
SIGNAL u_lab3_reg_minuend_1_0_aq : std_logic;
SIGNAL nx36913z3 : std_logic;
SIGNAL nx36913z2 : std_logic;
SIGNAL nx36913z1 : std_logic;
SIGNAL nx63011z19 : std_logic;
SIGNAL nx13806z19 : std_logic;
SIGNAL nx17342z19 : std_logic;
SIGNAL nx64525z19 : std_logic;
SIGNAL nx33377z19 : std_logic;
SIGNAL nx63307z19 : std_logic;
SIGNAL nx46976z19 : std_logic;
SIGNAL nx17564z1 : std_logic;
SIGNAL u_lab3_p_1n7s3_9_a : std_logic;
SIGNAL u_lab3_p_1n7s3_7_a : std_logic;
SIGNAL u_lab3_p_1n7s3_6_a : std_logic;
SIGNAL u_lab3_p_1n7s3_5_a : std_logic;
SIGNAL u_lab3_p_1n7s3_4_a : std_logic;
SIGNAL u_lab3_p_1n7s3_3_a : std_logic;
SIGNAL u_lab3_p_1n7s3_2_a : std_logic;
SIGNAL u_lab3_p_1n7s3_1_a : std_logic;
SIGNAL u_lab3_p_1n7s3_0_a : std_logic;
SIGNAL nx43842z1 : std_logic;
SIGNAL nx59416z1 : std_logic;
SIGNAL nx27511z1 : std_logic;
SIGNAL nx43085z1 : std_logic;
SIGNAL nx6877z1 : std_logic;
SIGNAL nx56839z1 : std_logic;
SIGNAL nx41265z1 : std_logic;
SIGNAL nx19195z1 : std_logic;
SIGNAL nx57902z1 : std_logic;
SIGNAL u_lab3_p_add9_1i276_ix60_fadd_a1_cout : std_logic;
SIGNAL nx49424z1 : std_logic;
SIGNAL u_lab3_p_1n7s2_31_a : std_logic;
SIGNAL nx31891z1 : std_logic;
SIGNAL u_lab3_reg_p_31_aq : std_logic;
SIGNAL nx19416z1 : std_logic;
SIGNAL reg_q_0_dup_37_aq : std_logic;
SIGNAL nx18768z1 : std_logic;
SIGNAL inc_d_1_dup_3038 : std_logic;
SIGNAL reg_q_1_dup_36_aq : std_logic;
SIGNAL nx52399z1 : std_logic;
SIGNAL inc_d_2_dup_3040 : std_logic;
SIGNAL reg_q_2_dup_35_aq : std_logic;
SIGNAL nx2437z1 : std_logic;
SIGNAL inc_d_3_dup_3042 : std_logic;
SIGNAL reg_q_3_dup_34_aq : std_logic;
SIGNAL nx47525z1 : std_logic;
SIGNAL inc_d_4_dup_3044 : std_logic;
SIGNAL reg_q_4_dup_33_aq : std_logic;
SIGNAL nx31951z1 : std_logic;
SIGNAL inc_d_5_dup_3046 : std_logic;
SIGNAL reg_q_5_dup_32_aq : std_logic;
SIGNAL nx16377z1 : std_logic;
SIGNAL inc_d_6_dup_3048 : std_logic;
SIGNAL reg_q_6_dup_31_aq : std_logic;
SIGNAL reg_byte_reg_5_aq : std_logic;
SIGNAL nx51544z9 : std_logic;
SIGNAL nx56069z1 : std_logic;
SIGNAL inc_d_7_dup_3050 : std_logic;
SIGNAL reg_q_7_dup_30_aq : std_logic;
SIGNAL nx53431z1 : std_logic;
SIGNAL inc_d_7_a : std_logic;
SIGNAL reg_q_7_aq : std_logic;
SIGNAL reg_byte_reg_7_aq : std_logic;
SIGNAL nx51544z11 : std_logic;
SIGNAL reg_byte_reg_4_aq : std_logic;
SIGNAL nx51544z8 : std_logic;
SIGNAL reg_byte_reg_2_aq : std_logic;
SIGNAL nx51544z5 : std_logic;
SIGNAL reg_byte_reg_1_aq : std_logic;
SIGNAL nx51544z4 : std_logic;
SIGNAL reg_byte_reg_3_aq : std_logic;
SIGNAL nx51544z6 : std_logic;
SIGNAL reg_byte_reg_0_aq : std_logic;
SIGNAL nx51544z3 : std_logic;
SIGNAL nx18625z1 : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_prev_char0_en_aq : std_logic;
SIGNAL u_seg7_u_dual_seg7_load_reg : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq : std_logic;
SIGNAL nx28027z1 : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq : std_logic;
SIGNAL nx51544z1 : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq : std_logic;
SIGNAL u_seg7_u_dual_seg7_muxed_char_0_a : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_0_aq : std_logic;
SIGNAL u_seg7_u_dual_seg7_muxed_char_2_a : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_2_aq : std_logic;
SIGNAL u_seg7_u_dual_seg7_muxed_char_3_a : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_3_aq : std_logic;
SIGNAL u_seg7_u_dual_seg7_muxed_char_4_a : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_4_aq : std_logic;
SIGNAL nx6634z1 : std_logic;
SIGNAL u_lab3_reg_o_done_aq : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_7_afeeder_combout : std_logic;
SIGNAL u_seg7_u_dual_seg7_reg_o_char_7_aq : std_logic;
SIGNAL sw_a2_a_ainput_o : std_logic;
SIGNAL inc_d_0_dup_2867 : std_logic;
SIGNAL reg_q_0_dup_29_aq : std_logic;
SIGNAL nx47817z1 : std_logic;
SIGNAL inc_d_1_dup_2869 : std_logic;
SIGNAL reg_q_1_dup_28_aq : std_logic;
SIGNAL nx51350z1 : std_logic;
SIGNAL inc_d_2_dup_2871 : std_logic;
SIGNAL reg_q_2_dup_27_aq : std_logic;
SIGNAL nx1388z1 : std_logic;
SIGNAL inc_d_3_dup_2873 : std_logic;
SIGNAL reg_q_3_dup_26_aq : std_logic;
SIGNAL nx16962z1 : std_logic;
SIGNAL inc_d_4_dup_2875 : std_logic;
SIGNAL reg_q_4_dup_25_aq : std_logic;
SIGNAL nx32536z1 : std_logic;
SIGNAL inc_d_5_dup_2877 : std_logic;
SIGNAL reg_q_5_dup_24_aq : std_logic;
SIGNAL nx17426z1 : std_logic;
SIGNAL inc_d_6_dup_2879 : std_logic;
SIGNAL reg_q_6_dup_23_aq : std_logic;
SIGNAL nx49331z1 : std_logic;
SIGNAL inc_d_7_dup_2881 : std_logic;
SIGNAL reg_q_7_dup_22_aq : std_logic;
SIGNAL nx33757z1 : std_logic;
SIGNAL inc_d_8_dup_2883 : std_logic;
SIGNAL reg_q_8_dup_21_aq : std_logic;
SIGNAL nx62450z6 : std_logic;
SIGNAL nx62450z5 : std_logic;
SIGNAL nx62450z4 : std_logic;
SIGNAL nx47250z1 : std_logic;
SIGNAL inc_d_9_dup_2885 : std_logic;
SIGNAL reg_q_9_dup_20_aq : std_logic;
SIGNAL nx47353z1 : std_logic;
SIGNAL inc_d_10_dup_2887 : std_logic;
SIGNAL reg_q_10_dup_19_aq : std_logic;
SIGNAL nx62450z3 : std_logic;
SIGNAL nx55140z1 : std_logic;
SIGNAL inc_d_11_a : std_logic;
SIGNAL reg_q_11_aq : std_logic;
SIGNAL nx62450z2 : std_logic;
SIGNAL nx62450z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_TopTx_aq : std_logic;
SIGNAL nx45921z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_TxFSM_1_aq : std_logic;
SIGNAL nx46262z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_TxBusy_aq : std_logic;
SIGNAL byte_valid_3n0r1 : std_logic;
SIGNAL reg_byte_valid_aq : std_logic;
SIGNAL nx46918z5 : std_logic;
SIGNAL nx51272z1 : std_logic;
SIGNAL nx51272z2 : std_logic;
SIGNAL yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_aq : std_logic;
SIGNAL nx50275z1 : std_logic;
SIGNAL yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_aq : std_logic;
SIGNAL nx48281z2 : std_logic;
SIGNAL nx49278z2 : std_logic;
SIGNAL nx49278z1 : std_logic;
SIGNAL yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2_aq : std_logic;
SIGNAL nx48281z1 : std_logic;
SIGNAL yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3_aq : std_logic;
SIGNAL nx46918z4 : std_logic;
SIGNAL nx46918z3 : std_logic;
SIGNAL nx46918z2 : std_logic;
SIGNAL nx46918z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_TxFSM_0_aq : std_logic;
SIGNAL NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_8_a : std_logic;
SIGNAL nx21131z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_Tx_Reg_8_aq : std_logic;
SIGNAL NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_7_a : std_logic;
SIGNAL yes_uart_u_uart_reg_Tx_Reg_7_aq : std_logic;
SIGNAL NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_6_a : std_logic;
SIGNAL yes_uart_u_uart_reg_Tx_Reg_6_aq : std_logic;
SIGNAL NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_5_a : std_logic;
SIGNAL yes_uart_u_uart_reg_Tx_Reg_5_aq : std_logic;
SIGNAL NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_4_a : std_logic;
SIGNAL yes_uart_u_uart_reg_Tx_Reg_4_aq : std_logic;
SIGNAL NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_3_a : std_logic;
SIGNAL yes_uart_u_uart_reg_Tx_Reg_3_aq : std_logic;
SIGNAL NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_2_a : std_logic;
SIGNAL yes_uart_u_uart_reg_Tx_Reg_2_aq : std_logic;
SIGNAL NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_1_a : std_logic;
SIGNAL yes_uart_u_uart_reg_Tx_Reg_1_aq : std_logic;
SIGNAL nx29107z2 : std_logic;
SIGNAL nx29107z1 : std_logic;
SIGNAL yes_uart_u_uart_reg_Tx_Reg_0_aq : std_logic;
SIGNAL u_lab3_p_1n7s3f2 : std_logic_vector(7 DOWNTO 0);
SIGNAL u_lab3_p_1n7s3f1 : std_logic_vector(7 DOWNTO 0);
SIGNAL byte_reg_2n1ss1 : std_logic_vector(7 DOWNTO 0);
SIGNAL yes_uart_u_uart_Tx_Reg_14n6ss1 : std_logic_vector(0 DOWNTO 0);
SIGNAL u_seg7_rtlcP1 : std_logic_vector(13 DOWNTO 0);
SIGNAL seg7_num : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_reset_n_ainput_o : std_logic;
SIGNAL ALT_INV_u_lab3_reg_state_3_aq : std_logic;
SIGNAL ALT_INV_yes_uart_u_uart_reg_Tx_Reg_0_aq : std_logic;
SIGNAL ALT_INV_u_lab3_reg_state_0_aq : std_logic;
SIGNAL ALT_INV_reg_q_10_aq : std_logic;

BEGIN

ww_reset_n <= reset_n;
ww_clk <= clk;
ww_uart_rx <= uart_rx;
uart_tx <= ww_uart_tx;
seg7_en <= ww_seg7_en;
seg7_data <= ww_seg7_data;
led <= ww_led;
ww_sw <= sw;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus <= (a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout & a_aQUARTUS_CREATED_GND_aI_combout);

clk_ainputclkctrl_INCLK_bus <= (vcc & vcc & vcc & clk_ainput_o);
ALT_INV_reset_n_ainput_o <= NOT reset_n_ainput_o;
ALT_INV_u_lab3_reg_state_3_aq <= NOT u_lab3_reg_state_3_aq;
ALT_INV_yes_uart_u_uart_reg_Tx_Reg_0_aq <= NOT yes_uart_u_uart_reg_Tx_Reg_0_aq;
ALT_INV_u_lab3_reg_state_0_aq <= NOT u_lab3_reg_state_0_aq;
ALT_INV_reg_q_10_aq <= NOT reg_q_10_aq;

-- Location: LCCOMB_X11_Y12_N16
a_aQUARTUS_CREATED_GND_aI : fiftyfivenm_lcell_comb
-- Equation(s):
-- a_aQUARTUS_CREATED_GND_aI_combout = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => a_aQUARTUS_CREATED_GND_aI_combout);

-- Location: IOOBUF_X3_Y10_N23
seg7_data_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq,
	devoe => ww_devoe,
	o => seg7_data_a1_a_aoutput_o);

-- Location: IOOBUF_X6_Y10_N30
seg7_data_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq,
	devoe => ww_devoe,
	o => seg7_data_a5_a_aoutput_o);

-- Location: IOOBUF_X3_Y10_N16
seg7_data_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq,
	devoe => ww_devoe,
	o => seg7_data_a6_a_aoutput_o);

-- Location: IOOBUF_X11_Y25_N16
uart_tx_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => uart_rx_ainput_o,
	devoe => ww_devoe,
	o => uart_tx_aoutput_o);

-- Location: IOOBUF_X15_Y25_N16
seg7_en_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_reg_q_10_aq,
	devoe => ww_devoe,
	o => seg7_en_a0_a_aoutput_o);

-- Location: IOOBUF_X13_Y25_N9
seg7_en_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => reg_q_10_aq,
	devoe => ww_devoe,
	o => seg7_en_a1_a_aoutput_o);

-- Location: IOOBUF_X13_Y25_N30
seg7_data_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_0_aq,
	devoe => ww_devoe,
	o => seg7_data_a0_a_aoutput_o);

-- Location: IOOBUF_X1_Y10_N9
seg7_data_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_2_aq,
	devoe => ww_devoe,
	o => seg7_data_a2_a_aoutput_o);

-- Location: IOOBUF_X31_Y22_N23
seg7_data_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_3_aq,
	devoe => ww_devoe,
	o => seg7_data_a3_a_aoutput_o);

-- Location: IOOBUF_X15_Y25_N23
seg7_data_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_4_aq,
	devoe => ww_devoe,
	o => seg7_data_a4_a_aoutput_o);

-- Location: IOOBUF_X11_Y25_N2
seg7_data_a7_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => u_seg7_u_dual_seg7_reg_o_char_7_aq,
	devoe => ww_devoe,
	o => seg7_data_a7_a_aoutput_o);

-- Location: IOOBUF_X0_Y7_N23
led_a0_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sw_a0_a_ainput_o,
	devoe => ww_devoe,
	o => led_a0_a_aoutput_o);

-- Location: IOOBUF_X0_Y6_N16
led_a1_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sw_a1_a_ainput_o,
	devoe => ww_devoe,
	o => led_a1_a_aoutput_o);

-- Location: IOOBUF_X10_Y17_N2
led_a2_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sw_a2_a_ainput_o,
	devoe => ww_devoe,
	o => led_a2_a_aoutput_o);

-- Location: IOOBUF_X10_Y20_N23
led_a3_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_yes_uart_u_uart_reg_Tx_Reg_0_aq,
	devoe => ww_devoe,
	o => led_a3_a_aoutput_o);

-- Location: IOOBUF_X10_Y21_N23
led_a4_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => uart_rx_ainput_o,
	devoe => ww_devoe,
	o => led_a4_a_aoutput_o);

-- Location: IOOBUF_X10_Y22_N23
led_a5_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => led_a5_a_aoutput_o);

-- Location: IOOBUF_X3_Y0_N16
led_a6_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => led_a6_a_aoutput_o);

-- Location: IOOBUF_X6_Y0_N23
led_a7_a_aoutput : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sw_a7_a_ainput_o,
	devoe => ww_devoe,
	o => led_a7_a_aoutput_o);

-- Location: IOIBUF_X0_Y6_N22
clk_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => clk_ainput_o);

-- Location: CLKCTRL_G4
clk_ainputclkctrl : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => clk_ainputclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => clk_ainputclkctrl_outclk);

-- Location: LCCOMB_X12_Y15_N6
ix2757_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_2773 = reg_q_0_dup_7_aq $ (VCC)
-- nx9230z2 = CARRY(reg_q_0_dup_7_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_0_dup_7_aq,
	datad => VCC,
	combout => inc_d_0_dup_2773,
	cout => nx9230z2);

-- Location: IOIBUF_X0_Y2_N15
reset_n_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => reset_n_ainput_o);

-- Location: LCCOMB_X12_Y15_N2
u_seg7_u_dual_seg7_reg_prev_reset_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_reg_prev_reset_a0_combout = !reset_n_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reset_n_ainput_o,
	combout => u_seg7_u_dual_seg7_reg_prev_reset_a0_combout);

-- Location: FF_X12_Y15_N3
u_seg7_u_dual_seg7_reg_prev_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_reg_prev_reset_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_prev_reset_aq);

-- Location: LCCOMB_X12_Y15_N0
ix60244z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60244z1 = (!reset_n_ainput_o & !u_seg7_u_dual_seg7_reg_prev_reset_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reset_n_ainput_o,
	datad => u_seg7_u_dual_seg7_reg_prev_reset_aq,
	combout => nx60244z1);

-- Location: FF_X12_Y15_N7
reg_q_0_dup_7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_2773,
	sclr => nx60244z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_7_aq);

-- Location: LCCOMB_X12_Y15_N8
ix2759_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_2774 = (reg_q_1_dup_6_aq & (!nx9230z2)) # (!reg_q_1_dup_6_aq & ((nx9230z2) # (GND)))
-- nx41135z2 = CARRY((!nx9230z2) # (!reg_q_1_dup_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_6_aq,
	datad => VCC,
	cin => nx9230z2,
	combout => inc_d_1_dup_2774,
	cout => nx41135z2);

-- Location: FF_X12_Y15_N9
reg_q_1_dup_6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_2774,
	sclr => nx60244z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_6_aq);

-- Location: LCCOMB_X12_Y15_N10
ix2761_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_2775 = (reg_q_2_dup_5_aq & (nx41135z2 $ (GND))) # (!reg_q_2_dup_5_aq & (!nx41135z2 & VCC))
-- nx25561z2 = CARRY((reg_q_2_dup_5_aq & !nx41135z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_5_aq,
	datad => VCC,
	cin => nx41135z2,
	combout => inc_d_2_dup_2775,
	cout => nx25561z2);

-- Location: FF_X12_Y15_N11
reg_q_2_dup_5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_2775,
	sclr => nx60244z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_5_aq);

-- Location: LCCOMB_X12_Y15_N12
ix2763_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_2776 = (reg_q_3_dup_4_aq & (!nx25561z2)) # (!reg_q_3_dup_4_aq & ((nx25561z2) # (GND)))
-- nx55549z2 = CARRY((!nx25561z2) # (!reg_q_3_dup_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_4_aq,
	datad => VCC,
	cin => nx25561z2,
	combout => inc_d_3_dup_2776,
	cout => nx55549z2);

-- Location: FF_X12_Y15_N13
reg_q_3_dup_4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_2776,
	sclr => nx60244z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_4_aq);

-- Location: LCCOMB_X12_Y15_N14
ix2765_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_2777 = (reg_q_4_dup_3_aq & (nx55549z2 $ (GND))) # (!reg_q_4_dup_3_aq & (!nx55549z2 & VCC))
-- nx28436z2 = CARRY((reg_q_4_dup_3_aq & !nx55549z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_dup_3_aq,
	datad => VCC,
	cin => nx55549z2,
	combout => inc_d_4_dup_2777,
	cout => nx28436z2);

-- Location: FF_X12_Y15_N15
reg_q_4_dup_3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_2777,
	sclr => nx60244z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_3_aq);

-- Location: LCCOMB_X12_Y15_N16
ix32_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_2778 = (reg_q_5_dup_2_aq & (!nx28436z2)) # (!reg_q_5_dup_2_aq & ((nx28436z2) # (GND)))
-- nx62824z2 = CARRY((!nx28436z2) # (!reg_q_5_dup_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_2_aq,
	datad => VCC,
	cin => nx28436z2,
	combout => inc_d_5_dup_2778,
	cout => nx62824z2);

-- Location: FF_X12_Y15_N17
reg_q_5_dup_2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_2778,
	sclr => nx60244z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_2_aq);

-- Location: LCCOMB_X12_Y15_N18
ix36_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_2779 = (reg_q_6_dup_1_aq & (nx62824z2 $ (GND))) # (!reg_q_6_dup_1_aq & (!nx62824z2 & VCC))
-- nx63336z2 = CARRY((reg_q_6_dup_1_aq & !nx62824z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_1_aq,
	datad => VCC,
	cin => nx62824z2,
	combout => inc_d_6_dup_2779,
	cout => nx63336z2);

-- Location: FF_X12_Y15_N19
reg_q_6_dup_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_2779,
	sclr => nx60244z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_1_aq);

-- Location: LCCOMB_X12_Y15_N20
ix2766_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_2780 = (reg_q_7_dup_0_aq & (!nx63336z2)) # (!reg_q_7_dup_0_aq & ((nx63336z2) # (GND)))
-- nx13374z2 = CARRY((!nx63336z2) # (!reg_q_7_dup_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_dup_0_aq,
	datad => VCC,
	cin => nx63336z2,
	combout => inc_d_7_dup_2780,
	cout => nx13374z2);

-- Location: FF_X12_Y15_N21
reg_q_7_dup_0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_2780,
	sclr => nx60244z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_0_aq);

-- Location: LCCOMB_X12_Y15_N22
ix2768_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_8_a = (reg_q_8_aq & (nx13374z2 $ (GND))) # (!reg_q_8_aq & (!nx13374z2 & VCC))
-- nx47005z2 = CARRY((reg_q_8_aq & !nx13374z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_8_aq,
	datad => VCC,
	cin => nx13374z2,
	combout => inc_d_8_a,
	cout => nx47005z2);

-- Location: FF_X12_Y15_N23
reg_q_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_8_a,
	sclr => nx60244z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_aq);

-- Location: LCCOMB_X12_Y15_N24
ix2770_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_9_a = (reg_q_9_aq & (!nx47005z2)) # (!reg_q_9_aq & ((nx47005z2) # (GND)))
-- nx10744z1 = CARRY((!nx47005z2) # (!reg_q_9_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_9_aq,
	datad => VCC,
	cin => nx47005z2,
	combout => inc_d_9_a,
	cout => nx10744z1);

-- Location: FF_X12_Y15_N25
reg_q_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_9_a,
	sclr => nx60244z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_9_aq);

-- Location: LCCOMB_X12_Y15_N26
ix2771_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_10_a = reg_q_10_aq $ (!nx10744z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_10_aq,
	cin => nx10744z1,
	combout => inc_d_10_a);

-- Location: FF_X12_Y15_N27
reg_q_10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_10_a,
	sclr => nx60244z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_10_aq);

-- Location: IOIBUF_X10_Y19_N15
sw_a1_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => sw_a1_a_ainput_o);

-- Location: LCCOMB_X11_Y16_N14
ix2_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_a = reg_q_0_aq $ (VCC)
-- nx27063z1 = CARRY(reg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_aq,
	datad => VCC,
	combout => inc_d_0_a,
	cout => nx27063z1);

-- Location: LCCOMB_X15_Y14_N22
yes_uart_u_uart_reg_RxFSM_1_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- yes_uart_u_uart_reg_RxFSM_1_a0_combout = !yes_uart_u_uart_reg_RxFSM_0_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => yes_uart_u_uart_reg_RxFSM_0_aq,
	combout => yes_uart_u_uart_reg_RxFSM_1_a0_combout);

-- Location: IOIBUF_X11_Y25_N22
uart_rx_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_rx,
	o => uart_rx_ainput_o);

-- Location: LCCOMB_X15_Y14_N12
yes_uart_u_uart_reg_Rx_r_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- yes_uart_u_uart_reg_Rx_r_a0_combout = !uart_rx_ainput_o

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => uart_rx_ainput_o,
	combout => yes_uart_u_uart_reg_Rx_r_a0_combout);

-- Location: FF_X15_Y14_N13
yes_uart_u_uart_reg_Rx_r : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => yes_uart_u_uart_reg_Rx_r_a0_combout,
	clrn => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Rx_r_aq);

-- Location: LCCOMB_X11_Y14_N8
ix2787_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_2818 = reg_q_0_dup_18_aq $ (VCC)
-- nx49129z1 = CARRY(reg_q_0_dup_18_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_18_aq,
	datad => VCC,
	combout => inc_d_0_dup_2818,
	cout => nx49129z1);

-- Location: LCCOMB_X15_Y14_N6
ix22863z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22863z1 = (nx60456z2) # (!yes_uart_u_uart_reg_RxFSM_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx60456z2,
	datad => yes_uart_u_uart_reg_RxFSM_0_aq,
	combout => nx22863z1);

-- Location: FF_X11_Y14_N9
reg_q_0_dup_18 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_2818,
	clrn => reset_n_ainput_o,
	sclr => nx22863z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_18_aq);

-- Location: LCCOMB_X11_Y14_N10
ix2789_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_2820 = (reg_q_1_dup_17_aq & (!nx49129z1)) # (!reg_q_1_dup_17_aq & ((nx49129z1) # (GND)))
-- nx50038z1 = CARRY((!nx49129z1) # (!reg_q_1_dup_17_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_17_aq,
	datad => VCC,
	cin => nx49129z1,
	combout => inc_d_1_dup_2820,
	cout => nx50038z1);

-- Location: FF_X11_Y14_N11
reg_q_1_dup_17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_2820,
	clrn => reset_n_ainput_o,
	sclr => nx22863z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_17_aq);

-- Location: LCCOMB_X11_Y14_N12
ix2791_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_2822 = (reg_q_2_dup_16_aq & (nx50038z1 $ (GND))) # (!reg_q_2_dup_16_aq & (!nx50038z1 & VCC))
-- nx76z1 = CARRY((reg_q_2_dup_16_aq & !nx50038z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_16_aq,
	datad => VCC,
	cin => nx50038z1,
	combout => inc_d_2_dup_2822,
	cout => nx76z1);

-- Location: FF_X11_Y14_N13
reg_q_2_dup_16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_2822,
	clrn => reset_n_ainput_o,
	sclr => nx22863z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_16_aq);

-- Location: LCCOMB_X11_Y14_N14
ix2793_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_2824 = (reg_q_3_dup_15_aq & (!nx76z1)) # (!reg_q_3_dup_15_aq & ((nx76z1) # (GND)))
-- nx15650z1 = CARRY((!nx76z1) # (!reg_q_3_dup_15_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_3_dup_15_aq,
	datad => VCC,
	cin => nx76z1,
	combout => inc_d_3_dup_2824,
	cout => nx15650z1);

-- Location: FF_X11_Y14_N15
reg_q_3_dup_15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_2824,
	clrn => reset_n_ainput_o,
	sclr => nx22863z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_15_aq);

-- Location: LCCOMB_X11_Y14_N16
ix2795_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_2826 = (reg_q_4_dup_14_aq & (nx15650z1 $ (GND))) # (!reg_q_4_dup_14_aq & (!nx15650z1 & VCC))
-- nx34312z1 = CARRY((reg_q_4_dup_14_aq & !nx15650z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_dup_14_aq,
	datad => VCC,
	cin => nx15650z1,
	combout => inc_d_4_dup_2826,
	cout => nx34312z1);

-- Location: FF_X11_Y14_N17
reg_q_4_dup_14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_2826,
	clrn => reset_n_ainput_o,
	sclr => nx22863z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_14_aq);

-- Location: LCCOMB_X11_Y14_N18
ix2797_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_2828 = (reg_q_5_dup_13_aq & (!nx34312z1)) # (!reg_q_5_dup_13_aq & ((nx34312z1) # (GND)))
-- nx18738z1 = CARRY((!nx34312z1) # (!reg_q_5_dup_13_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_13_aq,
	datad => VCC,
	cin => nx34312z1,
	combout => inc_d_5_dup_2828,
	cout => nx18738z1);

-- Location: FF_X11_Y14_N19
reg_q_5_dup_13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_2828,
	clrn => reset_n_ainput_o,
	sclr => nx22863z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_13_aq);

-- Location: LCCOMB_X11_Y14_N20
ix2799_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_2830 = (reg_q_6_dup_12_aq & (nx18738z1 $ (GND))) # (!reg_q_6_dup_12_aq & (!nx18738z1 & VCC))
-- nx4678z1 = CARRY((reg_q_6_dup_12_aq & !nx18738z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_12_aq,
	datad => VCC,
	cin => nx18738z1,
	combout => inc_d_6_dup_2830,
	cout => nx4678z1);

-- Location: FF_X11_Y14_N21
reg_q_6_dup_12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_2830,
	clrn => reset_n_ainput_o,
	sclr => nx22863z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_12_aq);

-- Location: LCCOMB_X11_Y14_N22
ix2801_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_2832 = (reg_q_7_dup_11_aq & (!nx4678z1)) # (!reg_q_7_dup_11_aq & ((nx4678z1) # (GND)))
-- nx10896z1 = CARRY((!nx4678z1) # (!reg_q_7_dup_11_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_11_aq,
	datad => VCC,
	cin => nx4678z1,
	combout => inc_d_7_dup_2832,
	cout => nx10896z1);

-- Location: FF_X11_Y14_N23
reg_q_7_dup_11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_2832,
	clrn => reset_n_ainput_o,
	sclr => nx22863z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_11_aq);

-- Location: LCCOMB_X11_Y14_N24
ix2803_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_8_dup_2833 = (reg_q_8_dup_10_aq & (nx10896z1 $ (GND))) # (!reg_q_8_dup_10_aq & (!nx10896z1 & VCC))
-- nx26470z1 = CARRY((reg_q_8_dup_10_aq & !nx10896z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_8_dup_10_aq,
	datad => VCC,
	cin => nx10896z1,
	combout => inc_d_8_dup_2833,
	cout => nx26470z1);

-- Location: FF_X11_Y14_N25
reg_q_8_dup_10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_8_dup_2833,
	clrn => reset_n_ainput_o,
	sclr => nx22863z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_dup_10_aq);

-- Location: LCCOMB_X11_Y14_N26
ix2805_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_9_dup_2834 = (reg_q_9_dup_9_aq & (!nx26470z1)) # (!reg_q_9_dup_9_aq & ((nx26470z1) # (GND)))
-- nx34257z1 = CARRY((!nx26470z1) # (!reg_q_9_dup_9_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_9_dup_9_aq,
	datad => VCC,
	cin => nx26470z1,
	combout => inc_d_9_dup_2834,
	cout => nx34257z1);

-- Location: FF_X11_Y14_N27
reg_q_9_dup_9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_9_dup_2834,
	clrn => reset_n_ainput_o,
	sclr => nx22863z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_9_dup_9_aq);

-- Location: LCCOMB_X11_Y14_N28
ix2806_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_10_dup_2835 = nx34257z1 $ (!reg_q_10_dup_8_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => reg_q_10_dup_8_aq,
	cin => nx34257z1,
	combout => inc_d_10_dup_2835);

-- Location: FF_X11_Y14_N29
reg_q_10_dup_8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_10_dup_2835,
	clrn => reset_n_ainput_o,
	sclr => nx22863z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_10_dup_8_aq);

-- Location: LCCOMB_X11_Y14_N4
ix60456z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60456z6 = (!reg_q_1_dup_17_aq & (!reg_q_10_dup_8_aq & (!reg_q_0_dup_18_aq & !reg_q_2_dup_16_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_17_aq,
	datab => reg_q_10_dup_8_aq,
	datac => reg_q_0_dup_18_aq,
	datad => reg_q_2_dup_16_aq,
	combout => nx60456z6);

-- Location: LCCOMB_X11_Y14_N6
ix60456z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60456z5 = (!reg_q_9_dup_9_aq & (!reg_q_8_dup_10_aq & (nx60456z6 & !reg_q_5_dup_13_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_9_dup_9_aq,
	datab => reg_q_8_dup_10_aq,
	datac => nx60456z6,
	datad => reg_q_5_dup_13_aq,
	combout => nx60456z5);

-- Location: LCCOMB_X16_Y14_N30
yes_uart_u_uart_reg_RxDivisor_4_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- yes_uart_u_uart_reg_RxDivisor_4_afeeder_combout = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => yes_uart_u_uart_reg_RxDivisor_4_afeeder_combout);

-- Location: FF_X16_Y14_N31
yes_uart_u_uart_reg_RxDivisor_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => yes_uart_u_uart_reg_RxDivisor_4_afeeder_combout,
	clrn => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_RxDivisor_4_aq);

-- Location: LCCOMB_X11_Y14_N0
ix60456z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60456z3 = (reg_q_7_dup_11_aq & (reg_q_4_dup_14_aq & (reg_q_3_dup_15_aq & yes_uart_u_uart_reg_RxDivisor_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_11_aq,
	datab => reg_q_4_dup_14_aq,
	datac => reg_q_3_dup_15_aq,
	datad => yes_uart_u_uart_reg_RxDivisor_4_aq,
	combout => nx60456z3);

-- Location: LCCOMB_X11_Y14_N2
ix60456z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60456z4 = (!reg_q_7_dup_11_aq & (!reg_q_4_dup_14_aq & (!reg_q_3_dup_15_aq & !yes_uart_u_uart_reg_RxDivisor_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_11_aq,
	datab => reg_q_4_dup_14_aq,
	datac => reg_q_3_dup_15_aq,
	datad => yes_uart_u_uart_reg_RxDivisor_4_aq,
	combout => nx60456z4);

-- Location: LCCOMB_X11_Y14_N30
ix60456z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60456z2 = (nx60456z5 & ((reg_q_6_dup_12_aq & (nx60456z3)) # (!reg_q_6_dup_12_aq & ((nx60456z4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60456z5,
	datab => reg_q_6_dup_12_aq,
	datac => nx60456z3,
	datad => nx60456z4,
	combout => nx60456z2);

-- Location: LCCOMB_X15_Y14_N26
ix60456z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60456z1 = (nx60456z2 & yes_uart_u_uart_reg_RxFSM_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx60456z2,
	datad => yes_uart_u_uart_reg_RxFSM_0_aq,
	combout => nx60456z1);

-- Location: FF_X15_Y14_N27
yes_uart_u_uart_reg_TopRx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx60456z1,
	clrn => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_TopRx_aq);

-- Location: LCCOMB_X15_Y14_N14
ix64005z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64005z2 = (yes_uart_u_uart_reg_RxFSM_5_aq & (((!uart_rx_ainput_o)))) # (!yes_uart_u_uart_reg_RxFSM_5_aq & (!yes_uart_u_uart_reg_TopRx_aq & ((yes_uart_u_uart_reg_RxFSM_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_TopRx_aq,
	datab => yes_uart_u_uart_reg_RxFSM_5_aq,
	datac => uart_rx_ainput_o,
	datad => yes_uart_u_uart_reg_RxFSM_0_aq,
	combout => nx64005z2);

-- Location: LCCOMB_X15_Y14_N8
ix64005z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64005z1 = (!nx64005z2 & ((yes_uart_u_uart_reg_Rx_r_aq) # (yes_uart_u_uart_reg_RxFSM_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Rx_r_aq,
	datac => nx64005z2,
	datad => yes_uart_u_uart_reg_RxFSM_0_aq,
	combout => nx64005z1);

-- Location: FF_X15_Y14_N23
yes_uart_u_uart_reg_RxFSM_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => yes_uart_u_uart_reg_RxFSM_1_a0_combout,
	clrn => reset_n_ainput_o,
	ena => nx64005z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_RxFSM_1_aq);

-- Location: LCCOMB_X15_Y14_N28
ix2457z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2457z1 = (yes_uart_u_uart_reg_Rx_r_aq & (yes_uart_u_uart_reg_RxFSM_4_aq)) # (!yes_uart_u_uart_reg_Rx_r_aq & ((yes_uart_u_uart_reg_RxFSM_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_RxFSM_4_aq,
	datac => yes_uart_u_uart_reg_RxFSM_1_aq,
	datad => yes_uart_u_uart_reg_Rx_r_aq,
	combout => nx2457z1);

-- Location: FF_X15_Y14_N29
yes_uart_u_uart_reg_RxFSM_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx2457z1,
	clrn => reset_n_ainput_o,
	ena => nx64005z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_RxFSM_5_aq);

-- Location: LCCOMB_X15_Y14_N10
ix63008z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63008z1 = (!yes_uart_u_uart_reg_RxFSM_5_aq & ((yes_uart_u_uart_reg_Rx_r_aq) # (!yes_uart_u_uart_reg_RxFSM_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_RxFSM_5_aq,
	datac => yes_uart_u_uart_reg_RxFSM_4_aq,
	datad => yes_uart_u_uart_reg_Rx_r_aq,
	combout => nx63008z1);

-- Location: FF_X15_Y14_N11
yes_uart_u_uart_reg_RxFSM_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx63008z1,
	clrn => reset_n_ainput_o,
	ena => nx64005z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_RxFSM_0_aq);

-- Location: LCCOMB_X15_Y13_N10
ix46026z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46026z1 = (!yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_aq & yes_uart_u_uart_reg_RxFSM_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	datad => yes_uart_u_uart_reg_RxFSM_0_aq,
	combout => nx46026z1);

-- Location: LCCOMB_X15_Y14_N0
ix65002z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx65002z1 = (yes_uart_u_uart_reg_RxFSM_3_aq) # ((yes_uart_u_uart_reg_RxFSM_1_aq & yes_uart_u_uart_reg_Rx_r_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_RxFSM_3_aq,
	datac => yes_uart_u_uart_reg_RxFSM_1_aq,
	datad => yes_uart_u_uart_reg_Rx_r_aq,
	combout => nx65002z1);

-- Location: FF_X15_Y14_N1
yes_uart_u_uart_reg_RxFSM_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx65002z1,
	clrn => reset_n_ainput_o,
	ena => nx64005z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_RxFSM_2_aq);

-- Location: LCCOMB_X15_Y14_N24
ix463z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx463z1 = (!nx1460z2 & yes_uart_u_uart_reg_RxFSM_2_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx1460z2,
	datad => yes_uart_u_uart_reg_RxFSM_2_aq,
	combout => nx463z1);

-- Location: FF_X15_Y14_N25
yes_uart_u_uart_reg_RxFSM_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx463z1,
	clrn => reset_n_ainput_o,
	ena => nx64005z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_RxFSM_3_aq);

-- Location: LCCOMB_X15_Y14_N30
ix46026z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46026z3 = (yes_uart_u_uart_reg_RxFSM_3_aq & (yes_uart_u_uart_reg_TopRx_aq)) # (!yes_uart_u_uart_reg_RxFSM_3_aq & ((!yes_uart_u_uart_reg_RxFSM_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_RxFSM_3_aq,
	datac => yes_uart_u_uart_reg_TopRx_aq,
	datad => yes_uart_u_uart_reg_RxFSM_0_aq,
	combout => nx46026z3);

-- Location: FF_X15_Y13_N11
yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx46026z1,
	clrn => reset_n_ainput_o,
	ena => nx46026z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_aq);

-- Location: LCCOMB_X15_Y13_N28
ix45029z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx45029z1 = (yes_uart_u_uart_reg_RxFSM_0_aq & (yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_aq $ (yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	datac => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_aq,
	datad => yes_uart_u_uart_reg_RxFSM_0_aq,
	combout => nx45029z1);

-- Location: FF_X15_Y13_N29
yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx45029z1,
	clrn => reset_n_ainput_o,
	ena => nx46026z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_aq);

-- Location: LCCOMB_X15_Y13_N30
ix44032z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx44032z1 = (yes_uart_u_uart_reg_RxFSM_0_aq & (yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2_aq $ (((yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_aq & yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	datab => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_aq,
	datac => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2_aq,
	datad => yes_uart_u_uart_reg_RxFSM_0_aq,
	combout => nx44032z1);

-- Location: FF_X15_Y13_N31
yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx44032z1,
	clrn => reset_n_ainput_o,
	ena => nx46026z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2_aq);

-- Location: LCCOMB_X15_Y13_N8
ix43035z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx43035z2 = (yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_aq & yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	datad => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_aq,
	combout => nx43035z2);

-- Location: LCCOMB_X15_Y13_N18
ix43035z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx43035z1 = (yes_uart_u_uart_reg_RxFSM_0_aq & (yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3_aq $ (((yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2_aq & nx43035z2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2_aq,
	datab => nx43035z2,
	datac => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3_aq,
	datad => yes_uart_u_uart_reg_RxFSM_0_aq,
	combout => nx43035z1);

-- Location: FF_X15_Y13_N19
yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx43035z1,
	clrn => reset_n_ainput_o,
	ena => nx46026z3,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3_aq);

-- Location: LCCOMB_X15_Y13_N0
ix1460z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx1460z2 = (!yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_aq & (yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3_aq & (!yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2_aq & !yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_0_aq,
	datab => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_3_aq,
	datac => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_2_aq,
	datad => yes_uart_u_uart_modgen_counter_RxBitCnt_reg_q_1_aq,
	combout => nx1460z2);

-- Location: LCCOMB_X15_Y14_N4
ix1460z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx1460z1 = (nx1460z2 & yes_uart_u_uart_reg_RxFSM_2_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx1460z2,
	datad => yes_uart_u_uart_reg_RxFSM_2_aq,
	combout => nx1460z1);

-- Location: FF_X15_Y14_N5
yes_uart_u_uart_reg_RxFSM_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx1460z1,
	clrn => reset_n_ainput_o,
	ena => nx64005z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_RxFSM_4_aq);

-- Location: LCCOMB_X15_Y14_N18
ix46463z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46463z1 = (yes_uart_u_uart_reg_RxFSM_4_aq & (yes_uart_u_uart_reg_TopRx_aq & !yes_uart_u_uart_reg_Rx_r_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_RxFSM_4_aq,
	datac => yes_uart_u_uart_reg_TopRx_aq,
	datad => yes_uart_u_uart_reg_Rx_r_aq,
	combout => nx46463z1);

-- Location: LCCOMB_X15_Y14_N2
yes_uart_u_uart_reg_RxRDYi_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- yes_uart_u_uart_reg_RxRDYi_afeeder_combout = nx46463z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx46463z1,
	combout => yes_uart_u_uart_reg_RxRDYi_afeeder_combout);

-- Location: FF_X15_Y14_N3
yes_uart_u_uart_reg_RxRDYi : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => yes_uart_u_uart_reg_RxRDYi_afeeder_combout,
	clrn => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_RxRDYi_aq);

-- Location: LCCOMB_X15_Y14_N16
ix63348z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_rtlc0_PS25_n202 = (yes_uart_u_uart_reg_RxRDYi_aq) # (!reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reset_n_ainput_o,
	datad => yes_uart_u_uart_reg_RxRDYi_aq,
	combout => u_lab3_rtlc0_PS25_n202);

-- Location: FF_X11_Y16_N15
reg_q_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_a,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_aq);

-- Location: LCCOMB_X11_Y16_N16
ix6_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_a = (reg_q_1_aq & (!nx27063z1)) # (!reg_q_1_aq & ((nx27063z1) # (GND)))
-- nx39256z1 = CARRY((!nx27063z1) # (!reg_q_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_aq,
	datad => VCC,
	cin => nx27063z1,
	combout => inc_d_1_a,
	cout => nx39256z1);

-- Location: FF_X11_Y16_N17
reg_q_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_a,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_aq);

-- Location: LCCOMB_X11_Y16_N18
ix10_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_a = (reg_q_2_aq & (nx39256z1 $ (GND))) # (!reg_q_2_aq & (!nx39256z1 & VCC))
-- nx57428z1 = CARRY((reg_q_2_aq & !nx39256z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_aq,
	datad => VCC,
	cin => nx39256z1,
	combout => inc_d_2_a,
	cout => nx57428z1);

-- Location: FF_X11_Y16_N19
reg_q_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_a,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_aq);

-- Location: LCCOMB_X11_Y16_N20
ix14_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_a = (reg_q_3_aq & (!nx57428z1)) # (!reg_q_3_aq & ((nx57428z1) # (GND)))
-- nx23040z1 = CARRY((!nx57428z1) # (!reg_q_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_aq,
	datad => VCC,
	cin => nx57428z1,
	combout => inc_d_3_a,
	cout => nx23040z1);

-- Location: FF_X11_Y16_N21
reg_q_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_a,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_aq);

-- Location: LCCOMB_X11_Y16_N22
ix18_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_a = (reg_q_4_aq & (nx23040z1 $ (GND))) # (!reg_q_4_aq & (!nx23040z1 & VCC))
-- nx58827z1 = CARRY((reg_q_4_aq & !nx23040z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_aq,
	datad => VCC,
	cin => nx23040z1,
	combout => inc_d_4_a,
	cout => nx58827z1);

-- Location: FF_X11_Y16_N23
reg_q_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_a,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_aq);

-- Location: LCCOMB_X11_Y16_N24
ix22_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_a = (reg_q_5_aq & (!nx58827z1)) # (!reg_q_5_aq & ((nx58827z1) # (GND)))
-- nx37857z1 = CARRY((!nx58827z1) # (!reg_q_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_aq,
	datad => VCC,
	cin => nx58827z1,
	combout => inc_d_5_a,
	cout => nx37857z1);

-- Location: FF_X11_Y16_N25
reg_q_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_a,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_aq);

-- Location: LCCOMB_X11_Y16_N26
ix26_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_a = (reg_q_6_aq & (nx37857z1 $ (GND))) # (!reg_q_6_aq & (!nx37857z1 & VCC))
-- nx53431z1 = CARRY((reg_q_6_aq & !nx37857z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_aq,
	datad => VCC,
	cin => nx37857z1,
	combout => inc_d_6_a,
	cout => nx53431z1);

-- Location: FF_X11_Y16_N27
reg_q_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_a,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_aq);

-- Location: IOIBUF_X1_Y10_N15
sw_a7_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => sw_a7_a_ainput_o);

-- Location: LCCOMB_X15_Y13_N26
yes_uart_u_uart_reg_Rx_Reg_7_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- yes_uart_u_uart_reg_Rx_Reg_7_a0_combout = !yes_uart_u_uart_reg_Rx_r_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => yes_uart_u_uart_reg_Rx_r_aq,
	combout => yes_uart_u_uart_reg_Rx_Reg_7_a0_combout);

-- Location: LCCOMB_X15_Y14_N20
ix2098z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2098z1 = (yes_uart_u_uart_reg_RxFSM_3_aq & yes_uart_u_uart_reg_TopRx_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_RxFSM_3_aq,
	datac => yes_uart_u_uart_reg_TopRx_aq,
	combout => nx2098z1);

-- Location: FF_X15_Y13_N27
yes_uart_u_uart_reg_Rx_Reg_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => yes_uart_u_uart_reg_Rx_Reg_7_a0_combout,
	clrn => reset_n_ainput_o,
	ena => nx2098z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Rx_Reg_7_aq);

-- Location: FF_X15_Y13_N17
yes_uart_u_uart_reg_Rx_Reg_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Rx_Reg_7_aq,
	clrn => reset_n_ainput_o,
	sload => VCC,
	ena => nx2098z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Rx_Reg_6_aq);

-- Location: FF_X18_Y13_N25
yes_uart_u_uart_reg_Dout_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Rx_Reg_6_aq,
	clrn => reset_n_ainput_o,
	sload => VCC,
	ena => nx46463z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Dout_6_aq);

-- Location: LCCOMB_X14_Y13_N8
ix9543z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- byte_reg_2n1ss1(6) = (sw_a7_a_ainput_o & (reg_q_6_aq)) # (!sw_a7_a_ainput_o & ((yes_uart_u_uart_reg_Dout_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_aq,
	datac => sw_a7_a_ainput_o,
	datad => yes_uart_u_uart_reg_Dout_6_aq,
	combout => byte_reg_2n1ss1(6));

-- Location: FF_X14_Y13_N9
reg_byte_reg_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => byte_reg_2n1ss1(6),
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_byte_reg_6_aq);

-- Location: LCCOMB_X14_Y13_N26
ix51544z7111 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z10 = (sw_a1_a_ainput_o & (reg_byte_reg_6_aq)) # (!sw_a1_a_ainput_o & ((reg_q_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_a1_a_ainput_o,
	datab => reg_byte_reg_6_aq,
	datac => reg_q_6_aq,
	combout => nx51544z10);

-- Location: IOIBUF_X0_Y5_N1
sw_a0_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => sw_a0_a_ainput_o);

-- Location: LCCOMB_X14_Y14_N8
ix3017_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_3036 = reg_q_0_dup_37_aq $ (VCC)
-- nx18768z1 = CARRY(reg_q_0_dup_37_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_37_aq,
	datad => VCC,
	combout => inc_d_0_dup_3036,
	cout => nx18768z1);

-- Location: LCCOMB_X18_Y13_N8
ix53092z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx53092z2 = (u_lab3_reg_state_3_aq & (!yes_uart_u_uart_reg_RxRDYi_aq)) # (!u_lab3_reg_state_3_aq & ((u_lab3_reg_state_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_3_aq,
	datab => yes_uart_u_uart_reg_RxRDYi_aq,
	datac => u_lab3_reg_state_0_aq,
	combout => nx53092z2);

-- Location: LCCOMB_X23_Y15_N0
u_lab3_modgen_counter_column_aix2_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_0_a = u_lab3_modgen_counter_column_areg_q_0_aq $ (VCC)
-- u_lab3_modgen_counter_column_anx27063z2 = CARRY(u_lab3_modgen_counter_column_areg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datad => VCC,
	combout => u_lab3_modgen_counter_column_ainc_d_0_a,
	cout => u_lab3_modgen_counter_column_anx27063z2);

-- Location: LCCOMB_X18_Y16_N22
ix48923z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx48923z5 = (!yes_uart_u_uart_reg_RxRDYi_aq & !u_lab3_reg_state_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_reg_state_0_aq,
	combout => nx48923z5);

-- Location: LCCOMB_X14_Y17_N0
u_lab3_modgen_counter_row_aix51271z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_0_dup_365 = (u_lab3_reg_state_1_aq) # (!u_lab3_modgen_counter_row_areg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_lab3_modgen_counter_row_areg_q_0_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => u_lab3_modgen_counter_row_asload_mux_0_dup_365);

-- Location: LCCOMB_X18_Y16_N6
ix41843z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41843z2 = (u_lab3_reg_state_3_aq) # (u_lab3_reg_state_4_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_lab3_reg_state_3_aq,
	datad => u_lab3_reg_state_4_aq,
	combout => nx41843z2);

-- Location: LCCOMB_X17_Y18_N0
ix41843z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41843z7 = (!u_lab3_modgen_counter_row_areg_q_27_aq & (!u_lab3_modgen_counter_row_areg_q_24_aq & (!u_lab3_modgen_counter_row_areg_q_25_aq & !u_lab3_modgen_counter_row_areg_q_26_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_27_aq,
	datab => u_lab3_modgen_counter_row_areg_q_24_aq,
	datac => u_lab3_modgen_counter_row_areg_q_25_aq,
	datad => u_lab3_modgen_counter_row_areg_q_26_aq,
	combout => nx41843z7);

-- Location: LCCOMB_X17_Y21_N16
ix41843z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41843z12 = (!u_lab3_modgen_counter_row_areg_q_10_aq & (!u_lab3_modgen_counter_row_areg_q_11_aq & (!u_lab3_modgen_counter_row_areg_q_8_aq & !u_lab3_modgen_counter_row_areg_q_9_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_10_aq,
	datab => u_lab3_modgen_counter_row_areg_q_11_aq,
	datac => u_lab3_modgen_counter_row_areg_q_8_aq,
	datad => u_lab3_modgen_counter_row_areg_q_9_aq,
	combout => nx41843z12);

-- Location: LCCOMB_X17_Y18_N24
ix41843z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41843z10 = (!u_lab3_modgen_counter_row_areg_q_17_aq & (!u_lab3_modgen_counter_row_areg_q_16_aq & (!u_lab3_modgen_counter_row_areg_q_19_aq & !u_lab3_modgen_counter_row_areg_q_18_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_17_aq,
	datab => u_lab3_modgen_counter_row_areg_q_16_aq,
	datac => u_lab3_modgen_counter_row_areg_q_19_aq,
	datad => u_lab3_modgen_counter_row_areg_q_18_aq,
	combout => nx41843z10);

-- Location: LCCOMB_X17_Y16_N0
ix41843z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41843z11 = (!u_lab3_modgen_counter_row_areg_q_14_aq & (!u_lab3_modgen_counter_row_areg_q_13_aq & (!u_lab3_modgen_counter_row_areg_q_15_aq & !u_lab3_modgen_counter_row_areg_q_12_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_14_aq,
	datab => u_lab3_modgen_counter_row_areg_q_13_aq,
	datac => u_lab3_modgen_counter_row_areg_q_15_aq,
	datad => u_lab3_modgen_counter_row_areg_q_12_aq,
	combout => nx41843z11);

-- Location: LCCOMB_X16_Y20_N0
ix41843z7107 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41843z13 = (!u_lab3_modgen_counter_row_areg_q_7_aq & (!u_lab3_modgen_counter_row_areg_q_5_aq & (!u_lab3_modgen_counter_row_areg_q_4_aq & !u_lab3_modgen_counter_row_areg_q_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_7_aq,
	datab => u_lab3_modgen_counter_row_areg_q_5_aq,
	datac => u_lab3_modgen_counter_row_areg_q_4_aq,
	datad => u_lab3_modgen_counter_row_areg_q_6_aq,
	combout => nx41843z13);

-- Location: LCCOMB_X17_Y18_N26
ix41843z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41843z9 = (nx41843z12 & (nx41843z10 & (nx41843z11 & nx41843z13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41843z12,
	datab => nx41843z10,
	datac => nx41843z11,
	datad => nx41843z13,
	combout => nx41843z9);

-- Location: LCCOMB_X18_Y19_N8
ix41843z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41843z8 = (!u_lab3_modgen_counter_row_areg_q_22_aq & (!u_lab3_modgen_counter_row_areg_q_21_aq & (!u_lab3_modgen_counter_row_areg_q_23_aq & !u_lab3_modgen_counter_row_areg_q_20_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_22_aq,
	datab => u_lab3_modgen_counter_row_areg_q_21_aq,
	datac => u_lab3_modgen_counter_row_areg_q_23_aq,
	datad => u_lab3_modgen_counter_row_areg_q_20_aq,
	combout => nx41843z8);

-- Location: LCCOMB_X17_Y18_N2
ix41843z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41843z5 = (nx41843z6 & (nx41843z7 & (nx41843z9 & nx41843z8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41843z6,
	datab => nx41843z7,
	datac => nx41843z9,
	datad => nx41843z8,
	combout => nx41843z5);

-- Location: LCCOMB_X23_Y18_N16
ix41843z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41843z3 = (u_lab3_reg_state_1_aq & (((!nx41843z5) # (!yes_uart_u_uart_reg_RxRDYi_aq)) # (!nx41843z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41843z4,
	datab => yes_uart_u_uart_reg_RxRDYi_aq,
	datac => nx41843z5,
	datad => u_lab3_reg_state_1_aq,
	combout => nx41843z3);

-- Location: LCCOMB_X18_Y16_N0
ix41843z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41843z1 = (!nx41843z2 & (!nx41843z3 & ((nx63348z3) # (!u_lab3_reg_state_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41843z2,
	datab => nx63348z3,
	datac => u_lab3_reg_state_1_aq,
	datad => nx41843z3,
	combout => nx41843z1);

-- Location: FF_X14_Y17_N1
u_lab3_modgen_counter_row_areg_q_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_0_dup_365,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_0_aq);

-- Location: LCCOMB_X17_Y20_N0
u_lab3_modgen_counter_row_aix2_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_anx27063z2 = CARRY(u_lab3_modgen_counter_row_areg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_0_aq,
	datad => VCC,
	cout => u_lab3_modgen_counter_row_anx27063z2);

-- Location: LCCOMB_X17_Y20_N2
u_lab3_modgen_counter_row_aix6_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_1_dup_366 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_1_aq $ (u_lab3_modgen_counter_row_anx27063z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx39256z2 = CARRY((!u_lab3_modgen_counter_row_anx27063z2) # (!u_lab3_modgen_counter_row_areg_q_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_1_aq,
	datab => u_lab3_reg_state_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx27063z2,
	combout => u_lab3_modgen_counter_row_asload_mux_1_dup_366,
	cout => u_lab3_modgen_counter_row_anx39256z2);

-- Location: FF_X17_Y20_N3
u_lab3_modgen_counter_row_areg_q_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_1_dup_366,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_1_aq);

-- Location: LCCOMB_X17_Y20_N4
u_lab3_modgen_counter_row_aix10_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_2_dup_367 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_2_aq $ (!u_lab3_modgen_counter_row_anx39256z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx57428z2 = CARRY((u_lab3_modgen_counter_row_areg_q_2_aq & !u_lab3_modgen_counter_row_anx39256z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_2_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx39256z2,
	combout => u_lab3_modgen_counter_row_asload_mux_2_dup_367,
	cout => u_lab3_modgen_counter_row_anx57428z2);

-- Location: LCCOMB_X17_Y20_N6
u_lab3_modgen_counter_row_aix14_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_3_dup_368 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_3_aq $ (u_lab3_modgen_counter_row_anx57428z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx23040z2 = CARRY((!u_lab3_modgen_counter_row_anx57428z2) # (!u_lab3_modgen_counter_row_areg_q_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_3_aq,
	datab => u_lab3_reg_state_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx57428z2,
	combout => u_lab3_modgen_counter_row_asload_mux_3_dup_368,
	cout => u_lab3_modgen_counter_row_anx23040z2);

-- Location: FF_X17_Y20_N7
u_lab3_modgen_counter_row_areg_q_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_3_dup_368,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_3_aq);

-- Location: LCCOMB_X17_Y20_N8
u_lab3_modgen_counter_row_aix18_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_4_dup_369 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_4_aq $ (!u_lab3_modgen_counter_row_anx23040z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx58827z2 = CARRY((u_lab3_modgen_counter_row_areg_q_4_aq & !u_lab3_modgen_counter_row_anx23040z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_4_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx23040z2,
	combout => u_lab3_modgen_counter_row_asload_mux_4_dup_369,
	cout => u_lab3_modgen_counter_row_anx58827z2);

-- Location: FF_X17_Y20_N9
u_lab3_modgen_counter_row_areg_q_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_4_dup_369,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_4_aq);

-- Location: LCCOMB_X17_Y20_N10
u_lab3_modgen_counter_row_aix22_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_5_dup_370 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_5_aq $ (u_lab3_modgen_counter_row_anx58827z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx37857z2 = CARRY((!u_lab3_modgen_counter_row_anx58827z2) # (!u_lab3_modgen_counter_row_areg_q_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_5_aq,
	datab => u_lab3_reg_state_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx58827z2,
	combout => u_lab3_modgen_counter_row_asload_mux_5_dup_370,
	cout => u_lab3_modgen_counter_row_anx37857z2);

-- Location: FF_X17_Y20_N11
u_lab3_modgen_counter_row_areg_q_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_5_dup_370,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_5_aq);

-- Location: LCCOMB_X17_Y20_N12
u_lab3_modgen_counter_row_aix26_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_6_dup_371 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_6_aq $ (!u_lab3_modgen_counter_row_anx37857z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx21526z2 = CARRY((u_lab3_modgen_counter_row_areg_q_6_aq & !u_lab3_modgen_counter_row_anx37857z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_6_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx37857z2,
	combout => u_lab3_modgen_counter_row_asload_mux_6_dup_371,
	cout => u_lab3_modgen_counter_row_anx21526z2);

-- Location: FF_X17_Y20_N13
u_lab3_modgen_counter_row_areg_q_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_6_dup_371,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_6_aq);

-- Location: LCCOMB_X17_Y20_N14
u_lab3_modgen_counter_row_aix30_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_7_dup_372 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_7_aq $ (u_lab3_modgen_counter_row_anx21526z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx12862z2 = CARRY((!u_lab3_modgen_counter_row_anx21526z2) # (!u_lab3_modgen_counter_row_areg_q_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_7_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx21526z2,
	combout => u_lab3_modgen_counter_row_asload_mux_7_dup_372,
	cout => u_lab3_modgen_counter_row_anx12862z2);

-- Location: FF_X17_Y20_N15
u_lab3_modgen_counter_row_areg_q_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_7_dup_372,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_7_aq);

-- Location: LCCOMB_X17_Y20_N16
u_lab3_modgen_counter_row_aix34_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_8_dup_373 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_8_aq $ (!u_lab3_modgen_counter_row_anx12862z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx47250z2 = CARRY((u_lab3_modgen_counter_row_areg_q_8_aq & !u_lab3_modgen_counter_row_anx12862z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_8_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx12862z2,
	combout => u_lab3_modgen_counter_row_asload_mux_8_dup_373,
	cout => u_lab3_modgen_counter_row_anx47250z2);

-- Location: FF_X17_Y20_N17
u_lab3_modgen_counter_row_areg_q_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_8_dup_373,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_8_aq);

-- Location: LCCOMB_X17_Y20_N18
u_lab3_modgen_counter_row_aix38_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_9_dup_374 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_9_aq $ (u_lab3_modgen_counter_row_anx47250z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx1955z2 = CARRY((!u_lab3_modgen_counter_row_anx47250z2) # (!u_lab3_modgen_counter_row_areg_q_9_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_9_aq,
	datab => u_lab3_reg_state_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx47250z2,
	combout => u_lab3_modgen_counter_row_asload_mux_9_dup_374,
	cout => u_lab3_modgen_counter_row_anx1955z2);

-- Location: FF_X17_Y20_N19
u_lab3_modgen_counter_row_areg_q_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_9_dup_374,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_9_aq);

-- Location: LCCOMB_X17_Y20_N20
u_lab3_modgen_counter_row_aix42_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_10_dup_375 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_10_aq $ (!u_lab3_modgen_counter_row_anx1955z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx32433z2 = CARRY((u_lab3_modgen_counter_row_areg_q_10_aq & !u_lab3_modgen_counter_row_anx1955z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_10_aq,
	datab => u_lab3_reg_state_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx1955z2,
	combout => u_lab3_modgen_counter_row_asload_mux_10_dup_375,
	cout => u_lab3_modgen_counter_row_anx32433z2);

-- Location: FF_X17_Y20_N21
u_lab3_modgen_counter_row_areg_q_10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_10_dup_375,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_10_aq);

-- Location: LCCOMB_X17_Y20_N22
u_lab3_modgen_counter_row_aix46_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_11_dup_376 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_11_aq $ (u_lab3_modgen_counter_row_anx32433z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx48764z2 = CARRY((!u_lab3_modgen_counter_row_anx32433z2) # (!u_lab3_modgen_counter_row_areg_q_11_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_11_aq,
	datab => u_lab3_reg_state_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx32433z2,
	combout => u_lab3_modgen_counter_row_asload_mux_11_dup_376,
	cout => u_lab3_modgen_counter_row_anx48764z2);

-- Location: FF_X17_Y20_N23
u_lab3_modgen_counter_row_areg_q_11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_11_dup_376,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_11_aq);

-- Location: LCCOMB_X17_Y20_N24
u_lab3_modgen_counter_row_aix50_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_12_dup_377 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_12_aq $ (!u_lab3_modgen_counter_row_anx48764z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx47920z2 = CARRY((u_lab3_modgen_counter_row_areg_q_12_aq & !u_lab3_modgen_counter_row_anx48764z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_12_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx48764z2,
	combout => u_lab3_modgen_counter_row_asload_mux_12_dup_377,
	cout => u_lab3_modgen_counter_row_anx47920z2);

-- Location: FF_X17_Y20_N25
u_lab3_modgen_counter_row_areg_q_12_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_12_dup_377,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_12_aq);

-- Location: LCCOMB_X17_Y20_N26
u_lab3_modgen_counter_row_aix54_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_13_dup_378 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_13_aq $ (u_lab3_modgen_counter_row_anx47920z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx13532z2 = CARRY((!u_lab3_modgen_counter_row_anx47920z2) # (!u_lab3_modgen_counter_row_areg_q_13_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_13_aq,
	datab => u_lab3_reg_state_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx47920z2,
	combout => u_lab3_modgen_counter_row_asload_mux_13_dup_378,
	cout => u_lab3_modgen_counter_row_anx13532z2);

-- Location: FF_X17_Y20_N27
u_lab3_modgen_counter_row_areg_q_13_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_13_dup_378,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_13_aq);

-- Location: LCCOMB_X17_Y20_N28
u_lab3_modgen_counter_row_aix58_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_14_dup_379 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_14_aq $ (!u_lab3_modgen_counter_row_anx13532z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx2799z2 = CARRY((u_lab3_modgen_counter_row_areg_q_14_aq & !u_lab3_modgen_counter_row_anx13532z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_14_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx13532z2,
	combout => u_lab3_modgen_counter_row_asload_mux_14_dup_379,
	cout => u_lab3_modgen_counter_row_anx2799z2);

-- Location: FF_X17_Y20_N29
u_lab3_modgen_counter_row_areg_q_14_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_14_dup_379,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_14_aq);

-- Location: LCCOMB_X17_Y20_N30
u_lab3_modgen_counter_row_aix62_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_15_dup_380 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_15_aq $ (u_lab3_modgen_counter_row_anx2799z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx28349z2 = CARRY((!u_lab3_modgen_counter_row_anx2799z2) # (!u_lab3_modgen_counter_row_areg_q_15_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_15_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx2799z2,
	combout => u_lab3_modgen_counter_row_asload_mux_15_dup_380,
	cout => u_lab3_modgen_counter_row_anx28349z2);

-- Location: FF_X17_Y20_N31
u_lab3_modgen_counter_row_areg_q_15_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_15_dup_380,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_15_aq);

-- Location: LCCOMB_X17_Y19_N0
u_lab3_modgen_counter_row_aix66_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_16_dup_381 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_16_aq $ (!u_lab3_modgen_counter_row_anx28349z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx12018z2 = CARRY((u_lab3_modgen_counter_row_areg_q_16_aq & !u_lab3_modgen_counter_row_anx28349z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_16_aq,
	datab => u_lab3_reg_state_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx28349z2,
	combout => u_lab3_modgen_counter_row_asload_mux_16_dup_381,
	cout => u_lab3_modgen_counter_row_anx12018z2);

-- Location: FF_X17_Y19_N1
u_lab3_modgen_counter_row_areg_q_16_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_16_dup_381,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_16_aq);

-- Location: LCCOMB_X17_Y19_N2
u_lab3_modgen_counter_row_aix70_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_17_dup_382 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_17_aq $ (u_lab3_modgen_counter_row_anx12018z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx22370z2 = CARRY((!u_lab3_modgen_counter_row_anx12018z2) # (!u_lab3_modgen_counter_row_areg_q_17_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_17_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx12018z2,
	combout => u_lab3_modgen_counter_row_asload_mux_17_dup_382,
	cout => u_lab3_modgen_counter_row_anx22370z2);

-- Location: FF_X17_Y19_N3
u_lab3_modgen_counter_row_areg_q_17_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_17_dup_382,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_17_aq);

-- Location: LCCOMB_X17_Y19_N4
u_lab3_modgen_counter_row_aix74_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_18_dup_383 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_18_aq $ (!u_lab3_modgen_counter_row_anx22370z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx56758z2 = CARRY((u_lab3_modgen_counter_row_areg_q_18_aq & !u_lab3_modgen_counter_row_anx22370z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_18_aq,
	datab => u_lab3_reg_state_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx22370z2,
	combout => u_lab3_modgen_counter_row_asload_mux_18_dup_383,
	cout => u_lab3_modgen_counter_row_anx56758z2);

-- Location: FF_X17_Y19_N5
u_lab3_modgen_counter_row_areg_q_18_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_18_dup_383,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_18_aq);

-- Location: LCCOMB_X17_Y19_N6
u_lab3_modgen_counter_row_aix78_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_19_dup_384 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_19_aq $ (u_lab3_modgen_counter_row_anx56758z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx57983z2 = CARRY((!u_lab3_modgen_counter_row_anx56758z2) # (!u_lab3_modgen_counter_row_areg_q_19_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_19_aq,
	datab => u_lab3_reg_state_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx56758z2,
	combout => u_lab3_modgen_counter_row_asload_mux_19_dup_384,
	cout => u_lab3_modgen_counter_row_anx57983z2);

-- Location: FF_X17_Y19_N7
u_lab3_modgen_counter_row_areg_q_19_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_19_dup_384,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_19_aq);

-- Location: LCCOMB_X17_Y19_N8
u_lab3_modgen_counter_row_aix82_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_20_dup_385 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_20_aq $ (!u_lab3_modgen_counter_row_anx57983z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx41941z2 = CARRY((u_lab3_modgen_counter_row_areg_q_20_aq & !u_lab3_modgen_counter_row_anx57983z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_20_aq,
	datab => u_lab3_reg_state_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx57983z2,
	combout => u_lab3_modgen_counter_row_asload_mux_20_dup_385,
	cout => u_lab3_modgen_counter_row_anx41941z2);

-- Location: FF_X17_Y19_N9
u_lab3_modgen_counter_row_areg_q_20_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_20_dup_385,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_20_aq);

-- Location: LCCOMB_X17_Y19_N10
u_lab3_modgen_counter_row_aix86_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_21_dup_386 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_21_aq $ (u_lab3_modgen_counter_row_anx41941z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx58272z2 = CARRY((!u_lab3_modgen_counter_row_anx41941z2) # (!u_lab3_modgen_counter_row_areg_q_21_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_21_aq,
	datab => u_lab3_reg_state_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx41941z2,
	combout => u_lab3_modgen_counter_row_asload_mux_21_dup_386,
	cout => u_lab3_modgen_counter_row_anx58272z2);

-- Location: FF_X17_Y19_N11
u_lab3_modgen_counter_row_areg_q_21_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_21_dup_386,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_21_aq);

-- Location: LCCOMB_X17_Y19_N12
u_lab3_modgen_counter_row_aix90_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_22_dup_387 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_22_aq $ (!u_lab3_modgen_counter_row_anx58272z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx38412z2 = CARRY((u_lab3_modgen_counter_row_areg_q_22_aq & !u_lab3_modgen_counter_row_anx58272z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_22_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx58272z2,
	combout => u_lab3_modgen_counter_row_asload_mux_22_dup_387,
	cout => u_lab3_modgen_counter_row_anx38412z2);

-- Location: FF_X17_Y19_N13
u_lab3_modgen_counter_row_areg_q_22_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_22_dup_387,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_22_aq);

-- Location: LCCOMB_X17_Y19_N14
u_lab3_modgen_counter_row_aix94_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_23_dup_388 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_23_aq $ (u_lab3_modgen_counter_row_anx38412z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx61512z2 = CARRY((!u_lab3_modgen_counter_row_anx38412z2) # (!u_lab3_modgen_counter_row_areg_q_23_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_23_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx38412z2,
	combout => u_lab3_modgen_counter_row_asload_mux_23_dup_388,
	cout => u_lab3_modgen_counter_row_anx61512z2);

-- Location: FF_X17_Y19_N15
u_lab3_modgen_counter_row_areg_q_23_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_23_dup_388,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_23_aq);

-- Location: LCCOMB_X17_Y19_N16
u_lab3_modgen_counter_row_aix98_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_24_dup_389 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_24_aq $ (!u_lab3_modgen_counter_row_anx61512z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx36406z2 = CARRY((u_lab3_modgen_counter_row_areg_q_24_aq & !u_lab3_modgen_counter_row_anx61512z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_24_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx61512z2,
	combout => u_lab3_modgen_counter_row_asload_mux_24_dup_389,
	cout => u_lab3_modgen_counter_row_anx36406z2);

-- Location: FF_X17_Y19_N17
u_lab3_modgen_counter_row_areg_q_24_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_24_dup_389,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_24_aq);

-- Location: LCCOMB_X17_Y19_N18
u_lab3_modgen_counter_row_aix133_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_25_dup_390 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_25_aq $ (u_lab3_modgen_counter_row_anx36406z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx63518z2 = CARRY((!u_lab3_modgen_counter_row_anx36406z2) # (!u_lab3_modgen_counter_row_areg_q_25_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_25_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx36406z2,
	combout => u_lab3_modgen_counter_row_asload_mux_25_dup_390,
	cout => u_lab3_modgen_counter_row_anx63518z2);

-- Location: FF_X17_Y19_N19
u_lab3_modgen_counter_row_areg_q_25_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_25_dup_390,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_25_aq);

-- Location: LCCOMB_X17_Y19_N20
u_lab3_modgen_counter_row_aix137_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_26_dup_391 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_26_aq $ (!u_lab3_modgen_counter_row_anx63518z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx14313z2 = CARRY((u_lab3_modgen_counter_row_areg_q_26_aq & !u_lab3_modgen_counter_row_anx63518z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_26_aq,
	datab => u_lab3_reg_state_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx63518z2,
	combout => u_lab3_modgen_counter_row_asload_mux_26_dup_391,
	cout => u_lab3_modgen_counter_row_anx14313z2);

-- Location: FF_X17_Y19_N21
u_lab3_modgen_counter_row_areg_q_26_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_26_dup_391,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_26_aq);

-- Location: LCCOMB_X17_Y19_N22
u_lab3_modgen_counter_row_aix141_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_27_dup_392 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_27_aq $ (u_lab3_modgen_counter_row_anx14313z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx16835z2 = CARRY((!u_lab3_modgen_counter_row_anx14313z2) # (!u_lab3_modgen_counter_row_areg_q_27_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_27_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx14313z2,
	combout => u_lab3_modgen_counter_row_asload_mux_27_dup_392,
	cout => u_lab3_modgen_counter_row_anx16835z2);

-- Location: FF_X17_Y19_N23
u_lab3_modgen_counter_row_areg_q_27_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_27_dup_392,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_27_aq);

-- Location: LCCOMB_X17_Y19_N24
u_lab3_modgen_counter_row_aix145_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_28_dup_393 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_28_aq $ (!u_lab3_modgen_counter_row_anx16835z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx17553z2 = CARRY((u_lab3_modgen_counter_row_areg_q_28_aq & !u_lab3_modgen_counter_row_anx16835z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_28_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx16835z2,
	combout => u_lab3_modgen_counter_row_asload_mux_28_dup_393,
	cout => u_lab3_modgen_counter_row_anx17553z2);

-- Location: FF_X17_Y19_N25
u_lab3_modgen_counter_row_areg_q_28_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_28_dup_393,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_28_aq);

-- Location: LCCOMB_X17_Y19_N26
u_lab3_modgen_counter_row_aix149_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_29_dup_394 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_29_aq $ (u_lab3_modgen_counter_row_anx17553z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx33884z2 = CARRY((!u_lab3_modgen_counter_row_anx17553z2) # (!u_lab3_modgen_counter_row_areg_q_29_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_modgen_counter_row_areg_q_29_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx17553z2,
	combout => u_lab3_modgen_counter_row_asload_mux_29_dup_394,
	cout => u_lab3_modgen_counter_row_anx33884z2);

-- Location: FF_X17_Y19_N27
u_lab3_modgen_counter_row_areg_q_29_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_29_dup_394,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_29_aq);

-- Location: LCCOMB_X17_Y19_N28
u_lab3_modgen_counter_row_aix153_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_30_dup_395 = ((!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_30_aq $ (!u_lab3_modgen_counter_row_anx33884z2)))) # (GND)
-- u_lab3_modgen_counter_row_anx18310z2 = CARRY((u_lab3_modgen_counter_row_areg_q_30_aq & !u_lab3_modgen_counter_row_anx33884z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_30_aq,
	datab => u_lab3_reg_state_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_row_anx33884z2,
	combout => u_lab3_modgen_counter_row_asload_mux_30_dup_395,
	cout => u_lab3_modgen_counter_row_anx18310z2);

-- Location: FF_X17_Y19_N29
u_lab3_modgen_counter_row_areg_q_30_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_30_dup_395,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_30_aq);

-- Location: LCCOMB_X17_Y19_N30
u_lab3_modgen_counter_row_aix155_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_row_asload_mux_31_dup_396 = (!u_lab3_reg_state_1_aq & (u_lab3_modgen_counter_row_areg_q_31_aq $ (u_lab3_modgen_counter_row_anx18310z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_31_aq,
	datad => u_lab3_reg_state_1_aq,
	cin => u_lab3_modgen_counter_row_anx18310z2,
	combout => u_lab3_modgen_counter_row_asload_mux_31_dup_396);

-- Location: FF_X17_Y19_N31
u_lab3_modgen_counter_row_areg_q_31_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_31_dup_396,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_31_aq);

-- Location: LCCOMB_X17_Y18_N10
ix41843z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41843z6 = (!u_lab3_modgen_counter_row_areg_q_30_aq & (!u_lab3_modgen_counter_row_areg_q_31_aq & (!u_lab3_modgen_counter_row_areg_q_28_aq & !u_lab3_modgen_counter_row_areg_q_29_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_30_aq,
	datab => u_lab3_modgen_counter_row_areg_q_31_aq,
	datac => u_lab3_modgen_counter_row_areg_q_28_aq,
	datad => u_lab3_modgen_counter_row_areg_q_29_aq,
	combout => nx41843z6);

-- Location: LCCOMB_X17_Y18_N4
ix60357z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60357z6 = (!u_lab3_modgen_counter_row_areg_q_25_aq & !u_lab3_modgen_counter_row_areg_q_24_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_25_aq,
	datac => u_lab3_modgen_counter_row_areg_q_24_aq,
	combout => nx60357z6);

-- Location: LCCOMB_X17_Y18_N14
ix60357z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60357z5 = (!u_lab3_modgen_counter_row_areg_q_26_aq & (nx41843z8 & (nx60357z6 & !u_lab3_modgen_counter_row_areg_q_27_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_26_aq,
	datab => nx41843z8,
	datac => nx60357z6,
	datad => u_lab3_modgen_counter_row_areg_q_27_aq,
	combout => nx60357z5);

-- Location: LCCOMB_X17_Y18_N22
ix60357z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60357z4 = (nx41843z6 & (nx60357z5 & (nx41843z9 & !u_lab3_modgen_counter_row_areg_q_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41843z6,
	datab => nx60357z5,
	datac => nx41843z9,
	datad => u_lab3_modgen_counter_row_areg_q_1_aq,
	combout => nx60357z4);

-- Location: LCCOMB_X18_Y16_N26
ix62976z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62976z3 = (u_lab3_reg_state_1_aq & (((nx41843z5 & nx41843z4)) # (!yes_uart_u_uart_reg_RxRDYi_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41843z5,
	datab => nx41843z4,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx62976z3);

-- Location: LCCOMB_X17_Y18_N6
ix62976z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62976z4 = (u_lab3_reg_state_1_aq) # (!u_lab3_reg_state_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_0_aq,
	datac => u_lab3_reg_state_1_aq,
	combout => nx62976z4);

-- Location: LCCOMB_X18_Y16_N12
ix62976z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62976z2 = (u_lab3_reg_state_1_aq & nx63348z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datad => nx63348z3,
	combout => nx62976z2);

-- Location: LCCOMB_X18_Y16_N4
ix62976z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62976z1 = (nx62976z3 & (((u_lab3_reg_flag_aq)))) # (!nx62976z3 & ((nx62976z4 & ((nx62976z2))) # (!nx62976z4 & (u_lab3_reg_flag_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx62976z3,
	datab => nx62976z4,
	datac => u_lab3_reg_flag_aq,
	datad => nx62976z2,
	combout => nx62976z1);

-- Location: FF_X18_Y16_N5
u_lab3_reg_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx62976z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_flag_aq);

-- Location: LCCOMB_X17_Y18_N28
ix60357z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60357z3 = (!u_lab3_modgen_counter_row_areg_q_3_aq & (!u_lab3_modgen_counter_row_areg_q_2_aq & u_lab3_reg_flag_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_row_areg_q_3_aq,
	datac => u_lab3_modgen_counter_row_areg_q_2_aq,
	datad => u_lab3_reg_flag_aq,
	combout => nx60357z3);

-- Location: LCCOMB_X17_Y18_N8
ix60357z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60357z2 = (nx60357z4 & (nx60357z3 & (nx63348z3 & u_lab3_modgen_counter_row_areg_q_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60357z4,
	datab => nx60357z3,
	datac => nx63348z3,
	datad => u_lab3_modgen_counter_row_areg_q_0_aq,
	combout => nx60357z2);

-- Location: LCCOMB_X18_Y16_N24
ix60357z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60357z7 = (yes_uart_u_uart_reg_RxRDYi_aq & reset_n_ainput_o)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_RxRDYi_aq,
	datac => reset_n_ainput_o,
	combout => nx60357z7);

-- Location: LCCOMB_X18_Y16_N10
ix60357z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60357z1 = (nx60357z2 & (nx60357z7 & ((!u_lab3_reg_state_0_aq)))) # (!nx60357z2 & ((u_lab3_reg_state_1_aq) # ((nx60357z7 & !u_lab3_reg_state_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx60357z2,
	datab => nx60357z7,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_state_0_aq,
	combout => nx60357z1);

-- Location: FF_X18_Y16_N11
u_lab3_reg_state_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx60357z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_state_1_aq);

-- Location: FF_X17_Y20_N5
u_lab3_modgen_counter_row_areg_q_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_row_asload_mux_2_dup_367,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx41843z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_row_areg_q_2_aq);

-- Location: LCCOMB_X17_Y18_N30
ix41843z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41843z4 = (!u_lab3_modgen_counter_row_areg_q_2_aq & (!u_lab3_modgen_counter_row_areg_q_3_aq & (!u_lab3_modgen_counter_row_areg_q_0_aq & !u_lab3_modgen_counter_row_areg_q_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_2_aq,
	datab => u_lab3_modgen_counter_row_areg_q_3_aq,
	datac => u_lab3_modgen_counter_row_areg_q_0_aq,
	datad => u_lab3_modgen_counter_row_areg_q_1_aq,
	combout => nx41843z4);

-- Location: LCCOMB_X16_Y18_N8
ix48923z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx48923z6 = (nx41843z4 & (yes_uart_u_uart_reg_RxRDYi_aq & nx41843z5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41843z4,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => nx41843z5,
	combout => nx48923z6);

-- Location: LCCOMB_X18_Y16_N8
ix48923z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx48923z4 = (nx48923z5) # ((u_lab3_reg_state_2_aq) # ((nx48923z6 & nx62976z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx48923z5,
	datab => u_lab3_reg_state_2_aq,
	datac => nx48923z6,
	datad => nx62976z2,
	combout => nx48923z4);

-- Location: LCCOMB_X18_Y16_N2
ix48923z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx48923z2 = (u_lab3_reg_state_4_aq) # ((u_lab3_reg_state_3_aq & ((nx63348z3) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_4_aq,
	datab => yes_uart_u_uart_reg_RxRDYi_aq,
	datac => u_lab3_reg_state_3_aq,
	datad => nx63348z3,
	combout => nx48923z2);

-- Location: LCCOMB_X24_Y14_N4
ix48923z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx48923z3 = ((nx63348z3) # ((nx41843z4 & nx41843z5))) # (!yes_uart_u_uart_reg_RxRDYi_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41843z4,
	datab => yes_uart_u_uart_reg_RxRDYi_aq,
	datac => nx41843z5,
	datad => nx63348z3,
	combout => nx48923z3);

-- Location: LCCOMB_X18_Y16_N20
ix48923z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx48923z1 = (nx48923z4) # ((!nx48923z2 & ((!nx48923z3) # (!nx41843z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41843z3,
	datab => nx48923z2,
	datac => nx48923z4,
	datad => nx48923z3,
	combout => nx48923z1);

-- Location: FF_X23_Y15_N1
u_lab3_modgen_counter_column_areg_q_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_0_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_0_aq);

-- Location: LCCOMB_X23_Y15_N2
u_lab3_modgen_counter_column_aix6_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_1_a = (u_lab3_modgen_counter_column_areg_q_1_aq & (!u_lab3_modgen_counter_column_anx27063z2)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_anx27063z2) # (GND)))
-- u_lab3_modgen_counter_column_anx39256z2 = CARRY((!u_lab3_modgen_counter_column_anx27063z2) # (!u_lab3_modgen_counter_column_areg_q_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx27063z2,
	combout => u_lab3_modgen_counter_column_ainc_d_1_a,
	cout => u_lab3_modgen_counter_column_anx39256z2);

-- Location: FF_X23_Y15_N3
u_lab3_modgen_counter_column_areg_q_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_1_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_1_aq);

-- Location: LCCOMB_X23_Y15_N4
u_lab3_modgen_counter_column_aix10_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_2_a = (u_lab3_modgen_counter_column_areg_q_2_aq & (u_lab3_modgen_counter_column_anx39256z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_2_aq & (!u_lab3_modgen_counter_column_anx39256z2 & VCC))
-- u_lab3_modgen_counter_column_anx57428z2 = CARRY((u_lab3_modgen_counter_column_areg_q_2_aq & !u_lab3_modgen_counter_column_anx39256z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx39256z2,
	combout => u_lab3_modgen_counter_column_ainc_d_2_a,
	cout => u_lab3_modgen_counter_column_anx57428z2);

-- Location: FF_X23_Y15_N5
u_lab3_modgen_counter_column_areg_q_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_2_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_2_aq);

-- Location: LCCOMB_X23_Y15_N6
u_lab3_modgen_counter_column_aix14_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_3_a = (u_lab3_modgen_counter_column_areg_q_3_aq & (!u_lab3_modgen_counter_column_anx57428z2)) # (!u_lab3_modgen_counter_column_areg_q_3_aq & ((u_lab3_modgen_counter_column_anx57428z2) # (GND)))
-- u_lab3_modgen_counter_column_anx23040z2 = CARRY((!u_lab3_modgen_counter_column_anx57428z2) # (!u_lab3_modgen_counter_column_areg_q_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx57428z2,
	combout => u_lab3_modgen_counter_column_ainc_d_3_a,
	cout => u_lab3_modgen_counter_column_anx23040z2);

-- Location: FF_X23_Y15_N7
u_lab3_modgen_counter_column_areg_q_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_3_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_3_aq);

-- Location: LCCOMB_X23_Y15_N8
u_lab3_modgen_counter_column_aix18_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_4_a = (u_lab3_modgen_counter_column_areg_q_4_aq & (u_lab3_modgen_counter_column_anx23040z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_4_aq & (!u_lab3_modgen_counter_column_anx23040z2 & VCC))
-- u_lab3_modgen_counter_column_anx58827z2 = CARRY((u_lab3_modgen_counter_column_areg_q_4_aq & !u_lab3_modgen_counter_column_anx23040z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_4_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx23040z2,
	combout => u_lab3_modgen_counter_column_ainc_d_4_a,
	cout => u_lab3_modgen_counter_column_anx58827z2);

-- Location: FF_X23_Y15_N9
u_lab3_modgen_counter_column_areg_q_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_4_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_4_aq);

-- Location: LCCOMB_X23_Y15_N10
u_lab3_modgen_counter_column_aix22_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_5_a = (u_lab3_modgen_counter_column_areg_q_5_aq & (!u_lab3_modgen_counter_column_anx58827z2)) # (!u_lab3_modgen_counter_column_areg_q_5_aq & ((u_lab3_modgen_counter_column_anx58827z2) # (GND)))
-- u_lab3_modgen_counter_column_anx37857z2 = CARRY((!u_lab3_modgen_counter_column_anx58827z2) # (!u_lab3_modgen_counter_column_areg_q_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_5_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx58827z2,
	combout => u_lab3_modgen_counter_column_ainc_d_5_a,
	cout => u_lab3_modgen_counter_column_anx37857z2);

-- Location: FF_X23_Y15_N11
u_lab3_modgen_counter_column_areg_q_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_5_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_5_aq);

-- Location: LCCOMB_X23_Y15_N12
u_lab3_modgen_counter_column_aix26_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_6_a = (u_lab3_modgen_counter_column_areg_q_6_aq & (u_lab3_modgen_counter_column_anx37857z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_6_aq & (!u_lab3_modgen_counter_column_anx37857z2 & VCC))
-- u_lab3_modgen_counter_column_anx21526z2 = CARRY((u_lab3_modgen_counter_column_areg_q_6_aq & !u_lab3_modgen_counter_column_anx37857z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_6_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx37857z2,
	combout => u_lab3_modgen_counter_column_ainc_d_6_a,
	cout => u_lab3_modgen_counter_column_anx21526z2);

-- Location: FF_X23_Y15_N13
u_lab3_modgen_counter_column_areg_q_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_6_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_6_aq);

-- Location: LCCOMB_X23_Y15_N14
u_lab3_modgen_counter_column_aix30_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_7_a = (u_lab3_modgen_counter_column_areg_q_7_aq & (!u_lab3_modgen_counter_column_anx21526z2)) # (!u_lab3_modgen_counter_column_areg_q_7_aq & ((u_lab3_modgen_counter_column_anx21526z2) # (GND)))
-- u_lab3_modgen_counter_column_anx12862z2 = CARRY((!u_lab3_modgen_counter_column_anx21526z2) # (!u_lab3_modgen_counter_column_areg_q_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_7_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx21526z2,
	combout => u_lab3_modgen_counter_column_ainc_d_7_a,
	cout => u_lab3_modgen_counter_column_anx12862z2);

-- Location: FF_X23_Y15_N15
u_lab3_modgen_counter_column_areg_q_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_7_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_7_aq);

-- Location: LCCOMB_X23_Y15_N16
u_lab3_modgen_counter_column_aix34_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_8_a = (u_lab3_modgen_counter_column_areg_q_8_aq & (u_lab3_modgen_counter_column_anx12862z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_8_aq & (!u_lab3_modgen_counter_column_anx12862z2 & VCC))
-- u_lab3_modgen_counter_column_anx47250z2 = CARRY((u_lab3_modgen_counter_column_areg_q_8_aq & !u_lab3_modgen_counter_column_anx12862z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_8_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx12862z2,
	combout => u_lab3_modgen_counter_column_ainc_d_8_a,
	cout => u_lab3_modgen_counter_column_anx47250z2);

-- Location: FF_X23_Y15_N17
u_lab3_modgen_counter_column_areg_q_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_8_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_8_aq);

-- Location: LCCOMB_X23_Y15_N18
u_lab3_modgen_counter_column_aix38_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_9_a = (u_lab3_modgen_counter_column_areg_q_9_aq & (!u_lab3_modgen_counter_column_anx47250z2)) # (!u_lab3_modgen_counter_column_areg_q_9_aq & ((u_lab3_modgen_counter_column_anx47250z2) # (GND)))
-- u_lab3_modgen_counter_column_anx1955z2 = CARRY((!u_lab3_modgen_counter_column_anx47250z2) # (!u_lab3_modgen_counter_column_areg_q_9_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_9_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx47250z2,
	combout => u_lab3_modgen_counter_column_ainc_d_9_a,
	cout => u_lab3_modgen_counter_column_anx1955z2);

-- Location: FF_X23_Y15_N19
u_lab3_modgen_counter_column_areg_q_9_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_9_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_9_aq);

-- Location: LCCOMB_X23_Y15_N20
u_lab3_modgen_counter_column_aix42_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_10_a = (u_lab3_modgen_counter_column_areg_q_10_aq & (u_lab3_modgen_counter_column_anx1955z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_10_aq & (!u_lab3_modgen_counter_column_anx1955z2 & VCC))
-- u_lab3_modgen_counter_column_anx32433z2 = CARRY((u_lab3_modgen_counter_column_areg_q_10_aq & !u_lab3_modgen_counter_column_anx1955z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_10_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx1955z2,
	combout => u_lab3_modgen_counter_column_ainc_d_10_a,
	cout => u_lab3_modgen_counter_column_anx32433z2);

-- Location: FF_X23_Y15_N21
u_lab3_modgen_counter_column_areg_q_10_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_10_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_10_aq);

-- Location: LCCOMB_X23_Y15_N22
u_lab3_modgen_counter_column_aix46_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_11_a = (u_lab3_modgen_counter_column_areg_q_11_aq & (!u_lab3_modgen_counter_column_anx32433z2)) # (!u_lab3_modgen_counter_column_areg_q_11_aq & ((u_lab3_modgen_counter_column_anx32433z2) # (GND)))
-- u_lab3_modgen_counter_column_anx48764z2 = CARRY((!u_lab3_modgen_counter_column_anx32433z2) # (!u_lab3_modgen_counter_column_areg_q_11_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_11_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx32433z2,
	combout => u_lab3_modgen_counter_column_ainc_d_11_a,
	cout => u_lab3_modgen_counter_column_anx48764z2);

-- Location: FF_X23_Y15_N23
u_lab3_modgen_counter_column_areg_q_11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_11_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_11_aq);

-- Location: LCCOMB_X23_Y15_N24
u_lab3_modgen_counter_column_aix50_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_12_a = (u_lab3_modgen_counter_column_areg_q_12_aq & (u_lab3_modgen_counter_column_anx48764z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_12_aq & (!u_lab3_modgen_counter_column_anx48764z2 & VCC))
-- u_lab3_modgen_counter_column_anx47920z2 = CARRY((u_lab3_modgen_counter_column_areg_q_12_aq & !u_lab3_modgen_counter_column_anx48764z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_12_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx48764z2,
	combout => u_lab3_modgen_counter_column_ainc_d_12_a,
	cout => u_lab3_modgen_counter_column_anx47920z2);

-- Location: FF_X23_Y15_N25
u_lab3_modgen_counter_column_areg_q_12_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_12_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_12_aq);

-- Location: LCCOMB_X23_Y15_N26
u_lab3_modgen_counter_column_aix54_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_13_a = (u_lab3_modgen_counter_column_areg_q_13_aq & (!u_lab3_modgen_counter_column_anx47920z2)) # (!u_lab3_modgen_counter_column_areg_q_13_aq & ((u_lab3_modgen_counter_column_anx47920z2) # (GND)))
-- u_lab3_modgen_counter_column_anx13532z2 = CARRY((!u_lab3_modgen_counter_column_anx47920z2) # (!u_lab3_modgen_counter_column_areg_q_13_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_13_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx47920z2,
	combout => u_lab3_modgen_counter_column_ainc_d_13_a,
	cout => u_lab3_modgen_counter_column_anx13532z2);

-- Location: FF_X23_Y15_N27
u_lab3_modgen_counter_column_areg_q_13_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_13_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_13_aq);

-- Location: LCCOMB_X23_Y15_N28
u_lab3_modgen_counter_column_aix58_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_14_a = (u_lab3_modgen_counter_column_areg_q_14_aq & (u_lab3_modgen_counter_column_anx13532z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_14_aq & (!u_lab3_modgen_counter_column_anx13532z2 & VCC))
-- u_lab3_modgen_counter_column_anx2799z2 = CARRY((u_lab3_modgen_counter_column_areg_q_14_aq & !u_lab3_modgen_counter_column_anx13532z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_14_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx13532z2,
	combout => u_lab3_modgen_counter_column_ainc_d_14_a,
	cout => u_lab3_modgen_counter_column_anx2799z2);

-- Location: FF_X23_Y15_N29
u_lab3_modgen_counter_column_areg_q_14_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_14_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_14_aq);

-- Location: LCCOMB_X23_Y15_N30
u_lab3_modgen_counter_column_aix62_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_15_a = (u_lab3_modgen_counter_column_areg_q_15_aq & (!u_lab3_modgen_counter_column_anx2799z2)) # (!u_lab3_modgen_counter_column_areg_q_15_aq & ((u_lab3_modgen_counter_column_anx2799z2) # (GND)))
-- u_lab3_modgen_counter_column_anx28349z2 = CARRY((!u_lab3_modgen_counter_column_anx2799z2) # (!u_lab3_modgen_counter_column_areg_q_15_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_15_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx2799z2,
	combout => u_lab3_modgen_counter_column_ainc_d_15_a,
	cout => u_lab3_modgen_counter_column_anx28349z2);

-- Location: FF_X23_Y15_N31
u_lab3_modgen_counter_column_areg_q_15_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_15_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_15_aq);

-- Location: LCCOMB_X23_Y14_N0
u_lab3_modgen_counter_column_aix66_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_16_a = (u_lab3_modgen_counter_column_areg_q_16_aq & (u_lab3_modgen_counter_column_anx28349z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_16_aq & (!u_lab3_modgen_counter_column_anx28349z2 & VCC))
-- u_lab3_modgen_counter_column_anx12018z2 = CARRY((u_lab3_modgen_counter_column_areg_q_16_aq & !u_lab3_modgen_counter_column_anx28349z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_16_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx28349z2,
	combout => u_lab3_modgen_counter_column_ainc_d_16_a,
	cout => u_lab3_modgen_counter_column_anx12018z2);

-- Location: FF_X23_Y14_N1
u_lab3_modgen_counter_column_areg_q_16_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_16_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_16_aq);

-- Location: LCCOMB_X23_Y14_N2
u_lab3_modgen_counter_column_aix70_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_17_a = (u_lab3_modgen_counter_column_areg_q_17_aq & (!u_lab3_modgen_counter_column_anx12018z2)) # (!u_lab3_modgen_counter_column_areg_q_17_aq & ((u_lab3_modgen_counter_column_anx12018z2) # (GND)))
-- u_lab3_modgen_counter_column_anx22370z2 = CARRY((!u_lab3_modgen_counter_column_anx12018z2) # (!u_lab3_modgen_counter_column_areg_q_17_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_17_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx12018z2,
	combout => u_lab3_modgen_counter_column_ainc_d_17_a,
	cout => u_lab3_modgen_counter_column_anx22370z2);

-- Location: FF_X23_Y14_N3
u_lab3_modgen_counter_column_areg_q_17_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_17_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_17_aq);

-- Location: LCCOMB_X23_Y14_N4
u_lab3_modgen_counter_column_aix74_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_18_a = (u_lab3_modgen_counter_column_areg_q_18_aq & (u_lab3_modgen_counter_column_anx22370z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_18_aq & (!u_lab3_modgen_counter_column_anx22370z2 & VCC))
-- u_lab3_modgen_counter_column_anx56758z2 = CARRY((u_lab3_modgen_counter_column_areg_q_18_aq & !u_lab3_modgen_counter_column_anx22370z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_18_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx22370z2,
	combout => u_lab3_modgen_counter_column_ainc_d_18_a,
	cout => u_lab3_modgen_counter_column_anx56758z2);

-- Location: FF_X23_Y14_N5
u_lab3_modgen_counter_column_areg_q_18_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_18_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_18_aq);

-- Location: LCCOMB_X23_Y14_N6
u_lab3_modgen_counter_column_aix78_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_19_a = (u_lab3_modgen_counter_column_areg_q_19_aq & (!u_lab3_modgen_counter_column_anx56758z2)) # (!u_lab3_modgen_counter_column_areg_q_19_aq & ((u_lab3_modgen_counter_column_anx56758z2) # (GND)))
-- u_lab3_modgen_counter_column_anx57983z2 = CARRY((!u_lab3_modgen_counter_column_anx56758z2) # (!u_lab3_modgen_counter_column_areg_q_19_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_19_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx56758z2,
	combout => u_lab3_modgen_counter_column_ainc_d_19_a,
	cout => u_lab3_modgen_counter_column_anx57983z2);

-- Location: FF_X23_Y14_N7
u_lab3_modgen_counter_column_areg_q_19_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_19_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_19_aq);

-- Location: LCCOMB_X23_Y14_N8
u_lab3_modgen_counter_column_aix82_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_20_a = (u_lab3_modgen_counter_column_areg_q_20_aq & (u_lab3_modgen_counter_column_anx57983z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_20_aq & (!u_lab3_modgen_counter_column_anx57983z2 & VCC))
-- u_lab3_modgen_counter_column_anx41941z2 = CARRY((u_lab3_modgen_counter_column_areg_q_20_aq & !u_lab3_modgen_counter_column_anx57983z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_20_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx57983z2,
	combout => u_lab3_modgen_counter_column_ainc_d_20_a,
	cout => u_lab3_modgen_counter_column_anx41941z2);

-- Location: FF_X23_Y14_N9
u_lab3_modgen_counter_column_areg_q_20_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_20_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_20_aq);

-- Location: LCCOMB_X23_Y14_N10
u_lab3_modgen_counter_column_aix86_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_21_a = (u_lab3_modgen_counter_column_areg_q_21_aq & (!u_lab3_modgen_counter_column_anx41941z2)) # (!u_lab3_modgen_counter_column_areg_q_21_aq & ((u_lab3_modgen_counter_column_anx41941z2) # (GND)))
-- u_lab3_modgen_counter_column_anx58272z2 = CARRY((!u_lab3_modgen_counter_column_anx41941z2) # (!u_lab3_modgen_counter_column_areg_q_21_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_21_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx41941z2,
	combout => u_lab3_modgen_counter_column_ainc_d_21_a,
	cout => u_lab3_modgen_counter_column_anx58272z2);

-- Location: FF_X23_Y14_N11
u_lab3_modgen_counter_column_areg_q_21_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_21_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_21_aq);

-- Location: LCCOMB_X23_Y14_N12
u_lab3_modgen_counter_column_aix90_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_22_a = (u_lab3_modgen_counter_column_areg_q_22_aq & (u_lab3_modgen_counter_column_anx58272z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_22_aq & (!u_lab3_modgen_counter_column_anx58272z2 & VCC))
-- u_lab3_modgen_counter_column_anx38412z2 = CARRY((u_lab3_modgen_counter_column_areg_q_22_aq & !u_lab3_modgen_counter_column_anx58272z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_22_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx58272z2,
	combout => u_lab3_modgen_counter_column_ainc_d_22_a,
	cout => u_lab3_modgen_counter_column_anx38412z2);

-- Location: FF_X23_Y14_N13
u_lab3_modgen_counter_column_areg_q_22_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_22_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_22_aq);

-- Location: LCCOMB_X23_Y14_N14
u_lab3_modgen_counter_column_aix94_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_23_a = (u_lab3_modgen_counter_column_areg_q_23_aq & (!u_lab3_modgen_counter_column_anx38412z2)) # (!u_lab3_modgen_counter_column_areg_q_23_aq & ((u_lab3_modgen_counter_column_anx38412z2) # (GND)))
-- u_lab3_modgen_counter_column_anx61512z2 = CARRY((!u_lab3_modgen_counter_column_anx38412z2) # (!u_lab3_modgen_counter_column_areg_q_23_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_23_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx38412z2,
	combout => u_lab3_modgen_counter_column_ainc_d_23_a,
	cout => u_lab3_modgen_counter_column_anx61512z2);

-- Location: FF_X23_Y14_N15
u_lab3_modgen_counter_column_areg_q_23_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_23_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_23_aq);

-- Location: LCCOMB_X23_Y14_N16
u_lab3_modgen_counter_column_aix98_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_24_a = (u_lab3_modgen_counter_column_areg_q_24_aq & (u_lab3_modgen_counter_column_anx61512z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_24_aq & (!u_lab3_modgen_counter_column_anx61512z2 & VCC))
-- u_lab3_modgen_counter_column_anx36406z2 = CARRY((u_lab3_modgen_counter_column_areg_q_24_aq & !u_lab3_modgen_counter_column_anx61512z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_24_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx61512z2,
	combout => u_lab3_modgen_counter_column_ainc_d_24_a,
	cout => u_lab3_modgen_counter_column_anx36406z2);

-- Location: FF_X23_Y14_N17
u_lab3_modgen_counter_column_areg_q_24_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_24_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_24_aq);

-- Location: LCCOMB_X23_Y14_N18
u_lab3_modgen_counter_column_aix133_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_25_a = (u_lab3_modgen_counter_column_areg_q_25_aq & (!u_lab3_modgen_counter_column_anx36406z2)) # (!u_lab3_modgen_counter_column_areg_q_25_aq & ((u_lab3_modgen_counter_column_anx36406z2) # (GND)))
-- u_lab3_modgen_counter_column_anx63518z2 = CARRY((!u_lab3_modgen_counter_column_anx36406z2) # (!u_lab3_modgen_counter_column_areg_q_25_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_25_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx36406z2,
	combout => u_lab3_modgen_counter_column_ainc_d_25_a,
	cout => u_lab3_modgen_counter_column_anx63518z2);

-- Location: FF_X23_Y14_N19
u_lab3_modgen_counter_column_areg_q_25_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_25_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_25_aq);

-- Location: LCCOMB_X23_Y14_N20
u_lab3_modgen_counter_column_aix137_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_26_a = (u_lab3_modgen_counter_column_areg_q_26_aq & (u_lab3_modgen_counter_column_anx63518z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_26_aq & (!u_lab3_modgen_counter_column_anx63518z2 & VCC))
-- u_lab3_modgen_counter_column_anx14313z2 = CARRY((u_lab3_modgen_counter_column_areg_q_26_aq & !u_lab3_modgen_counter_column_anx63518z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_26_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx63518z2,
	combout => u_lab3_modgen_counter_column_ainc_d_26_a,
	cout => u_lab3_modgen_counter_column_anx14313z2);

-- Location: FF_X23_Y14_N21
u_lab3_modgen_counter_column_areg_q_26_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_26_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_26_aq);

-- Location: LCCOMB_X23_Y14_N22
u_lab3_modgen_counter_column_aix141_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_27_a = (u_lab3_modgen_counter_column_areg_q_27_aq & (!u_lab3_modgen_counter_column_anx14313z2)) # (!u_lab3_modgen_counter_column_areg_q_27_aq & ((u_lab3_modgen_counter_column_anx14313z2) # (GND)))
-- u_lab3_modgen_counter_column_anx16835z2 = CARRY((!u_lab3_modgen_counter_column_anx14313z2) # (!u_lab3_modgen_counter_column_areg_q_27_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_27_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx14313z2,
	combout => u_lab3_modgen_counter_column_ainc_d_27_a,
	cout => u_lab3_modgen_counter_column_anx16835z2);

-- Location: FF_X23_Y14_N23
u_lab3_modgen_counter_column_areg_q_27_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_27_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_27_aq);

-- Location: LCCOMB_X24_Y14_N26
ix63348z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63348z5 = (!u_lab3_modgen_counter_column_areg_q_26_aq & (!u_lab3_modgen_counter_column_areg_q_27_aq & (!u_lab3_modgen_counter_column_areg_q_24_aq & !u_lab3_modgen_counter_column_areg_q_25_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_26_aq,
	datab => u_lab3_modgen_counter_column_areg_q_27_aq,
	datac => u_lab3_modgen_counter_column_areg_q_24_aq,
	datad => u_lab3_modgen_counter_column_areg_q_25_aq,
	combout => nx63348z5);

-- Location: LCCOMB_X24_Y14_N20
ix63348z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63348z7 = (!u_lab3_modgen_counter_column_areg_q_21_aq & !u_lab3_modgen_counter_column_areg_q_20_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_21_aq,
	datad => u_lab3_modgen_counter_column_areg_q_20_aq,
	combout => nx63348z7);

-- Location: LCCOMB_X24_Y14_N30
ix63348z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63348z8 = (!u_lab3_modgen_counter_column_areg_q_16_aq & (!u_lab3_modgen_counter_column_areg_q_19_aq & (!u_lab3_modgen_counter_column_areg_q_18_aq & !u_lab3_modgen_counter_column_areg_q_17_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_16_aq,
	datab => u_lab3_modgen_counter_column_areg_q_19_aq,
	datac => u_lab3_modgen_counter_column_areg_q_18_aq,
	datad => u_lab3_modgen_counter_column_areg_q_17_aq,
	combout => nx63348z8);

-- Location: LCCOMB_X24_Y14_N0
ix63348z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63348z6 = (!u_lab3_modgen_counter_column_areg_q_22_aq & (nx63348z7 & (nx63348z8 & !u_lab3_modgen_counter_column_areg_q_23_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_22_aq,
	datab => nx63348z7,
	datac => nx63348z8,
	datad => u_lab3_modgen_counter_column_areg_q_23_aq,
	combout => nx63348z6);

-- Location: LCCOMB_X24_Y14_N10
ix63348z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63348z10 = (!u_lab3_modgen_counter_column_areg_q_15_aq & (!u_lab3_modgen_counter_column_areg_q_14_aq & (!u_lab3_modgen_counter_column_areg_q_12_aq & !u_lab3_modgen_counter_column_areg_q_13_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_15_aq,
	datab => u_lab3_modgen_counter_column_areg_q_14_aq,
	datac => u_lab3_modgen_counter_column_areg_q_12_aq,
	datad => u_lab3_modgen_counter_column_areg_q_13_aq,
	combout => nx63348z10);

-- Location: LCCOMB_X24_Y14_N28
ix63348z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63348z11 = (!u_lab3_modgen_counter_column_areg_q_8_aq & (!u_lab3_modgen_counter_column_areg_q_11_aq & (!u_lab3_modgen_counter_column_areg_q_10_aq & !u_lab3_modgen_counter_column_areg_q_9_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_8_aq,
	datab => u_lab3_modgen_counter_column_areg_q_11_aq,
	datac => u_lab3_modgen_counter_column_areg_q_10_aq,
	datad => u_lab3_modgen_counter_column_areg_q_9_aq,
	combout => nx63348z11);

-- Location: LCCOMB_X24_Y14_N22
ix63348z7107 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63348z12 = (!u_lab3_modgen_counter_column_areg_q_6_aq & (!u_lab3_modgen_counter_column_areg_q_5_aq & (!u_lab3_modgen_counter_column_areg_q_7_aq & !u_lab3_modgen_counter_column_areg_q_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_6_aq,
	datab => u_lab3_modgen_counter_column_areg_q_5_aq,
	datac => u_lab3_modgen_counter_column_areg_q_7_aq,
	datad => u_lab3_modgen_counter_column_areg_q_4_aq,
	combout => nx63348z12);

-- Location: LCCOMB_X22_Y16_N24
ix63348z7108 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63348z13 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_modgen_counter_column_areg_q_3_aq & u_lab3_modgen_counter_column_areg_q_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_modgen_counter_column_areg_q_3_aq,
	datad => u_lab3_modgen_counter_column_areg_q_2_aq,
	combout => nx63348z13);

-- Location: LCCOMB_X24_Y14_N8
ix63348z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63348z9 = (nx63348z10 & (nx63348z11 & (nx63348z12 & nx63348z13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63348z10,
	datab => nx63348z11,
	datac => nx63348z12,
	datad => nx63348z13,
	combout => nx63348z9);

-- Location: LCCOMB_X23_Y14_N24
u_lab3_modgen_counter_column_aix145_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_28_a = (u_lab3_modgen_counter_column_areg_q_28_aq & (u_lab3_modgen_counter_column_anx16835z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_28_aq & (!u_lab3_modgen_counter_column_anx16835z2 & VCC))
-- u_lab3_modgen_counter_column_anx17553z2 = CARRY((u_lab3_modgen_counter_column_areg_q_28_aq & !u_lab3_modgen_counter_column_anx16835z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_28_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx16835z2,
	combout => u_lab3_modgen_counter_column_ainc_d_28_a,
	cout => u_lab3_modgen_counter_column_anx17553z2);

-- Location: FF_X23_Y14_N25
u_lab3_modgen_counter_column_areg_q_28_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_28_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_28_aq);

-- Location: LCCOMB_X23_Y14_N26
u_lab3_modgen_counter_column_aix149_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_29_a = (u_lab3_modgen_counter_column_areg_q_29_aq & (!u_lab3_modgen_counter_column_anx17553z2)) # (!u_lab3_modgen_counter_column_areg_q_29_aq & ((u_lab3_modgen_counter_column_anx17553z2) # (GND)))
-- u_lab3_modgen_counter_column_anx33884z2 = CARRY((!u_lab3_modgen_counter_column_anx17553z2) # (!u_lab3_modgen_counter_column_areg_q_29_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_29_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx17553z2,
	combout => u_lab3_modgen_counter_column_ainc_d_29_a,
	cout => u_lab3_modgen_counter_column_anx33884z2);

-- Location: FF_X23_Y14_N27
u_lab3_modgen_counter_column_areg_q_29_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_29_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_29_aq);

-- Location: LCCOMB_X23_Y14_N28
u_lab3_modgen_counter_column_aix153_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_30_a = (u_lab3_modgen_counter_column_areg_q_30_aq & (u_lab3_modgen_counter_column_anx33884z2 $ (GND))) # (!u_lab3_modgen_counter_column_areg_q_30_aq & (!u_lab3_modgen_counter_column_anx33884z2 & VCC))
-- u_lab3_modgen_counter_column_anx18310z2 = CARRY((u_lab3_modgen_counter_column_areg_q_30_aq & !u_lab3_modgen_counter_column_anx33884z2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_modgen_counter_column_areg_q_30_aq,
	datad => VCC,
	cin => u_lab3_modgen_counter_column_anx33884z2,
	combout => u_lab3_modgen_counter_column_ainc_d_30_a,
	cout => u_lab3_modgen_counter_column_anx18310z2);

-- Location: FF_X23_Y14_N29
u_lab3_modgen_counter_column_areg_q_30_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_30_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_30_aq);

-- Location: LCCOMB_X23_Y14_N30
u_lab3_modgen_counter_column_aix155_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_modgen_counter_column_ainc_d_31_a = u_lab3_modgen_counter_column_areg_q_31_aq $ (u_lab3_modgen_counter_column_anx18310z2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_31_aq,
	cin => u_lab3_modgen_counter_column_anx18310z2,
	combout => u_lab3_modgen_counter_column_ainc_d_31_a);

-- Location: FF_X23_Y14_N31
u_lab3_modgen_counter_column_areg_q_31_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_modgen_counter_column_ainc_d_31_a,
	sclr => nx48923z4,
	ena => nx48923z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_modgen_counter_column_areg_q_31_aq);

-- Location: LCCOMB_X24_Y14_N24
ix63348z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63348z4 = (!u_lab3_modgen_counter_column_areg_q_30_aq & (!u_lab3_modgen_counter_column_areg_q_31_aq & (!u_lab3_modgen_counter_column_areg_q_29_aq & !u_lab3_modgen_counter_column_areg_q_28_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_30_aq,
	datab => u_lab3_modgen_counter_column_areg_q_31_aq,
	datac => u_lab3_modgen_counter_column_areg_q_29_aq,
	datad => u_lab3_modgen_counter_column_areg_q_28_aq,
	combout => nx63348z4);

-- Location: LCCOMB_X24_Y14_N18
ix63348z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63348z3 = (nx63348z5 & (nx63348z6 & (nx63348z9 & nx63348z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63348z5,
	datab => nx63348z6,
	datac => nx63348z9,
	datad => nx63348z4,
	combout => nx63348z3);

-- Location: LCCOMB_X16_Y14_N28
ix53092z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx53092z1 = (nx53092z2 & (((u_lab3_reg_compute_flag_aq)))) # (!nx53092z2 & (u_lab3_reg_state_3_aq & ((nx63348z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_3_aq,
	datab => nx53092z2,
	datac => u_lab3_reg_compute_flag_aq,
	datad => nx63348z3,
	combout => nx53092z1);

-- Location: FF_X16_Y14_N29
u_lab3_reg_compute_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx53092z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_compute_flag_aq);

-- Location: LCCOMB_X17_Y18_N16
ix62351z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62351z4 = (u_lab3_modgen_counter_row_areg_q_2_aq & (u_lab3_modgen_counter_row_areg_q_3_aq & (u_lab3_modgen_counter_row_areg_q_0_aq & u_lab3_modgen_counter_row_areg_q_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_row_areg_q_2_aq,
	datab => u_lab3_modgen_counter_row_areg_q_3_aq,
	datac => u_lab3_modgen_counter_row_areg_q_0_aq,
	datad => u_lab3_modgen_counter_row_areg_q_1_aq,
	combout => nx62351z4);

-- Location: LCCOMB_X17_Y18_N12
ix62351z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62351z3 = (nx41843z6 & (nx60357z5 & (nx41843z9 & nx62351z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41843z6,
	datab => nx60357z5,
	datac => nx41843z9,
	datad => nx62351z4,
	combout => nx62351z3);

-- Location: LCCOMB_X16_Y14_N12
ix62351z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62351z2 = ((u_lab3_reg_compute_flag_aq & (!nx62351z3 & nx63348z3))) # (!u_lab3_reg_state_3_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_3_aq,
	datab => u_lab3_reg_compute_flag_aq,
	datac => nx62351z3,
	datad => nx63348z3,
	combout => nx62351z2);

-- Location: LCCOMB_X16_Y14_N0
ix61354z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx61354z1 = (nx62351z2 & ((u_lab3_reg_state_1_aq & (nx60357z2)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_state_3_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx62351z2,
	datab => nx60357z2,
	datac => u_lab3_reg_state_3_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx61354z1);

-- Location: FF_X16_Y14_N1
u_lab3_reg_state_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx61354z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_state_2_aq);

-- Location: LCCOMB_X16_Y14_N22
ix63348z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63348z2 = (u_lab3_reg_compute_flag_aq & (nx62351z3 & nx63348z3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_compute_flag_aq,
	datac => nx62351z3,
	datad => nx63348z3,
	combout => nx63348z2);

-- Location: LCCOMB_X16_Y14_N26
ix62351z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62351z1 = (reset_n_ainput_o & ((u_lab3_reg_state_2_aq) # ((!nx63348z2 & !nx62351z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => u_lab3_reg_state_2_aq,
	datac => nx63348z2,
	datad => nx62351z2,
	combout => nx62351z1);

-- Location: FF_X16_Y14_N27
u_lab3_reg_state_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx62351z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_state_3_aq);

-- Location: LCCOMB_X16_Y14_N6
ix63348z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63348z1 = (u_lab3_reg_state_3_aq & (nx63348z2 & ((!u_lab3_rtlc0_PS25_n202) # (!u_lab3_reg_state_4_aq)))) # (!u_lab3_reg_state_3_aq & (((u_lab3_reg_state_4_aq & !u_lab3_rtlc0_PS25_n202))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_3_aq,
	datab => nx63348z2,
	datac => u_lab3_reg_state_4_aq,
	datad => u_lab3_rtlc0_PS25_n202,
	combout => nx63348z1);

-- Location: FF_X16_Y14_N7
u_lab3_reg_state_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx63348z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_state_4_aq);

-- Location: LCCOMB_X18_Y16_N16
ix59360z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59360z1 = (reset_n_ainput_o & ((yes_uart_u_uart_reg_RxRDYi_aq & ((!u_lab3_reg_state_4_aq))) # (!yes_uart_u_uart_reg_RxRDYi_aq & (u_lab3_reg_state_0_aq)))) # (!reset_n_ainput_o & (((u_lab3_reg_state_0_aq & !u_lab3_reg_state_4_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reset_n_ainput_o,
	datab => yes_uart_u_uart_reg_RxRDYi_aq,
	datac => u_lab3_reg_state_0_aq,
	datad => u_lab3_reg_state_4_aq,
	combout => nx59360z1);

-- Location: FF_X18_Y16_N17
u_lab3_reg_state_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx59360z1,
	sclr => ALT_INV_reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_state_0_aq);

-- Location: FF_X18_Y13_N27
yes_uart_u_uart_reg_Dout_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Rx_Reg_7_aq,
	clrn => reset_n_ainput_o,
	sload => VCC,
	ena => nx46463z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Dout_7_aq);

-- Location: LCCOMB_X24_Y12_N28
ix16929z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16929z1 = (u_lab3_reg_state_3_aq & (nx63348z13 & (yes_uart_u_uart_reg_RxRDYi_aq))) # (!u_lab3_reg_state_3_aq & (((!u_lab3_reg_state_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63348z13,
	datab => u_lab3_reg_state_3_aq,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_reg_state_0_aq,
	combout => nx16929z1);

-- Location: FF_X23_Y12_N19
u_lab3_reg_addend_15_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16929z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_15_7_aq);

-- Location: LCCOMB_X22_Y12_N24
ix13001z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13001z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_15_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datab => u_lab3_reg_addend_15_7_aq,
	datac => u_lab3_reg_state_1_aq,
	combout => nx13001z1);

-- Location: LCCOMB_X18_Y16_N30
ix3960z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx3960z1 = (u_lab3_reg_state_2_aq) # ((u_lab3_reg_stage_1_aq & u_lab3_reg_state_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_stage_1_aq,
	datad => u_lab3_reg_state_0_aq,
	combout => nx3960z1);

-- Location: FF_X18_Y16_N31
u_lab3_reg_stage_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx3960z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_stage_1_aq);

-- Location: LCCOMB_X18_Y16_N18
ix11351z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11351z5 = (u_lab3_reg_state_3_aq) # ((u_lab3_reg_state_4_aq) # ((u_lab3_reg_state_2_aq & !u_lab3_reg_stage_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_3_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_stage_1_aq,
	datad => u_lab3_reg_state_4_aq,
	combout => nx11351z5);

-- Location: LCCOMB_X17_Y18_N18
ix11351z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11351z4 = (nx41843z4 & (nx60357z5 & (nx41843z9 & nx41843z6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41843z4,
	datab => nx60357z5,
	datac => nx41843z9,
	datad => nx41843z6,
	combout => nx11351z4);

-- Location: LCCOMB_X17_Y18_N20
ix11351z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11351z3 = (nx11351z5) # ((u_lab3_reg_state_1_aq & ((nx11351z4) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx11351z5,
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => nx11351z4,
	combout => nx11351z3);

-- Location: LCCOMB_X25_Y12_N4
ix13001z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13001z2 = (!nx11351z3 & ((nx63348z13) # (!u_lab3_reg_state_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => nx63348z13,
	datad => nx11351z3,
	combout => nx13001z2);

-- Location: FF_X22_Y12_N25
u_lab3_reg_subtrahend_15_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx13001z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx13001z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_15_7_aq);

-- Location: LCCOMB_X19_Y12_N22
ix22064z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_14 = (u_lab3_modgen_counter_column_areg_q_0_aq) # (((!u_lab3_modgen_counter_column_areg_q_1_aq) # (!u_lab3_modgen_counter_column_areg_q_3_aq)) # (!u_lab3_modgen_counter_column_areg_q_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_3_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => u_lab3_not_minuend_1n1s2_14);

-- Location: LCCOMB_X27_Y14_N26
ix22064z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22064z1 = (u_lab3_reg_state_3_aq & (((!u_lab3_not_minuend_1n1s2_14 & yes_uart_u_uart_reg_RxRDYi_aq)))) # (!u_lab3_reg_state_3_aq & (!u_lab3_reg_state_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_0_aq,
	datab => u_lab3_not_minuend_1n1s2_14,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_reg_state_3_aq,
	combout => nx22064z1);

-- Location: FF_X28_Y14_N19
u_lab3_reg_addend_14_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx22064z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_14_7_aq);

-- Location: LCCOMB_X27_Y14_N24
ix18136z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18136z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_14_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_14_7_aq,
	combout => nx18136z1);

-- Location: LCCOMB_X27_Y14_N4
ix18136z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18136z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_14) # (!u_lab3_reg_state_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx11351z3,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_not_minuend_1n1s2_14,
	combout => nx18136z2);

-- Location: FF_X27_Y14_N25
u_lab3_reg_subtrahend_14_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx18136z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx18136z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_14_7_aq);

-- Location: LCCOMB_X19_Y12_N12
ix27199z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_13 = (((u_lab3_modgen_counter_column_areg_q_1_aq) # (!u_lab3_modgen_counter_column_areg_q_3_aq)) # (!u_lab3_modgen_counter_column_areg_q_2_aq)) # (!u_lab3_modgen_counter_column_areg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_3_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => u_lab3_not_minuend_1n1s2_13);

-- Location: LCCOMB_X25_Y12_N14
ix27199z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx27199z1 = (u_lab3_reg_state_3_aq & (yes_uart_u_uart_reg_RxRDYi_aq & ((!u_lab3_not_minuend_1n1s2_13)))) # (!u_lab3_reg_state_3_aq & (((!u_lab3_reg_state_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_RxRDYi_aq,
	datab => u_lab3_reg_state_0_aq,
	datac => u_lab3_reg_state_3_aq,
	datad => u_lab3_not_minuend_1n1s2_13,
	combout => nx27199z1);

-- Location: FF_X28_Y14_N9
u_lab3_reg_addend_13_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx27199z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_13_7_aq);

-- Location: LCCOMB_X25_Y12_N10
ix23271z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx23271z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_13_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_7_aq,
	datad => u_lab3_reg_addend_13_7_aq,
	combout => nx23271z1);

-- Location: LCCOMB_X25_Y12_N2
ix23271z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx23271z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_13) # (!u_lab3_reg_state_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => u_lab3_not_minuend_1n1s2_13,
	datad => nx11351z3,
	combout => nx23271z2);

-- Location: FF_X25_Y12_N11
u_lab3_reg_subtrahend_13_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx23271z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx23271z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_13_7_aq);

-- Location: LCCOMB_X19_Y12_N10
ix32334z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_12 = (u_lab3_modgen_counter_column_areg_q_0_aq) # (((u_lab3_modgen_counter_column_areg_q_1_aq) # (!u_lab3_modgen_counter_column_areg_q_3_aq)) # (!u_lab3_modgen_counter_column_areg_q_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_3_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => u_lab3_not_minuend_1n1s2_12);

-- Location: LCCOMB_X24_Y13_N30
ix32334z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx32334z1 = (u_lab3_reg_state_3_aq & (!u_lab3_not_minuend_1n1s2_12 & ((yes_uart_u_uart_reg_RxRDYi_aq)))) # (!u_lab3_reg_state_3_aq & (((!u_lab3_reg_state_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_not_minuend_1n1s2_12,
	datab => u_lab3_reg_state_3_aq,
	datac => u_lab3_reg_state_0_aq,
	datad => yes_uart_u_uart_reg_RxRDYi_aq,
	combout => nx32334z1);

-- Location: FF_X23_Y12_N17
u_lab3_reg_addend_12_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx32334z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_12_7_aq);

-- Location: LCCOMB_X25_Y12_N24
ix28406z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx28406z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_12_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_7_aq,
	datad => u_lab3_reg_addend_12_7_aq,
	combout => nx28406z1);

-- Location: LCCOMB_X25_Y12_N8
ix28406z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx28406z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_12) # (!u_lab3_reg_state_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => u_lab3_not_minuend_1n1s2_12,
	datad => nx11351z3,
	combout => nx28406z2);

-- Location: FF_X25_Y12_N25
u_lab3_reg_subtrahend_12_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx28406z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx28406z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_12_7_aq);

-- Location: LCCOMB_X25_Y12_N28
ix46976z7114 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z18 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_13_7_aq) # ((u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_subtrahend_12_7_aq & 
-- !u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_13_7_aq,
	datab => u_lab3_reg_subtrahend_12_7_aq,
	datac => u_lab3_modgen_counter_column_areg_q_0_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx46976z18);

-- Location: LCCOMB_X25_Y12_N30
ix46976z7113 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z17 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx46976z18 & (u_lab3_reg_subtrahend_15_7_aq)) # (!nx46976z18 & ((u_lab3_reg_subtrahend_14_7_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx46976z18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_15_7_aq,
	datac => u_lab3_reg_subtrahend_14_7_aq,
	datad => nx46976z18,
	combout => nx46976z17);

-- Location: LCCOMB_X22_Y16_N22
ix6231z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_8 = (u_lab3_modgen_counter_column_areg_q_1_aq) # ((u_lab3_modgen_counter_column_areg_q_2_aq) # ((u_lab3_modgen_counter_column_areg_q_0_aq) # (!u_lab3_modgen_counter_column_areg_q_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_3_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => u_lab3_not_minuend_1n1s2_8);

-- Location: LCCOMB_X25_Y13_N6
ix6231z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx6231z1 = (u_lab3_reg_state_3_aq & (yes_uart_u_uart_reg_RxRDYi_aq & (!u_lab3_not_minuend_1n1s2_8))) # (!u_lab3_reg_state_3_aq & (((!u_lab3_reg_state_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_RxRDYi_aq,
	datab => u_lab3_reg_state_3_aq,
	datac => u_lab3_not_minuend_1n1s2_8,
	datad => u_lab3_reg_state_0_aq,
	combout => nx6231z1);

-- Location: FF_X19_Y14_N11
u_lab3_reg_addend_8_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx6231z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_8_7_aq);

-- Location: LCCOMB_X15_Y16_N0
ix29729z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29729z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_8_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_7_aq,
	datad => u_lab3_reg_addend_8_7_aq,
	combout => nx29729z1);

-- Location: LCCOMB_X15_Y16_N30
ix29729z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29729z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_8) # (!u_lab3_reg_state_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => nx11351z3,
	datad => u_lab3_not_minuend_1n1s2_8,
	combout => nx29729z2);

-- Location: FF_X15_Y16_N1
u_lab3_reg_subtrahend_8_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx29729z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx29729z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_8_7_aq);

-- Location: LCCOMB_X22_Y15_N28
ix64440z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_9 = ((u_lab3_modgen_counter_column_areg_q_1_aq) # ((u_lab3_modgen_counter_column_areg_q_2_aq) # (!u_lab3_modgen_counter_column_areg_q_0_aq))) # (!u_lab3_modgen_counter_column_areg_q_3_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_modgen_counter_column_areg_q_0_aq,
	datad => u_lab3_modgen_counter_column_areg_q_2_aq,
	combout => u_lab3_not_minuend_1n1s2_9);

-- Location: LCCOMB_X20_Y15_N0
ix64440z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64440z1 = (u_lab3_reg_state_3_aq & (yes_uart_u_uart_reg_RxRDYi_aq & (!u_lab3_not_minuend_1n1s2_9))) # (!u_lab3_reg_state_3_aq & (((!u_lab3_reg_state_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_3_aq,
	datab => yes_uart_u_uart_reg_RxRDYi_aq,
	datac => u_lab3_not_minuend_1n1s2_9,
	datad => u_lab3_reg_state_0_aq,
	combout => nx64440z1);

-- Location: FF_X16_Y16_N19
u_lab3_reg_addend_9_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx64440z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_9_7_aq);

-- Location: LCCOMB_X15_Y16_N26
ix34864z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx34864z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_7_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_9_7_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_9_7_aq,
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_7_aq,
	combout => nx34864z1);

-- Location: LCCOMB_X15_Y16_N16
ix34864z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx34864z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_9) # (!u_lab3_reg_state_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx11351z3,
	datab => u_lab3_reg_state_1_aq,
	datac => u_lab3_not_minuend_1n1s2_9,
	combout => nx34864z2);

-- Location: FF_X15_Y16_N27
u_lab3_reg_subtrahend_9_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx34864z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx34864z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_9_7_aq);

-- Location: LCCOMB_X19_Y15_N12
ix46976z7112 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z16 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_modgen_counter_column_areg_q_1_aq) # ((u_lab3_reg_subtrahend_9_7_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (!u_lab3_modgen_counter_column_areg_q_1_aq & 
-- (u_lab3_reg_subtrahend_8_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_subtrahend_8_7_aq,
	datad => u_lab3_reg_subtrahend_9_7_aq,
	combout => nx46976z16);

-- Location: LCCOMB_X19_Y12_N8
ix37469z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_11 = ((u_lab3_modgen_counter_column_areg_q_2_aq) # ((!u_lab3_modgen_counter_column_areg_q_1_aq) # (!u_lab3_modgen_counter_column_areg_q_3_aq))) # (!u_lab3_modgen_counter_column_areg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_3_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => u_lab3_not_minuend_1n1s2_11);

-- Location: LCCOMB_X20_Y15_N28
ix37469z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37469z1 = (u_lab3_reg_state_3_aq & (((yes_uart_u_uart_reg_RxRDYi_aq & !u_lab3_not_minuend_1n1s2_11)))) # (!u_lab3_reg_state_3_aq & (!u_lab3_reg_state_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_3_aq,
	datab => u_lab3_reg_state_0_aq,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_not_minuend_1n1s2_11,
	combout => nx37469z1);

-- Location: FF_X22_Y17_N3
u_lab3_reg_addend_11_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37469z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_11_7_aq);

-- Location: LCCOMB_X20_Y16_N16
ix33541z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33541z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_11_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_7_aq,
	datad => u_lab3_reg_addend_11_7_aq,
	combout => nx33541z1);

-- Location: LCCOMB_X20_Y15_N8
ix33541z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33541z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_11) # (!u_lab3_reg_state_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => nx11351z3,
	datad => u_lab3_not_minuend_1n1s2_11,
	combout => nx33541z2);

-- Location: FF_X20_Y16_N17
u_lab3_reg_subtrahend_11_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx33541z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx33541z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_11_7_aq);

-- Location: LCCOMB_X19_Y12_N14
ix42604z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_10 = (u_lab3_modgen_counter_column_areg_q_0_aq) # ((u_lab3_modgen_counter_column_areg_q_2_aq) # ((!u_lab3_modgen_counter_column_areg_q_1_aq) # (!u_lab3_modgen_counter_column_areg_q_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_3_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => u_lab3_not_minuend_1n1s2_10);

-- Location: LCCOMB_X20_Y15_N26
ix42604z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx42604z1 = (u_lab3_reg_state_3_aq & (((yes_uart_u_uart_reg_RxRDYi_aq & !u_lab3_not_minuend_1n1s2_10)))) # (!u_lab3_reg_state_3_aq & (!u_lab3_reg_state_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_3_aq,
	datab => u_lab3_reg_state_0_aq,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_not_minuend_1n1s2_10,
	combout => nx42604z1);

-- Location: FF_X24_Y18_N19
u_lab3_reg_addend_10_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42604z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_10_7_aq);

-- Location: LCCOMB_X22_Y14_N0
ix38676z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx38676z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_10_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datac => u_lab3_reg_addend_10_7_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx38676z1);

-- Location: LCCOMB_X20_Y15_N30
ix38676z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx38676z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_10) # (!u_lab3_reg_state_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => nx11351z3,
	datad => u_lab3_not_minuend_1n1s2_10,
	combout => nx38676z2);

-- Location: FF_X22_Y14_N1
u_lab3_reg_subtrahend_10_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx38676z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx38676z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_10_7_aq);

-- Location: LCCOMB_X19_Y15_N30
ix46976z7111 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z15 = (nx46976z16 & ((u_lab3_reg_subtrahend_11_7_aq) # ((!u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!nx46976z16 & (((u_lab3_modgen_counter_column_areg_q_1_aq & u_lab3_reg_subtrahend_10_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx46976z16,
	datab => u_lab3_reg_subtrahend_11_7_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_reg_subtrahend_10_7_aq,
	combout => nx46976z15);

-- Location: LCCOMB_X19_Y15_N10
ix16501z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_6 = (u_lab3_modgen_counter_column_areg_q_0_aq) # (((u_lab3_modgen_counter_column_areg_q_3_aq) # (!u_lab3_modgen_counter_column_areg_q_2_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_modgen_counter_column_areg_q_2_aq,
	datad => u_lab3_modgen_counter_column_areg_q_3_aq,
	combout => u_lab3_not_minuend_1n1s2_6);

-- Location: LCCOMB_X20_Y15_N20
ix16501z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16501z1 = (u_lab3_reg_state_3_aq & (((yes_uart_u_uart_reg_RxRDYi_aq & !u_lab3_not_minuend_1n1s2_6)))) # (!u_lab3_reg_state_3_aq & (!u_lab3_reg_state_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_3_aq,
	datab => u_lab3_reg_state_0_aq,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_not_minuend_1n1s2_6,
	combout => nx16501z1);

-- Location: FF_X19_Y14_N17
u_lab3_reg_addend_6_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16501z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_6_7_aq);

-- Location: LCCOMB_X18_Y12_N8
ix46077z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46077z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_6_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_7_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_6_7_aq,
	combout => nx46077z1);

-- Location: LCCOMB_X20_Y15_N2
ix46077z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46077z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_6) # (!u_lab3_reg_state_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => nx11351z3,
	datad => u_lab3_not_minuend_1n1s2_6,
	combout => nx46077z2);

-- Location: FF_X18_Y12_N9
u_lab3_reg_subtrahend_6_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx46077z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx46077z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_6_7_aq);

-- Location: LCCOMB_X22_Y16_N2
ix21636z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_5 = (u_lab3_modgen_counter_column_areg_q_3_aq) # (((u_lab3_modgen_counter_column_areg_q_1_aq) # (!u_lab3_modgen_counter_column_areg_q_2_aq)) # (!u_lab3_modgen_counter_column_areg_q_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_2_aq,
	combout => u_lab3_not_minuend_1n1s2_5);

-- Location: LCCOMB_X20_Y15_N18
ix21636z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx21636z1 = (u_lab3_reg_state_3_aq & (((yes_uart_u_uart_reg_RxRDYi_aq & !u_lab3_not_minuend_1n1s2_5)))) # (!u_lab3_reg_state_3_aq & (!u_lab3_reg_state_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_3_aq,
	datab => u_lab3_reg_state_0_aq,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_not_minuend_1n1s2_5,
	combout => nx21636z1);

-- Location: FF_X22_Y17_N9
u_lab3_reg_addend_5_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx21636z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_5_7_aq);

-- Location: LCCOMB_X19_Y15_N18
ix51212z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51212z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_5_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datab => u_lab3_reg_addend_5_7_aq,
	datac => u_lab3_reg_state_1_aq,
	combout => nx51212z1);

-- Location: LCCOMB_X19_Y17_N18
ix51212z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51212z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_5) # (!u_lab3_reg_state_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => nx11351z3,
	datad => u_lab3_not_minuend_1n1s2_5,
	combout => nx51212z2);

-- Location: FF_X19_Y15_N19
u_lab3_reg_subtrahend_5_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx51212z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx51212z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_5_7_aq);

-- Location: LCCOMB_X22_Y16_N0
ix26771z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_4 = (u_lab3_modgen_counter_column_areg_q_1_aq) # (((u_lab3_modgen_counter_column_areg_q_3_aq) # (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_3_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => u_lab3_not_minuend_1n1s2_4);

-- Location: LCCOMB_X24_Y16_N14
ix26771z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26771z1 = (u_lab3_reg_state_3_aq & (((yes_uart_u_uart_reg_RxRDYi_aq & !u_lab3_not_minuend_1n1s2_4)))) # (!u_lab3_reg_state_3_aq & (!u_lab3_reg_state_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_0_aq,
	datab => yes_uart_u_uart_reg_RxRDYi_aq,
	datac => u_lab3_reg_state_3_aq,
	datad => u_lab3_not_minuend_1n1s2_4,
	combout => nx26771z1);

-- Location: FF_X16_Y16_N17
u_lab3_reg_addend_4_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx26771z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_4_7_aq);

-- Location: LCCOMB_X24_Y16_N16
ix56347z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56347z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_4_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_4_7_aq,
	combout => nx56347z1);

-- Location: LCCOMB_X24_Y16_N8
ix56347z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56347z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_4) # (!u_lab3_reg_state_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => nx11351z3,
	datad => u_lab3_not_minuend_1n1s2_4,
	combout => nx56347z2);

-- Location: FF_X24_Y16_N17
u_lab3_reg_subtrahend_4_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx56347z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx56347z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_4_7_aq);

-- Location: LCCOMB_X19_Y15_N4
ix46976z7110 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z14 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_5_7_aq) # ((u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (((!u_lab3_modgen_counter_column_areg_q_1_aq & 
-- u_lab3_reg_subtrahend_4_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_reg_subtrahend_5_7_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_reg_subtrahend_4_7_aq,
	combout => nx46976z14);

-- Location: LCCOMB_X22_Y16_N4
ix11366z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_7 = (((u_lab3_modgen_counter_column_areg_q_3_aq) # (!u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_2_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_3_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => u_lab3_not_minuend_1n1s2_7);

-- Location: LCCOMB_X20_Y15_N22
ix11366z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11366z1 = (u_lab3_reg_state_3_aq & (((yes_uart_u_uart_reg_RxRDYi_aq & !u_lab3_not_minuend_1n1s2_7)))) # (!u_lab3_reg_state_3_aq & (!u_lab3_reg_state_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_3_aq,
	datab => u_lab3_reg_state_0_aq,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_not_minuend_1n1s2_7,
	combout => nx11366z1);

-- Location: FF_X24_Y15_N19
u_lab3_reg_addend_7_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx11366z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_7_7_aq);

-- Location: LCCOMB_X19_Y15_N6
ix40942z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx40942z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_7_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_7_7_aq,
	combout => nx40942z1);

-- Location: LCCOMB_X20_Y15_N12
ix40942z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx40942z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_7) # (!u_lab3_reg_state_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => nx11351z3,
	datad => u_lab3_not_minuend_1n1s2_7,
	combout => nx40942z2);

-- Location: FF_X19_Y15_N7
u_lab3_reg_subtrahend_7_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx40942z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx40942z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_7_7_aq);

-- Location: LCCOMB_X19_Y15_N24
ix46976z7109 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z13 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx46976z14 & ((u_lab3_reg_subtrahend_7_7_aq))) # (!nx46976z14 & (u_lab3_reg_subtrahend_6_7_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx46976z14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_6_7_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => nx46976z14,
	datad => u_lab3_reg_subtrahend_7_7_aq,
	combout => nx46976z13);

-- Location: LCCOMB_X22_Y16_N14
ix37041z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_2 = ((u_lab3_modgen_counter_column_areg_q_2_aq) # ((u_lab3_modgen_counter_column_areg_q_3_aq) # (u_lab3_modgen_counter_column_areg_q_0_aq))) # (!u_lab3_modgen_counter_column_areg_q_1_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_3_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => u_lab3_not_minuend_1n1s2_2);

-- Location: LCCOMB_X27_Y14_N0
ix37041z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37041z1 = (u_lab3_reg_state_3_aq & (((!u_lab3_not_minuend_1n1s2_2 & yes_uart_u_uart_reg_RxRDYi_aq)))) # (!u_lab3_reg_state_3_aq & (!u_lab3_reg_state_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_0_aq,
	datab => u_lab3_not_minuend_1n1s2_2,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_reg_state_3_aq,
	combout => nx37041z1);

-- Location: FF_X24_Y18_N17
u_lab3_reg_addend_2_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37041z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_2_7_aq);

-- Location: LCCOMB_X25_Y16_N24
ix1081z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx1081z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_2_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_7_aq,
	datad => u_lab3_reg_addend_2_7_aq,
	combout => nx1081z1);

-- Location: LCCOMB_X27_Y14_N2
ix1081z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx1081z2 = (!nx11351z3 & ((!u_lab3_reg_state_1_aq) # (!u_lab3_not_minuend_1n1s2_2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_not_minuend_1n1s2_2,
	datac => u_lab3_reg_state_1_aq,
	datad => nx11351z3,
	combout => nx1081z2);

-- Location: FF_X25_Y16_N25
u_lab3_reg_subtrahend_2_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx1081z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx1081z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_2_7_aq);

-- Location: LCCOMB_X22_Y15_N0
ix31906z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_3 = (u_lab3_modgen_counter_column_areg_q_3_aq) # (((u_lab3_modgen_counter_column_areg_q_2_aq) # (!u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_modgen_counter_column_areg_q_0_aq,
	datad => u_lab3_modgen_counter_column_areg_q_2_aq,
	combout => u_lab3_not_minuend_1n1s2_3);

-- Location: LCCOMB_X17_Y15_N0
ix31906z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx31906z1 = (u_lab3_reg_state_3_aq & (yes_uart_u_uart_reg_RxRDYi_aq & ((!u_lab3_not_minuend_1n1s2_3)))) # (!u_lab3_reg_state_3_aq & (((!u_lab3_reg_state_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_RxRDYi_aq,
	datab => u_lab3_reg_state_0_aq,
	datac => u_lab3_reg_state_3_aq,
	datad => u_lab3_not_minuend_1n1s2_3,
	combout => nx31906z1);

-- Location: FF_X15_Y17_N19
u_lab3_reg_addend_3_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx31906z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_3_7_aq);

-- Location: LCCOMB_X14_Y16_N0
ix61482z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx61482z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_3_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_7_aq,
	datac => u_lab3_reg_addend_3_7_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx61482z1);

-- Location: LCCOMB_X16_Y20_N26
ix61482z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx61482z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_3) # (!u_lab3_reg_state_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => nx11351z3,
	datad => u_lab3_not_minuend_1n1s2_3,
	combout => nx61482z2);

-- Location: FF_X14_Y16_N1
u_lab3_reg_subtrahend_3_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx61482z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx61482z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_3_7_aq);

-- Location: LCCOMB_X19_Y15_N8
ix42176z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_1 = ((u_lab3_modgen_counter_column_areg_q_1_aq) # ((u_lab3_modgen_counter_column_areg_q_2_aq) # (u_lab3_modgen_counter_column_areg_q_3_aq))) # (!u_lab3_modgen_counter_column_areg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_modgen_counter_column_areg_q_2_aq,
	datad => u_lab3_modgen_counter_column_areg_q_3_aq,
	combout => u_lab3_not_minuend_1n1s2_1);

-- Location: LCCOMB_X25_Y15_N30
ix42176z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx42176z1 = (u_lab3_reg_state_3_aq & (yes_uart_u_uart_reg_RxRDYi_aq & ((!u_lab3_not_minuend_1n1s2_1)))) # (!u_lab3_reg_state_3_aq & (((!u_lab3_reg_state_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_RxRDYi_aq,
	datab => u_lab3_reg_state_3_aq,
	datac => u_lab3_reg_state_0_aq,
	datad => u_lab3_not_minuend_1n1s2_1,
	combout => nx42176z1);

-- Location: FF_X24_Y15_N1
u_lab3_reg_addend_1_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42176z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_1_7_aq);

-- Location: LCCOMB_X25_Y15_N16
ix6216z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx6216z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_1_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datac => u_lab3_reg_addend_1_7_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx6216z1);

-- Location: LCCOMB_X25_Y15_N8
ix6216z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx6216z2 = (!nx11351z3 & ((!u_lab3_not_minuend_1n1s2_1) # (!u_lab3_reg_state_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => nx11351z3,
	datad => u_lab3_not_minuend_1n1s2_1,
	combout => nx6216z2);

-- Location: FF_X25_Y15_N17
u_lab3_reg_subtrahend_1_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx6216z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx6216z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_1_7_aq);

-- Location: LCCOMB_X22_Y16_N12
ix47311z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_not_minuend_1n1s2_0 = (u_lab3_modgen_counter_column_areg_q_1_aq) # ((u_lab3_modgen_counter_column_areg_q_2_aq) # ((u_lab3_modgen_counter_column_areg_q_3_aq) # (u_lab3_modgen_counter_column_areg_q_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_3_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => u_lab3_not_minuend_1n1s2_0);

-- Location: LCCOMB_X20_Y17_N14
ix47311z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx47311z1 = (u_lab3_reg_state_3_aq & (!u_lab3_not_minuend_1n1s2_0 & (yes_uart_u_uart_reg_RxRDYi_aq))) # (!u_lab3_reg_state_3_aq & (((!u_lab3_reg_state_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_not_minuend_1n1s2_0,
	datab => u_lab3_reg_state_3_aq,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_reg_state_0_aq,
	combout => nx47311z1);

-- Location: FF_X15_Y17_N25
u_lab3_reg_addend_0_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_7_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx47311z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_0_7_aq);

-- Location: LCCOMB_X20_Y17_N0
ix11351z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11351z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_7_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_0_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datab => u_lab3_reg_state_1_aq,
	datac => u_lab3_reg_addend_0_7_aq,
	combout => nx11351z1);

-- Location: LCCOMB_X20_Y17_N26
ix11351z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11351z2 = (!nx11351z3 & ((!u_lab3_reg_state_1_aq) # (!u_lab3_not_minuend_1n1s2_0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_not_minuend_1n1s2_0,
	datab => u_lab3_reg_state_1_aq,
	datac => nx11351z3,
	combout => nx11351z2);

-- Location: FF_X20_Y17_N1
u_lab3_reg_subtrahend_0_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx11351z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx11351z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_0_7_aq);

-- Location: LCCOMB_X25_Y15_N2
ix46976z7108 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z12 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_1_7_aq) # ((u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (((!u_lab3_modgen_counter_column_areg_q_1_aq & 
-- u_lab3_reg_subtrahend_0_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_reg_subtrahend_1_7_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_reg_subtrahend_0_7_aq,
	combout => nx46976z12);

-- Location: LCCOMB_X19_Y15_N0
ix46976z7107 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z11 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx46976z12 & ((u_lab3_reg_subtrahend_3_7_aq))) # (!nx46976z12 & (u_lab3_reg_subtrahend_2_7_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx46976z12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_2_7_aq,
	datab => u_lab3_reg_subtrahend_3_7_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => nx46976z12,
	combout => nx46976z11);

-- Location: LCCOMB_X19_Y15_N2
ix46976z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z10 = (u_lab3_modgen_counter_column_areg_q_3_aq & (((u_lab3_modgen_counter_column_areg_q_2_aq)))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & ((u_lab3_modgen_counter_column_areg_q_2_aq & (nx46976z13)) # (!u_lab3_modgen_counter_column_areg_q_2_aq 
-- & ((nx46976z11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => nx46976z13,
	datac => u_lab3_modgen_counter_column_areg_q_2_aq,
	datad => nx46976z11,
	combout => nx46976z10);

-- Location: LCCOMB_X19_Y15_N16
ix46976z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f2(7) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx46976z10 & (nx46976z17)) # (!nx46976z10 & ((nx46976z15))))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx46976z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => nx46976z17,
	datac => nx46976z15,
	datad => nx46976z10,
	combout => u_lab3_p_1n7s3f2(7));

-- Location: LCCOMB_X22_Y14_N18
ix22088z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22088z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_10) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_RxRDYi_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_not_minuend_1n1s2_10,
	datad => u_lab3_reg_state_0_aq,
	combout => nx22088z1);

-- Location: LCCOMB_X22_Y14_N12
ix22088z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_327_a = (yes_uart_u_uart_reg_Dout_7_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_10_7_aq)) # (!nx22088z1))) # (!yes_uart_u_uart_reg_Dout_7_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_10_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datab => nx22088z1,
	datac => u_lab3_reg_state_2_aq,
	datad => u_lab3_reg_subtrahend_10_7_aq,
	combout => u_lab3_minuend_1n10ss1_327_a);

-- Location: LCCOMB_X22_Y14_N22
ix22088z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22088z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_not_minuend_1n1s2_10) # (!u_lab3_reg_state_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_not_minuend_1n1s2_10,
	datac => nx11351z5,
	datad => nx41843z3,
	combout => nx22088z2);

-- Location: FF_X22_Y14_N13
u_lab3_reg_minuend_10_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_327_a,
	ena => nx22088z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_10_7_aq);

-- Location: LCCOMB_X20_Y16_N28
ix27223z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx27223z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_11) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_0_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_not_minuend_1n1s2_11,
	combout => nx27223z1);

-- Location: LCCOMB_X20_Y16_N30
ix27223z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_359_a = (yes_uart_u_uart_reg_Dout_7_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_11_7_aq)) # (!nx27223z1))) # (!yes_uart_u_uart_reg_Dout_7_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_11_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datab => nx27223z1,
	datac => u_lab3_reg_state_2_aq,
	datad => u_lab3_reg_subtrahend_11_7_aq,
	combout => u_lab3_minuend_1n10ss1_359_a);

-- Location: LCCOMB_X20_Y16_N8
ix27223z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx27223z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_reg_state_1_aq) # (!u_lab3_not_minuend_1n1s2_11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_not_minuend_1n1s2_11,
	datab => nx11351z5,
	datac => u_lab3_reg_state_1_aq,
	datad => nx41843z3,
	combout => nx27223z2);

-- Location: FF_X20_Y16_N31
u_lab3_reg_minuend_11_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_359_a,
	ena => nx27223z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_11_7_aq);

-- Location: LCCOMB_X25_Y13_N8
ix36429z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36429z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_8) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_RxRDYi_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_not_minuend_1n1s2_8,
	datad => u_lab3_reg_state_0_aq,
	combout => nx36429z1);

-- Location: LCCOMB_X18_Y15_N6
ix36429z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_263_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_8_7_aq) # ((yes_uart_u_uart_reg_Dout_7_aq & !nx36429z1)))) # (!u_lab3_reg_state_2_aq & (yes_uart_u_uart_reg_Dout_7_aq & (!nx36429z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => yes_uart_u_uart_reg_Dout_7_aq,
	datac => nx36429z1,
	datad => u_lab3_reg_subtrahend_8_7_aq,
	combout => u_lab3_minuend_1n10ss1_263_a);

-- Location: LCCOMB_X22_Y15_N26
ix36429z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36429z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_not_minuend_1n1s2_8) # (!u_lab3_reg_state_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => nx11351z5,
	datac => u_lab3_not_minuend_1n1s2_8,
	datad => nx41843z3,
	combout => nx36429z2);

-- Location: FF_X18_Y15_N7
u_lab3_reg_minuend_8_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_263_a,
	ena => nx36429z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_8_7_aq);

-- Location: LCCOMB_X19_Y17_N24
ix41564z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41564z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_9) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_RxRDYi_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_state_0_aq,
	datad => u_lab3_not_minuend_1n1s2_9,
	combout => nx41564z1);

-- Location: LCCOMB_X18_Y15_N8
ix41564z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_295_a = (u_lab3_reg_subtrahend_9_7_aq & ((u_lab3_reg_state_2_aq) # ((!nx41564z1 & yes_uart_u_uart_reg_Dout_7_aq)))) # (!u_lab3_reg_subtrahend_9_7_aq & (!nx41564z1 & ((yes_uart_u_uart_reg_Dout_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_9_7_aq,
	datab => nx41564z1,
	datac => u_lab3_reg_state_2_aq,
	datad => yes_uart_u_uart_reg_Dout_7_aq,
	combout => u_lab3_minuend_1n10ss1_295_a);

-- Location: LCCOMB_X22_Y15_N30
ix41564z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41564z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_not_minuend_1n1s2_9) # (!u_lab3_reg_state_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => nx11351z5,
	datac => u_lab3_not_minuend_1n1s2_9,
	datad => nx41843z3,
	combout => nx41564z2);

-- Location: FF_X18_Y15_N9
u_lab3_reg_minuend_9_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_295_a,
	ena => nx41564z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_9_7_aq);

-- Location: LCCOMB_X18_Y15_N24
ix46976z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z7 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_9_7_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_8_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_8_7_aq,
	datab => u_lab3_reg_minuend_9_7_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx46976z7);

-- Location: LCCOMB_X22_Y15_N18
ix46976z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z6 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx46976z7 & ((u_lab3_reg_minuend_11_7_aq))) # (!nx46976z7 & (u_lab3_reg_minuend_10_7_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx46976z7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_10_7_aq,
	datac => u_lab3_reg_minuend_11_7_aq,
	datad => nx46976z7,
	combout => nx46976z6);

-- Location: LCCOMB_X19_Y19_N24
ix31294z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx31294z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_7) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_0_aq,
	datab => yes_uart_u_uart_reg_RxRDYi_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => u_lab3_not_minuend_1n1s2_7,
	combout => nx31294z1);

-- Location: LCCOMB_X19_Y19_N26
ix31294z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_231_a = (yes_uart_u_uart_reg_Dout_7_aq & (((u_lab3_reg_subtrahend_7_7_aq & u_lab3_reg_state_2_aq)) # (!nx31294z1))) # (!yes_uart_u_uart_reg_Dout_7_aq & (u_lab3_reg_subtrahend_7_7_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datab => u_lab3_reg_subtrahend_7_7_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx31294z1,
	combout => u_lab3_minuend_1n10ss1_231_a);

-- Location: LCCOMB_X19_Y19_N28
ix31294z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx31294z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_not_minuend_1n1s2_7) # (!u_lab3_reg_state_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => nx11351z5,
	datac => nx41843z3,
	datad => u_lab3_not_minuend_1n1s2_7,
	combout => nx31294z2);

-- Location: FF_X19_Y19_N27
u_lab3_reg_minuend_7_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_231_a,
	ena => nx31294z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_7_7_aq);

-- Location: LCCOMB_X18_Y12_N4
ix26159z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26159z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_6) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_not_minuend_1n1s2_6,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_reg_state_0_aq,
	combout => nx26159z1);

-- Location: LCCOMB_X18_Y12_N6
ix26159z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_199_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_6_7_aq) # ((!nx26159z1 & yes_uart_u_uart_reg_Dout_7_aq)))) # (!u_lab3_reg_state_2_aq & (((!nx26159z1 & yes_uart_u_uart_reg_Dout_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_subtrahend_6_7_aq,
	datac => nx26159z1,
	datad => yes_uart_u_uart_reg_Dout_7_aq,
	combout => u_lab3_minuend_1n10ss1_199_a);

-- Location: LCCOMB_X18_Y12_N0
ix26159z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26159z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_reg_state_1_aq) # (!u_lab3_not_minuend_1n1s2_6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_not_minuend_1n1s2_6,
	datab => nx11351z5,
	datac => u_lab3_reg_state_1_aq,
	datad => nx41843z3,
	combout => nx26159z2);

-- Location: FF_X18_Y12_N7
u_lab3_reg_minuend_6_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_199_a,
	ena => nx26159z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_6_7_aq);

-- Location: LCCOMB_X19_Y17_N6
ix21024z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx21024z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_5) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_RxRDYi_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_state_0_aq,
	datad => u_lab3_not_minuend_1n1s2_5,
	combout => nx21024z1);

-- Location: LCCOMB_X20_Y14_N30
ix21024z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_167_a = (yes_uart_u_uart_reg_Dout_7_aq & (((u_lab3_reg_subtrahend_5_7_aq & u_lab3_reg_state_2_aq)) # (!nx21024z1))) # (!yes_uart_u_uart_reg_Dout_7_aq & (u_lab3_reg_subtrahend_5_7_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datab => u_lab3_reg_subtrahend_5_7_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx21024z1,
	combout => u_lab3_minuend_1n10ss1_167_a);

-- Location: LCCOMB_X20_Y15_N24
ix21024z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx21024z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_reg_state_1_aq) # (!u_lab3_not_minuend_1n1s2_5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx11351z5,
	datab => u_lab3_not_minuend_1n1s2_5,
	datac => u_lab3_reg_state_1_aq,
	datad => nx41843z3,
	combout => nx21024z2);

-- Location: FF_X20_Y14_N31
u_lab3_reg_minuend_5_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_167_a,
	ena => nx21024z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_5_7_aq);

-- Location: LCCOMB_X24_Y16_N18
ix15889z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15889z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_4) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_not_minuend_1n1s2_4,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_reg_state_0_aq,
	combout => nx15889z1);

-- Location: LCCOMB_X24_Y16_N4
ix15889z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_135_a = (yes_uart_u_uart_reg_Dout_7_aq & (((u_lab3_reg_subtrahend_4_7_aq & u_lab3_reg_state_2_aq)) # (!nx15889z1))) # (!yes_uart_u_uart_reg_Dout_7_aq & (u_lab3_reg_subtrahend_4_7_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datab => u_lab3_reg_subtrahend_4_7_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx15889z1,
	combout => u_lab3_minuend_1n10ss1_135_a);

-- Location: LCCOMB_X24_Y16_N22
ix15889z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15889z2 = (!nx41843z3 & (!nx11351z5 & ((!u_lab3_reg_state_1_aq) # (!u_lab3_not_minuend_1n1s2_4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_not_minuend_1n1s2_4,
	datab => u_lab3_reg_state_1_aq,
	datac => nx41843z3,
	datad => nx11351z5,
	combout => nx15889z2);

-- Location: FF_X24_Y16_N5
u_lab3_reg_minuend_4_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_135_a,
	ena => nx15889z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_4_7_aq);

-- Location: LCCOMB_X22_Y15_N12
ix46976z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z5 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_5_7_aq)) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_4_7_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_minuend_5_7_aq,
	datad => u_lab3_reg_minuend_4_7_aq,
	combout => nx46976z5);

-- Location: LCCOMB_X22_Y15_N22
ix46976z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z4 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx46976z5 & (u_lab3_reg_minuend_7_7_aq)) # (!nx46976z5 & ((u_lab3_reg_minuend_6_7_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx46976z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_7_7_aq,
	datac => u_lab3_reg_minuend_6_7_aq,
	datad => nx46976z5,
	combout => nx46976z4);

-- Location: LCCOMB_X20_Y17_N22
ix4651z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx4651z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_0) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => yes_uart_u_uart_reg_RxRDYi_aq,
	datac => u_lab3_not_minuend_1n1s2_0,
	datad => u_lab3_reg_state_0_aq,
	combout => nx4651z1);

-- Location: LCCOMB_X25_Y15_N18
ix4651z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_7_a = (yes_uart_u_uart_reg_Dout_7_aq & (((u_lab3_reg_subtrahend_0_7_aq & u_lab3_reg_state_2_aq)) # (!nx4651z1))) # (!yes_uart_u_uart_reg_Dout_7_aq & (u_lab3_reg_subtrahend_0_7_aq & ((u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datab => u_lab3_reg_subtrahend_0_7_aq,
	datac => nx4651z1,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_7_a);

-- Location: LCCOMB_X20_Y17_N8
ix4651z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx4651z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_reg_state_1_aq) # (!u_lab3_not_minuend_1n1s2_0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_not_minuend_1n1s2_0,
	datab => nx11351z5,
	datac => u_lab3_reg_state_1_aq,
	datad => nx41843z3,
	combout => nx4651z2);

-- Location: FF_X25_Y15_N19
u_lab3_reg_minuend_0_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_7_a,
	ena => nx4651z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_0_7_aq);

-- Location: LCCOMB_X25_Y15_N12
ix65052z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx65052z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_1) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_RxRDYi_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_state_0_aq,
	datad => u_lab3_not_minuend_1n1s2_1,
	combout => nx65052z1);

-- Location: LCCOMB_X22_Y13_N4
ix65052z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_39_a = (yes_uart_u_uart_reg_Dout_7_aq & (((u_lab3_reg_subtrahend_1_7_aq & u_lab3_reg_state_2_aq)) # (!nx65052z1))) # (!yes_uart_u_uart_reg_Dout_7_aq & (u_lab3_reg_subtrahend_1_7_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datab => u_lab3_reg_subtrahend_1_7_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx65052z1,
	combout => u_lab3_minuend_1n10ss1_39_a);

-- Location: LCCOMB_X22_Y13_N30
ix65052z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx65052z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_not_minuend_1n1s2_1) # (!u_lab3_reg_state_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx11351z5,
	datab => u_lab3_reg_state_1_aq,
	datac => nx41843z3,
	datad => u_lab3_not_minuend_1n1s2_1,
	combout => nx65052z2);

-- Location: FF_X22_Y13_N5
u_lab3_reg_minuend_1_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_39_a,
	ena => nx65052z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_1_7_aq);

-- Location: LCCOMB_X22_Y15_N24
ix46976z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z3 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_1_7_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_0_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_minuend_0_7_aq,
	datad => u_lab3_reg_minuend_1_7_aq,
	combout => nx46976z3);

-- Location: LCCOMB_X25_Y12_N26
ix59917z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59917z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_2) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_not_minuend_1n1s2_2,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_reg_state_0_aq,
	combout => nx59917z1);

-- Location: LCCOMB_X25_Y16_N8
ix59917z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_71_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_2_7_aq) # ((!nx59917z1 & yes_uart_u_uart_reg_Dout_7_aq)))) # (!u_lab3_reg_state_2_aq & (!nx59917z1 & (yes_uart_u_uart_reg_Dout_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => nx59917z1,
	datac => yes_uart_u_uart_reg_Dout_7_aq,
	datad => u_lab3_reg_subtrahend_2_7_aq,
	combout => u_lab3_minuend_1n10ss1_71_a);

-- Location: LCCOMB_X25_Y12_N20
ix59917z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59917z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_not_minuend_1n1s2_2) # (!u_lab3_reg_state_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx11351z5,
	datab => u_lab3_reg_state_1_aq,
	datac => u_lab3_not_minuend_1n1s2_2,
	datad => nx41843z3,
	combout => nx59917z2);

-- Location: FF_X25_Y16_N9
u_lab3_reg_minuend_2_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_71_a,
	ena => nx59917z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_2_7_aq);

-- Location: LCCOMB_X14_Y16_N4
ix54782z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx54782z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_3) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_RxRDYi_aq,
	datab => u_lab3_reg_state_0_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => u_lab3_not_minuend_1n1s2_3,
	combout => nx54782z1);

-- Location: LCCOMB_X14_Y16_N30
ix54782z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_103_a = (nx54782z1 & (u_lab3_reg_subtrahend_3_7_aq & (u_lab3_reg_state_2_aq))) # (!nx54782z1 & ((yes_uart_u_uart_reg_Dout_7_aq) # ((u_lab3_reg_subtrahend_3_7_aq & u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx54782z1,
	datab => u_lab3_reg_subtrahend_3_7_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => yes_uart_u_uart_reg_Dout_7_aq,
	combout => u_lab3_minuend_1n10ss1_103_a);

-- Location: LCCOMB_X14_Y16_N8
ix54782z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx54782z2 = (!nx41843z3 & (!nx11351z5 & ((!u_lab3_not_minuend_1n1s2_3) # (!u_lab3_reg_state_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_not_minuend_1n1s2_3,
	datac => nx41843z3,
	datad => nx11351z5,
	combout => nx54782z2);

-- Location: FF_X14_Y16_N31
u_lab3_reg_minuend_3_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_103_a,
	ena => nx54782z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_3_7_aq);

-- Location: LCCOMB_X22_Y15_N10
ix46976z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z2 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx46976z3 & ((u_lab3_reg_minuend_3_7_aq))) # (!nx46976z3 & (u_lab3_reg_minuend_2_7_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (nx46976z3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => nx46976z3,
	datac => u_lab3_reg_minuend_2_7_aq,
	datad => u_lab3_reg_minuend_3_7_aq,
	combout => nx46976z2);

-- Location: LCCOMB_X22_Y15_N8
ix46976z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z1 = (u_lab3_modgen_counter_column_areg_q_2_aq & ((u_lab3_modgen_counter_column_areg_q_3_aq) # ((nx46976z4)))) # (!u_lab3_modgen_counter_column_areg_q_2_aq & (!u_lab3_modgen_counter_column_areg_q_3_aq & ((nx46976z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_2_aq,
	datab => u_lab3_modgen_counter_column_areg_q_3_aq,
	datac => nx46976z4,
	datad => nx46976z2,
	combout => nx46976z1);

-- Location: LCCOMB_X24_Y13_N26
ix32358z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx32358z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_12) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_not_minuend_1n1s2_12,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_state_0_aq,
	datad => yes_uart_u_uart_reg_RxRDYi_aq,
	combout => nx32358z1);

-- Location: LCCOMB_X24_Y13_N20
ix32358z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_391_a = (nx32358z1 & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_12_7_aq)))) # (!nx32358z1 & ((yes_uart_u_uart_reg_Dout_7_aq) # ((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_12_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx32358z1,
	datab => yes_uart_u_uart_reg_Dout_7_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => u_lab3_reg_subtrahend_12_7_aq,
	combout => u_lab3_minuend_1n10ss1_391_a);

-- Location: LCCOMB_X24_Y13_N6
ix32358z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx32358z2 = (!nx41843z3 & (!nx11351z5 & ((!u_lab3_reg_state_1_aq) # (!u_lab3_not_minuend_1n1s2_12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_not_minuend_1n1s2_12,
	datab => u_lab3_reg_state_1_aq,
	datac => nx41843z3,
	datad => nx11351z5,
	combout => nx32358z2);

-- Location: FF_X24_Y13_N21
u_lab3_reg_minuend_12_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_391_a,
	ena => nx32358z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_12_7_aq);

-- Location: LCCOMB_X25_Y12_N22
ix37493z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37493z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_13) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_state_0_aq,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => u_lab3_not_minuend_1n1s2_13,
	combout => nx37493z1);

-- Location: LCCOMB_X27_Y12_N16
ix37493z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_423_a = (u_lab3_reg_subtrahend_13_7_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_7_aq & !nx37493z1)))) # (!u_lab3_reg_subtrahend_13_7_aq & (yes_uart_u_uart_reg_Dout_7_aq & (!nx37493z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_13_7_aq,
	datab => yes_uart_u_uart_reg_Dout_7_aq,
	datac => nx37493z1,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_423_a);

-- Location: LCCOMB_X27_Y12_N26
ix37493z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37493z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_reg_state_1_aq) # (!u_lab3_not_minuend_1n1s2_13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx11351z5,
	datab => u_lab3_not_minuend_1n1s2_13,
	datac => u_lab3_reg_state_1_aq,
	datad => nx41843z3,
	combout => nx37493z2);

-- Location: FF_X27_Y12_N17
u_lab3_reg_minuend_13_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_423_a,
	ena => nx37493z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_13_7_aq);

-- Location: LCCOMB_X24_Y13_N8
ix46976z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z9 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_13_7_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_12_7_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_12_7_aq,
	datac => u_lab3_modgen_counter_column_areg_q_0_aq,
	datad => u_lab3_reg_minuend_13_7_aq,
	combout => nx46976z9);

-- Location: LCCOMB_X18_Y16_N28
ix47763z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx47763z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((!nx63348z13) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_state_0_aq,
	datac => yes_uart_u_uart_reg_RxRDYi_aq,
	datad => nx63348z13,
	combout => nx47763z1);

-- Location: LCCOMB_X22_Y12_N30
ix47763z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_487_a = (yes_uart_u_uart_reg_Dout_7_aq & (((u_lab3_reg_subtrahend_15_7_aq & u_lab3_reg_state_2_aq)) # (!nx47763z1))) # (!yes_uart_u_uart_reg_Dout_7_aq & (u_lab3_reg_subtrahend_15_7_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datab => u_lab3_reg_subtrahend_15_7_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx47763z1,
	combout => u_lab3_minuend_1n10ss1_487_a);

-- Location: LCCOMB_X18_Y16_N14
ix47763z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx47763z2 = (!nx11351z5 & (!nx41843z3 & ((nx63348z13) # (!u_lab3_reg_state_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => nx63348z13,
	datac => nx11351z5,
	datad => nx41843z3,
	combout => nx47763z2);

-- Location: FF_X22_Y12_N31
u_lab3_reg_minuend_15_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_487_a,
	ena => nx47763z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_15_7_aq);

-- Location: LCCOMB_X25_Y15_N6
ix42628z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx42628z1 = (u_lab3_reg_state_2_aq) # ((!u_lab3_reg_state_0_aq & ((u_lab3_not_minuend_1n1s2_14) # (!yes_uart_u_uart_reg_RxRDYi_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_RxRDYi_aq,
	datab => u_lab3_reg_state_0_aq,
	datac => u_lab3_not_minuend_1n1s2_14,
	datad => u_lab3_reg_state_2_aq,
	combout => nx42628z1);

-- Location: LCCOMB_X27_Y12_N20
ix42628z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_455_a = (u_lab3_reg_subtrahend_14_7_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_7_aq & !nx42628z1)))) # (!u_lab3_reg_subtrahend_14_7_aq & (((yes_uart_u_uart_reg_Dout_7_aq & !nx42628z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_14_7_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_Dout_7_aq,
	datad => nx42628z1,
	combout => u_lab3_minuend_1n10ss1_455_a);

-- Location: LCCOMB_X24_Y12_N2
ix42628z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx42628z2 = (!nx11351z5 & (!nx41843z3 & ((!u_lab3_not_minuend_1n1s2_14) # (!u_lab3_reg_state_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => nx11351z5,
	datac => nx41843z3,
	datad => u_lab3_not_minuend_1n1s2_14,
	combout => nx42628z2);

-- Location: FF_X27_Y12_N21
u_lab3_reg_minuend_14_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_455_a,
	ena => nx42628z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_14_7_aq);

-- Location: LCCOMB_X24_Y13_N10
ix46976z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46976z8 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx46976z9 & (u_lab3_reg_minuend_15_7_aq)) # (!nx46976z9 & ((u_lab3_reg_minuend_14_7_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (nx46976z9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => nx46976z9,
	datac => u_lab3_reg_minuend_15_7_aq,
	datad => u_lab3_reg_minuend_14_7_aq,
	combout => nx46976z8);

-- Location: LCCOMB_X22_Y15_N20
ix46976z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f1(7) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx46976z1 & ((nx46976z8))) # (!nx46976z1 & (nx46976z6)))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx46976z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => nx46976z6,
	datac => nx46976z1,
	datad => nx46976z8,
	combout => u_lab3_p_1n7s3f1(7));

-- Location: FF_X23_Y12_N23
u_lab3_reg_addend_15_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16929z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_15_6_aq);

-- Location: LCCOMB_X22_Y12_N10
ix12004z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12004z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_6_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_15_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_6_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_15_6_aq,
	combout => nx12004z1);

-- Location: FF_X22_Y12_N11
u_lab3_reg_subtrahend_15_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx12004z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx13001z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_15_6_aq);

-- Location: FF_X28_Y14_N23
u_lab3_reg_addend_14_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx22064z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_14_6_aq);

-- Location: LCCOMB_X27_Y14_N18
ix17139z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17139z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_6_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_14_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_6_aq,
	datad => u_lab3_reg_addend_14_6_aq,
	combout => nx17139z1);

-- Location: FF_X27_Y14_N19
u_lab3_reg_subtrahend_14_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx17139z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx18136z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_14_6_aq);

-- Location: FF_X23_Y12_N13
u_lab3_reg_addend_12_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx32334z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_12_6_aq);

-- Location: LCCOMB_X24_Y13_N28
ix27409z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx27409z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_6_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_12_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_12_6_aq,
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_6_aq,
	combout => nx27409z1);

-- Location: FF_X24_Y13_N29
u_lab3_reg_subtrahend_12_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx27409z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx28406z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_12_6_aq);

-- Location: FF_X28_Y14_N21
u_lab3_reg_addend_13_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx27199z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_13_6_aq);

-- Location: LCCOMB_X25_Y12_N16
ix22274z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22274z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_6_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_13_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_6_aq,
	datad => u_lab3_reg_addend_13_6_aq,
	combout => nx22274z1);

-- Location: FF_X25_Y12_N17
u_lab3_reg_subtrahend_13_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx22274z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx23271z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_13_6_aq);

-- Location: LCCOMB_X24_Y13_N14
ix63307z7114 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z18 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_13_6_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_12_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_12_6_aq,
	datac => u_lab3_modgen_counter_column_areg_q_0_aq,
	datad => u_lab3_reg_subtrahend_13_6_aq,
	combout => nx63307z18);

-- Location: LCCOMB_X22_Y13_N12
ix63307z7113 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z17 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx63307z18 & (u_lab3_reg_subtrahend_15_6_aq)) # (!nx63307z18 & ((u_lab3_reg_subtrahend_14_6_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx63307z18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_15_6_aq,
	datac => u_lab3_reg_subtrahend_14_6_aq,
	datad => nx63307z18,
	combout => nx63307z17);

-- Location: FF_X24_Y15_N23
u_lab3_reg_addend_7_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx11366z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_7_6_aq);

-- Location: LCCOMB_X19_Y19_N0
ix39945z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx39945z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_6_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_7_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_6_aq,
	datad => u_lab3_reg_addend_7_6_aq,
	combout => nx39945z1);

-- Location: FF_X19_Y19_N1
u_lab3_reg_subtrahend_7_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx39945z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx40942z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_7_6_aq);

-- Location: FF_X19_Y14_N21
u_lab3_reg_addend_6_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16501z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_6_6_aq);

-- Location: LCCOMB_X18_Y12_N10
ix45080z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx45080z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_6_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_6_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_6_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_6_6_aq,
	combout => nx45080z1);

-- Location: FF_X18_Y12_N11
u_lab3_reg_subtrahend_6_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx45080z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx46077z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_6_6_aq);

-- Location: FF_X16_Y16_N5
u_lab3_reg_addend_4_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx26771z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_4_6_aq);

-- Location: LCCOMB_X24_Y16_N2
ix55350z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55350z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_6_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_4_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_4_6_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => yes_uart_u_uart_reg_Dout_6_aq,
	combout => nx55350z1);

-- Location: FF_X24_Y16_N3
u_lab3_reg_subtrahend_4_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx55350z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx56347z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_4_6_aq);

-- Location: FF_X22_Y17_N13
u_lab3_reg_addend_5_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx21636z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_5_6_aq);

-- Location: LCCOMB_X19_Y17_N16
ix50215z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx50215z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_6_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_5_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => yes_uart_u_uart_reg_Dout_6_aq,
	datac => u_lab3_reg_addend_5_6_aq,
	combout => nx50215z1);

-- Location: FF_X19_Y17_N17
u_lab3_reg_subtrahend_5_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx50215z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx51212z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_5_6_aq);

-- Location: LCCOMB_X22_Y13_N28
ix63307z7110 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z14 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_5_6_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_4_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_4_6_aq,
	datac => u_lab3_reg_subtrahend_5_6_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx63307z14);

-- Location: LCCOMB_X22_Y13_N22
ix63307z7109 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z13 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx63307z14 & (u_lab3_reg_subtrahend_7_6_aq)) # (!nx63307z14 & ((u_lab3_reg_subtrahend_6_6_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx63307z14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_7_6_aq,
	datac => u_lab3_reg_subtrahend_6_6_aq,
	datad => nx63307z14,
	combout => nx63307z13);

-- Location: FF_X24_Y18_N21
u_lab3_reg_addend_2_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37041z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_2_6_aq);

-- Location: LCCOMB_X25_Y16_N18
ix84z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx84z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_6_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_2_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_6_aq,
	datad => u_lab3_reg_addend_2_6_aq,
	combout => nx84z1);

-- Location: FF_X25_Y16_N19
u_lab3_reg_subtrahend_2_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx84z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx1081z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_2_6_aq);

-- Location: FF_X15_Y17_N31
u_lab3_reg_addend_3_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx31906z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_3_6_aq);

-- Location: LCCOMB_X14_Y16_N2
ix60485z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60485z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_6_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_3_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_6_aq,
	datac => u_lab3_reg_addend_3_6_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx60485z1);

-- Location: FF_X14_Y16_N3
u_lab3_reg_subtrahend_3_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx60485z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx61482z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_3_6_aq);

-- Location: FF_X15_Y17_N29
u_lab3_reg_addend_0_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx47311z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_0_6_aq);

-- Location: LCCOMB_X20_Y17_N2
ix10354z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx10354z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_6_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_0_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_6_aq,
	datab => u_lab3_reg_state_1_aq,
	datac => u_lab3_reg_addend_0_6_aq,
	combout => nx10354z1);

-- Location: FF_X20_Y17_N3
u_lab3_reg_subtrahend_0_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx10354z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx11351z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_0_6_aq);

-- Location: FF_X24_Y15_N5
u_lab3_reg_addend_1_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42176z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_1_6_aq);

-- Location: LCCOMB_X25_Y15_N20
ix5219z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx5219z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_6_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_1_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_reg_addend_1_6_aq,
	datac => yes_uart_u_uart_reg_Dout_6_aq,
	combout => nx5219z1);

-- Location: FF_X25_Y15_N21
u_lab3_reg_subtrahend_1_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx5219z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx6216z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_1_6_aq);

-- Location: LCCOMB_X22_Y13_N24
ix63307z7108 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z12 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_1_6_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_0_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_subtrahend_0_6_aq,
	datad => u_lab3_reg_subtrahend_1_6_aq,
	combout => nx63307z12);

-- Location: LCCOMB_X22_Y13_N10
ix63307z7107 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z11 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx63307z12 & ((u_lab3_reg_subtrahend_3_6_aq))) # (!nx63307z12 & (u_lab3_reg_subtrahend_2_6_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx63307z12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_2_6_aq,
	datac => u_lab3_reg_subtrahend_3_6_aq,
	datad => nx63307z12,
	combout => nx63307z11);

-- Location: LCCOMB_X22_Y13_N8
ix63307z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z10 = (u_lab3_modgen_counter_column_areg_q_2_aq & ((u_lab3_modgen_counter_column_areg_q_3_aq) # ((nx63307z13)))) # (!u_lab3_modgen_counter_column_areg_q_2_aq & (!u_lab3_modgen_counter_column_areg_q_3_aq & ((nx63307z11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_2_aq,
	datab => u_lab3_modgen_counter_column_areg_q_3_aq,
	datac => nx63307z13,
	datad => nx63307z11,
	combout => nx63307z10);

-- Location: FF_X24_Y18_N23
u_lab3_reg_addend_10_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42604z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_10_6_aq);

-- Location: LCCOMB_X22_Y14_N10
ix37679z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37679z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_6_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_10_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_6_aq,
	datad => u_lab3_reg_addend_10_6_aq,
	combout => nx37679z1);

-- Location: FF_X22_Y14_N11
u_lab3_reg_subtrahend_10_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx37679z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx38676z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_10_6_aq);

-- Location: FF_X22_Y17_N31
u_lab3_reg_addend_11_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37469z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_11_6_aq);

-- Location: LCCOMB_X20_Y16_N26
ix32544z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx32544z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_6_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_11_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_6_aq,
	datad => u_lab3_reg_addend_11_6_aq,
	combout => nx32544z1);

-- Location: FF_X20_Y16_N27
u_lab3_reg_subtrahend_11_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx32544z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx33541z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_11_6_aq);

-- Location: FF_X16_Y16_N31
u_lab3_reg_addend_9_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx64440z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_9_6_aq);

-- Location: LCCOMB_X16_Y15_N24
ix35861z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx35861z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_6_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_9_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_6_aq,
	datac => u_lab3_reg_addend_9_6_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx35861z1);

-- Location: FF_X16_Y15_N25
u_lab3_reg_subtrahend_9_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx35861z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx34864z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_9_6_aq);

-- Location: FF_X19_Y14_N23
u_lab3_reg_addend_8_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_6_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx6231z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_8_6_aq);

-- Location: LCCOMB_X18_Y17_N16
ix30726z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx30726z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_6_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_8_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_6_aq,
	datad => u_lab3_reg_addend_8_6_aq,
	combout => nx30726z1);

-- Location: FF_X18_Y17_N17
u_lab3_reg_subtrahend_8_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx30726z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx29729z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_8_6_aq);

-- Location: LCCOMB_X18_Y15_N18
ix63307z7112 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z16 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_9_6_aq) # ((u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (((!u_lab3_modgen_counter_column_areg_q_1_aq & 
-- u_lab3_reg_subtrahend_8_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_reg_subtrahend_9_6_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_reg_subtrahend_8_6_aq,
	combout => nx63307z16);

-- Location: LCCOMB_X22_Y13_N2
ix63307z7111 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z15 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx63307z16 & ((u_lab3_reg_subtrahend_11_6_aq))) # (!nx63307z16 & (u_lab3_reg_subtrahend_10_6_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx63307z16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_10_6_aq,
	datac => u_lab3_reg_subtrahend_11_6_aq,
	datad => nx63307z16,
	combout => nx63307z15);

-- Location: LCCOMB_X22_Y13_N6
ix63307z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f2(6) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx63307z10 & (nx63307z17)) # (!nx63307z10 & ((nx63307z15))))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx63307z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63307z17,
	datab => u_lab3_modgen_counter_column_areg_q_3_aq,
	datac => nx63307z10,
	datad => nx63307z15,
	combout => u_lab3_p_1n7s3f2(6));

-- Location: LCCOMB_X27_Y12_N8
ix43625z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_454_a = (nx42628z1 & (((u_lab3_reg_subtrahend_14_6_aq & u_lab3_reg_state_2_aq)))) # (!nx42628z1 & ((yes_uart_u_uart_reg_Dout_6_aq) # ((u_lab3_reg_subtrahend_14_6_aq & u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx42628z1,
	datab => yes_uart_u_uart_reg_Dout_6_aq,
	datac => u_lab3_reg_subtrahend_14_6_aq,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_454_a);

-- Location: FF_X27_Y12_N9
u_lab3_reg_minuend_14_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_454_a,
	ena => nx42628z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_14_6_aq);

-- Location: LCCOMB_X24_Y13_N0
ix33355z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_390_a = (yes_uart_u_uart_reg_Dout_6_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_12_6_aq)) # (!nx32358z1))) # (!yes_uart_u_uart_reg_Dout_6_aq & (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_12_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_6_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => nx32358z1,
	datad => u_lab3_reg_subtrahend_12_6_aq,
	combout => u_lab3_minuend_1n10ss1_390_a);

-- Location: FF_X24_Y13_N1
u_lab3_reg_minuend_12_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_390_a,
	ena => nx32358z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_12_6_aq);

-- Location: LCCOMB_X27_Y12_N14
ix38490z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_422_a = (nx37493z1 & (u_lab3_reg_state_2_aq & (u_lab3_reg_subtrahend_13_6_aq))) # (!nx37493z1 & ((yes_uart_u_uart_reg_Dout_6_aq) # ((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_13_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx37493z1,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_subtrahend_13_6_aq,
	datad => yes_uart_u_uart_reg_Dout_6_aq,
	combout => u_lab3_minuend_1n10ss1_422_a);

-- Location: FF_X27_Y12_N15
u_lab3_reg_minuend_13_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_422_a,
	ena => nx37493z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_13_6_aq);

-- Location: LCCOMB_X20_Y14_N22
ix63307z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z9 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_modgen_counter_column_areg_q_1_aq) # ((u_lab3_reg_minuend_13_6_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (!u_lab3_modgen_counter_column_areg_q_1_aq & 
-- (u_lab3_reg_minuend_12_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_minuend_12_6_aq,
	datad => u_lab3_reg_minuend_13_6_aq,
	combout => nx63307z9);

-- Location: LCCOMB_X22_Y12_N16
ix48760z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_486_a = (nx47763z1 & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_15_6_aq)))) # (!nx47763z1 & ((yes_uart_u_uart_reg_Dout_6_aq) # ((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_15_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx47763z1,
	datab => yes_uart_u_uart_reg_Dout_6_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => u_lab3_reg_subtrahend_15_6_aq,
	combout => u_lab3_minuend_1n10ss1_486_a);

-- Location: FF_X22_Y12_N17
u_lab3_reg_minuend_15_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_486_a,
	ena => nx47763z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_15_6_aq);

-- Location: LCCOMB_X20_Y14_N8
ix63307z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z8 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx63307z9 & ((u_lab3_reg_minuend_15_6_aq))) # (!nx63307z9 & (u_lab3_reg_minuend_14_6_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx63307z9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_14_6_aq,
	datac => nx63307z9,
	datad => u_lab3_reg_minuend_15_6_aq,
	combout => nx63307z8);

-- Location: LCCOMB_X22_Y14_N8
ix23085z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_326_a = (u_lab3_reg_subtrahend_10_6_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_6_aq & !nx22088z1)))) # (!u_lab3_reg_subtrahend_10_6_aq & (yes_uart_u_uart_reg_Dout_6_aq & ((!nx22088z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_10_6_aq,
	datab => yes_uart_u_uart_reg_Dout_6_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx22088z1,
	combout => u_lab3_minuend_1n10ss1_326_a);

-- Location: FF_X22_Y14_N9
u_lab3_reg_minuend_10_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_326_a,
	ena => nx22088z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_10_6_aq);

-- Location: LCCOMB_X20_Y16_N18
ix28220z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_358_a = (yes_uart_u_uart_reg_Dout_6_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_11_6_aq)) # (!nx27223z1))) # (!yes_uart_u_uart_reg_Dout_6_aq & (u_lab3_reg_state_2_aq & (u_lab3_reg_subtrahend_11_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_6_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_subtrahend_11_6_aq,
	datad => nx27223z1,
	combout => u_lab3_minuend_1n10ss1_358_a);

-- Location: FF_X20_Y16_N19
u_lab3_reg_minuend_11_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_358_a,
	ena => nx27223z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_11_6_aq);

-- Location: LCCOMB_X18_Y15_N2
ix37426z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_262_a = (yes_uart_u_uart_reg_Dout_6_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_8_6_aq)) # (!nx36429z1))) # (!yes_uart_u_uart_reg_Dout_6_aq & (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_8_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_6_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => nx36429z1,
	datad => u_lab3_reg_subtrahend_8_6_aq,
	combout => u_lab3_minuend_1n10ss1_262_a);

-- Location: FF_X18_Y15_N3
u_lab3_reg_minuend_8_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_262_a,
	ena => nx36429z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_8_6_aq);

-- Location: LCCOMB_X18_Y15_N4
ix42561z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_294_a = (yes_uart_u_uart_reg_Dout_6_aq & (((u_lab3_reg_subtrahend_9_6_aq & u_lab3_reg_state_2_aq)) # (!nx41564z1))) # (!yes_uart_u_uart_reg_Dout_6_aq & (u_lab3_reg_subtrahend_9_6_aq & ((u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_6_aq,
	datab => u_lab3_reg_subtrahend_9_6_aq,
	datac => nx41564z1,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_294_a);

-- Location: FF_X18_Y15_N5
u_lab3_reg_minuend_9_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_294_a,
	ena => nx41564z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_9_6_aq);

-- Location: LCCOMB_X20_Y14_N26
ix63307z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z7 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_modgen_counter_column_areg_q_1_aq) # ((u_lab3_reg_minuend_9_6_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (!u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_reg_minuend_8_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_minuend_8_6_aq,
	datad => u_lab3_reg_minuend_9_6_aq,
	combout => nx63307z7);

-- Location: LCCOMB_X20_Y14_N4
ix63307z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z6 = (nx63307z7 & (((u_lab3_reg_minuend_11_6_aq) # (!u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!nx63307z7 & (u_lab3_reg_minuend_10_6_aq & ((u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_10_6_aq,
	datab => u_lab3_reg_minuend_11_6_aq,
	datac => nx63307z7,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx63307z6);

-- Location: LCCOMB_X20_Y14_N10
ix22021z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_166_a = (u_lab3_reg_subtrahend_5_6_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_6_aq & !nx21024z1)))) # (!u_lab3_reg_subtrahend_5_6_aq & (((yes_uart_u_uart_reg_Dout_6_aq & !nx21024z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_5_6_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_Dout_6_aq,
	datad => nx21024z1,
	combout => u_lab3_minuend_1n10ss1_166_a);

-- Location: FF_X20_Y14_N11
u_lab3_reg_minuend_5_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_166_a,
	ena => nx21024z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_5_6_aq);

-- Location: LCCOMB_X20_Y14_N24
ix16886z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_134_a = (u_lab3_reg_subtrahend_4_6_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_6_aq & !nx15889z1)))) # (!u_lab3_reg_subtrahend_4_6_aq & (((yes_uart_u_uart_reg_Dout_6_aq & !nx15889z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_4_6_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_Dout_6_aq,
	datad => nx15889z1,
	combout => u_lab3_minuend_1n10ss1_134_a);

-- Location: FF_X20_Y14_N25
u_lab3_reg_minuend_4_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_134_a,
	ena => nx15889z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_4_6_aq);

-- Location: LCCOMB_X20_Y14_N12
ix63307z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z5 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_5_6_aq) # ((u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_minuend_4_6_aq & 
-- !u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_5_6_aq,
	datab => u_lab3_reg_minuend_4_6_aq,
	datac => u_lab3_modgen_counter_column_areg_q_0_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx63307z5);

-- Location: LCCOMB_X19_Y19_N30
ix32291z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_230_a = (yes_uart_u_uart_reg_Dout_6_aq & (((u_lab3_reg_subtrahend_7_6_aq & u_lab3_reg_state_2_aq)) # (!nx31294z1))) # (!yes_uart_u_uart_reg_Dout_6_aq & (u_lab3_reg_subtrahend_7_6_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_6_aq,
	datab => u_lab3_reg_subtrahend_7_6_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx31294z1,
	combout => u_lab3_minuend_1n10ss1_230_a);

-- Location: FF_X19_Y19_N31
u_lab3_reg_minuend_7_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_230_a,
	ena => nx31294z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_7_6_aq);

-- Location: LCCOMB_X18_Y12_N26
ix27156z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_198_a = (u_lab3_reg_subtrahend_6_6_aq & ((u_lab3_reg_state_2_aq) # ((!nx26159z1 & yes_uart_u_uart_reg_Dout_6_aq)))) # (!u_lab3_reg_subtrahend_6_6_aq & (!nx26159z1 & (yes_uart_u_uart_reg_Dout_6_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_6_6_aq,
	datab => nx26159z1,
	datac => yes_uart_u_uart_reg_Dout_6_aq,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_198_a);

-- Location: FF_X18_Y12_N27
u_lab3_reg_minuend_6_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_198_a,
	ena => nx26159z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_6_6_aq);

-- Location: LCCOMB_X20_Y14_N6
ix63307z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z4 = (nx63307z5 & ((u_lab3_reg_minuend_7_6_aq) # ((!u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!nx63307z5 & (((u_lab3_reg_minuend_6_6_aq & u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63307z5,
	datab => u_lab3_reg_minuend_7_6_aq,
	datac => u_lab3_reg_minuend_6_6_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx63307z4);

-- Location: LCCOMB_X14_Y16_N18
ix53785z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_102_a = (nx54782z1 & (u_lab3_reg_subtrahend_3_6_aq & (u_lab3_reg_state_2_aq))) # (!nx54782z1 & ((yes_uart_u_uart_reg_Dout_6_aq) # ((u_lab3_reg_subtrahend_3_6_aq & u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx54782z1,
	datab => u_lab3_reg_subtrahend_3_6_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => yes_uart_u_uart_reg_Dout_6_aq,
	combout => u_lab3_minuend_1n10ss1_102_a);

-- Location: FF_X14_Y16_N19
u_lab3_reg_minuend_3_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_102_a,
	ena => nx54782z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_3_6_aq);

-- Location: LCCOMB_X25_Y16_N26
ix58920z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_70_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_2_6_aq) # ((yes_uart_u_uart_reg_Dout_6_aq & !nx59917z1)))) # (!u_lab3_reg_state_2_aq & (((yes_uart_u_uart_reg_Dout_6_aq & !nx59917z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_subtrahend_2_6_aq,
	datac => yes_uart_u_uart_reg_Dout_6_aq,
	datad => nx59917z1,
	combout => u_lab3_minuend_1n10ss1_70_a);

-- Location: FF_X25_Y16_N27
u_lab3_reg_minuend_2_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_70_a,
	ena => nx59917z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_2_6_aq);

-- Location: LCCOMB_X22_Y13_N0
ix3654z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_6_a = (nx4651z1 & (u_lab3_reg_subtrahend_0_6_aq & (u_lab3_reg_state_2_aq))) # (!nx4651z1 & ((yes_uart_u_uart_reg_Dout_6_aq) # ((u_lab3_reg_subtrahend_0_6_aq & u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx4651z1,
	datab => u_lab3_reg_subtrahend_0_6_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => yes_uart_u_uart_reg_Dout_6_aq,
	combout => u_lab3_minuend_1n10ss1_6_a);

-- Location: FF_X22_Y13_N1
u_lab3_reg_minuend_0_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_6_a,
	ena => nx4651z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_0_6_aq);

-- Location: LCCOMB_X22_Y13_N26
ix64055z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_38_a = (u_lab3_reg_subtrahend_1_6_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_6_aq & !nx65052z1)))) # (!u_lab3_reg_subtrahend_1_6_aq & (yes_uart_u_uart_reg_Dout_6_aq & ((!nx65052z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_1_6_aq,
	datab => yes_uart_u_uart_reg_Dout_6_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx65052z1,
	combout => u_lab3_minuend_1n10ss1_38_a);

-- Location: FF_X22_Y13_N27
u_lab3_reg_minuend_1_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_38_a,
	ena => nx65052z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_1_6_aq);

-- Location: LCCOMB_X20_Y14_N0
ix63307z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z3 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_1_6_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_0_6_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_0_6_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_minuend_1_6_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx63307z3);

-- Location: LCCOMB_X20_Y14_N2
ix63307z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z2 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx63307z3 & (u_lab3_reg_minuend_3_6_aq)) # (!nx63307z3 & ((u_lab3_reg_minuend_2_6_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx63307z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_3_6_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_minuend_2_6_aq,
	datad => nx63307z3,
	combout => nx63307z2);

-- Location: LCCOMB_X20_Y14_N16
ix63307z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63307z1 = (u_lab3_modgen_counter_column_areg_q_2_aq & ((nx63307z4) # ((u_lab3_modgen_counter_column_areg_q_3_aq)))) # (!u_lab3_modgen_counter_column_areg_q_2_aq & (((!u_lab3_modgen_counter_column_areg_q_3_aq & nx63307z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63307z4,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_3_aq,
	datad => nx63307z2,
	combout => nx63307z1);

-- Location: LCCOMB_X20_Y14_N18
ix63307z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f1(6) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx63307z1 & (nx63307z8)) # (!nx63307z1 & ((nx63307z6))))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx63307z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => nx63307z8,
	datac => nx63307z6,
	datad => nx63307z1,
	combout => u_lab3_p_1n7s3f1(6));

-- Location: LCCOMB_X15_Y13_N22
yes_uart_u_uart_reg_Rx_Reg_5_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- yes_uart_u_uart_reg_Rx_Reg_5_afeeder_combout = yes_uart_u_uart_reg_Rx_Reg_6_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => yes_uart_u_uart_reg_Rx_Reg_6_aq,
	combout => yes_uart_u_uart_reg_Rx_Reg_5_afeeder_combout);

-- Location: FF_X15_Y13_N23
yes_uart_u_uart_reg_Rx_Reg_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => yes_uart_u_uart_reg_Rx_Reg_5_afeeder_combout,
	clrn => reset_n_ainput_o,
	ena => nx2098z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Rx_Reg_5_aq);

-- Location: FF_X18_Y13_N23
yes_uart_u_uart_reg_Dout_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Rx_Reg_5_aq,
	clrn => reset_n_ainput_o,
	sload => VCC,
	ena => nx46463z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Dout_5_aq);

-- Location: FF_X22_Y17_N11
u_lab3_reg_addend_11_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37469z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_11_5_aq);

-- Location: LCCOMB_X20_Y16_N4
ix31547z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx31547z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_5_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_11_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_5_aq,
	datad => u_lab3_reg_addend_11_5_aq,
	combout => nx31547z1);

-- Location: FF_X20_Y16_N5
u_lab3_reg_subtrahend_11_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx31547z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx33541z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_11_5_aq);

-- Location: FF_X24_Y18_N3
u_lab3_reg_addend_10_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42604z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_10_5_aq);

-- Location: LCCOMB_X22_Y16_N30
ix36682z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36682z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_5_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_10_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_5_aq,
	datac => u_lab3_reg_addend_10_5_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx36682z1);

-- Location: FF_X22_Y16_N31
u_lab3_reg_subtrahend_10_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx36682z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx38676z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_10_5_aq);

-- Location: FF_X19_Y14_N3
u_lab3_reg_addend_8_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx6231z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_8_5_aq);

-- Location: LCCOMB_X18_Y17_N10
ix31723z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx31723z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_5_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_8_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => yes_uart_u_uart_reg_Dout_5_aq,
	datad => u_lab3_reg_addend_8_5_aq,
	combout => nx31723z1);

-- Location: FF_X18_Y17_N11
u_lab3_reg_subtrahend_8_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx31723z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx29729z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_8_5_aq);

-- Location: FF_X16_Y16_N27
u_lab3_reg_addend_9_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx64440z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_9_5_aq);

-- Location: LCCOMB_X15_Y16_N4
ix36858z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36858z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_5_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_9_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_9_5_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => yes_uart_u_uart_reg_Dout_5_aq,
	combout => nx36858z1);

-- Location: FF_X15_Y16_N5
u_lab3_reg_subtrahend_9_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx36858z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx34864z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_9_5_aq);

-- Location: LCCOMB_X22_Y16_N20
ix33377z7112 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z16 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_9_5_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_8_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_subtrahend_8_5_aq,
	datad => u_lab3_reg_subtrahend_9_5_aq,
	combout => nx33377z16);

-- Location: LCCOMB_X22_Y16_N16
ix33377z7111 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z15 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx33377z16 & (u_lab3_reg_subtrahend_11_5_aq)) # (!nx33377z16 & ((u_lab3_reg_subtrahend_10_5_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx33377z16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_11_5_aq,
	datac => u_lab3_reg_subtrahend_10_5_aq,
	datad => nx33377z16,
	combout => nx33377z15);

-- Location: FF_X24_Y15_N11
u_lab3_reg_addend_7_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx11366z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_7_5_aq);

-- Location: LCCOMB_X19_Y19_N10
ix38948z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx38948z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_5_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_7_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_7_5_aq,
	datab => yes_uart_u_uart_reg_Dout_5_aq,
	datac => u_lab3_reg_state_1_aq,
	combout => nx38948z1);

-- Location: FF_X19_Y19_N11
u_lab3_reg_subtrahend_7_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx38948z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx40942z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_7_5_aq);

-- Location: FF_X19_Y14_N25
u_lab3_reg_addend_6_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16501z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_6_5_aq);

-- Location: LCCOMB_X18_Y12_N12
ix44083z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx44083z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_5_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_6_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_5_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_6_5_aq,
	combout => nx44083z1);

-- Location: FF_X18_Y12_N13
u_lab3_reg_subtrahend_6_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx44083z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx46077z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_6_5_aq);

-- Location: FF_X16_Y16_N25
u_lab3_reg_addend_4_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx26771z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_4_5_aq);

-- Location: LCCOMB_X24_Y16_N20
ix54353z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx54353z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_5_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_4_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_reg_addend_4_5_aq,
	datac => yes_uart_u_uart_reg_Dout_5_aq,
	combout => nx54353z1);

-- Location: FF_X24_Y16_N21
u_lab3_reg_subtrahend_4_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx54353z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx56347z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_4_5_aq);

-- Location: FF_X22_Y17_N1
u_lab3_reg_addend_5_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx21636z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_5_5_aq);

-- Location: LCCOMB_X19_Y17_N26
ix49218z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx49218z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_5_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_5_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => yes_uart_u_uart_reg_Dout_5_aq,
	datac => u_lab3_reg_addend_5_5_aq,
	combout => nx49218z1);

-- Location: FF_X19_Y17_N27
u_lab3_reg_subtrahend_5_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx49218z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx51212z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_5_5_aq);

-- Location: LCCOMB_X22_Y16_N6
ix33377z7110 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z14 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_5_5_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_4_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_subtrahend_4_5_aq,
	datad => u_lab3_reg_subtrahend_5_5_aq,
	combout => nx33377z14);

-- Location: LCCOMB_X22_Y16_N8
ix33377z7109 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z13 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx33377z14 & (u_lab3_reg_subtrahend_7_5_aq)) # (!nx33377z14 & ((u_lab3_reg_subtrahend_6_5_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx33377z14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_7_5_aq,
	datac => u_lab3_reg_subtrahend_6_5_aq,
	datad => nx33377z14,
	combout => nx33377z13);

-- Location: FF_X15_Y17_N27
u_lab3_reg_addend_3_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx31906z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_3_5_aq);

-- Location: LCCOMB_X14_Y16_N28
ix59488z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59488z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_5_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_3_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_reg_addend_3_5_aq,
	datad => yes_uart_u_uart_reg_Dout_5_aq,
	combout => nx59488z1);

-- Location: FF_X14_Y16_N29
u_lab3_reg_subtrahend_3_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx59488z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx61482z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_3_5_aq);

-- Location: FF_X24_Y18_N9
u_lab3_reg_addend_2_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37041z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_2_5_aq);

-- Location: LCCOMB_X25_Y16_N28
ix64623z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64623z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_5_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_2_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_5_aq,
	datac => u_lab3_reg_addend_2_5_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx64623z1);

-- Location: FF_X25_Y16_N29
u_lab3_reg_subtrahend_2_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx64623z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx1081z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_2_5_aq);

-- Location: FF_X15_Y17_N1
u_lab3_reg_addend_0_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx47311z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_0_5_aq);

-- Location: LCCOMB_X20_Y17_N28
ix9357z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx9357z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_5_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_0_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_5_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_0_5_aq,
	combout => nx9357z1);

-- Location: FF_X20_Y17_N29
u_lab3_reg_subtrahend_0_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx9357z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx11351z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_0_5_aq);

-- Location: FF_X24_Y15_N17
u_lab3_reg_addend_1_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42176z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_1_5_aq);

-- Location: LCCOMB_X25_Y15_N22
ix4222z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx4222z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_5_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_1_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_5_aq,
	datac => u_lab3_reg_addend_1_5_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx4222z1);

-- Location: FF_X25_Y15_N23
u_lab3_reg_subtrahend_1_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx4222z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx6216z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_1_5_aq);

-- Location: LCCOMB_X22_Y16_N10
ix33377z7108 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z12 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_1_5_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_0_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_subtrahend_0_5_aq,
	datad => u_lab3_reg_subtrahend_1_5_aq,
	combout => nx33377z12);

-- Location: LCCOMB_X22_Y16_N28
ix33377z7107 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z11 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx33377z12 & (u_lab3_reg_subtrahend_3_5_aq)) # (!nx33377z12 & ((u_lab3_reg_subtrahend_2_5_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx33377z12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_3_5_aq,
	datac => u_lab3_reg_subtrahend_2_5_aq,
	datad => nx33377z12,
	combout => nx33377z11);

-- Location: LCCOMB_X22_Y16_N26
ix33377z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z10 = (u_lab3_modgen_counter_column_areg_q_3_aq & (u_lab3_modgen_counter_column_areg_q_2_aq)) # (!u_lab3_modgen_counter_column_areg_q_3_aq & ((u_lab3_modgen_counter_column_areg_q_2_aq & (nx33377z13)) # (!u_lab3_modgen_counter_column_areg_q_2_aq & 
-- ((nx33377z11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => nx33377z13,
	datad => nx33377z11,
	combout => nx33377z10);

-- Location: FF_X23_Y12_N3
u_lab3_reg_addend_15_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16929z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_15_5_aq);

-- Location: LCCOMB_X24_Y12_N0
ix11007z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11007z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_5_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_15_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_5_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_15_5_aq,
	combout => nx11007z1);

-- Location: FF_X24_Y12_N1
u_lab3_reg_subtrahend_15_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx11007z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx13001z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_15_5_aq);

-- Location: FF_X28_Y14_N11
u_lab3_reg_addend_14_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx22064z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_14_5_aq);

-- Location: LCCOMB_X27_Y14_N28
ix16142z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16142z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_5_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_14_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_reg_addend_14_5_aq,
	datac => yes_uart_u_uart_reg_Dout_5_aq,
	combout => nx16142z1);

-- Location: FF_X27_Y14_N29
u_lab3_reg_subtrahend_14_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx16142z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx18136z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_14_5_aq);

-- Location: FF_X28_Y14_N25
u_lab3_reg_addend_13_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx27199z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_13_5_aq);

-- Location: LCCOMB_X27_Y13_N10
ix21277z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx21277z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_5_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_13_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_5_aq,
	datac => u_lab3_reg_addend_13_5_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx21277z1);

-- Location: FF_X27_Y13_N11
u_lab3_reg_subtrahend_13_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx21277z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx23271z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_13_5_aq);

-- Location: FF_X23_Y12_N1
u_lab3_reg_addend_12_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_5_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx32334z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_12_5_aq);

-- Location: LCCOMB_X27_Y13_N8
ix26412z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26412z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_5_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_12_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_5_aq,
	datad => u_lab3_reg_addend_12_5_aq,
	combout => nx26412z1);

-- Location: FF_X27_Y13_N9
u_lab3_reg_subtrahend_12_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx26412z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx28406z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_12_5_aq);

-- Location: LCCOMB_X27_Y13_N28
ix33377z7114 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z18 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_13_5_aq)) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_12_5_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_13_5_aq,
	datab => u_lab3_reg_subtrahend_12_5_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx33377z18);

-- Location: LCCOMB_X27_Y13_N30
ix33377z7113 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z17 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx33377z18 & (u_lab3_reg_subtrahend_15_5_aq)) # (!nx33377z18 & ((u_lab3_reg_subtrahend_14_5_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx33377z18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_15_5_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_subtrahend_14_5_aq,
	datad => nx33377z18,
	combout => nx33377z17);

-- Location: LCCOMB_X22_Y16_N18
ix33377z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f2(5) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx33377z10 & ((nx33377z17))) # (!nx33377z10 & (nx33377z15)))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx33377z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => nx33377z15,
	datac => nx33377z10,
	datad => nx33377z17,
	combout => u_lab3_p_1n7s3f2(5));

-- Location: LCCOMB_X27_Y12_N12
ix44622z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_453_a = (nx42628z1 & (u_lab3_reg_subtrahend_14_5_aq & ((u_lab3_reg_state_2_aq)))) # (!nx42628z1 & ((yes_uart_u_uart_reg_Dout_5_aq) # ((u_lab3_reg_subtrahend_14_5_aq & u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx42628z1,
	datab => u_lab3_reg_subtrahend_14_5_aq,
	datac => yes_uart_u_uart_reg_Dout_5_aq,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_453_a);

-- Location: FF_X27_Y12_N13
u_lab3_reg_minuend_14_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_453_a,
	ena => nx42628z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_14_5_aq);

-- Location: LCCOMB_X22_Y12_N2
ix49757z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_485_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_15_5_aq) # ((yes_uart_u_uart_reg_Dout_5_aq & !nx47763z1)))) # (!u_lab3_reg_state_2_aq & (yes_uart_u_uart_reg_Dout_5_aq & ((!nx47763z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => yes_uart_u_uart_reg_Dout_5_aq,
	datac => u_lab3_reg_subtrahend_15_5_aq,
	datad => nx47763z1,
	combout => u_lab3_minuend_1n10ss1_485_a);

-- Location: FF_X22_Y12_N3
u_lab3_reg_minuend_15_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_485_a,
	ena => nx47763z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_15_5_aq);

-- Location: LCCOMB_X24_Y13_N2
ix34352z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_389_a = (nx32358z1 & (u_lab3_reg_subtrahend_12_5_aq & (u_lab3_reg_state_2_aq))) # (!nx32358z1 & ((yes_uart_u_uart_reg_Dout_5_aq) # ((u_lab3_reg_subtrahend_12_5_aq & u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx32358z1,
	datab => u_lab3_reg_subtrahend_12_5_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => yes_uart_u_uart_reg_Dout_5_aq,
	combout => u_lab3_minuend_1n10ss1_389_a);

-- Location: FF_X24_Y13_N3
u_lab3_reg_minuend_12_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_389_a,
	ena => nx32358z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_12_5_aq);

-- Location: LCCOMB_X27_Y12_N2
ix39487z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_421_a = (nx37493z1 & (u_lab3_reg_subtrahend_13_5_aq & ((u_lab3_reg_state_2_aq)))) # (!nx37493z1 & ((yes_uart_u_uart_reg_Dout_5_aq) # ((u_lab3_reg_subtrahend_13_5_aq & u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx37493z1,
	datab => u_lab3_reg_subtrahend_13_5_aq,
	datac => yes_uart_u_uart_reg_Dout_5_aq,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_421_a);

-- Location: FF_X27_Y12_N3
u_lab3_reg_minuend_13_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_421_a,
	ena => nx37493z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_13_5_aq);

-- Location: LCCOMB_X19_Y16_N12
ix33377z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z9 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_13_5_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_12_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_12_5_aq,
	datac => u_lab3_modgen_counter_column_areg_q_0_aq,
	datad => u_lab3_reg_minuend_13_5_aq,
	combout => nx33377z9);

-- Location: LCCOMB_X19_Y16_N14
ix33377z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z8 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx33377z9 & ((u_lab3_reg_minuend_15_5_aq))) # (!nx33377z9 & (u_lab3_reg_minuend_14_5_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx33377z9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_14_5_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_minuend_15_5_aq,
	datad => nx33377z9,
	combout => nx33377z8);

-- Location: LCCOMB_X20_Y16_N20
ix29217z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_357_a = (yes_uart_u_uart_reg_Dout_5_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_11_5_aq)) # (!nx27223z1))) # (!yes_uart_u_uart_reg_Dout_5_aq & (u_lab3_reg_state_2_aq & (u_lab3_reg_subtrahend_11_5_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_5_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_subtrahend_11_5_aq,
	datad => nx27223z1,
	combout => u_lab3_minuend_1n10ss1_357_a);

-- Location: FF_X20_Y16_N21
u_lab3_reg_minuend_11_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_357_a,
	ena => nx27223z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_11_5_aq);

-- Location: LCCOMB_X22_Y14_N2
ix24082z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_325_a = (yes_uart_u_uart_reg_Dout_5_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_10_5_aq)) # (!nx22088z1))) # (!yes_uart_u_uart_reg_Dout_5_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_10_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_5_aq,
	datab => nx22088z1,
	datac => u_lab3_reg_state_2_aq,
	datad => u_lab3_reg_subtrahend_10_5_aq,
	combout => u_lab3_minuend_1n10ss1_325_a);

-- Location: FF_X22_Y14_N3
u_lab3_reg_minuend_10_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_325_a,
	ena => nx22088z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_10_5_aq);

-- Location: LCCOMB_X18_Y15_N30
ix38423z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_261_a = (yes_uart_u_uart_reg_Dout_5_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_8_5_aq)) # (!nx36429z1))) # (!yes_uart_u_uart_reg_Dout_5_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_8_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_5_aq,
	datab => nx36429z1,
	datac => u_lab3_reg_state_2_aq,
	datad => u_lab3_reg_subtrahend_8_5_aq,
	combout => u_lab3_minuend_1n10ss1_261_a);

-- Location: FF_X18_Y15_N31
u_lab3_reg_minuend_8_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_261_a,
	ena => nx36429z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_8_5_aq);

-- Location: LCCOMB_X19_Y16_N28
ix43558z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_293_a = (nx41564z1 & (u_lab3_reg_subtrahend_9_5_aq & (u_lab3_reg_state_2_aq))) # (!nx41564z1 & ((yes_uart_u_uart_reg_Dout_5_aq) # ((u_lab3_reg_subtrahend_9_5_aq & u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41564z1,
	datab => u_lab3_reg_subtrahend_9_5_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => yes_uart_u_uart_reg_Dout_5_aq,
	combout => u_lab3_minuend_1n10ss1_293_a);

-- Location: FF_X18_Y15_N29
u_lab3_reg_minuend_9_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_lab3_minuend_1n10ss1_293_a,
	sload => VCC,
	ena => nx41564z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_9_5_aq);

-- Location: LCCOMB_X18_Y15_N28
ix33377z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z7 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_9_5_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_8_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_8_5_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_minuend_9_5_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx33377z7);

-- Location: LCCOMB_X19_Y16_N26
ix33377z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z6 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx33377z7 & (u_lab3_reg_minuend_11_5_aq)) # (!nx33377z7 & ((u_lab3_reg_minuend_10_5_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx33377z7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_11_5_aq,
	datac => u_lab3_reg_minuend_10_5_aq,
	datad => nx33377z7,
	combout => nx33377z6);

-- Location: LCCOMB_X19_Y19_N8
ix33288z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_229_a = (u_lab3_reg_subtrahend_7_5_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_5_aq & !nx31294z1)))) # (!u_lab3_reg_subtrahend_7_5_aq & (yes_uart_u_uart_reg_Dout_5_aq & ((!nx31294z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_7_5_aq,
	datab => yes_uart_u_uart_reg_Dout_5_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx31294z1,
	combout => u_lab3_minuend_1n10ss1_229_a);

-- Location: FF_X19_Y19_N9
u_lab3_reg_minuend_7_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_229_a,
	ena => nx31294z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_7_5_aq);

-- Location: LCCOMB_X18_Y12_N28
ix28153z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_197_a = (u_lab3_reg_subtrahend_6_5_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_5_aq & !nx26159z1)))) # (!u_lab3_reg_subtrahend_6_5_aq & (yes_uart_u_uart_reg_Dout_5_aq & (!nx26159z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_6_5_aq,
	datab => yes_uart_u_uart_reg_Dout_5_aq,
	datac => nx26159z1,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_197_a);

-- Location: FF_X18_Y12_N29
u_lab3_reg_minuend_6_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_197_a,
	ena => nx26159z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_6_5_aq);

-- Location: LCCOMB_X24_Y16_N10
ix17883z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_133_a = (nx15889z1 & (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_4_5_aq)))) # (!nx15889z1 & ((yes_uart_u_uart_reg_Dout_5_aq) # ((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_4_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx15889z1,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_Dout_5_aq,
	datad => u_lab3_reg_subtrahend_4_5_aq,
	combout => u_lab3_minuend_1n10ss1_133_a);

-- Location: FF_X24_Y16_N11
u_lab3_reg_minuend_4_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_133_a,
	ena => nx15889z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_4_5_aq);

-- Location: LCCOMB_X24_Y16_N28
ix23018z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_165_a = (nx21024z1 & (u_lab3_reg_state_2_aq & (u_lab3_reg_subtrahend_5_5_aq))) # (!nx21024z1 & ((yes_uart_u_uart_reg_Dout_5_aq) # ((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_5_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx21024z1,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_subtrahend_5_5_aq,
	datad => yes_uart_u_uart_reg_Dout_5_aq,
	combout => u_lab3_minuend_1n10ss1_165_a);

-- Location: FF_X19_Y16_N5
u_lab3_reg_minuend_5_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_lab3_minuend_1n10ss1_165_a,
	sload => VCC,
	ena => nx21024z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_5_5_aq);

-- Location: LCCOMB_X19_Y16_N4
ix33377z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z5 = (u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_minuend_5_5_aq) # (u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_4_5_aq & 
-- ((!u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_reg_minuend_4_5_aq,
	datac => u_lab3_reg_minuend_5_5_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx33377z5);

-- Location: LCCOMB_X19_Y16_N30
ix33377z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z4 = (nx33377z5 & ((u_lab3_reg_minuend_7_5_aq) # ((!u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!nx33377z5 & (((u_lab3_reg_minuend_6_5_aq & u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_7_5_aq,
	datab => u_lab3_reg_minuend_6_5_aq,
	datac => nx33377z5,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx33377z4);

-- Location: LCCOMB_X25_Y16_N4
ix57923z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_69_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_2_5_aq) # ((yes_uart_u_uart_reg_Dout_5_aq & !nx59917z1)))) # (!u_lab3_reg_state_2_aq & (((yes_uart_u_uart_reg_Dout_5_aq & !nx59917z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_subtrahend_2_5_aq,
	datac => yes_uart_u_uart_reg_Dout_5_aq,
	datad => nx59917z1,
	combout => u_lab3_minuend_1n10ss1_69_a);

-- Location: FF_X25_Y16_N5
u_lab3_reg_minuend_2_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_69_a,
	ena => nx59917z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_2_5_aq);

-- Location: LCCOMB_X14_Y16_N20
ix52788z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_101_a = (u_lab3_reg_subtrahend_3_5_aq & ((u_lab3_reg_state_2_aq) # ((!nx54782z1 & yes_uart_u_uart_reg_Dout_5_aq)))) # (!u_lab3_reg_subtrahend_3_5_aq & (!nx54782z1 & ((yes_uart_u_uart_reg_Dout_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_3_5_aq,
	datab => nx54782z1,
	datac => u_lab3_reg_state_2_aq,
	datad => yes_uart_u_uart_reg_Dout_5_aq,
	combout => u_lab3_minuend_1n10ss1_101_a);

-- Location: FF_X14_Y16_N21
u_lab3_reg_minuend_3_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_101_a,
	ena => nx54782z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_3_5_aq);

-- Location: LCCOMB_X20_Y17_N12
ix2657z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_5_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_0_5_aq) # ((yes_uart_u_uart_reg_Dout_5_aq & !nx4651z1)))) # (!u_lab3_reg_state_2_aq & (((yes_uart_u_uart_reg_Dout_5_aq & !nx4651z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_subtrahend_0_5_aq,
	datac => yes_uart_u_uart_reg_Dout_5_aq,
	datad => nx4651z1,
	combout => u_lab3_minuend_1n10ss1_5_a);

-- Location: FF_X20_Y17_N13
u_lab3_reg_minuend_0_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_5_a,
	ena => nx4651z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_0_5_aq);

-- Location: LCCOMB_X25_Y15_N10
ix63058z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_37_a = (nx65052z1 & (u_lab3_reg_state_2_aq & (u_lab3_reg_subtrahend_1_5_aq))) # (!nx65052z1 & ((yes_uart_u_uart_reg_Dout_5_aq) # ((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_1_5_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx65052z1,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_subtrahend_1_5_aq,
	datad => yes_uart_u_uart_reg_Dout_5_aq,
	combout => u_lab3_minuend_1n10ss1_37_a);

-- Location: FF_X19_Y16_N25
u_lab3_reg_minuend_1_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_lab3_minuend_1n10ss1_37_a,
	sload => VCC,
	ena => nx65052z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_1_5_aq);

-- Location: LCCOMB_X19_Y16_N24
ix33377z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z3 = (u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_minuend_1_5_aq) # (u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_0_5_aq & 
-- ((!u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_reg_minuend_0_5_aq,
	datac => u_lab3_reg_minuend_1_5_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx33377z3);

-- Location: LCCOMB_X19_Y16_N10
ix33377z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z2 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx33377z3 & ((u_lab3_reg_minuend_3_5_aq))) # (!nx33377z3 & (u_lab3_reg_minuend_2_5_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx33377z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_2_5_aq,
	datac => u_lab3_reg_minuend_3_5_aq,
	datad => nx33377z3,
	combout => nx33377z2);

-- Location: LCCOMB_X19_Y16_N16
ix33377z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33377z1 = (u_lab3_modgen_counter_column_areg_q_3_aq & (u_lab3_modgen_counter_column_areg_q_2_aq)) # (!u_lab3_modgen_counter_column_areg_q_3_aq & ((u_lab3_modgen_counter_column_areg_q_2_aq & (nx33377z4)) # (!u_lab3_modgen_counter_column_areg_q_2_aq & 
-- ((nx33377z2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => nx33377z4,
	datad => nx33377z2,
	combout => nx33377z1);

-- Location: LCCOMB_X19_Y16_N0
ix33377z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f1(5) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx33377z1 & (nx33377z8)) # (!nx33377z1 & ((nx33377z6))))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx33377z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => nx33377z8,
	datac => nx33377z6,
	datad => nx33377z1,
	combout => u_lab3_p_1n7s3f1(5));

-- Location: FF_X15_Y13_N21
yes_uart_u_uart_reg_Rx_Reg_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Rx_Reg_5_aq,
	clrn => reset_n_ainput_o,
	sload => VCC,
	ena => nx2098z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Rx_Reg_4_aq);

-- Location: FF_X18_Y13_N21
yes_uart_u_uart_reg_Dout_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Rx_Reg_4_aq,
	clrn => reset_n_ainput_o,
	sload => VCC,
	ena => nx46463z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Dout_4_aq);

-- Location: FF_X22_Y17_N15
u_lab3_reg_addend_11_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37469z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_11_4_aq);

-- Location: LCCOMB_X20_Y16_N6
ix30550z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx30550z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_4_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_11_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_4_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_11_4_aq,
	combout => nx30550z1);

-- Location: FF_X20_Y16_N7
u_lab3_reg_subtrahend_11_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx30550z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx33541z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_11_4_aq);

-- Location: FF_X19_Y14_N7
u_lab3_reg_addend_8_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx6231z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_8_4_aq);

-- Location: LCCOMB_X18_Y17_N4
ix32720z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx32720z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_4_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_8_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_4_aq,
	datac => u_lab3_reg_addend_8_4_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx32720z1);

-- Location: FF_X18_Y17_N5
u_lab3_reg_subtrahend_8_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx32720z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx29729z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_8_4_aq);

-- Location: FF_X16_Y16_N23
u_lab3_reg_addend_9_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx64440z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_9_4_aq);

-- Location: LCCOMB_X15_Y16_N14
ix37855z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37855z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_4_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_9_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_9_4_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => yes_uart_u_uart_reg_Dout_4_aq,
	combout => nx37855z1);

-- Location: FF_X15_Y16_N15
u_lab3_reg_subtrahend_9_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx37855z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx34864z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_9_4_aq);

-- Location: LCCOMB_X20_Y13_N14
ix64525z7112 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z16 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_9_4_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_8_4_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_subtrahend_8_4_aq,
	datad => u_lab3_reg_subtrahend_9_4_aq,
	combout => nx64525z16);

-- Location: FF_X24_Y18_N31
u_lab3_reg_addend_10_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42604z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_10_4_aq);

-- Location: LCCOMB_X22_Y14_N20
ix35685z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx35685z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_4_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_10_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_4_aq,
	datab => u_lab3_reg_addend_10_4_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx35685z1);

-- Location: FF_X22_Y14_N21
u_lab3_reg_subtrahend_10_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx35685z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx38676z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_10_4_aq);

-- Location: LCCOMB_X20_Y13_N16
ix64525z7111 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z15 = (nx64525z16 & ((u_lab3_reg_subtrahend_11_4_aq) # ((!u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!nx64525z16 & (((u_lab3_reg_subtrahend_10_4_aq & u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_11_4_aq,
	datab => nx64525z16,
	datac => u_lab3_reg_subtrahend_10_4_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx64525z15);

-- Location: FF_X23_Y12_N7
u_lab3_reg_addend_15_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16929z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_15_4_aq);

-- Location: LCCOMB_X22_Y12_N12
ix10010z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx10010z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_4_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_15_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_4_aq,
	datab => u_lab3_reg_state_1_aq,
	datac => u_lab3_reg_addend_15_4_aq,
	combout => nx10010z1);

-- Location: FF_X22_Y12_N13
u_lab3_reg_subtrahend_15_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx10010z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx13001z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_15_4_aq);

-- Location: FF_X28_Y14_N31
u_lab3_reg_addend_14_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx22064z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_14_4_aq);

-- Location: LCCOMB_X27_Y14_N22
ix15145z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx15145z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_4_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_14_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_4_aq,
	datad => u_lab3_reg_addend_14_4_aq,
	combout => nx15145z1);

-- Location: FF_X27_Y14_N23
u_lab3_reg_subtrahend_14_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx15145z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx18136z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_14_4_aq);

-- Location: FF_X28_Y14_N5
u_lab3_reg_addend_13_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx27199z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_13_4_aq);

-- Location: LCCOMB_X27_Y13_N2
ix20280z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx20280z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_4_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_13_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => yes_uart_u_uart_reg_Dout_4_aq,
	datad => u_lab3_reg_addend_13_4_aq,
	combout => nx20280z1);

-- Location: FF_X27_Y13_N3
u_lab3_reg_subtrahend_13_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx20280z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx23271z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_13_4_aq);

-- Location: FF_X23_Y12_N5
u_lab3_reg_addend_12_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx32334z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_12_4_aq);

-- Location: LCCOMB_X27_Y13_N24
ix25415z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx25415z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_4_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_12_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => yes_uart_u_uart_reg_Dout_4_aq,
	datad => u_lab3_reg_addend_12_4_aq,
	combout => nx25415z1);

-- Location: FF_X27_Y13_N25
u_lab3_reg_subtrahend_12_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx25415z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx28406z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_12_4_aq);

-- Location: LCCOMB_X20_Y13_N10
ix64525z7114 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z18 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_13_4_aq)) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_12_4_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_subtrahend_13_4_aq,
	datad => u_lab3_reg_subtrahend_12_4_aq,
	combout => nx64525z18);

-- Location: LCCOMB_X20_Y13_N4
ix64525z7113 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z17 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx64525z18 & (u_lab3_reg_subtrahend_15_4_aq)) # (!nx64525z18 & ((u_lab3_reg_subtrahend_14_4_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx64525z18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_15_4_aq,
	datac => u_lab3_reg_subtrahend_14_4_aq,
	datad => nx64525z18,
	combout => nx64525z17);

-- Location: FF_X19_Y14_N29
u_lab3_reg_addend_6_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16501z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_6_4_aq);

-- Location: LCCOMB_X18_Y12_N22
ix43086z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx43086z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_4_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_6_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_4_aq,
	datad => u_lab3_reg_addend_6_4_aq,
	combout => nx43086z1);

-- Location: FF_X18_Y12_N23
u_lab3_reg_subtrahend_6_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx43086z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx46077z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_6_4_aq);

-- Location: FF_X24_Y15_N7
u_lab3_reg_addend_7_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx11366z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_7_4_aq);

-- Location: LCCOMB_X19_Y19_N20
ix37951z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx37951z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_4_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_7_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_4_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_7_4_aq,
	combout => nx37951z1);

-- Location: FF_X19_Y19_N21
u_lab3_reg_subtrahend_7_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx37951z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx40942z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_7_4_aq);

-- Location: FF_X22_Y17_N29
u_lab3_reg_addend_5_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx21636z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_5_4_aq);

-- Location: LCCOMB_X19_Y17_N12
ix48221z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx48221z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_4_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_5_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_4_aq,
	datad => u_lab3_reg_addend_5_4_aq,
	combout => nx48221z1);

-- Location: FF_X19_Y17_N13
u_lab3_reg_subtrahend_5_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx48221z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx51212z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_5_4_aq);

-- Location: FF_X16_Y16_N29
u_lab3_reg_addend_4_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx26771z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_4_4_aq);

-- Location: LCCOMB_X20_Y13_N30
ix53356z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx53356z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_4_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_4_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_4_4_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => yes_uart_u_uart_reg_Dout_4_aq,
	combout => nx53356z1);

-- Location: FF_X20_Y13_N31
u_lab3_reg_subtrahend_4_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx53356z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx56347z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_4_4_aq);

-- Location: LCCOMB_X20_Y13_N0
ix64525z7110 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z14 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_5_4_aq)) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_4_4_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_5_4_aq,
	datab => u_lab3_reg_subtrahend_4_4_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx64525z14);

-- Location: LCCOMB_X20_Y13_N26
ix64525z7109 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z13 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx64525z14 & ((u_lab3_reg_subtrahend_7_4_aq))) # (!nx64525z14 & (u_lab3_reg_subtrahend_6_4_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx64525z14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_6_4_aq,
	datac => u_lab3_reg_subtrahend_7_4_aq,
	datad => nx64525z14,
	combout => nx64525z13);

-- Location: FF_X24_Y18_N29
u_lab3_reg_addend_2_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37041z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_2_4_aq);

-- Location: LCCOMB_X25_Y16_N6
ix63626z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63626z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_4_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_2_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_4_aq,
	datad => u_lab3_reg_addend_2_4_aq,
	combout => nx63626z1);

-- Location: FF_X25_Y16_N7
u_lab3_reg_subtrahend_2_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx63626z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx1081z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_2_4_aq);

-- Location: FF_X15_Y17_N23
u_lab3_reg_addend_3_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx31906z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_3_4_aq);

-- Location: LCCOMB_X14_Y16_N14
ix58491z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx58491z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_4_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_3_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_4_aq,
	datac => u_lab3_reg_addend_3_4_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx58491z1);

-- Location: FF_X14_Y16_N15
u_lab3_reg_subtrahend_3_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx58491z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx61482z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_3_4_aq);

-- Location: FF_X15_Y17_N5
u_lab3_reg_addend_0_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx47311z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_0_4_aq);

-- Location: LCCOMB_X17_Y13_N24
ix8360z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx8360z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_4_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_0_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_addend_0_4_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => yes_uart_u_uart_reg_Dout_4_aq,
	combout => nx8360z1);

-- Location: FF_X17_Y13_N25
u_lab3_reg_subtrahend_0_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx8360z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx11351z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_0_4_aq);

-- Location: FF_X24_Y15_N13
u_lab3_reg_addend_1_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_4_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42176z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_1_4_aq);

-- Location: LCCOMB_X25_Y15_N24
ix3225z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx3225z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_4_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_1_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => yes_uart_u_uart_reg_Dout_4_aq,
	datad => u_lab3_reg_addend_1_4_aq,
	combout => nx3225z1);

-- Location: FF_X25_Y15_N25
u_lab3_reg_subtrahend_1_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx3225z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx6216z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_1_4_aq);

-- Location: LCCOMB_X20_Y13_N2
ix64525z7108 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z12 = (u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_modgen_counter_column_areg_q_1_aq) # (u_lab3_reg_subtrahend_1_4_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_0_4_aq & 
-- (!u_lab3_modgen_counter_column_areg_q_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_0_4_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_reg_subtrahend_1_4_aq,
	combout => nx64525z12);

-- Location: LCCOMB_X20_Y13_N20
ix64525z7107 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z11 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx64525z12 & ((u_lab3_reg_subtrahend_3_4_aq))) # (!nx64525z12 & (u_lab3_reg_subtrahend_2_4_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx64525z12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_2_4_aq,
	datac => u_lab3_reg_subtrahend_3_4_aq,
	datad => nx64525z12,
	combout => nx64525z11);

-- Location: LCCOMB_X20_Y13_N28
ix64525z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z10 = (u_lab3_modgen_counter_column_areg_q_3_aq & (u_lab3_modgen_counter_column_areg_q_2_aq)) # (!u_lab3_modgen_counter_column_areg_q_3_aq & ((u_lab3_modgen_counter_column_areg_q_2_aq & (nx64525z13)) # (!u_lab3_modgen_counter_column_areg_q_2_aq & 
-- ((nx64525z11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => nx64525z13,
	datad => nx64525z11,
	combout => nx64525z10);

-- Location: LCCOMB_X20_Y13_N6
ix64525z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f2(4) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx64525z10 & ((nx64525z17))) # (!nx64525z10 & (nx64525z15)))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx64525z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => nx64525z15,
	datac => nx64525z17,
	datad => nx64525z10,
	combout => u_lab3_p_1n7s3f2(4));

-- Location: LCCOMB_X22_Y14_N28
ix25079z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_324_a = (yes_uart_u_uart_reg_Dout_4_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_10_4_aq)) # (!nx22088z1))) # (!yes_uart_u_uart_reg_Dout_4_aq & (u_lab3_reg_state_2_aq & (u_lab3_reg_subtrahend_10_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_4_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_subtrahend_10_4_aq,
	datad => nx22088z1,
	combout => u_lab3_minuend_1n10ss1_324_a);

-- Location: FF_X22_Y14_N29
u_lab3_reg_minuend_10_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_324_a,
	ena => nx22088z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_10_4_aq);

-- Location: LCCOMB_X20_Y16_N22
ix30214z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_356_a = (u_lab3_reg_subtrahend_11_4_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_4_aq & !nx27223z1)))) # (!u_lab3_reg_subtrahend_11_4_aq & (yes_uart_u_uart_reg_Dout_4_aq & ((!nx27223z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_11_4_aq,
	datab => yes_uart_u_uart_reg_Dout_4_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx27223z1,
	combout => u_lab3_minuend_1n10ss1_356_a);

-- Location: FF_X20_Y16_N23
u_lab3_reg_minuend_11_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_356_a,
	ena => nx27223z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_11_4_aq);

-- Location: LCCOMB_X18_Y15_N10
ix44555z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_292_a = (yes_uart_u_uart_reg_Dout_4_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_9_4_aq)) # (!nx41564z1))) # (!yes_uart_u_uart_reg_Dout_4_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_9_4_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_4_aq,
	datab => nx41564z1,
	datac => u_lab3_reg_state_2_aq,
	datad => u_lab3_reg_subtrahend_9_4_aq,
	combout => u_lab3_minuend_1n10ss1_292_a);

-- Location: FF_X18_Y15_N11
u_lab3_reg_minuend_9_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_292_a,
	ena => nx41564z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_9_4_aq);

-- Location: LCCOMB_X18_Y15_N0
ix39420z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_260_a = (u_lab3_reg_subtrahend_8_4_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_4_aq & !nx36429z1)))) # (!u_lab3_reg_subtrahend_8_4_aq & (yes_uart_u_uart_reg_Dout_4_aq & (!nx36429z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_8_4_aq,
	datab => yes_uart_u_uart_reg_Dout_4_aq,
	datac => nx36429z1,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_260_a);

-- Location: FF_X18_Y15_N1
u_lab3_reg_minuend_8_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_260_a,
	ena => nx36429z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_8_4_aq);

-- Location: LCCOMB_X18_Y15_N14
ix64525z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z7 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_9_4_aq)) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_8_4_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_9_4_aq,
	datab => u_lab3_reg_minuend_8_4_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx64525z7);

-- Location: LCCOMB_X19_Y15_N26
ix64525z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z6 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx64525z7 & ((u_lab3_reg_minuend_11_4_aq))) # (!nx64525z7 & (u_lab3_reg_minuend_10_4_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx64525z7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_10_4_aq,
	datab => u_lab3_reg_minuend_11_4_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => nx64525z7,
	combout => nx64525z6);

-- Location: LCCOMB_X27_Y12_N0
ix45619z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_452_a = (nx42628z1 & (((u_lab3_reg_subtrahend_14_4_aq & u_lab3_reg_state_2_aq)))) # (!nx42628z1 & ((yes_uart_u_uart_reg_Dout_4_aq) # ((u_lab3_reg_subtrahend_14_4_aq & u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx42628z1,
	datab => yes_uart_u_uart_reg_Dout_4_aq,
	datac => u_lab3_reg_subtrahend_14_4_aq,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_452_a);

-- Location: FF_X27_Y12_N1
u_lab3_reg_minuend_14_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_452_a,
	ena => nx42628z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_14_4_aq);

-- Location: LCCOMB_X22_Y12_N28
ix50754z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_484_a = (yes_uart_u_uart_reg_Dout_4_aq & (((u_lab3_reg_subtrahend_15_4_aq & u_lab3_reg_state_2_aq)) # (!nx47763z1))) # (!yes_uart_u_uart_reg_Dout_4_aq & (u_lab3_reg_subtrahend_15_4_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_4_aq,
	datab => u_lab3_reg_subtrahend_15_4_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx47763z1,
	combout => u_lab3_minuend_1n10ss1_484_a);

-- Location: FF_X22_Y12_N29
u_lab3_reg_minuend_15_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_484_a,
	ena => nx47763z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_15_4_aq);

-- Location: LCCOMB_X24_Y13_N12
ix35349z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_388_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_12_4_aq) # ((yes_uart_u_uart_reg_Dout_4_aq & !nx32358z1)))) # (!u_lab3_reg_state_2_aq & (yes_uart_u_uart_reg_Dout_4_aq & (!nx32358z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => yes_uart_u_uart_reg_Dout_4_aq,
	datac => nx32358z1,
	datad => u_lab3_reg_subtrahend_12_4_aq,
	combout => u_lab3_minuend_1n10ss1_388_a);

-- Location: FF_X24_Y13_N13
u_lab3_reg_minuend_12_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_388_a,
	ena => nx32358z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_12_4_aq);

-- Location: LCCOMB_X27_Y12_N22
ix40484z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_420_a = (u_lab3_reg_subtrahend_13_4_aq & ((u_lab3_reg_state_2_aq) # ((!nx37493z1 & yes_uart_u_uart_reg_Dout_4_aq)))) # (!u_lab3_reg_subtrahend_13_4_aq & (((!nx37493z1 & yes_uart_u_uart_reg_Dout_4_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_13_4_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => nx37493z1,
	datad => yes_uart_u_uart_reg_Dout_4_aq,
	combout => u_lab3_minuend_1n10ss1_420_a);

-- Location: FF_X27_Y12_N23
u_lab3_reg_minuend_13_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_420_a,
	ena => nx37493z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_13_4_aq);

-- Location: LCCOMB_X20_Y13_N12
ix64525z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z9 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_13_4_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_12_4_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_12_4_aq,
	datac => u_lab3_reg_minuend_13_4_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx64525z9);

-- Location: LCCOMB_X20_Y13_N22
ix64525z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z8 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx64525z9 & ((u_lab3_reg_minuend_15_4_aq))) # (!nx64525z9 & (u_lab3_reg_minuend_14_4_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx64525z9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_14_4_aq,
	datab => u_lab3_reg_minuend_15_4_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => nx64525z9,
	combout => nx64525z8);

-- Location: LCCOMB_X19_Y19_N2
ix34285z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_228_a = (yes_uart_u_uart_reg_Dout_4_aq & (((u_lab3_reg_subtrahend_7_4_aq & u_lab3_reg_state_2_aq)) # (!nx31294z1))) # (!yes_uart_u_uart_reg_Dout_4_aq & (u_lab3_reg_subtrahend_7_4_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_4_aq,
	datab => u_lab3_reg_subtrahend_7_4_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx31294z1,
	combout => u_lab3_minuend_1n10ss1_228_a);

-- Location: FF_X19_Y19_N3
u_lab3_reg_minuend_7_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_228_a,
	ena => nx31294z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_7_4_aq);

-- Location: LCCOMB_X18_Y12_N30
ix29150z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_196_a = (yes_uart_u_uart_reg_Dout_4_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_6_4_aq)) # (!nx26159z1))) # (!yes_uart_u_uart_reg_Dout_4_aq & (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_6_4_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_4_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => nx26159z1,
	datad => u_lab3_reg_subtrahend_6_4_aq,
	combout => u_lab3_minuend_1n10ss1_196_a);

-- Location: FF_X18_Y12_N31
u_lab3_reg_minuend_6_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_196_a,
	ena => nx26159z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_6_4_aq);

-- Location: LCCOMB_X20_Y14_N20
ix18880z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_132_a = (u_lab3_reg_subtrahend_4_4_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_4_aq & !nx15889z1)))) # (!u_lab3_reg_subtrahend_4_4_aq & (yes_uart_u_uart_reg_Dout_4_aq & ((!nx15889z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_4_4_aq,
	datab => yes_uart_u_uart_reg_Dout_4_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx15889z1,
	combout => u_lab3_minuend_1n10ss1_132_a);

-- Location: FF_X20_Y14_N21
u_lab3_reg_minuend_4_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_132_a,
	ena => nx15889z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_4_4_aq);

-- Location: LCCOMB_X19_Y12_N0
ix24015z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_164_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_5_4_aq) # ((yes_uart_u_uart_reg_Dout_4_aq & !nx21024z1)))) # (!u_lab3_reg_state_2_aq & (((yes_uart_u_uart_reg_Dout_4_aq & !nx21024z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_subtrahend_5_4_aq,
	datac => yes_uart_u_uart_reg_Dout_4_aq,
	datad => nx21024z1,
	combout => u_lab3_minuend_1n10ss1_164_a);

-- Location: FF_X20_Y14_N29
u_lab3_reg_minuend_5_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_lab3_minuend_1n10ss1_164_a,
	sload => VCC,
	ena => nx21024z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_5_4_aq);

-- Location: LCCOMB_X20_Y14_N28
ix64525z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z5 = (u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_minuend_5_4_aq) # (u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_4_4_aq & 
-- ((!u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_reg_minuend_4_4_aq,
	datac => u_lab3_reg_minuend_5_4_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx64525z5);

-- Location: LCCOMB_X20_Y13_N8
ix64525z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z4 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx64525z5 & (u_lab3_reg_minuend_7_4_aq)) # (!nx64525z5 & ((u_lab3_reg_minuend_6_4_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx64525z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_7_4_aq,
	datab => u_lab3_reg_minuend_6_4_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => nx64525z5,
	combout => nx64525z4);

-- Location: LCCOMB_X14_Y16_N6
ix51791z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_100_a = (nx54782z1 & (u_lab3_reg_state_2_aq & (u_lab3_reg_subtrahend_3_4_aq))) # (!nx54782z1 & ((yes_uart_u_uart_reg_Dout_4_aq) # ((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_3_4_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx54782z1,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_subtrahend_3_4_aq,
	datad => yes_uart_u_uart_reg_Dout_4_aq,
	combout => u_lab3_minuend_1n10ss1_100_a);

-- Location: FF_X14_Y16_N7
u_lab3_reg_minuend_3_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_100_a,
	ena => nx54782z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_3_4_aq);

-- Location: LCCOMB_X25_Y16_N22
ix56926z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_68_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_2_4_aq) # ((yes_uart_u_uart_reg_Dout_4_aq & !nx59917z1)))) # (!u_lab3_reg_state_2_aq & (((yes_uart_u_uart_reg_Dout_4_aq & !nx59917z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_subtrahend_2_4_aq,
	datac => yes_uart_u_uart_reg_Dout_4_aq,
	datad => nx59917z1,
	combout => u_lab3_minuend_1n10ss1_68_a);

-- Location: FF_X25_Y16_N23
u_lab3_reg_minuend_2_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_68_a,
	ena => nx59917z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_2_4_aq);

-- Location: LCCOMB_X22_Y13_N20
ix1660z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_4_a = (u_lab3_reg_subtrahend_0_4_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_4_aq & !nx4651z1)))) # (!u_lab3_reg_subtrahend_0_4_aq & (((yes_uart_u_uart_reg_Dout_4_aq & !nx4651z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_0_4_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_Dout_4_aq,
	datad => nx4651z1,
	combout => u_lab3_minuend_1n10ss1_4_a);

-- Location: FF_X22_Y13_N21
u_lab3_reg_minuend_0_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_4_a,
	ena => nx4651z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_0_4_aq);

-- Location: LCCOMB_X22_Y13_N14
ix62061z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_36_a = (u_lab3_reg_subtrahend_1_4_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_4_aq & !nx65052z1)))) # (!u_lab3_reg_subtrahend_1_4_aq & (((yes_uart_u_uart_reg_Dout_4_aq & !nx65052z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_1_4_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_Dout_4_aq,
	datad => nx65052z1,
	combout => u_lab3_minuend_1n10ss1_36_a);

-- Location: FF_X22_Y13_N17
u_lab3_reg_minuend_1_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_lab3_minuend_1n10ss1_36_a,
	sload => VCC,
	ena => nx65052z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_1_4_aq);

-- Location: LCCOMB_X22_Y13_N16
ix64525z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z3 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_1_4_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_0_4_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_0_4_aq,
	datac => u_lab3_reg_minuend_1_4_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx64525z3);

-- Location: LCCOMB_X22_Y13_N18
ix64525z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z2 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx64525z3 & (u_lab3_reg_minuend_3_4_aq)) # (!nx64525z3 & ((u_lab3_reg_minuend_2_4_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx64525z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_3_4_aq,
	datac => u_lab3_reg_minuend_2_4_aq,
	datad => nx64525z3,
	combout => nx64525z2);

-- Location: LCCOMB_X20_Y13_N18
ix64525z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64525z1 = (u_lab3_modgen_counter_column_areg_q_3_aq & (u_lab3_modgen_counter_column_areg_q_2_aq)) # (!u_lab3_modgen_counter_column_areg_q_3_aq & ((u_lab3_modgen_counter_column_areg_q_2_aq & (nx64525z4)) # (!u_lab3_modgen_counter_column_areg_q_2_aq & 
-- ((nx64525z2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => nx64525z4,
	datad => nx64525z2,
	combout => nx64525z1);

-- Location: LCCOMB_X20_Y13_N24
ix64525z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f1(4) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx64525z1 & ((nx64525z8))) # (!nx64525z1 & (nx64525z6)))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx64525z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => nx64525z6,
	datac => nx64525z8,
	datad => nx64525z1,
	combout => u_lab3_p_1n7s3f1(4));

-- Location: LCCOMB_X15_Y13_N2
yes_uart_u_uart_reg_Rx_Reg_3_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- yes_uart_u_uart_reg_Rx_Reg_3_afeeder_combout = yes_uart_u_uart_reg_Rx_Reg_4_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => yes_uart_u_uart_reg_Rx_Reg_4_aq,
	combout => yes_uart_u_uart_reg_Rx_Reg_3_afeeder_combout);

-- Location: FF_X15_Y13_N3
yes_uart_u_uart_reg_Rx_Reg_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => yes_uart_u_uart_reg_Rx_Reg_3_afeeder_combout,
	clrn => reset_n_ainput_o,
	ena => nx2098z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Rx_Reg_3_aq);

-- Location: FF_X18_Y13_N19
yes_uart_u_uart_reg_Dout_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Rx_Reg_3_aq,
	clrn => reset_n_ainput_o,
	sload => VCC,
	ena => nx46463z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Dout_3_aq);

-- Location: FF_X22_Y17_N19
u_lab3_reg_addend_11_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37469z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_11_3_aq);

-- Location: LCCOMB_X20_Y16_N0
ix29553z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29553z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_3_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_11_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_3_aq,
	datab => u_lab3_reg_addend_11_3_aq,
	datac => u_lab3_reg_state_1_aq,
	combout => nx29553z1);

-- Location: FF_X20_Y16_N1
u_lab3_reg_subtrahend_11_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx29553z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx33541z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_11_3_aq);

-- Location: LCCOMB_X20_Y16_N24
ix31211z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_355_a = (yes_uart_u_uart_reg_Dout_3_aq & (((u_lab3_reg_subtrahend_11_3_aq & u_lab3_reg_state_2_aq)) # (!nx27223z1))) # (!yes_uart_u_uart_reg_Dout_3_aq & (u_lab3_reg_subtrahend_11_3_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_3_aq,
	datab => u_lab3_reg_subtrahend_11_3_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx27223z1,
	combout => u_lab3_minuend_1n10ss1_355_a);

-- Location: FF_X20_Y16_N25
u_lab3_reg_minuend_11_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_355_a,
	ena => nx27223z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_11_3_aq);

-- Location: FF_X24_Y18_N27
u_lab3_reg_addend_10_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42604z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_10_3_aq);

-- Location: LCCOMB_X22_Y14_N6
ix34688z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx34688z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_3_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_10_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_reg_addend_10_3_aq,
	datad => yes_uart_u_uart_reg_Dout_3_aq,
	combout => nx34688z1);

-- Location: FF_X22_Y14_N7
u_lab3_reg_subtrahend_10_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx34688z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx38676z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_10_3_aq);

-- Location: LCCOMB_X22_Y14_N14
ix26076z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_323_a = (u_lab3_reg_subtrahend_10_3_aq & ((u_lab3_reg_state_2_aq) # ((!nx22088z1 & yes_uart_u_uart_reg_Dout_3_aq)))) # (!u_lab3_reg_subtrahend_10_3_aq & (!nx22088z1 & ((yes_uart_u_uart_reg_Dout_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_10_3_aq,
	datab => nx22088z1,
	datac => u_lab3_reg_state_2_aq,
	datad => yes_uart_u_uart_reg_Dout_3_aq,
	combout => u_lab3_minuend_1n10ss1_323_a);

-- Location: FF_X22_Y14_N15
u_lab3_reg_minuend_10_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_323_a,
	ena => nx22088z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_10_3_aq);

-- Location: FF_X16_Y16_N11
u_lab3_reg_addend_9_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx64440z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_9_3_aq);

-- Location: LCCOMB_X15_Y16_N8
ix38852z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx38852z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_3_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_9_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_addend_9_3_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => yes_uart_u_uart_reg_Dout_3_aq,
	combout => nx38852z1);

-- Location: FF_X15_Y16_N9
u_lab3_reg_subtrahend_9_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx38852z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx34864z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_9_3_aq);

-- Location: LCCOMB_X25_Y13_N12
ix45552z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_291_a = (u_lab3_reg_subtrahend_9_3_aq & ((u_lab3_reg_state_2_aq) # ((!nx41564z1 & yes_uart_u_uart_reg_Dout_3_aq)))) # (!u_lab3_reg_subtrahend_9_3_aq & (((!nx41564z1 & yes_uart_u_uart_reg_Dout_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_9_3_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => nx41564z1,
	datad => yes_uart_u_uart_reg_Dout_3_aq,
	combout => u_lab3_minuend_1n10ss1_291_a);

-- Location: FF_X25_Y13_N13
u_lab3_reg_minuend_9_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_291_a,
	ena => nx41564z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_9_3_aq);

-- Location: FF_X19_Y14_N27
u_lab3_reg_addend_8_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx6231z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_8_3_aq);

-- Location: LCCOMB_X15_Y15_N0
ix33717z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33717z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_3_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_8_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_3_aq,
	datac => u_lab3_reg_addend_8_3_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx33717z1);

-- Location: FF_X15_Y15_N1
u_lab3_reg_subtrahend_8_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx33717z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx29729z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_8_3_aq);

-- Location: LCCOMB_X25_Y13_N18
ix40417z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_259_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_8_3_aq) # ((!nx36429z1 & yes_uart_u_uart_reg_Dout_3_aq)))) # (!u_lab3_reg_state_2_aq & (!nx36429z1 & ((yes_uart_u_uart_reg_Dout_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => nx36429z1,
	datac => u_lab3_reg_subtrahend_8_3_aq,
	datad => yes_uart_u_uart_reg_Dout_3_aq,
	combout => u_lab3_minuend_1n10ss1_259_a);

-- Location: FF_X25_Y13_N19
u_lab3_reg_minuend_8_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_259_a,
	ena => nx36429z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_8_3_aq);

-- Location: LCCOMB_X23_Y16_N10
ix17342z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z7 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_9_3_aq)) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_8_3_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_minuend_9_3_aq,
	datad => u_lab3_reg_minuend_8_3_aq,
	combout => nx17342z7);

-- Location: LCCOMB_X23_Y16_N28
ix17342z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z6 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx17342z7 & (u_lab3_reg_minuend_11_3_aq)) # (!nx17342z7 & ((u_lab3_reg_minuend_10_3_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx17342z7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_11_3_aq,
	datac => u_lab3_reg_minuend_10_3_aq,
	datad => nx17342z7,
	combout => nx17342z6);

-- Location: FF_X24_Y15_N27
u_lab3_reg_addend_7_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx11366z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_7_3_aq);

-- Location: LCCOMB_X19_Y19_N6
ix36954z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36954z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_3_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_7_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_3_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_7_3_aq,
	combout => nx36954z1);

-- Location: FF_X19_Y19_N7
u_lab3_reg_subtrahend_7_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx36954z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx40942z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_7_3_aq);

-- Location: LCCOMB_X19_Y19_N12
ix35282z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_227_a = (u_lab3_reg_subtrahend_7_3_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_3_aq & !nx31294z1)))) # (!u_lab3_reg_subtrahend_7_3_aq & (yes_uart_u_uart_reg_Dout_3_aq & ((!nx31294z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_7_3_aq,
	datab => yes_uart_u_uart_reg_Dout_3_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx31294z1,
	combout => u_lab3_minuend_1n10ss1_227_a);

-- Location: FF_X19_Y19_N13
u_lab3_reg_minuend_7_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_227_a,
	ena => nx31294z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_7_3_aq);

-- Location: FF_X19_Y14_N1
u_lab3_reg_addend_6_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16501z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_6_3_aq);

-- Location: LCCOMB_X18_Y12_N24
ix42089z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx42089z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_3_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_6_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_6_3_aq,
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_3_aq,
	combout => nx42089z1);

-- Location: FF_X18_Y12_N25
u_lab3_reg_subtrahend_6_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx42089z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx46077z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_6_3_aq);

-- Location: LCCOMB_X18_Y12_N16
ix30147z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_195_a = (yes_uart_u_uart_reg_Dout_3_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_6_3_aq)) # (!nx26159z1))) # (!yes_uart_u_uart_reg_Dout_3_aq & (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_6_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_3_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => nx26159z1,
	datad => u_lab3_reg_subtrahend_6_3_aq,
	combout => u_lab3_minuend_1n10ss1_195_a);

-- Location: FF_X18_Y12_N17
u_lab3_reg_minuend_6_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_195_a,
	ena => nx26159z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_6_3_aq);

-- Location: FF_X16_Y16_N1
u_lab3_reg_addend_4_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx26771z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_4_3_aq);

-- Location: LCCOMB_X24_Y16_N30
ix52359z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx52359z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_3_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_4_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => u_lab3_reg_addend_4_3_aq,
	datad => yes_uart_u_uart_reg_Dout_3_aq,
	combout => nx52359z1);

-- Location: FF_X24_Y16_N31
u_lab3_reg_subtrahend_4_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx52359z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx56347z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_4_3_aq);

-- Location: LCCOMB_X24_Y16_N6
ix19877z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_131_a = (nx15889z1 & (u_lab3_reg_state_2_aq & (u_lab3_reg_subtrahend_4_3_aq))) # (!nx15889z1 & ((yes_uart_u_uart_reg_Dout_3_aq) # ((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_4_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx15889z1,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_subtrahend_4_3_aq,
	datad => yes_uart_u_uart_reg_Dout_3_aq,
	combout => u_lab3_minuend_1n10ss1_131_a);

-- Location: FF_X24_Y16_N7
u_lab3_reg_minuend_4_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_131_a,
	ena => nx15889z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_4_3_aq);

-- Location: FF_X22_Y17_N17
u_lab3_reg_addend_5_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx21636z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_5_3_aq);

-- Location: LCCOMB_X19_Y17_N30
ix47224z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx47224z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_3_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_5_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => yes_uart_u_uart_reg_Dout_3_aq,
	datad => u_lab3_reg_addend_5_3_aq,
	combout => nx47224z1);

-- Location: FF_X19_Y17_N31
u_lab3_reg_subtrahend_5_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx47224z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx51212z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_5_3_aq);

-- Location: LCCOMB_X24_Y16_N24
ix25012z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_163_a = (nx21024z1 & (u_lab3_reg_subtrahend_5_3_aq & (u_lab3_reg_state_2_aq))) # (!nx21024z1 & ((yes_uart_u_uart_reg_Dout_3_aq) # ((u_lab3_reg_subtrahend_5_3_aq & u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx21024z1,
	datab => u_lab3_reg_subtrahend_5_3_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => yes_uart_u_uart_reg_Dout_3_aq,
	combout => u_lab3_minuend_1n10ss1_163_a);

-- Location: FF_X23_Y16_N13
u_lab3_reg_minuend_5_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_lab3_minuend_1n10ss1_163_a,
	sload => VCC,
	ena => nx21024z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_5_3_aq);

-- Location: LCCOMB_X23_Y16_N12
ix17342z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z5 = (u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_minuend_5_3_aq) # (u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_4_3_aq & 
-- ((!u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_4_3_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_minuend_5_3_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx17342z5);

-- Location: LCCOMB_X23_Y16_N22
ix17342z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z4 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx17342z5 & (u_lab3_reg_minuend_7_3_aq)) # (!nx17342z5 & ((u_lab3_reg_minuend_6_3_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx17342z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_7_3_aq,
	datac => u_lab3_reg_minuend_6_3_aq,
	datad => nx17342z5,
	combout => nx17342z4);

-- Location: FF_X15_Y17_N11
u_lab3_reg_addend_3_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx31906z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_3_3_aq);

-- Location: LCCOMB_X14_Y16_N24
ix57494z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57494z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_3_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_3_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_3_aq,
	datac => u_lab3_reg_addend_3_3_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx57494z1);

-- Location: FF_X14_Y16_N25
u_lab3_reg_subtrahend_3_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx57494z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx61482z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_3_3_aq);

-- Location: LCCOMB_X14_Y16_N16
ix50794z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_99_a = (yes_uart_u_uart_reg_Dout_3_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_3_3_aq)) # (!nx54782z1))) # (!yes_uart_u_uart_reg_Dout_3_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_3_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_3_aq,
	datab => nx54782z1,
	datac => u_lab3_reg_state_2_aq,
	datad => u_lab3_reg_subtrahend_3_3_aq,
	combout => u_lab3_minuend_1n10ss1_99_a);

-- Location: FF_X14_Y16_N17
u_lab3_reg_minuend_3_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_99_a,
	ena => nx54782z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_3_3_aq);

-- Location: FF_X24_Y18_N1
u_lab3_reg_addend_2_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37041z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_2_3_aq);

-- Location: LCCOMB_X25_Y16_N16
ix62629z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62629z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_3_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_2_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_3_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_2_3_aq,
	combout => nx62629z1);

-- Location: FF_X25_Y16_N17
u_lab3_reg_subtrahend_2_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx62629z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx1081z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_2_3_aq);

-- Location: LCCOMB_X25_Y16_N0
ix55929z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_67_a = (u_lab3_reg_subtrahend_2_3_aq & ((u_lab3_reg_state_2_aq) # ((!nx59917z1 & yes_uart_u_uart_reg_Dout_3_aq)))) # (!u_lab3_reg_subtrahend_2_3_aq & (!nx59917z1 & (yes_uart_u_uart_reg_Dout_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_2_3_aq,
	datab => nx59917z1,
	datac => yes_uart_u_uart_reg_Dout_3_aq,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_67_a);

-- Location: FF_X25_Y16_N1
u_lab3_reg_minuend_2_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_67_a,
	ena => nx59917z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_2_3_aq);

-- Location: FF_X24_Y15_N9
u_lab3_reg_addend_1_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42176z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_1_3_aq);

-- Location: LCCOMB_X25_Y15_N26
ix2228z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx2228z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_3_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_1_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_3_aq,
	datad => u_lab3_reg_addend_1_3_aq,
	combout => nx2228z1);

-- Location: FF_X25_Y15_N27
u_lab3_reg_subtrahend_1_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx2228z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx6216z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_1_3_aq);

-- Location: LCCOMB_X25_Y15_N4
ix61064z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_35_a = (u_lab3_reg_subtrahend_1_3_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_3_aq & !nx65052z1)))) # (!u_lab3_reg_subtrahend_1_3_aq & (((yes_uart_u_uart_reg_Dout_3_aq & !nx65052z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_1_3_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_Dout_3_aq,
	datad => nx65052z1,
	combout => u_lab3_minuend_1n10ss1_35_a);

-- Location: FF_X23_Y16_N1
u_lab3_reg_minuend_1_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_lab3_minuend_1n10ss1_35_a,
	sload => VCC,
	ena => nx65052z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_1_3_aq);

-- Location: FF_X15_Y17_N9
u_lab3_reg_addend_0_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx47311z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_0_3_aq);

-- Location: LCCOMB_X20_Y17_N30
ix7363z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx7363z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_3_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_0_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_0_3_aq,
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_3_aq,
	combout => nx7363z1);

-- Location: FF_X20_Y17_N31
u_lab3_reg_subtrahend_0_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx7363z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx11351z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_0_3_aq);

-- Location: LCCOMB_X20_Y17_N6
ix663z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_3_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_0_3_aq) # ((yes_uart_u_uart_reg_Dout_3_aq & !nx4651z1)))) # (!u_lab3_reg_state_2_aq & (((yes_uart_u_uart_reg_Dout_3_aq & !nx4651z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_subtrahend_0_3_aq,
	datac => yes_uart_u_uart_reg_Dout_3_aq,
	datad => nx4651z1,
	combout => u_lab3_minuend_1n10ss1_3_a);

-- Location: FF_X20_Y17_N7
u_lab3_reg_minuend_0_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_3_a,
	ena => nx4651z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_0_3_aq);

-- Location: LCCOMB_X23_Y16_N0
ix17342z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z3 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_1_3_aq)) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_0_3_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_minuend_1_3_aq,
	datad => u_lab3_reg_minuend_0_3_aq,
	combout => nx17342z3);

-- Location: LCCOMB_X23_Y16_N2
ix17342z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z2 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx17342z3 & (u_lab3_reg_minuend_3_3_aq)) # (!nx17342z3 & ((u_lab3_reg_minuend_2_3_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx17342z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_3_3_aq,
	datac => u_lab3_reg_minuend_2_3_aq,
	datad => nx17342z3,
	combout => nx17342z2);

-- Location: LCCOMB_X23_Y16_N8
ix17342z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z1 = (u_lab3_modgen_counter_column_areg_q_2_aq & ((u_lab3_modgen_counter_column_areg_q_3_aq) # ((nx17342z4)))) # (!u_lab3_modgen_counter_column_areg_q_2_aq & (!u_lab3_modgen_counter_column_areg_q_3_aq & ((nx17342z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_2_aq,
	datab => u_lab3_modgen_counter_column_areg_q_3_aq,
	datac => nx17342z4,
	datad => nx17342z2,
	combout => nx17342z1);

-- Location: FF_X28_Y14_N27
u_lab3_reg_addend_14_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx22064z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_14_3_aq);

-- Location: LCCOMB_X27_Y14_N16
ix14148z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx14148z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_3_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_14_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_3_aq,
	datad => u_lab3_reg_addend_14_3_aq,
	combout => nx14148z1);

-- Location: FF_X27_Y14_N17
u_lab3_reg_subtrahend_14_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx14148z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx18136z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_14_3_aq);

-- Location: LCCOMB_X27_Y12_N28
ix46616z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_451_a = (nx42628z1 & (((u_lab3_reg_subtrahend_14_3_aq & u_lab3_reg_state_2_aq)))) # (!nx42628z1 & ((yes_uart_u_uart_reg_Dout_3_aq) # ((u_lab3_reg_subtrahend_14_3_aq & u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx42628z1,
	datab => yes_uart_u_uart_reg_Dout_3_aq,
	datac => u_lab3_reg_subtrahend_14_3_aq,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_451_a);

-- Location: FF_X27_Y12_N29
u_lab3_reg_minuend_14_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_451_a,
	ena => nx42628z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_14_3_aq);

-- Location: FF_X28_Y14_N17
u_lab3_reg_addend_13_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx27199z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_13_3_aq);

-- Location: LCCOMB_X27_Y13_N22
ix19283z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx19283z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_3_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_13_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_3_aq,
	datac => u_lab3_reg_addend_13_3_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx19283z1);

-- Location: FF_X27_Y13_N23
u_lab3_reg_subtrahend_13_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx19283z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx23271z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_13_3_aq);

-- Location: LCCOMB_X27_Y12_N10
ix41481z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_419_a = (u_lab3_reg_subtrahend_13_3_aq & ((u_lab3_reg_state_2_aq) # ((!nx37493z1 & yes_uart_u_uart_reg_Dout_3_aq)))) # (!u_lab3_reg_subtrahend_13_3_aq & (((!nx37493z1 & yes_uart_u_uart_reg_Dout_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_13_3_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => nx37493z1,
	datad => yes_uart_u_uart_reg_Dout_3_aq,
	combout => u_lab3_minuend_1n10ss1_419_a);

-- Location: FF_X27_Y12_N11
u_lab3_reg_minuend_13_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_419_a,
	ena => nx37493z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_13_3_aq);

-- Location: FF_X23_Y12_N25
u_lab3_reg_addend_12_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx32334z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_12_3_aq);

-- Location: LCCOMB_X27_Y13_N12
ix24418z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx24418z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_3_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_12_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_3_aq,
	datac => u_lab3_reg_addend_12_3_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx24418z1);

-- Location: FF_X27_Y13_N13
u_lab3_reg_subtrahend_12_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx24418z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx28406z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_12_3_aq);

-- Location: LCCOMB_X24_Y13_N22
ix36346z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_387_a = (nx32358z1 & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_12_3_aq)))) # (!nx32358z1 & ((yes_uart_u_uart_reg_Dout_3_aq) # ((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_12_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx32358z1,
	datab => yes_uart_u_uart_reg_Dout_3_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => u_lab3_reg_subtrahend_12_3_aq,
	combout => u_lab3_minuend_1n10ss1_387_a);

-- Location: FF_X24_Y13_N23
u_lab3_reg_minuend_12_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_387_a,
	ena => nx32358z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_12_3_aq);

-- Location: LCCOMB_X23_Y16_N14
ix17342z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z9 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_13_3_aq)) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_12_3_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_minuend_13_3_aq,
	datad => u_lab3_reg_minuend_12_3_aq,
	combout => nx17342z9);

-- Location: FF_X23_Y12_N11
u_lab3_reg_addend_15_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_3_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16929z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_15_3_aq);

-- Location: LCCOMB_X22_Y12_N22
ix9013z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx9013z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_3_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_15_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_3_aq,
	datad => u_lab3_reg_addend_15_3_aq,
	combout => nx9013z1);

-- Location: FF_X22_Y12_N23
u_lab3_reg_subtrahend_15_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx9013z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx13001z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_15_3_aq);

-- Location: LCCOMB_X22_Y12_N14
ix51751z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_483_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_15_3_aq) # ((yes_uart_u_uart_reg_Dout_3_aq & !nx47763z1)))) # (!u_lab3_reg_state_2_aq & (yes_uart_u_uart_reg_Dout_3_aq & ((!nx47763z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => yes_uart_u_uart_reg_Dout_3_aq,
	datac => u_lab3_reg_subtrahend_15_3_aq,
	datad => nx47763z1,
	combout => u_lab3_minuend_1n10ss1_483_a);

-- Location: FF_X22_Y12_N15
u_lab3_reg_minuend_15_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_483_a,
	ena => nx47763z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_15_3_aq);

-- Location: LCCOMB_X23_Y16_N24
ix17342z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z8 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx17342z9 & ((u_lab3_reg_minuend_15_3_aq))) # (!nx17342z9 & (u_lab3_reg_minuend_14_3_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx17342z9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_14_3_aq,
	datac => nx17342z9,
	datad => u_lab3_reg_minuend_15_3_aq,
	combout => nx17342z8);

-- Location: LCCOMB_X23_Y16_N26
ix17342z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f1(3) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx17342z1 & ((nx17342z8))) # (!nx17342z1 & (nx17342z6)))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx17342z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => nx17342z6,
	datac => nx17342z1,
	datad => nx17342z8,
	combout => u_lab3_p_1n7s3f1(3));

-- Location: LCCOMB_X23_Y16_N20
ix17342z7108 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z12 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_1_3_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_0_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_subtrahend_0_3_aq,
	datad => u_lab3_reg_subtrahend_1_3_aq,
	combout => nx17342z12);

-- Location: LCCOMB_X23_Y16_N30
ix17342z7107 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z11 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx17342z12 & (u_lab3_reg_subtrahend_3_3_aq)) # (!nx17342z12 & ((u_lab3_reg_subtrahend_2_3_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx17342z12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_3_3_aq,
	datac => u_lab3_reg_subtrahend_2_3_aq,
	datad => nx17342z12,
	combout => nx17342z11);

-- Location: LCCOMB_X23_Y16_N16
ix17342z7110 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z14 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_5_3_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_4_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_subtrahend_4_3_aq,
	datad => u_lab3_reg_subtrahend_5_3_aq,
	combout => nx17342z14);

-- Location: LCCOMB_X23_Y16_N18
ix17342z7109 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z13 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx17342z14 & ((u_lab3_reg_subtrahend_7_3_aq))) # (!nx17342z14 & (u_lab3_reg_subtrahend_6_3_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (nx17342z14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => nx17342z14,
	datac => u_lab3_reg_subtrahend_6_3_aq,
	datad => u_lab3_reg_subtrahend_7_3_aq,
	combout => nx17342z13);

-- Location: LCCOMB_X23_Y16_N4
ix17342z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z10 = (u_lab3_modgen_counter_column_areg_q_2_aq & ((u_lab3_modgen_counter_column_areg_q_3_aq) # ((nx17342z13)))) # (!u_lab3_modgen_counter_column_areg_q_2_aq & (!u_lab3_modgen_counter_column_areg_q_3_aq & (nx17342z11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_2_aq,
	datab => u_lab3_modgen_counter_column_areg_q_3_aq,
	datac => nx17342z11,
	datad => nx17342z13,
	combout => nx17342z10);

-- Location: LCCOMB_X15_Y16_N18
ix17342z7112 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z16 = (u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_subtrahend_9_3_aq) # (u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_8_3_aq & 
-- ((!u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_8_3_aq,
	datab => u_lab3_reg_subtrahend_9_3_aq,
	datac => u_lab3_modgen_counter_column_areg_q_0_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx17342z16);

-- Location: LCCOMB_X15_Y16_N20
ix17342z7111 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z15 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx17342z16 & (u_lab3_reg_subtrahend_11_3_aq)) # (!nx17342z16 & ((u_lab3_reg_subtrahend_10_3_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx17342z16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_11_3_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_subtrahend_10_3_aq,
	datad => nx17342z16,
	combout => nx17342z15);

-- Location: LCCOMB_X27_Y13_N16
ix17342z7114 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z18 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_13_3_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_12_3_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_12_3_aq,
	datab => u_lab3_reg_subtrahend_13_3_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx17342z18);

-- Location: LCCOMB_X27_Y13_N26
ix17342z7113 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17342z17 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx17342z18 & ((u_lab3_reg_subtrahend_15_3_aq))) # (!nx17342z18 & (u_lab3_reg_subtrahend_14_3_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx17342z18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_14_3_aq,
	datab => u_lab3_reg_subtrahend_15_3_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => nx17342z18,
	combout => nx17342z17);

-- Location: LCCOMB_X23_Y16_N6
ix17342z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f2(3) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx17342z10 & ((nx17342z17))) # (!nx17342z10 & (nx17342z15)))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (nx17342z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => nx17342z10,
	datac => nx17342z15,
	datad => nx17342z17,
	combout => u_lab3_p_1n7s3f2(3));

-- Location: LCCOMB_X15_Y13_N24
yes_uart_u_uart_reg_Rx_Reg_2_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- yes_uart_u_uart_reg_Rx_Reg_2_afeeder_combout = yes_uart_u_uart_reg_Rx_Reg_3_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => yes_uart_u_uart_reg_Rx_Reg_3_aq,
	combout => yes_uart_u_uart_reg_Rx_Reg_2_afeeder_combout);

-- Location: FF_X15_Y13_N25
yes_uart_u_uart_reg_Rx_Reg_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => yes_uart_u_uart_reg_Rx_Reg_2_afeeder_combout,
	clrn => reset_n_ainput_o,
	ena => nx2098z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Rx_Reg_2_aq);

-- Location: FF_X18_Y13_N17
yes_uart_u_uart_reg_Dout_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Rx_Reg_2_aq,
	clrn => reset_n_ainput_o,
	sload => VCC,
	ena => nx46463z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Dout_2_aq);

-- Location: FF_X22_Y17_N23
u_lab3_reg_addend_11_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37469z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_11_2_aq);

-- Location: LCCOMB_X20_Y16_N2
ix28556z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx28556z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_2_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_11_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_2_aq,
	datad => u_lab3_reg_addend_11_2_aq,
	combout => nx28556z1);

-- Location: FF_X20_Y16_N3
u_lab3_reg_subtrahend_11_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx28556z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx33541z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_11_2_aq);

-- Location: FF_X24_Y18_N7
u_lab3_reg_addend_10_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42604z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_10_2_aq);

-- Location: LCCOMB_X22_Y14_N24
ix33691z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33691z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_2_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_10_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_reg_addend_10_2_aq,
	datad => yes_uart_u_uart_reg_Dout_2_aq,
	combout => nx33691z1);

-- Location: FF_X22_Y14_N25
u_lab3_reg_subtrahend_10_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx33691z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx38676z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_10_2_aq);

-- Location: FF_X16_Y16_N7
u_lab3_reg_addend_9_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx64440z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_9_2_aq);

-- Location: LCCOMB_X15_Y16_N2
ix39849z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx39849z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_2_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_9_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_9_2_aq,
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_2_aq,
	combout => nx39849z1);

-- Location: LCCOMB_X17_Y13_N2
u_lab3_reg_subtrahend_9_2_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_reg_subtrahend_9_2_afeeder_combout = nx39849z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx39849z1,
	combout => u_lab3_reg_subtrahend_9_2_afeeder_combout);

-- Location: FF_X17_Y13_N3
u_lab3_reg_subtrahend_9_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_reg_subtrahend_9_2_afeeder_combout,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx34864z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_9_2_aq);

-- Location: FF_X19_Y14_N31
u_lab3_reg_addend_8_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx6231z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_8_2_aq);

-- Location: LCCOMB_X18_Y17_N24
ix34714z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx34714z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_2_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_8_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => yes_uart_u_uart_reg_Dout_2_aq,
	datac => u_lab3_reg_addend_8_2_aq,
	combout => nx34714z1);

-- Location: FF_X18_Y17_N25
u_lab3_reg_subtrahend_8_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx34714z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx29729z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_8_2_aq);

-- Location: LCCOMB_X25_Y13_N16
ix13806z7112 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z16 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_9_2_aq) # ((u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (((!u_lab3_modgen_counter_column_areg_q_1_aq & 
-- u_lab3_reg_subtrahend_8_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_9_2_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_reg_subtrahend_8_2_aq,
	combout => nx13806z16);

-- Location: LCCOMB_X25_Y13_N26
ix13806z7111 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z15 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx13806z16 & (u_lab3_reg_subtrahend_11_2_aq)) # (!nx13806z16 & ((u_lab3_reg_subtrahend_10_2_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx13806z16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_11_2_aq,
	datab => u_lab3_reg_subtrahend_10_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => nx13806z16,
	combout => nx13806z15);

-- Location: FF_X28_Y14_N15
u_lab3_reg_addend_14_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx22064z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_14_2_aq);

-- Location: LCCOMB_X27_Y14_N10
ix13151z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13151z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_2_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_14_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_reg_addend_14_2_aq,
	datac => yes_uart_u_uart_reg_Dout_2_aq,
	combout => nx13151z1);

-- Location: FF_X27_Y14_N11
u_lab3_reg_subtrahend_14_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx13151z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx18136z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_14_2_aq);

-- Location: FF_X23_Y12_N31
u_lab3_reg_addend_15_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16929z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_15_2_aq);

-- Location: LCCOMB_X22_Y12_N0
ix8016z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx8016z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_2_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_15_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_2_aq,
	datab => u_lab3_reg_state_1_aq,
	datac => u_lab3_reg_addend_15_2_aq,
	combout => nx8016z1);

-- Location: FF_X22_Y12_N1
u_lab3_reg_subtrahend_15_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx8016z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx13001z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_15_2_aq);

-- Location: FF_X28_Y14_N13
u_lab3_reg_addend_13_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx27199z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_13_2_aq);

-- Location: LCCOMB_X27_Y13_N6
ix18286z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18286z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_2_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_13_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_2_aq,
	datad => u_lab3_reg_addend_13_2_aq,
	combout => nx18286z1);

-- Location: FF_X27_Y13_N7
u_lab3_reg_subtrahend_13_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx18286z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx23271z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_13_2_aq);

-- Location: FF_X23_Y12_N29
u_lab3_reg_addend_12_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx32334z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_12_2_aq);

-- Location: LCCOMB_X27_Y13_N20
ix23421z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx23421z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_2_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_12_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_reg_addend_12_2_aq,
	datac => yes_uart_u_uart_reg_Dout_2_aq,
	combout => nx23421z1);

-- Location: FF_X27_Y13_N21
u_lab3_reg_subtrahend_12_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx23421z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx28406z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_12_2_aq);

-- Location: LCCOMB_X27_Y13_N0
ix13806z7114 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z18 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_13_2_aq)) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_12_2_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_13_2_aq,
	datab => u_lab3_reg_subtrahend_12_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx13806z18);

-- Location: LCCOMB_X27_Y13_N18
ix13806z7113 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z17 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx13806z18 & ((u_lab3_reg_subtrahend_15_2_aq))) # (!nx13806z18 & (u_lab3_reg_subtrahend_14_2_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx13806z18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_14_2_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_subtrahend_15_2_aq,
	datad => nx13806z18,
	combout => nx13806z17);

-- Location: FF_X19_Y14_N13
u_lab3_reg_addend_6_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16501z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_6_2_aq);

-- Location: LCCOMB_X18_Y12_N2
ix41092z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41092z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_2_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_6_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_2_aq,
	datad => u_lab3_reg_addend_6_2_aq,
	combout => nx41092z1);

-- Location: FF_X18_Y12_N3
u_lab3_reg_subtrahend_6_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx41092z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx46077z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_6_2_aq);

-- Location: FF_X24_Y15_N31
u_lab3_reg_addend_7_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx11366z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_7_2_aq);

-- Location: LCCOMB_X19_Y15_N28
ix35957z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx35957z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_2_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_7_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_7_2_aq,
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_2_aq,
	combout => nx35957z1);

-- Location: FF_X19_Y15_N29
u_lab3_reg_subtrahend_7_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx35957z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx40942z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_7_2_aq);

-- Location: FF_X22_Y17_N5
u_lab3_reg_addend_5_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx21636z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_5_2_aq);

-- Location: LCCOMB_X19_Y12_N30
ix46227z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46227z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_2_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_5_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_2_aq,
	datad => u_lab3_reg_addend_5_2_aq,
	combout => nx46227z1);

-- Location: FF_X19_Y12_N31
u_lab3_reg_subtrahend_5_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx46227z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx51212z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_5_2_aq);

-- Location: FF_X16_Y16_N13
u_lab3_reg_addend_4_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx26771z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_4_2_aq);

-- Location: LCCOMB_X19_Y12_N20
ix51362z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51362z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_2_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_4_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_4_2_aq,
	datac => yes_uart_u_uart_reg_Dout_2_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx51362z1);

-- Location: FF_X19_Y12_N21
u_lab3_reg_subtrahend_4_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx51362z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx56347z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_4_2_aq);

-- Location: LCCOMB_X19_Y12_N24
ix13806z7110 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z14 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_5_2_aq) # ((u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_subtrahend_4_2_aq & 
-- !u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_5_2_aq,
	datab => u_lab3_reg_subtrahend_4_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_0_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx13806z14);

-- Location: LCCOMB_X19_Y12_N26
ix13806z7109 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z13 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx13806z14 & ((u_lab3_reg_subtrahend_7_2_aq))) # (!nx13806z14 & (u_lab3_reg_subtrahend_6_2_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx13806z14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_6_2_aq,
	datac => u_lab3_reg_subtrahend_7_2_aq,
	datad => nx13806z14,
	combout => nx13806z13);

-- Location: FF_X24_Y18_N13
u_lab3_reg_addend_2_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37041z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_2_2_aq);

-- Location: LCCOMB_X25_Y16_N10
ix61632z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx61632z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_2_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_2_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_2_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_2_2_aq,
	combout => nx61632z1);

-- Location: FF_X25_Y16_N11
u_lab3_reg_subtrahend_2_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx61632z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx1081z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_2_2_aq);

-- Location: FF_X15_Y17_N7
u_lab3_reg_addend_3_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx31906z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_3_2_aq);

-- Location: LCCOMB_X18_Y17_N30
ix56497z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56497z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_2_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_3_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_2_aq,
	datac => u_lab3_reg_addend_3_2_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx56497z1);

-- Location: FF_X18_Y17_N31
u_lab3_reg_subtrahend_3_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx56497z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx61482z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_3_2_aq);

-- Location: FF_X15_Y17_N21
u_lab3_reg_addend_0_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx47311z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_0_2_aq);

-- Location: LCCOMB_X20_Y17_N24
ix6366z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx6366z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_2_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_0_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_2_aq,
	datab => u_lab3_reg_addend_0_2_aq,
	datac => u_lab3_reg_state_1_aq,
	combout => nx6366z1);

-- Location: FF_X20_Y17_N25
u_lab3_reg_subtrahend_0_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx6366z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx11351z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_0_2_aq);

-- Location: FF_X24_Y15_N29
u_lab3_reg_addend_1_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_2_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42176z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_1_2_aq);

-- Location: LCCOMB_X25_Y15_N28
ix1231z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx1231z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_2_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_1_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => yes_uart_u_uart_reg_Dout_2_aq,
	datac => u_lab3_reg_addend_1_2_aq,
	combout => nx1231z1);

-- Location: FF_X25_Y15_N29
u_lab3_reg_subtrahend_1_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx1231z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx6216z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_1_2_aq);

-- Location: LCCOMB_X19_Y12_N16
ix13806z7108 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z12 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_1_2_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_0_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_0_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_0_aq,
	datad => u_lab3_reg_subtrahend_1_2_aq,
	combout => nx13806z12);

-- Location: LCCOMB_X19_Y12_N18
ix13806z7107 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z11 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx13806z12 & ((u_lab3_reg_subtrahend_3_2_aq))) # (!nx13806z12 & (u_lab3_reg_subtrahend_2_2_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx13806z12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_2_2_aq,
	datac => u_lab3_reg_subtrahend_3_2_aq,
	datad => nx13806z12,
	combout => nx13806z11);

-- Location: LCCOMB_X19_Y12_N28
ix13806z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z10 = (u_lab3_modgen_counter_column_areg_q_2_aq & ((u_lab3_modgen_counter_column_areg_q_3_aq) # ((nx13806z13)))) # (!u_lab3_modgen_counter_column_areg_q_2_aq & (!u_lab3_modgen_counter_column_areg_q_3_aq & ((nx13806z11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_2_aq,
	datab => u_lab3_modgen_counter_column_areg_q_3_aq,
	datac => nx13806z13,
	datad => nx13806z11,
	combout => nx13806z10);

-- Location: LCCOMB_X19_Y13_N10
ix13806z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f2(2) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx13806z10 & ((nx13806z17))) # (!nx13806z10 & (nx13806z15)))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx13806z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx13806z15,
	datab => u_lab3_modgen_counter_column_areg_q_3_aq,
	datac => nx13806z17,
	datad => nx13806z10,
	combout => u_lab3_p_1n7s3f2(2));

-- Location: LCCOMB_X20_Y16_N10
ix32208z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_354_a = (u_lab3_reg_subtrahend_11_2_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_2_aq & !nx27223z1)))) # (!u_lab3_reg_subtrahend_11_2_aq & (((yes_uart_u_uart_reg_Dout_2_aq & !nx27223z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_11_2_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_Dout_2_aq,
	datad => nx27223z1,
	combout => u_lab3_minuend_1n10ss1_354_a);

-- Location: FF_X20_Y16_N11
u_lab3_reg_minuend_11_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_354_a,
	ena => nx27223z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_11_2_aq);

-- Location: LCCOMB_X22_Y14_N16
ix27073z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_322_a = (yes_uart_u_uart_reg_Dout_2_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_10_2_aq)) # (!nx22088z1))) # (!yes_uart_u_uart_reg_Dout_2_aq & (u_lab3_reg_state_2_aq & (u_lab3_reg_subtrahend_10_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_2_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_subtrahend_10_2_aq,
	datad => nx22088z1,
	combout => u_lab3_minuend_1n10ss1_322_a);

-- Location: FF_X22_Y14_N17
u_lab3_reg_minuend_10_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_322_a,
	ena => nx22088z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_10_2_aq);

-- Location: LCCOMB_X25_Y13_N30
ix41414z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_258_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_8_2_aq) # ((!nx36429z1 & yes_uart_u_uart_reg_Dout_2_aq)))) # (!u_lab3_reg_state_2_aq & (((!nx36429z1 & yes_uart_u_uart_reg_Dout_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_subtrahend_8_2_aq,
	datac => nx36429z1,
	datad => yes_uart_u_uart_reg_Dout_2_aq,
	combout => u_lab3_minuend_1n10ss1_258_a);

-- Location: FF_X25_Y13_N31
u_lab3_reg_minuend_8_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_258_a,
	ena => nx36429z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_8_2_aq);

-- Location: LCCOMB_X25_Y13_N24
ix46549z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_290_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_9_2_aq) # ((yes_uart_u_uart_reg_Dout_2_aq & !nx41564z1)))) # (!u_lab3_reg_state_2_aq & (yes_uart_u_uart_reg_Dout_2_aq & (!nx41564z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => yes_uart_u_uart_reg_Dout_2_aq,
	datac => nx41564z1,
	datad => u_lab3_reg_subtrahend_9_2_aq,
	combout => u_lab3_minuend_1n10ss1_290_a);

-- Location: FF_X25_Y13_N25
u_lab3_reg_minuend_9_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_290_a,
	ena => nx41564z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_9_2_aq);

-- Location: LCCOMB_X25_Y13_N0
ix13806z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z7 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_9_2_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_8_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_8_2_aq,
	datab => u_lab3_reg_minuend_9_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx13806z7);

-- Location: LCCOMB_X25_Y13_N10
ix13806z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z6 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx13806z7 & (u_lab3_reg_minuend_11_2_aq)) # (!nx13806z7 & ((u_lab3_reg_minuend_10_2_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx13806z7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_11_2_aq,
	datab => u_lab3_reg_minuend_10_2_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => nx13806z7,
	combout => nx13806z6);

-- Location: LCCOMB_X22_Y12_N26
ix52748z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_482_a = (yes_uart_u_uart_reg_Dout_2_aq & (((u_lab3_reg_subtrahend_15_2_aq & u_lab3_reg_state_2_aq)) # (!nx47763z1))) # (!yes_uart_u_uart_reg_Dout_2_aq & (u_lab3_reg_subtrahend_15_2_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_2_aq,
	datab => u_lab3_reg_subtrahend_15_2_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx47763z1,
	combout => u_lab3_minuend_1n10ss1_482_a);

-- Location: FF_X22_Y12_N27
u_lab3_reg_minuend_15_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_482_a,
	ena => nx47763z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_15_2_aq);

-- Location: LCCOMB_X27_Y12_N24
ix47613z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_450_a = (nx42628z1 & (u_lab3_reg_state_2_aq & (u_lab3_reg_subtrahend_14_2_aq))) # (!nx42628z1 & ((yes_uart_u_uart_reg_Dout_2_aq) # ((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_14_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx42628z1,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_subtrahend_14_2_aq,
	datad => yes_uart_u_uart_reg_Dout_2_aq,
	combout => u_lab3_minuend_1n10ss1_450_a);

-- Location: FF_X27_Y12_N25
u_lab3_reg_minuend_14_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_450_a,
	ena => nx42628z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_14_2_aq);

-- Location: LCCOMB_X24_Y13_N24
ix37343z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_386_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_12_2_aq) # ((!nx32358z1 & yes_uart_u_uart_reg_Dout_2_aq)))) # (!u_lab3_reg_state_2_aq & (((!nx32358z1 & yes_uart_u_uart_reg_Dout_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_subtrahend_12_2_aq,
	datac => nx32358z1,
	datad => yes_uart_u_uart_reg_Dout_2_aq,
	combout => u_lab3_minuend_1n10ss1_386_a);

-- Location: FF_X24_Y13_N25
u_lab3_reg_minuend_12_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_386_a,
	ena => nx32358z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_12_2_aq);

-- Location: LCCOMB_X27_Y12_N30
ix42478z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_418_a = (yes_uart_u_uart_reg_Dout_2_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_13_2_aq)) # (!nx37493z1))) # (!yes_uart_u_uart_reg_Dout_2_aq & (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_13_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_2_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => nx37493z1,
	datad => u_lab3_reg_subtrahend_13_2_aq,
	combout => u_lab3_minuend_1n10ss1_418_a);

-- Location: FF_X27_Y12_N31
u_lab3_reg_minuend_13_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_418_a,
	ena => nx37493z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_13_2_aq);

-- Location: LCCOMB_X25_Y13_N20
ix13806z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z9 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_13_2_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_12_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_12_2_aq,
	datac => u_lab3_reg_minuend_13_2_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx13806z9);

-- Location: LCCOMB_X25_Y13_N22
ix13806z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z8 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx13806z9 & (u_lab3_reg_minuend_15_2_aq)) # (!nx13806z9 & ((u_lab3_reg_minuend_14_2_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx13806z9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_15_2_aq,
	datac => u_lab3_reg_minuend_14_2_aq,
	datad => nx13806z9,
	combout => nx13806z8);

-- Location: LCCOMB_X18_Y12_N18
ix31144z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_194_a = (yes_uart_u_uart_reg_Dout_2_aq & (((u_lab3_reg_subtrahend_6_2_aq & u_lab3_reg_state_2_aq)) # (!nx26159z1))) # (!yes_uart_u_uart_reg_Dout_2_aq & (u_lab3_reg_subtrahend_6_2_aq & ((u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_2_aq,
	datab => u_lab3_reg_subtrahend_6_2_aq,
	datac => nx26159z1,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_194_a);

-- Location: FF_X18_Y12_N19
u_lab3_reg_minuend_6_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_194_a,
	ena => nx26159z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_6_2_aq);

-- Location: LCCOMB_X19_Y19_N22
ix36279z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_226_a = (u_lab3_reg_subtrahend_7_2_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_2_aq & !nx31294z1)))) # (!u_lab3_reg_subtrahend_7_2_aq & (((yes_uart_u_uart_reg_Dout_2_aq & !nx31294z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_7_2_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_Dout_2_aq,
	datad => nx31294z1,
	combout => u_lab3_minuend_1n10ss1_226_a);

-- Location: FF_X19_Y19_N23
u_lab3_reg_minuend_7_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_226_a,
	ena => nx31294z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_7_2_aq);

-- Location: LCCOMB_X22_Y12_N8
ix26009z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_162_a = (yes_uart_u_uart_reg_Dout_2_aq & (((u_lab3_reg_subtrahend_5_2_aq & u_lab3_reg_state_2_aq)) # (!nx21024z1))) # (!yes_uart_u_uart_reg_Dout_2_aq & (u_lab3_reg_subtrahend_5_2_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_2_aq,
	datab => u_lab3_reg_subtrahend_5_2_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx21024z1,
	combout => u_lab3_minuend_1n10ss1_162_a);

-- Location: FF_X22_Y15_N3
u_lab3_reg_minuend_5_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_lab3_minuend_1n10ss1_162_a,
	sload => VCC,
	ena => nx21024z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_5_2_aq);

-- Location: LCCOMB_X20_Y14_N14
ix20874z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_130_a = (yes_uart_u_uart_reg_Dout_2_aq & (((u_lab3_reg_subtrahend_4_2_aq & u_lab3_reg_state_2_aq)) # (!nx15889z1))) # (!yes_uart_u_uart_reg_Dout_2_aq & (u_lab3_reg_subtrahend_4_2_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_2_aq,
	datab => u_lab3_reg_subtrahend_4_2_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx15889z1,
	combout => u_lab3_minuend_1n10ss1_130_a);

-- Location: FF_X20_Y14_N15
u_lab3_reg_minuend_4_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_130_a,
	ena => nx15889z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_4_2_aq);

-- Location: LCCOMB_X22_Y15_N2
ix13806z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z5 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_5_2_aq)) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_4_2_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_minuend_5_2_aq,
	datad => u_lab3_reg_minuend_4_2_aq,
	combout => nx13806z5);

-- Location: LCCOMB_X22_Y15_N4
ix13806z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z4 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx13806z5 & ((u_lab3_reg_minuend_7_2_aq))) # (!nx13806z5 & (u_lab3_reg_minuend_6_2_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx13806z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_6_2_aq,
	datac => u_lab3_reg_minuend_7_2_aq,
	datad => nx13806z5,
	combout => nx13806z4);

-- Location: LCCOMB_X25_Y16_N2
ix54932z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_66_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_2_2_aq) # ((yes_uart_u_uart_reg_Dout_2_aq & !nx59917z1)))) # (!u_lab3_reg_state_2_aq & (yes_uart_u_uart_reg_Dout_2_aq & ((!nx59917z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => yes_uart_u_uart_reg_Dout_2_aq,
	datac => u_lab3_reg_subtrahend_2_2_aq,
	datad => nx59917z1,
	combout => u_lab3_minuend_1n10ss1_66_a);

-- Location: FF_X25_Y16_N3
u_lab3_reg_minuend_2_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_66_a,
	ena => nx59917z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_2_2_aq);

-- Location: LCCOMB_X14_Y16_N10
ix49797z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_98_a = (u_lab3_reg_subtrahend_3_2_aq & ((u_lab3_reg_state_2_aq) # ((!nx54782z1 & yes_uart_u_uart_reg_Dout_2_aq)))) # (!u_lab3_reg_subtrahend_3_2_aq & (!nx54782z1 & ((yes_uart_u_uart_reg_Dout_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_3_2_aq,
	datab => nx54782z1,
	datac => u_lab3_reg_state_2_aq,
	datad => yes_uart_u_uart_reg_Dout_2_aq,
	combout => u_lab3_minuend_1n10ss1_98_a);

-- Location: FF_X14_Y16_N11
u_lab3_reg_minuend_3_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_98_a,
	ena => nx54782z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_3_2_aq);

-- Location: LCCOMB_X19_Y12_N2
ix60067z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_34_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_1_2_aq) # ((!nx65052z1 & yes_uart_u_uart_reg_Dout_2_aq)))) # (!u_lab3_reg_state_2_aq & (!nx65052z1 & (yes_uart_u_uart_reg_Dout_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => nx65052z1,
	datac => yes_uart_u_uart_reg_Dout_2_aq,
	datad => u_lab3_reg_subtrahend_1_2_aq,
	combout => u_lab3_minuend_1n10ss1_34_a);

-- Location: FF_X22_Y15_N7
u_lab3_reg_minuend_1_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_lab3_minuend_1n10ss1_34_a,
	sload => VCC,
	ena => nx65052z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_1_2_aq);

-- Location: LCCOMB_X20_Y17_N16
ix65202z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_2_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_0_2_aq) # ((yes_uart_u_uart_reg_Dout_2_aq & !nx4651z1)))) # (!u_lab3_reg_state_2_aq & (((yes_uart_u_uart_reg_Dout_2_aq & !nx4651z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_subtrahend_0_2_aq,
	datac => yes_uart_u_uart_reg_Dout_2_aq,
	datad => nx4651z1,
	combout => u_lab3_minuend_1n10ss1_2_a);

-- Location: FF_X20_Y17_N17
u_lab3_reg_minuend_0_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_2_a,
	ena => nx4651z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_0_2_aq);

-- Location: LCCOMB_X22_Y15_N6
ix13806z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z3 = (u_lab3_modgen_counter_column_areg_q_1_aq & (u_lab3_modgen_counter_column_areg_q_0_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_1_2_aq)) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_0_2_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_0_aq,
	datac => u_lab3_reg_minuend_1_2_aq,
	datad => u_lab3_reg_minuend_0_2_aq,
	combout => nx13806z3);

-- Location: LCCOMB_X22_Y15_N16
ix13806z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z2 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx13806z3 & ((u_lab3_reg_minuend_3_2_aq))) # (!nx13806z3 & (u_lab3_reg_minuend_2_2_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx13806z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_2_2_aq,
	datac => u_lab3_reg_minuend_3_2_aq,
	datad => nx13806z3,
	combout => nx13806z2);

-- Location: LCCOMB_X22_Y15_N14
ix13806z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx13806z1 = (u_lab3_modgen_counter_column_areg_q_2_aq & ((u_lab3_modgen_counter_column_areg_q_3_aq) # ((nx13806z4)))) # (!u_lab3_modgen_counter_column_areg_q_2_aq & (!u_lab3_modgen_counter_column_areg_q_3_aq & ((nx13806z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_2_aq,
	datab => u_lab3_modgen_counter_column_areg_q_3_aq,
	datac => nx13806z4,
	datad => nx13806z2,
	combout => nx13806z1);

-- Location: LCCOMB_X19_Y13_N0
ix13806z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f1(2) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx13806z1 & ((nx13806z8))) # (!nx13806z1 & (nx13806z6)))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx13806z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx13806z6,
	datab => u_lab3_modgen_counter_column_areg_q_3_aq,
	datac => nx13806z8,
	datad => nx13806z1,
	combout => u_lab3_p_1n7s3f1(2));

-- Location: LCCOMB_X15_Y13_N6
yes_uart_u_uart_reg_Rx_Reg_1_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- yes_uart_u_uart_reg_Rx_Reg_1_afeeder_combout = yes_uart_u_uart_reg_Rx_Reg_2_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => yes_uart_u_uart_reg_Rx_Reg_2_aq,
	combout => yes_uart_u_uart_reg_Rx_Reg_1_afeeder_combout);

-- Location: FF_X15_Y13_N7
yes_uart_u_uart_reg_Rx_Reg_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => yes_uart_u_uart_reg_Rx_Reg_1_afeeder_combout,
	clrn => reset_n_ainput_o,
	ena => nx2098z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Rx_Reg_1_aq);

-- Location: FF_X18_Y13_N15
yes_uart_u_uart_reg_Dout_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Rx_Reg_1_aq,
	clrn => reset_n_ainput_o,
	sload => VCC,
	ena => nx46463z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Dout_1_aq);

-- Location: FF_X22_Y17_N27
u_lab3_reg_addend_11_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37469z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_11_1_aq);

-- Location: LCCOMB_X22_Y18_N2
ix27559z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx27559z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_1_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_11_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_1_aq,
	datad => u_lab3_reg_addend_11_1_aq,
	combout => nx27559z1);

-- Location: FF_X22_Y18_N3
u_lab3_reg_subtrahend_11_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx27559z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx33541z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_11_1_aq);

-- Location: FF_X24_Y18_N11
u_lab3_reg_addend_10_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42604z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_10_1_aq);

-- Location: LCCOMB_X22_Y18_N16
ix32694z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx32694z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_1_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_10_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_addend_10_1_aq,
	datac => yes_uart_u_uart_reg_Dout_1_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx32694z1);

-- Location: FF_X22_Y18_N17
u_lab3_reg_subtrahend_10_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx32694z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx38676z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_10_1_aq);

-- Location: FF_X16_Y16_N3
u_lab3_reg_addend_9_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx64440z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_9_1_aq);

-- Location: LCCOMB_X15_Y16_N24
ix40846z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx40846z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_1_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_9_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_9_1_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => yes_uart_u_uart_reg_Dout_1_aq,
	combout => nx40846z1);

-- Location: FF_X15_Y16_N25
u_lab3_reg_subtrahend_9_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx40846z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx34864z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_9_1_aq);

-- Location: FF_X19_Y14_N19
u_lab3_reg_addend_8_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx6231z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_8_1_aq);

-- Location: LCCOMB_X15_Y16_N22
ix35711z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx35711z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_1_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_8_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_1_aq,
	datab => u_lab3_reg_addend_8_1_aq,
	datac => u_lab3_reg_state_1_aq,
	combout => nx35711z1);

-- Location: FF_X15_Y16_N23
u_lab3_reg_subtrahend_8_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx35711z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx29729z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_8_1_aq);

-- Location: LCCOMB_X15_Y16_N10
ix63011z7112 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z16 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_9_1_aq) # ((u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_subtrahend_8_1_aq & 
-- !u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_reg_subtrahend_9_1_aq,
	datac => u_lab3_reg_subtrahend_8_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx63011z16);

-- Location: LCCOMB_X15_Y16_N12
ix63011z7111 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z15 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx63011z16 & (u_lab3_reg_subtrahend_11_1_aq)) # (!nx63011z16 & ((u_lab3_reg_subtrahend_10_1_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx63011z16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_11_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_subtrahend_10_1_aq,
	datad => nx63011z16,
	combout => nx63011z15);

-- Location: FF_X19_Y14_N9
u_lab3_reg_addend_6_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16501z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_6_1_aq);

-- Location: LCCOMB_X20_Y15_N16
ix40095z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx40095z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_1_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_6_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_6_1_aq,
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_1_aq,
	combout => nx40095z1);

-- Location: FF_X20_Y15_N17
u_lab3_reg_subtrahend_6_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx40095z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx46077z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_6_1_aq);

-- Location: FF_X24_Y15_N3
u_lab3_reg_addend_7_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx11366z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_7_1_aq);

-- Location: LCCOMB_X20_Y15_N10
ix34960z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx34960z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_1_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_7_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_1_aq,
	datad => u_lab3_reg_addend_7_1_aq,
	combout => nx34960z1);

-- Location: FF_X20_Y15_N11
u_lab3_reg_subtrahend_7_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx34960z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx40942z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_7_1_aq);

-- Location: FF_X16_Y16_N9
u_lab3_reg_addend_4_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx26771z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_4_1_aq);

-- Location: LCCOMB_X24_Y16_N0
ix50365z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx50365z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_1_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_4_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_1_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_4_1_aq,
	combout => nx50365z1);

-- Location: FF_X24_Y16_N1
u_lab3_reg_subtrahend_4_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx50365z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx56347z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_4_1_aq);

-- Location: FF_X22_Y17_N25
u_lab3_reg_addend_5_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx21636z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_5_1_aq);

-- Location: LCCOMB_X19_Y17_N8
ix45230z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx45230z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_1_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_5_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_1_aq,
	datab => u_lab3_reg_addend_5_1_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx45230z1);

-- Location: FF_X19_Y17_N9
u_lab3_reg_subtrahend_5_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx45230z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx51212z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_5_1_aq);

-- Location: LCCOMB_X19_Y17_N10
ix63011z7110 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z14 = (u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_subtrahend_5_1_aq) # (u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_4_1_aq & 
-- ((!u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_4_1_aq,
	datab => u_lab3_reg_subtrahend_5_1_aq,
	datac => u_lab3_modgen_counter_column_areg_q_0_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx63011z14);

-- Location: LCCOMB_X19_Y17_N4
ix63011z7109 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z13 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx63011z14 & ((u_lab3_reg_subtrahend_7_1_aq))) # (!nx63011z14 & (u_lab3_reg_subtrahend_6_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx63011z14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_6_1_aq,
	datac => u_lab3_reg_subtrahend_7_1_aq,
	datad => nx63011z14,
	combout => nx63011z13);

-- Location: FF_X15_Y17_N3
u_lab3_reg_addend_3_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx31906z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_3_1_aq);

-- Location: LCCOMB_X18_Y17_N2
ix55500z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx55500z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_1_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_3_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_3_1_aq,
	datac => yes_uart_u_uart_reg_Dout_1_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx55500z1);

-- Location: FF_X18_Y17_N3
u_lab3_reg_subtrahend_3_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx55500z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx61482z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_3_1_aq);

-- Location: FF_X24_Y18_N25
u_lab3_reg_addend_2_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37041z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_2_1_aq);

-- Location: LCCOMB_X25_Y16_N20
ix60635z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx60635z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_1_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_2_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => u_lab3_reg_addend_2_1_aq,
	datac => yes_uart_u_uart_reg_Dout_1_aq,
	combout => nx60635z1);

-- Location: FF_X25_Y16_N21
u_lab3_reg_subtrahend_2_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx60635z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx1081z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_2_1_aq);

-- Location: FF_X24_Y15_N25
u_lab3_reg_addend_1_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42176z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_1_1_aq);

-- Location: LCCOMB_X25_Y15_N14
ix234z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx234z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_1_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_1_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => yes_uart_u_uart_reg_Dout_1_aq,
	datad => u_lab3_reg_addend_1_1_aq,
	combout => nx234z1);

-- Location: FF_X25_Y15_N15
u_lab3_reg_subtrahend_1_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx234z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx6216z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_1_1_aq);

-- Location: FF_X15_Y17_N17
u_lab3_reg_addend_0_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx47311z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_0_1_aq);

-- Location: LCCOMB_X20_Y17_N18
ix5369z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx5369z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_1_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_0_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_1_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_0_1_aq,
	combout => nx5369z1);

-- Location: FF_X20_Y17_N19
u_lab3_reg_subtrahend_0_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx5369z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx11351z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_0_1_aq);

-- Location: LCCOMB_X23_Y13_N28
ix63011z7108 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z12 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_modgen_counter_column_areg_q_1_aq) # ((u_lab3_reg_subtrahend_1_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (!u_lab3_modgen_counter_column_areg_q_1_aq & 
-- ((u_lab3_reg_subtrahend_0_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_subtrahend_1_1_aq,
	datad => u_lab3_reg_subtrahend_0_1_aq,
	combout => nx63011z12);

-- Location: LCCOMB_X23_Y13_N14
ix63011z7107 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z11 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx63011z12 & (u_lab3_reg_subtrahend_3_1_aq)) # (!nx63011z12 & ((u_lab3_reg_subtrahend_2_1_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx63011z12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_3_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_subtrahend_2_1_aq,
	datad => nx63011z12,
	combout => nx63011z11);

-- Location: LCCOMB_X19_Y13_N4
ix63011z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z10 = (u_lab3_modgen_counter_column_areg_q_3_aq & (u_lab3_modgen_counter_column_areg_q_2_aq)) # (!u_lab3_modgen_counter_column_areg_q_3_aq & ((u_lab3_modgen_counter_column_areg_q_2_aq & (nx63011z13)) # (!u_lab3_modgen_counter_column_areg_q_2_aq & 
-- ((nx63011z11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => nx63011z13,
	datad => nx63011z11,
	combout => nx63011z10);

-- Location: FF_X23_Y12_N27
u_lab3_reg_addend_15_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16929z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_15_1_aq);

-- Location: LCCOMB_X22_Y12_N18
ix7019z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx7019z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_1_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_15_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_1_aq,
	datab => u_lab3_reg_addend_15_1_aq,
	datac => u_lab3_reg_state_1_aq,
	combout => nx7019z1);

-- Location: FF_X22_Y12_N19
u_lab3_reg_subtrahend_15_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx7019z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx13001z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_15_1_aq);

-- Location: FF_X28_Y14_N3
u_lab3_reg_addend_14_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx22064z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_14_1_aq);

-- Location: LCCOMB_X27_Y14_N20
ix12154z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx12154z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_1_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_14_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_1_aq,
	datab => u_lab3_reg_addend_14_1_aq,
	datac => u_lab3_reg_state_1_aq,
	combout => nx12154z1);

-- Location: FF_X27_Y14_N21
u_lab3_reg_subtrahend_14_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx12154z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx18136z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_14_1_aq);

-- Location: FF_X23_Y12_N9
u_lab3_reg_addend_12_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx32334z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_12_1_aq);

-- Location: LCCOMB_X24_Y13_N16
ix22424z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx22424z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_1_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_12_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_12_1_aq,
	datac => yes_uart_u_uart_reg_Dout_1_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx22424z1);

-- Location: FF_X24_Y13_N17
u_lab3_reg_subtrahend_12_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx22424z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx28406z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_12_1_aq);

-- Location: FF_X28_Y14_N1
u_lab3_reg_addend_13_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_1_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx27199z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_13_1_aq);

-- Location: LCCOMB_X27_Y13_N4
ix17289z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx17289z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_1_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_13_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => u_lab3_reg_addend_13_1_aq,
	datad => yes_uart_u_uart_reg_Dout_1_aq,
	combout => nx17289z1);

-- Location: FF_X27_Y13_N5
u_lab3_reg_subtrahend_13_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx17289z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx23271z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_13_1_aq);

-- Location: LCCOMB_X27_Y13_N14
ix63011z7114 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z18 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_13_1_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_12_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_12_1_aq,
	datab => u_lab3_reg_subtrahend_13_1_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx63011z18);

-- Location: LCCOMB_X27_Y14_N30
ix63011z7113 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z17 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx63011z18 & (u_lab3_reg_subtrahend_15_1_aq)) # (!nx63011z18 & ((u_lab3_reg_subtrahend_14_1_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx63011z18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_15_1_aq,
	datab => u_lab3_reg_subtrahend_14_1_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => nx63011z18,
	combout => nx63011z17);

-- Location: LCCOMB_X19_Y13_N6
ix63011z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f2(1) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx63011z10 & ((nx63011z17))) # (!nx63011z10 & (nx63011z15)))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx63011z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63011z15,
	datab => u_lab3_modgen_counter_column_areg_q_3_aq,
	datac => nx63011z10,
	datad => nx63011z17,
	combout => u_lab3_p_1n7s3f2(1));

-- Location: LCCOMB_X25_Y13_N4
ix47546z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_289_a = (nx41564z1 & (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_9_1_aq)))) # (!nx41564z1 & ((yes_uart_u_uart_reg_Dout_1_aq) # ((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_9_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx41564z1,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_Dout_1_aq,
	datad => u_lab3_reg_subtrahend_9_1_aq,
	combout => u_lab3_minuend_1n10ss1_289_a);

-- Location: FF_X25_Y13_N5
u_lab3_reg_minuend_9_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_289_a,
	ena => nx41564z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_9_1_aq);

-- Location: LCCOMB_X25_Y13_N2
ix42411z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_257_a = (u_lab3_reg_subtrahend_8_1_aq & ((u_lab3_reg_state_2_aq) # ((!nx36429z1 & yes_uart_u_uart_reg_Dout_1_aq)))) # (!u_lab3_reg_subtrahend_8_1_aq & (((!nx36429z1 & yes_uart_u_uart_reg_Dout_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_8_1_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => nx36429z1,
	datad => yes_uart_u_uart_reg_Dout_1_aq,
	combout => u_lab3_minuend_1n10ss1_257_a);

-- Location: FF_X25_Y13_N3
u_lab3_reg_minuend_8_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_257_a,
	ena => nx36429z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_8_1_aq);

-- Location: LCCOMB_X23_Y13_N10
ix63011z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z7 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_modgen_counter_column_areg_q_1_aq) # ((u_lab3_reg_minuend_9_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (!u_lab3_modgen_counter_column_areg_q_1_aq & 
-- ((u_lab3_reg_minuend_8_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_minuend_9_1_aq,
	datad => u_lab3_reg_minuend_8_1_aq,
	combout => nx63011z7);

-- Location: LCCOMB_X20_Y16_N12
ix33205z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_353_a = (yes_uart_u_uart_reg_Dout_1_aq & (((u_lab3_reg_subtrahend_11_1_aq & u_lab3_reg_state_2_aq)) # (!nx27223z1))) # (!yes_uart_u_uart_reg_Dout_1_aq & (u_lab3_reg_subtrahend_11_1_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_1_aq,
	datab => u_lab3_reg_subtrahend_11_1_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx27223z1,
	combout => u_lab3_minuend_1n10ss1_353_a);

-- Location: FF_X20_Y16_N13
u_lab3_reg_minuend_11_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_353_a,
	ena => nx27223z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_11_1_aq);

-- Location: LCCOMB_X22_Y14_N26
ix28070z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_321_a = (yes_uart_u_uart_reg_Dout_1_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_10_1_aq)) # (!nx22088z1))) # (!yes_uart_u_uart_reg_Dout_1_aq & (u_lab3_reg_state_2_aq & (u_lab3_reg_subtrahend_10_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_1_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_subtrahend_10_1_aq,
	datad => nx22088z1,
	combout => u_lab3_minuend_1n10ss1_321_a);

-- Location: FF_X22_Y14_N27
u_lab3_reg_minuend_10_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_321_a,
	ena => nx22088z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_10_1_aq);

-- Location: LCCOMB_X23_Y13_N12
ix63011z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z6 = (nx63011z7 & ((u_lab3_reg_minuend_11_1_aq) # ((!u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!nx63011z7 & (((u_lab3_reg_minuend_10_1_aq & u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63011z7,
	datab => u_lab3_reg_minuend_11_1_aq,
	datac => u_lab3_reg_minuend_10_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx63011z6);

-- Location: LCCOMB_X14_Y16_N12
ix48800z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_97_a = (u_lab3_reg_subtrahend_3_1_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_1_aq & !nx54782z1)))) # (!u_lab3_reg_subtrahend_3_1_aq & (yes_uart_u_uart_reg_Dout_1_aq & ((!nx54782z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_3_1_aq,
	datab => yes_uart_u_uart_reg_Dout_1_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx54782z1,
	combout => u_lab3_minuend_1n10ss1_97_a);

-- Location: FF_X14_Y16_N13
u_lab3_reg_minuend_3_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_97_a,
	ena => nx54782z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_3_1_aq);

-- Location: LCCOMB_X25_Y16_N12
ix53935z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_65_a = (yes_uart_u_uart_reg_Dout_1_aq & (((u_lab3_reg_subtrahend_2_1_aq & u_lab3_reg_state_2_aq)) # (!nx59917z1))) # (!yes_uart_u_uart_reg_Dout_1_aq & (((u_lab3_reg_subtrahend_2_1_aq & u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_1_aq,
	datab => nx59917z1,
	datac => u_lab3_reg_subtrahend_2_1_aq,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_65_a);

-- Location: FF_X25_Y16_N13
u_lab3_reg_minuend_2_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_65_a,
	ena => nx59917z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_2_1_aq);

-- Location: LCCOMB_X23_Y13_N4
ix59070z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_33_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_1_1_aq) # ((!nx65052z1 & yes_uart_u_uart_reg_Dout_1_aq)))) # (!u_lab3_reg_state_2_aq & (!nx65052z1 & ((yes_uart_u_uart_reg_Dout_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => nx65052z1,
	datac => u_lab3_reg_subtrahend_1_1_aq,
	datad => yes_uart_u_uart_reg_Dout_1_aq,
	combout => u_lab3_minuend_1n10ss1_33_a);

-- Location: FF_X23_Y13_N1
u_lab3_reg_minuend_1_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_lab3_minuend_1n10ss1_33_a,
	sload => VCC,
	ena => nx65052z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_1_1_aq);

-- Location: LCCOMB_X20_Y17_N10
ix64205z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_1_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_0_1_aq) # ((yes_uart_u_uart_reg_Dout_1_aq & !nx4651z1)))) # (!u_lab3_reg_state_2_aq & (((yes_uart_u_uart_reg_Dout_1_aq & !nx4651z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_subtrahend_0_1_aq,
	datac => yes_uart_u_uart_reg_Dout_1_aq,
	datad => nx4651z1,
	combout => u_lab3_minuend_1n10ss1_1_a);

-- Location: FF_X20_Y17_N11
u_lab3_reg_minuend_0_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_1_a,
	ena => nx4651z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_0_1_aq);

-- Location: LCCOMB_X23_Y13_N0
ix63011z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z3 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_modgen_counter_column_areg_q_1_aq) # ((u_lab3_reg_minuend_1_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (!u_lab3_modgen_counter_column_areg_q_1_aq & 
-- ((u_lab3_reg_minuend_0_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_minuend_1_1_aq,
	datad => u_lab3_reg_minuend_0_1_aq,
	combout => nx63011z3);

-- Location: LCCOMB_X23_Y13_N26
ix63011z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z2 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx63011z3 & (u_lab3_reg_minuend_3_1_aq)) # (!nx63011z3 & ((u_lab3_reg_minuend_2_1_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx63011z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_3_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_minuend_2_1_aq,
	datad => nx63011z3,
	combout => nx63011z2);

-- Location: LCCOMB_X18_Y12_N20
ix32141z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_193_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_6_1_aq) # ((!nx26159z1 & yes_uart_u_uart_reg_Dout_1_aq)))) # (!u_lab3_reg_state_2_aq & (!nx26159z1 & ((yes_uart_u_uart_reg_Dout_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => nx26159z1,
	datac => u_lab3_reg_subtrahend_6_1_aq,
	datad => yes_uart_u_uart_reg_Dout_1_aq,
	combout => u_lab3_minuend_1n10ss1_193_a);

-- Location: FF_X18_Y12_N21
u_lab3_reg_minuend_6_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_193_a,
	ena => nx26159z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_6_1_aq);

-- Location: LCCOMB_X19_Y19_N16
ix37276z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_225_a = (yes_uart_u_uart_reg_Dout_1_aq & (((u_lab3_reg_subtrahend_7_1_aq & u_lab3_reg_state_2_aq)) # (!nx31294z1))) # (!yes_uart_u_uart_reg_Dout_1_aq & (u_lab3_reg_subtrahend_7_1_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_1_aq,
	datab => u_lab3_reg_subtrahend_7_1_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx31294z1,
	combout => u_lab3_minuend_1n10ss1_225_a);

-- Location: FF_X19_Y19_N17
u_lab3_reg_minuend_7_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_225_a,
	ena => nx31294z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_7_1_aq);

-- Location: LCCOMB_X24_Y16_N26
ix21871z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_129_a = (yes_uart_u_uart_reg_Dout_1_aq & (((u_lab3_reg_subtrahend_4_1_aq & u_lab3_reg_state_2_aq)) # (!nx15889z1))) # (!yes_uart_u_uart_reg_Dout_1_aq & (u_lab3_reg_subtrahend_4_1_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_1_aq,
	datab => u_lab3_reg_subtrahend_4_1_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx15889z1,
	combout => u_lab3_minuend_1n10ss1_129_a);

-- Location: FF_X24_Y16_N27
u_lab3_reg_minuend_4_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_129_a,
	ena => nx15889z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_4_1_aq);

-- Location: LCCOMB_X19_Y17_N20
ix27006z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_161_a = (yes_uart_u_uart_reg_Dout_1_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_5_1_aq)) # (!nx21024z1))) # (!yes_uart_u_uart_reg_Dout_1_aq & (u_lab3_reg_state_2_aq & (u_lab3_reg_subtrahend_5_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_1_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_subtrahend_5_1_aq,
	datad => nx21024z1,
	combout => u_lab3_minuend_1n10ss1_161_a);

-- Location: FF_X23_Y13_N21
u_lab3_reg_minuend_5_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_lab3_minuend_1n10ss1_161_a,
	sload => VCC,
	ena => nx21024z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_5_1_aq);

-- Location: LCCOMB_X23_Y13_N20
ix63011z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z5 = (u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_minuend_5_1_aq) # (u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_4_1_aq & 
-- ((!u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_reg_minuend_4_1_aq,
	datac => u_lab3_reg_minuend_5_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx63011z5);

-- Location: LCCOMB_X23_Y13_N6
ix63011z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z4 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx63011z5 & ((u_lab3_reg_minuend_7_1_aq))) # (!nx63011z5 & (u_lab3_reg_minuend_6_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx63011z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_6_1_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_minuend_7_1_aq,
	datad => nx63011z5,
	combout => nx63011z4);

-- Location: LCCOMB_X23_Y13_N8
ix63011z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z1 = (u_lab3_modgen_counter_column_areg_q_2_aq & ((u_lab3_modgen_counter_column_areg_q_3_aq) # ((nx63011z4)))) # (!u_lab3_modgen_counter_column_areg_q_2_aq & (!u_lab3_modgen_counter_column_areg_q_3_aq & (nx63011z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_2_aq,
	datab => u_lab3_modgen_counter_column_areg_q_3_aq,
	datac => nx63011z2,
	datad => nx63011z4,
	combout => nx63011z1);

-- Location: LCCOMB_X24_Y13_N18
ix38340z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_385_a = (nx32358z1 & (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_12_1_aq)))) # (!nx32358z1 & ((yes_uart_u_uart_reg_Dout_1_aq) # ((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_12_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx32358z1,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_Dout_1_aq,
	datad => u_lab3_reg_subtrahend_12_1_aq,
	combout => u_lab3_minuend_1n10ss1_385_a);

-- Location: FF_X24_Y13_N19
u_lab3_reg_minuend_12_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_385_a,
	ena => nx32358z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_12_1_aq);

-- Location: LCCOMB_X27_Y12_N18
ix43475z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_417_a = (yes_uart_u_uart_reg_Dout_1_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_13_1_aq)) # (!nx37493z1))) # (!yes_uart_u_uart_reg_Dout_1_aq & (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_13_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_1_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => nx37493z1,
	datad => u_lab3_reg_subtrahend_13_1_aq,
	combout => u_lab3_minuend_1n10ss1_417_a);

-- Location: FF_X27_Y12_N19
u_lab3_reg_minuend_13_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_417_a,
	ena => nx37493z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_13_1_aq);

-- Location: LCCOMB_X23_Y13_N22
ix63011z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z9 = (u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_minuend_13_1_aq) # (u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_12_1_aq & 
-- ((!u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_reg_minuend_12_1_aq,
	datac => u_lab3_reg_minuend_13_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx63011z9);

-- Location: LCCOMB_X22_Y12_N4
ix53745z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_481_a = (yes_uart_u_uart_reg_Dout_1_aq & (((u_lab3_reg_subtrahend_15_1_aq & u_lab3_reg_state_2_aq)) # (!nx47763z1))) # (!yes_uart_u_uart_reg_Dout_1_aq & (u_lab3_reg_subtrahend_15_1_aq & (u_lab3_reg_state_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_1_aq,
	datab => u_lab3_reg_subtrahend_15_1_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx47763z1,
	combout => u_lab3_minuend_1n10ss1_481_a);

-- Location: FF_X22_Y12_N5
u_lab3_reg_minuend_15_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_481_a,
	ena => nx47763z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_15_1_aq);

-- Location: LCCOMB_X27_Y14_N14
ix48610z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_449_a = (nx42628z1 & (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_14_1_aq)))) # (!nx42628z1 & ((yes_uart_u_uart_reg_Dout_1_aq) # ((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_14_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx42628z1,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_Dout_1_aq,
	datad => u_lab3_reg_subtrahend_14_1_aq,
	combout => u_lab3_minuend_1n10ss1_449_a);

-- Location: FF_X27_Y14_N15
u_lab3_reg_minuend_14_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_449_a,
	ena => nx42628z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_14_1_aq);

-- Location: LCCOMB_X23_Y13_N24
ix63011z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx63011z8 = (nx63011z9 & (((u_lab3_reg_minuend_15_1_aq)) # (!u_lab3_modgen_counter_column_areg_q_1_aq))) # (!nx63011z9 & (u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_reg_minuend_14_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63011z9,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_minuend_15_1_aq,
	datad => u_lab3_reg_minuend_14_1_aq,
	combout => nx63011z8);

-- Location: LCCOMB_X23_Y13_N18
ix63011z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f1(1) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx63011z1 & ((nx63011z8))) # (!nx63011z1 & (nx63011z6)))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx63011z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx63011z6,
	datab => u_lab3_modgen_counter_column_areg_q_3_aq,
	datac => nx63011z1,
	datad => nx63011z8,
	combout => u_lab3_p_1n7s3f1(1));

-- Location: LCCOMB_X15_Y13_N4
yes_uart_u_uart_reg_Rx_Reg_0_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- yes_uart_u_uart_reg_Rx_Reg_0_afeeder_combout = yes_uart_u_uart_reg_Rx_Reg_1_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => yes_uart_u_uart_reg_Rx_Reg_1_aq,
	combout => yes_uart_u_uart_reg_Rx_Reg_0_afeeder_combout);

-- Location: FF_X15_Y13_N5
yes_uart_u_uart_reg_Rx_Reg_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => yes_uart_u_uart_reg_Rx_Reg_0_afeeder_combout,
	clrn => reset_n_ainput_o,
	ena => nx2098z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Rx_Reg_0_aq);

-- Location: LCCOMB_X18_Y13_N30
yes_uart_u_uart_reg_Dout_0_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- yes_uart_u_uart_reg_Dout_0_afeeder_combout = yes_uart_u_uart_reg_Rx_Reg_0_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => yes_uart_u_uart_reg_Rx_Reg_0_aq,
	combout => yes_uart_u_uart_reg_Dout_0_afeeder_combout);

-- Location: FF_X18_Y13_N31
yes_uart_u_uart_reg_Dout_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => yes_uart_u_uart_reg_Dout_0_afeeder_combout,
	clrn => reset_n_ainput_o,
	ena => nx46463z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Dout_0_aq);

-- Location: FF_X23_Y12_N15
u_lab3_reg_addend_15_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16929z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_15_0_aq);

-- Location: LCCOMB_X22_Y12_N20
ix6022z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx6022z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_0_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_15_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => u_lab3_reg_addend_15_0_aq,
	datad => yes_uart_u_uart_reg_Dout_0_aq,
	combout => nx6022z1);

-- Location: FF_X22_Y12_N21
u_lab3_reg_subtrahend_15_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx6022z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx13001z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_15_0_aq);

-- Location: FF_X28_Y14_N7
u_lab3_reg_addend_14_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx22064z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_14_0_aq);

-- Location: LCCOMB_X27_Y14_N8
ix11157z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx11157z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_0_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_14_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_0_aq,
	datad => u_lab3_reg_addend_14_0_aq,
	combout => nx11157z1);

-- Location: FF_X27_Y14_N9
u_lab3_reg_subtrahend_14_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx11157z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx18136z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_14_0_aq);

-- Location: FF_X28_Y14_N29
u_lab3_reg_addend_13_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx27199z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_13_0_aq);

-- Location: LCCOMB_X25_Y12_N12
ix16292z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx16292z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_0_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_13_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_0_aq,
	datac => u_lab3_reg_addend_13_0_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx16292z1);

-- Location: FF_X25_Y12_N13
u_lab3_reg_subtrahend_13_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx16292z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx23271z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_13_0_aq);

-- Location: FF_X23_Y12_N21
u_lab3_reg_addend_12_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx32334z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_12_0_aq);

-- Location: LCCOMB_X25_Y12_N18
ix21427z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx21427z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_0_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_12_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Dout_0_aq,
	datac => u_lab3_reg_addend_12_0_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx21427z1);

-- Location: FF_X25_Y12_N19
u_lab3_reg_subtrahend_12_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx21427z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx28406z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_12_0_aq);

-- Location: LCCOMB_X25_Y12_N6
ix36913z7114 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z18 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_13_0_aq) # ((u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_subtrahend_12_0_aq & 
-- !u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_13_0_aq,
	datab => u_lab3_reg_subtrahend_12_0_aq,
	datac => u_lab3_modgen_counter_column_areg_q_0_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx36913z18);

-- Location: LCCOMB_X25_Y12_N0
ix36913z7113 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z17 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx36913z18 & (u_lab3_reg_subtrahend_15_0_aq)) # (!nx36913z18 & ((u_lab3_reg_subtrahend_14_0_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx36913z18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_subtrahend_15_0_aq,
	datac => u_lab3_reg_subtrahend_14_0_aq,
	datad => nx36913z18,
	combout => nx36913z17);

-- Location: FF_X22_Y17_N7
u_lab3_reg_addend_11_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37469z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_11_0_aq);

-- Location: LCCOMB_X22_Y18_N22
ix26562z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx26562z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_0_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_11_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_0_aq,
	datad => u_lab3_reg_addend_11_0_aq,
	combout => nx26562z1);

-- Location: FF_X22_Y18_N23
u_lab3_reg_subtrahend_11_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx26562z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx33541z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_11_0_aq);

-- Location: FF_X24_Y18_N15
u_lab3_reg_addend_10_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42604z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_10_0_aq);

-- Location: LCCOMB_X22_Y18_N20
ix31697z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx31697z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_0_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_10_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_addend_10_0_aq,
	datac => yes_uart_u_uart_reg_Dout_0_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx31697z1);

-- Location: FF_X22_Y18_N21
u_lab3_reg_subtrahend_10_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx31697z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx38676z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_10_0_aq);

-- Location: FF_X16_Y16_N15
u_lab3_reg_addend_9_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx64440z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_9_0_aq);

-- Location: LCCOMB_X15_Y16_N28
ix41843z7113 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41843z14 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_0_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_9_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_0_aq,
	datab => u_lab3_reg_state_1_aq,
	datac => u_lab3_reg_addend_9_0_aq,
	combout => nx41843z14);

-- Location: LCCOMB_X15_Y15_N20
u_lab3_reg_subtrahend_9_0_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_reg_subtrahend_9_0_afeeder_combout = nx41843z14

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => nx41843z14,
	combout => u_lab3_reg_subtrahend_9_0_afeeder_combout);

-- Location: FF_X15_Y15_N21
u_lab3_reg_subtrahend_9_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_reg_subtrahend_9_0_afeeder_combout,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx34864z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_9_0_aq);

-- Location: FF_X19_Y14_N15
u_lab3_reg_addend_8_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx6231z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_8_0_aq);

-- Location: LCCOMB_X15_Y15_N10
ix36708z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36708z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_0_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_8_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_0_aq,
	datac => u_lab3_reg_addend_8_0_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx36708z1);

-- Location: FF_X15_Y15_N11
u_lab3_reg_subtrahend_8_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx36708z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx29729z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_8_0_aq);

-- Location: LCCOMB_X18_Y15_N12
ix36913z7112 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z16 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_9_0_aq)) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_subtrahend_8_0_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_9_0_aq,
	datab => u_lab3_reg_subtrahend_8_0_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx36913z16);

-- Location: LCCOMB_X19_Y15_N14
ix36913z7111 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z15 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx36913z16 & (u_lab3_reg_subtrahend_11_0_aq)) # (!nx36913z16 & ((u_lab3_reg_subtrahend_10_0_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx36913z16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_11_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_subtrahend_10_0_aq,
	datad => nx36913z16,
	combout => nx36913z15);

-- Location: FF_X24_Y18_N5
u_lab3_reg_addend_2_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx37041z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_2_0_aq);

-- Location: LCCOMB_X25_Y16_N14
ix59638z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59638z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_0_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_2_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_2_0_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => yes_uart_u_uart_reg_Dout_0_aq,
	combout => nx59638z1);

-- Location: FF_X25_Y16_N15
u_lab3_reg_subtrahend_2_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx59638z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx1081z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_2_0_aq);

-- Location: FF_X15_Y17_N15
u_lab3_reg_addend_3_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx31906z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_3_0_aq);

-- Location: LCCOMB_X14_Y16_N26
ix54503z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx54503z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_0_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_3_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_addend_3_0_aq,
	datac => yes_uart_u_uart_reg_Dout_0_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx54503z1);

-- Location: FF_X14_Y16_N27
u_lab3_reg_subtrahend_3_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx54503z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx61482z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_3_0_aq);

-- Location: FF_X15_Y17_N13
u_lab3_reg_addend_0_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx47311z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_0_0_aq);

-- Location: LCCOMB_X20_Y17_N20
ix4372z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx4372z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_0_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_0_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_0_aq,
	datac => u_lab3_reg_state_1_aq,
	datad => u_lab3_reg_addend_0_0_aq,
	combout => nx4372z1);

-- Location: FF_X20_Y17_N21
u_lab3_reg_subtrahend_0_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx4372z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx11351z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_0_0_aq);

-- Location: FF_X24_Y15_N21
u_lab3_reg_addend_1_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx42176z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_1_0_aq);

-- Location: LCCOMB_X25_Y15_N0
ix64773z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx64773z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_0_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_1_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_0_aq,
	datad => u_lab3_reg_addend_1_0_aq,
	combout => nx64773z1);

-- Location: FF_X25_Y15_N1
u_lab3_reg_subtrahend_1_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx64773z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx6216z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_1_0_aq);

-- Location: LCCOMB_X23_Y13_N16
ix36913z7108 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z12 = (u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_modgen_counter_column_areg_q_1_aq) # ((u_lab3_reg_subtrahend_1_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (!u_lab3_modgen_counter_column_areg_q_1_aq & 
-- (u_lab3_reg_subtrahend_0_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_subtrahend_0_0_aq,
	datad => u_lab3_reg_subtrahend_1_0_aq,
	combout => nx36913z12);

-- Location: LCCOMB_X23_Y13_N2
ix36913z7107 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z11 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx36913z12 & ((u_lab3_reg_subtrahend_3_0_aq))) # (!nx36913z12 & (u_lab3_reg_subtrahend_2_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx36913z12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_2_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_subtrahend_3_0_aq,
	datad => nx36913z12,
	combout => nx36913z11);

-- Location: FF_X19_Y14_N5
u_lab3_reg_addend_6_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx16501z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_6_0_aq);

-- Location: LCCOMB_X20_Y15_N4
ix39098z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx39098z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_0_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_6_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_0_aq,
	datad => u_lab3_reg_addend_6_0_aq,
	combout => nx39098z1);

-- Location: FF_X20_Y15_N5
u_lab3_reg_subtrahend_6_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx39098z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx46077z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_6_0_aq);

-- Location: FF_X24_Y15_N15
u_lab3_reg_addend_7_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx11366z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_7_0_aq);

-- Location: LCCOMB_X20_Y15_N6
ix33963z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx33963z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_0_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_7_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_reg_state_1_aq,
	datac => yes_uart_u_uart_reg_Dout_0_aq,
	datad => u_lab3_reg_addend_7_0_aq,
	combout => nx33963z1);

-- Location: FF_X20_Y15_N7
u_lab3_reg_subtrahend_7_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx33963z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx40942z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_7_0_aq);

-- Location: FF_X16_Y16_N21
u_lab3_reg_addend_4_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx26771z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_4_0_aq);

-- Location: LCCOMB_X19_Y17_N22
ix49368z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx49368z1 = (u_lab3_reg_state_1_aq & ((yes_uart_u_uart_reg_Dout_0_aq))) # (!u_lab3_reg_state_1_aq & (u_lab3_reg_addend_4_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_addend_4_0_aq,
	datab => yes_uart_u_uart_reg_Dout_0_aq,
	datad => u_lab3_reg_state_1_aq,
	combout => nx49368z1);

-- Location: FF_X19_Y17_N23
u_lab3_reg_subtrahend_4_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx49368z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx56347z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_4_0_aq);

-- Location: FF_X22_Y17_N21
u_lab3_reg_addend_5_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => yes_uart_u_uart_reg_Dout_0_aq,
	sclr => ALT_INV_u_lab3_reg_state_3_aq,
	sload => VCC,
	ena => nx21636z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_addend_5_0_aq);

-- Location: LCCOMB_X19_Y17_N0
ix44233z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx44233z1 = (u_lab3_reg_state_1_aq & (yes_uart_u_uart_reg_Dout_0_aq)) # (!u_lab3_reg_state_1_aq & ((u_lab3_reg_addend_5_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_1_aq,
	datab => yes_uart_u_uart_reg_Dout_0_aq,
	datac => u_lab3_reg_addend_5_0_aq,
	combout => nx44233z1);

-- Location: FF_X19_Y17_N1
u_lab3_reg_subtrahend_5_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx44233z1,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx51212z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_subtrahend_5_0_aq);

-- Location: LCCOMB_X19_Y17_N2
ix36913z7110 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z14 = (u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_subtrahend_5_0_aq) # (u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_subtrahend_4_0_aq & 
-- ((!u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_4_0_aq,
	datab => u_lab3_reg_subtrahend_5_0_aq,
	datac => u_lab3_modgen_counter_column_areg_q_0_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx36913z14);

-- Location: LCCOMB_X19_Y17_N28
ix36913z7109 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z13 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx36913z14 & ((u_lab3_reg_subtrahend_7_0_aq))) # (!nx36913z14 & (u_lab3_reg_subtrahend_6_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx36913z14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_6_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_subtrahend_7_0_aq,
	datad => nx36913z14,
	combout => nx36913z13);

-- Location: LCCOMB_X19_Y13_N2
ix36913z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z10 = (u_lab3_modgen_counter_column_areg_q_3_aq & (u_lab3_modgen_counter_column_areg_q_2_aq)) # (!u_lab3_modgen_counter_column_areg_q_3_aq & ((u_lab3_modgen_counter_column_areg_q_2_aq & ((nx36913z13))) # (!u_lab3_modgen_counter_column_areg_q_2_aq & 
-- (nx36913z11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => nx36913z11,
	datad => nx36913z13,
	combout => nx36913z10);

-- Location: LCCOMB_X19_Y13_N30
ix36913z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f2(0) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx36913z10 & (nx36913z17)) # (!nx36913z10 & ((nx36913z15))))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx36913z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx36913z17,
	datab => u_lab3_modgen_counter_column_areg_q_3_aq,
	datac => nx36913z15,
	datad => nx36913z10,
	combout => u_lab3_p_1n7s3f2(0));

-- Location: LCCOMB_X20_Y16_N14
ix34202z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_352_a = (yes_uart_u_uart_reg_Dout_0_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_11_0_aq)) # (!nx27223z1))) # (!yes_uart_u_uart_reg_Dout_0_aq & (u_lab3_reg_state_2_aq & (u_lab3_reg_subtrahend_11_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_0_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_subtrahend_11_0_aq,
	datad => nx27223z1,
	combout => u_lab3_minuend_1n10ss1_352_a);

-- Location: FF_X20_Y16_N15
u_lab3_reg_minuend_11_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_352_a,
	ena => nx27223z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_11_0_aq);

-- Location: LCCOMB_X22_Y14_N4
ix29067z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_320_a = (yes_uart_u_uart_reg_Dout_0_aq & (((u_lab3_reg_state_2_aq & u_lab3_reg_subtrahend_10_0_aq)) # (!nx22088z1))) # (!yes_uart_u_uart_reg_Dout_0_aq & (u_lab3_reg_state_2_aq & (u_lab3_reg_subtrahend_10_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_0_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => u_lab3_reg_subtrahend_10_0_aq,
	datad => nx22088z1,
	combout => u_lab3_minuend_1n10ss1_320_a);

-- Location: FF_X22_Y14_N5
u_lab3_reg_minuend_10_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_320_a,
	ena => nx22088z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_10_0_aq);

-- Location: LCCOMB_X18_Y15_N22
ix48543z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_288_a = (yes_uart_u_uart_reg_Dout_0_aq & (((u_lab3_reg_subtrahend_9_0_aq & u_lab3_reg_state_2_aq)) # (!nx41564z1))) # (!yes_uart_u_uart_reg_Dout_0_aq & (u_lab3_reg_subtrahend_9_0_aq & ((u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_0_aq,
	datab => u_lab3_reg_subtrahend_9_0_aq,
	datac => nx41564z1,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_288_a);

-- Location: FF_X18_Y15_N23
u_lab3_reg_minuend_9_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_288_a,
	ena => nx41564z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_9_0_aq);

-- Location: LCCOMB_X18_Y15_N20
ix43408z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_256_a = (yes_uart_u_uart_reg_Dout_0_aq & (((u_lab3_reg_subtrahend_8_0_aq & u_lab3_reg_state_2_aq)) # (!nx36429z1))) # (!yes_uart_u_uart_reg_Dout_0_aq & (((u_lab3_reg_subtrahend_8_0_aq & u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_0_aq,
	datab => nx36429z1,
	datac => u_lab3_reg_subtrahend_8_0_aq,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_256_a);

-- Location: FF_X18_Y15_N21
u_lab3_reg_minuend_8_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_256_a,
	ena => nx36429z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_8_0_aq);

-- Location: LCCOMB_X18_Y15_N16
ix36913z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z7 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_9_0_aq)) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_8_0_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_9_0_aq,
	datab => u_lab3_reg_minuend_8_0_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx36913z7);

-- Location: LCCOMB_X18_Y15_N26
ix36913z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z6 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx36913z7 & (u_lab3_reg_minuend_11_0_aq)) # (!nx36913z7 & ((u_lab3_reg_minuend_10_0_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx36913z7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_11_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_minuend_10_0_aq,
	datad => nx36913z7,
	combout => nx36913z6);

-- Location: LCCOMB_X27_Y12_N6
ix49607z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_448_a = (u_lab3_reg_subtrahend_14_0_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_0_aq & !nx42628z1)))) # (!u_lab3_reg_subtrahend_14_0_aq & (((yes_uart_u_uart_reg_Dout_0_aq & !nx42628z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_14_0_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_Dout_0_aq,
	datad => nx42628z1,
	combout => u_lab3_minuend_1n10ss1_448_a);

-- Location: FF_X27_Y12_N7
u_lab3_reg_minuend_14_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_448_a,
	ena => nx42628z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_14_0_aq);

-- Location: LCCOMB_X22_Y12_N6
ix54742z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_480_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_15_0_aq) # ((yes_uart_u_uart_reg_Dout_0_aq & !nx47763z1)))) # (!u_lab3_reg_state_2_aq & (yes_uart_u_uart_reg_Dout_0_aq & ((!nx47763z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => yes_uart_u_uart_reg_Dout_0_aq,
	datac => u_lab3_reg_subtrahend_15_0_aq,
	datad => nx47763z1,
	combout => u_lab3_minuend_1n10ss1_480_a);

-- Location: FF_X22_Y12_N7
u_lab3_reg_minuend_15_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_480_a,
	ena => nx47763z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_15_0_aq);

-- Location: LCCOMB_X24_Y13_N4
ix39337z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_384_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_12_0_aq) # ((yes_uart_u_uart_reg_Dout_0_aq & !nx32358z1)))) # (!u_lab3_reg_state_2_aq & (yes_uart_u_uart_reg_Dout_0_aq & (!nx32358z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => yes_uart_u_uart_reg_Dout_0_aq,
	datac => nx32358z1,
	datad => u_lab3_reg_subtrahend_12_0_aq,
	combout => u_lab3_minuend_1n10ss1_384_a);

-- Location: FF_X24_Y13_N5
u_lab3_reg_minuend_12_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_384_a,
	ena => nx32358z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_12_0_aq);

-- Location: LCCOMB_X27_Y12_N4
ix44472z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_416_a = (u_lab3_reg_subtrahend_13_0_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_0_aq & !nx37493z1)))) # (!u_lab3_reg_subtrahend_13_0_aq & (yes_uart_u_uart_reg_Dout_0_aq & (!nx37493z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_13_0_aq,
	datab => yes_uart_u_uart_reg_Dout_0_aq,
	datac => nx37493z1,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_416_a);

-- Location: FF_X27_Y12_N5
u_lab3_reg_minuend_13_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_416_a,
	ena => nx37493z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_13_0_aq);

-- Location: LCCOMB_X25_Y13_N28
ix36913z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z9 = (u_lab3_modgen_counter_column_areg_q_1_aq & (((u_lab3_modgen_counter_column_areg_q_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & ((u_lab3_modgen_counter_column_areg_q_0_aq & ((u_lab3_reg_minuend_13_0_aq))) # 
-- (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_12_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_12_0_aq,
	datac => u_lab3_reg_minuend_13_0_aq,
	datad => u_lab3_modgen_counter_column_areg_q_0_aq,
	combout => nx36913z9);

-- Location: LCCOMB_X25_Y13_N14
ix36913z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z8 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx36913z9 & ((u_lab3_reg_minuend_15_0_aq))) # (!nx36913z9 & (u_lab3_reg_minuend_14_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx36913z9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_14_0_aq,
	datab => u_lab3_reg_minuend_15_0_aq,
	datac => u_lab3_modgen_counter_column_areg_q_1_aq,
	datad => nx36913z9,
	combout => nx36913z8);

-- Location: LCCOMB_X18_Y12_N14
ix33138z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_192_a = (u_lab3_reg_subtrahend_6_0_aq & ((u_lab3_reg_state_2_aq) # ((!nx26159z1 & yes_uart_u_uart_reg_Dout_0_aq)))) # (!u_lab3_reg_subtrahend_6_0_aq & (!nx26159z1 & (yes_uart_u_uart_reg_Dout_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_6_0_aq,
	datab => nx26159z1,
	datac => yes_uart_u_uart_reg_Dout_0_aq,
	datad => u_lab3_reg_state_2_aq,
	combout => u_lab3_minuend_1n10ss1_192_a);

-- Location: FF_X18_Y12_N15
u_lab3_reg_minuend_6_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_192_a,
	ena => nx26159z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_6_0_aq);

-- Location: LCCOMB_X19_Y19_N18
ix38273z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_224_a = (u_lab3_reg_subtrahend_7_0_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_0_aq & !nx31294z1)))) # (!u_lab3_reg_subtrahend_7_0_aq & (yes_uart_u_uart_reg_Dout_0_aq & ((!nx31294z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_7_0_aq,
	datab => yes_uart_u_uart_reg_Dout_0_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx31294z1,
	combout => u_lab3_minuend_1n10ss1_224_a);

-- Location: FF_X19_Y19_N19
u_lab3_reg_minuend_7_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_224_a,
	ena => nx31294z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_7_0_aq);

-- Location: LCCOMB_X24_Y16_N12
ix22868z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_128_a = (u_lab3_reg_subtrahend_4_0_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_0_aq & !nx15889z1)))) # (!u_lab3_reg_subtrahend_4_0_aq & (((yes_uart_u_uart_reg_Dout_0_aq & !nx15889z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_4_0_aq,
	datab => u_lab3_reg_state_2_aq,
	datac => yes_uart_u_uart_reg_Dout_0_aq,
	datad => nx15889z1,
	combout => u_lab3_minuend_1n10ss1_128_a);

-- Location: FF_X24_Y16_N13
u_lab3_reg_minuend_4_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_128_a,
	ena => nx15889z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_4_0_aq);

-- Location: LCCOMB_X19_Y17_N14
ix28003z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_160_a = (nx21024z1 & (u_lab3_reg_subtrahend_5_0_aq & (u_lab3_reg_state_2_aq))) # (!nx21024z1 & ((yes_uart_u_uart_reg_Dout_0_aq) # ((u_lab3_reg_subtrahend_5_0_aq & u_lab3_reg_state_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx21024z1,
	datab => u_lab3_reg_subtrahend_5_0_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => yes_uart_u_uart_reg_Dout_0_aq,
	combout => u_lab3_minuend_1n10ss1_160_a);

-- Location: FF_X19_Y16_N7
u_lab3_reg_minuend_5_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_lab3_minuend_1n10ss1_160_a,
	sload => VCC,
	ena => nx21024z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_5_0_aq);

-- Location: LCCOMB_X19_Y16_N6
ix36913z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z5 = (u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_minuend_5_0_aq) # (u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_4_0_aq & 
-- ((!u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_reg_minuend_4_0_aq,
	datac => u_lab3_reg_minuend_5_0_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx36913z5);

-- Location: LCCOMB_X19_Y16_N8
ix36913z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z4 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx36913z5 & ((u_lab3_reg_minuend_7_0_aq))) # (!nx36913z5 & (u_lab3_reg_minuend_6_0_aq)))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx36913z5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_minuend_6_0_aq,
	datab => u_lab3_modgen_counter_column_areg_q_1_aq,
	datac => u_lab3_reg_minuend_7_0_aq,
	datad => nx36913z5,
	combout => nx36913z4);

-- Location: LCCOMB_X14_Y16_N22
ix47803z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_96_a = (u_lab3_reg_subtrahend_3_0_aq & ((u_lab3_reg_state_2_aq) # ((yes_uart_u_uart_reg_Dout_0_aq & !nx54782z1)))) # (!u_lab3_reg_subtrahend_3_0_aq & (yes_uart_u_uart_reg_Dout_0_aq & ((!nx54782z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_subtrahend_3_0_aq,
	datab => yes_uart_u_uart_reg_Dout_0_aq,
	datac => u_lab3_reg_state_2_aq,
	datad => nx54782z1,
	combout => u_lab3_minuend_1n10ss1_96_a);

-- Location: FF_X14_Y16_N23
u_lab3_reg_minuend_3_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_96_a,
	ena => nx54782z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_3_0_aq);

-- Location: LCCOMB_X25_Y16_N30
ix52938z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_64_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_2_0_aq) # ((yes_uart_u_uart_reg_Dout_0_aq & !nx59917z1)))) # (!u_lab3_reg_state_2_aq & (yes_uart_u_uart_reg_Dout_0_aq & ((!nx59917z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => yes_uart_u_uart_reg_Dout_0_aq,
	datac => u_lab3_reg_subtrahend_2_0_aq,
	datad => nx59917z1,
	combout => u_lab3_minuend_1n10ss1_64_a);

-- Location: FF_X25_Y16_N31
u_lab3_reg_minuend_2_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_64_a,
	ena => nx59917z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_2_0_aq);

-- Location: LCCOMB_X20_Y17_N4
ix63208z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_0_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_0_0_aq) # ((yes_uart_u_uart_reg_Dout_0_aq & !nx4651z1)))) # (!u_lab3_reg_state_2_aq & (((yes_uart_u_uart_reg_Dout_0_aq & !nx4651z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_subtrahend_0_0_aq,
	datac => yes_uart_u_uart_reg_Dout_0_aq,
	datad => nx4651z1,
	combout => u_lab3_minuend_1n10ss1_0_a);

-- Location: FF_X20_Y17_N5
u_lab3_reg_minuend_0_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_lab3_minuend_1n10ss1_0_a,
	ena => nx4651z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_0_0_aq);

-- Location: LCCOMB_X23_Y13_N30
ix58073z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_minuend_1n10ss1_32_a = (u_lab3_reg_state_2_aq & ((u_lab3_reg_subtrahend_1_0_aq) # ((yes_uart_u_uart_reg_Dout_0_aq & !nx65052z1)))) # (!u_lab3_reg_state_2_aq & (((yes_uart_u_uart_reg_Dout_0_aq & !nx65052z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_2_aq,
	datab => u_lab3_reg_subtrahend_1_0_aq,
	datac => yes_uart_u_uart_reg_Dout_0_aq,
	datad => nx65052z1,
	combout => u_lab3_minuend_1n10ss1_32_a);

-- Location: FF_X19_Y16_N3
u_lab3_reg_minuend_1_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	asdata => u_lab3_minuend_1n10ss1_32_a,
	sload => VCC,
	ena => nx65052z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_minuend_1_0_aq);

-- Location: LCCOMB_X19_Y16_N2
ix36913z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z3 = (u_lab3_modgen_counter_column_areg_q_0_aq & (((u_lab3_reg_minuend_1_0_aq) # (u_lab3_modgen_counter_column_areg_q_1_aq)))) # (!u_lab3_modgen_counter_column_areg_q_0_aq & (u_lab3_reg_minuend_0_0_aq & 
-- ((!u_lab3_modgen_counter_column_areg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_0_aq,
	datab => u_lab3_reg_minuend_0_0_aq,
	datac => u_lab3_reg_minuend_1_0_aq,
	datad => u_lab3_modgen_counter_column_areg_q_1_aq,
	combout => nx36913z3);

-- Location: LCCOMB_X19_Y16_N20
ix36913z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z2 = (u_lab3_modgen_counter_column_areg_q_1_aq & ((nx36913z3 & (u_lab3_reg_minuend_3_0_aq)) # (!nx36913z3 & ((u_lab3_reg_minuend_2_0_aq))))) # (!u_lab3_modgen_counter_column_areg_q_1_aq & (((nx36913z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_1_aq,
	datab => u_lab3_reg_minuend_3_0_aq,
	datac => u_lab3_reg_minuend_2_0_aq,
	datad => nx36913z3,
	combout => nx36913z2);

-- Location: LCCOMB_X19_Y16_N18
ix36913z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx36913z1 = (u_lab3_modgen_counter_column_areg_q_3_aq & (u_lab3_modgen_counter_column_areg_q_2_aq)) # (!u_lab3_modgen_counter_column_areg_q_3_aq & ((u_lab3_modgen_counter_column_areg_q_2_aq & (nx36913z4)) # (!u_lab3_modgen_counter_column_areg_q_2_aq & 
-- ((nx36913z2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_modgen_counter_column_areg_q_3_aq,
	datab => u_lab3_modgen_counter_column_areg_q_2_aq,
	datac => nx36913z4,
	datad => nx36913z2,
	combout => nx36913z1);

-- Location: LCCOMB_X19_Y13_N8
ix36913z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3f1(0) = (u_lab3_modgen_counter_column_areg_q_3_aq & ((nx36913z1 & ((nx36913z8))) # (!nx36913z1 & (nx36913z6)))) # (!u_lab3_modgen_counter_column_areg_q_3_aq & (((nx36913z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx36913z6,
	datab => u_lab3_modgen_counter_column_areg_q_3_aq,
	datac => nx36913z8,
	datad => nx36913z1,
	combout => u_lab3_p_1n7s3f1(0));

-- Location: LCCOMB_X19_Y13_N12
u_lab3_p_sub8_1i275_ix35_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3_0_a = (u_lab3_p_1n7s3f2(0) & (u_lab3_p_1n7s3f1(0) $ (VCC))) # (!u_lab3_p_1n7s3f2(0) & ((u_lab3_p_1n7s3f1(0)) # (GND)))
-- nx63011z19 = CARRY((u_lab3_p_1n7s3f1(0)) # (!u_lab3_p_1n7s3f2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_p_1n7s3f2(0),
	datab => u_lab3_p_1n7s3f1(0),
	datad => VCC,
	combout => u_lab3_p_1n7s3_0_a,
	cout => nx63011z19);

-- Location: LCCOMB_X19_Y13_N14
u_lab3_p_sub8_1i275_ix39_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3_1_a = (u_lab3_p_1n7s3f2(1) & ((u_lab3_p_1n7s3f1(1) & (!nx63011z19)) # (!u_lab3_p_1n7s3f1(1) & ((nx63011z19) # (GND))))) # (!u_lab3_p_1n7s3f2(1) & ((u_lab3_p_1n7s3f1(1) & (nx63011z19 & VCC)) # (!u_lab3_p_1n7s3f1(1) & (!nx63011z19))))
-- nx13806z19 = CARRY((u_lab3_p_1n7s3f2(1) & ((!nx63011z19) # (!u_lab3_p_1n7s3f1(1)))) # (!u_lab3_p_1n7s3f2(1) & (!u_lab3_p_1n7s3f1(1) & !nx63011z19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_p_1n7s3f2(1),
	datab => u_lab3_p_1n7s3f1(1),
	datad => VCC,
	cin => nx63011z19,
	combout => u_lab3_p_1n7s3_1_a,
	cout => nx13806z19);

-- Location: LCCOMB_X19_Y13_N16
u_lab3_p_sub8_1i275_ix43_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3_2_a = ((u_lab3_p_1n7s3f2(2) $ (u_lab3_p_1n7s3f1(2) $ (nx13806z19)))) # (GND)
-- nx17342z19 = CARRY((u_lab3_p_1n7s3f2(2) & (u_lab3_p_1n7s3f1(2) & !nx13806z19)) # (!u_lab3_p_1n7s3f2(2) & ((u_lab3_p_1n7s3f1(2)) # (!nx13806z19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_p_1n7s3f2(2),
	datab => u_lab3_p_1n7s3f1(2),
	datad => VCC,
	cin => nx13806z19,
	combout => u_lab3_p_1n7s3_2_a,
	cout => nx17342z19);

-- Location: LCCOMB_X19_Y13_N18
u_lab3_p_sub8_1i275_ix47_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3_3_a = (u_lab3_p_1n7s3f1(3) & ((u_lab3_p_1n7s3f2(3) & (!nx17342z19)) # (!u_lab3_p_1n7s3f2(3) & (nx17342z19 & VCC)))) # (!u_lab3_p_1n7s3f1(3) & ((u_lab3_p_1n7s3f2(3) & ((nx17342z19) # (GND))) # (!u_lab3_p_1n7s3f2(3) & (!nx17342z19))))
-- nx64525z19 = CARRY((u_lab3_p_1n7s3f1(3) & (u_lab3_p_1n7s3f2(3) & !nx17342z19)) # (!u_lab3_p_1n7s3f1(3) & ((u_lab3_p_1n7s3f2(3)) # (!nx17342z19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_p_1n7s3f1(3),
	datab => u_lab3_p_1n7s3f2(3),
	datad => VCC,
	cin => nx17342z19,
	combout => u_lab3_p_1n7s3_3_a,
	cout => nx64525z19);

-- Location: LCCOMB_X19_Y13_N20
u_lab3_p_sub8_1i275_ix51_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3_4_a = ((u_lab3_p_1n7s3f2(4) $ (u_lab3_p_1n7s3f1(4) $ (nx64525z19)))) # (GND)
-- nx33377z19 = CARRY((u_lab3_p_1n7s3f2(4) & (u_lab3_p_1n7s3f1(4) & !nx64525z19)) # (!u_lab3_p_1n7s3f2(4) & ((u_lab3_p_1n7s3f1(4)) # (!nx64525z19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_p_1n7s3f2(4),
	datab => u_lab3_p_1n7s3f1(4),
	datad => VCC,
	cin => nx64525z19,
	combout => u_lab3_p_1n7s3_4_a,
	cout => nx33377z19);

-- Location: LCCOMB_X19_Y13_N22
u_lab3_p_sub8_1i275_ix55_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3_5_a = (u_lab3_p_1n7s3f2(5) & ((u_lab3_p_1n7s3f1(5) & (!nx33377z19)) # (!u_lab3_p_1n7s3f1(5) & ((nx33377z19) # (GND))))) # (!u_lab3_p_1n7s3f2(5) & ((u_lab3_p_1n7s3f1(5) & (nx33377z19 & VCC)) # (!u_lab3_p_1n7s3f1(5) & (!nx33377z19))))
-- nx63307z19 = CARRY((u_lab3_p_1n7s3f2(5) & ((!nx33377z19) # (!u_lab3_p_1n7s3f1(5)))) # (!u_lab3_p_1n7s3f2(5) & (!u_lab3_p_1n7s3f1(5) & !nx33377z19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_p_1n7s3f2(5),
	datab => u_lab3_p_1n7s3f1(5),
	datad => VCC,
	cin => nx33377z19,
	combout => u_lab3_p_1n7s3_5_a,
	cout => nx63307z19);

-- Location: LCCOMB_X19_Y13_N24
u_lab3_p_sub8_1i275_ix59_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3_6_a = ((u_lab3_p_1n7s3f2(6) $ (u_lab3_p_1n7s3f1(6) $ (nx63307z19)))) # (GND)
-- nx46976z19 = CARRY((u_lab3_p_1n7s3f2(6) & (u_lab3_p_1n7s3f1(6) & !nx63307z19)) # (!u_lab3_p_1n7s3f2(6) & ((u_lab3_p_1n7s3f1(6)) # (!nx63307z19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_p_1n7s3f2(6),
	datab => u_lab3_p_1n7s3f1(6),
	datad => VCC,
	cin => nx63307z19,
	combout => u_lab3_p_1n7s3_6_a,
	cout => nx46976z19);

-- Location: LCCOMB_X19_Y13_N26
u_lab3_p_sub8_1i275_ix63_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3_7_a = (u_lab3_p_1n7s3f2(7) & ((u_lab3_p_1n7s3f1(7) & (!nx46976z19)) # (!u_lab3_p_1n7s3f1(7) & ((nx46976z19) # (GND))))) # (!u_lab3_p_1n7s3f2(7) & ((u_lab3_p_1n7s3f1(7) & (nx46976z19 & VCC)) # (!u_lab3_p_1n7s3f1(7) & (!nx46976z19))))
-- nx17564z1 = CARRY((u_lab3_p_1n7s3f2(7) & ((!nx46976z19) # (!u_lab3_p_1n7s3f1(7)))) # (!u_lab3_p_1n7s3f2(7) & (!u_lab3_p_1n7s3f1(7) & !nx46976z19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_p_1n7s3f2(7),
	datab => u_lab3_p_1n7s3f1(7),
	datad => VCC,
	cin => nx46976z19,
	combout => u_lab3_p_1n7s3_7_a,
	cout => nx17564z1);

-- Location: LCCOMB_X19_Y13_N28
u_lab3_p_sub8_1i275_ix63_fadd_buf : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s3_9_a = nx17564z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx17564z1,
	combout => u_lab3_p_1n7s3_9_a);

-- Location: LCCOMB_X18_Y13_N12
u_lab3_p_add9_1i276_ix44_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx43842z1 = CARRY((yes_uart_u_uart_reg_Dout_0_aq & u_lab3_p_1n7s3_0_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_0_aq,
	datab => u_lab3_p_1n7s3_0_a,
	datad => VCC,
	cout => nx43842z1);

-- Location: LCCOMB_X18_Y13_N14
u_lab3_p_add9_1i276_ix46_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx59416z1 = CARRY((yes_uart_u_uart_reg_Dout_1_aq & (!u_lab3_p_1n7s3_1_a & !nx43842z1)) # (!yes_uart_u_uart_reg_Dout_1_aq & ((!nx43842z1) # (!u_lab3_p_1n7s3_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_1_aq,
	datab => u_lab3_p_1n7s3_1_a,
	datad => VCC,
	cin => nx43842z1,
	cout => nx59416z1);

-- Location: LCCOMB_X18_Y13_N16
u_lab3_p_add9_1i276_ix48_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx27511z1 = CARRY((yes_uart_u_uart_reg_Dout_2_aq & ((u_lab3_p_1n7s3_2_a) # (!nx59416z1))) # (!yes_uart_u_uart_reg_Dout_2_aq & (u_lab3_p_1n7s3_2_a & !nx59416z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_2_aq,
	datab => u_lab3_p_1n7s3_2_a,
	datad => VCC,
	cin => nx59416z1,
	cout => nx27511z1);

-- Location: LCCOMB_X18_Y13_N18
u_lab3_p_add9_1i276_ix50_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx43085z1 = CARRY((yes_uart_u_uart_reg_Dout_3_aq & (!u_lab3_p_1n7s3_3_a & !nx27511z1)) # (!yes_uart_u_uart_reg_Dout_3_aq & ((!nx27511z1) # (!u_lab3_p_1n7s3_3_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_3_aq,
	datab => u_lab3_p_1n7s3_3_a,
	datad => VCC,
	cin => nx27511z1,
	cout => nx43085z1);

-- Location: LCCOMB_X18_Y13_N20
u_lab3_p_add9_1i276_ix52_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx6877z1 = CARRY((u_lab3_p_1n7s3_4_a & ((yes_uart_u_uart_reg_Dout_4_aq) # (!nx43085z1))) # (!u_lab3_p_1n7s3_4_a & (yes_uart_u_uart_reg_Dout_4_aq & !nx43085z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_p_1n7s3_4_a,
	datab => yes_uart_u_uart_reg_Dout_4_aq,
	datad => VCC,
	cin => nx43085z1,
	cout => nx6877z1);

-- Location: LCCOMB_X18_Y13_N22
u_lab3_p_add9_1i276_ix54_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx56839z1 = CARRY((yes_uart_u_uart_reg_Dout_5_aq & (!u_lab3_p_1n7s3_5_a & !nx6877z1)) # (!yes_uart_u_uart_reg_Dout_5_aq & ((!nx6877z1) # (!u_lab3_p_1n7s3_5_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_5_aq,
	datab => u_lab3_p_1n7s3_5_a,
	datad => VCC,
	cin => nx6877z1,
	cout => nx56839z1);

-- Location: LCCOMB_X18_Y13_N24
u_lab3_p_add9_1i276_ix56_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx41265z1 = CARRY((u_lab3_p_1n7s3_6_a & ((yes_uart_u_uart_reg_Dout_6_aq) # (!nx56839z1))) # (!u_lab3_p_1n7s3_6_a & (yes_uart_u_uart_reg_Dout_6_aq & !nx56839z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_p_1n7s3_6_a,
	datab => yes_uart_u_uart_reg_Dout_6_aq,
	datad => VCC,
	cin => nx56839z1,
	cout => nx41265z1);

-- Location: LCCOMB_X18_Y13_N26
u_lab3_p_add9_1i276_ix58_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx19195z1 = CARRY((yes_uart_u_uart_reg_Dout_7_aq & (!u_lab3_p_1n7s3_7_a & !nx41265z1)) # (!yes_uart_u_uart_reg_Dout_7_aq & ((!nx41265z1) # (!u_lab3_p_1n7s3_7_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_7_aq,
	datab => u_lab3_p_1n7s3_7_a,
	datad => VCC,
	cin => nx41265z1,
	cout => nx19195z1);

-- Location: LCCOMB_X18_Y13_N28
u_lab3_p_add9_1i276_ix58_fadd_buf : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx57902z1 = !nx19195z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => nx19195z1,
	combout => nx57902z1);

-- Location: LCCOMB_X18_Y13_N2
u_lab3_p_add9_1i276_ix60_fadd_a1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_add9_1i276_ix60_fadd_a1_cout = CARRY(u_lab3_p_1n7s3_9_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => u_lab3_p_1n7s3_9_a,
	datad => VCC,
	cout => u_lab3_p_add9_1i276_ix60_fadd_a1_cout);

-- Location: LCCOMB_X18_Y13_N4
u_lab3_p_add9_1i276_ix60_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx49424z1 = CARRY((!u_lab3_p_add9_1i276_ix60_fadd_a1_cout) # (!nx57902z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => nx57902z1,
	datad => VCC,
	cin => u_lab3_p_add9_1i276_ix60_fadd_a1_cout,
	cout => nx49424z1);

-- Location: LCCOMB_X18_Y13_N6
ix3639_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_lab3_p_1n7s2_31_a = (nx49424z1 & u_lab3_p_1n7s3_9_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => u_lab3_p_1n7s3_9_a,
	cin => nx49424z1,
	combout => u_lab3_p_1n7s2_31_a);

-- Location: LCCOMB_X18_Y13_N10
ix31891z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx31891z1 = (nx53092z2 & (((u_lab3_reg_p_31_aq)))) # (!nx53092z2 & (u_lab3_reg_state_3_aq & ((u_lab3_p_1n7s2_31_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_3_aq,
	datab => nx53092z2,
	datac => u_lab3_reg_p_31_aq,
	datad => u_lab3_p_1n7s2_31_a,
	combout => nx31891z1);

-- Location: FF_X18_Y13_N11
u_lab3_reg_p_31_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx31891z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_p_31_aq);

-- Location: LCCOMB_X18_Y13_N0
ix19416z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx19416z1 = (u_lab3_reg_state_3_aq & (!u_lab3_reg_p_31_aq & (yes_uart_u_uart_reg_RxRDYi_aq))) # (!u_lab3_reg_state_3_aq & (((!u_lab3_reg_state_0_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_p_31_aq,
	datab => yes_uart_u_uart_reg_RxRDYi_aq,
	datac => u_lab3_reg_state_0_aq,
	datad => u_lab3_reg_state_3_aq,
	combout => nx19416z1);

-- Location: FF_X14_Y14_N9
reg_q_0_dup_37 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_3036,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx19416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_37_aq);

-- Location: LCCOMB_X14_Y14_N10
ix3019_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_3038 = (reg_q_1_dup_36_aq & (!nx18768z1)) # (!reg_q_1_dup_36_aq & ((nx18768z1) # (GND)))
-- nx52399z1 = CARRY((!nx18768z1) # (!reg_q_1_dup_36_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_1_dup_36_aq,
	datad => VCC,
	cin => nx18768z1,
	combout => inc_d_1_dup_3038,
	cout => nx52399z1);

-- Location: FF_X14_Y14_N11
reg_q_1_dup_36 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_3038,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx19416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_36_aq);

-- Location: LCCOMB_X14_Y14_N12
ix3021_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_3040 = (reg_q_2_dup_35_aq & (nx52399z1 $ (GND))) # (!reg_q_2_dup_35_aq & (!nx52399z1 & VCC))
-- nx2437z1 = CARRY((reg_q_2_dup_35_aq & !nx52399z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_2_dup_35_aq,
	datad => VCC,
	cin => nx52399z1,
	combout => inc_d_2_dup_3040,
	cout => nx2437z1);

-- Location: FF_X14_Y14_N13
reg_q_2_dup_35 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_3040,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx19416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_35_aq);

-- Location: LCCOMB_X14_Y14_N14
ix3023_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_3042 = (reg_q_3_dup_34_aq & (!nx2437z1)) # (!reg_q_3_dup_34_aq & ((nx2437z1) # (GND)))
-- nx47525z1 = CARRY((!nx2437z1) # (!reg_q_3_dup_34_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_3_dup_34_aq,
	datad => VCC,
	cin => nx2437z1,
	combout => inc_d_3_dup_3042,
	cout => nx47525z1);

-- Location: FF_X14_Y14_N15
reg_q_3_dup_34 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_3042,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx19416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_34_aq);

-- Location: LCCOMB_X14_Y14_N16
ix3025_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_3044 = (reg_q_4_dup_33_aq & (nx47525z1 $ (GND))) # (!reg_q_4_dup_33_aq & (!nx47525z1 & VCC))
-- nx31951z1 = CARRY((reg_q_4_dup_33_aq & !nx47525z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_dup_33_aq,
	datad => VCC,
	cin => nx47525z1,
	combout => inc_d_4_dup_3044,
	cout => nx31951z1);

-- Location: FF_X14_Y14_N17
reg_q_4_dup_33 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_3044,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx19416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_33_aq);

-- Location: LCCOMB_X14_Y14_N18
ix3027_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_3046 = (reg_q_5_dup_32_aq & (!nx31951z1)) # (!reg_q_5_dup_32_aq & ((nx31951z1) # (GND)))
-- nx16377z1 = CARRY((!nx31951z1) # (!reg_q_5_dup_32_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_5_dup_32_aq,
	datad => VCC,
	cin => nx31951z1,
	combout => inc_d_5_dup_3046,
	cout => nx16377z1);

-- Location: FF_X14_Y14_N19
reg_q_5_dup_32 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_3046,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx19416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_32_aq);

-- Location: LCCOMB_X14_Y14_N20
ix3029_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_3048 = (reg_q_6_dup_31_aq & (nx16377z1 $ (GND))) # (!reg_q_6_dup_31_aq & (!nx16377z1 & VCC))
-- nx56069z1 = CARRY((reg_q_6_dup_31_aq & !nx16377z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_6_dup_31_aq,
	datad => VCC,
	cin => nx16377z1,
	combout => inc_d_6_dup_3048,
	cout => nx56069z1);

-- Location: FF_X14_Y14_N21
reg_q_6_dup_31 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_3048,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx19416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_31_aq);

-- Location: LCCOMB_X14_Y14_N28
ix51544z7110 : fiftyfivenm_lcell_comb
-- Equation(s):
-- seg7_num(6) = (sw_a0_a_ainput_o & (nx51544z10)) # (!sw_a0_a_ainput_o & ((reg_q_6_dup_31_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51544z10,
	datac => sw_a0_a_ainput_o,
	datad => reg_q_6_dup_31_aq,
	combout => seg7_num(6));

-- Location: LCCOMB_X14_Y13_N12
ix10540z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- byte_reg_2n1ss1(5) = (sw_a7_a_ainput_o & ((reg_q_5_aq))) # (!sw_a7_a_ainput_o & (yes_uart_u_uart_reg_Dout_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_5_aq,
	datab => reg_q_5_aq,
	datac => sw_a7_a_ainput_o,
	combout => byte_reg_2n1ss1(5));

-- Location: FF_X14_Y13_N13
reg_byte_reg_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => byte_reg_2n1ss1(5),
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_byte_reg_5_aq);

-- Location: LCCOMB_X14_Y13_N14
ix51544z7109 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z9 = (sw_a1_a_ainput_o & ((reg_byte_reg_5_aq))) # (!sw_a1_a_ainput_o & (reg_q_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_a1_a_ainput_o,
	datab => reg_q_5_aq,
	datad => reg_byte_reg_5_aq,
	combout => nx51544z9);

-- Location: LCCOMB_X14_Y14_N26
ix51544z7108 : fiftyfivenm_lcell_comb
-- Equation(s):
-- seg7_num(5) = (sw_a0_a_ainput_o & (nx51544z9)) # (!sw_a0_a_ainput_o & ((reg_q_5_dup_32_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51544z9,
	datac => sw_a0_a_ainput_o,
	datad => reg_q_5_dup_32_aq,
	combout => seg7_num(5));

-- Location: LCCOMB_X14_Y14_N22
ix3030_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_3050 = reg_q_7_dup_30_aq $ (nx56069z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_dup_30_aq,
	cin => nx56069z1,
	combout => inc_d_7_dup_3050);

-- Location: FF_X14_Y14_N23
reg_q_7_dup_30 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_3050,
	sclr => ALT_INV_u_lab3_reg_state_0_aq,
	ena => nx19416z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_30_aq);

-- Location: LCCOMB_X11_Y16_N28
ix28_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_a = nx53431z1 $ (reg_q_7_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => reg_q_7_aq,
	cin => nx53431z1,
	combout => inc_d_7_a);

-- Location: FF_X11_Y16_N29
reg_q_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_a,
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_aq);

-- Location: LCCOMB_X14_Y13_N4
ix8546z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- byte_reg_2n1ss1(7) = (sw_a7_a_ainput_o & (reg_q_7_aq)) # (!sw_a7_a_ainput_o & ((yes_uart_u_uart_reg_Dout_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_7_aq,
	datac => sw_a7_a_ainput_o,
	datad => yes_uart_u_uart_reg_Dout_7_aq,
	combout => byte_reg_2n1ss1(7));

-- Location: FF_X14_Y13_N5
reg_byte_reg_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => byte_reg_2n1ss1(7),
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_byte_reg_7_aq);

-- Location: LCCOMB_X14_Y13_N6
ix51544z7113 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z11 = (sw_a1_a_ainput_o & (reg_byte_reg_7_aq)) # (!sw_a1_a_ainput_o & ((reg_q_7_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_a1_a_ainput_o,
	datab => reg_byte_reg_7_aq,
	datac => reg_q_7_aq,
	combout => nx51544z11);

-- Location: LCCOMB_X14_Y14_N30
ix51544z7112 : fiftyfivenm_lcell_comb
-- Equation(s):
-- seg7_num(7) = (sw_a0_a_ainput_o & ((nx51544z11))) # (!sw_a0_a_ainput_o & (reg_q_7_dup_30_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_a0_a_ainput_o,
	datac => reg_q_7_dup_30_aq,
	datad => nx51544z11,
	combout => seg7_num(7));

-- Location: LCCOMB_X14_Y13_N24
ix11537z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- byte_reg_2n1ss1(4) = (sw_a7_a_ainput_o & ((reg_q_4_aq))) # (!sw_a7_a_ainput_o & (yes_uart_u_uart_reg_Dout_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Dout_4_aq,
	datab => reg_q_4_aq,
	datac => sw_a7_a_ainput_o,
	combout => byte_reg_2n1ss1(4));

-- Location: FF_X14_Y13_N25
reg_byte_reg_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => byte_reg_2n1ss1(4),
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_byte_reg_4_aq);

-- Location: LCCOMB_X14_Y13_N2
ix51544z7107 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z8 = (sw_a1_a_ainput_o & ((reg_byte_reg_4_aq))) # (!sw_a1_a_ainput_o & (reg_q_4_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_a1_a_ainput_o,
	datab => reg_q_4_aq,
	datad => reg_byte_reg_4_aq,
	combout => nx51544z8);

-- Location: LCCOMB_X14_Y14_N24
ix51544z7106 : fiftyfivenm_lcell_comb
-- Equation(s):
-- seg7_num(4) = (sw_a0_a_ainput_o & (nx51544z8)) # (!sw_a0_a_ainput_o & ((reg_q_4_dup_33_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51544z8,
	datac => sw_a0_a_ainput_o,
	datad => reg_q_4_dup_33_aq,
	combout => seg7_num(4));

-- Location: LCCOMB_X12_Y14_N2
ix18625z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_rtlcP1(8) = (seg7_num(5) & ((seg7_num(4) & ((!seg7_num(7)))) # (!seg7_num(4) & (!seg7_num(6))))) # (!seg7_num(5) & ((seg7_num(7) $ (!seg7_num(4))) # (!seg7_num(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg7_num(6),
	datab => seg7_num(5),
	datac => seg7_num(7),
	datad => seg7_num(4),
	combout => u_seg7_rtlcP1(8));

-- Location: LCCOMB_X11_Y16_N0
ix13531z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- byte_reg_2n1ss1(2) = (sw_a7_a_ainput_o & (reg_q_2_aq)) # (!sw_a7_a_ainput_o & ((yes_uart_u_uart_reg_Dout_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_a7_a_ainput_o,
	datab => reg_q_2_aq,
	datac => yes_uart_u_uart_reg_Dout_2_aq,
	combout => byte_reg_2n1ss1(2));

-- Location: FF_X11_Y16_N1
reg_byte_reg_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => byte_reg_2n1ss1(2),
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_byte_reg_2_aq);

-- Location: LCCOMB_X11_Y16_N2
ix51544z7102 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z5 = (sw_a1_a_ainput_o & ((reg_byte_reg_2_aq))) # (!sw_a1_a_ainput_o & (reg_q_2_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_aq,
	datac => sw_a1_a_ainput_o,
	datad => reg_byte_reg_2_aq,
	combout => nx51544z5);

-- Location: LCCOMB_X14_Y14_N4
ix51544z7101 : fiftyfivenm_lcell_comb
-- Equation(s):
-- seg7_num(2) = (sw_a0_a_ainput_o & (nx51544z5)) # (!sw_a0_a_ainput_o & ((reg_q_2_dup_35_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx51544z5,
	datac => sw_a0_a_ainput_o,
	datad => reg_q_2_dup_35_aq,
	combout => seg7_num(2));

-- Location: LCCOMB_X11_Y16_N12
ix14528z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- byte_reg_2n1ss1(1) = (sw_a7_a_ainput_o & (reg_q_1_aq)) # (!sw_a7_a_ainput_o & ((yes_uart_u_uart_reg_Dout_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_a7_a_ainput_o,
	datab => reg_q_1_aq,
	datac => yes_uart_u_uart_reg_Dout_1_aq,
	combout => byte_reg_2n1ss1(1));

-- Location: FF_X11_Y16_N13
reg_byte_reg_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => byte_reg_2n1ss1(1),
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_byte_reg_1_aq);

-- Location: LCCOMB_X11_Y16_N30
ix51544z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z4 = (sw_a1_a_ainput_o & ((reg_byte_reg_1_aq))) # (!sw_a1_a_ainput_o & (reg_q_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_aq,
	datac => sw_a1_a_ainput_o,
	datad => reg_byte_reg_1_aq,
	combout => nx51544z4);

-- Location: LCCOMB_X14_Y14_N2
ix51544z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- seg7_num(1) = (sw_a0_a_ainput_o & (nx51544z4)) # (!sw_a0_a_ainput_o & ((reg_q_1_dup_36_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_a0_a_ainput_o,
	datac => nx51544z4,
	datad => reg_q_1_dup_36_aq,
	combout => seg7_num(1));

-- Location: LCCOMB_X11_Y16_N4
ix12534z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- byte_reg_2n1ss1(3) = (sw_a7_a_ainput_o & ((reg_q_3_aq))) # (!sw_a7_a_ainput_o & (yes_uart_u_uart_reg_Dout_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_a7_a_ainput_o,
	datab => yes_uart_u_uart_reg_Dout_3_aq,
	datac => reg_q_3_aq,
	combout => byte_reg_2n1ss1(3));

-- Location: FF_X11_Y16_N5
reg_byte_reg_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => byte_reg_2n1ss1(3),
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_byte_reg_3_aq);

-- Location: LCCOMB_X11_Y16_N6
ix51544z7104 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z6 = (sw_a1_a_ainput_o & ((reg_byte_reg_3_aq))) # (!sw_a1_a_ainput_o & (reg_q_3_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_aq,
	datab => reg_byte_reg_3_aq,
	datac => sw_a1_a_ainput_o,
	combout => nx51544z6);

-- Location: LCCOMB_X14_Y14_N6
ix51544z7103 : fiftyfivenm_lcell_comb
-- Equation(s):
-- seg7_num(3) = (sw_a0_a_ainput_o & ((nx51544z6))) # (!sw_a0_a_ainput_o & (reg_q_3_dup_34_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_a0_a_ainput_o,
	datac => reg_q_3_dup_34_aq,
	datad => nx51544z6,
	combout => seg7_num(3));

-- Location: LCCOMB_X11_Y16_N8
ix15525z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- byte_reg_2n1ss1(0) = (sw_a7_a_ainput_o & (reg_q_0_aq)) # (!sw_a7_a_ainput_o & ((yes_uart_u_uart_reg_Dout_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_a7_a_ainput_o,
	datac => reg_q_0_aq,
	datad => yes_uart_u_uart_reg_Dout_0_aq,
	combout => byte_reg_2n1ss1(0));

-- Location: FF_X11_Y16_N9
reg_byte_reg_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => byte_reg_2n1ss1(0),
	sclr => ALT_INV_reset_n_ainput_o,
	ena => u_lab3_rtlc0_PS25_n202,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_byte_reg_0_aq);

-- Location: LCCOMB_X11_Y16_N10
ix51544z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z3 = (sw_a1_a_ainput_o & ((reg_byte_reg_0_aq))) # (!sw_a1_a_ainput_o & (reg_q_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_aq,
	datac => reg_byte_reg_0_aq,
	datad => sw_a1_a_ainput_o,
	combout => nx51544z3);

-- Location: LCCOMB_X14_Y14_N0
ix51544z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- seg7_num(0) = (sw_a0_a_ainput_o & ((nx51544z3))) # (!sw_a0_a_ainput_o & (reg_q_0_dup_37_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_a0_a_ainput_o,
	datac => reg_q_0_dup_37_aq,
	datad => nx51544z3,
	combout => seg7_num(0));

-- Location: LCCOMB_X12_Y16_N24
ix18625z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_rtlcP1(1) = (seg7_num(1) & ((seg7_num(0) & ((!seg7_num(3)))) # (!seg7_num(0) & (!seg7_num(2))))) # (!seg7_num(1) & ((seg7_num(3) $ (!seg7_num(0))) # (!seg7_num(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg7_num(2),
	datab => seg7_num(1),
	datac => seg7_num(3),
	datad => seg7_num(0),
	combout => u_seg7_rtlcP1(1));

-- Location: LCCOMB_X12_Y14_N4
ix18625z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx18625z1 = (reg_q_10_aq & (u_seg7_rtlcP1(8))) # (!reg_q_10_aq & ((u_seg7_rtlcP1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_10_aq,
	datab => u_seg7_rtlcP1(8),
	datac => u_seg7_rtlcP1(1),
	combout => nx18625z1);

-- Location: LCCOMB_X12_Y14_N22
u_seg7_u_dual_seg7_reg_prev_char0_en_a0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout = !reg_q_10_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg_q_10_aq,
	combout => u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout);

-- Location: FF_X12_Y14_N23
u_seg7_u_dual_seg7_reg_prev_char0_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_reg_prev_char0_en_a0_combout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_prev_char0_en_aq);

-- Location: LCCOMB_X12_Y14_N12
ix10356z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_load_reg = u_seg7_u_dual_seg7_reg_prev_char0_en_aq $ (!reg_q_10_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => u_seg7_u_dual_seg7_reg_prev_char0_en_aq,
	datad => reg_q_10_aq,
	combout => u_seg7_u_dual_seg7_load_reg);

-- Location: FF_X12_Y14_N5
u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx18625z1,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_1_TE_rtlcGen0_aq);

-- Location: LCCOMB_X12_Y14_N30
ix28027z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_rtlcP1(12) = (seg7_num(6) & ((seg7_num(5) $ (!seg7_num(7))) # (!seg7_num(4)))) # (!seg7_num(6) & ((seg7_num(7)) # ((!seg7_num(5) & !seg7_num(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg7_num(6),
	datab => seg7_num(5),
	datac => seg7_num(7),
	datad => seg7_num(4),
	combout => u_seg7_rtlcP1(12));

-- Location: LCCOMB_X12_Y16_N26
ix28027z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_rtlcP1(5) = (seg7_num(2) & ((seg7_num(1) $ (!seg7_num(3))) # (!seg7_num(0)))) # (!seg7_num(2) & ((seg7_num(3)) # ((!seg7_num(1) & !seg7_num(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg7_num(2),
	datab => seg7_num(1),
	datac => seg7_num(3),
	datad => seg7_num(0),
	combout => u_seg7_rtlcP1(5));

-- Location: LCCOMB_X12_Y14_N24
ix28027z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx28027z1 = (reg_q_10_aq & (u_seg7_rtlcP1(12))) # (!reg_q_10_aq & ((u_seg7_rtlcP1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_10_aq,
	datac => u_seg7_rtlcP1(12),
	datad => u_seg7_rtlcP1(5),
	combout => nx28027z1);

-- Location: FF_X12_Y14_N25
u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx28027z1,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_5_TE_rtlcGen2_aq);

-- Location: LCCOMB_X12_Y14_N26
ix51544z7105 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_rtlcP1(13) = (seg7_num(4) & ((seg7_num(7)) # (seg7_num(6) $ (seg7_num(5))))) # (!seg7_num(4) & ((seg7_num(5)) # (seg7_num(6) $ (seg7_num(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg7_num(6),
	datab => seg7_num(5),
	datac => seg7_num(7),
	datad => seg7_num(4),
	combout => u_seg7_rtlcP1(13));

-- Location: LCCOMB_X12_Y16_N12
ix51544z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_rtlcP1(6) = (seg7_num(0) & ((seg7_num(3)) # (seg7_num(2) $ (seg7_num(1))))) # (!seg7_num(0) & ((seg7_num(1)) # (seg7_num(2) $ (seg7_num(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg7_num(2),
	datab => seg7_num(1),
	datac => seg7_num(3),
	datad => seg7_num(0),
	combout => u_seg7_rtlcP1(6));

-- Location: LCCOMB_X12_Y14_N20
ix51544z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51544z1 = (reg_q_10_aq & (u_seg7_rtlcP1(13))) # (!reg_q_10_aq & ((u_seg7_rtlcP1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_10_aq,
	datac => u_seg7_rtlcP1(13),
	datad => u_seg7_rtlcP1(6),
	combout => nx51544z1);

-- Location: FF_X12_Y14_N21
u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx51544z1,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_rtlc6_o_char_6_TE_rtlcGen4_aq);

-- Location: LCCOMB_X12_Y14_N0
ix3377z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_rtlcP1(7) = (seg7_num(6) & ((seg7_num(5)) # (seg7_num(7) $ (seg7_num(4))))) # (!seg7_num(6) & ((seg7_num(5) $ (seg7_num(7))) # (!seg7_num(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg7_num(6),
	datab => seg7_num(5),
	datac => seg7_num(7),
	datad => seg7_num(4),
	combout => u_seg7_rtlcP1(7));

-- Location: LCCOMB_X12_Y16_N8
ix3377z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_rtlcP1(0) = (seg7_num(2) & ((seg7_num(1)) # (seg7_num(3) $ (seg7_num(0))))) # (!seg7_num(2) & ((seg7_num(1) $ (seg7_num(3))) # (!seg7_num(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg7_num(2),
	datab => seg7_num(1),
	datac => seg7_num(3),
	datad => seg7_num(0),
	combout => u_seg7_rtlcP1(0));

-- Location: LCCOMB_X12_Y14_N18
ix3377z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_muxed_char_0_a = (reg_q_10_aq & (u_seg7_rtlcP1(7))) # (!reg_q_10_aq & ((u_seg7_rtlcP1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_10_aq,
	datab => u_seg7_rtlcP1(7),
	datad => u_seg7_rtlcP1(0),
	combout => u_seg7_u_dual_seg7_muxed_char_0_a);

-- Location: FF_X12_Y14_N19
u_seg7_u_dual_seg7_reg_o_char_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_muxed_char_0_a,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_0_aq);

-- Location: LCCOMB_X12_Y14_N14
ix5371z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_rtlcP1(9) = (seg7_num(6) & (((!seg7_num(5) & seg7_num(4))) # (!seg7_num(7)))) # (!seg7_num(6) & (((seg7_num(7)) # (seg7_num(4))) # (!seg7_num(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg7_num(6),
	datab => seg7_num(5),
	datac => seg7_num(7),
	datad => seg7_num(4),
	combout => u_seg7_rtlcP1(9));

-- Location: LCCOMB_X12_Y16_N18
ix5371z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_rtlcP1(2) = (seg7_num(2) & (((!seg7_num(1) & seg7_num(0))) # (!seg7_num(3)))) # (!seg7_num(2) & (((seg7_num(3)) # (seg7_num(0))) # (!seg7_num(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg7_num(2),
	datab => seg7_num(1),
	datac => seg7_num(3),
	datad => seg7_num(0),
	combout => u_seg7_rtlcP1(2));

-- Location: LCCOMB_X12_Y14_N8
ix5371z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_muxed_char_2_a = (reg_q_10_aq & (u_seg7_rtlcP1(9))) # (!reg_q_10_aq & ((u_seg7_rtlcP1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_10_aq,
	datac => u_seg7_rtlcP1(9),
	datad => u_seg7_rtlcP1(2),
	combout => u_seg7_u_dual_seg7_muxed_char_2_a);

-- Location: FF_X12_Y14_N9
u_seg7_u_dual_seg7_reg_o_char_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_muxed_char_2_a,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_2_aq);

-- Location: LCCOMB_X12_Y16_N4
ix6368z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_rtlcP1(3) = (seg7_num(1) & ((seg7_num(2) & ((!seg7_num(0)))) # (!seg7_num(2) & ((seg7_num(0)) # (!seg7_num(3)))))) # (!seg7_num(1) & ((seg7_num(3)) # (seg7_num(2) $ (!seg7_num(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg7_num(2),
	datab => seg7_num(1),
	datac => seg7_num(3),
	datad => seg7_num(0),
	combout => u_seg7_rtlcP1(3));

-- Location: LCCOMB_X12_Y14_N10
ix6368z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_rtlcP1(10) = (seg7_num(5) & ((seg7_num(6) & ((!seg7_num(4)))) # (!seg7_num(6) & ((seg7_num(4)) # (!seg7_num(7)))))) # (!seg7_num(5) & ((seg7_num(7)) # (seg7_num(6) $ (!seg7_num(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg7_num(6),
	datab => seg7_num(5),
	datac => seg7_num(7),
	datad => seg7_num(4),
	combout => u_seg7_rtlcP1(10));

-- Location: LCCOMB_X12_Y14_N28
ix6368z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_muxed_char_3_a = (reg_q_10_aq & ((u_seg7_rtlcP1(10)))) # (!reg_q_10_aq & (u_seg7_rtlcP1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_10_aq,
	datac => u_seg7_rtlcP1(3),
	datad => u_seg7_rtlcP1(10),
	combout => u_seg7_u_dual_seg7_muxed_char_3_a);

-- Location: FF_X12_Y14_N29
u_seg7_u_dual_seg7_reg_o_char_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_muxed_char_3_a,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_3_aq);

-- Location: LCCOMB_X12_Y14_N6
ix7365z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_rtlcP1(11) = (seg7_num(5) & (((seg7_num(7)) # (!seg7_num(4))))) # (!seg7_num(5) & ((seg7_num(6) & (seg7_num(7))) # (!seg7_num(6) & ((!seg7_num(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg7_num(6),
	datab => seg7_num(5),
	datac => seg7_num(7),
	datad => seg7_num(4),
	combout => u_seg7_rtlcP1(11));

-- Location: LCCOMB_X12_Y16_N14
ix7365z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_rtlcP1(4) = (seg7_num(1) & (((seg7_num(3)) # (!seg7_num(0))))) # (!seg7_num(1) & ((seg7_num(2) & (seg7_num(3))) # (!seg7_num(2) & ((!seg7_num(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => seg7_num(2),
	datab => seg7_num(1),
	datac => seg7_num(3),
	datad => seg7_num(0),
	combout => u_seg7_rtlcP1(4));

-- Location: LCCOMB_X12_Y14_N16
ix7365z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_muxed_char_4_a = (reg_q_10_aq & (u_seg7_rtlcP1(11))) # (!reg_q_10_aq & ((u_seg7_rtlcP1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_seg7_rtlcP1(11),
	datac => u_seg7_rtlcP1(4),
	datad => reg_q_10_aq,
	combout => u_seg7_u_dual_seg7_muxed_char_4_a);

-- Location: FF_X12_Y14_N17
u_seg7_u_dual_seg7_reg_o_char_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_muxed_char_4_a,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_4_aq);

-- Location: LCCOMB_X12_Y16_N6
ix6634z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx6634z1 = (u_lab3_reg_state_0_aq & ((u_lab3_reg_o_done_aq) # (u_lab3_reg_state_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => u_lab3_reg_state_0_aq,
	datac => u_lab3_reg_o_done_aq,
	datad => u_lab3_reg_state_4_aq,
	combout => nx6634z1);

-- Location: FF_X12_Y16_N7
u_lab3_reg_o_done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx6634z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_lab3_reg_o_done_aq);

-- Location: LCCOMB_X12_Y16_N0
u_seg7_u_dual_seg7_reg_o_char_7_afeeder : fiftyfivenm_lcell_comb
-- Equation(s):
-- u_seg7_u_dual_seg7_reg_o_char_7_afeeder_combout = u_lab3_reg_o_done_aq

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => u_lab3_reg_o_done_aq,
	combout => u_seg7_u_dual_seg7_reg_o_char_7_afeeder_combout);

-- Location: FF_X12_Y16_N1
u_seg7_u_dual_seg7_reg_o_char_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => u_seg7_u_dual_seg7_reg_o_char_7_afeeder_combout,
	ena => u_seg7_u_dual_seg7_load_reg,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => u_seg7_u_dual_seg7_reg_o_char_7_aq);

-- Location: IOIBUF_X10_Y19_N22
sw_a2_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => sw_a2_a_ainput_o);

-- Location: LCCOMB_X11_Y10_N0
ix2837_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_0_dup_2867 = reg_q_0_dup_29_aq $ (VCC)
-- nx47817z1 = CARRY(reg_q_0_dup_29_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_0_dup_29_aq,
	datad => VCC,
	combout => inc_d_0_dup_2867,
	cout => nx47817z1);

-- Location: FF_X11_Y10_N1
reg_q_0_dup_29 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_0_dup_2867,
	clrn => reset_n_ainput_o,
	sclr => nx62450z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_0_dup_29_aq);

-- Location: LCCOMB_X11_Y10_N2
ix2839_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_1_dup_2869 = (reg_q_1_dup_28_aq & (!nx47817z1)) # (!reg_q_1_dup_28_aq & ((nx47817z1) # (GND)))
-- nx51350z1 = CARRY((!nx47817z1) # (!reg_q_1_dup_28_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_1_dup_28_aq,
	datad => VCC,
	cin => nx47817z1,
	combout => inc_d_1_dup_2869,
	cout => nx51350z1);

-- Location: FF_X11_Y10_N3
reg_q_1_dup_28 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_1_dup_2869,
	clrn => reset_n_ainput_o,
	sclr => nx62450z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_1_dup_28_aq);

-- Location: LCCOMB_X11_Y10_N4
ix2841_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_2_dup_2871 = (reg_q_2_dup_27_aq & (nx51350z1 $ (GND))) # (!reg_q_2_dup_27_aq & (!nx51350z1 & VCC))
-- nx1388z1 = CARRY((reg_q_2_dup_27_aq & !nx51350z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_2_dup_27_aq,
	datad => VCC,
	cin => nx51350z1,
	combout => inc_d_2_dup_2871,
	cout => nx1388z1);

-- Location: FF_X11_Y10_N5
reg_q_2_dup_27 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_2_dup_2871,
	clrn => reset_n_ainput_o,
	sclr => nx62450z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_2_dup_27_aq);

-- Location: LCCOMB_X11_Y10_N6
ix2843_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_3_dup_2873 = (reg_q_3_dup_26_aq & (!nx1388z1)) # (!reg_q_3_dup_26_aq & ((nx1388z1) # (GND)))
-- nx16962z1 = CARRY((!nx1388z1) # (!reg_q_3_dup_26_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_3_dup_26_aq,
	datad => VCC,
	cin => nx1388z1,
	combout => inc_d_3_dup_2873,
	cout => nx16962z1);

-- Location: FF_X11_Y10_N7
reg_q_3_dup_26 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_3_dup_2873,
	clrn => reset_n_ainput_o,
	sclr => nx62450z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_3_dup_26_aq);

-- Location: LCCOMB_X11_Y10_N8
ix2845_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_4_dup_2875 = (reg_q_4_dup_25_aq & (nx16962z1 $ (GND))) # (!reg_q_4_dup_25_aq & (!nx16962z1 & VCC))
-- nx32536z1 = CARRY((reg_q_4_dup_25_aq & !nx16962z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_4_dup_25_aq,
	datad => VCC,
	cin => nx16962z1,
	combout => inc_d_4_dup_2875,
	cout => nx32536z1);

-- Location: FF_X11_Y10_N9
reg_q_4_dup_25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_4_dup_2875,
	clrn => reset_n_ainput_o,
	sclr => nx62450z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_4_dup_25_aq);

-- Location: LCCOMB_X11_Y10_N10
ix2847_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_5_dup_2877 = (reg_q_5_dup_24_aq & (!nx32536z1)) # (!reg_q_5_dup_24_aq & ((nx32536z1) # (GND)))
-- nx17426z1 = CARRY((!nx32536z1) # (!reg_q_5_dup_24_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_dup_24_aq,
	datad => VCC,
	cin => nx32536z1,
	combout => inc_d_5_dup_2877,
	cout => nx17426z1);

-- Location: FF_X11_Y10_N11
reg_q_5_dup_24 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_5_dup_2877,
	clrn => reset_n_ainput_o,
	sclr => nx62450z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_5_dup_24_aq);

-- Location: LCCOMB_X11_Y10_N12
ix2849_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_6_dup_2879 = (reg_q_6_dup_23_aq & (nx17426z1 $ (GND))) # (!reg_q_6_dup_23_aq & (!nx17426z1 & VCC))
-- nx49331z1 = CARRY((reg_q_6_dup_23_aq & !nx17426z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_dup_23_aq,
	datad => VCC,
	cin => nx17426z1,
	combout => inc_d_6_dup_2879,
	cout => nx49331z1);

-- Location: FF_X11_Y10_N13
reg_q_6_dup_23 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_6_dup_2879,
	clrn => reset_n_ainput_o,
	sclr => nx62450z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_6_dup_23_aq);

-- Location: LCCOMB_X11_Y10_N14
ix2851_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_7_dup_2881 = (reg_q_7_dup_22_aq & (!nx49331z1)) # (!reg_q_7_dup_22_aq & ((nx49331z1) # (GND)))
-- nx33757z1 = CARRY((!nx49331z1) # (!reg_q_7_dup_22_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_7_dup_22_aq,
	datad => VCC,
	cin => nx49331z1,
	combout => inc_d_7_dup_2881,
	cout => nx33757z1);

-- Location: FF_X11_Y10_N15
reg_q_7_dup_22 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_7_dup_2881,
	clrn => reset_n_ainput_o,
	sclr => nx62450z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_7_dup_22_aq);

-- Location: LCCOMB_X11_Y10_N16
ix2853_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_8_dup_2883 = (reg_q_8_dup_21_aq & (nx33757z1 $ (GND))) # (!reg_q_8_dup_21_aq & (!nx33757z1 & VCC))
-- nx47250z1 = CARRY((reg_q_8_dup_21_aq & !nx33757z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_8_dup_21_aq,
	datad => VCC,
	cin => nx33757z1,
	combout => inc_d_8_dup_2883,
	cout => nx47250z1);

-- Location: FF_X11_Y10_N17
reg_q_8_dup_21 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_8_dup_2883,
	clrn => reset_n_ainput_o,
	sclr => nx62450z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_8_dup_21_aq);

-- Location: LCCOMB_X16_Y14_N18
ix62450z7100 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62450z6 = (!reg_q_4_dup_25_aq & (!reg_q_0_dup_29_aq & (!yes_uart_u_uart_reg_RxDivisor_4_aq & !reg_q_7_dup_22_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_25_aq,
	datab => reg_q_0_dup_29_aq,
	datac => yes_uart_u_uart_reg_RxDivisor_4_aq,
	datad => reg_q_7_dup_22_aq,
	combout => nx62450z6);

-- Location: LCCOMB_X16_Y14_N24
ix62450z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62450z5 = (reg_q_4_dup_25_aq & (reg_q_0_dup_29_aq & (yes_uart_u_uart_reg_RxDivisor_4_aq & reg_q_7_dup_22_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_4_dup_25_aq,
	datab => reg_q_0_dup_29_aq,
	datac => yes_uart_u_uart_reg_RxDivisor_4_aq,
	datad => reg_q_7_dup_22_aq,
	combout => nx62450z5);

-- Location: LCCOMB_X11_Y10_N28
ix62450z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62450z4 = (reg_q_5_dup_24_aq & (reg_q_8_dup_21_aq & ((nx62450z5)))) # (!reg_q_5_dup_24_aq & (!reg_q_8_dup_21_aq & (nx62450z6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_5_dup_24_aq,
	datab => reg_q_8_dup_21_aq,
	datac => nx62450z6,
	datad => nx62450z5,
	combout => nx62450z4);

-- Location: LCCOMB_X11_Y10_N18
ix38_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_9_dup_2885 = (reg_q_9_dup_20_aq & (!nx47250z1)) # (!reg_q_9_dup_20_aq & ((nx47250z1) # (GND)))
-- nx47353z1 = CARRY((!nx47250z1) # (!reg_q_9_dup_20_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_9_dup_20_aq,
	datad => VCC,
	cin => nx47250z1,
	combout => inc_d_9_dup_2885,
	cout => nx47353z1);

-- Location: FF_X11_Y10_N19
reg_q_9_dup_20 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_9_dup_2885,
	clrn => reset_n_ainput_o,
	sclr => nx62450z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_9_dup_20_aq);

-- Location: LCCOMB_X11_Y10_N20
ix2855_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_10_dup_2887 = (reg_q_10_dup_19_aq & (nx47353z1 $ (GND))) # (!reg_q_10_dup_19_aq & (!nx47353z1 & VCC))
-- nx55140z1 = CARRY((reg_q_10_dup_19_aq & !nx47353z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => reg_q_10_dup_19_aq,
	datad => VCC,
	cin => nx47353z1,
	combout => inc_d_10_dup_2887,
	cout => nx55140z1);

-- Location: FF_X11_Y10_N21
reg_q_10_dup_19 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_10_dup_2887,
	clrn => reset_n_ainput_o,
	sclr => nx62450z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_10_dup_19_aq);

-- Location: LCCOMB_X11_Y10_N26
ix62450z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62450z3 = (!reg_q_10_dup_19_aq & !reg_q_9_dup_20_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_q_10_dup_19_aq,
	datad => reg_q_9_dup_20_aq,
	combout => nx62450z3);

-- Location: LCCOMB_X11_Y10_N22
ix2856_fadd : fiftyfivenm_lcell_comb
-- Equation(s):
-- inc_d_11_a = reg_q_11_aq $ (nx55140z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_11_aq,
	cin => nx55140z1,
	combout => inc_d_11_a);

-- Location: FF_X11_Y10_N23
reg_q_11_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => inc_d_11_a,
	clrn => reset_n_ainput_o,
	sclr => nx62450z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_q_11_aq);

-- Location: LCCOMB_X11_Y10_N24
ix62450z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62450z2 = (!reg_q_11_aq & (!reg_q_1_dup_28_aq & (!reg_q_2_dup_27_aq & !reg_q_3_dup_26_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_11_aq,
	datab => reg_q_1_dup_28_aq,
	datac => reg_q_2_dup_27_aq,
	datad => reg_q_3_dup_26_aq,
	combout => nx62450z2);

-- Location: LCCOMB_X11_Y10_N30
ix62450z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx62450z1 = (!reg_q_6_dup_23_aq & (nx62450z4 & (nx62450z3 & nx62450z2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_q_6_dup_23_aq,
	datab => nx62450z4,
	datac => nx62450z3,
	datad => nx62450z2,
	combout => nx62450z1);

-- Location: FF_X11_Y10_N31
yes_uart_u_uart_reg_TopTx : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx62450z1,
	clrn => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_TopTx_aq);

-- Location: LCCOMB_X16_Y13_N18
ix45921z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx45921z1 = yes_uart_u_uart_reg_TxFSM_1_aq $ (((!nx46918z2 & yes_uart_u_uart_reg_TxFSM_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx46918z2,
	datac => yes_uart_u_uart_reg_TxFSM_1_aq,
	datad => yes_uart_u_uart_reg_TxFSM_0_aq,
	combout => nx45921z1);

-- Location: FF_X16_Y13_N19
yes_uart_u_uart_reg_TxFSM_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx45921z1,
	clrn => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_TxFSM_1_aq);

-- Location: LCCOMB_X16_Y13_N22
ix46262z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46262z1 = (reg_byte_valid_aq) # ((yes_uart_u_uart_reg_TxFSM_0_aq) # (yes_uart_u_uart_reg_TxFSM_1_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_byte_valid_aq,
	datac => yes_uart_u_uart_reg_TxFSM_0_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => nx46262z1);

-- Location: FF_X16_Y13_N23
yes_uart_u_uart_reg_TxBusy : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx46262z1,
	clrn => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_TxBusy_aq);

-- Location: LCCOMB_X16_Y13_N28
ix60976z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- byte_valid_3n0r1 = (yes_uart_u_uart_reg_RxRDYi_aq) # ((yes_uart_u_uart_reg_TxBusy_aq & reg_byte_valid_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_TxBusy_aq,
	datab => yes_uart_u_uart_reg_RxRDYi_aq,
	datac => reg_byte_valid_aq,
	combout => byte_valid_3n0r1);

-- Location: FF_X16_Y13_N29
reg_byte_valid : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => byte_valid_3n0r1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg_byte_valid_aq);

-- Location: LCCOMB_X16_Y13_N12
ix46918z7099 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46918z5 = (yes_uart_u_uart_reg_TxFSM_0_aq & (((yes_uart_u_uart_reg_TxFSM_1_aq)) # (!yes_uart_u_uart_reg_TopTx_aq))) # (!yes_uart_u_uart_reg_TxFSM_0_aq & (((!reg_byte_valid_aq & !yes_uart_u_uart_reg_TxFSM_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_TxFSM_0_aq,
	datab => yes_uart_u_uart_reg_TopTx_aq,
	datac => reg_byte_valid_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => nx46918z5);

-- Location: LCCOMB_X16_Y13_N26
ix51272z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51272z1 = ((yes_uart_u_uart_reg_TopTx_aq & !yes_uart_u_uart_reg_TxFSM_1_aq)) # (!yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_TopTx_aq,
	datac => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => nx51272z1);

-- Location: LCCOMB_X16_Y13_N20
ix51272z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx51272z2 = (yes_uart_u_uart_reg_TopTx_aq & (yes_uart_u_uart_reg_TxFSM_0_aq $ (yes_uart_u_uart_reg_TxFSM_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_TopTx_aq,
	datac => yes_uart_u_uart_reg_TxFSM_0_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => nx51272z2);

-- Location: FF_X16_Y13_N27
yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx51272z1,
	clrn => reset_n_ainput_o,
	ena => nx51272z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_aq);

-- Location: LCCOMB_X16_Y13_N4
ix50275z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx50275z1 = (yes_uart_u_uart_reg_TopTx_aq & (yes_uart_u_uart_reg_TxFSM_1_aq & (yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_aq $ (!yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_aq)))) # (!yes_uart_u_uart_reg_TopTx_aq & 
-- (yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_aq $ ((!yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	datab => yes_uart_u_uart_reg_TopTx_aq,
	datac => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => nx50275z1);

-- Location: FF_X16_Y13_N5
yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx50275z1,
	clrn => reset_n_ainput_o,
	ena => nx51272z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_aq);

-- Location: LCCOMB_X16_Y13_N6
ix48281z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx48281z2 = (yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_aq) # (yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	datac => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_aq,
	combout => nx48281z2);

-- Location: LCCOMB_X16_Y13_N16
ix49278z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx49278z2 = (yes_uart_u_uart_reg_TopTx_aq & !yes_uart_u_uart_reg_TxFSM_1_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_TopTx_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => nx49278z2);

-- Location: LCCOMB_X16_Y13_N2
ix49278z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx49278z1 = (!nx49278z2 & (yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2_aq $ (((!yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_aq & !yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	datab => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_aq,
	datac => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2_aq,
	datad => nx49278z2,
	combout => nx49278z1);

-- Location: FF_X16_Y13_N3
yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx49278z1,
	clrn => reset_n_ainput_o,
	ena => nx51272z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2_aq);

-- Location: LCCOMB_X16_Y13_N8
ix48281z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx48281z1 = (nx49278z2) # (yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3_aq $ (((!nx48281z2 & !yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx48281z2,
	datab => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2_aq,
	datac => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3_aq,
	datad => nx49278z2,
	combout => nx48281z1);

-- Location: FF_X16_Y13_N9
yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx48281z1,
	clrn => reset_n_ainput_o,
	ena => nx51272z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3_aq);

-- Location: LCCOMB_X16_Y13_N24
ix46918z7098 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46918z4 = (!yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3_aq & !yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_3_aq,
	datad => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_2_aq,
	combout => nx46918z4);

-- Location: LCCOMB_X16_Y13_N10
ix46918z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46918z3 = (((yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_aq) # (!nx46918z4)) # (!yes_uart_u_uart_reg_TopTx_aq)) # (!yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_0_aq,
	datab => yes_uart_u_uart_reg_TopTx_aq,
	datac => yes_uart_u_uart_modgen_counter_TxBitCnt_reg_q_1_aq,
	datad => nx46918z4,
	combout => nx46918z3);

-- Location: LCCOMB_X16_Y13_N14
ix46918z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46918z2 = (nx46918z5 & (((!yes_uart_u_uart_reg_TxFSM_1_aq)) # (!yes_uart_u_uart_reg_TopTx_aq))) # (!nx46918z5 & (((nx46918z3 & yes_uart_u_uart_reg_TxFSM_1_aq))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx46918z5,
	datab => yes_uart_u_uart_reg_TopTx_aq,
	datac => nx46918z3,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => nx46918z2);

-- Location: LCCOMB_X16_Y13_N0
ix46918z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx46918z1 = nx46918z2 $ (!yes_uart_u_uart_reg_TxFSM_0_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx46918z2,
	datac => yes_uart_u_uart_reg_TxFSM_0_aq,
	combout => nx46918z1);

-- Location: FF_X16_Y13_N1
yes_uart_u_uart_reg_TxFSM_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx46918z1,
	clrn => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_TxFSM_0_aq);

-- Location: LCCOMB_X14_Y13_N30
ix21131z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_8_a = (!reg_byte_reg_7_aq & !yes_uart_u_uart_reg_TxFSM_1_aq)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg_byte_reg_7_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_8_a);

-- Location: LCCOMB_X16_Y13_N30
ix21131z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx21131z1 = (!yes_uart_u_uart_reg_TxFSM_0_aq & ((yes_uart_u_uart_reg_TxFSM_1_aq & (yes_uart_u_uart_reg_TopTx_aq)) # (!yes_uart_u_uart_reg_TxFSM_1_aq & ((reg_byte_valid_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_TxFSM_0_aq,
	datab => yes_uart_u_uart_reg_TopTx_aq,
	datac => reg_byte_valid_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => nx21131z1);

-- Location: FF_X14_Y13_N31
yes_uart_u_uart_reg_Tx_Reg_8_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_8_a,
	clrn => reset_n_ainput_o,
	ena => nx21131z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Tx_Reg_8_aq);

-- Location: LCCOMB_X14_Y13_N28
ix22128z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_7_a = (yes_uart_u_uart_reg_TxFSM_1_aq & ((yes_uart_u_uart_reg_Tx_Reg_8_aq))) # (!yes_uart_u_uart_reg_TxFSM_1_aq & (!reg_byte_reg_6_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => reg_byte_reg_6_aq,
	datac => yes_uart_u_uart_reg_Tx_Reg_8_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_7_a);

-- Location: FF_X14_Y13_N29
yes_uart_u_uart_reg_Tx_Reg_7_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_7_a,
	clrn => reset_n_ainput_o,
	ena => nx21131z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Tx_Reg_7_aq);

-- Location: LCCOMB_X14_Y13_N18
ix23125z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_6_a = (yes_uart_u_uart_reg_TxFSM_1_aq & ((yes_uart_u_uart_reg_Tx_Reg_7_aq))) # (!yes_uart_u_uart_reg_TxFSM_1_aq & (!reg_byte_reg_5_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => reg_byte_reg_5_aq,
	datab => yes_uart_u_uart_reg_Tx_Reg_7_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_6_a);

-- Location: FF_X14_Y13_N19
yes_uart_u_uart_reg_Tx_Reg_6_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_6_a,
	clrn => reset_n_ainput_o,
	ena => nx21131z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Tx_Reg_6_aq);

-- Location: LCCOMB_X14_Y13_N16
ix24122z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_5_a = (yes_uart_u_uart_reg_TxFSM_1_aq & (yes_uart_u_uart_reg_Tx_Reg_6_aq)) # (!yes_uart_u_uart_reg_TxFSM_1_aq & ((!reg_byte_reg_4_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_TxFSM_1_aq,
	datab => yes_uart_u_uart_reg_Tx_Reg_6_aq,
	datad => reg_byte_reg_4_aq,
	combout => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_5_a);

-- Location: FF_X14_Y13_N17
yes_uart_u_uart_reg_Tx_Reg_5_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_5_a,
	clrn => reset_n_ainput_o,
	ena => nx21131z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Tx_Reg_5_aq);

-- Location: LCCOMB_X14_Y13_N22
ix25119z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_4_a = (yes_uart_u_uart_reg_TxFSM_1_aq & (yes_uart_u_uart_reg_Tx_Reg_5_aq)) # (!yes_uart_u_uart_reg_TxFSM_1_aq & ((!reg_byte_reg_3_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Tx_Reg_5_aq,
	datac => reg_byte_reg_3_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_4_a);

-- Location: FF_X14_Y13_N23
yes_uart_u_uart_reg_Tx_Reg_4_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_4_a,
	clrn => reset_n_ainput_o,
	ena => nx21131z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Tx_Reg_4_aq);

-- Location: LCCOMB_X14_Y13_N20
ix26116z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_3_a = (yes_uart_u_uart_reg_TxFSM_1_aq & (yes_uart_u_uart_reg_Tx_Reg_4_aq)) # (!yes_uart_u_uart_reg_TxFSM_1_aq & ((!reg_byte_reg_2_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Tx_Reg_4_aq,
	datac => reg_byte_reg_2_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_3_a);

-- Location: FF_X14_Y13_N21
yes_uart_u_uart_reg_Tx_Reg_3_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_3_a,
	clrn => reset_n_ainput_o,
	ena => nx21131z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Tx_Reg_3_aq);

-- Location: LCCOMB_X14_Y13_N10
ix27113z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_2_a = (yes_uart_u_uart_reg_TxFSM_1_aq & (yes_uart_u_uart_reg_Tx_Reg_3_aq)) # (!yes_uart_u_uart_reg_TxFSM_1_aq & ((!reg_byte_reg_1_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_Tx_Reg_3_aq,
	datac => reg_byte_reg_1_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_2_a);

-- Location: FF_X14_Y13_N11
yes_uart_u_uart_reg_Tx_Reg_2_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_2_a,
	clrn => reset_n_ainput_o,
	ena => nx21131z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Tx_Reg_2_aq);

-- Location: LCCOMB_X14_Y13_N0
ix28110z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_1_a = (yes_uart_u_uart_reg_TxFSM_1_aq & (yes_uart_u_uart_reg_Tx_Reg_2_aq)) # (!yes_uart_u_uart_reg_TxFSM_1_aq & ((!reg_byte_reg_0_aq)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_Tx_Reg_2_aq,
	datac => reg_byte_reg_0_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_1_a);

-- Location: FF_X14_Y13_N1
yes_uart_u_uart_reg_Tx_Reg_1_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => NOT_yes_uart_u_uart_Tx_Reg_14n6ss1_1_a,
	clrn => reset_n_ainput_o,
	ena => nx21131z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Tx_Reg_1_aq);

-- Location: LCCOMB_X16_Y14_N10
ix29107z7097 : fiftyfivenm_lcell_comb
-- Equation(s):
-- yes_uart_u_uart_Tx_Reg_14n6ss1(0) = (yes_uart_u_uart_reg_TxFSM_1_aq & ((!yes_uart_u_uart_reg_Tx_Reg_1_aq))) # (!yes_uart_u_uart_reg_TxFSM_1_aq & (!yes_uart_u_uart_reg_TxFSM_0_aq))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yes_uart_u_uart_reg_TxFSM_0_aq,
	datac => yes_uart_u_uart_reg_Tx_Reg_1_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => yes_uart_u_uart_Tx_Reg_14n6ss1(0));

-- Location: LCCOMB_X16_Y14_N8
ix29107z7096 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29107z2 = (yes_uart_u_uart_reg_TxFSM_0_aq & (((yes_uart_u_uart_reg_TxFSM_1_aq)) # (!yes_uart_u_uart_reg_TopTx_aq))) # (!yes_uart_u_uart_reg_TxFSM_0_aq & ((yes_uart_u_uart_reg_TxFSM_1_aq & (!yes_uart_u_uart_reg_TopTx_aq)) # 
-- (!yes_uart_u_uart_reg_TxFSM_1_aq & ((!reg_byte_valid_aq)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_reg_TopTx_aq,
	datab => yes_uart_u_uart_reg_TxFSM_0_aq,
	datac => reg_byte_valid_aq,
	datad => yes_uart_u_uart_reg_TxFSM_1_aq,
	combout => nx29107z2);

-- Location: LCCOMB_X16_Y14_N4
ix29107z7095 : fiftyfivenm_lcell_comb
-- Equation(s):
-- nx29107z1 = (nx29107z2 & ((yes_uart_u_uart_reg_Tx_Reg_0_aq))) # (!nx29107z2 & (!yes_uart_u_uart_Tx_Reg_14n6ss1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yes_uart_u_uart_Tx_Reg_14n6ss1(0),
	datab => nx29107z2,
	datac => yes_uart_u_uart_reg_Tx_Reg_0_aq,
	combout => nx29107z1);

-- Location: FF_X16_Y14_N5
yes_uart_u_uart_reg_Tx_Reg_0_a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => clk_ainputclkctrl_outclk,
	d => nx29107z1,
	clrn => reset_n_ainput_o,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yes_uart_u_uart_reg_Tx_Reg_0_aq);

-- Location: IOIBUF_X10_Y20_N15
sw_a3_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => sw_a3_a_ainput_o);

-- Location: IOIBUF_X10_Y21_N15
sw_a4_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => sw_a4_a_ainput_o);

-- Location: IOIBUF_X10_Y22_N15
sw_a5_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => sw_a5_a_ainput_o);

-- Location: IOIBUF_X3_Y0_N8
sw_a6_a_ainput : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => sw_a6_a_ainput_o);

-- Location: UNVM_X0_Y11_N40
a_aQUARTUS_CREATED_UNVM_a : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => a_aQUARTUS_CREATED_GND_aI_combout,
	xe_ye => a_aQUARTUS_CREATED_GND_aI_combout,
	se => a_aQUARTUS_CREATED_GND_aI_combout,
	busy => a_aQUARTUS_CREATED_UNVM_a_abusy);

-- Location: ADCBLOCK_X10_Y24_N0
a_aQUARTUS_CREATED_ADC1_a : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => a_aQUARTUS_CREATED_GND_aI_combout,
	usr_pwd => VCC,
	tsen => a_aQUARTUS_CREATED_GND_aI_combout,
	chsel => a_aQUARTUS_CREATED_ADC1_a_CHSEL_bus,
	eoc => a_aQUARTUS_CREATED_ADC1_a_aeoc);

ww_uart_tx <= uart_tx_aoutput_o;

ww_seg7_en(0) <= seg7_en_a0_a_aoutput_o;

ww_seg7_en(1) <= seg7_en_a1_a_aoutput_o;

ww_seg7_data(0) <= seg7_data_a0_a_aoutput_o;

ww_seg7_data(1) <= seg7_data_a1_a_aoutput_o;

ww_seg7_data(2) <= seg7_data_a2_a_aoutput_o;

ww_seg7_data(3) <= seg7_data_a3_a_aoutput_o;

ww_seg7_data(4) <= seg7_data_a4_a_aoutput_o;

ww_seg7_data(5) <= seg7_data_a5_a_aoutput_o;

ww_seg7_data(6) <= seg7_data_a6_a_aoutput_o;

ww_seg7_data(7) <= seg7_data_a7_a_aoutput_o;

ww_led(0) <= led_a0_a_aoutput_o;

ww_led(1) <= led_a1_a_aoutput_o;

ww_led(2) <= led_a2_a_aoutput_o;

ww_led(3) <= led_a3_a_aoutput_o;

ww_led(4) <= led_a4_a_aoutput_o;

ww_led(5) <= led_a5_a_aoutput_o;

ww_led(6) <= led_a6_a_aoutput_o;

ww_led(7) <= led_a7_a_aoutput_o;
END structure;


