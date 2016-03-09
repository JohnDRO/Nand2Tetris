-- demux Gate
-- 15/02/2016

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------------------

entity demux is
port(	
		Input	: in 	std_logic;
		Sel		: in 	std_logic;
		Out1	: out 	std_logic;
		Out2	: out 	std_logic
);
end entity demux;  

--------------------------------------------------

architecture rtl of demux is

	signal sig1, sig2 : std_logic;

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
begin

   InstAnd1 : AndGate
   port map (
		A => Input,
		B => Sel,
		C => Out2
   );
   
   InstAnd2 : AndGate
   port map (
		A => sig1,
		B => Input,
		C => Out1
   );
   
	InstNot1 : NotGate
	port map (
		A => Sel,
		B => sig1
   );
end architecture rtl;

--------------------------------------------------