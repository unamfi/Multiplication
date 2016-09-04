
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity CONTADOR is
    Port ( RESET  : in  STD_LOGIC;
           INC : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           FC : out  STD_LOGIC);
end CONTADOR;

architecture Behavioral of CONTADOR is
begin
		process (CLK,RESET)
		variable cuenta: std_logic_vector(2 downto 0):="000";
		begin
			if RESET='1' then
					cuenta:="000";
			elsif CLK'event and CLK='1' and INC='1' then
					cuenta:=cuenta+1; 
			end if;
			
			FC<=cuenta(2) AND cuenta(1) AND cuenta(0);
		end process;
	   
end Behavioral;

