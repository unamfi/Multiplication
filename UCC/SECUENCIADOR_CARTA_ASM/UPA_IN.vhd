
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity UPA_IN is
    Port ( UPA : in  STD_LOGIC_VECTOR (3 downto 0);
           A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           D : in  STD_LOGIC_VECTOR (7 downto 0);
           Q : in  STD_LOGIC_VECTOR (7 downto 0);
           R : out  STD_LOGIC_VECTOR (7 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0);
			  INC 	: out  STD_LOGIC;
			  RESET	: out  STD_LOGIC
			  );
end UPA_IN;

architecture Behavioral of UPA_IN is
begin
	with UPA select
	R <= 		A when x"0",
				A when x"1",
            Q when x"2",
			   B when x"3",
		  x"00" when x"4",
			   D when x"5",
			   D when x"6",
			   D when x"7",
			   D when x"8",
			   Q when x"9",
			   Q when x"C",
			 x"00" when others;
	with UPA select
	S <= 	 x"00" when x"0",
				B when x"1",
          x"00" when x"2",
			 x"00" when x"3",
		      A when x"4",
			   A when x"5",
			   Q when x"6",
			 x"00"when x"7",
			   B when x"8",
			   B when x"9",
			   A when x"C",
			 x"00" when others;
			 
	with UPA select
	RESET <= 
			 '1' when x"A",
			 '0' when others;
			 
	with UPA select
	INC <= '1' when x"B",
			   '0' when others;


end Behavioral;

