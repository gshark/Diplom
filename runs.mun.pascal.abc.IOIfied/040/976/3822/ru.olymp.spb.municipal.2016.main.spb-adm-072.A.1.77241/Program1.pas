var k,c:longint;
      n:byte;
begin
readln(k);
n:=k mod 10;
while (n=0) and (k<>0) do begin
  k:=k div 10;
  n:=k mod 10;
  end;
while k<>0 do begin
  k:=k div 10;
  if (k mod 10 =0) and (k<>0) then
  inc(c);
  end;
writeln(c);
end.