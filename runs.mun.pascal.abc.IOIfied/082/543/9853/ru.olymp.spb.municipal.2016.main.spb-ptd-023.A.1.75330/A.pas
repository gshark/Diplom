var n, s: integer;
begin
read(n);
s:=0;
while n mod 10=0 do
n:=n div 10;
while n>0 do
begin
if n mod 10=0 then s:=s+1;
n:=n div 10;
end;
writeln(s);
end.