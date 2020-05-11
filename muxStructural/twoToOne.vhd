----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:11:48 04/15/2020 
-- Design Name: 
-- Module Name:    twoToOne - Structural 
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

entity twoToOne is
    Port ( s : in  STD_LOGIC;
			  e : in STD_LOGIC;
           i_0 : in  STD_LOGIC;
           i_1 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end twoToOne;

architecture Structural of twoToOne is

begin
process(s)
begin

y<=(e and ((((not s) and i_0) or (s and i_1))));

end process;
end Structural;

