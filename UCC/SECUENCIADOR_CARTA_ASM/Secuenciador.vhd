
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity Secuenciador is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           MPC : in  STD_LOGIC;
           INREG : in  STD_LOGIC_VECTOR (3 downto 0);
           EDO_PRESENTE : out  STD_LOGIC_VECTOR (3 downto 0));
end Secuenciador;

architecture Behavioral of Secuenciador is
signal TEMP2 : STD_LOGIC_VECTOR (3 downto 0):="0000";
begin
	process(clk,reset)
	variable TEMP : STD_LOGIC_VECTOR (3 downto 0):="0000";
	begin
		if clk'event and clk='1' then 
			 if(reset='1') then
				TEMP:="0000";
			 else
				if(MPC='0') then
					TEMP:=TEMP+1;
				else
					TEMP:=INREG;
				end if;
			 end if;
		end if;
		TEMP2<=TEMP;
	end process;
	EDO_PRESENTE<=TEMP2;

end Behavioral;

