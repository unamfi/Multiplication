
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Logica is
    Port ( MI   : in  STD_LOGIC_VECTOR (2 downto 0);
           Qsel : in  STD_LOGIC;
           VECT : out  STD_LOGIC;
           MAPS : out  STD_LOGIC;
           MPC  : out  STD_LOGIC;
           PL   : out  STD_LOGIC);
end Logica;

architecture Behavioral of Logica is
signal TEMP: STD_LOGIC_VECTOR(3 downto 0):="1111";
begin
	process(MI,Qsel)					--Se accede por cambios en cualquiera de las variables de entrada
	begin
		case MI is
			  	when "000" => TEMP<="0111";
				when "001" => TEMP<="1101";
				when "010" =>
					if Qsel='0' then 
						TEMP<="1011";
					else 
						TEMP<="0111";
					end if;
				when "011" => 
					if Qsel='0' then 
						TEMP<="0111";
					else 
						TEMP<="1011";
					end if;
				when "100" => 
					if Qsel='0' then 
						TEMP<="1110";
					else 
						TEMP<="0111";
					end if;
				when "101" =>
					if Qsel='0' then 
						TEMP<="0111";
					else 
						TEMP<="1110";
					end if;
			  	when "110" 	=> TEMP<="1011";
			 	when others => TEMP<="1111";
		end case;
	end process;
	MPC<=TEMP(3);
	PL<=TEMP(2);
	MAPS<=TEMP(1);
	VECT<=TEMP(0);
end Behavioral;

