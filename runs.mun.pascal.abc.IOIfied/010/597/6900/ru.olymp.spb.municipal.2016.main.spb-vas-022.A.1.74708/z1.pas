program z1;
var
  k,n:integer;
begin
  readln(k);
  while k mod 10 = 0 do
    begin
      k:=k div 10;
      n:=n+1;
    end;
  writeln(n);
end.