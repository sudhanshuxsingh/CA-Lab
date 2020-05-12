--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:35:38 05/12/2020
-- Design Name:   
-- Module Name:   F:/caexam/tb_nonRestoring_207.vhd
-- Project Name:  caexam
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nonRestoring_207
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
 
ENTITY tb_nonRestoring_207 IS
END tb_nonRestoring_207;
 
ARCHITECTURE behavior OF tb_nonRestoring_207 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nonRestoring_207
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
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nonRestoring_207 PORT MAP (
          m => m,
          q => q,
          r => r,
          qt => qt
        );

   -- Clock process definitions 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;
		m<="00111";q<="1011";

      -- insert stimulus here 

      wait;
   end process;

END;
