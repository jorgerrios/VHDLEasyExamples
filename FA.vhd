
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA is
 Port ( a : in STD_LOGIC;
 b : in STD_LOGIC;
 cin : in STD_LOGIC;
 s : out STD_LOGIC;
 cout : out STD_LOGIC);
end FA;

architecture Behavioral of FA is

begin

cout <= (a and b) or (a and cin) or (cin and b);
s<= cin xor a xor b;
end Behavioral;


