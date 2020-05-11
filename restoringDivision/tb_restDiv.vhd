--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:21:39 04/01/2020
-- Design Name:   
-- Module Name:   F:/restoreDivisionAlgo/tb_restDiv.vhd
-- Project Name:  restoreDivisionAlgo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: restoreDiv
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
 
ENTITY tb_restDiv IS
END tb_restDiv;
 
ARCHITECTURE behavior OF tb_restDiv IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT restoreDiv
    PORT(
         m : IN  std_logic_vector(4 downto 0);
         q : IN  std_logic_vector(3 downto 0);
         r : OUT  std_logic_vector(4 downto 0);
         qt : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal m : std_logic_vector(4 downto 0) := (others => '0');
   signal q : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal r : std_logic_vector(4 downto 0);
   signal qt : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: restoreDiv PORT MAP (
          m => m,
          q => q,
          r => r,
          qt => qt
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		m<="00011"; q<="1111";
--		m<="01111"; q<="0011";
--		m<="00011"; q<="1010";
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
