uses crt;
var
i,a,b,k,z: longint;
begin
z:=0;
a:=10;
writeln ('Vvedite chislo');
read (k);
while (k mod a) = 0 do
begin
if (k mod a) = 0 then
k:=k div a;
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
end.
