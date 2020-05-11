--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:49:55 04/15/2020
-- Design Name:   
-- Module Name:   F:/muxstructural/tb_twotoonemux.vhd
-- Project Name:  muxstructural
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: twoOneMux
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_twotoonemux IS
END tb_twotoonemux;
 
ARCHITECTURE behavior OF tb_twotoonemux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT twoOneMux
    PORT(
         s : IN  std_logic;
         i0 : IN  std_logic;
         i1 : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic := '0';
   signal i0 : std_logic := '0';
   signal i1 : std_logic := '0';

 	--Outputs
   signal y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: twoOneMux PORT MAP (
          s => s,
          i0 => i0,
          i1 => i1,
          y => y
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		s<='0'; i0<='0'; i1<='0'; wait for 10 ns;
		s<='0'; i0<='0'; i1<='1'; wait for 10 ns;
		s<='0'; i0<='1'; i1<='0'; wait for 10 ns;
		s<='0'; i0<='1'; i1<='1'; wait for 10 ns;
		s<='1'; i0<='0'; i1<='0'; wait for 10 ns;
		s<='1'; i0<='0'; i1<='1'; wait for 10 ns;
		s<='1'; i0<='1'; i1<='0'; wait for 10 ns;
		s<='1'; i0<='1'; i1<='1'; wait for 10 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
