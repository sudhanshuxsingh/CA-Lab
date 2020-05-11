----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:33:04 04/29/2020 
-- Design Name: 
-- Module Name:    Dflipflop - Behavioral 
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

entity Dflipflop is
    Port ( D : in  STD_LOGIC;
			  Clck : in STD_LOGIC;
           Q : out  STD_LOGIC;
           Qcomp : out  STD_LOGIC);
end Dflipflop;

architecture Behavioral of Dflipflop is
signal temp, tempn:std_logic:='0';
begin
process(D,Clck)
begin
if rising_edge(Clck) then
	temp<=D;
	tempn<=not D;
end if;
end process;
Q<=temp; Qcomp<=tempn;
end Behavioral;

