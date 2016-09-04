library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity BufTrans is
    Port ( hab : in  STD_LOGIC;
           nw 	: in  STD_LOGIC;
           A 	: inout  STD_LOGIC_VECTOR (7 downto 0);
           B 	: out  STD_LOGIC_VECTOR (7 downto 0);
           C 	: in  STD_LOGIC_VECTOR (7 downto 0));
end BufTrans;

architecture Behavioral of BufTrans is
begin
	process(hab,nw)
	begin
	   if hab='1'then
				B<="ZZZZZZZZ";
				A<="ZZZZZZZZ";
		elsif nw='0' then
				B<=A;
		else
				A<=C;
		end if;
	end process;
end Behavioral;

