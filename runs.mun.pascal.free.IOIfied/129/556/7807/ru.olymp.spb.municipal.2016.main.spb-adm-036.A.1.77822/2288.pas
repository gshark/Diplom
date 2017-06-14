var k, a, b, g:integer;
begin
readln(k);
b:=0;
k:= 1 to a;
a:=10*10*10*10*10*10*10*10*10;
while k>0 do
begin
if (k mod 10)= 0 then int(b);
k:=k div 10;
end;
writeln('красота числа равна ',b);
end.