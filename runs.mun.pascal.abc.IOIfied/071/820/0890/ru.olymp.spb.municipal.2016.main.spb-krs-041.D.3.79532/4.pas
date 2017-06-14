program w4;
var n1,n2:integer;
k:integer;
begin
read(n1,k);
n2:=n1*(n1-1);
if (n2-2)mod k <>0 then k:=0 else
k:=(n2-k) div k;
write(k);
end.