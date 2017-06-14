program n1;
var n,k:integer;
begin
n:=0;
read (k);
while(k mod 10=0) do k:= k div 10;
while(k div 10>0)do begin
if (k mod 10=0) then
n:=n+1;
k:=k div 10;
end;
writeln;
writeln (n);
end.