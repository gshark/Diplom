var
s:string;
i,j,a,sum:integer;
begin
readln(s);
a:=length(s);
i:=1;
j:=1;
while s[i]='0' do
begin
delete(s,i,1);
end;
a:=length(s);
while s[a]='0' do
begin
delete(s,a,1);
a:=length(s);
end;
for i:=1 to length(s) do
if s[i]='0' then
sum:=sum+1;
writeln(sum);
end.