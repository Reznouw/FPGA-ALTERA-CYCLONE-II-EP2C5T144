library ieee;
use ieee.std_logic_1164.all;

entity demux is
    port(
        input: in std_logic_vector(11 downto 0);
        onda_ctrl: in std_logic_vector(1 downto 0);
        seno_out, sierra_out, triangulo_out: buffer std_logic_vector(11 downto 0)
    );
end demux;

architecture fn of demux is
begin
    -- Lógica de demultiplexor
    process (onda_ctrl, input)
    begin
        -- Inicialización de las salidas a 0 en cada cambio de entrada
        seno_out <= (others => '0');
        sierra_out <= (others => '0');
        triangulo_out <= (others => '0');
        
        -- Asignación según el valor de onda_ctrl
        case onda_ctrl is
            when "00" => seno_out <= input;
            when "01" => sierra_out <= input;
            when "10" => triangulo_out <= input;
            when others => 
                seno_out <= (others => '0');
                sierra_out <= (others => '0');
                triangulo_out <= (others => '0');
        end case;
    end process;
end fn;

