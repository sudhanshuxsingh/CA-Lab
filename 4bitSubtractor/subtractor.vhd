----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:25:21 05/11/2020 
-- Design Name: 
-- Module Name:    subtractor - Behavioral 
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

entity subtractor is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           d : out  STD_LOGIC_VECTOR (3 downto 0);
           bout : out  STD_LOGIC);
end subtractor;

architecture Behavioral of subtractor is

begin
process(a,b)
variable u: STD_LOGIC_VECTOR(4 downto 0);
begin
u(0):='0';
for i in 0 to 3 loop
	d(i)<= a(i) xor b(i) xor u(i);
	u(i+1):= ((not a(i)) and u(i)) or ((not a(i)) and b(i)) or (b(i) and u(i));
--	 Bin (A XOR B)' + A'B  // A'Bin + A'B + BBin
end loop;
bout<=u(4);
end process;
end Behavioral;

