----------------------------------------------------------------------------------
-- Company: De Bois Inc.
-- Engineer: De Bois
-- 
-- Create Date: 26.12.2020 20:44:04
-- Design Name: 
-- Module Name: DEMUX - Behavioral
-- Project Name: 8SegmentTeller
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEMUX is
    PORT( 
        selector: in bit_vector(2 downto 0); -- output vd scan_teller als input, selecteert 1 vd 8 tellers als datalijn
        Display_on: out std_logic_vector(7 downto 0)
        );
end DEMUX;

architecture Behavioral of DEMUX is

begin
    process
    begin
        case selector is
            when "000" => 
                Display_on <= "01111111";
            when "001" => 
                Display_on <= "10111111";
            when "010" => 
                Display_on <= "11011111";
            when "011" => 
                Display_on <= "11101111";
            when "100" => 
                Display_on <= "11110111";
            when "101" => 
                Display_on <= "11111011";
            when "110" => 
                Display_on <= "11111101";
            when "111" => 
                Display_on <= "11111110";
        end case;
    end process;
end Behavioral;
