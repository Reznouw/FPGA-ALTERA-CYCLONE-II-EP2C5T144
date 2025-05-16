library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_Phase is
port(
	rst, clk, en : in std_logic;
	tuning       : in std_logic_vector(9 downto 0);
	cont_out		 : out std_logic_vector(9 downto 0)
);
end contador_Phase; 

architecture fn of contador_Phase is

signal r_reg, r_next, r_tuning: unsigned(9 downto 0);

begin 

process(clk, rst)
begin
	if rst = '0' then 
		r_reg <= (others => '0');
	elsif rising_edge(clk) and (en = '1') then
		r_reg <= r_next;
	end if;
end process;					

-- logica de estado siguiente

r_tuning <= r_reg + 1;
r_next <= r_tuning + unsigned(tuning);

-- logica de salida
cont_out <= std_logic_vector(r_reg);

end fn;