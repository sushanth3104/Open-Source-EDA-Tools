//// 4-Bit counter

module test_design(
    input clk,
    input rst,
    output reg [3:0]count
);

    reg [3:0]count_nxt;

    //////////// Flops
    always@(posedge clk) 
        begin : FLOPS
            if(rst)
                count <= 4'b0000;
            else
                count <= count_nxt;
        end

    /////////// Datapath
    always@(*)
        begin : Combinational
                count_nxt = count + 1;
        end


endmodule