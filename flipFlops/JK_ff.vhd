----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:03:44 04/29/2020 
-- Design Name: 
-- Module Name:    JKbehav - Behavioral 
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

entity JKbehav is
    Port ( J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Clck : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qcomp : out  STD_LOGIC);
end JKbehav;

architecture Behavioral of JKbehav is
signal temp, tempn:std_logic:='0';
begin
process(J,K,Clck)
begin
if rising_edge(Clck) then
	if J='0' and K='0' then
		temp<=temp;
		tempn<= not temp;
	elsif J='0' and K='1' then
		temp<='0';
		tempn<= '1';
	elsif J='1' and K='0' then
		temp<='1';
		tempn<= '0';
	else
		temp <= not temp; 
		tempn <=not temp ;
	end if;
end if;
end process;
Q <= temp;	Qcomp <= tempn;

end Behavioral;

