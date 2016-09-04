
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity REGISTRO is
    Port ( INR : in  STD_LOGIC_VECTOR (7 downto 0);
           OUTR : out  STD_LOGIC_VECTOR (7 downto 0);
			   Z 		: out  STD_LOGIC;
           N 		: out  STD_LOGIC;
           clk : in  STD_LOGIC;
           NW : in  STD_LOGIC);
end REGISTRO;

architecture Behavioral of REGISTRO is
signal LATCH_OUT	:STD_LOGIC_VECTOR (7 downto 0):="00000000";
begin
	process(clk)
	begin
		if clk'event and clk='1' then
				if NW='0' then
			        LATCH_OUT<=INR;
				end if;
		end if;
	end process;
	OUTR<=LATCH_OUT;
	Z<=  NOT (LATCH_OUT(7) or LATCH_OUT(6) or LATCH_OUT(5) or LATCH_OUT(4)
		  or LATCH_OUT(3) or LATCH_OUT(2) or LATCH_OUT(1) or LATCH_OUT(0));
	N<=LATCH_OUT(7);


end Behavioral;

