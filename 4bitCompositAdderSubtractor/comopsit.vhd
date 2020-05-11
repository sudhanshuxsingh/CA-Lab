----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:48:13 05/11/2020 
-- Design Name: 
-- Module Name:    composit - Behavioral 
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

entity composit is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           mode : in  STD_LOGIC;
           c : out  STD_LOGIC_VECTOR (3 downto 0);
           mout : out  STD_LOGIC);
end composit;

architecture Behavioral of composit is
begin
process(a,b,mode)
variable u: std_logic_vector(4 downto 0); --to store carry/borrow
variable m: std_logic_vector(3 downto 0); --modified input
begin
u(0):=mode;
for i in 0 to 3 loop
	m(i):=b(i) xor mode;
	c(i)<=a(i) xor m(i) xor u(i);
	u(i+1):= (a(i) and m(i)) or (m(i) and u(i)) or (u(i) and a(i));
end loop;
mout<=u(4);
end process;
end Behavioral;

