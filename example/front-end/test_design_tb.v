`timescale 1ns/1ps

module test_design_tb;

    reg clk,rst;
    wire [3:0]count;

    test_design dut(
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;

        #12;
        rst = 0;


        #60;
        $finish;

    end

    initial begin
        $dumpvars(0,tb);
        $dumpfile("sim.vcd");

    end



endmodule

