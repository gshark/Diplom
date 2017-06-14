var
n,p,q,i,j,u,r1,r2,l,o:integer;
r:real;
t:array[1..1000] of record
e:real;
i:integer;
j:integer;
end;
begin
u:=1;
for i:=1 to 1000 do
t[i].e:=2;
readln(n,p,q);
for i:=1 to 9 do
for j:=1 to n do
begin
l:=0;
for o:=2 to n do
begin
if (i mod o =0) and (j mod o =0) then
l:=1;
end;
if (i/j<1/q) and (i/j>1/p) and (l=0) then 
begin
t[u].e:=i/j;
t[u].i:=i;
t[u].j:=j;
u:=u+1;
end;
end;
for i:=1 to 1000 do
for j:=1 to 1000 do
begin
if t[j].e<t[i].e then 
begin
r:=t[i].e;
r1:=t[i].i;
r2:=t[i].j;
t[i].e:=t[j].e;
t[i].i:=t[j].i;
t[i].j:=t[j].j;
t[j].e:=r;
t[j].i:=r1;
t[j].j:=r2;
end;
end;
for i:=1000 downto 1 do
if t[i].e<>2 then
writeln(t[i].i,'/',t[i].j);
end.