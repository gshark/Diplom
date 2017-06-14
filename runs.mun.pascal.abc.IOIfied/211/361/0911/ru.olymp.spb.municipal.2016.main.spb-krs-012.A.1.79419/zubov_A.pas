var
a,s,w:integer;
begin
readln(a);
if (a mod 10 )= 0 then
while (a mod 10) =0 do
begin
a:=a div 10;
end;
s:=0;
while a > 0 do
begin
w:=a mod 10;
if w=0 then s:=s+1;
a:=a div 10;
end;
writeln(s);
end.