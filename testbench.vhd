library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity testbench is
end testbench;

architecture Behavior of testbench is
component seven_seg_decoder is
   port (bcd : in std_logic_vector(3 downto 0);
         blank : in std_logic;
         seg : out std_logic_vector(7 downto 1) );
end component;

  constant CLK_PERIOD : time :=  1 ns;

  signal  bcd : std_logic_vector(3 downto 0);
  signal  blank :  std_logic;
  signal  seg :  std_logic_vector(7 downto 1);

begin
  testbenchA : seven_seg_decoder
                       port map (bcd, blank, seg);

  process begin
    bcd <= "0000";
wait for 100 ns;
bcd <= "0001";
wait for 100 ns;
bcd <= "0010";
wait for 100 ns;
bcd <= "0011";
wait for 100 ns;
bcd <= "0100";
wait for 100 ns;
bcd <= "0101";
wait for 100 ns;
bcd <= "0110";
wait for 100 ns;
bcd <= "0111";
wait for 100 ns;
bcd <= "1000";
wait for 100 ns;
bcd <= "1001";
wait for 100 ns;

  end process;   
end Behavior;