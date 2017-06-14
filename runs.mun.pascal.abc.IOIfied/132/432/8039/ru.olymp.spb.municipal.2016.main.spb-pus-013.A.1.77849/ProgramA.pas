var 
k,m,h,s,hmax:integer;
begin
read(k);
s:=0; h:=0;

while s=0 do begin
s:=m mod 10; 
m:=k div 10;
k:=m;
end;
hmax:=0;
while m>0 do begin 
 
repeat 
s:=m mod 10; m:=k div 10;
if s=0 then h:=h+1;
k:=m;
until s<>0 ;
if h>hmax then hmax:=h;
end;

writeln(hmax);
end.
