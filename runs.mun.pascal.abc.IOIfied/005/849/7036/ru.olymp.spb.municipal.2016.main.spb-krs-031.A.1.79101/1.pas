program a1;
var k:longint;
x,n:integer;
a:array[1..10] of integer;
b:array[1..10] of integer;
begin
writeln('¬ведите число');
read(k);
n:=1;
while k>9 do begin
a[n]:=k mod 10;
k:=k div 10;
n:=n+1;
end;
x:=1;
while a[n] >0 do n:=n+1;
while n>0 do begin
b[x]:=a[n];
n:=n-1;
end;
while b[x]>0 do x:=x-1;
while x>0 do begin 
x:=x-1;
n:=n+2;
end;
writeln(n);
end.

