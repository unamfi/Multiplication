
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DEC_BCD is
    Port ( BCD 	: in  STD_LOGIC_VECTOR (2 downto 0);
           SALIDA : out  STD_LOGIC_VECTOR (7 downto 0));
end DEC_BCD;

architecture Behavioral of DEC_BCD is
begin
with BCD select
SALIDA <= x"03" when o"0",
          x"9f" when o"1",
			 x"25" when o"2",
			 x"0d" when o"3",
			 x"99" when o"4",
			 x"49" when o"5",
			 x"41" when o"6",
			 x"1F" when others;
end Behavioral;

