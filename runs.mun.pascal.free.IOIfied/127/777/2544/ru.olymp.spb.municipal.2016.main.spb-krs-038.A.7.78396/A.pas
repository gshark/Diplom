var
k: longint;
i,z: integer;
begin
read (k);
while (k mod 10) = 0 do
begin
if (k mod 10) = 0 then
k:=k div 10;
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
