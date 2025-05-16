library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TF2 is
	port
	(
		-- Input ports
		clk, rst	: in  std_logic;
		tuning    : in std_logic_vector(10 downto 0);
		onda_ctrl : in std_logic_vector(1 downto 0);
		prueba_salida: out std_logic_vector(10 downto 0);
		-- Output ports
		salida	: out std_logic);
end TF2;


architecture fn of TF2 is

	signal w1, w2, w3 	: std_logic_vector(10 downto 0);
	signal w7, w8, w9 	: std_logic_vector(10 downto 0);
	signal tope : std_logic;
	
	component mux 
	port(
		seno_in, sierra_in, triangulo_in: in std_logic_vector(10 downto 0);
		onda_ctrl: in std_logic_vector(1 downto 0);
		output: out std_logic_vector(10 downto 0)
		);
	end component;
	
	component seno_wave
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (10 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (10 DOWNTO 0)
	);
	END component;
	
	component sierra_wave
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (10 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (10 DOWNTO 0)
	);
	END component;
	
   component triangulo_wave
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (10 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (10 DOWNTO 0)
	);
	END component;
	
	component demux
	port(
		input: in std_logic_vector(10 downto 0);
		onda_ctrl: in std_logic_vector(1 downto 0);
		seno_out, sierra_out, triangulo_out: buffer std_logic_vector(10 downto 0)  
	);
   end component;
	
	component pwm
	port(
		rst, clk : in std_logic;
		duty	: in std_logic_vector(10 downto 0);
		tope: out std_logic;
		pwm_out: out std_logic 
	);
	end component;
	
	-- en este caso, decidi encapsular el contador en un component llamado "contador_labsem9"
	component contador_Phase is
	port(
		rst, clk, en : in std_logic;
		tuning       : in std_logic_vector(10 downto 0);
		cont_out		 : out std_logic_vector(10 downto 0)
	);
	end component; 

begin
		
	-- en este caso, decidi encapsular el contador en un component llamado "contador_Phase"
	
	u1: contador_Phase
	port map(rst => rst, clk => clk, en => NOT tope, tuning => "00000000000", cont_out => w1);
	
	u3: seno_wave
	port map(clock => clk, address => w1, q => w7);
	
	u4: sierra_wave
	port map(clock => clk, address => w1, q => w8);
	
	u5: triangulo_wave
	port map(clock => clk, address => w1, q => w9);
	
	u6: mux
	port map(seno_in => w7 , sierra_in => w8, triangulo_in => w9, onda_ctrl => onda_ctrl, 
	output => w3);
	
	u7: pwm
	port map(rst => rst, clk => clk, duty => w3, pwm_out => salida, tope => tope );
	
	 prueba_salida <= w3;
	
end fn;
