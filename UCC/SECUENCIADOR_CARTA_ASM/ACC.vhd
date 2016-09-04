library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ACC is
    Port ( clk : in  STD_LOGIC;
			  --NO DEBEN IR EN LA LISTA SENSITIVA!
			  Ai : in  STD_LOGIC_VECTOR (7 downto 0);
           Bi : in  STD_LOGIC_VECTOR (7 downto 0);
           Ci : in  STD_LOGIC_VECTOR (7 downto 0);
			  --Lista sensitiva
           NW 	: in  STD_LOGIC;
           E0 	: in  STD_LOGIC;
           E1 	: in  STD_LOGIC;
			  --SALIDAS
			  Ao : out  STD_LOGIC_VECTOR (7 downto 0);
           Bo : out  STD_LOGIC_VECTOR (7 downto 0);
           Co : out  STD_LOGIC_VECTOR (7 downto 0);
           Z 		: out  STD_LOGIC;
			  N 		: out  STD_LOGIC
			  );
			  
end ACC;

architecture Behavioral of ACC is
signal LATCH_OUT	:STD_LOGIC_VECTOR (7 downto 0):="00000000";

begin

		process (clk,NW,E0,E1)
		variable LATCH_IN	:STD_LOGIC_VECTOR (7 downto 0):="00000000";
		begin
			
			if clk'event and clk='1' and NW='0' then
				if E0='1' and E1='0' then
					LATCH_IN:=Ai;
				elsif E0='0' and E1='1' then
					LATCH_IN:=Bi;
				elsif E0='1' and E1='1' then
					LATCH_IN:=Ci;
				end if;
				LATCH_OUT<=LATCH_IN;
			end if;
		end process;
		--
		Ao<=LATCH_OUT when (E0='1' and E1='0' and NW='1') else
			 "ZZZZZZZZ";
		Bo<=LATCH_OUT when (E0='0' and E1='1' and NW='1') else
			 "ZZZZZZZZ";
		Co<=LATCH_OUT;
		--
		Z<=  NOT (LATCH_OUT(7) or LATCH_OUT(6) or LATCH_OUT(5) or LATCH_OUT(4)
			  or LATCH_OUT(3) or LATCH_OUT(2) or LATCH_OUT(1) or LATCH_OUT(0));
		N<=LATCH_OUT(7);

end Behavioral;

