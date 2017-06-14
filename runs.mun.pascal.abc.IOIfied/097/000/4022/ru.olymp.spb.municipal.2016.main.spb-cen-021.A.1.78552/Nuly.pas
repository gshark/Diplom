program nuly;
var k,i,r,num:integer;
st:string;
begin
read(k);
while (k mod 10=0) do
k:=k div 10;

st:=IntToStr(k);
r:=0;
num:=0;

repeat
num:=num+1
until (st[num]<>'0');

for i:=num to length(st) do
begin
if st[i]='0' then
r:=r+1;
end;

writeln(r);
end.

