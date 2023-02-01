/**
  @brief A fibonacci linear feedback shift register module

  @input clk    clock
  @input nReset active-low reset
  @input init   initial value following a reset
  @output out   current output
*/
module Exercise2 (
    input clk,
    input nReset,
    input [15:0] init,
    output logic [15:0] out
);
reg [15:0] current_out;
reg [15:0] inter_out;
reg new_bit;

always @(posedge clk)
  begin

    if (!nReset) begin
      current_out = init;
    end else begin
      new_bit = (current_out[15] + current_out[13] + current_out[12] + current_out[10]) & 1;
      inter_out = 0;
      inter_out[0] = new_bit;
      current_out = (current_out << 1) | (inter_out); 
    end

  end
  assign out = current_out;

endmodule
