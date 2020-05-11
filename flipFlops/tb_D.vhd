--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:34:31 04/29/2020
-- Design Name:   
-- Module Name:   F:/flipflop/tb_D.vhd
-- Project Name:  flipflop
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Dflipflop
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
 
ENTITY tb_D IS
END tb_D;
 
ARCHITECTURE behavior OF tb_D IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Dflipflop
    PORT(
         D : IN  std_logic;
         Q : OUT  std_logic;
			Clck: IN std_logic;
         Qcomp : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
	signal Clck: std_logic:='0';
 	--Outputs
   signal Q : std_logic;
   signal Qcomp : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Dflipflop PORT MAP (
          D => D,
          Q => Q,
			 Clck=>Clck,
          Qcomp => Qcomp
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 
 Clck<=not Clck after 10 ns;
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.	

	D <= '0';  wait for 30 ns; 
	D <= '1';  wait for 30 ns; 
	wait for 10 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
