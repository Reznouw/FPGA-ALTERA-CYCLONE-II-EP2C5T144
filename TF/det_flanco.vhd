library ieee ;
use ieee.std_logic_1164.all;

entity det_flanco is
port(
	f_in, rst, clk : in std_logic;
	pulso : out std_logic 
);
end det_flanco;

architecture fn of det_flanco is

signal pulso_r_reg, pulso_r_next : std_logic_vector(1 downto 0);

begin 

-- generacion de pulso, logica salida
pulso <= pulso_r_reg(0) and not(pulso_r_reg(1));

-- lógica estado sgte
pulso_r_next <= pulso_r_reg(0) & f_in;

-- registros (para ambos circuitos)
process(clk, rst)
begin
	if rst = '0' then -- logica negativa porque se conecta a pulsador externo con weak pull-up
		pulso_r_reg   <= (others => '0');
	elsif rising_edge(clk) then
		pulso_r_reg   <= pulso_r_next;
	end if;
end process;

end fn;