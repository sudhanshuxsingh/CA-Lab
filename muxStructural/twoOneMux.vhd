----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:06:12 04/15/2020 
-- Design Name: 
-- Module Name:    twoOneMux - Structural 
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

entity twoOneMux is
    Port ( s : in  STD_LOGIC;
           i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end twoOneMux;

architecture Structural of twoOneMux is

component andGate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component;

component notGate is
    Port ( a : in  STD_LOGIC;
           b : out  STD_LOGIC);
end component;

component orGate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component;

signal p,q,r:STD_LOGIC;

begin

f0: notGate port map(a=>s,b=>p);
f1: andGate port map(a=>p,b=>i0,c=>q);
f2: andGate port map(a=>s,b=>i1,c=>r);
f3: orGate port map(a=>q,b=>r,c=>y);

--y<=(((not s) and i_0) or (s and i_1));

end Structural;

