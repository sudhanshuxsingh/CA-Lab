--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:52:45 04/29/2020
-- Design Name:   
-- Module Name:   F:/flipflop/tb_SRbehav.vhd
-- Project Name:  flipflop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SRbehav
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
 
ENTITY tb_SRbehav IS
END tb_SRbehav;
 
ARCHITECTURE behavior OF tb_SRbehav IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SRbehav
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         Clck : IN  std_logic;
         Q : OUT  std_logic;
         Qcomp : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';
   signal Clck : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qcomp : std_logic;

 
BEGIN
 
   uut: SRbehav PORT MAP (
          S => S,
          R => R,
          Clck => Clck,
          Q => Q,
          Qcomp => Qcomp
        );



 Clck<=not Clck after 10 ns; 

   -- Stimulus process
   stim_proc: process
   begin		
	S <= '0';  R <= '0';  wait for 30 ns; 
	S <= '1';  R <= '0';  wait for 30 ns; 
   S <= '0';  R <= '0';  wait for 30 ns; 
  	S <= '0';  R <= '1';  wait for 30 ns; 

   S <= '0';  R <= '0';  wait for 30 ns; 
	S <= '1';  R <= '1';  wait for 30 ns; 
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
