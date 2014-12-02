library verilog;
use verilog.vl_types.all;
entity mux6 is
    port(
        data1_i         : in     vl_logic_vector(31 downto 0);
        data2_i         : in     vl_logic_vector(31 downto 0);
        data3_i         : in     vl_logic_vector(31 downto 0);
        IsForward_i     : in     vl_logic_vector(1 downto 0);
        data_o          : out    vl_logic_vector(31 downto 0)
    );
end mux6;
