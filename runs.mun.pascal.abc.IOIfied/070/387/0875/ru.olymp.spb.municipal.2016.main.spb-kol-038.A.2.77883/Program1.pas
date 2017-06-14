var
  k, b, a, n, i, c: integer;
  m: string;

begin
  readln(k); i:=1;
  m := IntToStr(k);
  b := length(m);
  while m[i]='0' do begin
    c:=c+1;
    i:=1+1;
  end;
  for i:=0 to b-1 do begin
    if (m[b-i]='0') and (m[b-i-1]<>'0') then n:=b-i-1;
  end;
  n:=b-n-1;
  for i:=c+1 to n do 
  begin
    if m[i] = '0' then a := a + 1;   
  end;
  writeln(a);
end.