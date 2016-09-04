---------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity IND_FISICA is
    Port ( YUPA 	: in  	STD_LOGIC_VECTOR (7 downto 0);
				A 		: out  	STD_LOGIC_VECTOR (7 downto 0);
            B 		: out  	STD_LOGIC_VECTOR (7 downto 0));
end IND_FISICA;

architecture Behavioral of IND_FISICA is
begin

	A<=YUPA;
	B<=YUPA;
end Behavioral;

