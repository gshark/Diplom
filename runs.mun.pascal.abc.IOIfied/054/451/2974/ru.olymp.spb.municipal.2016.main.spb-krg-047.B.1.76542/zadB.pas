program zadB;
var k,n,p,q,i,j:byte; o:boolean;
begin
read(n,p,q);
for i:=1 to n-1 do
for j:=1 to i do
begin
if ((j/i)>(1/p)) and ((j/i)<(1/q)) then
begin
o:=true;
for k:=2 to 100 do
if (j mod k = i mod k) and (j mod k = 0) then o:=false;
if o=true then
writeln(j,'/',i)
end;
end;
end.