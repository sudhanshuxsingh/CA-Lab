----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:15:33 04/15/2020 
-- Design Name: 
-- Module Name:    fourToOne - Structural 
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

entity fourToOne is
    Port ( s0 : in  STD_LOGIC;
           s1 : in  STD_LOGIC;
           i0 : in  STD_LOGIC;
           i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           i3 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end fourToOne;

architecture Structural of fourToOne is
component twoToOne is
    Port ( s : in  STD_LOGIC;
			  e:in STD_LOGIC;
           i_0 : in  STD_LOGIC;
           i_1 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end component;

component orGate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component;

component notGate is
    Port ( a : in  STD_LOGIC;
           b : out  STD_LOGIC);
end component;

signal p,q,r:STD_LOGIC;

begin
f0: notGate port map(a=>s1,b=>p);
f1: twoToOne port map(s=>s0,e=>p,i_0=>i0,i_1=>i1,y=>q);
f2: twoToOne port map(s=>s0,e=>s1,i_0=>i2,i_1=>i3,y=>r);
f3: orGate port map(a=>q,b=>r,c=>y);

end Structural;

