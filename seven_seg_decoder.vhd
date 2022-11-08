library IEEE;
use IEEE.std_logic_1164.all;

--code for entity given in instructions
entity seven_seg_decoder is
	port( bcd   : in  std_logic_vector(3 downto 0);
    	  blank : in  std_logic;
          seg   : out std_logic_vector(7 downto 1) );
end entity seven_seg_decoder;

architecture behaviour of seven_seg_decoder is
begin
	process (bcd, blank) is
	variable vseg: std_logic_vector(7 downto 1);
    begin
    
    	if blank = '1' then
        	vseg := "0000000";
        elsif bcd = "0000" then
         	vseg := "0111111";
        elsif bcd = "0001" then
         	vseg := "0000110";
        elsif bcd = "0010" then
         	vseg := "1011011";
        elsif bcd = "0011" then
        	vseg := "1001111";
        elsif bcd = "0100" then
        	vseg := "1100110";
        elsif bcd = "0101" then
        	vseg := "1101101";
        elsif bcd = "0110" then
        	vseg := "1111101";
        elsif bcd = "0111" then
        	vseg := "0000111";
    	elsif bcd = "1000" then
        	vseg := "1111111";
        elsif bcd = "1001" then
        	vseg := "1101111";
        else
        	vseg := "0000000";
    	end if;
      seg <= vseg; 
    end process;
end behaviour;