----------------------------------------------------------------------------------
-- Company: De Bois Inc.
-- Engineer: De Bois
-- 
-- Create Date: 26.12.2020 20:44:04
-- Design Name: 
-- Module Name: Scan_teller - Behavioral
-- Project Name: 8SegmentTeller
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Scan_teller is
    Port (
        clk : in std_logic;
        rst : in std_logic;
        teller : out std_logic_vector(2 downto 0)
        );
end Scan_teller;

architecture Behavioral of Scan_teller is
signal temp : std_logic_vector(2 downto 0) := "000";

begin
    process(clk, rst)
    begin
        if (rst <= '1') then
            temp <= "000";
        elsif (rising_edge(clk)) then
            temp <= temp + 1;
            teller <= temp;
        end if;
    end process;
end Behavioral;
