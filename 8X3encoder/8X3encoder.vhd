----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Sudhanshu Singh
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Enc8x3 is
    Port ( ip : in  STD_LOGIC_VECTOR (7 downto 0);
           op : out  STD_LOGIC_VECTOR (2 downto 0));
end Enc8x3;

architecture Behavioral of Enc8x3 is

begin
process (ip)
begin
	for x in 0 to 7
	loop
		if ip(x) = '1' then
			op <= conv_std_logic_vector(x,3);
		end if;
	end loop;
end process;
end Behavioral;