label g;
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
      for j:=i+1 to k.Length do
      begin        
        integer.TryParse(k[j], t);
        if t <> 0 then
        begin
          x += 1;    
          goto g;
        end;
      end;
      g:
    end;
  end;
  write(x);
end.