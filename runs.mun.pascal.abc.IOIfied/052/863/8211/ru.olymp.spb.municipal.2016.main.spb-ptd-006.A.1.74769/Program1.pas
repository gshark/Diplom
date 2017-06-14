var c:boolean;
a:longint;
b,n:integer;
begin
readln(a);
c:=false;
n:=0;
while a<>0 do
begin
b:= a mod 10;
if c then
begin
if b=0 then 
n:=n+1;
end
else
begin
if b<>0 then
c:=true;
end;
a:=a div 10;
end;
writeln(n);
end.
