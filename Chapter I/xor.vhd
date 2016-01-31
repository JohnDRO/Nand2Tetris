-- Xor Gate
-- 31/01/2016

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------------------

entity XorGate is
port(	
		A: 	in 	std_logic;
		B: 	in 	std_logic;
		C: 	out 	std_logic
);
end entity XorGate;  

--------------------------------------------------

architecture rtl of XorGate is

	signal sig1, sig2, sig3, sig4 : std_logic;
	
	component AndGate
	port(
		A : in 	std_logic;
		B : in 	std_logic;
		C : out	std_logic
	);
	end component;

	component NotGate
	port(
		A : in 	std_logic;
		B : out	std_logic
	);
	end component;

	component OrGate
	port(
		A : in 	std_logic;
		B : in	std_logic;
		C : out	std_logic
	);
	end component;	

begin 

   InstAnd1 : AndGate
   port map (
		A => B,
		B => sig1,
		C => sig3
   );
   
   InstAnd2 : AndGate
   port map (
		A => A,
		B => sig2,
		C => sig4
   );
   
   InstNot1 : NotGate
	port map (
		A => A,
		B => sig1
	);
   
	InstNot2 : NotGate
	port map (
		A => B,
		B => sig2
	);
   
   InstOr1 : OrGate
   port map (
		A => sig3,
		B => sig4,
		C => C
   );

end architecture rtl;

--------------------------------------------------