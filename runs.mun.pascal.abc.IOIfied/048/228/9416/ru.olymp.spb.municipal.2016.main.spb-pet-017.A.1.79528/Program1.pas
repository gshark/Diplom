var k:string;
v,i,m,n,l:integer;
begin
readln(k);
l:=Length(k);
for i:=1 to l do
begin
if k[i] <> '0' then
begin
m:=i;
break;
end;
end;
for i:=l downto 1 do
begin
if k[i] <> '0' then
begin
n:=i;
break;
end;
end;
v:=0;
writeln();
  for i:=m to n do
  if k[i] = '0' then 
  v:=v+1;
  writeln(v);
end.