----------------------------------------------------------------------------------
-- Company: IEM Lab
-- Engineer: Sudhanshu Singh
-- 
-- Create Date:    12:38:26 04/01/2020 
-- Design Name: 
-- Module Name:    restoreDiv - Behavioral 
-- Project Name: Restoring Division Algorithm
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

entity restoreDiv is
    Port ( m : in  STD_LOGIC_VECTOR (4 downto 0); --Divisor
           q : in  STD_LOGIC_VECTOR (3 downto 0); --Divident
           r : out  STD_LOGIC_VECTOR (4 downto 0);	--remainder
           qt : out  STD_LOGIC_VECTOR (3 downto 0)); --quotient
end restoreDiv;

architecture Behavioral of restoreDiv is

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
	for i in 7 downto 0 loop   -- to perform left shift of A ang Q present inside reg 
		reg(i+1):=reg(i);
	end loop;
	reg(8 downto 4):=reg(8 downto 4)-m;  -- subtracting divisor from a
	if(reg(8)='0') then    -- if A>0 Q[0]=1 else Q[0]=0
		reg(0):='1';
	else
		reg(0):='0';
		reg(8 downto 4):=reg(8 downto 4)+m;
	end if;
end loop;
r<=reg(8 downto 4);
qt<=reg(3 downto 0);
end process;
end Behavioral;

