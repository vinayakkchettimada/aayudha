module rom_helloworld (
    input clk,
    input [4:0] addr,
    output [7:0] data
);

localparam MESSAGE_LEN = 23;

wire [7:0] rom_data [(MESSAGE_LEN - 1):0];
 
assign rom_data[0] = "H";
assign rom_data[1] = "e";
assign rom_data[2] = "l";
assign rom_data[3] = "l";
assign rom_data[4] = "o";
assign rom_data[5] = " ";
assign rom_data[6] = "W";
assign rom_data[7] = "o";
assign rom_data[8] = "r";
assign rom_data[9] = "l";
assign rom_data[10] = "d";
assign rom_data[11] = ",";
assign rom_data[12] = " ";
assign rom_data[13] = "V";
assign rom_data[14] = "i";
assign rom_data[15] = "n";
assign rom_data[16] = "a";
assign rom_data[17] = "y";
assign rom_data[18] = "a";
assign rom_data[19] = "k";
assign rom_data[20] = "!";
assign rom_data[21] = "\n";
assign rom_data[22] = "\r";
 
reg [7:0] data_d, data_q;
 
assign data = data_q;
 
always @(*) begin
    if (addr > (MESSAGE_LEN - 1))
        data_d = " ";
    else
        data_d = rom_data[addr];
end
 
always @(posedge clk) begin
    data_q <= data_d;
end
 
endmodule
