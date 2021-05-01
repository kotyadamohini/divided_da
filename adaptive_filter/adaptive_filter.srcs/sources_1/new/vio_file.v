`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2020 12:50:30 PM
// Design Name: 
// Module Name: vio_file
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vio_file(
    input clk
    );
    wire [7:0]x0,x1,x2,x3;
    wire [31:0]w0,w1,w2,w3,out;
    divided_da d1(clk,x0,x1,x2,x3,w0,w1,w2,w3,out);
    vio_0 your_instance_name (
      .clk(clk),                // input wire clk
      .probe_in0(out),    // input wire [31 : 0] probe_in0
      .probe_out0(x0),  // output wire [7 : 0] probe_out0
      .probe_out1(x1),  // output wire [7 : 0] probe_out1
      .probe_out2(x2),  // output wire [7 : 0] probe_out2
      .probe_out3(x3),  // output wire [7 : 0] probe_out3
      .probe_out4(w0),  // output wire [31 : 0] probe_out4
      .probe_out5(w1),  // output wire [31 : 0] probe_out5
      .probe_out6(w2),  // output wire [31 : 0] probe_out6
      .probe_out7(w3)  // output wire [31 : 0] probe_out7
    );
endmodule
