var
  ch: string;

var
   z, t, c: integer;

begin
  read(ch); 
  z := Length(ch);
  c := 0;
  repeat
    begin
      if ch[z] = '0' then
      begin
        z := z - 1
      end
      else
        t := 1
    end;
  until t = 1;
  for t := 1 to z do
  begin
    if ch[t] = '0' then
    begin
      c := c + 1;
      z := z - 1
    end
  end;
  write(c);
end.
