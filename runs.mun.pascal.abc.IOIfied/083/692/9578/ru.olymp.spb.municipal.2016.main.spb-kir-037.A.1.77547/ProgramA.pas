program A;
var k:longint;
s:string;
z,i,l:integer;
begin
readln(k);
str(k,s);
l:=length(s);
k:=0;
for i:=1 to l do
  if s[i]='0' then z:=z+1
  else 
  begin
  k:=k+z;
  z:=0;
  end;
writeln(k);
end.