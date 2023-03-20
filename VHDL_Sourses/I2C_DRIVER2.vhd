library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
-------------------------
entity I2C_DRIVER2 is
port(
   ----------------------
	CLK : IN std_logic;
	SCL_TEL : IN std_logic;
	SDA_TEL : INOUT std_logic;
	
	SDA_OUT : OUT std_logic;
	SDA_OE : IN std_logic;
	
	SCL_MAX : OUT std_logic;
	SDA_MAX : INOUT std_logic	
);
end I2C_DRIVER2;
--------------------------------------------------------------------------------
architecture Behavioral of I2C_DRIVER2 is
type state is (ready, tel_go, max_go);

constant len : integer := 1;
signal comand: state:= ready;
begin
process(clk)
variable
	cnt : integer range 0 to len := 0;
begin
	if rising_edge(clk) then
		if cnt = len then
			cnt := 0;
			case comand is
				when ready =>
					if sda_tel = '0' then
						comand <= max_go;
					elsif (sda_max = '0') or (SDA_OE = '1') then	
						comand <= tel_go;
					end if;
				when tel_go =>
					if (sda_max = '1') and (SDA_OE = '0') then
						comand <= ready;
					end if;
				when max_go => 
					if sda_tel = '1' then
						comand <= ready;
					end if;
			end case;
			
			SCL_MAX <= SCL_TEL;

		else
			cnt := cnt + 1;
		end if;

	end if;
end process;

SDA_OUT <= sda_tel;

WITH comand SELECT
	sda_tel <= '0' when tel_go,
					'Z'  when others;

WITH comand SELECT
	sda_max <= '0' when max_go,
					'Z' when others;

end Behavioral;
