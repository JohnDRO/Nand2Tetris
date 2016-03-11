-- full adder
-- 15/02/2016

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------------------

entity full_adder is
port(	
		a			: in 	std_logic;
		b			: in 	std_logic;
		c			: in 	std_logic;
		sum		: out 	std_logic;
		carry	: out 	std_logic
);
end entity full_adder;  

--------------------------------------------------

architecture rtl of full_adder is
begin

sum <= a xor b xor c;
carry <=(not c and b and c) or (c and not b and c) or (c and b and not c) or (c and b and c);

end architecture rtl;

--------------------------------------------------