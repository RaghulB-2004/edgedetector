module edgedetector_tb;
reg clk;
reg rst;
reg signal_in;
wire pos_edge;
wire neg_edge;
edgedetector_rtl uut (
.clk(clk),.rst(rst),
.signal_in(signal_in),
.pos_edge(pos_edge),
.neg_edge(neg_edge)
);
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
rst = 1;
signal_in = 0;
#15 rst = 0;
#10 signal_in = 1;
#20 signal_in = 0;
#30 signal_in = 1;
#40 signal_in = 0;
#50 signal_in = 1;
#60 signal_in = 0;
#20 $stop;
end
endmodule