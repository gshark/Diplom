program nomberA;
var  f, a, count:integer; k:int64;
begin
read (k);
if (k>=1)and(k<=1000000000) then begin
f:=0;
a:=-1;
while k<>0 do  begin
if a>0 then
f:=1;
a:=k mod 10;
if (a=0)and(f>=1) then
count:=count+1;
k:=k div 10;
end;
end;
write(count)
end.

