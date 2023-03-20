-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.2 Build 203 01/18/2017 SJ Standard Edition"

-- DATE "09/13/2018 13:39:36"

-- 
-- Device: Altera 5M240ZT100I5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	MAXV_FULL IS
    PORT (
	SCL_MAX : OUT std_logic;
	SCL_DS : IN std_logic;
	SDA_DS : INOUT std_logic;
	GAUGE_SDA : INOUT std_logic;
	SCL_TEL : IN std_logic;
	SDA_MAX : INOUT std_logic;
	SDA_TEL : INOUT std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	L_CS : OUT std_logic;
	A_CS : IN std_logic;
	L_SCLK : OUT std_logic;
	A_SCLK : IN std_logic;
	L_MOSI : OUT std_logic;
	A_MOSI : IN std_logic;
	A_MISO : OUT std_logic;
	L_MISO : IN std_logic;
	UART_Telit_RX : OUT std_logic;
	UART_Modem_TX : OUT std_logic;
	BT_RX : OUT std_logic;
	G_Telit_TX : OUT std_logic;
	BT_BDOOR : OUT std_logic;
	BT_RST : OUT std_logic;
	SIM_SEL : OUT std_logic;
	G_SCL : IN std_logic;
	UART_Reset : OUT std_logic;
	UART_Modem_RX : OUT std_logic;
	GAUGE_SCL : OUT std_logic;
	G_SDA : INOUT std_logic;
	UART_Telit_TX : IN std_logic;
	BT_TX : IN std_logic;
	G_Telit_RX : IN std_logic;
	PWR_SW : IN std_logic
	);
END MAXV_FULL;

-- Design Ports Information


ARCHITECTURE structure OF MAXV_FULL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SCL_MAX : std_logic;
SIGNAL ww_SCL_DS : std_logic;
SIGNAL ww_SCL_TEL : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_L_CS : std_logic;
SIGNAL ww_A_CS : std_logic;
SIGNAL ww_L_SCLK : std_logic;
SIGNAL ww_A_SCLK : std_logic;
SIGNAL ww_L_MOSI : std_logic;
SIGNAL ww_A_MOSI : std_logic;
SIGNAL ww_A_MISO : std_logic;
SIGNAL ww_L_MISO : std_logic;
SIGNAL ww_UART_Telit_RX : std_logic;
SIGNAL ww_UART_Modem_TX : std_logic;
SIGNAL ww_BT_RX : std_logic;
SIGNAL ww_G_Telit_TX : std_logic;
SIGNAL ww_BT_BDOOR : std_logic;
SIGNAL ww_BT_RST : std_logic;
SIGNAL ww_SIM_SEL : std_logic;
SIGNAL ww_G_SCL : std_logic;
SIGNAL ww_UART_Reset : std_logic;
SIGNAL ww_UART_Modem_RX : std_logic;
SIGNAL ww_GAUGE_SCL : std_logic;
SIGNAL ww_UART_Telit_TX : std_logic;
SIGNAL ww_BT_TX : std_logic;
SIGNAL ww_G_Telit_RX : std_logic;
SIGNAL ww_PWR_SW : std_logic;
SIGNAL \inst14|addr_clk~regout\ : std_logic;
SIGNAL LED_SDA_t : std_logic;
SIGNAL \GAUGE_SDA~0\ : std_logic;
SIGNAL \SDA_MAX~0\ : std_logic;
SIGNAL \SDA_TEL~0\ : std_logic;
SIGNAL \inst14|_~13_combout\ : std_logic;
SIGNAL \inst14|_~11\ : std_logic;
SIGNAL \inst14|i2c_cntr|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \inst14|i2c_cntr|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \inst14|i2c_cntr|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \inst14|i2c_cntr|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \inst14|i2c_cntr|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \inst14|i2c_cntr|auto_generated|counter_cella2~COUTCOUT1_1\ : std_logic;
SIGNAL \inst14|i2c_cntr|auto_generated|counter_cella3~COUT\ : std_logic;
SIGNAL \inst14|i2c_cntr|auto_generated|counter_cella3~COUTCOUT1_1\ : std_logic;
SIGNAL \SCL_DS~combout\ : std_logic;
SIGNAL \inst14|_~14_combout\ : std_logic;
SIGNAL \inst14|_~24\ : std_logic;
SIGNAL \inst14|_~2_combout\ : std_logic;
SIGNAL \inst14|_~3_combout\ : std_logic;
SIGNAL \inst14|_~0_combout\ : std_logic;
SIGNAL \inst14|_~1_combout\ : std_logic;
SIGNAL \inst14|UFM_addr_cntr|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \inst14|UFM_addr_cntr|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \inst14|UFM_addr_cntr|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \inst14|UFM_addr_cntr|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \inst14|UFM_addr_cntr|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \inst14|UFM_addr_cntr|auto_generated|counter_cella2~COUTCOUT1_1\ : std_logic;
SIGNAL \inst14|UFM_addr_cntr|auto_generated|counter_cella3~COUT\ : std_logic;
SIGNAL \inst14|UFM_addr_cntr|auto_generated|counter_cella3~COUTCOUT1_1\ : std_logic;
SIGNAL \inst14|_~6_combout\ : std_logic;
SIGNAL \inst14|_~9_combout\ : std_logic;
SIGNAL \inst14|wr_addr~regout\ : std_logic;
SIGNAL \inst14|_~12_combout\ : std_logic;
SIGNAL \inst14|wait_addr~regout\ : std_logic;
SIGNAL \inst14|wr_addr0~regout\ : std_logic;
SIGNAL \inst14|_~15\ : std_logic;
SIGNAL \inst14|UFM_program~0\ : std_logic;
SIGNAL \inst14|_~19\ : std_logic;
SIGNAL \inst14|wait_data~regout\ : std_logic;
SIGNAL \inst14|_~4_combout\ : std_logic;
SIGNAL \inst14|data_write~regout\ : std_logic;
SIGNAL \inst14|_~5_combout\ : std_logic;
SIGNAL \inst14|data_ak~regout\ : std_logic;
SIGNAL \inst14|data_write2~regout\ : std_logic;
SIGNAL \inst14|wait_wr~regout\ : std_logic;
SIGNAL \inst14|load_ready~regout\ : std_logic;
SIGNAL \inst14|idle~regout\ : std_logic;
SIGNAL \inst14|_~20_combout\ : std_logic;
SIGNAL \inst14|data_read~regout\ : std_logic;
SIGNAL \inst14|wait_rd~regout\ : std_logic;
SIGNAL \inst14|_~21\ : std_logic;
SIGNAL \inst14|addr_load~regout\ : std_logic;
SIGNAL \inst14|data_shift~0\ : std_logic;
SIGNAL \inst14|data_clk~regout\ : std_logic;
SIGNAL \inst14|data_write2~0\ : std_logic;
SIGNAL \inst14|data_write~0\ : std_logic;
SIGNAL \inst14|data_strb~regout\ : std_logic;
SIGNAL \inst14|UFM_drclk~2_combout\ : std_logic;
SIGNAL \inst14|data_sh~regout\ : std_logic;
SIGNAL \inst14|addr_prepare~0\ : std_logic;
SIGNAL \inst14|wr_addr~0\ : std_logic;
SIGNAL \inst14|_~8\ : std_logic;
SIGNAL \inst14|addr_shift~0_combout\ : std_logic;
SIGNAL \inst14|_~10\ : std_logic;
SIGNAL \inst14|addr_shift~1_combout\ : std_logic;
SIGNAL \inst14|UFM_arclk\ : std_logic;
SIGNAL \inst14|wait_addr~0\ : std_logic;
SIGNAL \inst14|addr_shift~regout\ : std_logic;
SIGNAL \inst14|UFM_program\ : std_logic;
SIGNAL \inst14|UFM_program~_wirecell_combout\ : std_logic;
SIGNAL \inst14|erase_wait~regout\ : std_logic;
SIGNAL \inst14|erase_out~_wirecell\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\ : std_logic;
SIGNAL \inst14|addr_prepare~regout\ : std_logic;
SIGNAL \inst14|addr_bit0~regout\ : std_logic;
SIGNAL \inst14|_~22\ : std_logic;
SIGNAL \inst14|_~7_combout\ : std_logic;
SIGNAL \inst14|data_shift~regout\ : std_logic;
SIGNAL \inst14|erase_out~regout\ : std_logic;
SIGNAL \inst14|erase_busy~regout\ : std_logic;
SIGNAL \inst14|stop~0_combout\ : std_logic;
SIGNAL \inst14|stop~regout\ : std_logic;
SIGNAL \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\ : std_logic;
SIGNAL \inst1|div_cnt|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \inst1|div_cnt|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \inst1|div_cnt|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \inst1|div_cnt|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \inst1|div_cnt|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \inst1|div_cnt|auto_generated|counter_cella2~COUTCOUT1_1\ : std_logic;
SIGNAL \inst1|div_cnt|auto_generated|cout\ : std_logic;
SIGNAL \inst1|bit_cnt|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \inst1|bit_cnt|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \inst1|bit_cnt|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \inst1|bit_cnt|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \inst1|bit_cnt|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \inst1|bit_cnt|auto_generated|counter_cella2~COUTCOUT1_1\ : std_logic;
SIGNAL \inst1|bit_cnt|auto_generated|counter_cella3~COUT\ : std_logic;
SIGNAL \inst1|_~16_combout\ : std_logic;
SIGNAL \inst1|bit_cnt|auto_generated|counter_cella4~COUT\ : std_logic;
SIGNAL \inst1|bit_cnt|auto_generated|counter_cella4~COUTCOUT1_1\ : std_logic;
SIGNAL \inst1|_~6_combout\ : std_logic;
SIGNAL \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_drdout\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella2~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella3~COUT\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella3~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella4~COUT\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella4~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella5~COUT\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella6~COUT\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella6~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella7~COUT\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella7~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella8~COUT\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella8~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella9~COUT\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella9~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella10~COUT\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella11~COUT\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|counter_cella11~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|bright_cnt|auto_generated|cout\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella2~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella3~COUT\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella3~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella5~COUT\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella5~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella6~COUT\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella6~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella7~COUT\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|counter_cella7~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|time_100ms_cnt|auto_generated|modulus_trigger\ : std_logic;
SIGNAL \inst12|time_100ms~combout\ : std_logic;
SIGNAL \inst12|blink_time|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \inst12|blink_time|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|blink_time|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \inst12|blink_time|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|blink_time|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \inst12|blink_time|auto_generated|counter_cella2~COUTCOUT1_1\ : std_logic;
SIGNAL \inst14|_~16_combout\ : std_logic;
SIGNAL \inst14|_~17_combout\ : std_logic;
SIGNAL \inst12|_~7\ : std_logic;
SIGNAL \inst12|_~8_combout\ : std_logic;
SIGNAL \inst12|_~5_combout\ : std_logic;
SIGNAL \inst12|blink_time|auto_generated|counter_cella3~COUT\ : std_logic;
SIGNAL \inst12|LED_PAUSE[4]~1\ : std_logic;
SIGNAL \inst12|blink_time|auto_generated|counter_cella4~COUT\ : std_logic;
SIGNAL \inst12|blink_time|auto_generated|counter_cella4~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|LED_PAUSE[5]~0\ : std_logic;
SIGNAL \inst12|led_on_state~7_combout\ : std_logic;
SIGNAL \inst12|led_on_state~8_combout\ : std_logic;
SIGNAL \inst12|_~4_combout\ : std_logic;
SIGNAL \inst12|led_on_state~9_combout\ : std_logic;
SIGNAL \inst12|_~18_combout\ : std_logic;
SIGNAL \inst12|blink_count|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \inst12|blink_count|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|blink_count|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \inst12|blink_count|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|_~10_combout\ : std_logic;
SIGNAL \inst12|_~9_combout\ : std_logic;
SIGNAL \inst12|_~11_combout\ : std_logic;
SIGNAL \inst12|_~12_combout\ : std_logic;
SIGNAL \inst12|_~6_combout\ : std_logic;
SIGNAL \inst12|_~13_combout\ : std_logic;
SIGNAL \inst12|idle~2_combout\ : std_logic;
SIGNAL \inst12|led_on_state~5_combout\ : std_logic;
SIGNAL \inst12|led_9~regout\ : std_logic;
SIGNAL \inst12|led_on_state~4_combout\ : std_logic;
SIGNAL \inst12|led_plus~regout\ : std_logic;
SIGNAL \inst12|idle~3_combout\ : std_logic;
SIGNAL \inst12|idle~6_combout\ : std_logic;
SIGNAL \inst12|idle~4_combout\ : std_logic;
SIGNAL \inst12|idle~regout\ : std_logic;
SIGNAL \inst12|led_on_state~6_combout\ : std_logic;
SIGNAL \inst12|led_on_state~11_combout\ : std_logic;
SIGNAL \inst12|_~17_combout\ : std_logic;
SIGNAL \inst12|_~15_combout\ : std_logic;
SIGNAL \inst12|ledoff~0_combout\ : std_logic;
SIGNAL \inst12|ledoff~regout\ : std_logic;
SIGNAL \inst12|_~14_combout\ : std_logic;
SIGNAL \inst12|_~0_combout\ : std_logic;
SIGNAL \inst12|LED_ON[4]~0_combout\ : std_logic;
SIGNAL \inst12|_~2_combout\ : std_logic;
SIGNAL \inst12|_~1_combout\ : std_logic;
SIGNAL \inst12|ledon~0_combout\ : std_logic;
SIGNAL \inst12|ledon~regout\ : std_logic;
SIGNAL \inst12|_~3_combout\ : std_logic;
SIGNAL \inst12|led_on_state~10_combout\ : std_logic;
SIGNAL \inst1|led_on~regout\ : std_logic;
SIGNAL \inst1|_~2_combout\ : std_logic;
SIGNAL \inst1|idle~0_combout\ : std_logic;
SIGNAL \inst1|_~8_combout\ : std_logic;
SIGNAL \inst1|read_q~regout\ : std_logic;
SIGNAL \inst1|endq~regout\ : std_logic;
SIGNAL \inst1|_~20_combout\ : std_logic;
SIGNAL \inst1|_~21_combout\ : std_logic;
SIGNAL \inst1|byte_cnt|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \inst1|byte_cnt|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \inst1|byte_cnt|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \inst1|byte_cnt|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \inst1|_~9_combout\ : std_logic;
SIGNAL \inst1|_~3_combout\ : std_logic;
SIGNAL \inst1|wr_sr~regout\ : std_logic;
SIGNAL \inst1|wr_srd~regout\ : std_logic;
SIGNAL \inst1|wr_src~regout\ : std_logic;
SIGNAL \inst1|_~17\ : std_logic;
SIGNAL \inst1|_~18\ : std_logic;
SIGNAL \inst1|endc~regout\ : std_logic;
SIGNAL \inst1|endd~regout\ : std_logic;
SIGNAL \inst1|idle~regout\ : std_logic;
SIGNAL \inst1|startd~regout\ : std_logic;
SIGNAL \inst1|startc~regout\ : std_logic;
SIGNAL \inst1|_~4_combout\ : std_logic;
SIGNAL \inst1|_~5\ : std_logic;
SIGNAL \inst1|_~7_combout\ : std_logic;
SIGNAL \inst1|send_d~regout\ : std_logic;
SIGNAL \inst1|send_c~regout\ : std_logic;
SIGNAL \inst1|send_q~regout\ : std_logic;
SIGNAL \inst1|_~10\ : std_logic;
SIGNAL \inst1|read_d~regout\ : std_logic;
SIGNAL \inst1|read_c~regout\ : std_logic;
SIGNAL \inst1|bit_c~0\ : std_logic;
SIGNAL \inst1|bit_d~0\ : std_logic;
SIGNAL \inst1|read_d~0\ : std_logic;
SIGNAL \inst1|send_d~0\ : std_logic;
SIGNAL \inst1|bit_c~regout\ : std_logic;
SIGNAL \SCL_TEL~combout\ : std_logic;
SIGNAL \inst|MAX_SCL~0_combout\ : std_logic;
SIGNAL \inst12|ledon~1\ : std_logic;
SIGNAL \inst12|led_plus~0\ : std_logic;
SIGNAL \inst12|led_9~0\ : std_logic;
SIGNAL \inst12|leds_on~regout\ : std_logic;
SIGNAL \inst14|_~18_combout\ : std_logic;
SIGNAL \inst12|$00005~4\ : std_logic;
SIGNAL \inst12|$00005~3\ : std_logic;
SIGNAL \inst12|$00005~5\ : std_logic;
SIGNAL \inst12|$00005~2_combout\ : std_logic;
SIGNAL \inst12|_~16\ : std_logic;
SIGNAL \inst1|_~12\ : std_logic;
SIGNAL \inst1|_~13_combout\ : std_logic;
SIGNAL \inst12|bright_led~0\ : std_logic;
SIGNAL \inst12|bright_led~regout\ : std_logic;
SIGNAL \inst12|LED0~combout\ : std_logic;
SIGNAL \A_CS~combout\ : std_logic;
SIGNAL \A_SCLK~combout\ : std_logic;
SIGNAL \A_MOSI~combout\ : std_logic;
SIGNAL \L_MISO~combout\ : std_logic;
SIGNAL \G_SCL~combout\ : std_logic;
SIGNAL \inst13|cnt~regout\ : std_logic;
SIGNAL \inst13|SCL_MAX~regout\ : std_logic;
SIGNAL \inst14|_~26_combout\ : std_logic;
SIGNAL \inst13|comand~9_combout\ : std_logic;
SIGNAL \inst13|comand~8\ : std_logic;
SIGNAL \inst13|comand.max_go~regout\ : std_logic;
SIGNAL \inst13|comand~10_combout\ : std_logic;
SIGNAL \inst13|comand~11_combout\ : std_logic;
SIGNAL \inst13|comand.ready~regout\ : std_logic;
SIGNAL \inst13|comand.tel_go~regout\ : std_logic;
SIGNAL \inst|MAX_SDA~1\ : std_logic;
SIGNAL \inst1|_~15_combout\ : std_logic;
SIGNAL \inst1|bit_d~1_combout\ : std_logic;
SIGNAL \inst1|bit_d~regout\ : std_logic;
SIGNAL \inst|comand~13_combout\ : std_logic;
SIGNAL \inst|comand.ready~regout\ : std_logic;
SIGNAL \inst|comand~15_combout\ : std_logic;
SIGNAL \inst|comand.max_go~regout\ : std_logic;
SIGNAL \inst|MAX_SDA~2_combout\ : std_logic;
SIGNAL \inst|comand.tel_go~regout\ : std_logic;
SIGNAL \inst|wd_cntr[1]~21\ : std_logic;
SIGNAL \inst|wd_cntr[1]~21COUT1_24\ : std_logic;
SIGNAL \inst|wd_cntr[2]~19\ : std_logic;
SIGNAL \inst|wd_cntr[2]~19COUT1_25\ : std_logic;
SIGNAL \inst|wd_cntr[3]~17\ : std_logic;
SIGNAL \inst|wd_cntr[3]~17COUT1_26\ : std_logic;
SIGNAL \inst|wd_cntr[4]~15\ : std_logic;
SIGNAL \inst|wd_cntr[4]~15COUT1_27\ : std_logic;
SIGNAL \inst|wd_cntr[5]~7\ : std_logic;
SIGNAL \inst|wd_cntr[6]~1\ : std_logic;
SIGNAL \inst|wd_cntr[6]~1COUT1_28\ : std_logic;
SIGNAL \inst|wd_cntr[7]~9\ : std_logic;
SIGNAL \inst|wd_cntr[7]~9COUT1_29\ : std_logic;
SIGNAL \inst|wd_cntr[8]~11\ : std_logic;
SIGNAL \inst|wd_cntr[8]~11COUT1_30\ : std_logic;
SIGNAL \inst|wd_cntr[9]~3\ : std_logic;
SIGNAL \inst|wd_cntr[9]~3COUT1_31\ : std_logic;
SIGNAL \inst|test_out~0_combout\ : std_logic;
SIGNAL \inst|wd_cntr[10]~5\ : std_logic;
SIGNAL \inst|test_out~1_combout\ : std_logic;
SIGNAL \inst|test_out~reg0_regout\ : std_logic;
SIGNAL \inst|TEL_SDA~1_combout\ : std_logic;
SIGNAL \inst|wd_cntr\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|byte_cnt|auto_generated|safe_q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|UFM_shifter|dffs\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|main_out|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst12|time_100ms_cnt|auto_generated|safe_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|scl_f|dffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst14|i2c_cntr|auto_generated|safe_q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|div_cnt|auto_generated|safe_q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst12|blink_time|auto_generated|safe_q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst14|MODE_ff|dffs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst12|bright_cnt|auto_generated|safe_q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|LUX_ff|dffs\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst14|i2c_addr|dffs\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|bit_cnt|auto_generated|safe_q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst14|sda_f|dffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst12|blink_count|auto_generated|safe_q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|BRT0_ff|dffs\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst14|UFM_addr_cntr|auto_generated|safe_q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst14|ALT_INV_addr_shift~regout\ : std_logic;
SIGNAL \inst1|ALT_INV_idle~regout\ : std_logic;
SIGNAL \inst14|ALT_INV_erase_out~_wirecell\ : std_logic;
SIGNAL \inst14|ALT_INV_UFM_program~_wirecell_combout\ : std_logic;
SIGNAL \ALT_INV_~GND~combout\ : std_logic;
SIGNAL \inst13|ALT_INV_comand.tel_go~regout\ : std_logic;
SIGNAL \inst13|ALT_INV_comand.max_go~regout\ : std_logic;
SIGNAL \inst1|LUX_ff|ALT_INV_dffs\ : std_logic_vector(0 DOWNTO 0);

BEGIN

SCL_MAX <= ww_SCL_MAX;
ww_SCL_DS <= SCL_DS;
ww_SCL_TEL <= SCL_TEL;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
L_CS <= ww_L_CS;
ww_A_CS <= A_CS;
L_SCLK <= ww_L_SCLK;
ww_A_SCLK <= A_SCLK;
L_MOSI <= ww_L_MOSI;
ww_A_MOSI <= A_MOSI;
A_MISO <= ww_A_MISO;
ww_L_MISO <= L_MISO;
UART_Telit_RX <= ww_UART_Telit_RX;
UART_Modem_TX <= ww_UART_Modem_TX;
BT_RX <= ww_BT_RX;
G_Telit_TX <= ww_G_Telit_TX;
BT_BDOOR <= ww_BT_BDOOR;
BT_RST <= ww_BT_RST;
SIM_SEL <= ww_SIM_SEL;
ww_G_SCL <= G_SCL;
UART_Reset <= ww_UART_Reset;
UART_Modem_RX <= ww_UART_Modem_RX;
GAUGE_SCL <= ww_GAUGE_SCL;
ww_UART_Telit_TX <= UART_Telit_TX;
ww_BT_TX <= BT_TX;
ww_G_Telit_RX <= G_Telit_RX;
ww_PWR_SW <= PWR_SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst14|ALT_INV_addr_shift~regout\ <= NOT \inst14|addr_shift~regout\;
\inst1|ALT_INV_idle~regout\ <= NOT \inst1|idle~regout\;
\inst14|ALT_INV_erase_out~_wirecell\ <= NOT \inst14|erase_out~_wirecell\;
\inst14|ALT_INV_UFM_program~_wirecell_combout\ <= NOT \inst14|UFM_program~_wirecell_combout\;
\ALT_INV_~GND~combout\ <= NOT \~GND~combout\;
\inst13|ALT_INV_comand.tel_go~regout\ <= NOT \inst13|comand.tel_go~regout\;
\inst13|ALT_INV_comand.max_go~regout\ <= NOT \inst13|comand.max_go~regout\;
\inst1|LUX_ff|ALT_INV_dffs\(0) <= NOT \inst1|LUX_ff|dffs\(0);

-- Location: PIN_56,	 I/O Standard: 1.8 V,	 Current Strength: 6mA
\SDA_DS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \inst13|ALT_INV_comand.tel_go~regout\,
	oe => VCC,
	padio => SDA_DS,
	combout => LED_SDA_t);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\GAUGE_SDA~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \inst13|ALT_INV_comand.max_go~regout\,
	oe => VCC,
	padio => GAUGE_SDA,
	combout => \GAUGE_SDA~0\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\SDA_MAX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \inst|MAX_SDA~2_combout\,
	oe => VCC,
	padio => SDA_MAX,
	combout => \SDA_MAX~0\);

-- Location: PIN_71,	 I/O Standard: 1.8 V,	 Current Strength: 6mA
\SDA_TEL~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \inst|TEL_SDA~1_combout\,
	oe => VCC,
	padio => SDA_TEL,
	combout => \SDA_TEL~0\);

