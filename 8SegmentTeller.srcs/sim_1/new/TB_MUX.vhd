----------------------------------------------------------------------------------
-- Company: De Bois Inc.
-- Engineer: De Bois
-- 
-- Create Date: 26.12.2020 20:44:04
-- Design Name: 
-- Module Name: TB_MUX
-- Project Name: 8SegmentTeller
----------------------------------------------------------------------------------


library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity MUX_tb is
end;

architecture bench of MUX_tb is

  component MUX
      PORT( 
          selector: in bit_vector(2 downto 0);
          t1: in std_logic_vector(3 downto 0);
          t2: in std_logic_vector(3 downto 0);
          t3: in std_logic_vector(3 downto 0);
          t4: in std_logic_vector(3 downto 0);
          t5: in std_logic_vector(3 downto 0);
          t6: in std_logic_vector(3 downto 0);
          t7: in std_logic_vector(3 downto 0);
          t8: in std_logic_vector(3 downto 0);
          BCD: out std_logic_vector(3 downto 0)
          );
  end component;

  signal selector: bit_vector(2 downto 0);
  signal t1: std_logic_vector(3 downto 0);
  signal t2: std_logic_vector(3 downto 0);
  signal t3: std_logic_vector(3 downto 0);
  signal t4: std_logic_vector(3 downto 0);
  signal t5: std_logic_vector(3 downto 0);
  signal t6: std_logic_vector(3 downto 0);
  signal t7: std_logic_vector(3 downto 0);
  signal t8: std_logic_vector(3 downto 0);
  signal BCD: std_logic_vector(3 downto 0) ;

begin

  uut: MUX port map ( selector => selector,
                      t1       => t1,
                      t2       => t2,
                      t3       => t3,
                      t4       => t4,
                      t5       => t5,
                      t6       => t6,
                      t7       => t7,
                      t8       => t8,
                      BCD      => BCD );

  stimulus: process
  begin
  
    -- Put initialisation code here


    -- Put test bench stimulus code here

    wait;
  end process;


end;