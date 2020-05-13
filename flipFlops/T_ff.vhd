----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
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

entity T_FF is
    Port ( T : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Qnot_Q : out  STD_LOGIC_VECTOR (1 downto 0));
end T_FF;
--  Qnot_Q(1) is Qnot; Qnot_Q(0) is Q
-- T  Q  Qnot
-- 0  No Change
-- 1  Toggle

architecture AR1 of T_FF is
signal tQ : STD_LOGIC := '0';
begin
	process(CLK)
	begin
		if ((CLK = '1') and (CLK'event)) then
			if T = '1' then tQ <= not tQ; --Since (TOGGLE)
			else tQ <= tQ; --Since (NO CHANGE)
			end if;
		end if;
	end process;
	Qnot_Q <= (not tQ) & tQ;
end AR1;