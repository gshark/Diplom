var
  k: string;
var
  m, n, p: integer;
begin
  read (k);
  m:= Length(k);
  p:= 0;
  repeat 
    begin
      if k[m] = '0' then
      m:= m-1
    else n:= 1
    end;
  until n = 1;
  for n:= 1 to m do
    begin
      if k[n] = '0' then
      begin
        p:= p+1;
        m:= m-1;
      end;
    end;
  writeln (p);
end.