program solA;
var
  i, p, m, d: integer;
  k: string;
begin
  readln (k);
  d := length(k) + 1;
  p := strtoint(k);
  repeat
      d := d - 1;
      if k[d] = '0' then 
        begin
          p := p div 10;
        end;
  until k[d] > '0';
  k := inttostr (p);
  for i := 1 to length (k) do
    begin
      if k[i] = '0' then m := m + 1;
    end;
  writeln(m);
end.