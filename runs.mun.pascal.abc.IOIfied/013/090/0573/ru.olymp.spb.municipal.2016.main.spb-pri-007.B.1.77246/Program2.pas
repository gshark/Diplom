var
p,q,f:real;
a,b,n:integer;
begin
readln(n,p,q);
for b:=2 to n-1 do
begin
 for a:=1 to b do
  begin
  f:=a/b;
  if (f<(1/q)) and (f>(1/p)) then
  writeln (a,'/',b);
 end;
 end;
 end.

