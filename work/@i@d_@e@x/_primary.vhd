library verilog;
use verilog.vl_types.all;
entity ID_EX is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        WB_in           : in     vl_logic_vector(1 downto 0);
        M_in            : in     vl_logic_vector(1 downto 0);
        EX_in           : in     vl_logic_vector(3 downto 0);
        RDdata1_in      : in     vl_logic_vector(31 downto 0);
        RDdata2_in      : in     vl_logic_vector(31 downto 0);
        sign_extended_in: in     vl_logic_vector(31 downto 0);
        Inst_25_to_21_in: in     vl_logic_vector(4 downto 0);
        Inst_20_to_16_in: in     vl_logic_vector(4 downto 0);
        Inst_15_to_11_in: in     vl_logic_vector(4 downto 0);
        Inst_5_to_0_in  : in     vl_logic_vector(5 downto 0);
        pc_plus4_in     : in     vl_logic_vector(31 downto 0);
        WB_out          : out    vl_logic_vector(1 downto 0);
        M_out           : out    vl_logic_vector(1 downto 0);
        ALUSrc_out      : out    vl_logic;
        ALUOp_out       : out    vl_logic_vector(1 downto 0);
        RegDst_out      : out    vl_logic;
        RDdata1_out     : out    vl_logic_vector(31 downto 0);
        RDdata2_out     : out    vl_logic_vector(31 downto 0);
        sign_extended_out: out    vl_logic_vector(31 downto 0);
        Inst_25_to_21_out: out    vl_logic_vector(4 downto 0);
        Inst_20_to_16_out: out    vl_logic_vector(4 downto 0);
        Inst_15_to_11_out: out    vl_logic_vector(4 downto 0);
        Inst_5_to_0_out : out    vl_logic_vector(5 downto 0)
    );
end ID_EX;
