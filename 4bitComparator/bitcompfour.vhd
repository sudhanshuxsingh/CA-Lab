----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:52:41 04/09/2020 
-- Design Name: 
-- Module Name:    bitcompfour - Behavioral 
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

entity bitcompfour is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           g : out  STD_LOGIC; --for a>b
           l : out  STD_LOGIC; --for a<b
           e : out  STD_LOGIC); --for a=b
end bitcompfour;

architecture Behavioral of bitcompfour is

begin
process(a,b)
variable k: STD_LOGIC;
begin
g<='0';l<='0';e<='0';k:='0';
for i in 3 downto 0 loop
	if(a(i)>b(i) and k='0') then
		g<='1';
		k:='1';
	elsif(a(i)<b(i) and k='0') then
		l<='1';
		k:='1';
	end if;
end loop;
if(k='0') then
	e<='1';
end if;
end process;
end Behavioral;

