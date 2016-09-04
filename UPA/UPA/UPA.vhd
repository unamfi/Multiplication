
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
	process(UPA)
	begin
		case UPA is
				when x"0" => R <= A; 
								 S <= x"00"; 
								 INC <= '0'; 
								 RESET<= '0'; 
				when x"1" => R <= A; 
								 S <= B; 
								 INC <= '0'; 
								 RESET<= '0';
				when x"2" => R <= Q; 
								 S <= x"00"; 
								 INC <= '0'; 
								 RESET<= '0';
				when x"3" => R <= B; 
								 S <= x"00"; 
								 INC <= '0'; 
								 RESET<= '0';
				when x"4" => R <= x"00"; 
								 S <= A; 
								 INC <= '0'; 
								 RESET<= '0';
				when x"5" => R <= D; 
								 S <= A; 
								 INC <= '0'; 
								 RESET<= '0';
			  	when x"6" => R <= D; 
								 S <= Q; 
								 INC <= '0'; 
								 RESET<= '0';
				when x"7" => R <= D; 
								 S <= x"00"; 
								 INC <= '0'; 
								 RESET<= '0';
				when x"8" => R <= D; 
								 S <= B; 
								 INC <= '0'; 
								 RESET<= '0';
				when x"9" => R <= Q; 
								 S <= B; 
								 INC <= '0'; 
								 RESET<= '0';
				when x"A" => INC <= '0'; 
								 RESET<= '1';
				when x"B" => INC <= '1'; 
								 RESET<= '0';
				when x"C" => INC <= '0'; 
								 RESET<= '0';
			 	when others =>INC <= '0'; 
								  RESET<= '0';
		end case;
	end process;



end Behavioral;

