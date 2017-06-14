program gt;
var
a,b,k,i,f,c: integer;
g: array [1..10] of integer;
begin
write ();
readln (k);
a:=10;
b:=1;
g[1]:=k mod a;
for i:=2 to 10 do begin
a:=a*10;
b:=b*10;
f:=k mod a;
g[i]:=f div b;
end;
a:=0;
b:=11;
repeat
b:=b-1
until g[b]<>0;
for i:=10 downto 1 do begin
if g[i]<>0 then c:=g[i];
end;
for i:=b downto 1 do begin
if g[i]=0 then a:=a+1;
if g[i]=c then break;
end;
write (a);
end.