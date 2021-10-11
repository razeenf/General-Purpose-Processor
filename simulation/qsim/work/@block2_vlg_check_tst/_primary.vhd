library verilog;
use verilog.vl_types.all;
entity Block2_vlg_check_tst is
    port(
        R_first_four    : in     vl_logic_vector(0 to 6);
        R_last_four     : in     vl_logic_vector(0 to 6);
        Sign            : in     vl_logic_vector(0 to 6);
        Student_id      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end Block2_vlg_check_tst;
