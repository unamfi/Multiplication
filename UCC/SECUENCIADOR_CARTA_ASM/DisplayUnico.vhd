----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:56:28 09/25/2012 
-- Design Name: 
-- Module Name:    DisplayUnico - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity DisplayUnico is
    Port ( Disp : out  STD_LOGIC_VECTOR (2 downto 0));
end DisplayUnico;

architecture Behavioral of DisplayUnico is

begin
    Disp<="111";

end Behavioral;

