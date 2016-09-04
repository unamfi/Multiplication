
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UPA_OUT is
    Port ( Cin	: in  STD_LOGIC;
			  A 	: in  STD_LOGIC_VECTOR (7 downto 0);
           B 	: in  STD_LOGIC_VECTOR (7 downto 0);
           F 	: in  STD_LOGIC_VECTOR (7 downto 0);
           UPA : in  STD_LOGIC_VECTOR (9 downto 7);
           clk : in  STD_LOGIC;
           OEUPA 	: in  STD_LOGIC;
           YUPA 	: out  STD_LOGIC_VECTOR (7 downto 0);
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
	   signal Qlatch		: STD_LOGIC_VECTOR (7 downto 0):=x"00";
		signal Ylatch		: STD_LOGIC_VECTOR (7 downto 0):=x"00";
begin
			process (clk,UPA)
			
			variable Qi				: STD_LOGIC_VECTOR (7 downto 0):=x"AA";
			variable Yi				: STD_LOGIC_VECTOR (7 downto 0):=x"AA";
			
			begin
			
				if rising_edge(clk) then
						case UPA is
									when "000" =>
												Qi	 :=F;
												Yi  :=F;
									when "001" => 
												Yi  :=F;
									when "010" => 
											   
												Yi  :=A;
									when "011" => 
												
												Yi  :=B;
									when "100" => 
												Yi(6 downto 0) := Yi(7 downto 1);
												Yi(7):=Y7IN;
												--OK ESTO ES PARA REALIZAR MULTIMPLICACIONES
									when "101" => 
												
												Qi(6 downto 0) := Qi(7 downto 1);
												Qi(7):=Q7IN;
												--OK ESTO ES PARA REALIZAR MULTIMPLICACIONES
									when "110" =>
												Yi(7 downto 1) := Yi(6 downto 0);
												Yi(0):=Y0IN;
									when others =>Qi(7 downto 1) := Qi(6 downto 0);
													  Qi(0):=QOIN;
						end case; 
					
				end if;
				Ylatch<=Yi;
				Qlatch<=Qi;	
			end process;
			
			YUPA<= Ylatch when ( OEUPA='0') else
				    "ZZZZZZZZ";
			Q	 <= Qlatch;
			
			QOOUT 	<=Qlatch(0);
         Q7OUT		<=Qlatch(7);
			Y0OUT 	<=Ylatch(0);
         Y7OUT		<=Ylatch(7);
			
end Behavioral;

