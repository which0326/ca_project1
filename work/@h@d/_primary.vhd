library verilog;
use verilog.vl_types.all;
entity HD is
    port(
        ID_EX_MemRead   : in     vl_logic;
        IF_ID_RegisterRs: in     vl_logic_vector(4 downto 0);
        IF_ID_RegisterRt: in     vl_logic_vector(4 downto 0);
        ID_EX_RegisterRt: in     vl_logic_vector(4 downto 0);
        PC_Write        : out    vl_logic;
        IF_ID_Write     : out    vl_logic;
        data_o          : out    vl_logic
    );
end HD;
