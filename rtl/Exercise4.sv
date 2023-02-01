/**
  @brief An asynchronous mux/decoder

  @input sel   input select
  @input cs    chip select

  @input alpha alpha input
  @input beta  beta input
  @input gamma gamma input

  @output out output
*/
module Exercise4 (
    input [1:0] sel,
    input cs,

    input [7:0] alpha,
    input [7:0] beta,
    input [7:0] gamma,

    output logic [7:0] out
);

always_comb begin : blockName
  if(cs) begin
    case(sel)
      0'b00: out = alpha;
      0'b01: out = beta;
      0'b10: out = gamma;
      0'b11: out = 0;
    endcase
  end
  else begin
    out = 0;
  end
end

endmodule
