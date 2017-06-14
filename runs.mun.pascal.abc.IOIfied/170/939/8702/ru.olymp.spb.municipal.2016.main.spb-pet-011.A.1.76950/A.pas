var n,cnt:integer;
begin
read(n);
while n mod 10 =0 do
n:=n div 10;
while n>0 do
begin
if n mod 10=0 then
cnt+=1;
n:=n div 10;
end;
write(cnt);
end.