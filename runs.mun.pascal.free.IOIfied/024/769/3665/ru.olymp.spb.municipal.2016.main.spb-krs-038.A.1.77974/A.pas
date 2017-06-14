uses crt;
var
i,a,b,k,z: longint;
begin
z:=0;
a:=10;
writeln ('Vvedite chislo');
read (k);
{b:=k;
for i:= 1 to 5 do
begin
b:=b div 10;
writeln (b);
end;}
for i:= 1 to k do
begin
if (k mod a) = 0 then
k:=k div a;
if (k mod a) <> 0 then
break;
end;
while k>0 do
begin
if (k mod 10) = 0 then
begin
z:=z+1;
end;
k:=k div 10;
end;
writeln (z);
readln;
end.
