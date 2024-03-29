--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:00:58 05/11/2020
-- Design Name:   
-- Module Name:   S:/dual_port_mem/gray_to_binary_tb.vhd
-- Project Name:  dual_port_mem
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: gray_to_binary
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
 
ENTITY gray_to_binary_tb IS
END gray_to_binary_tb;
 
ARCHITECTURE behavior OF gray_to_binary_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT gray_to_binary
    PORT(
         gray_in : IN  std_logic_vector(3 downto 0);
         b_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal gray_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal b_out : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock_period> : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: gray_to_binary PORT MAP (
          gray_in => gray_in,
          b_out => b_out
        );

  
 

   -- Stimulus process
   stim_proc: process
   begin		
	
         gray_in <= "0000";    wait for 50 ns;
        gray_in <= "0001";  wait for 50 ns;
        gray_in <= "0011";  wait for 50 ns;
        gray_in <= "0010";  wait for 50 ns;
        gray_in <= "0110";    wait for 50 ns;
       gray_in <= "0111";  wait for 50 ns;
       gray_in <= "0101";  wait for 50 ns;
        gray_in <= "0100";  wait for 50 ns;
        gray_in <= "1000";    wait for 50 ns;
       gray_in <= "1100";  wait for 50 ns;
        gray_in <= "1101";  wait for 50 ns;
        gray_in <= "1111";  wait for 50 ns;
        gray_in <= "1110";    wait for 50 ns;
        gray_in <= "1010";  wait for 50 ns;
        gray_in <= "1011";  wait for 50 ns;
       gray_in <= "1001";  wait for 50 ns;
		 gray_in <= "1000";  wait for 50 ns;
		 
      wait;
  
   

     
   end process;

END;
