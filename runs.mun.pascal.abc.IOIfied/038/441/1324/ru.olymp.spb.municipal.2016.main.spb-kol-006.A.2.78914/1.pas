program _a;
var
a,b,i,f,c,k:longint;
label 1;
begin
readln(k);
f:=0;
a:=0;
b:=0;
c:=k;
while c>0 do
begin
  b:=b+1;
  c:=c div 10;
end;
for i:=1 to (b-1) do
begin
  if(f=0) and (k mod 10<>0)then
  f:=1;
  if (f=1) and (k mod 10 = 0)then
  a:=a+1;
  k:=k div 10;
end;
writeln (a);
end.