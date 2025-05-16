library verilog;
use verilog.vl_types.all;
entity TF2 is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic;
        tuning          : in     vl_logic_vector(10 downto 0);
        onda_ctrl       : in     vl_logic_vector(1 downto 0);
        prueba_salida   : out    vl_logic_vector(10 downto 0);
        salida          : out    vl_logic
    );
end TF2;
