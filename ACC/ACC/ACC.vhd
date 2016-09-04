library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ACC is
    Port ( --NO DEBEN IR EN LA LISTA SENSITIVA!
			  A : inout  STD_LOGIC_VECTOR (7 downto 0);
           B : inout  STD_LOGIC_VECTOR (7 downto 0);
           C : inout  STD_LOGIC_VECTOR (7 downto 0);
			  --Lista sensitiva
           NW 	: in  STD_LOGIC;
           E0 	: in  STD_LOGIC;
           E1 	: in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  --SALIDAS
           Z : out  STD_LOGIC;
           N : out  STD_LOGIC);
end ACC;

architecture Behavioral of ACC is
signal LATCH_OUT	:STD_LOGIC_VECTOR (7 downto 0):="00000000";
begin

		process (clk,E0,E1)
		variable LATCH_IN	:STD_LOGIC_VECTOR (7 downto 0);
		begin
		
		if( NW='0' ) then
					 if      (E0='1' and E1='0' and NW='0' ) then
						LATCH_IN:=A ;
					 elsif (E0='0' and E1='1' and NW='0' ) then
						LATCH_IN:=B ;
					 elsif (E0='1' and E1='1' and NW='0' ) then
						LATCH_IN:=C;
					 else
						LATCH_IN:="ZZZZZZZZ";
					 end if;
		end if;
		
		if clk'event and clk='1' then 
			if NW='0' then
			  LATCH_OUT<=LATCH_IN;
			end if;			
		end if;	
		
		end process;
		
		A 	<= "ZZZZZZZZ" when (E0='0' and E1='0')					else
				LATCH_OUT  when (E0='1' and E1='0' and NW='1' ) else
			  "ZZZZZZZZ" ;
			  
		B <= "ZZZZZZZZ" when (E0='0' and E1='0')				  else
			  LATCH_OUT  when (E0='0' and E1='1' and NW='1' ) else
			  "ZZZZZZZZ" ;
			  
		C <= "ZZZZZZZZ" when (E0='0' and E1='0')				  else
			  LATCH_OUT  when (E0='1' and E1='1' and NW='1' ) else
			  "ZZZZZZZZ" ;
			  
		Z<=  NOT (LATCH_OUT(7) or LATCH_OUT(6) or LATCH_OUT(5) or LATCH_OUT(4)
			  or LATCH_OUT(3) or LATCH_OUT(2) or LATCH_OUT(1) or LATCH_OUT(0));
		N<=LATCH_OUT(7);

end Behavioral;

