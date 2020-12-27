----------------------------------------------------------------------------------
-- Company: De Bois Inc.
-- Engineer: De Bois
-- 
-- Create Date: 26.12.2020 20:44:04
-- Design Name: 
-- Module Name: TB_DEMUX
-- Project Name: 8SegmentTeller
----------------------------------------------------------------------------------


library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity DEMUX_tb is
end;

architecture bench of DEMUX_tb is

  component DEMUX
      PORT( 
          selector: in bit_vector(2 downto 0);
          Display_on: out std_logic_vector(7 downto 0)
          );
  end component;

  signal selector: bit_vector(2 downto 0);
  signal Display_on: std_logic_vector(7 downto 0) ;

begin

  uut: DEMUX port map ( selector   => selector,
                        Display_on => Display_on );

  stimulus: process
  begin
  
    -- Put initialisation code here

--testhomo
    -- Put test bench stimulus code here

    wait;
  end process;


end;