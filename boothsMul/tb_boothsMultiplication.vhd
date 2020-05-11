--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:15:59 05/11/2020
-- Design Name:   
-- Module Name:   F:/fourbit/tb_booths.vhd
-- Project Name:  fourbit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: booths
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
 
ENTITY tb_booths IS
END tb_booths;
 
ARCHITECTURE behavior OF tb_booths IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT booths
    PORT(
         m : IN  std_logic_vector(3 downto 0);
         q : IN  std_logic_vector(3 downto 0);
         r : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal m : std_logic_vector(3 downto 0) := (others => '0');
   signal q : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal r : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: booths PORT MAP (
          m => m,
          q => q,
          r => r
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

--      wait for <clock>_period*10;
	m<="0110"; q<="0010"; wait for 10 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
