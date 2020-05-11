--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:56:07 05/11/2020
-- Design Name:   
-- Module Name:   F:/fourbit/tb_composit.vhd
-- Project Name:  fourbit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: composit
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
 
ENTITY tb_composit IS
END tb_composit;
 
ARCHITECTURE behavior OF tb_composit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT composit
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         mode : IN  std_logic;
         c : OUT  std_logic_vector(3 downto 0);
         mout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal mode : std_logic := '0';

 	--Outputs
   signal c : std_logic_vector(3 downto 0);
   signal mout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: composit PORT MAP (
          a => a,
          b => b,
          mode => mode,
          c => c,
          mout => mout
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
		a<="0010"; b<="0010"; mode<='0'; wait for 10 ns;
		a<="0010"; b<="0010"; mode<='1'; wait for 10 ns;
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
