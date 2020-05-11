--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:10:18 04/29/2020
-- Design Name:   
-- Module Name:   F:/flipflop/tb_JKbehav.vhd
-- Project Name:  flipflop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: JKbehav
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
USE ieee.numeric_std.ALL;
 
ENTITY tb_JKbehav IS
END tb_JKbehav;
 
ARCHITECTURE behavior OF tb_JKbehav IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JKbehav
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         Clck : IN  std_logic;
         Q : OUT  std_logic;
         Qcomp : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal Clck : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qcomp : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JKbehav PORT MAP (
          J => J,
          K => K,
          Clck => Clck,
          Q => Q,
          Qcomp => Qcomp
        );

Clck<=not Clck after 10 ns;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
	J <= '0';  K <= '0';  wait for 30 ns; 
	J <= '1';  K <= '0';  wait for 30 ns; 
   J <= '0';  K <= '0';  wait for 30 ns; 
  	J <= '0';  K <= '1';  wait for 30 ns; 

   J <= '0';  K <= '0';  wait for 30 ns; 
	J <= '1';  K <= '1';  wait for 30 ns; 

      -- insert stimulus here 

      wait;
   end process;

END;
