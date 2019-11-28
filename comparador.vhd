----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:25:19 10/12/2017 
-- Design Name: 
-- Module Name:    comparador - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity comparador is
 Port ( dato1 : in STD_LOGIC;
 dato2 : in STD_LOGIC;
 Y : out STD_LOGIC);
end comparador;

architecture Behavioral of comparador is

begin

y<= '1' when dato1=dato2 else '0';

end Behavioral;

