----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:54:09 04/08/2020 
-- Design Name: 
-- Module Name:    fullSubtractor - Structural 
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

entity orGate is
	port(a_o:in STD_LOGIC; 
		  b_o:in STD_LOGIC;
		  c_o:out STD_LOGIC);
end orGate;
architecture arch of orGate is
begin
	c_o<= a_o or b_o;
end arch;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity notGate is
	port(a_n:in STD_LOGIC; 
		  b_n:out STD_LOGIC);
end notGate;
architecture arch of notGate is
begin
	b_n<=not a_n;
end arch;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity andGate is
	port(a_a:in STD_LOGIC; 
		  b_a:in STD_LOGIC;
		  c_a:out STD_LOGIC);
end andGate;
architecture arch of andGate is
begin
	c_a<= a_a and b_a;
end arch;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xorGate is
	port(a_x:in STD_LOGIC; 
		  b_x:in STD_LOGIC;
		  c_x:out STD_LOGIC);
end xorGate;
architecture arch of xorGate is
begin
	c_x<= a_x xor b_x;
end arch;



library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullSubtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           bout : out  STD_LOGIC;
           d : out  STD_LOGIC);
end fullSubtractor; 

architecture Structural of fullSubtractor is

component orGate is
port(a_o:in STD_LOGIC;
	  b_o:in STD_LOGIC;
	  c_o:out STD_LOGIC);
end component;

component xorGate is
port(a_x:in STD_LOGIC;
	  b_x:in STD_LOGIC;
	  c_x:out STD_LOGIC); 
end component;

component notGate is
port(a_n:in STD_LOGIC;
	  b_n:out STD_LOGIC);
end component;

component andGate is
port(a_a:in STD_LOGIC;
	  b_a:in STD_LOGIC;
	  c_a:out STD_LOGIC);
end component;

signal w,x,y,z:STD_LOGIC;

begin

f0:xorGate port map (a_x=>a,b_x=>b,c_x=>x);
f1:xorGate port map (a_x=>x,b_x=>bin,c_x=>d);
f2:notGate port map (a_n=>a,b_n=>y);
f3:andGate port map (a_a=>y,b_a=>b,c_a=>z);
f4:notGate port map (a_n=>x,b_n=>y);
f5:andgate port map (a_a=>y,b_a=>bin,c_a=>w);
f6:orGate port map (a_o=>w,b_o=>z,c_o=>bout);

end Structural;

