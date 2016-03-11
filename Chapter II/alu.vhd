-- ALU
-- 15/02/2016

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.ALL;


--------------------------------------------------

entity ALU is
port(	
		x					: in 	std_logic_vector (15 downto 0);
		y					: in 	std_logic_vector (15 downto 0);
		
		
		zx				: in 	std_logic;
		nx				: in 	std_logic;
		zy				: in 	std_logic;
		ny				: in 	std_logic;
		f					: in 	std_logic;
		no				: in 	std_logic;
		
		zr					: out 	std_logic;
		ng				: out 	std_logic;
		
		output_alu 	: out std_logic_vector (15 downto 0)
);
end entity ALU;  

--------------------------------------------------

architecture rtl of ALU is

signal sig_x : std_logic_vector (15 downto 0);
signal sig_y : std_logic_vector (15 downto 0);

signal sig_f : std_logic_vector (15 downto 0);


signal sig_out : std_logic_vector (15 downto 0);
begin

output_alu <= sig_out;

zr 	<= '1' when sig_out = X"0000" else '0';
ng 	<= '1' when sig_out(15) = '1'    else '0';


process (no, sig_f)
begin
	if (no = '1') then
		sig_out <= not sig_f;
	else
		sig_f <= sig_f;
	end if;
end process;


process (f, x, y)
begin
	if (f = '1') then
		sig_f <= x + y;
	else
		sig_f <= x and y;
	end if;
end process;

process (nx, x)
begin
	if (nx = '0') then
		sig_x <= x;
	else
		sig_x <=not x;
	end if;
end process;

process (zx, x)
begin
	if (zx = '0') then
		sig_x <= X"0000";
	end if;
end process;

process (ny, y)
begin
	if (ny = '0') then
		sig_y <= y;
	else
		sig_y <=not y;
	end if;
end process;

process (zy, y)
begin
	if (zy = '0') then
		sig_y <= X"0000";
	end if;
end process;


end architecture rtl;

--------------------------------------------------