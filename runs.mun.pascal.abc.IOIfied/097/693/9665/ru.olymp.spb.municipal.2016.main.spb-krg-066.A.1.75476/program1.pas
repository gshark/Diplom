program n_a;
var k,n:integer;
begin
read (k);
n:=0;
k:=k div 10;
if (k mod 10)=0 
then k:=k div 10;
if (k mod 10)<>0 
then k:=k div 10;
while (k mod 10)=0 do
begin
k:=k div 10;
n:=n+1;
end;
writeln (n);
end.