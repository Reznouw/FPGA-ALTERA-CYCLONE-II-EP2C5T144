library verilog;
use verilog.vl_types.all;
entity TF2_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        en              : in     vl_logic;
        onda_ctrl       : in     vl_logic_vector(1 downto 0);
        rst             : in     vl_logic;
        tuning          : in     vl_logic_vector(10 downto 0);
        sampler_tx      : out    vl_logic
    );
end TF2_vlg_sample_tst;
