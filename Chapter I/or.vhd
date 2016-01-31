-- Or Gate
-- 31/01/2016

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------------------

entity OrGate is
port(	
		A: in 	std_logic;
		B: in 	std_logic;
		C: out 	std_logic
);
end entity OrGate;  

--------------------------------------------------

architecture rtl of OrGate is

	signal sig1, sig2 : std_logic;
	
	component NandGate
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

begin 

   InstNand1 : NandGate
   port map (
		A => sig1,
		B => sig2,
		C => C
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

end architecture rtl;

--------------------------------------------------