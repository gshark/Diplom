program zero;
var i,k:integer;
var n:string;
begin
read(n);k:=0;
while n[1]='0' do
delete(n,1,1);
for i:=Length(n) downto 1 do
if (n[i]='0') and (i=Length(n)) then
delete(n, i, 1);
for i:=1 to Length(n) do 
if n[i]='0' then
k:=k+1;
writeln(k);
end.