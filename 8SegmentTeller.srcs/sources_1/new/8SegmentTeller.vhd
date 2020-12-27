----------------------------------------------------------------------------------
-- Company: De Bois Inc.
-- Engineer: DE Bois
-- 
-- Create Date: 27.12.2020 14:20:20
-- Design Name: 
-- Module Name: 8SegmentTeller - Behavioral
-- Project Name: 8SegmentTeller
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SegmentTeller is
    Port (
        rst : in std_logic;
        clk : in std_logic;
        D1: out std_logic;
        D2: out std_logic;
        D3: out std_logic;
        D4: out std_logic;
        D5: out std_logic;
        D6: out std_logic;
        D7: out std_logic;
        D8: out std_logic;
        Zeven_segmen: out std_logic_vector( 6 downto 0)
     );
end SegmentTeller;

architecture Behavioral of SegmentTeller is
-- Oproepen van de individuele componenten:

    component MUX
        Port( 
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
    end component MUX;
    
    component DEMUX
        Port( 
            selector: in bit_vector(2 downto 0); -- output vd scan_teller als input, selecteert 1 vd 8 tellers als datalijn
            Display_on: out std_logic_vector(7 downto 0)
            );
    end component DEMUX;
    
    component Scan_Teller
        Port (
            clk : in std_logic;
            rst : in std_logic;
            teller : out std_logic_vector(2 downto 0)
            );
    end component Scan_Teller;
    
    component BCD_to_7segment
        Port ( 
            BCD_in : in STD_LOGIC_VECTOR (3 downto 0);
            Zeven_Segment : out STD_LOGIC_VECTOR (6 downto 0)
            );
    end component BCD_to_7segment;
    
-- Aanmaken van de teller signalen:

    signal t1   : std_logic_vector(3 downto 0);
    signal t2   : std_logic_vector(3 downto 0);
    signal t3   : std_logic_vector(3 downto 0);
    signal t4   : std_logic_vector(3 downto 0);
    signal t5   : std_logic_vector(3 downto 0);
    signal t6   : std_logic_vector(3 downto 0);
    signal t7   : std_logic_vector(3 downto 0);
    signal t8   : std_logic_vector(3 downto 0);
    
begin


end Behavioral;
