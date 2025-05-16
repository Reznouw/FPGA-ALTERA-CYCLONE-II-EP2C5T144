library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Lab2 is
	port(
	clk, reset: in std_logic;
	duty_ctrl: in std_logic_vector(9 downto 0);
	frec_ctrl: in std_logic_vector(1 downto 0);
	pwm_out: out std_logic
	);
end Lab2;
architecture fn of Lab2 is
	signal buf_next,buf_reg: std_logic;
	signal r_next,r_reg: unsigned(9 downto 0);
	signal a,b,c,d: unsigned(9 downto 0);	
begin
	process (clk, reset)
	begin
	--register & output buffer
		if (reset='0') then
			r_reg <= (others=>'0');
			buf_reg <= '0';
		elsif (clk'event and clk='1') then
			r_reg <= r_next;
			buf_reg <= buf_next;
		end if;
	end process;
	-- next state logic
	a<= r_reg + 1; --f/2^10
	b<= r_reg + 2; --f/2^9
	c<= r_reg + 4; --f/2^8
	d<= r_reg + 8; --f/2^7
	
	with frec_ctrl select
	r_next<= a when "00",
				b when "01",
				c when "10",
				d when "11";
			
	--output logic
	buf_next <=
		'1' when (r_reg<unsigned(duty_ctrl)) or (duty_ctrl="0000000000") else
		'0';

   pwm_out <= buf_reg;
			
end fn;