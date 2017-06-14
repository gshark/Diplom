var i,m,n,d:integer;
Begin
readln(m);
while(m mod 10 = 0) do
Begin
m:=m div 10;
end;
n:=m;
while(n mod 10 <> 0) do
begin
If (n div 10 = 0) then
d:=d+1;
end;


writeln(m,d);
End.




