var 
p,q:real;
b:boolean;
nod,i,j,n,i1,j1:integer;
begin
readln (n,p,q);
i:=1;
for i:=1 to n do
for j:=1 to n do
 begin
if (((1/p)<(j/i)) and ((j/i)<(1/q))) then
begin
i1:=i;
j1:=j;
while (j1<>i1) do
begin
if i1>j1 then
i1:=i1-j1
else 
j1:=j1-i1;
end;
if j1=1 then
///if ((i mod j) =0) then
//b:=false
//else b:=true;
///if (b=true) then 
writeln (j,'/',i);
end;
end
end.