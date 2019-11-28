
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CP is
 Port ( e : in STD_LOGIC_VECTOR (7 downto 0);
 y : out STD_LOGIC_VECTOR (2 downto 0);
 idle : out STD_LOGIC);
end CP;


architecture Behavioral of CP is

signal x: STD_LOGIC;
signal sal: STD_LOGIC_VECTOR(2 downto 0);
begin
x<= (not e(7)) and (not e(6)) and (not e(5)) and (not e(4)) and (not e(3)) and (not e(2)) and (not e(1)) and (not e(0));

idle<= x;

 sal <= "111" when e(7) = '1' else 
"110" when e(6) = '1' else
"101" when e(5) = '1' else
"100" when e(4) = '1' else
"011" when e(3) = '1' else
"010" when e(2) = '1' else
"001" when e(1) = '1' else
"000";

y <= "000" when x = '1' else 
sal;
end Behavioral;
