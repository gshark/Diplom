program vdv;
var  i, k1, j, k: integer;
begin
j:= 0;
read (k);
k1:= k;
while (k1 mod 10)=0 do begin
k1:= k div 10;
end;
for i:= 1 to 1000000000 do begin
if k1 mod 10 <> 0
then 
k1:= k1 mod 10
else 
j:= j+1;
end;
writeln (j);
end.

