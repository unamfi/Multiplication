library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity MUX_4_1 is
    Port ( I00 : in  STD_LOGIC;
           I01 : in  STD_LOGIC;
           I10 : in  STD_LOGIC;
           I11 : in  STD_LOGIC;
           Prueba :in STD_LOGIC_VECTOR(1 downto 0);
           Qsel : out  STD_LOGIC);
end MUX_4_1;

architecture Behavioral of MUX_4_1 is
begin
	process (I00, I01, I10,I11, Prueba)
	begin
				case Prueba is
					when "00" => Qsel<= I00;
					when "01" => Qsel<= I01;
					when "10" => Qsel<= I10;
					when others=>Qsel<= I11;
				end case;
	end process;
end Behavioral;

