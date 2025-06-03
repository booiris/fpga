`timescale 1ns / 1ns

module mux2_testbench ();

  reg  s_x;
  reg  s_y;
  reg  select;
  wire out;

  mux2 mux2_inst0 (
      .x(s_x),
      .y(s_y),
      .select(select),
      .out(out)
  );

  initial begin
    s_x = 0;
    s_y = 0;
    select = 0;
    #200;
    s_x = 0;
    s_y = 1;
    select = 0;
    #200;
    s_x = 1;
    s_y = 0;
    select = 0;
    #200;
    s_x = 1;
    s_y = 1;
    select = 0;
    #200;
    s_x = 0;
    s_y = 0;
    select = 1;
    #200;
    s_x = 0;
    s_y = 1;
    select = 1;
    #200;
    s_x = 1;
    s_y = 0;
    select = 1;
    #200;
    s_x = 1;
    s_y = 1;
    select = 1;
    #200;
    $stop;
  end

endmodule
