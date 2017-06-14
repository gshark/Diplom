var
  s: string;
  i, b, sum: integer;

begin
  readln(s);
  b := 0;
  for i := 1 to length(s) do
    if s[i] = '0' then inc(b)
    else begin
      sum := sum + b;
      b := 0;
    end;
  writeln(sum);
end.