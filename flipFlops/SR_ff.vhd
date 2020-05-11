----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:43:34 04/29/2020 
-- Design Name: 
-- Module Name:    SRbehav - Behavioral 
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

entity SRbehav is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Clck : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qcomp : out  STD_LOGIC);
end SRbehav;

architecture Behavioral of SRbehav is
signal temp, tempn:std_logic:='0';
begin
process(S,R,Clck)
begin
if rising_edge(Clck) then
	if S='0' and R='0' then
		temp<=temp;
		tempn<= not temp;
	elsif S='0' and R='1' then
		temp<='0';
		tempn<= '1';
	elsif S='1' and R='0' then
		temp<='1';
		tempn<= '0';
	else
		temp <= 'X'; 
		tempn <= 'X' ;
	end if;
end if;
end process;
Q <= temp;	Qcomp <= tempn;
end Behavioral;

