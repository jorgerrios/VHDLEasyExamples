----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:33:11 10/12/2017 
-- Design Name: 
-- Module Name:    main - Behavioral 
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

entity main is
 Port ( a : in STD_LOGIC;
 b : in STD_LOGIC;
 c : in STD_LOGIC;
 compara : out STD_LOGIC);
end main;

architecture Behavioral of main is
signal y1: STD_LOGIC;
signal y2: STD_LOGIC;

component circuito1 is
	Port ( a : in STD_LOGIC;
	b : in STD_LOGIC;
	c : in STD_LOGIC;
	f1 : out STD_LOGIC);
end component;
  
component circuito2 is
	Port ( a : in STD_LOGIC;
	b : in STD_LOGIC;
	c : in STD_LOGIC;
	f2 : out STD_LOGIC);
end component;

component comparador  is
	Port ( dato1 : in STD_LOGIC;
	dato2 : in STD_LOGIC;
	Y : out STD_LOGIC);
end component;
	
begin

U1: circuito1 port map(a,b,c,y1);
U2: circuito2 port map(a,b,c,y2);
U3: comparador port map (y1,y2,compara);

end Behavioral;

