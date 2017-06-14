var
  n, p, q, i, f, t: integer;//ââîäû
  b: boolean;

begin
  read(n, p, q);
  for i := 1 to n do
  begin
    for f := 2 to n do
    begin
      for t := 2 to max(i, f) do if (i mod t = 0) and (f mod t = 0) then begin b := true; break; end else b := false;
      if not (b) and (i / f > 1 / p) and (i / f < 1 / q) then writeln(i, '/', f);
    end
  end
end.