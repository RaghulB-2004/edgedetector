module edgedetector_rtl(clk,rst,signal_in,pos_edge,neg_edge);
input clk;
input rst;
input signal_in;
output pos_edge;
output neg_edge ;
reg signal_d;
always @(posedge clk or posedge rst) begin
if (rst)
signal_d <= 0;
else
signal_d <= signal_in;
end
assign pos_edge = (~signal_d & signal_in);
assign neg_edge = (signal_d & ~signal_in);
endmodule