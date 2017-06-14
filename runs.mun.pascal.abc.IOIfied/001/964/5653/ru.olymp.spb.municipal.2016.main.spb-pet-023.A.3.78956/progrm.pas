var a,b,c,d,i,n: integer;
begin;
writeln('введите число');
readln(n);
a:=0;
while n mod 10=0 do begin
n:= n div 10;
end;
while n mod 10 <> 0 do
n:= n div 10;
while n mod 10= 0 do begin
n:=n div 10;
a:=a+1;
end;
writeln(a); readln;
end.