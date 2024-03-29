----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:50:58 05/11/2020 
-- Design Name: 
-- Module Name:    Gray_to_binary - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity gray_to_binary is
    generic(N : positive := 4);
    port(        
         gray_in     : in  std_logic_vector(N - 1 downto 0);
         b_out    : out std_logic_vector(N - 1 downto 0)
    );
end;

architecture BEHAVIOURAL of gray_to_binary is
begin
    process(gray_in)
        -- We need to use a variable since the output b is obtained from the
        -- input g and the output itself, but b is not readable (since it is
        -- declared 'out')
        variable b_buf : std_logic_vector(N - 1 downto 0);
    begin
        
            b_buf(N - 1) := gray_in(N - 1);
            for i in N - 2 downto 0 loop
                b_buf(i) := b_buf(i + 1) xor gray_in(i);
            end loop;
            b_out <= b_buf;
       
    end process;
end;