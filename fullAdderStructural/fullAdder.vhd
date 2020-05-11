----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:47:05 04/08/2020 
-- Design Name: 
-- Module Name:    fullAdder - Structural 
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

entity halfAdder is
	port(a_h:in STD_LOGIC; 
		  b_h:in STD_LOGIC;
		  sum_h:out STD_LOGIC;
		  carry_h:out STD_LOGIC);
end halfAdder;
architecture arch of halfAdder is
begin
	sum_h<=a_h xor b_h;
	carry_h<= a_h and b_h;
end arch;

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

entity fullAdder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end fullAdder;

architecture Structural of fullAdder is

component orGate is
port(a_o:in STD_LOGIC;
	  b_o:in STD_LOGIC;
	  c_o:out STD_LOGIC);
end component;

component halfAdder is
port(a_h:in STD_LOGIC;
	  b_h:in STD_LOGIC;
	  sum_h:out STD_LOGIC;
	  carry_h:out STD_LOGIC);
end component;

signal x,y,z:STD_LOGIC;

begin

f0: halfAdder port map(a_h=>a,b_h=>b,sum_h=>x,carry_h=>y);
f1: halfAdder port map(a_h=>x,b_h=>cin,sum_h=>s,carry_h=>z);
f2: orGate port map(a_o=>y,b_o=>z,c_o=>cout);

end Structural;

