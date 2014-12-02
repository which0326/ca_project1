library verilog;
use verilog.vl_types.all;
entity IF_ID is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        hazard_in       : in     vl_logic;
        flush           : in     vl_logic;
        pc_plus4_in     : in     vl_logic_vector(31 downto 0);
        instruction_in  : in     vl_logic_vector(31 downto 0);
        instruction_out : out    vl_logic_vector(31 downto 0);
        pc_plus4_out    : out    vl_logic_vector(31 downto 0)
    );
end IF_ID;
