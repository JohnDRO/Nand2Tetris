-- Mux Gate
-- 31/01/2016

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------------------

entity MuxGate is
port(	
		A: 	in 	std_logic;
		B: 	in 	std_logic;
		Sel: 	out 	std_logic
		Q: 	out 	std_logic
);
end entity MuxGate;  

--------------------------------------------------

architecture rtl of MuxGate is

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

	component Or
	port(
		A : in 	std_logic;
		B : in	std_logic
		C : out	std_logic
	);
	end component;	

begin 

   InstAnd1 : AndGate
   port map (
		A => A,
		B => Sel,
		C => sig2
   );
   
   InstAnd2 : AndGate
   port map (
		A => B,
		B => sig1,
		C => sig3
   );
   
   InstNot1 : NotGate
   port map (
		A => Sel,
		B => sig1
   );
   
   InstOr1 : OrGate
   port map (
		A => sig3,
		B => sig2,
		C => Q
   );

end architecture rtl;

--------------------------------------------------