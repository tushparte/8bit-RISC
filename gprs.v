`timescale 1ns / 1ps
module GPRs(
 input    clk,
 // write port
 input    reg_write_en,
 input  [2:0] reg_write_dest,
 input  [7:0] reg_write_data,
 //read port 1
 input  [2:0] reg_read_addr_1,
 output  [7:0] reg_read_data_1,
 //read port 2
 input  [2:0] reg_read_addr_2,
 output  [7:0] reg_read_data_2
);
 reg [7:0] reg_array [7:0];
 integer i,f;
 // write port
 //reg [2:0] i;
initial begin
  for(i=0;i<8;i=i+1)
   reg_array[i] <= 8'd0;
end
always @ (posedge clk ) begin
  if(reg_write_en) begin
    reg_array[reg_write_dest] <= reg_write_data;
  end
end
initial
begin
  f = $fopen("result.dat");

  $fdisplay(f,"time = %d\n", $time, 
  "\treg[0] = %b\n", reg_array[0],   
  "\treg[1] = %b\n", reg_array[1],
  "\treg[2] = %b\n", reg_array[2],
  "\treg[3] = %b\n", reg_array[3],
  "\treg[4] = %b\n", reg_array[4],
  "\treg[5] = %b\n", reg_array[5],
  "\treg[6] = %b\n", reg_array[6],
  "\treg[7] = %b\n", reg_array[7]);
  #160
  $fdisplay(f,"time = %d\n", $time, 
  "\treg[0] = %b\n", reg_array[0],   
  "\treg[1] = %b\n", reg_array[1],
  "\treg[2] = %b\n", reg_array[2],
  "\treg[3] = %b\n", reg_array[3],
  "\treg[4] = %b\n", reg_array[4],
  "\treg[5] = %b\n", reg_array[5],
  "\treg[6] = %b\n", reg_array[6],
  "\treg[7] = %b\n", reg_array[7]);
  $fclose(f);
end

assign reg_read_data_1 = reg_array[reg_read_addr_1];
assign reg_read_data_2 = reg_array[reg_read_addr_2];
 //always @ (posedge clk)

//$display("DATA1=%b \t DATA2=%b\n",reg_read_data_1,reg_read_data_2);

endmodule