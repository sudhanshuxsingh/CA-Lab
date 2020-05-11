--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:26:31 04/15/2020
-- Design Name:   
-- Module Name:   F:/muxstructural/tb_fourToOne.vhd
-- Project Name:  muxstructural
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fourToOne
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_fourToOne IS
END tb_fourToOne;
 
ARCHITECTURE behavior OF tb_fourToOne IS 
 
 
    COMPONENT fourToOne
    PORT(
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         i0 : IN  std_logic;
         i1 : IN  std_logic;
         i2 : IN  std_logic;
         i3 : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';
   signal i0 : std_logic := '0';
   signal i1 : std_logic := '0';
   signal i2 : std_logic := '0';
   signal i3 : std_logic := '0';

   signal y : std_logic;

 
   
BEGIN
 
   uut: fourToOne PORT MAP (
          s0 => s0,
          s1 => s1,
          i0 => i0,
          i1 => i1,
          i2 => i2,
          i3 => i3,
          y => y
        );


   stim_proc: process
   begin		

      wait for 10 ns;	
		
		s0<='0';s1<='0'; i0<='0'; i1<='0'; i2<='0'; i3<='0'; wait for 10 ns;
		s0<='0';s1<='0'; i0<='1'; i1<='0'; i2<='0'; i3<='1'; wait for 10 ns;
		s0<='1';s1<='0'; i0<='0'; i1<='1'; i2<='1'; i3<='0'; wait for 10 ns;
		s0<='1';s1<='0'; i0<='0'; i1<='0'; i2<='1'; i3<='1'; wait for 10 ns;
		s0<='0';s1<='1'; i0<='0'; i1<='0'; i2<='0'; i3<='1'; wait for 10 ns;
		s0<='0';s1<='1'; i0<='0'; i1<='0'; i2<='1'; i3<='0'; wait for 10 ns;
		s0<='1';s1<='1'; i0<='0'; i1<='0'; i2<='1'; i3<='0'; wait for 10 ns;
		s0<='1';s1<='1'; i0<='0'; i1<='0'; i2<='1'; i3<='1'; wait for 10 ns;
      wait;
   end process;

END;
