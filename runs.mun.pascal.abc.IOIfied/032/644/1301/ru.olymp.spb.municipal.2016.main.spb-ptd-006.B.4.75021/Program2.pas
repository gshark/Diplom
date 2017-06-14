var
n,p,q,i,j,u,r1,r2:integer;
r:real;
t:array[1..40] of record
e:real;
i:integer;
j:integer;
end;
begin
u:=1;
for i:=1 to 40 do
t[i].e:=2;
readln(n,p,q);
for i:=1 to 9 do
for j:=1 to n do
begin
if i mod j<>0 then
if (i/j<1/q) and (i/j>1/p) then 
begin
t[u].e:=i/j;
t[u].i:=i;
t[u].j:=j;
u:=u+1;
end;
end;
for i:=1 to 40 do
for j:=1 to 40 do
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
for i:=40 downto 1 do
if t[i].e<>2 then
writeln(t[i].i,'/',t[i].j)
end.