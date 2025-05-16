library verilog;
use verilog.vl_types.all;
entity Lab2_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        duty_ctrl       : in     vl_logic_vector(9 downto 0);
        frec_ctrl       : in     vl_logic_vector(1 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Lab2_vlg_sample_tst;
