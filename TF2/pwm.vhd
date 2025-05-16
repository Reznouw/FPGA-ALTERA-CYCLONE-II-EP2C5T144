library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pwm is
port(
	rst, clk : in std_logic;
	duty	: in std_logic_vector(10 downto 0);
	tope: out std_logic;
	pwm_out: out std_logic 
);
end pwm;
 
-- 20 us por periodo para el pwm
-- 20 ns por periodo para el contador de fase
architecture fn of pwm is

signal r_reg, r_next: unsigned(10 downto 0);
signal buf_reg, buf_next: std_logic;

begin 

process(clk, rst)
begin
	if rst = '0' then 
		r_reg <= (others => '0');
		buf_reg <= '0';
	elsif rising_edge(clk) then
		r_reg <= r_next;
		buf_reg <= buf_next;
	end if;
end process;					

-- logica de estado siguiente
r_next <= r_reg + 1;

-- logica de salida
buf_next <= '1' when (r_reg < unsigned(duty)) or (duty = "0000000000000000") else
	    '0';

-- señal de sincronizacion
tope <= '1' when r_reg = "11111111111" else '0';
	 
		 
pwm_out <= buf_reg;
		
end fn;