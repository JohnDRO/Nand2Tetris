--------------------------------------
-- Incrementer
--
-- 
--------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.ALL;

--------------------------------------

entity Incrementer is
port(	
			a : in std_logic_vector(15 downto 0);
			c : out std_logic_vector(15 downto 0)
	);
end Incrementer;  

---------------------------------------

architecture rtl of Incrementer is
begin
    
    c <= a + 1;

end rtl;
---------------------------------------