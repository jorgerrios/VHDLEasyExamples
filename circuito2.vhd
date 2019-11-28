----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:12:33 10/12/2017 
-- Design Name: 
-- Module Name:    circuito2 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity circuito2 is
 Port ( a : in STD_LOGIC;
 b : in STD_LOGIC;
 c : in STD_LOGIC;
 f2 : out STD_LOGIC);
end circuito2;

architecture Behavioral of circuito2 is
signal y1 : STD_LOGIC;
signal y2: STD_LOGIC;
signal y3 : STD_LOGIC;

begin

y1<= a or b;
y2<= (not a) or (not b);
y3<= (not a) or (not c);
f2<= y1 and y2 and y3;

end Behavioral;

