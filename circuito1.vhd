----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jorge Rodriguez Rios
-- 
-- Create Date:    18:35:25 10/08/2017 
-- Design Name: 
-- Module Name:    circuito1 - Behavioral 
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

entity circuito1 is
 Port ( a : in STD_LOGIC;
 b : in STD_LOGIC;
 c : in STD_LOGIC;
 f1 : out STD_LOGIC);
end circuito1;

architecture Behavioral of circuito1 is
signal y1 : STD_LOGIC;
signal y2 : STD_LOGIC;

begin
y1 <= (not a) and b;
y2 <= a and (not b) and (not c);
f1 <= y1 or y2;

end Behavioral;

