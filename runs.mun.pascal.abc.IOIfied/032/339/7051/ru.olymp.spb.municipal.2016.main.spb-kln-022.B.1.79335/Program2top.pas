program qq;
var a,b,c,d ,n,p,q:integer;
begin
//read(a,b,c,d);
//if a/b > c/d then
//writeln(1)
//else
//writeln(2);
read(n,p,q);
for c:=1 to n-1 do
begin
for b:=1 to n-1 do
begin
if (b mod c <> 0) then
if (1/p < b/c) then
if (b/c < 1/q) then
writeln(b ,'/', c);
end;
end;
end.
