library verilog;
use verilog.vl_types.all;
entity TF2_vlg_check_tst is
    port(
        prueba_salida   : in     vl_logic_vector(10 downto 0);
        salida          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end TF2_vlg_check_tst;
