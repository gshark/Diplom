var a,b,c,d,i,n: integer;
begin;
writeln('введите число');
readln(n);
a:=0;
while n mod 10=0 do begin
n:= n div 10;
b:=b+1;
end;
c:=10-b;
for i:=1 to c do begin
while n mod 10 <> 0 do
n:= n div 10;
while n mod 10= 0 do begin
n:=n div 10;
a:=a+1;
end;
end;
writeln(a); readln;
end.