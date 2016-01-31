-- And Gate
-- 31/01/2016

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------------------

entity AndGate is
port(	
		A: in 	std_logic;
		B: in 	std_logic;
		C: out 	std_logic
);
end entity AndGate;  

--------------------------------------------------

architecture rtl of AndGate is

	signal sig1 : std_logic;
	
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
		A => A,
		B => B,
		C => sig1
   );
   
   InstNot1 : NotGate
   port map (
		A => sig1,
		B => C
   );

end architecture rtl;

--------------------------------------------------