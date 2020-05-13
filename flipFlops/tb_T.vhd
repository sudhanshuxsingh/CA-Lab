--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:  
-- Design Name:  
-- Module Name:   
-- Project Name:  
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: T_FF
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
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY TB_T_FF_vhd IS
END TB_T_FF_vhd;

ARCHITECTURE behavior OF TB_T_FF_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT T_FF
	PORT(
		T : IN std_logic;
		CLK : IN std_logic;          
		Qnot_Q : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL T :  std_logic := '0';
	SIGNAL CLK :  std_logic := '0';

	--Outputs
	SIGNAL Qnot_Q :  std_logic_vector(1 downto 0);

	--Clock Period
	constant CLK_period : time := 20ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: T_FF PORT MAP(
		T => T,
		CLK => CLK,
		Qnot_Q => Qnot_Q
	);
	
CLK_process :process
	begin
		CLK <= '0'; wait for CLK_period/2;
		CLK <= '1'; wait for CLK_period/2;
	end process;
	
	tb : PROCESS
	BEGIN
      wait for CLK_period*2;
		T <= '1'; wait for CLK_period;
		T <= '0'; wait for CLK_period;
		T <= '1'; wait for CLK_period;
		T <= '0'; wait for CLK_period;
		wait; -- will wait forever
	END PROCESS;



END;
