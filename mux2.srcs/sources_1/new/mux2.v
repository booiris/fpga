module mux2 (
    x,
    y,
    select,
    out
);

  input x;
  input y;
  input select;
  output out;

  assign out = (select == 1) ? x : y;

endmodule
