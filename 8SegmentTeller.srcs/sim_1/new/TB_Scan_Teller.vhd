----------------------------------------------------------------------------------
-- Company: De Bois Inc.
-- Engineer: De Bois
-- 
-- Create Date: 26.12.2020 20:44:04
-- Design Name: 
-- Module Name: TB_Scan_teller
-- Project Name: 8SegmentTeller
----------------------------------------------------------------------------------

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Scan_teller_tb is
end;

architecture bench of Scan_teller_tb is

  component Scan_teller
      Port (
          clk : in std_logic;
          rst : in std_logic;
          teller : out std_logic_vector(2 downto 0)
          );
  end component;

  signal clk: std_logic;
  signal rst: std_logic;
  signal teller: std_logic_vector(2 downto 0) ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: Scan_teller port map ( clk    => clk,
                              rst    => rst,
                              teller => teller );

  stimulus: process
  begin
  
    -- Put initialisation code here


    -- Put test bench stimulus code here

    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;
