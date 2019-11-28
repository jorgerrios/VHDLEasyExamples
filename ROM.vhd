
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ROM is
 Port ( addr : in STD_LOGIC_VECTOR (2 downto 0);
 data : out STD_LOGIC_VECTOR (7 downto 0));
end ROM;

architecture Behavioral of ROM is
begin

data <=  "00000000" when addr = "000" else
	"00000001" when addr = "001" else
	"00000110" when addr = "010" else
	"00010011" when addr= "011" else
	"00101010" when addr ="100" else
	"01001101" when addr= "101" else
	"01111110" when addr= "110" else
	"10111111" when addr= "111";
	
end Behavioral;



