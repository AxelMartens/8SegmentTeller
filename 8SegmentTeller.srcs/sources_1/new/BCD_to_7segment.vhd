----------------------------------------------------------------------------------
-- Company: De Bois Inc.
-- Engineer: De Bois
-- 
-- Create Date: 26.12.2020 20:44:04
-- Design Name: 
-- Module Name: BCD_to_7segment - Behavioral
-- Project Name: 8SegmentTeller
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BCD_to_7segment is
    Port ( 
        BCD_in : in STD_LOGIC_VECTOR (3 downto 0);
        Zeven_Segment : out STD_LOGIC_VECTOR (6 downto 0)
        );
end BCD_to_7segment;

architecture Behavioral of BCD_to_7segment is

begin

    process(BCD_in)
    begin
    case BCD_in is
        when "0000" =>
        Zeven_Segment <= "0000001"; --0
        when "0001" =>
        Zeven_Segment <= "1001111"; --1
        when "0010" =>
        Zeven_Segment <= "0010010"; --2
        when "0011" =>
        Zeven_Segment <= "0000110"; --3
        when "0100" =>
        Zeven_Segment <= "1001100"; --4
        when "0101" =>
        Zeven_Segment <= "0100100"; --5
        when "0110" =>
        Zeven_Segment <= "0100000"; --6
        when "0111" =>
        Zeven_Segment <= "0001111"; --7
        when "1000" =>
        Zeven_Segment <= "0000000"; --8
        when "1001" =>
        Zeven_Segment <= "0000100"; --9
        when others =>
        Zeven_Segment <= "1111111"; --null
        end case;
    end process;

end Behavioral;
