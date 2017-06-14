var k :longint;
a,be,i:integer;
b:boolean;
s:string;
begin
be:=0;
a:=0;
readln (k);
b:=true;
while b=true do
begin
if k mod 10 = 0 then
k:=k div 10
else b:=false;
end;
s:=inttostr(k);
a:=length(s);

for i:=1 to a do
begin
if s[i]='0' then
be:=be+1;
end;
writeln (be);
end.