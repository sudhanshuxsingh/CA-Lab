----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:16:40 05/12/2020 
-- Design Name: 
-- Module Name:    nonRestoring_207 - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nonRestoring_207 is
    Port ( m : in  STD_LOGIC_VECTOR (4 downto 0);
           q : in  STD_LOGIC_VECTOR (3 downto 0);
           r : out  STD_LOGIC_VECTOR (4 downto 0);
           qt : out  STD_LOGIC_VECTOR (3 downto 0));
end nonRestoring_207;

architecture Behavioral of nonRestoring_207 is

begin
process(m,q)
variable reg:std_logic_vector(8 downto 0);
begin
reg(8 downto 4):="00000";
reg(3 downto 0):=q(3 downto 0);

-- After Initialization of Register
-- 8	7	6	5	4	3	2	1	0	<==bit position
-- ##### A #####  #### Q ###
-- 0	0	0	0	0	---- q ---

for n in 3 downto 0 loop
	if(reg(8)='0') then
		for i in 7 downto 0 loop   -- to perform left shift of A ang Q present inside reg 
			reg(i+1):=reg(i);
		end loop;
		reg(8 downto 4):=reg(8 downto 4)-m;
	else
		for i in 7 downto 0 loop   -- to perform left shift of A ang Q present inside reg 
			reg(i+1):=reg(i);
		end loop;
		reg(8 downto 4):=reg(8 downto 4)+m;  -- subtracting divisor from a
	end if;
	if(reg(8)='0') then
		reg(0):='1';
	else
		reg(0):='0';
	end if;
end loop;
if(reg(8)='1') then
		reg(8 downto 4):=reg(8 downto 4)+m;
end if;
r<=reg(8 downto 4);
qt<=reg(3 downto 0);
end process;
end Behavioral;

