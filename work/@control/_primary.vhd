library verilog;
use verilog.vl_types.all;
entity Control is
    port(
        Inst_i          : in     vl_logic_vector(5 downto 0);
        Branch_o        : out    vl_logic;
        Jump_o          : out    vl_logic;
        Control_o       : out    vl_logic_vector(7 downto 0)
    );
end Control;
