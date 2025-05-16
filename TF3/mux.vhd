library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity mux is
	port(
	seno_in, sierra_in, triangulo_in: in std_logic_vector(10 downto 0);
	onda_ctrl: in std_logic_vector(1 downto 0);
	output: out std_logic_vector(10 downto 0)
	);
end mux;
architecture fn of mux is
	
begin
	-- mux
	with onda_ctrl select
	output<= seno_in when "00",
				sierra_in when "01",
				triangulo_in when "10",
				seno_in when others;
				
end fn;