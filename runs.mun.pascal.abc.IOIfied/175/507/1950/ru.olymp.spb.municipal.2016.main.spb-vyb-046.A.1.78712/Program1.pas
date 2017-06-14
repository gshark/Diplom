program zada;
var a,c,d,i,g,v,e,x,z:longint;
begin;
d:=0;c:=0;
readln(a);
x:=a;
for i:=1 to 100000 do begin if a div 10 >0 then
begin g:=g+1;a:=a div 10;
end
else if a div 10 =0 then end;
g:=g+1;
a:=x;
for z:=1 to 100000 do
begin
if a mod 10 =0 then
begin v:=v+1;a:=a div 10;
end
else if a div 10 >0 then end;
e:=g - v - 1;
a:=x;
for i:=1 to e do begin
if a mod 10 =0 then c:=c+1;
a:=a div 10 ;
end;
writeln(c);
end.
