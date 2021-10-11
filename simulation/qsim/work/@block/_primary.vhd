library verilog;
use verilog.vl_types.all;
entity \Block\ is
    port(
        R_first         : out    vl_logic_vector(0 to 6);
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        enable          : in     vl_logic;
        data_in         : in     vl_logic;
        R_last          : out    vl_logic_vector(0 to 6);
        Sign            : out    vl_logic_vector(0 to 6);
        student_id      : out    vl_logic_vector(0 to 6)
    );
end \Block\;
