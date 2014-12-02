library verilog;
use verilog.vl_types.all;
entity FW is
    port(
        EX_MEM_RegWrite : in     vl_logic;
        MEM_WB_RegWrite : in     vl_logic;
        EX_MEM_RegisterRd: in     vl_logic_vector(4 downto 0);
        MEM_WB_RegisterRd: in     vl_logic_vector(4 downto 0);
        ID_EX_RegisterRs: in     vl_logic_vector(4 downto 0);
        ID_Ex_RegisterRt: in     vl_logic_vector(4 downto 0);
        ForwardA        : out    vl_logic_vector(1 downto 0);
        ForwardB        : out    vl_logic_vector(1 downto 0)
    );
end FW;
