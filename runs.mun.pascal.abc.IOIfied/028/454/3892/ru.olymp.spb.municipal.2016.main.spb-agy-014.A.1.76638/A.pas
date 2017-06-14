var n,i:Integer;
var k:Real;
var l:String;
BEGIN
readln(k);
while k/10=int(k/10) do k:=int(k/10);
str(k,l);
n:=0;
for i:=1 to length(l) do if l[i]='0' then n:=n+1;
writeln(n);
END.

