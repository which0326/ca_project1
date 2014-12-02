library verilog;
use verilog.vl_types.all;
entity MEM_WB is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        WB_in           : in     vl_logic_vector(1 downto 0);
        ReadData_in     : in     vl_logic_vector(31 downto 0);
        ALU_in          : in     vl_logic_vector(31 downto 0);
        instruction_mux_in: in     vl_logic_vector(4 downto 0);
        RegWrite        : out    vl_logic;
        MemtoReg        : out    vl_logic;
        ReadData_out    : out    vl_logic_vector(31 downto 0);
        ALU_out         : out    vl_logic_vector(31 downto 0);
        instruction_mux_out: out    vl_logic_vector(4 downto 0)
    );
end MEM_WB;
