----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:24:37 04/15/2020 
-- Design Name: 
-- Module Name:    twoOneWithoutEnable - Structural 
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

entity twoOneWithoutEnable is
    Port ( s : in  STD_LOGIC;
           i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end twoOneWithoutEnable;

architecture Structural of twoOneWithoutEnable is

begin
y<=((((not s) and i0) or (s and i1)));

end Structural;

