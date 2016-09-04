
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
begin
	process(R,S,UPA,Cin)
	variable Fa		  :  STD_LOGIC_VECTOR (7 downto 0);
	variable			  	 Ht :   STD_LOGIC:='0';
	variable           Ct :   STD_LOGIC:='0';
	variable           Vt :   STD_LOGIC:='0';
	begin
		
			case UPA is
						when "000" => 
									     Fa:=R+S+Cin;
										  Ht := ( R(3) AND S(3) ) OR ( S(3) AND ( NOT Fa(3) )) OR ((NOT Fa(3)) AND R(3));--OK
										  C  <= (R(7) AND S(7)) or  (S(7) AND (NOT Fa(7))) OR ((NOT Fa(7)) AND R(7));
										  Vt := (NOT R(7)) AND ( R(6)AND R(5) AND R(4)AND R(3) AND R(2)AND R(1) AND R(0));
						when "001" => 
									     Fa:=S-R- NOT Cin;
										  Ht := '0';
										  Ct := ((NOT S(7)) AND R(7)) OR (R(7) AND Fa(7)) OR (Fa(7) AND (NOT S(7)));
										  Vt := ( S(7) AND (NOT R(7)) AND (NOT Fa(7))  ) OR ( (NOT S(7)) AND R(7) AND Fa(7) );
						when "010" => 
									     Fa:=R-S- NOT Cin;
										  Ht := '0';
										  Ct := ((NOT R(7)) AND S(7)) OR (S(7) AND Fa(7)) OR (Fa(7) AND (NOT R(7)));
										  Vt := ( R(7) AND (NOT S(7)) AND (NOT Fa(7))  ) OR ( (NOT R(7)) AND S(7) AND Fa(7) );
						when "011" => 
										  Fa(7):=R(7) or S(7);
										  Fa(6):=R(6) or S(6);
										  Fa(5):=R(5) or S(5);
										  Fa(4):=R(4) or S(4);
										  Fa(3):=R(3) or S(3);
										  Fa(2):=R(2) or S(2);
										  Fa(1):=R(1) or S(1);
										  Fa(0):=R(0) or S(0);
										  Ht:='0';
										  Ct:='0';
										  Vt:='0';
						when "100" => 
										  Fa:=R AND S;
										  Ht:='0';
										  Ct:='0';
										  Vt:='0';
						when "101" => 
										  Fa:= (not R) AND S;
										  Ht:='0';
										  Ct:='0';
										  Vt:='0';
						when "110" => 
										  Fa:=R xor S;
										  Ht:='0';
										  Ct:='0';
										  Vt:='0';
						when others =>
										  Fa:=R nor S;
										  Ht:='0';
										  Ct:='0';
										  Vt:='0';
				end case;
				
				 F<=Fa;
				 H<=Ht;
				 --C<=Ct;
				 V<=Vt; 
				 Z <= NOT (Fa(7)OR Fa(6)OR Fa(5)OR Fa(4)OR Fa(3)OR Fa(2)OR Fa(1)OR Fa(0));
				 N <= Fa(7);
	end process;	
	
end Behavioral;

