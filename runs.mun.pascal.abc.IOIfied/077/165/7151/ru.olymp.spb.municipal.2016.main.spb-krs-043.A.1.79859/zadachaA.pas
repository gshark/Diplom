var
i,s,n:integer;
begin
readln(n);
while n mod 10=0 do
n:=n div 10;
while n div 10>0 do
begin
if n mod 10=0 then s:=s+1;
n:=n div 10;
end;
writeln(s);
end.