Program b;
var n,p,q,i,j,f:integer;
    z:real; 
    mas:array[1..100] of integer;
    mac:array[1..100] of integer;
Begin
f:=1;

read(n,p,q);
for i:= 1 to n do
for j:=1 to n-1 do
if ((i/j)>(1/p)) and ((i/j)<(1/q)) then 
begin
mas[f]:=i;
mac[f]:=j;
f:=f+1;

end;
for i:=1 to f do 
for j:=1 to f do 
if (mas[i]/mac[i]<mas[j]/mac[j]) then
begin 
n:=mas[j];
p:=mac[j];
mas[j]:=mas[i];

mac[j]:=mac[i];
mas[i]:=n;
mac[i]:=p;
end;
for i:=1 to f do 
if mas[i]<>0 then
writeln(mas[i],'/',mac[i])

end.



