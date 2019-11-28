
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

entity ALU is
 Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
 b : in STD_LOGIC_VECTOR (7 downto 0);
 control : in STD_LOGIC_VECTOR (2 downto 0);
 resultado : out STD_LOGIC_VECTOR (7 downto 0);
 error : out STD_LOGIC);
end ALU;


architecture Behavioral of ALU is
signal R_suma: STD_LOGIC_VECTOR(7 downto 0);
signal R_resta: STD_LOGIC_VECTOR(7 downto 0);
signal R_mitad: STD_LOGIC_VECTOR(7 downto 0);
signal eDifi: STD_LOGIC;
signal dLaBuena: STD_LOGIC_VECTOR(7 downto 0);
signal oc: STD_LOGIC_VECTOR(2 downto 0);
signal s_oper_com: STD_LOGIC_VECTOR(7 downto 0);

Component HAMMING is
 Port ( byte1 : in STD_LOGIC_VECTOR (7 downto 0);
byte2 : in STD_LOGIC_VECTOR (7 downto 0);
 distance : out STD_LOGIC_VECTOR (7 downto 0));
end Component ;

component ROM is
 Port ( addr : in STD_LOGIC_VECTOR (2 downto 0);
 data : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component CP is
 Port ( e : in STD_LOGIC_VECTOR (7 downto 0);
 y : out STD_LOGIC_VECTOR (2 downto 0);
 idle : out STD_LOGIC);
end component; 

begin
R_suma <= a + b;
R_resta <= a - b;
R_mitad(0)<= a(1);
R_mitad(1)<= a(2);
R_mitad(2)<= a(3);
R_mitad(3)<= a(4);
R_mitad(4)<= a(5);
R_mitad(5)<= a(6);
R_mitad(6)<= a(7);
R_mitad(7)<= a(7);

U1: HAMMING port map(a,b,dLaBuena);
U2: CP port map(a,oc,eDifi);
U3: ROM port map(oc,s_oper_com);

resultado <= R_suma when control = "000" else
				 R_resta when control = "001" else
				 (not a) when control = "010" else
				 (a nand b) when control = "011" else
				 (a nor b) when control = "100" else
				 R_mitad when control = "101" else
				 dLaBuena when control = "110" else
				 s_oper_com when control = "111";
				 
				 



with control select error <=
		((a(7) xnor b(7)) and (a(7) xor R_suma(7))) when "000",
		((a(7) xor b(7)) and (a(7) xor R_resta(7))) when "001",
		'0' when "010",
		'0' when "011",
		'0' when "100",
		a(0) when "101",
		'0' when "110",
		(a(7) or eDifi) when "111",
		'0' when others;
		
		


end Behavioral;

