program vdv;
var  i, j, k: integer;
begin
j:= 0;
read (k);
while (k mod 10)=0 do 
k:= k div 10;
for i:= 1 to 1000000000 do begin
if k mod 10 = 0
then begin
j:= j+1;
k:= k div 10
end
else k:= k div 10;
end;
writeln (j);
end.

