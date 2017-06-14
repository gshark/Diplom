var k,s,p:integer;
begin
readln(k);
s:=0;
p:=0;
while (k>0) do
begin
if (s=1) and(k mod 10 =0)
then begin
p:=p+1;
k:=k div 10;
end
else begin

if (k mod 10 <>0) or (p>0)
then s:=1;k:=k div 10;
end;
end;
writeln(p);
end.
