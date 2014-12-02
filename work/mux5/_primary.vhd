library verilog;
use verilog.vl_types.all;
entity mux5 is
    port(
        data1_i         : in     vl_logic_vector(31 downto 0);
        data2_i         : in     vl_logic_vector(31 downto 0);
        IsMemtoReg_i    : in     vl_logic;
        data_o          : out    vl_logic_vector(31 downto 0)
    );
end mux5;
