program z1;
var p,q,n,l,i:integer;
var t,j,f:real;
begin 
readln (n,p,q);
t:= 1/p;
j:=1/q;
for i:=1 to 100 do
for l:= 1 to n do
begin 
f:=i/l;
if (f>t) and (f<j) then
writeln (i,'/',l);
end;
end. 
