var
i, N, p, q, f1, f2, j, ch, t:integer;
a:array[1..100] of integer;
b:array[1..100] of integer;
begin
read(N, p, q);
ch:=0;

for i:=1 to N-1 do
for j:=N-1 downto 1 do
begin
if (1/p < i/j) and (i/j < 1/q) then
begin
ch:=ch+1;
a[ch]:=i;
b[ch]:=j;
end;
end;

for i:=1 to ch-1 do
for j:=1 to ch-1 do
if a[j]/b[j] > a[j+1]/b[j+1] then 
begin
t:=a[j];
a[j]:=a[j+1];
a[j+1]:=t;
t:=b[j];
b[j]:=b[j+1];
b[j+1]:=t;
end;

for i:=1 to ch do
writeln(a[i], '/', b[i]);
end.
