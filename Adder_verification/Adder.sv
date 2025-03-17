module adder(input logic clk,rst,input logic [3:0]A,B,
             output logic [4:0]sum);
  always@(posedge clk)begin
    if(rst)
      sum <= 5'b0;
    else
      sum <= A+B;
  end
endmodule
  
