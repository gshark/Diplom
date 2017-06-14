program A;
var k,n:integer;
begin
readln(k);
n:=1;
while k>1 do begin k:=k mod 10;
if k=0 then n:=n+n; 
writeln(n);
end
end.