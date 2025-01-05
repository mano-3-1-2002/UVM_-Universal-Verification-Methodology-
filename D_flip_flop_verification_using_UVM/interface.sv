//interface between DUT and Testbench
interface dff_intf(input logic clk);
   //interface has all dut signals
  //Declare with logic type
  //clock is generating and comming from (testbench.sv) top module so it is input for interface
  //logic clk;
  logic d;
  logic rst;
  logic q;
endinterface
