program zerolover;
var
n,p,q,i,t,g,d,u,y,r:integer;
min,loc:real;
begin
readln(n,p,q);
min:=2;
repeat
r:=0;

for i:=1 to n do begin
for t:=1 to n do begin
if (((i/t)>(1/p)) and ((i/t)<(1/q)))
then begin


if ((min>i/t) and (i/t>loc))
then begin
r:=1;

u:=i;
y:=t;
min:=i/t;
end;

g:=0;
end;
end;
end;
if r=1 then
writeln(u,'/',y);
loc:=u/y;
min:=2;
until r=0;
end.