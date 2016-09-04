
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
    Port ( Cin : in  STD_LOGIC;
           UPA : in  STD_LOGIC_VECTOR (6 downto 4);
           R : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (7 downto 0);
			  F : out  STD_LOGIC_VECTOR (7 downto 0);
           H : out  STD_LOGIC;
           Z : out  STD_LOGIC;
           N : out  STD_LOGIC;
           C : out  STD_LOGIC;
           V : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
signal			  Ht :   STD_LOGIC:='0';
signal           Ct :   STD_LOGIC:='0';
signal           Vt :   STD_LOGIC:='0';
begin
	process(R,S,UPA)
	variable Fa		  :  STD_LOGIC_VECTOR (7 downto 0);
	begin
		
			case UPA is
						when "000" => F<=R-S+Cin;
									     Fa:=R+S+Cin;
										  Ht <= ( R(3) AND S(3) ) OR ( S(3) AND ( NOT Fa(3) )) OR ((NOT Fa(3)) AND R(3));
										  Ct <= (R(7) AND S(7)) or  (S(7) AND (NOT Fa(7))) OR ((NOT Fa(7)) AND R(7));
										  Vt <= (NOT R(7)) AND ( R(6)AND R(5) AND R(4)AND R(3) AND R(2)AND R(1) AND R(0));
						when "001" => F<=S-R- NOT Cin;
									     Fa:=S-R- NOT Cin;
										  Ht <= '0';
										  Ct <= ((NOT S(7)) AND R(7)) OR (R(7) AND Fa(7)) OR (Fa(7) AND (NOT S(7)));
										  Vt <= ( S(7) AND (NOT R(7)) AND (NOT Fa(7))  ) OR ( (NOT S(7)) AND R(7) AND Fa(7) );
						when "010" => F<=R-S- NOT Cin;
									     Fa:=R-S- NOT Cin;
										  Ht <= '0';
										  Ct <= ((NOT R(7)) AND S(7)) OR (S(7) AND Fa(7)) OR (Fa(7) AND (NOT R(7)));
										  Vt <= ( R(7) AND (NOT S(7)) AND (NOT Fa(7))  ) OR ( (NOT R(7)) AND S(7) AND Fa(7) );
						when "011" => F<=R or S;
										  Fa:=R or S;
						when "100" => F<=R AND S;
										  Fa:=R AND S;
						when "101" => F<=not R and S;
										  Fa:= not R AND S;
						when "110" => F<=R xor S;
										  Fa:=R xor S;
						when others =>F<=R nor S;
										  Fa:=R nor S;
				end case;
			
				 Z <= NOT (Fa(7)OR Fa(6)OR Fa(5)OR Fa(4)OR Fa(3)OR Fa(2)OR Fa(1)OR Fa(0));
				 N <= Fa(7);
	end process;	
end Behavioral;

