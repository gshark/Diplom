var
a:array[1..10] of real;
k,n,i:integer;
m,r:real;
begin
m:=0;
k:=0;
writeln('����� ���-�� �����');
read(n);
writeln('����� k');
read(k);
randomize;
For i:=1 to n do
begin
a[i]:=int(random(3));
write(a[i],' ');
end;
For i:=1 to n do
begin
r:=a[i]*a[i+1]+a[i+1]*a[i+2];
If r/k<>0 then m:=m+1;
end;
writeln('���-��=',m);
end.