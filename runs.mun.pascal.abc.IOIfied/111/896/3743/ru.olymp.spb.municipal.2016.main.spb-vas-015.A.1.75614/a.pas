var d,c,b,k,a,x,y:integer;
f:boolean;
begin
read(k);
x:=0;
f:=true;
c:=k;
if c mod 10=0 then f:=false;
c:=c div 10;
a:=k;
y:=1;
b:=0;
while a>0 do
begin
a:=a div 10;
y:=y*10;
end;
while k mod y =0 do
begin
y:=y div 10;
b:=b+1;
end;
while k>0 do
begin
if k mod 10 = 0 then if f=true then x:=x+1 else
else if k mod 10 <>0 then f:= true;
k:=k div 10;
end;
writeln(x-b);
end.