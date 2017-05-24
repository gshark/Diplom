var
a : array[0..100] of integer;
i,n,j,m : integer;
st,s : string;
begin
readln(n);
for i := 0 to 100 do
a[i] := 0;
for i := 1 to n do
begin
read(j);
inc(a[j]);
end;
m := 0;
st := '';
for i := 0 to n do
if a[i] <> 0 then
inc(m);
j := 0;
for i := 0 to n do
if i = n - a[i] then
begin
inc(j);
str(i,s);
st := concat(st,s,' ');
end;
writeln(j);
write(st);
end.

