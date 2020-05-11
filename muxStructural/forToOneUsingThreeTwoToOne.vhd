----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:23:33 04/15/2020 
-- Design Name: 
-- Module Name:    forToOneUsingThreeTwoToOne - Structural 
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

entity forToOneUsingThreeTwoToOne is
    Port ( s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end forToOneUsingThreeTwoToOne;

architecture Structural of forToOneUsingThreeTwoToOne is

component twoOneWithoutEnable is
    Port ( s : in  STD_LOGIC;
           i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

signal p,q:STD_LOGIC;

begin
f0: twoOneWithoutEnable port map(s=>s0,i0=>i0,i1=>i1,y=>p);
f2: twoOneWithoutEnable port map(s=>s0,i0=>i2,i1=>i3,y=>q);
f3: twoOneWithoutEnable port map(s=>s1,i0=>p,i1=>q,y=>y);

end Structural;

