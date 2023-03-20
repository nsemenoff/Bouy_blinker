library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity MAX_MUX_VHDL is
port(
	CLK : IN std_logic;
   ----------------------
	MAX_DATA_OUT : OUT std_logic;
	MAX_OE   : IN std_logic;
	MAX_SDA : INOUT std_logic;
	MAX_SCL : OUT std_logic;
	PLD_SCL : IN std_logic;
	MAX_MUX : IN std_logic;
   ----------------------
	TEL_SCL : IN std_logic;
	TEL_SDA : INOUT std_logic;
	t100ms : IN std_logic;
	test_out : INOUT std_logic;
	PWR_SW : IN std_logic
);
end MAX_MUX_VHDL;
--------------------------------------------------------------------------------
architecture Behavioral of MAX_MUX_VHDL is
type state is ( ready, tel_go, max_go);
signal comand: state:= ready;
signal sda_max_int : std_logic;
signal sda_tel_int : std_logic;
signal wd_cntr : std_logic_vector(11 downto 0);
begin

process(CLK)
begin
if rising_edge(CLK) then
	
   if t100ms='1' then
		wd_cntr <= wd_cntr + 1;
		if wd_cntr(11 downto 5)=0 then
			test_out <= '1';
		else
			test_out <= '0';
		end if;
	else
		case comand is
			when ready =>
				if TEL_SDA = '0' then
					comand <= max_go;
				elsif MAX_SDA = '0' then	
					comand <= tel_go;
				end if;
			when tel_go =>
				if MAX_SDA = '1' then
					comand <= ready;
				end if;
			when max_go => 
				if TEL_SDA = '1' then
					comand <= ready;
				end if;
		end case;
	end if;
end if;
end process;

MAX_DATA_OUT <= MAX_SDA;
MAX_SCL <= TEL_SCL when MAX_MUX='1' else PLD_SCL;

MAX_SDA <= '0' when (MAX_OE='0' and MAX_MUX='0') or (sda_max_int='0' and MAX_MUX='1') else 'Z';
TEL_SDA <= '0' when (sda_tel_int='0') or (test_out='1') or (PWR_SW='0') else 'Z';

WITH comand SELECT
	sda_max_int <= '0' when max_go,
						'1' when others;

WITH comand SELECT
	sda_tel_int <= '0' when tel_go,
						'1' when others;

end Behavioral;

