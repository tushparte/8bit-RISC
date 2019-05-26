`timescale 1ns / 1ps
module CPU();

 // Inputs
 reg clk;

 Combined uut (
  .clk(clk)
 );

 initial 
  begin
   clk <=0;
   #160
   $finish;
  end

 always 
  begin
   #5 clk = ~clk;
  end

endmodule