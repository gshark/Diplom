Function NOD(a,b:integer):integer;
begin
if a=b then NOD:=a
else
begin
Repeat
if a>b then a:=a mod b
else b:=b mod a;
Until (a=0) or (b=0);
Nod:=a+b;
end;
end;
Var i,j,n,p,q:integer;
begin
Read(n,p,q);
for i:=1 to n do
for j:=1 to i-1 do
if (NOD(i,j)=1) and ((j/i)>(1/p)) and ((j/i)<(1/q)) then
Writeln(j,'/',i)
end.