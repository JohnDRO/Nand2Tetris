-- Nand Gate
-- 31/01/2016

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------------------

entity NandGate is
port(	
		A: in 	std_logic;
		B: in 	std_logic;
		C: out 	std_logic
);
end entity NandGate;  

--------------------------------------------------

architecture rtl of NandGate is
begin

   C <= not (A and B);

end architecture rtl;

--------------------------------------------------