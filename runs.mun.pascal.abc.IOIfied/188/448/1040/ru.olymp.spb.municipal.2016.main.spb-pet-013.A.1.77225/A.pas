Var s:string;
i,a,sum,naz:integer;
begin
Read(a);
sum:=0;
s:=inttostr(a);
for i:=length(s) downto 1 do
if (s[i]<>'0') then
begin
naz:=i;
break;
end;
for i:=naz downto 1 do
if s[i]='0' then
sum+=1;
Write(sum);
end.