var k,n:integer;
s:string;
begin
read(n);
while (n mod 10)=0 do
n:=n div 10;
s:=IntToStr(n);
for var i:=s.Length downto 1 do
if s[i]='0' then k+=1;
write(k);
end.