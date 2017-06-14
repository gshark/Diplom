var n,r,i,j,t,f:byte;
x,y,k,s:integer;
a:array [1..10] of byte;
begin
readln(n,k); y:=1;
for i:=1 to n do begin  a[i]:=i; y:=y*i; end;
for f:=1 to y do
begin
for i:=1 to n-1 do
x:=x+a[i]*a[i+1];
if x mod k = 0 then s:=s+1;
x:=0;

for t:=1 to n do 
for j:=2 to n-1 do 
begin
r:=a[t];
a[t]:=a[j];
a[j]:=r;
end;
end;
writeln(s);
end.