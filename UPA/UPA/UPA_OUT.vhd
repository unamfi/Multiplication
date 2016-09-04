
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UPA_OUT is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           F : in  STD_LOGIC_VECTOR (7 downto 0);
           UPA : in  STD_LOGIC_VECTOR (9 downto 7);
           clk : in  STD_LOGIC;
           OEUPA : in  STD_LOGIC;
           YUPA : out  STD_LOGIC_VECTOR (7 downto 0);
           Y0IN 	: in  STD_LOGIC;
			  Y7IN 	: in  STD_LOGIC;
			  Y0OUT 	: OUT  STD_LOGIC;
           Y7OUT 	: out  STD_LOGIC;
			  QOIN 	: in  STD_LOGIC;
           Q7IN 	: in  STD_LOGIC;
			  QOOUT 	: out  STD_LOGIC;
           Q7OUT 	: out  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end UPA_OUT;

architecture Behavioral of UPA_OUT is
signal Qi				: STD_LOGIC_VECTOR (7 downto 0);
signal Yi				: STD_LOGIC_VECTOR (7 downto 0);
begin
			process (clk)
			
			begin
				if clk'event and clk='1' then
						case UPA is
									when "000" =>
												
												Qi	 <=F;
												Yi  <=F;
									when "001" => 
												
												Yi  <=F;
									when "010" => 
											   
												Yi  <=A;
									when "011" => 
												
												Yi  <=B;
									when "100" => 
												Yi(6 downto 0) <= Yi(7 downto 1);
												Yi(7)<=Y7IN;
									when "101" => 
												Qi(6 downto 0) <= Qi(7 downto 1);
												Qi(7)<=Q7IN;
									when "110" =>
												Yi(7 downto 1) <= Yi(6 downto 0);
												Yi(0)<=Y0IN;
									when others =>Qi(7 downto 1) <= Qi(6 downto 0);
													  Qi(0)<=QOIN;
						end case; 
				end if;
				if OEUPA='0' then
					YUPA<=Yi;
					Q<=Qi;
				else
					YUPA<="ZZZZZZZZ";
				end if;
			end process;
			
end Behavioral;

