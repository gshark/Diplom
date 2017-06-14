program vdv;
var  i, j, j1, k: integer;
begin
j:= 0;
read (k);
while (k mod 10)=0 do 
k:= k div 10;
for i:= 1 to 1000000000 do begin
if k mod 10 = 0
then begin
j:= j+1;
j1:= 1000000000-j;
k:= k div 10
end
else k:= k div 10; 
end;
writeln (j1);
end.

