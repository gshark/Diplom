uses Arrays;
var
a,n:integer;
begin
read(a);
while(a mod 10 =0) do a:=a div 10;
n:=0;
while(a>0) do begin
if(a mod 10=0) then n:=n+1;
a:=a div 10;
end;
writeln(n);
end.