library verilog;
use verilog.vl_types.all;
entity Data_memory is
    port(
        clk_i           : in     vl_logic;
        addr_i          : in     vl_logic_vector(31 downto 0);
        data_i          : in     vl_logic_vector(31 downto 0);
        IsMemWrite      : in     vl_logic;
        IsMemRead       : in     vl_logic;
        data_o          : out    vl_logic_vector(31 downto 0)
    );
end Data_memory;
