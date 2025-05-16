library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TF is
	port
	(
		-- Input ports
		clk, rst	: in  std_logic;
		ctrl		: in std_logic_vector(2 downto 0);

		-- Output ports
		led_out	: out std_logic_vector(2 downto 0) );
end TF;


architecture fn of TF is

	signal w1, w2, w3 	: std_logic_vector(9 downto 0);
	signal en1, en2, en3 : std_logic;
	
	component det_flanco
	port(
		f_in, rst, clk : in std_logic;
		pulso : out std_logic 
		);
	end component;
	
	component pwm
	port(
		rst, clk : in std_logic;
		w	: in std_logic_vector(9 downto 0);
		pwm_out: out std_logic 
	);
	end component;
	
	-- en este caso, decidi encapsular el contador en un component llamado "contador_labsem9"
	component contador_Phase is
	port(
		rst, clk, en : in std_logic;
		cont_out		 : out std_logic_vector(9 downto 0)
	);
	end component; 

begin

	u0: det_flanco
	port map(f_in => ctrl(0), clk => clk, rst => rst, pulso => en1);
	
	u1: det_flanco
	port map(f_in => ctrl(1), clk => clk, rst => rst, pulso => en2);
	
	u2: det_flanco
	port map(f_in => ctrl(2), clk => clk, rst => rst, pulso => en3);
	
	-- en este caso, decidi encapsular el contador en un component llamado "contador_Phase"
	u3: contador_Phase
	port map(rst => rst, clk => clk, en => en1, cont_out => w1);
	
	u4: contador_Phase
	port map(rst => rst, clk => clk, en => en2, cont_out => w2);
	
	u5: contador_Phase
	port map(rst => rst, clk => clk, en => en3, cont_out => w3);
	
	u6: pwm
	port map(rst => rst, clk => clk, w => w1, pwm_out => led_out(0));
	
	u7: pwm
	port map(rst => rst, clk => clk, w => w2, pwm_out => led_out(1));
	
	u8: pwm
	port map(rst => rst, clk => clk, w => w3, pwm_out => led_out(2));
	
end fn;
