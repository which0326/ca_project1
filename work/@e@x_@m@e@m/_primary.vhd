library verilog;
use verilog.vl_types.all;
entity EX_MEM is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        WB_in           : in     vl_logic_vector(1 downto 0);
        M_in            : in     vl_logic_vector(1 downto 0);
        ALU_in          : in     vl_logic_vector(31 downto 0);
        instruction_mux_in: in     vl_logic_vector(4 downto 0);
        RDdata2_in      : in     vl_logic_vector(31 downto 0);
        MemWrite        : out    vl_logic;
        MemRead         : out    vl_logic;
        WB_out          : out    vl_logic_vector(1 downto 0);
        ALU_out         : out    vl_logic_vector(31 downto 0);
        instruction_mux_out: out    vl_logic_vector(4 downto 0);
        RDdata2_out     : out    vl_logic_vector(31 downto 0)
    );
end EX_MEM;
