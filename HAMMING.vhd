
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HAMMING is
 Port ( byte1 : in STD_LOGIC_VECTOR (7 downto 0);
byte2 : in STD_LOGIC_VECTOR (7 downto 0);
 distance : out STD_LOGIC_VECTOR (7 downto 0));
end HAMMING;



architecture Behavioral of HAMMING is
signal C: STD_LOGIC_VECTOR (7 downto 0);
signal X : STD_LOGIC_VECTOR (9 downto 0);

component FA
	Port ( a : in STD_LOGIC;
 b : in STD_LOGIC;
 cin : in STD_LOGIC;
 s : out STD_LOGIC;
 cout : out STD_LOGIC);
 end component;

begin
distance(7)<= '0';
distance(6)<= '0';
distance(5)<= '0';
distance(4)<= '0';



C(0) <= byte1(0) xor byte2(0);
C(1) <= byte1(1) xor byte2(1);
C(2) <= byte1(2) xor byte2(2);
C(3) <= byte1(3) xor byte2(3);
C(4) <= byte1(4) xor byte2(4);
C(5) <= byte1(5) xor byte2(5);
C(6) <= byte1(6) xor byte2(6);
C(7) <= byte1(7) xor byte2(7);

U1: FA port map (C(7),C(0),'0',X(0),X(1));
U2: FA port map (C(6),C(4),C(1),X(2),X(3));
U3: FA port map (C(5),C(3),C(2),X(4),X(5));
U4: FA port map (X(0),X(2),X(4),distance(0),X(6));
U5: FA port map (X(1),X(3),X(5),X(7),X(8));
U6: FA port map (X(6),X(7),'0',distance(1),X(9));
U7: FA port map (X(9),X(8),'0',distance(2),distance(3));




end Behavioral;


