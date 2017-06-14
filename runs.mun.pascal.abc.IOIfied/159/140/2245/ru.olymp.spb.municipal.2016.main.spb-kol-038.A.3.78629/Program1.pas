var
  k, b, a, c, i: integer;
  m: string;

begin
  readln(k); i:=1;
  m := IntToStr(k);
  b := length(m);
  while m[i]='0' do i:=1+1;
  while m[b]='0' do b:=b-1;
  for c:=i to b do 
  begin
    if m[c] = '0' then a := a + 1;   
  end;
  writeln(a);
end.