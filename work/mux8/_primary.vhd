library verilog;
use verilog.vl_types.all;
entity mux8 is
    port(
        data_i          : in     vl_logic_vector(7 downto 0);
        IsHazzard_i     : in     vl_logic;
        data_o          : out    vl_logic_vector(7 downto 0)
    );
end mux8;
