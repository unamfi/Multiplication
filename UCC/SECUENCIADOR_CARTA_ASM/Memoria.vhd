
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Memoria is
    Port ( EDO_PRESENTE : in  STD_LOGIC_VECTOR (3 downto 0);
           Liga 			: out  STD_LOGIC_VECTOR(3 downto 0);
           Prueba 		: out  STD_LOGIC_VECTOR(1 downto 0);
           MI 				: out  STD_LOGIC_VECTOR (2 downto 0);
			  --SALIDAS
			  WB 				: out  STD_LOGIC;
			  WA 				: out  STD_LOGIC;
			  E0A 			: out  STD_LOGIC;
			  E1A 			: out  STD_LOGIC;
			  E0B 			: out  STD_LOGIC;
			  E1B 			: out  STD_LOGIC;
			  DUPA 			: out  STD_LOGIC;
			  OEUPA 			: out  STD_LOGIC;
			  UPAL			: out  STD_LOGIC_VECTOR (3 downto 0);
			  UPAM			: out  STD_LOGIC_VECTOR (6 downto 4);
			  UPAH			: out  STD_LOGIC_VECTOR (9 downto 7);
			  HBA				: out  STD_LOGIC;
			  HBB				:out  STD_LOGIC
			  );
end Memoria;

architecture Behavioral of Memoria is
signal TEMP: STD_LOGIC_VECTOR (31 downto 0):=X"00000000";
begin
	process(EDO_PRESENTE )
	begin
		case EDO_PRESENTE is
				when "0000" => TEMP<=X"000C3003";
				when "0001" => TEMP<=X"00027000";
				when "0010" => TEMP<=X"000F30C3";
				when "0011" => TEMP<=X"000C3333";
				when "0100" => TEMP<=X"000A002B";
				when "0101" => TEMP<=X"0EFC1003";--
				when "0110" => TEMP<=X"118F3403";
				when "0111" => TEMP<=X"118FF207";
				when "1000" => TEMP<=X"000C3A03";
				--
				--when "1001" => TEMP<=X"000C1803";
				--
				when "1001" => TEMP<=X"000C3803";--
				when "1010" => TEMP<=X"0AAAA02F";
				when "1011" => TEMP<=X"000C10CB";
				when "1100" => TEMP<=X"000C30CB";
				when "1101" => TEMP<=X"01848003";
			 	when others =>TEMP<=X"018C3003";
		end case;
	end process;
	
Liga	<=TEMP(28 downto 25);
MI		<=TEMP(24 downto 22);
Prueba<=TEMP(21 downto 20);
WB		<=TEMP(19);
WA		<=TEMP(18);
E0A	<=TEMP(17);
E1A	<=TEMP(16);
E0B	<=TEMP(15);
E1B	<=TEMP(14);
DUPA	<=TEMP(13);
OEUPA <=TEMP(12);	
UPAH(9)<=TEMP(11);	
UPAH(8)<=TEMP(10);	
UPAH(7)<=TEMP(9);	
UPAM(6)<=TEMP(8);	
UPAM(5)<=TEMP(7);	
UPAM(4)<=TEMP(6);	
UPAL(3)<=TEMP(5);	
UPAL(2)<=TEMP(4);	
UPAL(1)<=TEMP(3);
UPAL(0)<=TEMP(2);	
HBB<=TEMP(1);	
HBA<=TEMP(0);
end Behavioral;

