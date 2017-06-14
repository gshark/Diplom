var a,b,c,d,i,n: integer;
begin;
writeln('введите число');
readln(n);
a:=0;
while n mod 10=0 do begin
n:= n div 10;
end;
for i:=1 to 2 do begin
while n mod 10 <> 0 do
n:= n div 10;
while n mod 10= 0 do begin
n:=n div 10;
a:=a+1;
end;
end;
writeln(a); readln;
end.