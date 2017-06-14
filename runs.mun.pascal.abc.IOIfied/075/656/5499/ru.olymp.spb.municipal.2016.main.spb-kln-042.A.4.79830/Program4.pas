program ncnk;
var k, n, o, k1, l, s: integer;
begin
n:= 0;
l:= 0;
s:= 0;
read (k);
k1:= k;
while k1>=1 do begin
k1:= k1 div 10;
n:= n+1;
end;
while (k mod 10)=0 do begin
k:= k div 10;
s:= s+1;
end;
for o:= 1 to n-s do begin
if (k mod 10)=0 then begin
k:= k div 10;
l:= l+1
end
else 
k:= k div 10;
end;
writeln (l);
end.
