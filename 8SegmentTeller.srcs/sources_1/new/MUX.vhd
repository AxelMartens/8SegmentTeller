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
        t1: in std_logic_vector(3 downto 0);
        t2: in std_logic_vector(3 downto 0);
        t3: in std_logic_vector(3 downto 0);
        t4: in std_logic_vector(3 downto 0);
        t5: in std_logic_vector(3 downto 0);
        t6: in std_logic_vector(3 downto 0);
        t7: in std_logic_vector(3 downto 0);
        t8: in std_logic_vector(3 downto 0);
        BCD: out std_logic_vector(3 downto 0) -- stuurt geselecteerde ingang door naar decoder
        );
end MUX;

architecture Behavioral of MUX is

begin
    process(selector)
        begin
        case selector is
            when "000" => BCD <= t1;
            when "001" => BCD <= t2;
            when "010" => BCD <= t3;
            when "011" => BCD <= t4;
            when "100" => BCD <= t5;
            when "101" => BCD <= t6;
            when "110" => BCD <= t7;
            when "111" => BCD <= t8;
            when others => BCD <= "000";
        end case;
    end process;
            

end Behavioral;
