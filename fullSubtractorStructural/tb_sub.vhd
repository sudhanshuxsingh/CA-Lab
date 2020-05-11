--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:39:45 04/08/2020
-- Design Name:   
-- Module Name:   F:/structural/tb_sub.vhd
-- Project Name:  structural
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fullSubtractor
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
 
ENTITY tb_sub IS
END tb_sub;
 
ARCHITECTURE behavior OF tb_sub IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullSubtractor
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         bin : IN  std_logic;
         bout : OUT  std_logic;
         d : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal bin : std_logic := '0';

 	--Outputs
   signal bout : std_logic;
   signal d : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullSubtractor PORT MAP (
          a => a,
          b => b,
          bin => bin,
          bout => bout,
          d => d
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
		a<='0'; b<='0'; bin<='0'; wait for 10 ns;
     	a<='0'; b<='0'; bin<='1'; wait for 10 ns;
      	a<='0'; b<='1'; bin<='0'; wait for 10 ns;
   		a<='0'; b<='1'; bin<='1'; wait for 10 ns;          
   		a<='1'; b<='0'; bin<='0'; wait for 10 ns;
   		a<='1'; b<='0'; bin<='1'; wait for 10 ns;
   		a<='1'; b<='1'; bin<='0'; wait for 10 ns;  
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
