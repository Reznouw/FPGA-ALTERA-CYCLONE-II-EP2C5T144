library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity labcalificado1 is
	port
	(
	data_in: in std_logic_vector (4 downto 0);	
	cant_desp: in std_logic_vector (1 downto 0);
	ope: in std_logic;
	data_out: out std_logic_vector(4 downto 0)
	);
end labcalificado1;

architecture fn of labcalificado1 is
	signal a,b,c,d,e,f,g,h: std_logic_vector(4 downto 0);
	signal izquierda,derecha: std_logic_vector(4 downto 0);
begin
	
	a <= data_in;
	b <= data_in(3 downto 1)&"0";
	c <= data_in(3 downto 2)&"00";
	d <= data_in(3)&"000";
	
	e <= data_in(4)&data_in(4 downto 1);
	f <= data_in(4)&data_in(4)&data_in(4 downto 2);
	g <= data_in(4)&data_in(4)&data_in(4)&data_in(4 downto 3);
	h <= data_in;
	
	with cant_desp select
		derecha <= e When "00",
						f When "01",
						g When "10",
						h When others;
	
	with cant_desp select
		izquierda <= a When "00",
						b When "01",
						c When "10",
						d When others;
						
	data_out <= izquierda when ope = '1' else derecha;
	
end fn;