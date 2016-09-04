library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity CONTADOR_1S is
    Port ( reloj : in  STD_LOGIC;
           clock : out  STD_LOGIC);
end CONTADOR_1S;
architecture Behavioral of CONTADOR_1S is
begin
process (reloj)
variable cuenta: std_logic_vector(1 downto 0):="00";
begin
	if reloj'event and reloj='1' then
			cuenta:=cuenta+1; 
	end if;
	clock<=cuenta(1);		
end process;
end Behavioral;
--RELOJ CON FRECUENCIA DE 1 SEGUNDO
