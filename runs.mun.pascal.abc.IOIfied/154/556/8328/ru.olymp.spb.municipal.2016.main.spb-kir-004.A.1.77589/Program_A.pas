var
  i, x, res: integer;
  s: string;

begin
  readln(x);
  while true do
  begin
    if x mod 10 <> 0 then break;
    x := x div 10;
  end;
  
  s := inttostr(x);
  
  for i := 1 to s.Length do
  begin
    if s[i] = '0' then res += 1;
  end;
  
  write(res);
end.