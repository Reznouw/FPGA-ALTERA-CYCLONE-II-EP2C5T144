library verilog;
use verilog.vl_types.all;
entity ejem is
    port(
        data_in         : in     vl_logic_vector(4 downto 0);
        cant_desp       : in     vl_logic_vector(1 downto 0);
        ope             : in     vl_logic;
        data_out        : out    vl_logic_vector(4 downto 0)
    );
end ejem;
