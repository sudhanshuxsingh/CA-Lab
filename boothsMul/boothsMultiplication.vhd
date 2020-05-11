----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:13 05/11/2020 
-- Design Name: 
-- Module Name:    booths - Behavioral 
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
--	----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity booths is
    Port ( m : in  STD_LOGIC_VECTOR (3 downto 0); --multiplicand
           q : in  STD_LOGIC_VECTOR (3 downto 0); --multiplier
           r : out  STD_LOGIC_VECTOR (7 downto 0));
end booths;

architecture Behavioral of booths is
begin
process(m,q)
variable a:STD_LOGIC_VECTOR(8 downto 0);
begin
a:="000000000";
a(4 downto 1):=q(3 downto 0);
for i in 0 to 3 loop
	if(a(1)='1' and a(0)='0') then
		a(8 downto 5):= a(8 downto 5)- m;
	elsif(a(1)='0' and a(0)='1') then
		a(8 downto 5):= a(8 downto 5)+ m; 
	end if;
	for j in 0 to 7 loop
		a(j):=a(j+1);
	end loop;
end loop;
r(7 downto 0)<=a(8 downto 1);
end process;		
end Behavioral;

