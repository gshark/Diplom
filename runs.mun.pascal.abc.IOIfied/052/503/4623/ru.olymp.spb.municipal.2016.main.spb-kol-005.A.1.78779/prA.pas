program A;
var k, s, n,i: integer;
begin
readln (k);
s:=0;
n:=0;
while (k div 10) <10 do
n:=n+1;
  for i:=1 to (n+1) do
    begin
      if k mod 10<>0 then
       k:=k div 10
        else
          begin
           k:=k div 10;
           s:=s+1;
           end;
  writeln (s);         
end;
end.