-- Location: LC_X4_Y3_N2
\inst14|sda_f|dffs[1]\ : maxv_lcell
-- Equation(s):
-- \inst14|sda_f|dffs\(1) = DFFEAS((((\inst14|sda_f|dffs\(0)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datad => \inst14|sda_f|dffs\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|sda_f|dffs\(1));

-- Location: LC_X7_Y2_N8
\inst14|_~13\ : maxv_lcell
-- Equation(s):
-- \inst14|_~13_combout\ = (!\inst14|scl_f|dffs\(0) & (((\inst14|scl_f|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|scl_f|dffs\(0),
	datad => \inst14|scl_f|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~13_combout\);

-- Location: LC_X2_Y1_N0
\inst14|scl_f|dffs[1]\ : maxv_lcell
-- Equation(s):
-- \inst14|_~11\ = (\inst14|sda_f|dffs\(1) & (((K1_dffs[1] & !\inst14|sda_f|dffs\(0)))))
-- \inst14|scl_f|dffs\(1) = DFFEAS(\inst14|_~11\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , \inst14|scl_f|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|sda_f|dffs\(1),
	datac => \inst14|scl_f|dffs\(0),
	datad => \inst14|sda_f|dffs\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~11\,
	regout => \inst14|scl_f|dffs\(1));

-- Location: LC_X7_Y2_N0
\inst14|i2c_cntr|auto_generated|counter_cella0\ : maxv_lcell
-- Equation(s):
-- \inst14|i2c_cntr|auto_generated|safe_q\(0) = DFFEAS(\inst14|_~13_combout\ $ ((\inst14|i2c_cntr|auto_generated|safe_q\(0))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), !GLOBAL(\inst14|_~11\), , , , , , )
-- \inst14|i2c_cntr|auto_generated|counter_cella0~COUT\ = CARRY(((\inst14|i2c_cntr|auto_generated|safe_q\(0))))
-- \inst14|i2c_cntr|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY(((\inst14|i2c_cntr|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|_~13_combout\,
	datab => \inst14|i2c_cntr|auto_generated|safe_q\(0),
	aclr => \inst14|_~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|i2c_cntr|auto_generated|safe_q\(0),
	cout0 => \inst14|i2c_cntr|auto_generated|counter_cella0~COUT\,
	cout1 => \inst14|i2c_cntr|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X7_Y2_N1
\inst14|i2c_cntr|auto_generated|counter_cella1\ : maxv_lcell
-- Equation(s):
-- \inst14|i2c_cntr|auto_generated|safe_q\(1) = DFFEAS(\inst14|i2c_cntr|auto_generated|safe_q\(1) $ (((\inst14|_~13_combout\ & (\inst14|i2c_cntr|auto_generated|counter_cella0~COUT\)))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), !GLOBAL(\inst14|_~11\), , , , , , )
-- \inst14|i2c_cntr|auto_generated|counter_cella1~COUT\ = CARRY(((!\inst14|i2c_cntr|auto_generated|counter_cella0~COUT\) # (!\inst14|i2c_cntr|auto_generated|safe_q\(1))))
-- \inst14|i2c_cntr|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\inst14|i2c_cntr|auto_generated|counter_cella0~COUTCOUT1_1\) # (!\inst14|i2c_cntr|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|_~13_combout\,
	datab => \inst14|i2c_cntr|auto_generated|safe_q\(1),
	aclr => \inst14|_~11\,
	cin0 => \inst14|i2c_cntr|auto_generated|counter_cella0~COUT\,
	cin1 => \inst14|i2c_cntr|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|i2c_cntr|auto_generated|safe_q\(1),
	cout0 => \inst14|i2c_cntr|auto_generated|counter_cella1~COUT\,
	cout1 => \inst14|i2c_cntr|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X7_Y2_N2
\inst14|i2c_cntr|auto_generated|counter_cella2\ : maxv_lcell
-- Equation(s):
-- \inst14|i2c_cntr|auto_generated|safe_q\(2) = DFFEAS(\inst14|i2c_cntr|auto_generated|safe_q\(2) $ (((\inst14|_~13_combout\ & (!\inst14|i2c_cntr|auto_generated|counter_cella1~COUT\)))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), !GLOBAL(\inst14|_~11\), , , , , , )
-- \inst14|i2c_cntr|auto_generated|counter_cella2~COUT\ = CARRY(((\inst14|i2c_cntr|auto_generated|safe_q\(2) & !\inst14|i2c_cntr|auto_generated|counter_cella1~COUT\)))
-- \inst14|i2c_cntr|auto_generated|counter_cella2~COUTCOUT1_1\ = CARRY(((\inst14|i2c_cntr|auto_generated|safe_q\(2) & !\inst14|i2c_cntr|auto_generated|counter_cella1~COUTCOUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c60c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|_~13_combout\,
	datab => \inst14|i2c_cntr|auto_generated|safe_q\(2),
	aclr => \inst14|_~11\,
	cin0 => \inst14|i2c_cntr|auto_generated|counter_cella1~COUT\,
	cin1 => \inst14|i2c_cntr|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|i2c_cntr|auto_generated|safe_q\(2),
	cout0 => \inst14|i2c_cntr|auto_generated|counter_cella2~COUT\,
	cout1 => \inst14|i2c_cntr|auto_generated|counter_cella2~COUTCOUT1_1\);

-- Location: LC_X7_Y2_N3
\inst14|i2c_cntr|auto_generated|counter_cella3\ : maxv_lcell
-- Equation(s):
-- \inst14|i2c_cntr|auto_generated|safe_q\(3) = DFFEAS(\inst14|i2c_cntr|auto_generated|safe_q\(3) $ (((\inst14|_~13_combout\ & (\inst14|i2c_cntr|auto_generated|counter_cella2~COUT\)))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), !GLOBAL(\inst14|_~11\), , , , , , )
-- \inst14|i2c_cntr|auto_generated|counter_cella3~COUT\ = CARRY(((!\inst14|i2c_cntr|auto_generated|counter_cella2~COUT\)) # (!\inst14|i2c_cntr|auto_generated|safe_q\(3)))
-- \inst14|i2c_cntr|auto_generated|counter_cella3~COUTCOUT1_1\ = CARRY(((!\inst14|i2c_cntr|auto_generated|counter_cella2~COUTCOUT1_1\)) # (!\inst14|i2c_cntr|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|i2c_cntr|auto_generated|safe_q\(3),
	datab => \inst14|_~13_combout\,
	aclr => \inst14|_~11\,
	cin0 => \inst14|i2c_cntr|auto_generated|counter_cella2~COUT\,
	cin1 => \inst14|i2c_cntr|auto_generated|counter_cella2~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|i2c_cntr|auto_generated|safe_q\(3),
	cout0 => \inst14|i2c_cntr|auto_generated|counter_cella3~COUT\,
	cout1 => \inst14|i2c_cntr|auto_generated|counter_cella3~COUTCOUT1_1\);

-- Location: LC_X7_Y2_N4
\inst14|i2c_cntr|auto_generated|counter_cella4\ : maxv_lcell
-- Equation(s):
-- \inst14|i2c_cntr|auto_generated|safe_q\(4) = DFFEAS(\inst14|i2c_cntr|auto_generated|safe_q\(4) $ ((((!\inst14|i2c_cntr|auto_generated|counter_cella3~COUT\ & \inst14|_~13_combout\)))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), !GLOBAL(\inst14|_~11\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|i2c_cntr|auto_generated|safe_q\(4),
	datad => \inst14|_~13_combout\,
	aclr => \inst14|_~11\,
	cin0 => \inst14|i2c_cntr|auto_generated|counter_cella3~COUT\,
	cin1 => \inst14|i2c_cntr|auto_generated|counter_cella3~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|i2c_cntr|auto_generated|safe_q\(4));

-- Location: PIN_54,	 I/O Standard: 1.8 V,	 Current Strength: Default
\SCL_DS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SCL_DS,
	combout => \SCL_DS~combout\);

-- Location: LC_X7_Y2_N9
\inst14|_~14\ : maxv_lcell
-- Equation(s):
-- \inst14|_~14_combout\ = (!\inst14|scl_f|dffs\(1) & (((!\inst14|i2c_cntr|auto_generated|safe_q\(0) & !\inst14|i2c_cntr|auto_generated|safe_q\(1))) # (!\inst14|i2c_cntr|auto_generated|safe_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0307",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i2c_cntr|auto_generated|safe_q\(0),
	datab => \inst14|i2c_cntr|auto_generated|safe_q\(2),
	datac => \inst14|scl_f|dffs\(1),
	datad => \inst14|i2c_cntr|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~14_combout\);

-- Location: LC_X7_Y2_N5
\inst14|scl_f|dffs[0]\ : maxv_lcell
-- Equation(s):
-- \inst14|_~15\ = (!\inst14|i2c_cntr|auto_generated|safe_q\(3) & (!\inst14|i2c_cntr|auto_generated|safe_q\(4) & (K1_dffs[0] & \inst14|_~14_combout\)))
-- \inst14|scl_f|dffs\(0) = DFFEAS(\inst14|_~15\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , \SCL_DS~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|i2c_cntr|auto_generated|safe_q\(3),
	datab => \inst14|i2c_cntr|auto_generated|safe_q\(4),
	datac => \SCL_DS~combout\,
	datad => \inst14|_~14_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~15\,
	regout => \inst14|scl_f|dffs\(0));

-- Location: LC_X4_Y3_N8
\inst14|sda_f|dffs[0]\ : maxv_lcell
-- Equation(s):
-- \inst14|_~24\ = (\inst14|stop~regout\ & (((K2_dffs[0]) # (!\inst14|sda_f|dffs\(1))) # (!\inst14|scl_f|dffs\(1))))
-- \inst14|sda_f|dffs\(0) = DFFEAS(\inst14|_~24\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , LED_SDA_t, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|stop~regout\,
	datab => \inst14|scl_f|dffs\(1),
	datac => LED_SDA_t,
	datad => \inst14|sda_f|dffs\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~24\,
	regout => \inst14|sda_f|dffs\(0));

-- Location: LC_X7_Y2_N6
\inst14|_~2\ : maxv_lcell
-- Equation(s):
-- \inst14|_~2_combout\ = (\inst14|i2c_cntr|auto_generated|safe_q\(3) & (((!\inst14|i2c_cntr|auto_generated|safe_q\(4) & !\inst14|i2c_cntr|auto_generated|safe_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i2c_cntr|auto_generated|safe_q\(3),
	datac => \inst14|i2c_cntr|auto_generated|safe_q\(4),
	datad => \inst14|i2c_cntr|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~2_combout\);

-- Location: LC_X7_Y3_N2
\inst14|_~3\ : maxv_lcell
-- Equation(s):
-- \inst14|_~3_combout\ = ((!\inst14|i2c_cntr|auto_generated|safe_q\(0) & (\inst14|i2c_cntr|auto_generated|safe_q\(1) & \inst14|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i2c_cntr|auto_generated|safe_q\(0),
	datac => \inst14|i2c_cntr|auto_generated|safe_q\(1),
	datad => \inst14|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~3_combout\);

-- Location: LC_X7_Y2_N7
\inst14|_~0\ : maxv_lcell
-- Equation(s):
-- \inst14|_~0_combout\ = ((!\inst14|i2c_cntr|auto_generated|safe_q\(2) & (\inst14|i2c_cntr|auto_generated|safe_q\(4) & \inst14|i2c_cntr|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i2c_cntr|auto_generated|safe_q\(2),
	datac => \inst14|i2c_cntr|auto_generated|safe_q\(4),
	datad => \inst14|i2c_cntr|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~0_combout\);

-- Location: LC_X6_Y1_N2
\inst14|_~1\ : maxv_lcell
-- Equation(s):
-- \inst14|_~1_combout\ = (\inst14|i2c_cntr|auto_generated|safe_q\(0) & (((\inst14|i2c_cntr|auto_generated|safe_q\(3) & \inst14|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i2c_cntr|auto_generated|safe_q\(0),
	datac => \inst14|i2c_cntr|auto_generated|safe_q\(3),
	datad => \inst14|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~1_combout\);

-- Location: LC_X2_Y2_N5
\inst14|UFM_addr_cntr|auto_generated|counter_cella0\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_addr_cntr|auto_generated|safe_q\(0) = DFFEAS((!\inst14|UFM_addr_cntr|auto_generated|safe_q\(0)), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , \inst14|_~22\, )
-- \inst14|UFM_addr_cntr|auto_generated|counter_cella0~COUT\ = CARRY((\inst14|UFM_addr_cntr|auto_generated|safe_q\(0)))
-- \inst14|UFM_addr_cntr|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY((\inst14|UFM_addr_cntr|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|UFM_addr_cntr|auto_generated|safe_q\(0),
	aclr => GND,
	sclr => \inst14|_~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|UFM_addr_cntr|auto_generated|safe_q\(0),
	cout0 => \inst14|UFM_addr_cntr|auto_generated|counter_cella0~COUT\,
	cout1 => \inst14|UFM_addr_cntr|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X2_Y2_N6
\inst14|UFM_addr_cntr|auto_generated|counter_cella1\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_addr_cntr|auto_generated|safe_q\(1) = DFFEAS(\inst14|UFM_addr_cntr|auto_generated|safe_q\(1) $ ((((\inst14|UFM_addr_cntr|auto_generated|counter_cella0~COUT\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), 
-- VCC, , , , , \inst14|_~22\, )
-- \inst14|UFM_addr_cntr|auto_generated|counter_cella1~COUT\ = CARRY(((!\inst14|UFM_addr_cntr|auto_generated|counter_cella0~COUT\)) # (!\inst14|UFM_addr_cntr|auto_generated|safe_q\(1)))
-- \inst14|UFM_addr_cntr|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\inst14|UFM_addr_cntr|auto_generated|counter_cella0~COUTCOUT1_1\)) # (!\inst14|UFM_addr_cntr|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|UFM_addr_cntr|auto_generated|safe_q\(1),
	aclr => GND,
	sclr => \inst14|_~22\,
	cin0 => \inst14|UFM_addr_cntr|auto_generated|counter_cella0~COUT\,
	cin1 => \inst14|UFM_addr_cntr|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|UFM_addr_cntr|auto_generated|safe_q\(1),
	cout0 => \inst14|UFM_addr_cntr|auto_generated|counter_cella1~COUT\,
	cout1 => \inst14|UFM_addr_cntr|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X2_Y2_N7
\inst14|UFM_addr_cntr|auto_generated|counter_cella2\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_addr_cntr|auto_generated|safe_q\(2) = DFFEAS((\inst14|UFM_addr_cntr|auto_generated|safe_q\(2) $ ((!\inst14|UFM_addr_cntr|auto_generated|counter_cella1~COUT\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), 
-- VCC, , , , , \inst14|_~22\, )
-- \inst14|UFM_addr_cntr|auto_generated|counter_cella2~COUT\ = CARRY(((\inst14|UFM_addr_cntr|auto_generated|safe_q\(2) & !\inst14|UFM_addr_cntr|auto_generated|counter_cella1~COUT\)))
-- \inst14|UFM_addr_cntr|auto_generated|counter_cella2~COUTCOUT1_1\ = CARRY(((\inst14|UFM_addr_cntr|auto_generated|safe_q\(2) & !\inst14|UFM_addr_cntr|auto_generated|counter_cella1~COUTCOUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst14|UFM_addr_cntr|auto_generated|safe_q\(2),
	aclr => GND,
	sclr => \inst14|_~22\,
	cin0 => \inst14|UFM_addr_cntr|auto_generated|counter_cella1~COUT\,
	cin1 => \inst14|UFM_addr_cntr|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|UFM_addr_cntr|auto_generated|safe_q\(2),
	cout0 => \inst14|UFM_addr_cntr|auto_generated|counter_cella2~COUT\,
	cout1 => \inst14|UFM_addr_cntr|auto_generated|counter_cella2~COUTCOUT1_1\);

-- Location: LC_X2_Y2_N8
\inst14|UFM_addr_cntr|auto_generated|counter_cella3\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_addr_cntr|auto_generated|safe_q\(3) = DFFEAS((\inst14|UFM_addr_cntr|auto_generated|safe_q\(3) $ ((\inst14|UFM_addr_cntr|auto_generated|counter_cella2~COUT\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, 
-- , , , , \inst14|_~22\, )
-- \inst14|UFM_addr_cntr|auto_generated|counter_cella3~COUT\ = CARRY(((!\inst14|UFM_addr_cntr|auto_generated|counter_cella2~COUT\) # (!\inst14|UFM_addr_cntr|auto_generated|safe_q\(3))))
-- \inst14|UFM_addr_cntr|auto_generated|counter_cella3~COUTCOUT1_1\ = CARRY(((!\inst14|UFM_addr_cntr|auto_generated|counter_cella2~COUTCOUT1_1\) # (!\inst14|UFM_addr_cntr|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst14|UFM_addr_cntr|auto_generated|safe_q\(3),
	aclr => GND,
	sclr => \inst14|_~22\,
	cin0 => \inst14|UFM_addr_cntr|auto_generated|counter_cella2~COUT\,
	cin1 => \inst14|UFM_addr_cntr|auto_generated|counter_cella2~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|UFM_addr_cntr|auto_generated|safe_q\(3),
	cout0 => \inst14|UFM_addr_cntr|auto_generated|counter_cella3~COUT\,
	cout1 => \inst14|UFM_addr_cntr|auto_generated|counter_cella3~COUTCOUT1_1\);

-- Location: LC_X2_Y2_N9
\inst14|UFM_addr_cntr|auto_generated|counter_cella4\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_addr_cntr|auto_generated|safe_q\(4) = DFFEAS(((\inst14|UFM_addr_cntr|auto_generated|counter_cella3~COUT\ $ (!\inst14|UFM_addr_cntr|auto_generated|safe_q\(4)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), 
-- VCC, , , , , \inst14|_~22\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datad => \inst14|UFM_addr_cntr|auto_generated|safe_q\(4),
	aclr => GND,
	sclr => \inst14|_~22\,
	cin0 => \inst14|UFM_addr_cntr|auto_generated|counter_cella3~COUT\,
	cin1 => \inst14|UFM_addr_cntr|auto_generated|counter_cella3~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|UFM_addr_cntr|auto_generated|safe_q\(4));

-- Location: LC_X2_Y2_N1
\inst14|_~6\ : maxv_lcell
-- Equation(s):
-- \inst14|_~6_combout\ = (((\inst14|UFM_addr_cntr|auto_generated|safe_q\(2) & !\inst14|UFM_addr_cntr|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst14|UFM_addr_cntr|auto_generated|safe_q\(2),
	datad => \inst14|UFM_addr_cntr|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~6_combout\);

-- Location: LC_X2_Y2_N4
\inst14|_~9\ : maxv_lcell
-- Equation(s):
-- \inst14|_~9_combout\ = (\inst14|UFM_addr_cntr|auto_generated|safe_q\(0) & (!\inst14|UFM_addr_cntr|auto_generated|safe_q\(3) & (\inst14|UFM_addr_cntr|auto_generated|safe_q\(1) & \inst14|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|UFM_addr_cntr|auto_generated|safe_q\(0),
	datab => \inst14|UFM_addr_cntr|auto_generated|safe_q\(3),
	datac => \inst14|UFM_addr_cntr|auto_generated|safe_q\(1),
	datad => \inst14|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~9_combout\);

-- Location: LC_X2_Y1_N4
\inst14|wr_addr\ : maxv_lcell
-- Equation(s):
-- \inst14|wr_addr~0\ = (\inst14|_~9_combout\ & (\inst14|stop~regout\ & ((\inst14|_~11\)))) # (!\inst14|_~9_combout\ & ((G1_wr_addr) # ((\inst14|stop~regout\ & \inst14|_~11\))))
-- \inst14|wr_addr~regout\ = DFFEAS(\inst14|wr_addr~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|_~9_combout\,
	datab => \inst14|stop~regout\,
	datad => \inst14|_~11\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|wr_addr~0\,
	regout => \inst14|wr_addr~regout\);

-- Location: LC_X4_Y1_N0
\inst14|_~12\ : maxv_lcell
-- Equation(s):
-- \inst14|_~12_combout\ = ((!\inst14|i2c_cntr|auto_generated|safe_q\(0) & (!\inst14|i2c_cntr|auto_generated|safe_q\(1) & \inst14|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i2c_cntr|auto_generated|safe_q\(0),
	datac => \inst14|i2c_cntr|auto_generated|safe_q\(1),
	datad => \inst14|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~12_combout\);

-- Location: LC_X2_Y1_N5
\inst14|wait_addr\ : maxv_lcell
-- Equation(s):
-- \inst14|wait_addr~0\ = (\inst14|wr_addr~regout\ & ((\inst14|_~9_combout\) # ((!\inst14|_~12_combout\ & G1_wait_addr)))) # (!\inst14|wr_addr~regout\ & (!\inst14|_~12_combout\ & (G1_wait_addr)))
-- \inst14|wait_addr~regout\ = DFFEAS(\inst14|wait_addr~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|wr_addr~regout\,
	datab => \inst14|_~12_combout\,
	datad => \inst14|_~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|wait_addr~0\,
	regout => \inst14|wait_addr~regout\);

-- Location: LC_X4_Y1_N1
\inst14|wr_addr0\ : maxv_lcell
-- Equation(s):
-- \inst14|_~8\ = (!\inst14|i2c_cntr|auto_generated|safe_q\(1) & (!\inst14|i2c_cntr|auto_generated|safe_q\(0) & (\inst14|wait_addr~regout\ & \inst14|_~2_combout\)))
-- \inst14|wr_addr0~regout\ = DFFEAS(\inst14|_~8\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|i2c_cntr|auto_generated|safe_q\(1),
	datab => \inst14|i2c_cntr|auto_generated|safe_q\(0),
	datac => \inst14|wait_addr~regout\,
	datad => \inst14|_~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~8\,
	regout => \inst14|wr_addr0~regout\);

-- Location: LC_X7_Y3_N1
\inst14|i2c_addr|dffs[3]\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_program~0\ = ((\inst14|i2c_addr|dffs\(0) & (K3_dffs[3] & !\inst14|i2c_addr|dffs\(1))))
-- \inst14|i2c_addr|dffs\(3) = DFFEAS(\inst14|UFM_program~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|_~15\, \inst14|i2c_addr|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst14|i2c_addr|dffs\(0),
	datac => \inst14|i2c_addr|dffs\(2),
	datad => \inst14|i2c_addr|dffs\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst14|_~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|UFM_program~0\,
	regout => \inst14|i2c_addr|dffs\(3));

-- Location: LC_X7_Y3_N9
\inst14|i2c_addr|dffs[0]\ : maxv_lcell
-- Equation(s):
-- \inst14|_~19\ = (\inst14|wr_addr0~regout\ & (\inst14|i2c_addr|dffs\(3) & (K3_dffs[0] & !\inst14|i2c_addr|dffs\(1))))
-- \inst14|i2c_addr|dffs\(0) = DFFEAS(\inst14|_~19\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|_~15\, \inst14|sda_f|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|wr_addr0~regout\,
	datab => \inst14|i2c_addr|dffs\(3),
	datac => \inst14|sda_f|dffs\(0),
	datad => \inst14|i2c_addr|dffs\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst14|_~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~19\,
	regout => \inst14|i2c_addr|dffs\(0));

-- Location: LC_X7_Y3_N3
\inst14|i2c_addr|dffs[1]\ : maxv_lcell
-- Equation(s):
-- \inst14|i2c_addr|dffs\(1) = DFFEAS((((\inst14|i2c_addr|dffs\(0)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|_~15\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datad => \inst14|i2c_addr|dffs\(0),
	aclr => GND,
	ena => \inst14|_~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|i2c_addr|dffs\(1));

-- Location: LC_X7_Y3_N4
\inst14|i2c_addr|dffs[2]\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_program\ = ((\inst14|_~1_combout\ & (K3_dffs[2] & \inst14|UFM_program~0\)))
-- \inst14|i2c_addr|dffs\(2) = DFFEAS(\inst14|UFM_program\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|_~15\, \inst14|i2c_addr|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst14|_~1_combout\,
	datac => \inst14|i2c_addr|dffs\(1),
	datad => \inst14|UFM_program~0\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|_~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|UFM_program\,
	regout => \inst14|i2c_addr|dffs\(2));

-- Location: LC_X7_Y3_N6
\inst14|wait_data\ : maxv_lcell
-- Equation(s):
-- \inst14|wait_data~regout\ = DFFEAS((\inst14|wait_data~regout\ & (((\inst14|i2c_addr|dffs\(2) & \inst14|_~19\)) # (!\inst14|_~3_combout\))) # (!\inst14|wait_data~regout\ & (((\inst14|i2c_addr|dffs\(2) & \inst14|_~19\)))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|wait_data~regout\,
	datab => \inst14|_~3_combout\,
	datac => \inst14|i2c_addr|dffs\(2),
	datad => \inst14|_~19\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|wait_data~regout\);

-- Location: LC_X6_Y1_N0
\inst14|_~4\ : maxv_lcell
-- Equation(s):
-- \inst14|_~4_combout\ = (!\inst14|i2c_cntr|auto_generated|safe_q\(0) & (((!\inst14|i2c_cntr|auto_generated|safe_q\(3) & \inst14|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i2c_cntr|auto_generated|safe_q\(0),
	datac => \inst14|i2c_cntr|auto_generated|safe_q\(3),
	datad => \inst14|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~4_combout\);

-- Location: LC_X6_Y2_N6
\inst14|data_write\ : maxv_lcell
-- Equation(s):
-- \inst14|data_write~0\ = (\inst14|wait_data~regout\ & ((\inst14|_~3_combout\) # ((!\inst14|_~4_combout\ & G1_data_write)))) # (!\inst14|wait_data~regout\ & (!\inst14|_~4_combout\ & (G1_data_write)))
-- \inst14|data_write~regout\ = DFFEAS(\inst14|data_write~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|wait_data~regout\,
	datab => \inst14|_~4_combout\,
	datad => \inst14|_~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|data_write~0\,
	regout => \inst14|data_write~regout\);

-- Location: LC_X6_Y1_N3
\inst14|_~5\ : maxv_lcell
-- Equation(s):
-- \inst14|_~5_combout\ = (\inst14|i2c_cntr|auto_generated|safe_q\(0) & (((!\inst14|i2c_cntr|auto_generated|safe_q\(3) & \inst14|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|i2c_cntr|auto_generated|safe_q\(0),
	datac => \inst14|i2c_cntr|auto_generated|safe_q\(3),
	datad => \inst14|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~5_combout\);

-- Location: LC_X6_Y1_N5
\inst14|data_ak\ : maxv_lcell
-- Equation(s):
-- \inst14|data_ak~regout\ = DFFEAS((\inst14|data_ak~regout\ & (((\inst14|data_write~regout\ & \inst14|_~4_combout\)) # (!\inst14|_~5_combout\))) # (!\inst14|data_ak~regout\ & (\inst14|data_write~regout\ & (\inst14|_~4_combout\))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|data_ak~regout\,
	datab => \inst14|data_write~regout\,
	datac => \inst14|_~4_combout\,
	datad => \inst14|_~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|data_ak~regout\);

-- Location: LC_X6_Y1_N7
\inst14|data_write2\ : maxv_lcell
-- Equation(s):
-- \inst14|data_write2~0\ = (\inst14|data_ak~regout\ & ((\inst14|_~5_combout\) # ((!\inst14|_~1_combout\ & G1_data_write2)))) # (!\inst14|data_ak~regout\ & (!\inst14|_~1_combout\ & (G1_data_write2)))
-- \inst14|data_write2~regout\ = DFFEAS(\inst14|data_write2~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|data_ak~regout\,
	datab => \inst14|_~1_combout\,
	datad => \inst14|_~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|data_write2~0\,
	regout => \inst14|data_write2~regout\);

-- Location: LC_X6_Y1_N4
\inst14|wait_wr\ : maxv_lcell
-- Equation(s):
-- \inst14|wait_wr~regout\ = DFFEAS((\inst14|wait_wr~regout\ & ((\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\) # ((\inst14|data_write2~regout\ & \inst14|_~1_combout\)))) # (!\inst14|wait_wr~regout\ & (\inst14|data_write2~regout\ & 
-- ((\inst14|_~1_combout\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|wait_wr~regout\,
	datab => \inst14|data_write2~regout\,
	datac => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\,
	datad => \inst14|_~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|wait_wr~regout\);

-- Location: LC_X3_Y1_N6
\inst14|load_ready\ : maxv_lcell
-- Equation(s):
-- \inst14|load_ready~regout\ = DFFEAS((((!\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\ & \inst14|wait_wr~regout\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datac => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\,
	datad => \inst14|wait_wr~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|load_ready~regout\);

-- Location: LC_X3_Y1_N5
\inst14|idle\ : maxv_lcell
-- Equation(s):
-- \inst14|idle~regout\ = DFFEAS(((!\inst14|load_ready~regout\ & ((\inst14|idle~regout\) # (!\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|idle~regout\,
	datac => \inst14|load_ready~regout\,
	datad => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|idle~regout\);

-- Location: LC_X3_Y1_N4
\inst14|_~20\ : maxv_lcell
-- Equation(s):
-- \inst14|_~20_combout\ = (!\inst14|idle~regout\ & (((!\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|idle~regout\,
	datac => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~20_combout\);

-- Location: LC_X3_Y1_N0
\inst14|data_read\ : maxv_lcell
-- Equation(s):
-- \inst14|_~21\ = (\inst14|stop~regout\) # ((\inst14|wr_addr0~regout\) # ((G1_data_read) # (\inst14|wait_rd~regout\)))
-- \inst14|data_read~regout\ = DFFEAS(\inst14|_~21\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , \inst14|addr_load~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|stop~regout\,
	datab => \inst14|wr_addr0~regout\,
	datac => \inst14|addr_load~regout\,
	datad => \inst14|wait_rd~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~21\,
	regout => \inst14|data_read~regout\);

-- Location: LC_X3_Y1_N3
\inst14|wait_rd\ : maxv_lcell
-- Equation(s):
-- \inst14|wait_rd~regout\ = DFFEAS(((\inst14|data_read~regout\) # ((\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\ & \inst14|wait_rd~regout\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst14|data_read~regout\,
	datac => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\,
	datad => \inst14|wait_rd~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|wait_rd~regout\);

-- Location: LC_X3_Y1_N7
\inst14|addr_load\ : maxv_lcell
-- Equation(s):
-- \inst14|_~22\ = (\inst14|addr_bit0~regout\) # ((\inst14|_~20_combout\) # ((G1_addr_load) # (\inst14|_~21\)))
-- \inst14|addr_load~regout\ = DFFEAS(\inst14|_~22\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , \inst14|addr_bit0~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|addr_bit0~regout\,
	datab => \inst14|_~20_combout\,
	datac => \inst14|addr_bit0~regout\,
	datad => \inst14|_~21\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~22\,
	regout => \inst14|addr_load~regout\);

-- Location: LC_X3_Y1_N1
\inst14|data_shift\ : maxv_lcell
-- Equation(s):
-- \inst14|data_shift~0\ = (\inst14|_~7_combout\ & (!\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\ & ((\inst14|wait_rd~regout\)))) # (!\inst14|_~7_combout\ & ((G1_data_shift) # 
-- ((!\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\ & \inst14|wait_rd~regout\))))
-- \inst14|data_shift~regout\ = DFFEAS(\inst14|data_shift~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7350",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|_~7_combout\,
	datab => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\,
	datad => \inst14|wait_rd~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|data_shift~0\,
	regout => \inst14|data_shift~regout\);

-- Location: LC_X2_Y1_N7
\inst14|data_clk\ : maxv_lcell
-- Equation(s):
-- \inst14|data_clk~regout\ = DFFEAS(((\inst14|addr_load~regout\) # ((\inst14|data_shift~0\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst14|addr_load~regout\,
	datac => \inst14|data_shift~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|data_clk~regout\);

-- Location: LC_X2_Y1_N9
\inst14|data_strb\ : maxv_lcell
-- Equation(s):
-- \inst14|data_strb~regout\ = DFFEAS((((\inst14|data_write2~0\) # (\inst14|data_write~0\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datac => \inst14|data_write2~0\,
	datad => \inst14|data_write~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|data_strb~regout\);

-- Location: LC_X2_Y1_N1
\inst14|UFM_drclk~2\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_drclk~2_combout\ = (\inst14|data_strb~regout\ & (((\inst14|scl_f|dffs\(1))))) # (!\inst14|data_strb~regout\ & (!\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\ & (\inst14|data_clk~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst14|data_clk~regout\,
	datac => \inst14|scl_f|dffs\(1),
	datad => \inst14|data_strb~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|UFM_drclk~2_combout\);

-- Location: LC_X2_Y1_N8
\inst14|data_sh\ : maxv_lcell
-- Equation(s):
-- \inst14|data_sh~regout\ = DFFEAS((\inst14|data_shift~0\) # (((\inst14|data_write2~0\) # (\inst14|data_write~0\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|data_shift~0\,
	datac => \inst14|data_write2~0\,
	datad => \inst14|data_write~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|data_sh~regout\);

-- Location: LC_X2_Y1_N6
\inst14|addr_prepare\ : maxv_lcell
-- Equation(s):
-- \inst14|addr_prepare~0\ = (\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\ & (((G1_addr_prepare & !\inst14|_~9_combout\)))) # (!\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\ & (((G1_addr_prepare & 
-- !\inst14|_~9_combout\)) # (!\inst14|idle~regout\)))
-- \inst14|addr_prepare~regout\ = DFFEAS(\inst14|addr_prepare~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11f1",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\,
	datab => \inst14|idle~regout\,
	datad => \inst14|_~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|addr_prepare~0\,
	regout => \inst14|addr_prepare~regout\);

-- Location: LC_X3_Y1_N9
\inst14|addr_shift~0\ : maxv_lcell
-- Equation(s):
-- \inst14|addr_shift~0_combout\ = (!\inst14|load_ready~regout\ & (!\inst14|_~8\ & ((\inst14|idle~regout\) # (!\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|idle~regout\,
	datab => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\,
	datac => \inst14|load_ready~regout\,
	datad => \inst14|_~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|addr_shift~0_combout\);

-- Location: LC_X3_Y1_N8
\inst14|addr_bit0\ : maxv_lcell
-- Equation(s):
-- \inst14|_~10\ = ((\inst14|addr_prepare~regout\ & (\inst14|_~9_combout\)))
-- \inst14|addr_bit0~regout\ = DFFEAS(\inst14|_~10\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst14|addr_prepare~regout\,
	datac => \inst14|_~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~10\,
	regout => \inst14|addr_bit0~regout\);

-- Location: LC_X4_Y1_N2
\inst14|addr_shift~1\ : maxv_lcell
-- Equation(s):
-- \inst14|addr_shift~1_combout\ = (!\inst14|addr_prepare~0\ & (!\inst14|wr_addr~0\ & (\inst14|addr_shift~0_combout\ & !\inst14|_~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|addr_prepare~0\,
	datab => \inst14|wr_addr~0\,
	datac => \inst14|addr_shift~0_combout\,
	datad => \inst14|_~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|addr_shift~1_combout\);

-- Location: LC_X2_Y1_N2
\inst14|addr_clk\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_arclk\ = ((!\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\ & (!G1_addr_clk)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datac => \inst14|addr_shift~1_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|UFM_arclk\,
	regout => \inst14|addr_clk~regout\);

-- Location: LC_X2_Y1_N3
\inst14|addr_shift\ : maxv_lcell
-- Equation(s):
-- \inst14|addr_shift~regout\ = DFFEAS((((!\inst14|wait_addr~0\ & \inst14|addr_shift~1_combout\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datac => \inst14|wait_addr~0\,
	datad => \inst14|addr_shift~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|addr_shift~regout\);

-- Location: LC_X4_Y3_N0
\inst14|UFM_program~_wirecell\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_program~_wirecell_combout\ = (((!\inst14|UFM_program\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst14|UFM_program\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|UFM_program~_wirecell_combout\);

-- Location: LC_X7_Y3_N5
\inst14|erase_wait\ : maxv_lcell
-- Equation(s):
-- \inst14|erase_wait~regout\ = DFFEAS((((!\inst14|i2c_addr|dffs\(2) & \inst14|_~19\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datac => \inst14|i2c_addr|dffs\(2),
	datad => \inst14|_~19\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|erase_wait~regout\);

-- Location: LC_X7_Y3_N7
\inst14|erase_out\ : maxv_lcell
-- Equation(s):
-- \inst14|erase_out~_wirecell\ = (((!G1_erase_out)))
-- \inst14|erase_out~regout\ = DFFEAS(\inst14|erase_out~_wirecell\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , \inst14|erase_wait~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datac => \inst14|erase_wait~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|erase_out~_wirecell\,
	regout => \inst14|erase_out~regout\);

-- Location: LC_X6_Y3_N6
\~GND\ : maxv_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: UFM_X0_Y1_N4
\inst11|UFM_NONE_altufm_none_qgr_component|maxii_ufm_block1\ : maxv_ufm
-- pragma translate_off
GENERIC MAP (
	mem16 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem15 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem14 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem13 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem12 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem11 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem10 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem9 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem8 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem7 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem6 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem5 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem4 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem3 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem2 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111",
	mem1 => "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111110100010011010100",
	address_width => 9,
	erase_time => 500000000,
	init_file => "maxv_ufm.mif",
	osc_sim_setting => 180000,
	program_time => 1600000)
-- pragma translate_on
PORT MAP (
	drdin => \inst14|sda_f|dffs\(0),
	drclk => \inst14|UFM_drclk~2_combout\,
	drshft => \inst14|data_sh~regout\,
	ardin => GND,
	arclk => \inst14|UFM_arclk\,
	arshft => \inst14|ALT_INV_addr_shift~regout\,
	program => \inst14|ALT_INV_UFM_program~_wirecell_combout\,
	erase => \inst14|ALT_INV_erase_out~_wirecell\,
	oscena => \ALT_INV_~GND~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	drdout => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_drdout\,
	busy => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\,
	osc => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\);

-- Location: LC_X2_Y2_N0
\inst14|_~7\ : maxv_lcell
-- Equation(s):
-- \inst14|_~7_combout\ = (\inst14|UFM_addr_cntr|auto_generated|safe_q\(0) & (\inst14|UFM_addr_cntr|auto_generated|safe_q\(3) & (\inst14|UFM_addr_cntr|auto_generated|safe_q\(1) & \inst14|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|UFM_addr_cntr|auto_generated|safe_q\(0),
	datab => \inst14|UFM_addr_cntr|auto_generated|safe_q\(3),
	datac => \inst14|UFM_addr_cntr|auto_generated|safe_q\(1),
	datad => \inst14|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~7_combout\);

-- Location: LC_X7_Y3_N0
\inst14|erase_busy\ : maxv_lcell
-- Equation(s):
-- \inst14|erase_busy~regout\ = DFFEAS(((\inst14|erase_out~regout\) # ((\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\ & \inst14|erase_busy~regout\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), 
-- VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst14|erase_out~regout\,
	datac => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\,
	datad => \inst14|erase_busy~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|erase_busy~regout\);

-- Location: LC_X7_Y3_N8
\inst14|stop~0\ : maxv_lcell
-- Equation(s):
-- \inst14|stop~0_combout\ = (\inst14|wr_addr0~regout\ & (((\inst14|erase_busy~regout\ & !\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\)) # (!\inst14|UFM_program~0\))) # (!\inst14|wr_addr0~regout\ & (\inst14|erase_busy~regout\ & 
-- (!\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|wr_addr0~regout\,
	datab => \inst14|erase_busy~regout\,
	datac => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_busy\,
	datad => \inst14|UFM_program~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|stop~0_combout\);

-- Location: LC_X3_Y1_N2
\inst14|stop\ : maxv_lcell
-- Equation(s):
-- \inst14|stop~regout\ = DFFEAS((\inst14|_~24\) # ((\inst14|stop~0_combout\) # ((\inst14|data_shift~regout\ & \inst14|_~7_combout\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|_~24\,
	datab => \inst14|data_shift~regout\,
	datac => \inst14|_~7_combout\,
	datad => \inst14|stop~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|stop~regout\);

-- Location: LC_X4_Y2_N6
\inst1|div_cnt|auto_generated|counter_cella0\ : maxv_lcell
-- Equation(s):
-- \inst1|div_cnt|auto_generated|safe_q\(0) = DFFEAS((!\inst1|div_cnt|auto_generated|safe_q\(0)), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )
-- \inst1|div_cnt|auto_generated|counter_cella0~COUT\ = CARRY((\inst1|div_cnt|auto_generated|safe_q\(0)))
-- \inst1|div_cnt|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY((\inst1|div_cnt|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|div_cnt|auto_generated|safe_q\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|div_cnt|auto_generated|safe_q\(0),
	cout0 => \inst1|div_cnt|auto_generated|counter_cella0~COUT\,
	cout1 => \inst1|div_cnt|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N7
\inst1|div_cnt|auto_generated|counter_cella1\ : maxv_lcell
-- Equation(s):
-- \inst1|div_cnt|auto_generated|safe_q\(1) = DFFEAS((\inst1|div_cnt|auto_generated|safe_q\(1) $ ((\inst1|div_cnt|auto_generated|counter_cella0~COUT\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )
-- \inst1|div_cnt|auto_generated|counter_cella1~COUT\ = CARRY(((!\inst1|div_cnt|auto_generated|counter_cella0~COUT\) # (!\inst1|div_cnt|auto_generated|safe_q\(1))))
-- \inst1|div_cnt|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\inst1|div_cnt|auto_generated|counter_cella0~COUTCOUT1_1\) # (!\inst1|div_cnt|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst1|div_cnt|auto_generated|safe_q\(1),
	aclr => GND,
	cin0 => \inst1|div_cnt|auto_generated|counter_cella0~COUT\,
	cin1 => \inst1|div_cnt|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|div_cnt|auto_generated|safe_q\(1),
	cout0 => \inst1|div_cnt|auto_generated|counter_cella1~COUT\,
	cout1 => \inst1|div_cnt|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N8
\inst1|div_cnt|auto_generated|counter_cella2\ : maxv_lcell
-- Equation(s):
-- \inst1|div_cnt|auto_generated|safe_q\(2) = DFFEAS(\inst1|div_cnt|auto_generated|safe_q\(2) $ ((((!\inst1|div_cnt|auto_generated|counter_cella1~COUT\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )
-- \inst1|div_cnt|auto_generated|counter_cella2~COUT\ = CARRY((\inst1|div_cnt|auto_generated|safe_q\(2) & ((!\inst1|div_cnt|auto_generated|counter_cella1~COUT\))))
-- \inst1|div_cnt|auto_generated|counter_cella2~COUTCOUT1_1\ = CARRY((\inst1|div_cnt|auto_generated|safe_q\(2) & ((!\inst1|div_cnt|auto_generated|counter_cella1~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|div_cnt|auto_generated|safe_q\(2),
	aclr => GND,
	cin0 => \inst1|div_cnt|auto_generated|counter_cella1~COUT\,
	cin1 => \inst1|div_cnt|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|div_cnt|auto_generated|safe_q\(2),
	cout0 => \inst1|div_cnt|auto_generated|counter_cella2~COUT\,
	cout1 => \inst1|div_cnt|auto_generated|counter_cella2~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N9
\inst1|div_cnt|auto_generated|cout_bit\ : maxv_lcell
-- Equation(s):
-- \inst1|div_cnt|auto_generated|cout\ = (((\inst1|div_cnt|auto_generated|counter_cella2~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \inst1|div_cnt|auto_generated|counter_cella2~COUT\,
	cin1 => \inst1|div_cnt|auto_generated|counter_cella2~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|div_cnt|auto_generated|cout\);

-- Location: LC_X5_Y2_N1
\inst1|bit_cnt|auto_generated|counter_cella0\ : maxv_lcell
-- Equation(s):
-- \inst1|bit_cnt|auto_generated|safe_q\(0) = DFFEAS(\inst1|bit_cnt|auto_generated|safe_q\(0) $ ((\inst1|_~10\)), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, , , 
-- \inst1|startc~regout\, )
-- \inst1|bit_cnt|auto_generated|counter_cella0~COUT\ = CARRY((\inst1|bit_cnt|auto_generated|safe_q\(0)))
-- \inst1|bit_cnt|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY((\inst1|bit_cnt|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(0),
	datab => \inst1|_~10\,
	aclr => GND,
	sclr => \inst1|startc~regout\,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|bit_cnt|auto_generated|safe_q\(0),
	cout0 => \inst1|bit_cnt|auto_generated|counter_cella0~COUT\,
	cout1 => \inst1|bit_cnt|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N2
\inst1|bit_cnt|auto_generated|counter_cella1\ : maxv_lcell
-- Equation(s):
-- \inst1|bit_cnt|auto_generated|safe_q\(1) = DFFEAS(\inst1|bit_cnt|auto_generated|safe_q\(1) $ (((\inst1|_~10\ & (\inst1|bit_cnt|auto_generated|counter_cella0~COUT\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst1|div_cnt|auto_generated|cout\, , , \inst1|startc~regout\, )
-- \inst1|bit_cnt|auto_generated|counter_cella1~COUT\ = CARRY(((!\inst1|bit_cnt|auto_generated|counter_cella0~COUT\)) # (!\inst1|bit_cnt|auto_generated|safe_q\(1)))
-- \inst1|bit_cnt|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\inst1|bit_cnt|auto_generated|counter_cella0~COUTCOUT1_1\)) # (!\inst1|bit_cnt|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(1),
	datab => \inst1|_~10\,
	aclr => GND,
	sclr => \inst1|startc~regout\,
	ena => \inst1|div_cnt|auto_generated|cout\,
	cin0 => \inst1|bit_cnt|auto_generated|counter_cella0~COUT\,
	cin1 => \inst1|bit_cnt|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|bit_cnt|auto_generated|safe_q\(1),
	cout0 => \inst1|bit_cnt|auto_generated|counter_cella1~COUT\,
	cout1 => \inst1|bit_cnt|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N3
\inst1|bit_cnt|auto_generated|counter_cella2\ : maxv_lcell
-- Equation(s):
-- \inst1|bit_cnt|auto_generated|safe_q\(2) = DFFEAS(\inst1|bit_cnt|auto_generated|safe_q\(2) $ (((\inst1|_~10\ & (!\inst1|bit_cnt|auto_generated|counter_cella1~COUT\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst1|div_cnt|auto_generated|cout\, , , \inst1|startc~regout\, )
-- \inst1|bit_cnt|auto_generated|counter_cella2~COUT\ = CARRY((\inst1|bit_cnt|auto_generated|safe_q\(2) & ((!\inst1|bit_cnt|auto_generated|counter_cella1~COUT\))))
-- \inst1|bit_cnt|auto_generated|counter_cella2~COUTCOUT1_1\ = CARRY((\inst1|bit_cnt|auto_generated|safe_q\(2) & ((!\inst1|bit_cnt|auto_generated|counter_cella1~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a60a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(2),
	datab => \inst1|_~10\,
	aclr => GND,
	sclr => \inst1|startc~regout\,
	ena => \inst1|div_cnt|auto_generated|cout\,
	cin0 => \inst1|bit_cnt|auto_generated|counter_cella1~COUT\,
	cin1 => \inst1|bit_cnt|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|bit_cnt|auto_generated|safe_q\(2),
	cout0 => \inst1|bit_cnt|auto_generated|counter_cella2~COUT\,
	cout1 => \inst1|bit_cnt|auto_generated|counter_cella2~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N4
\inst1|bit_cnt|auto_generated|counter_cella3\ : maxv_lcell
-- Equation(s):
-- \inst1|bit_cnt|auto_generated|safe_q\(3) = DFFEAS(\inst1|bit_cnt|auto_generated|safe_q\(3) $ (((\inst1|_~10\ & (\inst1|bit_cnt|auto_generated|counter_cella2~COUT\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst1|div_cnt|auto_generated|cout\, , , \inst1|startc~regout\, )
-- \inst1|bit_cnt|auto_generated|counter_cella3~COUT\ = CARRY(((!\inst1|bit_cnt|auto_generated|counter_cella2~COUTCOUT1_1\)) # (!\inst1|bit_cnt|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(3),
	datab => \inst1|_~10\,
	aclr => GND,
	sclr => \inst1|startc~regout\,
	ena => \inst1|div_cnt|auto_generated|cout\,
	cin0 => \inst1|bit_cnt|auto_generated|counter_cella2~COUT\,
	cin1 => \inst1|bit_cnt|auto_generated|counter_cella2~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|bit_cnt|auto_generated|safe_q\(3),
	cout => \inst1|bit_cnt|auto_generated|counter_cella3~COUT\);

-- Location: LC_X5_Y2_N5
\inst1|bit_cnt|auto_generated|counter_cella4\ : maxv_lcell
-- Equation(s):
-- \inst1|bit_cnt|auto_generated|safe_q\(4) = DFFEAS(\inst1|bit_cnt|auto_generated|safe_q\(4) $ (((\inst1|_~10\ & (!\inst1|bit_cnt|auto_generated|counter_cella3~COUT\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst1|div_cnt|auto_generated|cout\, , , \inst1|startc~regout\, )
-- \inst1|bit_cnt|auto_generated|counter_cella4~COUT\ = CARRY((\inst1|bit_cnt|auto_generated|safe_q\(4) & ((!\inst1|bit_cnt|auto_generated|counter_cella3~COUT\))))
-- \inst1|bit_cnt|auto_generated|counter_cella4~COUTCOUT1_1\ = CARRY((\inst1|bit_cnt|auto_generated|safe_q\(4) & ((!\inst1|bit_cnt|auto_generated|counter_cella3~COUT\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a60a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(4),
	datab => \inst1|_~10\,
	aclr => GND,
	sclr => \inst1|startc~regout\,
	ena => \inst1|div_cnt|auto_generated|cout\,
	cin => \inst1|bit_cnt|auto_generated|counter_cella3~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|bit_cnt|auto_generated|safe_q\(4),
	cout0 => \inst1|bit_cnt|auto_generated|counter_cella4~COUT\,
	cout1 => \inst1|bit_cnt|auto_generated|counter_cella4~COUTCOUT1_1\);

-- Location: LC_X6_Y4_N8
\inst1|_~16\ : maxv_lcell
-- Equation(s):
-- \inst1|_~16_combout\ = (!\inst1|bit_cnt|auto_generated|safe_q\(4) & (((!\inst1|bit_cnt|auto_generated|safe_q\(1) & \inst1|send_q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(4),
	datac => \inst1|bit_cnt|auto_generated|safe_q\(1),
	datad => \inst1|send_q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~16_combout\);

-- Location: LC_X5_Y2_N6
\inst1|bit_cnt|auto_generated|counter_cella5\ : maxv_lcell
-- Equation(s):
-- \inst1|bit_cnt|auto_generated|safe_q\(5) = DFFEAS(\inst1|bit_cnt|auto_generated|safe_q\(5) $ (((\inst1|_~10\ & ((!\inst1|bit_cnt|auto_generated|counter_cella3~COUT\ & \inst1|bit_cnt|auto_generated|counter_cella4~COUT\) # 
-- (\inst1|bit_cnt|auto_generated|counter_cella3~COUT\ & \inst1|bit_cnt|auto_generated|counter_cella4~COUTCOUT1_1\))))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, , , 
-- \inst1|startc~regout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6a6a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(5),
	datab => \inst1|_~10\,
	aclr => GND,
	sclr => \inst1|startc~regout\,
	ena => \inst1|div_cnt|auto_generated|cout\,
	cin => \inst1|bit_cnt|auto_generated|counter_cella3~COUT\,
	cin0 => \inst1|bit_cnt|auto_generated|counter_cella4~COUT\,
	cin1 => \inst1|bit_cnt|auto_generated|counter_cella4~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|bit_cnt|auto_generated|safe_q\(5));

-- Location: LC_X5_Y2_N0
\inst1|_~6\ : maxv_lcell
-- Equation(s):
-- \inst1|_~6_combout\ = (!\inst1|bit_cnt|auto_generated|safe_q\(2) & (\inst1|bit_cnt|auto_generated|safe_q\(3) & (!\inst1|bit_cnt|auto_generated|safe_q\(5) & !\inst1|bit_cnt|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(2),
	datab => \inst1|bit_cnt|auto_generated|safe_q\(3),
	datac => \inst1|bit_cnt|auto_generated|safe_q\(5),
	datad => \inst1|bit_cnt|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~6_combout\);

-- Location: LC_X4_Y1_N4
\inst12|bright_cnt|auto_generated|counter_cella0\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_cnt|auto_generated|safe_q\(0) = DFFEAS((!\inst12|bright_cnt|auto_generated|safe_q\(0)), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )
-- \inst12|bright_cnt|auto_generated|counter_cella0~COUT\ = CARRY((\inst12|bright_cnt|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|bright_cnt|auto_generated|safe_q\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|bright_cnt|auto_generated|safe_q\(0),
	cout => \inst12|bright_cnt|auto_generated|counter_cella0~COUT\);

-- Location: LC_X4_Y1_N5
\inst12|bright_cnt|auto_generated|counter_cella1\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_cnt|auto_generated|safe_q\(1) = DFFEAS(\inst12|bright_cnt|auto_generated|safe_q\(1) $ ((((\inst12|bright_cnt|auto_generated|counter_cella0~COUT\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , 
-- , , )
-- \inst12|bright_cnt|auto_generated|counter_cella1~COUT\ = CARRY(((!\inst12|bright_cnt|auto_generated|counter_cella0~COUT\)) # (!\inst12|bright_cnt|auto_generated|safe_q\(1)))
-- \inst12|bright_cnt|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\inst12|bright_cnt|auto_generated|counter_cella0~COUT\)) # (!\inst12|bright_cnt|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|bright_cnt|auto_generated|safe_q\(1),
	aclr => GND,
	cin => \inst12|bright_cnt|auto_generated|counter_cella0~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|bright_cnt|auto_generated|safe_q\(1),
	cout0 => \inst12|bright_cnt|auto_generated|counter_cella1~COUT\,
	cout1 => \inst12|bright_cnt|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X4_Y1_N6
\inst12|bright_cnt|auto_generated|counter_cella2\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_cnt|auto_generated|safe_q\(2) = DFFEAS(\inst12|bright_cnt|auto_generated|safe_q\(2) $ ((((!(!\inst12|bright_cnt|auto_generated|counter_cella0~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella1~COUT\) # 
-- (\inst12|bright_cnt|auto_generated|counter_cella0~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella1~COUTCOUT1_1\))))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )
-- \inst12|bright_cnt|auto_generated|counter_cella2~COUT\ = CARRY((\inst12|bright_cnt|auto_generated|safe_q\(2) & ((!\inst12|bright_cnt|auto_generated|counter_cella1~COUT\))))
-- \inst12|bright_cnt|auto_generated|counter_cella2~COUTCOUT1_1\ = CARRY((\inst12|bright_cnt|auto_generated|safe_q\(2) & ((!\inst12|bright_cnt|auto_generated|counter_cella1~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|bright_cnt|auto_generated|safe_q\(2),
	aclr => GND,
	cin => \inst12|bright_cnt|auto_generated|counter_cella0~COUT\,
	cin0 => \inst12|bright_cnt|auto_generated|counter_cella1~COUT\,
	cin1 => \inst12|bright_cnt|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|bright_cnt|auto_generated|safe_q\(2),
	cout0 => \inst12|bright_cnt|auto_generated|counter_cella2~COUT\,
	cout1 => \inst12|bright_cnt|auto_generated|counter_cella2~COUTCOUT1_1\);

-- Location: LC_X4_Y1_N7
\inst12|bright_cnt|auto_generated|counter_cella3\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_cnt|auto_generated|safe_q\(3) = DFFEAS((\inst12|bright_cnt|auto_generated|safe_q\(3) $ (((!\inst12|bright_cnt|auto_generated|counter_cella0~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella2~COUT\) # 
-- (\inst12|bright_cnt|auto_generated|counter_cella0~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella2~COUTCOUT1_1\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )
-- \inst12|bright_cnt|auto_generated|counter_cella3~COUT\ = CARRY(((!\inst12|bright_cnt|auto_generated|counter_cella2~COUT\) # (!\inst12|bright_cnt|auto_generated|safe_q\(3))))
-- \inst12|bright_cnt|auto_generated|counter_cella3~COUTCOUT1_1\ = CARRY(((!\inst12|bright_cnt|auto_generated|counter_cella2~COUTCOUT1_1\) # (!\inst12|bright_cnt|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst12|bright_cnt|auto_generated|safe_q\(3),
	aclr => GND,
	cin => \inst12|bright_cnt|auto_generated|counter_cella0~COUT\,
	cin0 => \inst12|bright_cnt|auto_generated|counter_cella2~COUT\,
	cin1 => \inst12|bright_cnt|auto_generated|counter_cella2~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|bright_cnt|auto_generated|safe_q\(3),
	cout0 => \inst12|bright_cnt|auto_generated|counter_cella3~COUT\,
	cout1 => \inst12|bright_cnt|auto_generated|counter_cella3~COUTCOUT1_1\);

-- Location: LC_X4_Y1_N8
\inst12|bright_cnt|auto_generated|counter_cella4\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_cnt|auto_generated|safe_q\(4) = DFFEAS(\inst12|bright_cnt|auto_generated|safe_q\(4) $ ((((!(!\inst12|bright_cnt|auto_generated|counter_cella0~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella3~COUT\) # 
-- (\inst12|bright_cnt|auto_generated|counter_cella0~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella3~COUTCOUT1_1\))))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )
-- \inst12|bright_cnt|auto_generated|counter_cella4~COUT\ = CARRY((\inst12|bright_cnt|auto_generated|safe_q\(4) & ((!\inst12|bright_cnt|auto_generated|counter_cella3~COUT\))))
-- \inst12|bright_cnt|auto_generated|counter_cella4~COUTCOUT1_1\ = CARRY((\inst12|bright_cnt|auto_generated|safe_q\(4) & ((!\inst12|bright_cnt|auto_generated|counter_cella3~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|bright_cnt|auto_generated|safe_q\(4),
	aclr => GND,
	cin => \inst12|bright_cnt|auto_generated|counter_cella0~COUT\,
	cin0 => \inst12|bright_cnt|auto_generated|counter_cella3~COUT\,
	cin1 => \inst12|bright_cnt|auto_generated|counter_cella3~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|bright_cnt|auto_generated|safe_q\(4),
	cout0 => \inst12|bright_cnt|auto_generated|counter_cella4~COUT\,
	cout1 => \inst12|bright_cnt|auto_generated|counter_cella4~COUTCOUT1_1\);

-- Location: LC_X4_Y1_N9
\inst12|bright_cnt|auto_generated|counter_cella5\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_cnt|auto_generated|safe_q\(5) = DFFEAS((\inst12|bright_cnt|auto_generated|safe_q\(5) $ (((!\inst12|bright_cnt|auto_generated|counter_cella0~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella4~COUT\) # 
-- (\inst12|bright_cnt|auto_generated|counter_cella0~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella4~COUTCOUT1_1\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )
-- \inst12|bright_cnt|auto_generated|counter_cella5~COUT\ = CARRY(((!\inst12|bright_cnt|auto_generated|counter_cella4~COUTCOUT1_1\) # (!\inst12|bright_cnt|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst12|bright_cnt|auto_generated|safe_q\(5),
	aclr => GND,
	cin => \inst12|bright_cnt|auto_generated|counter_cella0~COUT\,
	cin0 => \inst12|bright_cnt|auto_generated|counter_cella4~COUT\,
	cin1 => \inst12|bright_cnt|auto_generated|counter_cella4~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|bright_cnt|auto_generated|safe_q\(5),
	cout => \inst12|bright_cnt|auto_generated|counter_cella5~COUT\);

-- Location: LC_X5_Y1_N0
\inst12|bright_cnt|auto_generated|counter_cella6\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_cnt|auto_generated|safe_q\(6) = DFFEAS((\inst12|bright_cnt|auto_generated|safe_q\(6) $ ((!\inst12|bright_cnt|auto_generated|counter_cella5~COUT\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , 
-- , )
-- \inst12|bright_cnt|auto_generated|counter_cella6~COUT\ = CARRY(((\inst12|bright_cnt|auto_generated|safe_q\(6) & !\inst12|bright_cnt|auto_generated|counter_cella5~COUT\)))
-- \inst12|bright_cnt|auto_generated|counter_cella6~COUTCOUT1_1\ = CARRY(((\inst12|bright_cnt|auto_generated|safe_q\(6) & !\inst12|bright_cnt|auto_generated|counter_cella5~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst12|bright_cnt|auto_generated|safe_q\(6),
	aclr => GND,
	cin => \inst12|bright_cnt|auto_generated|counter_cella5~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|bright_cnt|auto_generated|safe_q\(6),
	cout0 => \inst12|bright_cnt|auto_generated|counter_cella6~COUT\,
	cout1 => \inst12|bright_cnt|auto_generated|counter_cella6~COUTCOUT1_1\);

-- Location: LC_X5_Y1_N1
\inst12|bright_cnt|auto_generated|counter_cella7\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_cnt|auto_generated|safe_q\(7) = DFFEAS((\inst12|bright_cnt|auto_generated|safe_q\(7) $ (((!\inst12|bright_cnt|auto_generated|counter_cella5~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella6~COUT\) # 
-- (\inst12|bright_cnt|auto_generated|counter_cella5~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella6~COUTCOUT1_1\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )
-- \inst12|bright_cnt|auto_generated|counter_cella7~COUT\ = CARRY(((!\inst12|bright_cnt|auto_generated|counter_cella6~COUT\) # (!\inst12|bright_cnt|auto_generated|safe_q\(7))))
-- \inst12|bright_cnt|auto_generated|counter_cella7~COUTCOUT1_1\ = CARRY(((!\inst12|bright_cnt|auto_generated|counter_cella6~COUTCOUT1_1\) # (!\inst12|bright_cnt|auto_generated|safe_q\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst12|bright_cnt|auto_generated|safe_q\(7),
	aclr => GND,
	cin => \inst12|bright_cnt|auto_generated|counter_cella5~COUT\,
	cin0 => \inst12|bright_cnt|auto_generated|counter_cella6~COUT\,
	cin1 => \inst12|bright_cnt|auto_generated|counter_cella6~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|bright_cnt|auto_generated|safe_q\(7),
	cout0 => \inst12|bright_cnt|auto_generated|counter_cella7~COUT\,
	cout1 => \inst12|bright_cnt|auto_generated|counter_cella7~COUTCOUT1_1\);

-- Location: LC_X5_Y1_N2
\inst12|bright_cnt|auto_generated|counter_cella8\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_cnt|auto_generated|safe_q\(8) = DFFEAS((\inst12|bright_cnt|auto_generated|safe_q\(8) $ ((!(!\inst12|bright_cnt|auto_generated|counter_cella5~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella7~COUT\) # 
-- (\inst12|bright_cnt|auto_generated|counter_cella5~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella7~COUTCOUT1_1\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )
-- \inst12|bright_cnt|auto_generated|counter_cella8~COUT\ = CARRY(((\inst12|bright_cnt|auto_generated|safe_q\(8) & !\inst12|bright_cnt|auto_generated|counter_cella7~COUT\)))
-- \inst12|bright_cnt|auto_generated|counter_cella8~COUTCOUT1_1\ = CARRY(((\inst12|bright_cnt|auto_generated|safe_q\(8) & !\inst12|bright_cnt|auto_generated|counter_cella7~COUTCOUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst12|bright_cnt|auto_generated|safe_q\(8),
	aclr => GND,
	cin => \inst12|bright_cnt|auto_generated|counter_cella5~COUT\,
	cin0 => \inst12|bright_cnt|auto_generated|counter_cella7~COUT\,
	cin1 => \inst12|bright_cnt|auto_generated|counter_cella7~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|bright_cnt|auto_generated|safe_q\(8),
	cout0 => \inst12|bright_cnt|auto_generated|counter_cella8~COUT\,
	cout1 => \inst12|bright_cnt|auto_generated|counter_cella8~COUTCOUT1_1\);

-- Location: LC_X5_Y1_N3
\inst12|bright_cnt|auto_generated|counter_cella9\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_cnt|auto_generated|safe_q\(9) = DFFEAS(\inst12|bright_cnt|auto_generated|safe_q\(9) $ (((((!\inst12|bright_cnt|auto_generated|counter_cella5~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella8~COUT\) # 
-- (\inst12|bright_cnt|auto_generated|counter_cella5~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella8~COUTCOUT1_1\))))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )
-- \inst12|bright_cnt|auto_generated|counter_cella9~COUT\ = CARRY(((!\inst12|bright_cnt|auto_generated|counter_cella8~COUT\)) # (!\inst12|bright_cnt|auto_generated|safe_q\(9)))
-- \inst12|bright_cnt|auto_generated|counter_cella9~COUTCOUT1_1\ = CARRY(((!\inst12|bright_cnt|auto_generated|counter_cella8~COUTCOUT1_1\)) # (!\inst12|bright_cnt|auto_generated|safe_q\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|bright_cnt|auto_generated|safe_q\(9),
	aclr => GND,
	cin => \inst12|bright_cnt|auto_generated|counter_cella5~COUT\,
	cin0 => \inst12|bright_cnt|auto_generated|counter_cella8~COUT\,
	cin1 => \inst12|bright_cnt|auto_generated|counter_cella8~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|bright_cnt|auto_generated|safe_q\(9),
	cout0 => \inst12|bright_cnt|auto_generated|counter_cella9~COUT\,
	cout1 => \inst12|bright_cnt|auto_generated|counter_cella9~COUTCOUT1_1\);

-- Location: LC_X5_Y1_N4
\inst12|bright_cnt|auto_generated|counter_cella10\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_cnt|auto_generated|safe_q\(10) = DFFEAS(\inst12|bright_cnt|auto_generated|safe_q\(10) $ ((((!(!\inst12|bright_cnt|auto_generated|counter_cella5~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella9~COUT\) # 
-- (\inst12|bright_cnt|auto_generated|counter_cella5~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella9~COUTCOUT1_1\))))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )
-- \inst12|bright_cnt|auto_generated|counter_cella10~COUT\ = CARRY((\inst12|bright_cnt|auto_generated|safe_q\(10) & ((!\inst12|bright_cnt|auto_generated|counter_cella9~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|bright_cnt|auto_generated|safe_q\(10),
	aclr => GND,
	cin => \inst12|bright_cnt|auto_generated|counter_cella5~COUT\,
	cin0 => \inst12|bright_cnt|auto_generated|counter_cella9~COUT\,
	cin1 => \inst12|bright_cnt|auto_generated|counter_cella9~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|bright_cnt|auto_generated|safe_q\(10),
	cout => \inst12|bright_cnt|auto_generated|counter_cella10~COUT\);

-- Location: LC_X5_Y1_N5
\inst12|bright_cnt|auto_generated|counter_cella11\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_cnt|auto_generated|safe_q\(11) = DFFEAS(\inst12|bright_cnt|auto_generated|safe_q\(11) $ ((((\inst12|bright_cnt|auto_generated|counter_cella10~COUT\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , 
-- , , , )
-- \inst12|bright_cnt|auto_generated|counter_cella11~COUT\ = CARRY(((!\inst12|bright_cnt|auto_generated|counter_cella10~COUT\)) # (!\inst12|bright_cnt|auto_generated|safe_q\(11)))
-- \inst12|bright_cnt|auto_generated|counter_cella11~COUTCOUT1_1\ = CARRY(((!\inst12|bright_cnt|auto_generated|counter_cella10~COUT\)) # (!\inst12|bright_cnt|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|bright_cnt|auto_generated|safe_q\(11),
	aclr => GND,
	cin => \inst12|bright_cnt|auto_generated|counter_cella10~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|bright_cnt|auto_generated|safe_q\(11),
	cout0 => \inst12|bright_cnt|auto_generated|counter_cella11~COUT\,
	cout1 => \inst12|bright_cnt|auto_generated|counter_cella11~COUTCOUT1_1\);

-- Location: LC_X5_Y1_N6
\inst12|bright_cnt|auto_generated|cout_bit\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_cnt|auto_generated|cout\ = (((!(!\inst12|bright_cnt|auto_generated|counter_cella10~COUT\ & \inst12|bright_cnt|auto_generated|counter_cella11~COUT\) # (\inst12|bright_cnt|auto_generated|counter_cella10~COUT\ & 
-- \inst12|bright_cnt|auto_generated|counter_cella11~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \inst12|bright_cnt|auto_generated|counter_cella10~COUT\,
	cin0 => \inst12|bright_cnt|auto_generated|counter_cella11~COUT\,
	cin1 => \inst12|bright_cnt|auto_generated|counter_cella11~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|bright_cnt|auto_generated|cout\);

-- Location: LC_X3_Y2_N0
\inst12|time_100ms_cnt|auto_generated|counter_cella0\ : maxv_lcell
-- Equation(s):
-- \inst12|time_100ms_cnt|auto_generated|safe_q\(0) = DFFEAS(((!\inst12|time_100ms_cnt|auto_generated|safe_q\(0))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|bright_cnt|auto_generated|cout\, \~GND~combout\, 
-- , , \inst12|time_100ms_cnt|auto_generated|modulus_trigger\)
-- \inst12|time_100ms_cnt|auto_generated|counter_cella0~COUT\ = CARRY(((\inst12|time_100ms_cnt|auto_generated|safe_q\(0))))
-- \inst12|time_100ms_cnt|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY(((\inst12|time_100ms_cnt|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst12|time_100ms_cnt|auto_generated|safe_q\(0),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst12|time_100ms_cnt|auto_generated|modulus_trigger\,
	ena => \inst12|bright_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|time_100ms_cnt|auto_generated|safe_q\(0),
	cout0 => \inst12|time_100ms_cnt|auto_generated|counter_cella0~COUT\,
	cout1 => \inst12|time_100ms_cnt|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N1
\inst12|time_100ms_cnt|auto_generated|counter_cella1\ : maxv_lcell
-- Equation(s):
-- \inst12|time_100ms_cnt|auto_generated|safe_q\(1) = DFFEAS((\inst12|time_100ms_cnt|auto_generated|safe_q\(1) $ ((\inst12|time_100ms_cnt|auto_generated|counter_cella0~COUT\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), 
-- VCC, , \inst12|bright_cnt|auto_generated|cout\, \~GND~combout\, , , \inst12|time_100ms_cnt|auto_generated|modulus_trigger\)
-- \inst12|time_100ms_cnt|auto_generated|counter_cella1~COUT\ = CARRY(((!\inst12|time_100ms_cnt|auto_generated|counter_cella0~COUT\) # (!\inst12|time_100ms_cnt|auto_generated|safe_q\(1))))
-- \inst12|time_100ms_cnt|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\inst12|time_100ms_cnt|auto_generated|counter_cella0~COUTCOUT1_1\) # (!\inst12|time_100ms_cnt|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst12|time_100ms_cnt|auto_generated|safe_q\(1),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst12|time_100ms_cnt|auto_generated|modulus_trigger\,
	ena => \inst12|bright_cnt|auto_generated|cout\,
	cin0 => \inst12|time_100ms_cnt|auto_generated|counter_cella0~COUT\,
	cin1 => \inst12|time_100ms_cnt|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|time_100ms_cnt|auto_generated|safe_q\(1),
	cout0 => \inst12|time_100ms_cnt|auto_generated|counter_cella1~COUT\,
	cout1 => \inst12|time_100ms_cnt|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N2
\inst12|time_100ms_cnt|auto_generated|counter_cella2\ : maxv_lcell
-- Equation(s):
-- \inst12|time_100ms_cnt|auto_generated|safe_q\(2) = DFFEAS((\inst12|time_100ms_cnt|auto_generated|safe_q\(2) $ ((!\inst12|time_100ms_cnt|auto_generated|counter_cella1~COUT\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), 
-- VCC, , \inst12|bright_cnt|auto_generated|cout\, \~GND~combout\, , , \inst12|time_100ms_cnt|auto_generated|modulus_trigger\)
-- \inst12|time_100ms_cnt|auto_generated|counter_cella2~COUT\ = CARRY(((\inst12|time_100ms_cnt|auto_generated|safe_q\(2) & !\inst12|time_100ms_cnt|auto_generated|counter_cella1~COUT\)))
-- \inst12|time_100ms_cnt|auto_generated|counter_cella2~COUTCOUT1_1\ = CARRY(((\inst12|time_100ms_cnt|auto_generated|safe_q\(2) & !\inst12|time_100ms_cnt|auto_generated|counter_cella1~COUTCOUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst12|time_100ms_cnt|auto_generated|safe_q\(2),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst12|time_100ms_cnt|auto_generated|modulus_trigger\,
	ena => \inst12|bright_cnt|auto_generated|cout\,
	cin0 => \inst12|time_100ms_cnt|auto_generated|counter_cella1~COUT\,
	cin1 => \inst12|time_100ms_cnt|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|time_100ms_cnt|auto_generated|safe_q\(2),
	cout0 => \inst12|time_100ms_cnt|auto_generated|counter_cella2~COUT\,
	cout1 => \inst12|time_100ms_cnt|auto_generated|counter_cella2~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N3
\inst12|time_100ms_cnt|auto_generated|counter_cella3\ : maxv_lcell
-- Equation(s):
-- \inst12|time_100ms_cnt|auto_generated|safe_q\(3) = DFFEAS(\inst12|time_100ms_cnt|auto_generated|safe_q\(3) $ ((((\inst12|time_100ms_cnt|auto_generated|counter_cella2~COUT\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), 
-- VCC, , \inst12|bright_cnt|auto_generated|cout\, \~GND~combout\, , , \inst12|time_100ms_cnt|auto_generated|modulus_trigger\)
-- \inst12|time_100ms_cnt|auto_generated|counter_cella3~COUT\ = CARRY(((!\inst12|time_100ms_cnt|auto_generated|counter_cella2~COUT\)) # (!\inst12|time_100ms_cnt|auto_generated|safe_q\(3)))
-- \inst12|time_100ms_cnt|auto_generated|counter_cella3~COUTCOUT1_1\ = CARRY(((!\inst12|time_100ms_cnt|auto_generated|counter_cella2~COUTCOUT1_1\)) # (!\inst12|time_100ms_cnt|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|time_100ms_cnt|auto_generated|safe_q\(3),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst12|time_100ms_cnt|auto_generated|modulus_trigger\,
	ena => \inst12|bright_cnt|auto_generated|cout\,
	cin0 => \inst12|time_100ms_cnt|auto_generated|counter_cella2~COUT\,
	cin1 => \inst12|time_100ms_cnt|auto_generated|counter_cella2~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|time_100ms_cnt|auto_generated|safe_q\(3),
	cout0 => \inst12|time_100ms_cnt|auto_generated|counter_cella3~COUT\,
	cout1 => \inst12|time_100ms_cnt|auto_generated|counter_cella3~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N4
\inst12|time_100ms_cnt|auto_generated|counter_cella4\ : maxv_lcell
-- Equation(s):
-- \inst12|time_100ms_cnt|auto_generated|safe_q\(4) = DFFEAS((\inst12|time_100ms_cnt|auto_generated|safe_q\(4) $ ((!\inst12|time_100ms_cnt|auto_generated|counter_cella3~COUT\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), 
-- VCC, , \inst12|bright_cnt|auto_generated|cout\, \~GND~combout\, , , \inst12|time_100ms_cnt|auto_generated|modulus_trigger\)
-- \inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\ = CARRY(((\inst12|time_100ms_cnt|auto_generated|safe_q\(4) & !\inst12|time_100ms_cnt|auto_generated|counter_cella3~COUTCOUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst12|time_100ms_cnt|auto_generated|safe_q\(4),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst12|time_100ms_cnt|auto_generated|modulus_trigger\,
	ena => \inst12|bright_cnt|auto_generated|cout\,
	cin0 => \inst12|time_100ms_cnt|auto_generated|counter_cella3~COUT\,
	cin1 => \inst12|time_100ms_cnt|auto_generated|counter_cella3~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|time_100ms_cnt|auto_generated|safe_q\(4),
	cout => \inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\);

-- Location: LC_X3_Y2_N5
\inst12|time_100ms_cnt|auto_generated|counter_cella5\ : maxv_lcell
-- Equation(s):
-- \inst12|time_100ms_cnt|auto_generated|safe_q\(5) = DFFEAS(\inst12|time_100ms_cnt|auto_generated|safe_q\(5) $ ((((\inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), 
-- VCC, , \inst12|bright_cnt|auto_generated|cout\, \~GND~combout\, , , \inst12|time_100ms_cnt|auto_generated|modulus_trigger\)
-- \inst12|time_100ms_cnt|auto_generated|counter_cella5~COUT\ = CARRY(((!\inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\)) # (!\inst12|time_100ms_cnt|auto_generated|safe_q\(5)))
-- \inst12|time_100ms_cnt|auto_generated|counter_cella5~COUTCOUT1_1\ = CARRY(((!\inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\)) # (!\inst12|time_100ms_cnt|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|time_100ms_cnt|auto_generated|safe_q\(5),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst12|time_100ms_cnt|auto_generated|modulus_trigger\,
	ena => \inst12|bright_cnt|auto_generated|cout\,
	cin => \inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|time_100ms_cnt|auto_generated|safe_q\(5),
	cout0 => \inst12|time_100ms_cnt|auto_generated|counter_cella5~COUT\,
	cout1 => \inst12|time_100ms_cnt|auto_generated|counter_cella5~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N6
\inst12|time_100ms_cnt|auto_generated|counter_cella6\ : maxv_lcell
-- Equation(s):
-- \inst12|time_100ms_cnt|auto_generated|safe_q\(6) = DFFEAS(\inst12|time_100ms_cnt|auto_generated|safe_q\(6) $ ((((!(!\inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\ & \inst12|time_100ms_cnt|auto_generated|counter_cella5~COUT\) # 
-- (\inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\ & \inst12|time_100ms_cnt|auto_generated|counter_cella5~COUTCOUT1_1\))))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst12|bright_cnt|auto_generated|cout\, \~GND~combout\, , , \inst12|time_100ms_cnt|auto_generated|modulus_trigger\)
-- \inst12|time_100ms_cnt|auto_generated|counter_cella6~COUT\ = CARRY((\inst12|time_100ms_cnt|auto_generated|safe_q\(6) & ((!\inst12|time_100ms_cnt|auto_generated|counter_cella5~COUT\))))
-- \inst12|time_100ms_cnt|auto_generated|counter_cella6~COUTCOUT1_1\ = CARRY((\inst12|time_100ms_cnt|auto_generated|safe_q\(6) & ((!\inst12|time_100ms_cnt|auto_generated|counter_cella5~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|time_100ms_cnt|auto_generated|safe_q\(6),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst12|time_100ms_cnt|auto_generated|modulus_trigger\,
	ena => \inst12|bright_cnt|auto_generated|cout\,
	cin => \inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\,
	cin0 => \inst12|time_100ms_cnt|auto_generated|counter_cella5~COUT\,
	cin1 => \inst12|time_100ms_cnt|auto_generated|counter_cella5~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|time_100ms_cnt|auto_generated|safe_q\(6),
	cout0 => \inst12|time_100ms_cnt|auto_generated|counter_cella6~COUT\,
	cout1 => \inst12|time_100ms_cnt|auto_generated|counter_cella6~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N7
\inst12|time_100ms_cnt|auto_generated|counter_cella7\ : maxv_lcell
-- Equation(s):
-- \inst12|time_100ms_cnt|auto_generated|safe_q\(7) = DFFEAS((\inst12|time_100ms_cnt|auto_generated|safe_q\(7) $ (((!\inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\ & \inst12|time_100ms_cnt|auto_generated|counter_cella6~COUT\) # 
-- (\inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\ & \inst12|time_100ms_cnt|auto_generated|counter_cella6~COUTCOUT1_1\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst12|bright_cnt|auto_generated|cout\, \~GND~combout\, , , \inst12|time_100ms_cnt|auto_generated|modulus_trigger\)
-- \inst12|time_100ms_cnt|auto_generated|counter_cella7~COUT\ = CARRY(((!\inst12|time_100ms_cnt|auto_generated|counter_cella6~COUT\) # (!\inst12|time_100ms_cnt|auto_generated|safe_q\(7))))
-- \inst12|time_100ms_cnt|auto_generated|counter_cella7~COUTCOUT1_1\ = CARRY(((!\inst12|time_100ms_cnt|auto_generated|counter_cella6~COUTCOUT1_1\) # (!\inst12|time_100ms_cnt|auto_generated|safe_q\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst12|time_100ms_cnt|auto_generated|safe_q\(7),
	datac => \~GND~combout\,
	aclr => GND,
	sload => \inst12|time_100ms_cnt|auto_generated|modulus_trigger\,
	ena => \inst12|bright_cnt|auto_generated|cout\,
	cin => \inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\,
	cin0 => \inst12|time_100ms_cnt|auto_generated|counter_cella6~COUT\,
	cin1 => \inst12|time_100ms_cnt|auto_generated|counter_cella6~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|time_100ms_cnt|auto_generated|safe_q\(7),
	cout0 => \inst12|time_100ms_cnt|auto_generated|counter_cella7~COUT\,
	cout1 => \inst12|time_100ms_cnt|auto_generated|counter_cella7~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N9
\inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire[0]~1\ : maxv_lcell
-- Equation(s):
-- \inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = ((\inst12|time_100ms_cnt|auto_generated|safe_q\(7)) # ((!\inst12|time_100ms_cnt|auto_generated|safe_q\(4)) # (!\inst12|time_100ms_cnt|auto_generated|safe_q\(5)))) # 
-- (!\inst12|time_100ms_cnt|auto_generated|safe_q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|time_100ms_cnt|auto_generated|safe_q\(6),
	datab => \inst12|time_100ms_cnt|auto_generated|safe_q\(7),
	datac => \inst12|time_100ms_cnt|auto_generated|safe_q\(5),
	datad => \inst12|time_100ms_cnt|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LC_X6_Y1_N9
\inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire[0]~0\ : maxv_lcell
-- Equation(s):
-- \inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = ((\inst12|time_100ms_cnt|auto_generated|safe_q\(0)) # ((\inst12|time_100ms_cnt|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst12|time_100ms_cnt|auto_generated|safe_q\(0),
	datac => \inst12|time_100ms_cnt|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LC_X6_Y1_N6
\inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire[0]\ : maxv_lcell
-- Equation(s):
-- \inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire\(0) = (\inst12|time_100ms_cnt|auto_generated|safe_q\(2)) # ((\inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\) # 
-- ((\inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\) # (!\inst12|time_100ms_cnt|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|time_100ms_cnt|auto_generated|safe_q\(2),
	datab => \inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	datac => \inst12|time_100ms_cnt|auto_generated|safe_q\(3),
	datad => \inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire\(0));

-- Location: LC_X3_Y2_N8
\inst12|time_100ms_cnt|auto_generated|cout_bit\ : maxv_lcell
-- Equation(s):
-- \inst12|time_100ms_cnt|auto_generated|modulus_trigger\ = (((!(!\inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\ & \inst12|time_100ms_cnt|auto_generated|counter_cella7~COUT\) # (\inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\ & 
-- \inst12|time_100ms_cnt|auto_generated|counter_cella7~COUTCOUT1_1\)))) # (!\inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire\(0))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5f5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|time_100ms_cnt|auto_generated|cmpr1|aneb_result_wire\(0),
	cin => \inst12|time_100ms_cnt|auto_generated|counter_cella4~COUT\,
	cin0 => \inst12|time_100ms_cnt|auto_generated|counter_cella7~COUT\,
	cin1 => \inst12|time_100ms_cnt|auto_generated|counter_cella7~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|time_100ms_cnt|auto_generated|modulus_trigger\);

-- Location: LC_X3_Y3_N9
\inst12|time_100ms\ : maxv_lcell
-- Equation(s):
-- \inst12|time_100ms~combout\ = ((\inst12|time_100ms_cnt|auto_generated|modulus_trigger\ & ((\inst12|bright_cnt|auto_generated|cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst12|time_100ms_cnt|auto_generated|modulus_trigger\,
	datad => \inst12|bright_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|time_100ms~combout\);

-- Location: LC_X5_Y4_N1
\inst12|blink_time|auto_generated|counter_cella0\ : maxv_lcell
-- Equation(s):
-- \inst12|blink_time|auto_generated|safe_q\(0) = DFFEAS(((!\inst12|blink_time|auto_generated|safe_q\(0))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , \inst12|_~17_combout\, )
-- \inst12|blink_time|auto_generated|counter_cella0~COUT\ = CARRY(((\inst12|blink_time|auto_generated|safe_q\(0))))
-- \inst12|blink_time|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY(((\inst12|blink_time|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst12|blink_time|auto_generated|safe_q\(0),
	aclr => GND,
	sclr => \inst12|_~17_combout\,
	ena => \inst12|time_100ms~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|blink_time|auto_generated|safe_q\(0),
	cout0 => \inst12|blink_time|auto_generated|counter_cella0~COUT\,
	cout1 => \inst12|blink_time|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X5_Y4_N2
\inst12|blink_time|auto_generated|counter_cella1\ : maxv_lcell
-- Equation(s):
-- \inst12|blink_time|auto_generated|safe_q\(1) = DFFEAS(\inst12|blink_time|auto_generated|safe_q\(1) $ ((((\inst12|blink_time|auto_generated|counter_cella0~COUT\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst12|time_100ms~combout\, , , \inst12|_~17_combout\, )
-- \inst12|blink_time|auto_generated|counter_cella1~COUT\ = CARRY(((!\inst12|blink_time|auto_generated|counter_cella0~COUT\)) # (!\inst12|blink_time|auto_generated|safe_q\(1)))
-- \inst12|blink_time|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\inst12|blink_time|auto_generated|counter_cella0~COUTCOUT1_1\)) # (!\inst12|blink_time|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|blink_time|auto_generated|safe_q\(1),
	aclr => GND,
	sclr => \inst12|_~17_combout\,
	ena => \inst12|time_100ms~combout\,
	cin0 => \inst12|blink_time|auto_generated|counter_cella0~COUT\,
	cin1 => \inst12|blink_time|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|blink_time|auto_generated|safe_q\(1),
	cout0 => \inst12|blink_time|auto_generated|counter_cella1~COUT\,
	cout1 => \inst12|blink_time|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X5_Y4_N3
\inst12|blink_time|auto_generated|counter_cella2\ : maxv_lcell
-- Equation(s):
-- \inst12|blink_time|auto_generated|safe_q\(2) = DFFEAS(\inst12|blink_time|auto_generated|safe_q\(2) $ ((((!\inst12|blink_time|auto_generated|counter_cella1~COUT\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst12|time_100ms~combout\, , , \inst12|_~17_combout\, )
-- \inst12|blink_time|auto_generated|counter_cella2~COUT\ = CARRY((\inst12|blink_time|auto_generated|safe_q\(2) & ((!\inst12|blink_time|auto_generated|counter_cella1~COUT\))))
-- \inst12|blink_time|auto_generated|counter_cella2~COUTCOUT1_1\ = CARRY((\inst12|blink_time|auto_generated|safe_q\(2) & ((!\inst12|blink_time|auto_generated|counter_cella1~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|blink_time|auto_generated|safe_q\(2),
	aclr => GND,
	sclr => \inst12|_~17_combout\,
	ena => \inst12|time_100ms~combout\,
	cin0 => \inst12|blink_time|auto_generated|counter_cella1~COUT\,
	cin1 => \inst12|blink_time|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|blink_time|auto_generated|safe_q\(2),
	cout0 => \inst12|blink_time|auto_generated|counter_cella2~COUT\,
	cout1 => \inst12|blink_time|auto_generated|counter_cella2~COUTCOUT1_1\);

-- Location: LC_X5_Y4_N4
\inst12|blink_time|auto_generated|counter_cella3\ : maxv_lcell
-- Equation(s):
-- \inst12|blink_time|auto_generated|safe_q\(3) = DFFEAS(\inst12|blink_time|auto_generated|safe_q\(3) $ ((((\inst12|blink_time|auto_generated|counter_cella2~COUT\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst12|time_100ms~combout\, , , \inst12|_~17_combout\, )
-- \inst12|blink_time|auto_generated|counter_cella3~COUT\ = CARRY(((!\inst12|blink_time|auto_generated|counter_cella2~COUTCOUT1_1\)) # (!\inst12|blink_time|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|blink_time|auto_generated|safe_q\(3),
	aclr => GND,
	sclr => \inst12|_~17_combout\,
	ena => \inst12|time_100ms~combout\,
	cin0 => \inst12|blink_time|auto_generated|counter_cella2~COUT\,
	cin1 => \inst12|blink_time|auto_generated|counter_cella2~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|blink_time|auto_generated|safe_q\(3),
	cout => \inst12|blink_time|auto_generated|counter_cella3~COUT\);

-- Location: LC_X2_Y2_N2
\inst14|_~16\ : maxv_lcell
-- Equation(s):
-- \inst14|_~16_combout\ = (\inst14|data_shift~regout\ & (\inst14|UFM_addr_cntr|auto_generated|safe_q\(2) & (!\inst14|UFM_addr_cntr|auto_generated|safe_q\(0) & !\inst14|UFM_addr_cntr|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|data_shift~regout\,
	datab => \inst14|UFM_addr_cntr|auto_generated|safe_q\(2),
	datac => \inst14|UFM_addr_cntr|auto_generated|safe_q\(0),
	datad => \inst14|UFM_addr_cntr|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~16_combout\);

-- Location: LC_X3_Y3_N6
\inst14|_~17\ : maxv_lcell
-- Equation(s):
-- \inst14|_~17_combout\ = ((\inst14|UFM_addr_cntr|auto_generated|safe_q\(1) & (\inst14|_~16_combout\ & \inst14|UFM_addr_cntr|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|UFM_addr_cntr|auto_generated|safe_q\(1),
	datac => \inst14|_~16_combout\,
	datad => \inst14|UFM_addr_cntr|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~17_combout\);

-- Location: LC_X2_Y3_N4
\inst14|MODE_ff|dffs[0]\ : maxv_lcell
-- Equation(s):
-- \inst12|_~7\ = (\inst14|MODE_ff|dffs\(1) & ((J1_dffs[0] $ (\inst12|blink_time|auto_generated|safe_q\(2))))) # (!\inst14|MODE_ff|dffs\(1) & ((\inst14|MODE_ff|dffs\(2) & ((\inst12|blink_time|auto_generated|safe_q\(2)))) # (!\inst14|MODE_ff|dffs\(2) & 
-- (J1_dffs[0] & !\inst12|blink_time|auto_generated|safe_q\(2)))))
-- \inst14|MODE_ff|dffs\(0) = DFFEAS(\inst12|_~7\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|_~17_combout\, \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_drdout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4eb0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|MODE_ff|dffs\(1),
	datab => \inst14|MODE_ff|dffs\(2),
	datac => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_drdout\,
	datad => \inst12|blink_time|auto_generated|safe_q\(2),
	aclr => GND,
	sload => VCC,
	ena => \inst14|_~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~7\,
	regout => \inst14|MODE_ff|dffs\(0));

-- Location: LC_X2_Y3_N5
\inst12|_~8\ : maxv_lcell
-- Equation(s):
-- \inst12|_~8_combout\ = (!\inst12|blink_time|auto_generated|safe_q\(3) & (!\inst12|blink_time|auto_generated|safe_q\(0) & (!\inst12|blink_time|auto_generated|safe_q\(1) & \inst12|_~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|blink_time|auto_generated|safe_q\(3),
	datab => \inst12|blink_time|auto_generated|safe_q\(0),
	datac => \inst12|blink_time|auto_generated|safe_q\(1),
	datad => \inst12|_~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~8_combout\);

-- Location: LC_X4_Y4_N2
\inst12|_~5\ : maxv_lcell
-- Equation(s):
-- \inst12|_~5_combout\ = \inst14|MODE_ff|dffs\(0) $ (\inst12|blink_time|auto_generated|safe_q\(2) $ (((\inst14|MODE_ff|dffs\(2) & \inst14|MODE_ff|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "963c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|MODE_ff|dffs\(2),
	datab => \inst14|MODE_ff|dffs\(0),
	datac => \inst12|blink_time|auto_generated|safe_q\(2),
	datad => \inst14|MODE_ff|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~5_combout\);

-- Location: LC_X5_Y4_N5
\inst12|blink_time|auto_generated|counter_cella4\ : maxv_lcell
-- Equation(s):
-- \inst12|blink_time|auto_generated|safe_q\(4) = DFFEAS(\inst12|blink_time|auto_generated|safe_q\(4) $ ((((!\inst12|blink_time|auto_generated|counter_cella3~COUT\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst12|time_100ms~combout\, , , \inst12|_~17_combout\, )
-- \inst12|blink_time|auto_generated|counter_cella4~COUT\ = CARRY((\inst12|blink_time|auto_generated|safe_q\(4) & ((!\inst12|blink_time|auto_generated|counter_cella3~COUT\))))
-- \inst12|blink_time|auto_generated|counter_cella4~COUTCOUT1_1\ = CARRY((\inst12|blink_time|auto_generated|safe_q\(4) & ((!\inst12|blink_time|auto_generated|counter_cella3~COUT\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|blink_time|auto_generated|safe_q\(4),
	aclr => GND,
	sclr => \inst12|_~17_combout\,
	ena => \inst12|time_100ms~combout\,
	cin => \inst12|blink_time|auto_generated|counter_cella3~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|blink_time|auto_generated|safe_q\(4),
	cout0 => \inst12|blink_time|auto_generated|counter_cella4~COUT\,
	cout1 => \inst12|blink_time|auto_generated|counter_cella4~COUTCOUT1_1\);

-- Location: LC_X7_Y1_N4
\inst14|UFM_shifter|dffs[0]\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_shifter|dffs\(0) = DFFEAS(GND, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|data_clk~regout\, \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_drdout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datac => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_drdout\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|data_clk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|UFM_shifter|dffs\(0));

-- Location: LC_X7_Y1_N7
\inst14|UFM_shifter|dffs[1]\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_shifter|dffs\(1) = DFFEAS(GND, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|data_clk~regout\, \inst14|UFM_shifter|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datac => \inst14|UFM_shifter|dffs\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst14|data_clk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|UFM_shifter|dffs\(1));

-- Location: LC_X2_Y3_N9
\inst14|MODE_ff|dffs[2]\ : maxv_lcell
-- Equation(s):
-- \inst12|LED_PAUSE[4]~1\ = \inst14|MODE_ff|dffs\(1) $ ((((J1_dffs[2]) # (\inst14|MODE_ff|dffs\(0)))))
-- \inst14|MODE_ff|dffs\(2) = DFFEAS(\inst12|LED_PAUSE[4]~1\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|_~17_combout\, \inst14|UFM_shifter|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "555a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|MODE_ff|dffs\(1),
	datac => \inst14|UFM_shifter|dffs\(1),
	datad => \inst14|MODE_ff|dffs\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst14|_~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|LED_PAUSE[4]~1\,
	regout => \inst14|MODE_ff|dffs\(2));

-- Location: LC_X5_Y4_N6
\inst12|blink_time|auto_generated|counter_cella5\ : maxv_lcell
-- Equation(s):
-- \inst12|blink_time|auto_generated|safe_q\(5) = DFFEAS((((!\inst12|blink_time|auto_generated|counter_cella3~COUT\ & \inst12|blink_time|auto_generated|counter_cella4~COUT\) # (\inst12|blink_time|auto_generated|counter_cella3~COUT\ & 
-- \inst12|blink_time|auto_generated|counter_cella4~COUTCOUT1_1\) $ (\inst12|blink_time|auto_generated|safe_q\(5)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , 
-- \inst12|_~17_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datad => \inst12|blink_time|auto_generated|safe_q\(5),
	aclr => GND,
	sclr => \inst12|_~17_combout\,
	ena => \inst12|time_100ms~combout\,
	cin => \inst12|blink_time|auto_generated|counter_cella3~COUT\,
	cin0 => \inst12|blink_time|auto_generated|counter_cella4~COUT\,
	cin1 => \inst12|blink_time|auto_generated|counter_cella4~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|blink_time|auto_generated|safe_q\(5));

-- Location: LC_X2_Y3_N3
\inst14|MODE_ff|dffs[1]\ : maxv_lcell
-- Equation(s):
-- \inst12|LED_PAUSE[5]~0\ = ((\inst14|MODE_ff|dffs\(0) & (J1_dffs[1] & !\inst14|MODE_ff|dffs\(2))) # (!\inst14|MODE_ff|dffs\(0) & ((\inst14|MODE_ff|dffs\(2)))))
-- \inst14|MODE_ff|dffs\(1) = DFFEAS(\inst12|LED_PAUSE[5]~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|_~17_combout\, \inst14|UFM_shifter|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst14|MODE_ff|dffs\(0),
	datac => \inst14|UFM_shifter|dffs\(0),
	datad => \inst14|MODE_ff|dffs\(2),
	aclr => GND,
	sload => VCC,
	ena => \inst14|_~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|LED_PAUSE[5]~0\,
	regout => \inst14|MODE_ff|dffs\(1));

-- Location: LC_X2_Y3_N6
\inst12|led_on_state~7\ : maxv_lcell
-- Equation(s):
-- \inst12|led_on_state~7_combout\ = (\inst12|blink_time|auto_generated|safe_q\(4) & (\inst12|LED_PAUSE[4]~1\ & (\inst12|blink_time|auto_generated|safe_q\(5) $ (!\inst12|LED_PAUSE[5]~0\)))) # (!\inst12|blink_time|auto_generated|safe_q\(4) & 
-- (!\inst12|LED_PAUSE[4]~1\ & (\inst12|blink_time|auto_generated|safe_q\(5) $ (!\inst12|LED_PAUSE[5]~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|blink_time|auto_generated|safe_q\(4),
	datab => \inst12|LED_PAUSE[4]~1\,
	datac => \inst12|blink_time|auto_generated|safe_q\(5),
	datad => \inst12|LED_PAUSE[5]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|led_on_state~7_combout\);

-- Location: LC_X2_Y3_N8
\inst12|led_on_state~8\ : maxv_lcell
-- Equation(s):
-- \inst12|led_on_state~8_combout\ = (\inst12|blink_time|auto_generated|safe_q\(3) & (\inst12|LED_PAUSE[4]~1\ & (\inst12|LED_PAUSE[5]~0\ $ (!\inst12|blink_time|auto_generated|safe_q\(1))))) # (!\inst12|blink_time|auto_generated|safe_q\(3) & 
-- (!\inst12|LED_PAUSE[4]~1\ & (\inst12|LED_PAUSE[5]~0\ $ (!\inst12|blink_time|auto_generated|safe_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|blink_time|auto_generated|safe_q\(3),
	datab => \inst12|LED_PAUSE[5]~0\,
	datac => \inst12|blink_time|auto_generated|safe_q\(1),
	datad => \inst12|LED_PAUSE[4]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|led_on_state~8_combout\);

-- Location: LC_X4_Y4_N9
\inst12|_~4\ : maxv_lcell
-- Equation(s):
-- \inst12|_~4_combout\ = \inst12|blink_time|auto_generated|safe_q\(0) $ (((\inst14|MODE_ff|dffs\(2) & ((!\inst14|MODE_ff|dffs\(0)) # (!\inst14|MODE_ff|dffs\(1)))) # (!\inst14|MODE_ff|dffs\(2) & ((\inst14|MODE_ff|dffs\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "857a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|MODE_ff|dffs\(2),
	datab => \inst14|MODE_ff|dffs\(1),
	datac => \inst14|MODE_ff|dffs\(0),
	datad => \inst12|blink_time|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~4_combout\);

-- Location: LC_X3_Y3_N3
\inst12|led_on_state~9\ : maxv_lcell
-- Equation(s):
-- \inst12|led_on_state~9_combout\ = (!\inst12|_~5_combout\ & (\inst12|led_on_state~7_combout\ & (\inst12|led_on_state~8_combout\ & !\inst12|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~5_combout\,
	datab => \inst12|led_on_state~7_combout\,
	datac => \inst12|led_on_state~8_combout\,
	datad => \inst12|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|led_on_state~9_combout\);

-- Location: LC_X4_Y4_N4
\inst12|_~18\ : maxv_lcell
-- Equation(s):
-- \inst12|_~18_combout\ = (!\inst14|MODE_ff|dffs\(2) & (!\inst14|MODE_ff|dffs\(1) & (!\inst14|MODE_ff|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|MODE_ff|dffs\(2),
	datab => \inst14|MODE_ff|dffs\(1),
	datac => \inst14|MODE_ff|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~18_combout\);

-- Location: LC_X2_Y4_N6
\inst12|blink_count|auto_generated|counter_cella0\ : maxv_lcell
-- Equation(s):
-- \inst12|blink_count|auto_generated|safe_q\(0) = DFFEAS(\inst12|blink_count|auto_generated|safe_q\(0) $ ((\inst12|_~14_combout\)), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , 
-- \inst12|led_on_state~11_combout\, )
-- \inst12|blink_count|auto_generated|counter_cella0~COUT\ = CARRY((\inst12|blink_count|auto_generated|safe_q\(0)))
-- \inst12|blink_count|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY((\inst12|blink_count|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|blink_count|auto_generated|safe_q\(0),
	datab => \inst12|_~14_combout\,
	aclr => GND,
	sclr => \inst12|led_on_state~11_combout\,
	ena => \inst12|time_100ms~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|blink_count|auto_generated|safe_q\(0),
	cout0 => \inst12|blink_count|auto_generated|counter_cella0~COUT\,
	cout1 => \inst12|blink_count|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X2_Y4_N7
\inst12|blink_count|auto_generated|counter_cella1\ : maxv_lcell
-- Equation(s):
-- \inst12|blink_count|auto_generated|safe_q\(1) = DFFEAS(\inst12|blink_count|auto_generated|safe_q\(1) $ (((\inst12|_~14_combout\ & (\inst12|blink_count|auto_generated|counter_cella0~COUT\)))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , \inst12|led_on_state~11_combout\, )
-- \inst12|blink_count|auto_generated|counter_cella1~COUT\ = CARRY(((!\inst12|blink_count|auto_generated|counter_cella0~COUT\)) # (!\inst12|blink_count|auto_generated|safe_q\(1)))
-- \inst12|blink_count|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\inst12|blink_count|auto_generated|counter_cella0~COUTCOUT1_1\)) # (!\inst12|blink_count|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|blink_count|auto_generated|safe_q\(1),
	datab => \inst12|_~14_combout\,
	aclr => GND,
	sclr => \inst12|led_on_state~11_combout\,
	ena => \inst12|time_100ms~combout\,
	cin0 => \inst12|blink_count|auto_generated|counter_cella0~COUT\,
	cin1 => \inst12|blink_count|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|blink_count|auto_generated|safe_q\(1),
	cout0 => \inst12|blink_count|auto_generated|counter_cella1~COUT\,
	cout1 => \inst12|blink_count|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X2_Y4_N8
\inst12|blink_count|auto_generated|counter_cella2\ : maxv_lcell
-- Equation(s):
-- \inst12|blink_count|auto_generated|safe_q\(2) = DFFEAS(\inst12|blink_count|auto_generated|safe_q\(2) $ ((((!\inst12|blink_count|auto_generated|counter_cella1~COUT\ & \inst12|_~14_combout\)))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , \inst12|led_on_state~11_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|blink_count|auto_generated|safe_q\(2),
	datad => \inst12|_~14_combout\,
	aclr => GND,
	sclr => \inst12|led_on_state~11_combout\,
	ena => \inst12|time_100ms~combout\,
	cin0 => \inst12|blink_count|auto_generated|counter_cella1~COUT\,
	cin1 => \inst12|blink_count|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|blink_count|auto_generated|safe_q\(2));

-- Location: LC_X2_Y4_N3
\inst12|_~10\ : maxv_lcell
-- Equation(s):
-- \inst12|_~10_combout\ = (\inst14|MODE_ff|dffs\(2) & ((\inst12|blink_count|auto_generated|safe_q\(1) & (!\inst12|blink_count|auto_generated|safe_q\(0) & !\inst12|blink_count|auto_generated|safe_q\(2))) # (!\inst12|blink_count|auto_generated|safe_q\(1) & 
-- (\inst12|blink_count|auto_generated|safe_q\(0) & \inst12|blink_count|auto_generated|safe_q\(2))))) # (!\inst14|MODE_ff|dffs\(2) & (\inst12|blink_count|auto_generated|safe_q\(0) & (\inst12|blink_count|auto_generated|safe_q\(1) $ 
-- (!\inst12|blink_count|auto_generated|safe_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6018",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|MODE_ff|dffs\(2),
	datab => \inst12|blink_count|auto_generated|safe_q\(1),
	datac => \inst12|blink_count|auto_generated|safe_q\(0),
	datad => \inst12|blink_count|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~10_combout\);

-- Location: LC_X2_Y4_N9
\inst12|_~9\ : maxv_lcell
-- Equation(s):
-- \inst12|_~9_combout\ = (\inst12|blink_count|auto_generated|safe_q\(0) & (((!\inst12|blink_count|auto_generated|safe_q\(2)) # (!\inst12|blink_count|auto_generated|safe_q\(1))))) # (!\inst12|blink_count|auto_generated|safe_q\(0) & 
-- ((\inst12|blink_count|auto_generated|safe_q\(2)) # (\inst14|MODE_ff|dffs\(2) $ (\inst12|blink_count|auto_generated|safe_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ff6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|MODE_ff|dffs\(2),
	datab => \inst12|blink_count|auto_generated|safe_q\(1),
	datac => \inst12|blink_count|auto_generated|safe_q\(0),
	datad => \inst12|blink_count|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~9_combout\);

-- Location: LC_X2_Y4_N1
\inst12|_~11\ : maxv_lcell
-- Equation(s):
-- \inst12|_~11_combout\ = (\inst12|_~10_combout\ & (!\inst14|MODE_ff|dffs\(0) & (\inst14|MODE_ff|dffs\(1) $ (!\inst12|_~9_combout\)))) # (!\inst12|_~10_combout\ & (\inst14|MODE_ff|dffs\(0) & ((!\inst12|_~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2046",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~10_combout\,
	datab => \inst14|MODE_ff|dffs\(0),
	datac => \inst14|MODE_ff|dffs\(1),
	datad => \inst12|_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~11_combout\);

-- Location: LC_X2_Y4_N5
\inst12|_~12\ : maxv_lcell
-- Equation(s):
-- \inst12|_~12_combout\ = (\inst12|ledoff~regout\ & (\inst12|_~8_combout\ & ((\inst12|_~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|ledoff~regout\,
	datab => \inst12|_~8_combout\,
	datad => \inst12|_~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~12_combout\);

-- Location: LC_X4_Y4_N7
\inst12|_~6\ : maxv_lcell
-- Equation(s):
-- \inst12|_~6_combout\ = (\inst14|MODE_ff|dffs\(2) & (!\inst14|MODE_ff|dffs\(1) & (\inst14|MODE_ff|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|MODE_ff|dffs\(2),
	datab => \inst14|MODE_ff|dffs\(1),
	datac => \inst14|MODE_ff|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~6_combout\);

-- Location: LC_X4_Y4_N5
\inst12|_~13\ : maxv_lcell
-- Equation(s):
-- \inst12|_~13_combout\ = (\inst14|MODE_ff|dffs\(2) & (\inst14|MODE_ff|dffs\(1) & (!\inst14|MODE_ff|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|MODE_ff|dffs\(2),
	datab => \inst14|MODE_ff|dffs\(1),
	datac => \inst14|MODE_ff|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~13_combout\);

-- Location: LC_X2_Y4_N4
\inst12|idle~2\ : maxv_lcell
-- Equation(s):
-- \inst12|idle~2_combout\ = (((\inst12|blink_time|auto_generated|safe_q\(3) & \inst12|blink_time|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst12|blink_time|auto_generated|safe_q\(3),
	datad => \inst12|blink_time|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|idle~2_combout\);

-- Location: LC_X5_Y4_N9
\inst12|led_on_state~5\ : maxv_lcell
-- Equation(s):
-- \inst12|led_on_state~5_combout\ = (\inst12|led_9~regout\ & ((\inst12|blink_time|auto_generated|safe_q\(1)) # ((\inst12|blink_time|auto_generated|safe_q\(2)) # (!\inst12|idle~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|blink_time|auto_generated|safe_q\(1),
	datab => \inst12|led_9~regout\,
	datac => \inst12|idle~2_combout\,
	datad => \inst12|blink_time|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|led_on_state~5_combout\);

-- Location: LC_X5_Y3_N1
\inst12|led_9\ : maxv_lcell
-- Equation(s):
-- \inst12|led_9~0\ = (\inst12|led_on_state~5_combout\) # ((\inst12|_~12_combout\ & (\inst12|_~6_combout\ & !\inst12|_~13_combout\)))
-- \inst12|led_9~regout\ = DFFEAS(\inst12|led_9~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|_~12_combout\,
	datab => \inst12|_~6_combout\,
	datac => \inst12|_~13_combout\,
	datad => \inst12|led_on_state~5_combout\,
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|led_9~0\,
	regout => \inst12|led_9~regout\);

-- Location: LC_X5_Y4_N0
\inst12|led_on_state~4\ : maxv_lcell
-- Equation(s):
-- \inst12|led_on_state~4_combout\ = (\inst12|led_plus~regout\ & (((!\inst12|blink_time|auto_generated|safe_q\(2)) # (!\inst12|idle~2_combout\)) # (!\inst12|blink_time|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|led_plus~regout\,
	datab => \inst12|blink_time|auto_generated|safe_q\(1),
	datac => \inst12|idle~2_combout\,
	datad => \inst12|blink_time|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|led_on_state~4_combout\);

-- Location: LC_X5_Y3_N0
\inst12|led_plus\ : maxv_lcell
-- Equation(s):
-- \inst12|led_plus~0\ = ((\inst12|led_on_state~4_combout\) # ((\inst12|_~12_combout\ & \inst12|_~13_combout\)))
-- \inst12|led_plus~regout\ = DFFEAS(\inst12|led_plus~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|_~12_combout\,
	datac => \inst12|_~13_combout\,
	datad => \inst12|led_on_state~4_combout\,
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|led_plus~0\,
	regout => \inst12|led_plus~regout\);

-- Location: LC_X5_Y4_N8
\inst12|idle~3\ : maxv_lcell
-- Equation(s):
-- \inst12|idle~3_combout\ = (\inst12|blink_time|auto_generated|safe_q\(1) & (((\inst12|led_plus~regout\ & \inst12|blink_time|auto_generated|safe_q\(2))))) # (!\inst12|blink_time|auto_generated|safe_q\(1) & (\inst12|led_9~regout\ & 
-- ((!\inst12|blink_time|auto_generated|safe_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|blink_time|auto_generated|safe_q\(1),
	datab => \inst12|led_9~regout\,
	datac => \inst12|led_plus~regout\,
	datad => \inst12|blink_time|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|idle~3_combout\);

-- Location: LC_X2_Y4_N0
\inst12|idle~6\ : maxv_lcell
-- Equation(s):
-- \inst12|idle~6_combout\ = ((\inst12|idle~3_combout\ & (\inst12|blink_time|auto_generated|safe_q\(3) & \inst12|blink_time|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst12|idle~3_combout\,
	datac => \inst12|blink_time|auto_generated|safe_q\(3),
	datad => \inst12|blink_time|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|idle~6_combout\);

-- Location: LC_X7_Y4_N4
\inst12|idle~4\ : maxv_lcell
-- Equation(s):
-- \inst12|idle~4_combout\ = (\inst12|idle~6_combout\) # ((!\inst12|_~18_combout\ & (!\inst12|led_on_state~9_combout\ & !\inst12|idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~18_combout\,
	datab => \inst12|led_on_state~9_combout\,
	datac => \inst12|idle~6_combout\,
	datad => \inst12|idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|idle~4_combout\);

-- Location: LC_X4_Y4_N8
\inst12|idle\ : maxv_lcell
-- Equation(s):
-- \inst12|idle~regout\ = DFFEAS((!\inst12|idle~4_combout\ & (((\inst12|_~13_combout\) # (\inst12|_~6_combout\)) # (!\inst12|_~12_combout\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5551",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|idle~4_combout\,
	datab => \inst12|_~12_combout\,
	datac => \inst12|_~13_combout\,
	datad => \inst12|_~6_combout\,
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|idle~regout\);

-- Location: LC_X4_Y4_N0
\inst12|led_on_state~6\ : maxv_lcell
-- Equation(s):
-- \inst12|led_on_state~6_combout\ = (!\inst12|idle~regout\ & ((\inst14|MODE_ff|dffs\(2)) # ((\inst14|MODE_ff|dffs\(1)) # (\inst14|MODE_ff|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|MODE_ff|dffs\(2),
	datab => \inst14|MODE_ff|dffs\(1),
	datac => \inst14|MODE_ff|dffs\(0),
	datad => \inst12|idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|led_on_state~6_combout\);

-- Location: LC_X7_Y4_N3
\inst12|led_on_state~11\ : maxv_lcell
-- Equation(s):
-- \inst12|led_on_state~11_combout\ = (((\inst12|led_on_state~9_combout\ & \inst12|led_on_state~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst12|led_on_state~9_combout\,
	datad => \inst12|led_on_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|led_on_state~11_combout\);

-- Location: LC_X7_Y4_N0
\inst12|_~17\ : maxv_lcell
-- Equation(s):
-- \inst12|_~17_combout\ = (\inst12|_~3_combout\) # ((\inst12|led_on_state~11_combout\) # ((\inst12|ledoff~regout\ & \inst12|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|ledoff~regout\,
	datab => \inst12|_~3_combout\,
	datac => \inst12|_~8_combout\,
	datad => \inst12|led_on_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~17_combout\);

-- Location: LC_X4_Y4_N1
\inst12|_~15\ : maxv_lcell
-- Equation(s):
-- \inst12|_~15_combout\ = (\inst14|MODE_ff|dffs\(2) & (\inst14|MODE_ff|dffs\(1) & (\inst14|MODE_ff|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|MODE_ff|dffs\(2),
	datab => \inst14|MODE_ff|dffs\(1),
	datac => \inst14|MODE_ff|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~15_combout\);

-- Location: LC_X7_Y4_N8
\inst12|ledoff~0\ : maxv_lcell
-- Equation(s):
-- \inst12|ledoff~0_combout\ = (\inst12|_~8_combout\ & (!\inst12|idle~regout\ & ((\inst12|_~18_combout\)))) # (!\inst12|_~8_combout\ & ((\inst12|ledoff~regout\) # ((!\inst12|idle~regout\ & \inst12|_~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7350",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~8_combout\,
	datab => \inst12|idle~regout\,
	datac => \inst12|ledoff~regout\,
	datad => \inst12|_~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|ledoff~0_combout\);

-- Location: LC_X7_Y4_N6
\inst12|ledoff\ : maxv_lcell
-- Equation(s):
-- \inst12|ledoff~regout\ = DFFEAS(((\inst12|ledoff~0_combout\) # ((\inst12|_~3_combout\ & !\inst12|_~15_combout\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst12|_~3_combout\,
	datac => \inst12|_~15_combout\,
	datad => \inst12|ledoff~0_combout\,
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|ledoff~regout\);

-- Location: LC_X2_Y4_N2
\inst12|_~14\ : maxv_lcell
-- Equation(s):
-- \inst12|_~14_combout\ = (\inst12|ledoff~regout\ & (\inst12|_~8_combout\ & ((!\inst12|_~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|ledoff~regout\,
	datab => \inst12|_~8_combout\,
	datad => \inst12|_~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~14_combout\);

-- Location: LC_X2_Y3_N2
\inst12|_~0\ : maxv_lcell
-- Equation(s):
-- \inst12|_~0_combout\ = (\inst14|MODE_ff|dffs\(1) & (((!\inst14|MODE_ff|dffs\(2) & \inst14|MODE_ff|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|MODE_ff|dffs\(1),
	datac => \inst14|MODE_ff|dffs\(2),
	datad => \inst14|MODE_ff|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~0_combout\);

-- Location: LC_X2_Y3_N0
\inst12|LED_ON[4]~0\ : maxv_lcell
-- Equation(s):
-- \inst12|LED_ON[4]~0_combout\ = (\inst14|MODE_ff|dffs\(1) & (((\inst14|MODE_ff|dffs\(2) & \inst14|MODE_ff|dffs\(0))))) # (!\inst14|MODE_ff|dffs\(1) & (((!\inst14|MODE_ff|dffs\(2) & !\inst14|MODE_ff|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|MODE_ff|dffs\(1),
	datac => \inst14|MODE_ff|dffs\(2),
	datad => \inst14|MODE_ff|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|LED_ON[4]~0_combout\);

-- Location: LC_X2_Y3_N7
\inst12|_~2\ : maxv_lcell
-- Equation(s):
-- \inst12|_~2_combout\ = (\inst12|LED_ON[4]~0_combout\ & (\inst12|blink_time|auto_generated|safe_q\(1) & ((\inst12|blink_time|auto_generated|safe_q\(2))))) # (!\inst12|LED_ON[4]~0_combout\ & (!\inst12|blink_time|auto_generated|safe_q\(2) & 
-- (\inst12|blink_time|auto_generated|safe_q\(1) $ (!\inst12|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|blink_time|auto_generated|safe_q\(1),
	datab => \inst12|_~0_combout\,
	datac => \inst12|LED_ON[4]~0_combout\,
	datad => \inst12|blink_time|auto_generated|safe_q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~2_combout\);

-- Location: LC_X2_Y3_N1
\inst12|_~1\ : maxv_lcell
-- Equation(s):
-- \inst12|_~1_combout\ = (\inst12|blink_time|auto_generated|safe_q\(3) & (!\inst12|_~0_combout\ & (\inst12|LED_ON[4]~0_combout\ $ (!\inst12|blink_time|auto_generated|safe_q\(4))))) # (!\inst12|blink_time|auto_generated|safe_q\(3) & (\inst12|_~0_combout\ & 
-- ((\inst12|blink_time|auto_generated|safe_q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6402",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|blink_time|auto_generated|safe_q\(3),
	datab => \inst12|_~0_combout\,
	datac => \inst12|LED_ON[4]~0_combout\,
	datad => \inst12|blink_time|auto_generated|safe_q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~1_combout\);

-- Location: LC_X7_Y4_N5
\inst12|ledon~0\ : maxv_lcell
-- Equation(s):
-- \inst12|ledon~0_combout\ = (\inst12|_~15_combout\) # (((!\inst12|blink_time|auto_generated|safe_q\(0)) # (!\inst12|_~1_combout\)) # (!\inst12|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|_~15_combout\,
	datab => \inst12|_~2_combout\,
	datac => \inst12|_~1_combout\,
	datad => \inst12|blink_time|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|ledon~0_combout\);

-- Location: LC_X5_Y4_N7
\inst12|ledon\ : maxv_lcell
-- Equation(s):
-- \inst12|ledon~1\ = (\inst12|_~14_combout\) # ((\inst12|led_on_state~11_combout\) # ((\inst12|ledon~0_combout\ & E1_ledon)))
-- \inst12|ledon~regout\ = DFFEAS(\inst12|ledon~1\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|_~14_combout\,
	datab => \inst12|ledon~0_combout\,
	datad => \inst12|led_on_state~11_combout\,
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|ledon~1\,
	regout => \inst12|ledon~regout\);

-- Location: LC_X7_Y4_N1
\inst12|_~3\ : maxv_lcell
-- Equation(s):
-- \inst12|_~3_combout\ = (\inst12|ledon~regout\ & (\inst12|_~2_combout\ & (\inst12|_~1_combout\ & \inst12|blink_time|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|ledon~regout\,
	datab => \inst12|_~2_combout\,
	datac => \inst12|_~1_combout\,
	datad => \inst12|blink_time|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~3_combout\);

-- Location: LC_X7_Y4_N2
\inst12|led_on_state~10\ : maxv_lcell
-- Equation(s):
-- \inst12|led_on_state~10_combout\ = (\inst12|led_on_state~4_combout\) # ((\inst12|led_on_state~5_combout\) # ((\inst12|led_on_state~6_combout\ & \inst12|led_on_state~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|led_on_state~4_combout\,
	datab => \inst12|led_on_state~6_combout\,
	datac => \inst12|led_on_state~9_combout\,
	datad => \inst12|led_on_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|led_on_state~10_combout\);

-- Location: LC_X7_Y4_N9
\inst1|led_on\ : maxv_lcell
-- Equation(s):
-- \inst1|led_on~regout\ = DFFEAS(((\inst12|led_on_state~10_combout\) # ((\inst12|_~3_combout\ & \inst12|_~15_combout\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst12|_~3_combout\,
	datac => \inst12|_~15_combout\,
	datad => \inst12|led_on_state~10_combout\,
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|led_on~regout\);

-- Location: LC_X7_Y4_N7
\inst1|_~2\ : maxv_lcell
-- Equation(s):
-- \inst1|_~2_combout\ = ((\inst12|led_on_state~10_combout\) # ((\inst12|idle~6_combout\) # (\inst12|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst12|led_on_state~10_combout\,
	datac => \inst12|idle~6_combout\,
	datad => \inst12|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~2_combout\);

-- Location: LC_X3_Y3_N0
\inst1|idle~0\ : maxv_lcell
-- Equation(s):
-- \inst1|idle~0_combout\ = (!\inst1|idle~regout\ & ((\inst1|led_on~regout\) # ((!\inst12|bright_cnt|auto_generated|cout\) # (!\inst12|time_100ms_cnt|auto_generated|modulus_trigger\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0b0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|led_on~regout\,
	datab => \inst12|time_100ms_cnt|auto_generated|modulus_trigger\,
	datac => \inst1|idle~regout\,
	datad => \inst12|bright_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|idle~0_combout\);

-- Location: LC_X5_Y2_N7
\inst1|_~8\ : maxv_lcell
-- Equation(s):
-- \inst1|_~8_combout\ = (!\inst1|bit_cnt|auto_generated|safe_q\(2) & (!\inst1|bit_cnt|auto_generated|safe_q\(3) & (!\inst1|bit_cnt|auto_generated|safe_q\(4) & \inst1|bit_cnt|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(2),
	datab => \inst1|bit_cnt|auto_generated|safe_q\(3),
	datac => \inst1|bit_cnt|auto_generated|safe_q\(4),
	datad => \inst1|bit_cnt|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~8_combout\);

-- Location: LC_X6_Y2_N2
\inst1|read_q\ : maxv_lcell
-- Equation(s):
-- \inst1|_~10\ = (\inst1|send_q~regout\) # (((C1_read_q)))
-- \inst1|read_q~regout\ = DFFEAS(\inst1|_~10\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, \inst1|read_c~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|send_q~regout\,
	datac => \inst1|read_c~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~10\,
	regout => \inst1|read_q~regout\);

-- Location: LC_X6_Y2_N9
\inst1|endq\ : maxv_lcell
-- Equation(s):
-- \inst1|endq~regout\ = DFFEAS((\inst1|bit_cnt|auto_generated|safe_q\(0) & (\inst1|_~8_combout\ & (\inst1|bit_cnt|auto_generated|safe_q\(5) & \inst1|read_q~regout\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst1|div_cnt|auto_generated|cout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(0),
	datab => \inst1|_~8_combout\,
	datac => \inst1|bit_cnt|auto_generated|safe_q\(5),
	datad => \inst1|read_q~regout\,
	aclr => GND,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|endq~regout\);

-- Location: LC_X5_Y2_N9
\inst1|_~20\ : maxv_lcell
-- Equation(s):
-- \inst1|_~20_combout\ = (\inst1|bit_cnt|auto_generated|safe_q\(2) & (\inst1|bit_cnt|auto_generated|safe_q\(0) & (!\inst1|bit_cnt|auto_generated|safe_q\(4) & \inst1|bit_cnt|auto_generated|safe_q\(1)))) # (!\inst1|bit_cnt|auto_generated|safe_q\(2) & 
-- (!\inst1|bit_cnt|auto_generated|safe_q\(0) & (\inst1|bit_cnt|auto_generated|safe_q\(4) & !\inst1|bit_cnt|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0810",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(2),
	datab => \inst1|bit_cnt|auto_generated|safe_q\(0),
	datac => \inst1|bit_cnt|auto_generated|safe_q\(4),
	datad => \inst1|bit_cnt|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~20_combout\);

-- Location: LC_X6_Y2_N4
\inst1|_~21\ : maxv_lcell
-- Equation(s):
-- \inst1|_~21_combout\ = (\inst1|_~20_combout\ & (!\inst1|bit_cnt|auto_generated|safe_q\(5) & (\inst1|send_q~regout\ & !\inst1|bit_cnt|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|_~20_combout\,
	datab => \inst1|bit_cnt|auto_generated|safe_q\(5),
	datac => \inst1|send_q~regout\,
	datad => \inst1|bit_cnt|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~21_combout\);

-- Location: LC_X3_Y4_N1
\inst1|byte_cnt|auto_generated|counter_cella0\ : maxv_lcell
-- Equation(s):
-- \inst1|byte_cnt|auto_generated|safe_q\(0) = DFFEAS(\inst1|_~21_combout\ $ ((\inst1|byte_cnt|auto_generated|safe_q\(0))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, , , 
-- !\inst1|idle~regout\, )
-- \inst1|byte_cnt|auto_generated|counter_cella0~COUT\ = CARRY(((\inst1|byte_cnt|auto_generated|safe_q\(0))))
-- \inst1|byte_cnt|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY(((\inst1|byte_cnt|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|_~21_combout\,
	datab => \inst1|byte_cnt|auto_generated|safe_q\(0),
	aclr => GND,
	sclr => \inst1|ALT_INV_idle~regout\,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|byte_cnt|auto_generated|safe_q\(0),
	cout0 => \inst1|byte_cnt|auto_generated|counter_cella0~COUT\,
	cout1 => \inst1|byte_cnt|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X3_Y4_N2
\inst1|byte_cnt|auto_generated|counter_cella1\ : maxv_lcell
-- Equation(s):
-- \inst1|byte_cnt|auto_generated|safe_q\(1) = DFFEAS(\inst1|byte_cnt|auto_generated|safe_q\(1) $ (((\inst1|_~21_combout\ & (\inst1|byte_cnt|auto_generated|counter_cella0~COUT\)))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, , , !\inst1|idle~regout\, )
-- \inst1|byte_cnt|auto_generated|counter_cella1~COUT\ = CARRY(((!\inst1|byte_cnt|auto_generated|counter_cella0~COUT\) # (!\inst1|byte_cnt|auto_generated|safe_q\(1))))
-- \inst1|byte_cnt|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\inst1|byte_cnt|auto_generated|counter_cella0~COUTCOUT1_1\) # (!\inst1|byte_cnt|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|_~21_combout\,
	datab => \inst1|byte_cnt|auto_generated|safe_q\(1),
	aclr => GND,
	sclr => \inst1|ALT_INV_idle~regout\,
	ena => \inst1|div_cnt|auto_generated|cout\,
	cin0 => \inst1|byte_cnt|auto_generated|counter_cella0~COUT\,
	cin1 => \inst1|byte_cnt|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|byte_cnt|auto_generated|safe_q\(1),
	cout0 => \inst1|byte_cnt|auto_generated|counter_cella1~COUT\,
	cout1 => \inst1|byte_cnt|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X3_Y4_N3
\inst1|byte_cnt|auto_generated|counter_cella2\ : maxv_lcell
-- Equation(s):
-- \inst1|byte_cnt|auto_generated|safe_q\(2) = DFFEAS(\inst1|byte_cnt|auto_generated|safe_q\(2) $ ((((!\inst1|byte_cnt|auto_generated|counter_cella1~COUT\ & \inst1|_~21_combout\)))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, , , !\inst1|idle~regout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|byte_cnt|auto_generated|safe_q\(2),
	datad => \inst1|_~21_combout\,
	aclr => GND,
	sclr => \inst1|ALT_INV_idle~regout\,
	ena => \inst1|div_cnt|auto_generated|cout\,
	cin0 => \inst1|byte_cnt|auto_generated|counter_cella1~COUT\,
	cin1 => \inst1|byte_cnt|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|byte_cnt|auto_generated|safe_q\(2));

-- Location: LC_X6_Y2_N3
\inst1|_~9\ : maxv_lcell
-- Equation(s):
-- \inst1|_~9_combout\ = ((\inst1|bit_cnt|auto_generated|safe_q\(5) & (\inst1|bit_cnt|auto_generated|safe_q\(0) & \inst1|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|bit_cnt|auto_generated|safe_q\(5),
	datac => \inst1|bit_cnt|auto_generated|safe_q\(0),
	datad => \inst1|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~9_combout\);

-- Location: LC_X6_Y2_N0
\inst1|_~3\ : maxv_lcell
-- Equation(s):
-- \inst1|_~3_combout\ = (((!\inst1|bit_cnt|auto_generated|safe_q\(5) & !\inst1|bit_cnt|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|bit_cnt|auto_generated|safe_q\(5),
	datad => \inst1|bit_cnt|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~3_combout\);

-- Location: LC_X6_Y2_N7
\inst1|wr_sr\ : maxv_lcell
-- Equation(s):
-- \inst1|wr_sr~regout\ = DFFEAS((\inst1|send_q~regout\ & (\inst1|_~4_combout\ & (\inst1|_~3_combout\ & \inst1|bit_cnt|auto_generated|safe_q\(0)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst1|div_cnt|auto_generated|cout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|send_q~regout\,
	datab => \inst1|_~4_combout\,
	datac => \inst1|_~3_combout\,
	datad => \inst1|bit_cnt|auto_generated|safe_q\(0),
	aclr => GND,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|wr_sr~regout\);

-- Location: LC_X6_Y4_N6
\inst1|wr_srd\ : maxv_lcell
-- Equation(s):
-- \inst1|bit_d~0\ = (!\inst1|startd~regout\ & (!C1_wr_srd & ((!\inst1|read_q~regout\) # (!\inst1|_~9_combout\))))
-- \inst1|wr_srd~regout\ = DFFEAS(\inst1|bit_d~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, \inst1|wr_sr~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0103",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|_~9_combout\,
	datab => \inst1|startd~regout\,
	datac => \inst1|wr_sr~regout\,
	datad => \inst1|read_q~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|bit_d~0\,
	regout => \inst1|wr_srd~regout\);

-- Location: LC_X6_Y4_N2
\inst1|wr_src\ : maxv_lcell
-- Equation(s):
-- \inst1|_~18\ = (\inst1|startc~regout\) # ((C1_wr_src) # ((\inst1|send_q~regout\ & \inst1|div_cnt|auto_generated|cout\)))
-- \inst1|wr_src~regout\ = DFFEAS(\inst1|_~18\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, \inst1|wr_srd~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|startc~regout\,
	datab => \inst1|send_q~regout\,
	datac => \inst1|wr_srd~regout\,
	datad => \inst1|div_cnt|auto_generated|cout\,
	aclr => GND,
	sload => VCC,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~18\,
	regout => \inst1|wr_src~regout\);

-- Location: LC_X6_Y4_N0
\inst1|startc\ : maxv_lcell
-- Equation(s):
-- \inst1|_~17\ = (C1_startc) # ((\inst1|wr_src~regout\) # ((\inst1|_~16_combout\ & \inst1|_~6_combout\)))
-- \inst1|startc~regout\ = DFFEAS(\inst1|_~17\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, \inst1|startd~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|_~16_combout\,
	datab => \inst1|_~6_combout\,
	datac => \inst1|startd~regout\,
	datad => \inst1|wr_src~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~17\,
	regout => \inst1|startc~regout\);

-- Location: LC_X3_Y4_N6
\inst1|main_out|dffs[0]\ : maxv_lcell
-- Equation(s):
-- \inst1|main_out|dffs\(0) = DFFEAS((\inst1|_~17\ & ((\inst1|byte_cnt|auto_generated|safe_q\(2)) # ((\inst1|byte_cnt|auto_generated|safe_q\(0)) # (!\inst1|byte_cnt|auto_generated|safe_q\(1))))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), GLOBAL(\inst1|idle~regout\), , \inst1|_~18\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|byte_cnt|auto_generated|safe_q\(2),
	datab => \inst1|byte_cnt|auto_generated|safe_q\(0),
	datac => \inst1|_~17\,
	datad => \inst1|byte_cnt|auto_generated|safe_q\(1),
	aclr => \inst1|ALT_INV_idle~regout\,
	ena => \inst1|_~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|main_out|dffs\(0));

-- Location: LC_X3_Y4_N7
\inst1|main_out|dffs[1]\ : maxv_lcell
-- Equation(s):
-- \inst1|main_out|dffs\(1) = DFFEAS((\inst1|_~17\ & ((\inst1|byte_cnt|auto_generated|safe_q\(2)) # ((\inst1|byte_cnt|auto_generated|safe_q\(0))))) # (!\inst1|_~17\ & (((\inst1|main_out|dffs\(0))))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), GLOBAL(\inst1|idle~regout\), , \inst1|_~18\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efe0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|byte_cnt|auto_generated|safe_q\(2),
	datab => \inst1|byte_cnt|auto_generated|safe_q\(0),
	datac => \inst1|_~17\,
	datad => \inst1|main_out|dffs\(0),
	aclr => \inst1|ALT_INV_idle~regout\,
	ena => \inst1|_~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|main_out|dffs\(1));

-- Location: LC_X3_Y4_N5
\inst1|main_out|dffs[2]\ : maxv_lcell
-- Equation(s):
-- \inst1|main_out|dffs\(2) = DFFEAS((\inst1|_~17\ & ((\inst1|byte_cnt|auto_generated|safe_q\(2)) # ((\inst1|byte_cnt|auto_generated|safe_q\(0))))) # (!\inst1|_~17\ & (((\inst1|main_out|dffs\(1))))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), GLOBAL(\inst1|idle~regout\), , \inst1|_~18\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcac",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|byte_cnt|auto_generated|safe_q\(2),
	datab => \inst1|main_out|dffs\(1),
	datac => \inst1|_~17\,
	datad => \inst1|byte_cnt|auto_generated|safe_q\(0),
	aclr => \inst1|ALT_INV_idle~regout\,
	ena => \inst1|_~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|main_out|dffs\(2));

-- Location: LC_X6_Y4_N9
\inst1|main_out|dffs[3]\ : maxv_lcell
-- Equation(s):
-- \inst1|main_out|dffs\(3) = DFFEAS(((\inst1|_~17\) # ((\inst1|main_out|dffs\(2)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), GLOBAL(\inst1|idle~regout\), , \inst1|_~18\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst1|_~17\,
	datac => \inst1|main_out|dffs\(2),
	aclr => \inst1|ALT_INV_idle~regout\,
	ena => \inst1|_~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|main_out|dffs\(3));

-- Location: LC_X3_Y4_N4
\inst1|main_out|dffs[4]\ : maxv_lcell
-- Equation(s):
-- \inst1|main_out|dffs\(4) = DFFEAS((\inst1|_~17\ & ((\inst1|byte_cnt|auto_generated|safe_q\(2)) # ((\inst1|byte_cnt|auto_generated|safe_q\(0))))) # (!\inst1|_~17\ & (((\inst1|main_out|dffs\(3))))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), GLOBAL(\inst1|idle~regout\), , \inst1|_~18\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efe0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|byte_cnt|auto_generated|safe_q\(2),
	datab => \inst1|byte_cnt|auto_generated|safe_q\(0),
	datac => \inst1|_~17\,
	datad => \inst1|main_out|dffs\(3),
	aclr => \inst1|ALT_INV_idle~regout\,
	ena => \inst1|_~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|main_out|dffs\(4));

-- Location: LC_X3_Y4_N9
\inst1|main_out|dffs[5]\ : maxv_lcell
-- Equation(s):
-- \inst1|main_out|dffs\(5) = DFFEAS((\inst1|_~17\) # (((\inst1|main_out|dffs\(4)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), GLOBAL(\inst1|idle~regout\), , \inst1|_~18\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|_~17\,
	datac => \inst1|main_out|dffs\(4),
	aclr => \inst1|ALT_INV_idle~regout\,
	ena => \inst1|_~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|main_out|dffs\(5));

-- Location: LC_X3_Y4_N8
\inst1|main_out|dffs[6]\ : maxv_lcell
-- Equation(s):
-- \inst1|main_out|dffs\(6) = DFFEAS(((\inst1|main_out|dffs\(5)) # ((\inst1|_~17\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), GLOBAL(\inst1|idle~regout\), , \inst1|_~18\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst1|main_out|dffs\(5),
	datac => \inst1|_~17\,
	aclr => \inst1|ALT_INV_idle~regout\,
	ena => \inst1|_~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|main_out|dffs\(6));

-- Location: LC_X3_Y4_N0
\inst1|main_out|dffs[7]\ : maxv_lcell
-- Equation(s):
-- \inst1|main_out|dffs\(7) = DFFEAS((\inst1|_~17\ & ((\inst1|byte_cnt|auto_generated|safe_q\(2)) # ((\inst1|byte_cnt|auto_generated|safe_q\(0))))) # (!\inst1|_~17\ & (((\inst1|main_out|dffs\(6))))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), GLOBAL(\inst1|idle~regout\), , \inst1|_~18\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efe0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|byte_cnt|auto_generated|safe_q\(2),
	datab => \inst1|byte_cnt|auto_generated|safe_q\(0),
	datac => \inst1|_~17\,
	datad => \inst1|main_out|dffs\(6),
	aclr => \inst1|ALT_INV_idle~regout\,
	ena => \inst1|_~18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|main_out|dffs\(7));

-- Location: LC_X4_Y2_N3
\inst1|endc\ : maxv_lcell
-- Equation(s):
-- \inst|MAX_SDA~1\ = (((C1_endc) # (\inst1|main_out|dffs\(7))))
-- \inst1|endc~regout\ = DFFEAS(\inst|MAX_SDA~1\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, \inst1|endq~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datac => \inst1|endq~regout\,
	datad => \inst1|main_out|dffs\(7),
	aclr => GND,
	sload => VCC,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|MAX_SDA~1\,
	regout => \inst1|endc~regout\);

-- Location: LC_X4_Y2_N4
\inst1|endd\ : maxv_lcell
-- Equation(s):
-- \inst1|endd~regout\ = DFFEAS((((\inst1|endc~regout\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datad => \inst1|endc~regout\,
	aclr => GND,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|endd~regout\);

-- Location: LC_X4_Y2_N1
\inst1|idle\ : maxv_lcell
-- Equation(s):
-- \inst1|idle~regout\ = DFFEAS((!\inst1|idle~0_combout\ & (!\inst1|endd~regout\ & ((\inst1|_~2_combout\) # (\inst1|idle~regout\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0302",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|_~2_combout\,
	datab => \inst1|idle~0_combout\,
	datac => \inst1|endd~regout\,
	datad => \inst1|idle~regout\,
	aclr => GND,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|idle~regout\);

-- Location: LC_X4_Y4_N6
\inst1|startd\ : maxv_lcell
-- Equation(s):
-- \inst1|startd~regout\ = DFFEAS((!\inst1|led_on~regout\ & (\inst12|time_100ms~combout\ & (!\inst1|idle~regout\ & \inst1|_~2_combout\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst1|div_cnt|auto_generated|cout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|led_on~regout\,
	datab => \inst12|time_100ms~combout\,
	datac => \inst1|idle~regout\,
	datad => \inst1|_~2_combout\,
	aclr => GND,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|startd~regout\);

-- Location: LC_X5_Y2_N8
\inst1|_~4\ : maxv_lcell
-- Equation(s):
-- \inst1|_~4_combout\ = (!\inst1|bit_cnt|auto_generated|safe_q\(2) & (((\inst1|bit_cnt|auto_generated|safe_q\(4) & !\inst1|bit_cnt|auto_generated|safe_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(2),
	datac => \inst1|bit_cnt|auto_generated|safe_q\(4),
	datad => \inst1|bit_cnt|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~4_combout\);

-- Location: LC_X6_Y2_N5
\inst1|send_q\ : maxv_lcell
-- Equation(s):
-- \inst1|_~5\ = (C1_send_q & (((!\inst1|_~3_combout\) # (!\inst1|_~4_combout\)) # (!\inst1|bit_cnt|auto_generated|safe_q\(0))))
-- \inst1|send_q~regout\ = DFFEAS(\inst1|_~5\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, \inst1|send_c~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(0),
	datab => \inst1|_~4_combout\,
	datac => \inst1|send_c~regout\,
	datad => \inst1|_~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~5\,
	regout => \inst1|send_q~regout\);

-- Location: LC_X6_Y4_N4
\inst1|_~7\ : maxv_lcell
-- Equation(s):
-- \inst1|_~7_combout\ = (\inst1|bit_cnt|auto_generated|safe_q\(4) & (\inst1|_~6_combout\ & (\inst1|bit_cnt|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(4),
	datab => \inst1|_~6_combout\,
	datac => \inst1|bit_cnt|auto_generated|safe_q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~7_combout\);

-- Location: LC_X6_Y4_N1
\inst1|send_d\ : maxv_lcell
-- Equation(s):
-- \inst1|send_d~0\ = (\inst1|wr_src~regout\) # ((\inst1|startc~regout\) # ((\inst1|_~5\ & !\inst1|_~7_combout\)))
-- \inst1|send_d~regout\ = DFFEAS(\inst1|send_d~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|_~5\,
	datab => \inst1|wr_src~regout\,
	datac => \inst1|startc~regout\,
	datad => \inst1|_~7_combout\,
	aclr => GND,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|send_d~0\,
	regout => \inst1|send_d~regout\);

-- Location: LC_X6_Y4_N3
\inst1|send_c\ : maxv_lcell
-- Equation(s):
-- \inst1|bit_c~0\ = ((\inst1|read_c~regout\) # ((C1_send_c)))
-- \inst1|send_c~regout\ = DFFEAS(\inst1|bit_c~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, \inst1|send_d~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst1|read_c~regout\,
	datac => \inst1|send_d~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|bit_c~0\,
	regout => \inst1|send_c~regout\);

-- Location: LC_X6_Y4_N5
\inst1|read_d\ : maxv_lcell
-- Equation(s):
-- \inst1|read_d~0\ = (\inst1|_~5\ & ((\inst1|_~7_combout\) # ((\inst1|read_q~regout\ & !\inst1|_~9_combout\)))) # (!\inst1|_~5\ & (\inst1|read_q~regout\ & (!\inst1|_~9_combout\)))
-- \inst1|read_d~regout\ = DFFEAS(\inst1|read_d~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|_~5\,
	datab => \inst1|read_q~regout\,
	datac => \inst1|_~9_combout\,
	datad => \inst1|_~7_combout\,
	aclr => GND,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|read_d~0\,
	regout => \inst1|read_d~regout\);

-- Location: LC_X6_Y2_N1
\inst1|read_c\ : maxv_lcell
-- Equation(s):
-- \inst1|_~12\ = (!\inst1|bit_cnt|auto_generated|safe_q\(0) & (\inst1|div_cnt|auto_generated|cout\ & (C1_read_c & \inst1|led_on~regout\)))
-- \inst1|read_c~regout\ = DFFEAS(\inst1|_~12\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, \inst1|read_d~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|bit_cnt|auto_generated|safe_q\(0),
	datab => \inst1|div_cnt|auto_generated|cout\,
	datac => \inst1|read_d~regout\,
	datad => \inst1|led_on~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~12\,
	regout => \inst1|read_c~regout\);

-- Location: LC_X6_Y4_N7
\inst1|bit_c\ : maxv_lcell
-- Equation(s):
-- \inst1|bit_c~regout\ = DFFEAS((\inst1|bit_c~0\) # (((\inst1|read_d~0\) # (\inst1|send_d~0\)) # (!\inst1|bit_d~0\)), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|bit_c~0\,
	datab => \inst1|bit_d~0\,
	datac => \inst1|read_d~0\,
	datad => \inst1|send_d~0\,
	aclr => GND,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|bit_c~regout\);

-- Location: PIN_70,	 I/O Standard: 1.8 V,	 Current Strength: Default
\SCL_TEL~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SCL_TEL,
	combout => \SCL_TEL~combout\);

-- Location: LC_X4_Y4_N3
\inst|MAX_SCL~0\ : maxv_lcell
-- Equation(s):
-- \inst|MAX_SCL~0_combout\ = ((\inst1|idle~regout\ & (!\inst1|bit_c~regout\)) # (!\inst1|idle~regout\ & ((\SCL_TEL~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|bit_c~regout\,
	datac => \inst1|idle~regout\,
	datad => \SCL_TEL~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|MAX_SCL~0_combout\);

-- Location: LC_X5_Y3_N2
\inst12|leds_on\ : maxv_lcell
-- Equation(s):
-- \inst12|leds_on~regout\ = DFFEAS((\inst12|ledon~1\) # (((\inst12|led_plus~0\) # (\inst12|led_9~0\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|ledon~1\,
	datac => \inst12|led_plus~0\,
	datad => \inst12|led_9~0\,
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|leds_on~regout\);

-- Location: LC_X7_Y1_N9
\inst14|UFM_shifter|dffs[2]\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_shifter|dffs\(2) = DFFEAS(GND, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|data_clk~regout\, \inst14|UFM_shifter|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datac => \inst14|UFM_shifter|dffs\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst14|data_clk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|UFM_shifter|dffs\(2));

-- Location: LC_X2_Y2_N3
\inst14|_~18\ : maxv_lcell
-- Equation(s):
-- \inst14|_~18_combout\ = ((!\inst14|UFM_addr_cntr|auto_generated|safe_q\(3) & (!\inst14|UFM_addr_cntr|auto_generated|safe_q\(1) & \inst14|_~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|UFM_addr_cntr|auto_generated|safe_q\(3),
	datac => \inst14|UFM_addr_cntr|auto_generated|safe_q\(1),
	datad => \inst14|_~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~18_combout\);

-- Location: LC_X7_Y1_N1
\inst14|BRT0_ff|dffs[1]\ : maxv_lcell
-- Equation(s):
-- \inst14|BRT0_ff|dffs\(1) = DFFEAS(GND, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|_~18_combout\, \inst14|UFM_shifter|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datac => \inst14|UFM_shifter|dffs\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst14|_~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|BRT0_ff|dffs\(1));

-- Location: LC_X7_Y1_N3
\inst14|BRT0_ff|dffs[2]\ : maxv_lcell
-- Equation(s):
-- \inst12|$00005~3\ = (\inst12|bright_cnt|auto_generated|safe_q\(8) & ((\inst12|bright_cnt|auto_generated|safe_q\(9) $ (J2_dffs[2])) # (!\inst14|BRT0_ff|dffs\(1)))) # (!\inst12|bright_cnt|auto_generated|safe_q\(8) & ((\inst14|BRT0_ff|dffs\(1)) # 
-- (\inst12|bright_cnt|auto_generated|safe_q\(9) $ (J2_dffs[2]))))
-- \inst14|BRT0_ff|dffs\(2) = DFFEAS(\inst12|$00005~3\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|_~18_combout\, \inst14|UFM_shifter|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7dbe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|bright_cnt|auto_generated|safe_q\(8),
	datab => \inst12|bright_cnt|auto_generated|safe_q\(9),
	datac => \inst14|UFM_shifter|dffs\(2),
	datad => \inst14|BRT0_ff|dffs\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst14|_~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|$00005~3\,
	regout => \inst14|BRT0_ff|dffs\(2));

-- Location: LC_X7_Y1_N8
\inst14|UFM_shifter|dffs[3]\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_shifter|dffs\(3) = DFFEAS((((\inst14|UFM_shifter|dffs\(2)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|data_clk~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datad => \inst14|UFM_shifter|dffs\(2),
	aclr => GND,
	ena => \inst14|data_clk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|UFM_shifter|dffs\(3));

-- Location: LC_X7_Y1_N2
\inst14|BRT0_ff|dffs[3]\ : maxv_lcell
-- Equation(s):
-- \inst12|$00005~4\ = (\inst14|BRT0_ff|dffs\(4) & ((J2_dffs[3] $ (\inst12|bright_cnt|auto_generated|safe_q\(10))) # (!\inst12|bright_cnt|auto_generated|safe_q\(11)))) # (!\inst14|BRT0_ff|dffs\(4) & ((\inst12|bright_cnt|auto_generated|safe_q\(11)) # 
-- (J2_dffs[3] $ (\inst12|bright_cnt|auto_generated|safe_q\(10)))))
-- \inst14|BRT0_ff|dffs\(3) = DFFEAS(\inst12|$00005~4\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|_~18_combout\, \inst14|UFM_shifter|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ff6",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|BRT0_ff|dffs\(4),
	datab => \inst12|bright_cnt|auto_generated|safe_q\(11),
	datac => \inst14|UFM_shifter|dffs\(3),
	datad => \inst12|bright_cnt|auto_generated|safe_q\(10),
	aclr => GND,
	sload => VCC,
	ena => \inst14|_~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|$00005~4\,
	regout => \inst14|BRT0_ff|dffs\(3));

-- Location: LC_X7_Y1_N0
\inst14|UFM_shifter|dffs[4]\ : maxv_lcell
-- Equation(s):
-- \inst14|UFM_shifter|dffs\(4) = DFFEAS((((\inst14|UFM_shifter|dffs\(3)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|data_clk~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datad => \inst14|UFM_shifter|dffs\(3),
	aclr => GND,
	ena => \inst14|data_clk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|UFM_shifter|dffs\(4));

-- Location: LC_X7_Y1_N5
\inst14|BRT0_ff|dffs[4]\ : maxv_lcell
-- Equation(s):
-- \inst12|_~16\ = (!\inst14|BRT0_ff|dffs\(2) & (!\inst14|BRT0_ff|dffs\(3) & (!J2_dffs[4] & !\inst14|BRT0_ff|dffs\(1))))
-- \inst14|BRT0_ff|dffs\(4) = DFFEAS(\inst12|_~16\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|_~18_combout\, \inst14|UFM_shifter|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|BRT0_ff|dffs\(2),
	datab => \inst14|BRT0_ff|dffs\(3),
	datac => \inst14|UFM_shifter|dffs\(4),
	datad => \inst14|BRT0_ff|dffs\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst14|_~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|_~16\,
	regout => \inst14|BRT0_ff|dffs\(4));

-- Location: LC_X7_Y1_N6
\inst14|BRT0_ff|dffs[0]\ : maxv_lcell
-- Equation(s):
-- \inst12|$00005~5\ = (\inst12|$00005~4\ & (!\inst12|bright_cnt|auto_generated|safe_q\(7))) # (!\inst12|$00005~4\ & ((\inst12|$00005~3\ & (!\inst12|bright_cnt|auto_generated|safe_q\(7))) # (!\inst12|$00005~3\ & ((J2_dffs[0])))))
-- \inst14|BRT0_ff|dffs\(0) = DFFEAS(\inst12|$00005~5\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst14|_~18_combout\, \inst14|UFM_shifter|dffs\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3372",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|$00005~4\,
	datab => \inst12|bright_cnt|auto_generated|safe_q\(7),
	datac => \inst14|UFM_shifter|dffs\(0),
	datad => \inst12|$00005~3\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|_~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|$00005~5\,
	regout => \inst14|BRT0_ff|dffs\(0));

-- Location: LC_X5_Y1_N8
\inst12|$00005~2\ : maxv_lcell
-- Equation(s):
-- \inst12|$00005~2_combout\ = (\inst12|bright_cnt|auto_generated|safe_q\(10)) # ((\inst12|bright_cnt|auto_generated|safe_q\(8)) # ((\inst12|bright_cnt|auto_generated|safe_q\(11)) # (\inst12|bright_cnt|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|bright_cnt|auto_generated|safe_q\(10),
	datab => \inst12|bright_cnt|auto_generated|safe_q\(8),
	datac => \inst12|bright_cnt|auto_generated|safe_q\(11),
	datad => \inst12|bright_cnt|auto_generated|safe_q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|$00005~2_combout\);

-- Location: LC_X6_Y2_N8
\inst1|_~13\ : maxv_lcell
-- Equation(s):
-- \inst1|_~13_combout\ = ((\inst1|_~8_combout\ & (\inst1|bit_cnt|auto_generated|safe_q\(5) & \inst1|_~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|_~8_combout\,
	datac => \inst1|bit_cnt|auto_generated|safe_q\(5),
	datad => \inst1|_~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~13_combout\);

-- Location: LC_X6_Y1_N8
\inst1|LUX_ff|dffs[0]\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_led~0\ = ((J3_dffs[0]) # ((!\inst14|BRT0_ff|dffs\(0) & \inst12|_~16\)))
-- \inst1|LUX_ff|dffs\(0) = DFFEAS(\inst12|bright_led~0\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|_~13_combout\, \SDA_MAX~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst14|BRT0_ff|dffs\(0),
	datac => \SDA_MAX~0\,
	datad => \inst12|_~16\,
	aclr => GND,
	sload => VCC,
	ena => \inst1|_~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|bright_led~0\,
	regout => \inst1|LUX_ff|dffs\(0));

-- Location: LC_X5_Y1_N7
\inst12|bright_led\ : maxv_lcell
-- Equation(s):
-- \inst12|bright_led~regout\ = DFFEAS((\inst12|bright_led~regout\ & (\inst12|$00005~5\ $ ((\inst12|bright_cnt|auto_generated|safe_q\(7))))) # (!\inst12|bright_led~regout\ & (((!\inst12|bright_cnt|auto_generated|safe_q\(7) & !\inst12|$00005~2_combout\)))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), !\inst12|bright_led~0\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6063",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst12|$00005~5\,
	datab => \inst12|bright_cnt|auto_generated|safe_q\(7),
	datac => \inst12|bright_led~regout\,
	datad => \inst12|$00005~2_combout\,
	aclr => \inst12|bright_led~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|bright_led~regout\);

-- Location: LC_X5_Y1_N9
\inst12|LED0\ : maxv_lcell
-- Equation(s):
-- \inst12|LED0~combout\ = ((\inst12|leds_on~regout\ & (\inst12|bright_led~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst12|leds_on~regout\,
	datac => \inst12|bright_led~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|LED0~combout\);

-- Location: PIN_58,	 I/O Standard: 1.8 V,	 Current Strength: Default
\A_CS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A_CS,
	combout => \A_CS~combout\);

-- Location: PIN_67,	 I/O Standard: 1.8 V,	 Current Strength: Default
\A_SCLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A_SCLK,
	combout => \A_SCLK~combout\);

-- Location: PIN_57,	 I/O Standard: 1.8 V,	 Current Strength: Default
\A_MOSI~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A_MOSI,
	combout => \A_MOSI~combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\L_MISO~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_L_MISO,
	combout => \L_MISO~combout\);

-- Location: PIN_69,	 I/O Standard: 1.8 V,	 Current Strength: Default
\G_SCL~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_G_SCL,
	combout => \G_SCL~combout\);

-- Location: LC_X4_Y3_N1
\inst13|cnt\ : maxv_lcell
-- Equation(s):
-- \inst13|cnt~regout\ = DFFEAS((((!\inst13|cnt~regout\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datad => \inst13|cnt~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|cnt~regout\);

-- Location: LC_X4_Y3_N5
\inst13|SCL_MAX\ : maxv_lcell
-- Equation(s):
-- \inst13|SCL_MAX~regout\ = DFFEAS((\inst13|cnt~regout\ & (\SCL_DS~combout\)) # (!\inst13|cnt~regout\ & (((\inst13|SCL_MAX~regout\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \SCL_DS~combout\,
	datab => \inst13|cnt~regout\,
	datac => \inst13|SCL_MAX~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|SCL_MAX~regout\);

-- Location: LC_X4_Y1_N3
\inst14|_~26\ : maxv_lcell
-- Equation(s):
-- \inst14|_~26_combout\ = ((\inst14|i2c_cntr|auto_generated|safe_q\(0) & (!\inst14|i2c_cntr|auto_generated|safe_q\(1) & \inst14|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst14|i2c_cntr|auto_generated|safe_q\(0),
	datac => \inst14|i2c_cntr|auto_generated|safe_q\(1),
	datad => \inst14|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|_~26_combout\);

-- Location: LC_X6_Y1_N1
\inst13|comand~9\ : maxv_lcell
-- Equation(s):
-- \inst13|comand~9_combout\ = (\GAUGE_SDA~0\ & (!\inst14|_~26_combout\ & (!\inst14|_~4_combout\ & !\inst14|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \GAUGE_SDA~0\,
	datab => \inst14|_~26_combout\,
	datac => \inst14|_~4_combout\,
	datad => \inst14|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|comand~9_combout\);

-- Location: LC_X4_Y3_N7
\inst13|comand.tel_go\ : maxv_lcell
-- Equation(s):
-- \inst13|comand~8\ = (((!\inst13|comand.ready~regout\ & LED_SDA_t)))
-- \inst13|comand.tel_go~regout\ = DFFEAS(\inst13|comand~8\, GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst13|comand~11_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datac => \inst13|comand.ready~regout\,
	datad => LED_SDA_t,
	aclr => GND,
	ena => \inst13|comand~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|comand~8\,
	regout => \inst13|comand.tel_go~regout\);

-- Location: LC_X4_Y3_N9
\inst13|comand.max_go\ : maxv_lcell
-- Equation(s):
-- \inst13|comand.max_go~regout\ = DFFEAS((((!\inst13|comand.ready~regout\ & !LED_SDA_t))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst13|comand~11_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datac => \inst13|comand.ready~regout\,
	datad => LED_SDA_t,
	aclr => GND,
	ena => \inst13|comand~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|comand.max_go~regout\);

-- Location: LC_X4_Y3_N3
\inst13|comand~10\ : maxv_lcell
-- Equation(s):
-- \inst13|comand~10_combout\ = (\inst13|comand.ready~regout\ & ((\inst13|comand.max_go~regout\ & ((!LED_SDA_t))) # (!\inst13|comand.max_go~regout\ & (!\inst13|comand~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|comand~9_combout\,
	datab => \inst13|comand.max_go~regout\,
	datac => \inst13|comand.ready~regout\,
	datad => LED_SDA_t,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|comand~10_combout\);

-- Location: LC_X4_Y3_N4
\inst13|comand~11\ : maxv_lcell
-- Equation(s):
-- \inst13|comand~11_combout\ = (\inst13|cnt~regout\ & (!\inst13|comand~10_combout\ & ((!\inst13|comand~8\) # (!\inst13|comand~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "004c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|comand~9_combout\,
	datab => \inst13|cnt~regout\,
	datac => \inst13|comand~8\,
	datad => \inst13|comand~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|comand~11_combout\);

-- Location: LC_X4_Y3_N6
\inst13|comand.ready\ : maxv_lcell
-- Equation(s):
-- \inst13|comand.ready~regout\ = DFFEAS(\inst13|comand.ready~regout\ $ ((((\inst13|comand~11_combout\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst13|comand.ready~regout\,
	datac => \inst13|comand~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|comand.ready~regout\);

-- Location: LC_X3_Y3_N2
\inst1|_~15\ : maxv_lcell
-- Equation(s):
-- \inst1|_~15_combout\ = (!\inst1|led_on~regout\ & (\inst12|time_100ms_cnt|auto_generated|modulus_trigger\ & (!\inst1|idle~regout\ & \inst12|bright_cnt|auto_generated|cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|led_on~regout\,
	datab => \inst12|time_100ms_cnt|auto_generated|modulus_trigger\,
	datac => \inst1|idle~regout\,
	datad => \inst12|bright_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|_~15_combout\);

-- Location: LC_X4_Y2_N5
\inst1|bit_d~1\ : maxv_lcell
-- Equation(s):
-- \inst1|bit_d~1_combout\ = (((\inst1|wr_sr~regout\) # (\inst1|endq~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|wr_sr~regout\,
	datad => \inst1|endq~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|bit_d~1_combout\);

-- Location: LC_X4_Y2_N2
\inst1|bit_d\ : maxv_lcell
-- Equation(s):
-- \inst1|bit_d~regout\ = DFFEAS(((\inst1|bit_d~1_combout\) # ((\inst1|_~15_combout\ & \inst1|_~2_combout\))) # (!\inst1|bit_d~0\), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst1|div_cnt|auto_generated|cout\, , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbf3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst1|_~15_combout\,
	datab => \inst1|bit_d~0\,
	datac => \inst1|bit_d~1_combout\,
	datad => \inst1|_~2_combout\,
	aclr => GND,
	ena => \inst1|div_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|bit_d~regout\);

-- Location: LC_X3_Y3_N4
\inst|comand~13\ : maxv_lcell
-- Equation(s):
-- \inst|comand~13_combout\ = (\inst|comand.ready~regout\ & ((\inst|comand.max_go~regout\ & (!\SDA_TEL~0\)) # (!\inst|comand.max_go~regout\ & ((!\SDA_MAX~0\))))) # (!\inst|comand.ready~regout\ & (\SDA_TEL~0\ & ((\SDA_MAX~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "642a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|comand.ready~regout\,
	datab => \SDA_TEL~0\,
	datac => \inst|comand.max_go~regout\,
	datad => \SDA_MAX~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|comand~13_combout\);

-- Location: LC_X3_Y3_N8
\inst|comand.ready\ : maxv_lcell
-- Equation(s):
-- \inst|comand.ready~regout\ = DFFEAS(\inst|comand.ready~regout\ $ (((!\inst|comand~13_combout\ & ((!\inst12|bright_cnt|auto_generated|cout\) # (!\inst12|time_100ms_cnt|auto_generated|modulus_trigger\))))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a9a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst|comand.ready~regout\,
	datab => \inst12|time_100ms_cnt|auto_generated|modulus_trigger\,
	datac => \inst|comand~13_combout\,
	datad => \inst12|bright_cnt|auto_generated|cout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|comand.ready~regout\);

-- Location: LC_X3_Y3_N7
\inst|comand~15\ : maxv_lcell
-- Equation(s):
-- \inst|comand~15_combout\ = ((!\inst|comand~13_combout\ & ((!\inst12|bright_cnt|auto_generated|cout\) # (!\inst12|time_100ms_cnt|auto_generated|modulus_trigger\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst12|time_100ms_cnt|auto_generated|modulus_trigger\,
	datac => \inst|comand~13_combout\,
	datad => \inst12|bright_cnt|auto_generated|cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|comand~15_combout\);

-- Location: LC_X3_Y3_N5
\inst|comand.max_go\ : maxv_lcell
-- Equation(s):
-- \inst|comand.max_go~regout\ = DFFEAS((!\inst|comand.ready~regout\ & (((!\SDA_TEL~0\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst|comand~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst|comand.ready~regout\,
	datad => \SDA_TEL~0\,
	aclr => GND,
	ena => \inst|comand~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|comand.max_go~regout\);

-- Location: LC_X4_Y2_N0
\inst|MAX_SDA~2\ : maxv_lcell
-- Equation(s):
-- \inst|MAX_SDA~2_combout\ = (\inst1|idle~regout\ & (!\inst|MAX_SDA~1\ & (!\inst1|bit_d~regout\))) # (!\inst1|idle~regout\ & (((!\inst|comand.max_go~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "110f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MAX_SDA~1\,
	datab => \inst1|bit_d~regout\,
	datac => \inst|comand.max_go~regout\,
	datad => \inst1|idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|MAX_SDA~2_combout\);

-- Location: LC_X3_Y3_N1
\inst|comand.tel_go\ : maxv_lcell
-- Equation(s):
-- \inst|comand.tel_go~regout\ = DFFEAS((!\inst|comand.ready~regout\ & (((\SDA_TEL~0\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst|comand~15_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst|comand.ready~regout\,
	datad => \SDA_TEL~0\,
	aclr => GND,
	ena => \inst|comand~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|comand.tel_go~regout\);

-- Location: LC_X5_Y3_N3
\inst|wd_cntr[0]\ : maxv_lcell
-- Equation(s):
-- \inst|wd_cntr\(0) = DFFEAS((((!\inst|wd_cntr\(0)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datad => \inst|wd_cntr\(0),
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|wd_cntr\(0));

-- Location: LC_X5_Y3_N5
\inst|wd_cntr[1]\ : maxv_lcell
-- Equation(s):
-- \inst|wd_cntr\(1) = DFFEAS(\inst|wd_cntr\(1) $ ((\inst|wd_cntr\(0))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , , )
-- \inst|wd_cntr[1]~21\ = CARRY((\inst|wd_cntr\(1) & (\inst|wd_cntr\(0))))
-- \inst|wd_cntr[1]~21COUT1_24\ = CARRY((\inst|wd_cntr\(1) & (\inst|wd_cntr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst|wd_cntr\(1),
	datab => \inst|wd_cntr\(0),
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|wd_cntr\(1),
	cout0 => \inst|wd_cntr[1]~21\,
	cout1 => \inst|wd_cntr[1]~21COUT1_24\);

-- Location: LC_X5_Y3_N6
\inst|wd_cntr[2]\ : maxv_lcell
-- Equation(s):
-- \inst|wd_cntr\(2) = DFFEAS(\inst|wd_cntr\(2) $ ((((\inst|wd_cntr[1]~21\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , , )
-- \inst|wd_cntr[2]~19\ = CARRY(((!\inst|wd_cntr[1]~21\)) # (!\inst|wd_cntr\(2)))
-- \inst|wd_cntr[2]~19COUT1_25\ = CARRY(((!\inst|wd_cntr[1]~21COUT1_24\)) # (!\inst|wd_cntr\(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst|wd_cntr\(2),
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	cin0 => \inst|wd_cntr[1]~21\,
	cin1 => \inst|wd_cntr[1]~21COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|wd_cntr\(2),
	cout0 => \inst|wd_cntr[2]~19\,
	cout1 => \inst|wd_cntr[2]~19COUT1_25\);

-- Location: LC_X5_Y3_N7
\inst|wd_cntr[3]\ : maxv_lcell
-- Equation(s):
-- \inst|wd_cntr\(3) = DFFEAS((\inst|wd_cntr\(3) $ ((!\inst|wd_cntr[2]~19\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , , )
-- \inst|wd_cntr[3]~17\ = CARRY(((\inst|wd_cntr\(3) & !\inst|wd_cntr[2]~19\)))
-- \inst|wd_cntr[3]~17COUT1_26\ = CARRY(((\inst|wd_cntr\(3) & !\inst|wd_cntr[2]~19COUT1_25\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst|wd_cntr\(3),
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	cin0 => \inst|wd_cntr[2]~19\,
	cin1 => \inst|wd_cntr[2]~19COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|wd_cntr\(3),
	cout0 => \inst|wd_cntr[3]~17\,
	cout1 => \inst|wd_cntr[3]~17COUT1_26\);

-- Location: LC_X5_Y3_N8
\inst|wd_cntr[4]\ : maxv_lcell
-- Equation(s):
-- \inst|wd_cntr\(4) = DFFEAS(\inst|wd_cntr\(4) $ ((((\inst|wd_cntr[3]~17\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , , )
-- \inst|wd_cntr[4]~15\ = CARRY(((!\inst|wd_cntr[3]~17\)) # (!\inst|wd_cntr\(4)))
-- \inst|wd_cntr[4]~15COUT1_27\ = CARRY(((!\inst|wd_cntr[3]~17COUT1_26\)) # (!\inst|wd_cntr\(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst|wd_cntr\(4),
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	cin0 => \inst|wd_cntr[3]~17\,
	cin1 => \inst|wd_cntr[3]~17COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|wd_cntr\(4),
	cout0 => \inst|wd_cntr[4]~15\,
	cout1 => \inst|wd_cntr[4]~15COUT1_27\);

-- Location: LC_X5_Y3_N9
\inst|wd_cntr[5]\ : maxv_lcell
-- Equation(s):
-- \inst|wd_cntr\(5) = DFFEAS((\inst|wd_cntr\(5) $ ((!\inst|wd_cntr[4]~15\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , , )
-- \inst|wd_cntr[5]~7\ = CARRY(((\inst|wd_cntr\(5) & !\inst|wd_cntr[4]~15COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst|wd_cntr\(5),
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	cin0 => \inst|wd_cntr[4]~15\,
	cin1 => \inst|wd_cntr[4]~15COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|wd_cntr\(5),
	cout => \inst|wd_cntr[5]~7\);

-- Location: LC_X6_Y3_N0
\inst|wd_cntr[6]\ : maxv_lcell
-- Equation(s):
-- \inst|wd_cntr\(6) = DFFEAS((\inst|wd_cntr\(6) $ ((\inst|wd_cntr[5]~7\))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , , )
-- \inst|wd_cntr[6]~1\ = CARRY(((!\inst|wd_cntr[5]~7\) # (!\inst|wd_cntr\(6))))
-- \inst|wd_cntr[6]~1COUT1_28\ = CARRY(((!\inst|wd_cntr[5]~7\) # (!\inst|wd_cntr\(6))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst|wd_cntr\(6),
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	cin => \inst|wd_cntr[5]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|wd_cntr\(6),
	cout0 => \inst|wd_cntr[6]~1\,
	cout1 => \inst|wd_cntr[6]~1COUT1_28\);

-- Location: LC_X6_Y3_N1
\inst|wd_cntr[7]\ : maxv_lcell
-- Equation(s):
-- \inst|wd_cntr\(7) = DFFEAS((\inst|wd_cntr\(7) $ ((!(!\inst|wd_cntr[5]~7\ & \inst|wd_cntr[6]~1\) # (\inst|wd_cntr[5]~7\ & \inst|wd_cntr[6]~1COUT1_28\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst12|time_100ms~combout\, , , , )
-- \inst|wd_cntr[7]~9\ = CARRY(((\inst|wd_cntr\(7) & !\inst|wd_cntr[6]~1\)))
-- \inst|wd_cntr[7]~9COUT1_29\ = CARRY(((\inst|wd_cntr\(7) & !\inst|wd_cntr[6]~1COUT1_28\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst|wd_cntr\(7),
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	cin => \inst|wd_cntr[5]~7\,
	cin0 => \inst|wd_cntr[6]~1\,
	cin1 => \inst|wd_cntr[6]~1COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|wd_cntr\(7),
	cout0 => \inst|wd_cntr[7]~9\,
	cout1 => \inst|wd_cntr[7]~9COUT1_29\);

-- Location: LC_X6_Y3_N2
\inst|wd_cntr[8]\ : maxv_lcell
-- Equation(s):
-- \inst|wd_cntr\(8) = DFFEAS((\inst|wd_cntr\(8) $ (((!\inst|wd_cntr[5]~7\ & \inst|wd_cntr[7]~9\) # (\inst|wd_cntr[5]~7\ & \inst|wd_cntr[7]~9COUT1_29\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst12|time_100ms~combout\, , , , )
-- \inst|wd_cntr[8]~11\ = CARRY(((!\inst|wd_cntr[7]~9\) # (!\inst|wd_cntr\(8))))
-- \inst|wd_cntr[8]~11COUT1_30\ = CARRY(((!\inst|wd_cntr[7]~9COUT1_29\) # (!\inst|wd_cntr\(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	datab => \inst|wd_cntr\(8),
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	cin => \inst|wd_cntr[5]~7\,
	cin0 => \inst|wd_cntr[7]~9\,
	cin1 => \inst|wd_cntr[7]~9COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|wd_cntr\(8),
	cout0 => \inst|wd_cntr[8]~11\,
	cout1 => \inst|wd_cntr[8]~11COUT1_30\);

-- Location: LC_X6_Y3_N3
\inst|wd_cntr[9]\ : maxv_lcell
-- Equation(s):
-- \inst|wd_cntr\(9) = DFFEAS(\inst|wd_cntr\(9) $ ((((!(!\inst|wd_cntr[5]~7\ & \inst|wd_cntr[8]~11\) # (\inst|wd_cntr[5]~7\ & \inst|wd_cntr[8]~11COUT1_30\))))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst12|time_100ms~combout\, , , , )
-- \inst|wd_cntr[9]~3\ = CARRY((\inst|wd_cntr\(9) & ((!\inst|wd_cntr[8]~11\))))
-- \inst|wd_cntr[9]~3COUT1_31\ = CARRY((\inst|wd_cntr\(9) & ((!\inst|wd_cntr[8]~11COUT1_30\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst|wd_cntr\(9),
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	cin => \inst|wd_cntr[5]~7\,
	cin0 => \inst|wd_cntr[8]~11\,
	cin1 => \inst|wd_cntr[8]~11COUT1_30\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|wd_cntr\(9),
	cout0 => \inst|wd_cntr[9]~3\,
	cout1 => \inst|wd_cntr[9]~3COUT1_31\);

-- Location: LC_X6_Y3_N4
\inst|wd_cntr[10]\ : maxv_lcell
-- Equation(s):
-- \inst|wd_cntr\(10) = DFFEAS(\inst|wd_cntr\(10) $ (((((!\inst|wd_cntr[5]~7\ & \inst|wd_cntr[9]~3\) # (\inst|wd_cntr[5]~7\ & \inst|wd_cntr[9]~3COUT1_31\))))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , 
-- \inst12|time_100ms~combout\, , , , )
-- \inst|wd_cntr[10]~5\ = CARRY(((!\inst|wd_cntr[9]~3COUT1_31\)) # (!\inst|wd_cntr\(10)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst|wd_cntr\(10),
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	cin => \inst|wd_cntr[5]~7\,
	cin0 => \inst|wd_cntr[9]~3\,
	cin1 => \inst|wd_cntr[9]~3COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|wd_cntr\(10),
	cout => \inst|wd_cntr[10]~5\);

-- Location: LC_X6_Y3_N8
\inst|test_out~0\ : maxv_lcell
-- Equation(s):
-- \inst|test_out~0_combout\ = (\inst|wd_cntr\(10)) # (((\inst|wd_cntr\(6)) # (\inst|wd_cntr\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|wd_cntr\(10),
	datac => \inst|wd_cntr\(6),
	datad => \inst|wd_cntr\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|test_out~0_combout\);

-- Location: LC_X6_Y3_N5
\inst|wd_cntr[11]\ : maxv_lcell
-- Equation(s):
-- \inst|wd_cntr\(11) = DFFEAS(\inst|wd_cntr\(11) $ ((((!\inst|wd_cntr[10]~5\)))), GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , \inst12|time_100ms~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst|wd_cntr\(11),
	aclr => GND,
	ena => \inst12|time_100ms~combout\,
	cin => \inst|wd_cntr[10]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|wd_cntr\(11));

-- Location: LC_X6_Y3_N7
\inst|test_out~1\ : maxv_lcell
-- Equation(s):
-- \inst|test_out~1_combout\ = (\inst|wd_cntr\(5)) # ((\inst|wd_cntr\(7)) # ((\inst|wd_cntr\(11)) # (\inst|wd_cntr\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|wd_cntr\(5),
	datab => \inst|wd_cntr\(7),
	datac => \inst|wd_cntr\(11),
	datad => \inst|wd_cntr\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|test_out~1_combout\);

-- Location: LC_X6_Y3_N9
\inst|test_out~reg0\ : maxv_lcell
-- Equation(s):
-- \inst|test_out~reg0_regout\ = DFFEAS((\inst12|time_100ms~combout\ & (!\inst|test_out~0_combout\ & (!\inst|test_out~1_combout\))) # (!\inst12|time_100ms~combout\ & (((\inst|test_out~reg0_regout\)))), 
-- GLOBAL(\inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3704",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst11|UFM_NONE_altufm_none_qgr_component|wire_maxii_ufm_block1_osc\,
	dataa => \inst|test_out~0_combout\,
	datab => \inst12|time_100ms~combout\,
	datac => \inst|test_out~1_combout\,
	datad => \inst|test_out~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|test_out~reg0_regout\);

-- Location: LC_X5_Y3_N4
\inst|TEL_SDA~1\ : maxv_lcell
-- Equation(s):
-- \inst|TEL_SDA~1_combout\ = ((!\inst|comand.tel_go~regout\ & (!\inst|test_out~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|comand.tel_go~regout\,
	datac => \inst|test_out~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|TEL_SDA~1_combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\SCL_MAX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|MAX_SCL~0_combout\,
	oe => VCC,
	padio => ww_SCL_MAX);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst12|LED0~combout\,
	oe => VCC,
	padio => ww_LED1);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\LED2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst12|LED0~combout\,
	oe => VCC,
	padio => ww_LED2);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\L_CS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A_CS~combout\,
	oe => VCC,
	padio => ww_L_CS);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\L_SCLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A_SCLK~combout\,
	oe => VCC,
	padio => ww_L_SCLK);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\L_MOSI~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \A_MOSI~combout\,
	oe => VCC,
	padio => ww_L_MOSI);

-- Location: PIN_68,	 I/O Standard: 1.8 V,	 Current Strength: 6mA
\A_MISO~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \L_MISO~combout\,
	oe => VCC,
	padio => ww_A_MISO);

-- Location: PIN_61,	 I/O Standard: 1.8 V,	 Current Strength: 6mA
\UART_Telit_RX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_UART_Telit_RX);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\UART_Modem_TX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_UART_Modem_TX);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 8mA
\BT_RX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_BT_RX);

-- Location: PIN_52,	 I/O Standard: 1.8 V,	 Current Strength: 6mA
\G_Telit_TX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_G_Telit_TX);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\BT_BDOOR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_BT_BDOOR);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\BT_RST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_BT_RST);

-- Location: PIN_76,	 I/O Standard: 1.8 V,	 Current Strength: 6mA
\SIM_SEL~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \G_SCL~combout\,
	oe => VCC,
	padio => ww_SIM_SEL);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\UART_Reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_UART_Reset);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\UART_Modem_RX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_UART_Modem_RX);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\GAUGE_SCL~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst13|SCL_MAX~regout\,
	oe => VCC,
	padio => ww_GAUGE_SCL);

-- Location: PIN_66,	 I/O Standard: 1.8 V,	 Current Strength: Default
\UART_Telit_TX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_UART_Telit_TX);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
\BT_TX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BT_TX);

-- Location: PIN_53,	 I/O Standard: 1.8 V,	 Current Strength: Default
\G_Telit_RX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_G_Telit_RX);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PWR_SW~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PWR_SW);

-- Location: PIN_55,	 I/O Standard: 1.8 V,	 Current Strength: 6mA
\G_SDA~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \inst1|LUX_ff|ALT_INV_dffs\(0),
	oe => VCC,
	padio => G_SDA);
END structure;


