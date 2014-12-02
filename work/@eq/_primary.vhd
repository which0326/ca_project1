library verilog;
use verilog.vl_types.all;
entity Eq is
    port(
        data1_i         : in     vl_logic_vector(31 downto 0);
        data2_i         : in     vl_logic_vector(31 downto 0);
        branch_o        : out    vl_logic
    );
end Eq;
