var
a:array [1..100] of integer;
i,x,t,c,z:integer;
begin
x:=0;
t:=8;
c:=0;
z:=0;
for i:=1 to 6 do
begin
read(a[i]);
if a[i] = 0 then
x:= x + 1;
z:=x;
if a[i] <> 0 then
t:=i;
end;
if (x<5) and (a[6] =0) then
begin
t:=6-t;
x:=x-t;
end;
if x=5 then
begin
t:=6-t;
x:=x-t;
end;
write(x);
end.