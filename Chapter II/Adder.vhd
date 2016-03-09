--------------------------------------
-- Adder
--
-- 
--------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.ALL;

--------------------------------------

entity Adder is
port(	
			a : in std_logic_vector(15 downto 0);
			b : in std_logic_vector(15 downto 0);
			c : out std_logic_vector(15 downto 0)
	);
end Adder;  

---------------------------------------

architecture rtl of Adder is
begin
    
    c <= a + b;

end rtl;
---------------------------------------