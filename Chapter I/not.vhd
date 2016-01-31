-- Not Gate
-- 31/01/2016

library ieee;
use ieee.std_logic_1164.all;

--------------------------------------------------

entity NotGate is
port(	
		A: in 	std_logic;
		B: out 	std_logic
);
end entity NotGate;  

--------------------------------------------------

architecture rtl of NotGate is

  component NandGate
    port(
		A : in 	std_logic;
		B : in 	std_logic;
		C : out	std_logic
	);
  end component;

begin

   InstNand : NandGate
   port map (
		A => A,
		B => A,
		C => B
   );

end architecture rtl;

--------------------------------------------------