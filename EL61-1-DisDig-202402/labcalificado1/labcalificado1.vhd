library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

-- Definición de la entidad para el circuito de desplazamiento
entity labcalificado1 is
    Port (
        data_in: in std_logic_vector(4 downto 0);   -- Entrada de 5 bits.
        cant_desp: in std_logic_vector(1 downto 0); -- Entrada que indica la cantidad de desplazamiento (2 bits).
        ope: in std_logic;                          -- Selector de operación: '1' para desplazamiento a la izquierda, '0' para desplazamiento a la derecha.
        data_out: out std_logic_vector(4 downto 0)  -- Salida de datos de 5 bits después del desplazamiento.
    );
end labcalificado1;

-- Arquitectura del circuito
architecture fn of labcalificado1 is
    -- Señales internas para almacenar los resultados intermedios
    signal shifted_left, shifted_right: std_logic_vector(4 downto 0);
begin
    -- Desplazamiento a la izquierda rellenado con '0'
    shifted_left <= data_in when cant_desp = "00" else
                    data_in(3 downto 0) & '0' when cant_desp = "01" else
                    data_in(2 downto 0) & "00" when cant_desp = "10" else
                    data_in(1 downto 0) & "000";

    -- Desplazamiento a la derecha rellenado con el MSB
    shifted_right <= data_in when cant_desp = "00" else
                     data_in(4) & data_in(4 downto 1) when cant_desp = "01" else
                     data_in(4) & data_in(4) & data_in(4 downto 2) when cant_desp = "10" else
                     data_in(4) & data_in(4) & data_in(4) & data_in(4 downto 3);

    -- Selección de la operación según el valor de 'ope'
    data_out <= shifted_left when ope = '1' else shifted_right;
end fn;