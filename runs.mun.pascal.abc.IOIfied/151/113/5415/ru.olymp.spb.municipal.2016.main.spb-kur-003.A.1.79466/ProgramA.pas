var k:longint;
    l,n:integer;
begin
 read(k);
 l:=k mod 10;
 while l=0 do
 begin
  k:=k div 10;
  l:=k mod 10;
 end;
l:=k mod 10;
 while k>0 do
 begin
  if l=0 then n:=n+1;
  k:=k div 10;
  l:=k mod 10;
 end;
 writeln(n);
end.