
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity REG_FLAGS is
    Port ( C : in  STD_LOGIC;
           N : in  STD_LOGIC;
           V : in  STD_LOGIC;
           Z : in  STD_LOGIC;
           H : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           CO : out  STD_LOGIC;
           NO : out  STD_LOGIC;
           VO : out  STD_LOGIC;
           ZO : out  STD_LOGIC;
           H0 : out  STD_LOGIC);
end REG_FLAGS;

architecture Behavioral of REG_FLAGS is
signal F		  :  STD_LOGIC_VECTOR (4 downto 0):="00000";
begin
	process(clk)
	begin
		if clk'event and clk='1' then
				F(4)<=C;
				F(3)<=N;
				F(2)<=V;
				F(1)<=Z;
				F(0)<=H;
		end if;
	end process;
	CO<=F(4);
	NO<=F(3);
	VO<=F(2);
	ZO<=F(1);
	H0<=F(0);

end Behavioral;

