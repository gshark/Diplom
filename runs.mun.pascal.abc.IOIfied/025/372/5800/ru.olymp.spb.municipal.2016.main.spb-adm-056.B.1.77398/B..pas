var n, p, q, i, j: integer;
begin
readln (n,p,q);
for i := 1 to (n-1) do begin
  for j := 1 to i do begin
    if ((j/i) > (1/p)) and ((j/i) < (1/q)) then begin
    writeln (j,'/',i);
    end;
  end;
end;
end.