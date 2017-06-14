var n,p,q:integer;
begin
read(n,p,q);
for var i:=2 to n do
for var j:=1 to i-1 do
if ((j/i)>(1/p)) and ((j/i)<(1/q)) and (i mod 10 <> 0) then writeln(j,'/',i);
end.