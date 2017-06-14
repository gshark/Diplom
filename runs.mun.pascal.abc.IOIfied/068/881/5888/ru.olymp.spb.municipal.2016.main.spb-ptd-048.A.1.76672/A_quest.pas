var
  s: string;
  n,i,i1: integer;
begin
  readln(i);
  while i mod 10 = 0 do begin
    i:=i div 10;
  end;
  s:=IntToStr(i);
  i1:=0;
  for n:=1 to Length(s) do
    if s[n]='0' then i1:=i1+1;
  writeln(i1);
end.