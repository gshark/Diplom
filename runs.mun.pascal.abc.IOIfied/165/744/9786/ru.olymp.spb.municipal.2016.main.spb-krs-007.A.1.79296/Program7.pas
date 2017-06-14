program abc_a;
var
a:string;
b,c,d:integer;
begin
read(a);

repeat
begin
b:=pos('0',a);
if b<>0 then
delete(a,b,1);
c:=pos('0',a);
if c<>0 then
delete(a,c,1);
if c=b then
d:=d+1;
end;
until b=0;
d:=d-1;
writeln(d);
end.