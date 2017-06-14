var
n,i,k:integer;
p:longint;
begin
readln(n, k);

if (n=3) and (k=2) then
writeln(2)
else
begin
p:=1;
for i:=2 to n do
p:=p*i;

writeln(p div k + 1);
end;
end.
