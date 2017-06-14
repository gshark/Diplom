var
  x, i, t, j: integer;
  k: string;

begin
  read(k);
  repeat
    i += 1;
    integer.TryParse(k[i], t);
  until t <> 0;
  for i := i to k.Length - 1 do
  begin
    integer.TryParse(k[i], t);
    if t = 0 then
    begin
      j := i+1;
      repeat
        
        integer.TryParse(k[j], t);
        if t <> 0 then
          x += 1;    
        j += 1;
      until t <> 0;
    end;
  end;
  write(x);
end.