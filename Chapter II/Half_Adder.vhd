-- half adder
-- 15/02/2016

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------------------

entity half_adder is
port(	
		a			: in 	std_logic;
		b			: in 	std_logic;
		sum		: out 	std_logic;
		carry	: out 	std_logic
);
end entity half_adder;  

--------------------------------------------------

architecture rtl of half_adder is

	component AndGate
	port(
		A : in 	std_logic;
		B : in 	std_logic;
		C : out	std_logic
	);
	end component;

	component XorGate
	port(
		A : in 	std_logic;
		B : in 	std_logic;
		C : out	std_logic
	);
	end component;
begin

   InstAnd1 : AndGate
   port map (
		A => a,
		B => b,
		C => carry
   );
   
   InstXor1 : XorGate
   port map (
		A => a,
		B => b,
		C => sum
   );

end architecture rtl;

--------------------------------------------------