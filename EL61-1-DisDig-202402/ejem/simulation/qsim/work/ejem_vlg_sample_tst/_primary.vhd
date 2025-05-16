library verilog;
use verilog.vl_types.all;
entity ejem_vlg_sample_tst is
    port(
        cant_desp       : in     vl_logic_vector(1 downto 0);
        data_in         : in     vl_logic_vector(4 downto 0);
        ope             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ejem_vlg_sample_tst;
