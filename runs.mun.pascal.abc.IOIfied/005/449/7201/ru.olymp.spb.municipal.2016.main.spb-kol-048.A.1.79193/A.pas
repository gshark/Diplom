var k, i, j, p, q, nul, minusnul: longint;
S: string;
begin


p:=10;
i:=1;
readln(k);

while k<>q do
begin
q:= k mod p;
p:=p*10;
i:=i+1;
if q=0 then minusnul:=minusnul+1;
end;
i:=i-1;

str(k, S);

for j:=1 to i do
begin
if '0'=copy(S, j, 1) then nul:=nul+1; 
end;

nul:=nul-minusnul;
writeln(nul);

end.