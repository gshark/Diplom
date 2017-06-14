program aoaoao;
const N=9;
var a:array[1..N]of integer;
i,k,p,t,d1,h,f,d2:integer;
begin
read(k);
t:=10;
for i:=1 to N do begin
p:=p+1;
a[p]:=k mod t;
k:=k div 10;
end;
for i:=1 to N do begin
if(a[i]<>0)then begin
d2:=i;
if (d1<>0)then
f:=i-d1-1;
d1:=d2;
H:=h+f;
end;
end;
writeln(h);
end.