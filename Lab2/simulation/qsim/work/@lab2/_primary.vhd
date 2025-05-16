library verilog;
use verilog.vl_types.all;
entity Lab2 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        duty_ctrl       : in     vl_logic_vector(9 downto 0);
        frec_ctrl       : in     vl_logic_vector(1 downto 0);
        pwm_out         : out    vl_logic
    );
end Lab2;
