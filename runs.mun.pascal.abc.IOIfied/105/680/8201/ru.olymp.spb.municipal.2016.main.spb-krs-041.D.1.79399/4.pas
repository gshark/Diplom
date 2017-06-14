program w4;
var n:integer;
k:integer;
begin
read(n,k);
n:=n*(n-1);
if (n)mod k <>0 then k:=0 else
k:=((n)div k);
write(k);
end.