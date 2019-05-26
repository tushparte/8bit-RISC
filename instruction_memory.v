`define lines 2
module Instruction_Memory(
 input[7:0] pc,
 output[15:0] instruction
);

 reg [16 - 1:0] memory [16 - 1:0];
 wire [3 : 0] rom_addr = pc[4 : 1];
 initial
 begin
  $readmemb("./test.prog", memory,0, `lines);
 end
 assign instruction =  memory[rom_addr]; 

endmodule