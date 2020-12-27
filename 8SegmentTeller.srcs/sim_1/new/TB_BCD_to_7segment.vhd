----------------------------------------------------------------------------------
-- Company: De Bois Inc.
-- Engineer: De Bois
-- 
-- Create Date: 26.12.2020 20:44:04
-- Design Name: 
-- Module Name: TB_BCD_to_7segment
-- Project Name: 8SegmentTeller
----------------------------------------------------------------------------------

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity BCD_to_7segment_tb is
end;

architecture bench of BCD_to_7segment_tb is

  component BCD_to_7segment
      Port ( 
      BCD_in : in STD_LOGIC_VECTOR (3 downto 0);
      Zeven_Segment : out STD_LOGIC_VECTOR (6 downto 0)
      );
  end component;

  signal BCD_in: STD_LOGIC_VECTOR (3 downto 0);
  signal Zeven_Segment: STD_LOGIC_VECTOR (6 downto 0) ;

begin

  uut: BCD_to_7segment port map ( BCD_in        => BCD_in,
                                  Zeven_Segment => Zeven_Segment );

  stimulus: process
  begin
  
    -- Put initialisation code here


    -- Put test bench stimulus code here

    wait;
  end process;


end;