----------------------------------------------------------------------------------
-- Company: De Bois Inc.
-- Engineer: De Bois
-- 
-- Create Date: 26.12.2020 20:44:04
-- Design Name: 
-- Module Name: MUX - Behavioral
-- Project Name: 8SegmentTeller
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
    PORT( 
        selector: in bit_vector(2 downto 0); -- output vd scan_teller als input, selecteert 1 vd 8 tellers als datalijn
        teller1: in std_logic_vector(3 downto 0);
        teller2: in std_logic_vector(3 downto 0);
        teller3: in std_logic_vector(3 downto 0);
        teller4: in std_logic_vector(3 downto 0);
        teller5: in std_logic_vector(3 downto 0);
        teller6: in std_logic_vector(3 downto 0);
        teller7: in std_logic_vector(3 downto 0);
        teller8: in std_logic_vector(3 downto 0);
        BCD: out std_logic_vector(3 downto 0) -- stuurt geselecteerde ingang door naar decoder
        );
end MUX;

architecture Behavioral of MUX is

begin
    process(selector)
        begin
        case selector is
            when "000" => BCD <= teller1;
            when "001" => BCD <= teller2;
            when "010" => BCD <= teller3;
            when "011" => BCD <= teller4;
            when "100" => BCD <= teller5;
            when "101" => BCD <= teller6;
            when "110" => BCD <= teller7;
            when "111" => BCD <= teller8;
            when others => BCD <= "000";
        end case;
    end process;
            

end Behavioral;
