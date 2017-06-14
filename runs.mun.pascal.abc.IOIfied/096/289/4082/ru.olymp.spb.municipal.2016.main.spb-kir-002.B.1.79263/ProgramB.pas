program B;
var fi,fj:array [1..900] of integer;
c,s,minn,z,n,a,p,q,i,j:integer;
min:real;
begin
c:=1;
readln(n,p,q);

for i:=1 to n do
for j:=1 to 9 do
begin

if (j/i>1/p) and (j/i<1/q)
then begin
fi[c]:=i;
fj[c]:=j;
c:=c+1;
end;
end;
a:=c-1;
min:=fj[1]/fi[1];
minn:=1;
for s:=1 to a-1 do
begin

for c:=s to a do
if min>fj[c]/fi[c] then
begin
minn:=c;
min:=fj[c]/fi[c];
end;
z:=fj[s];
fj[s]:=fj[minn];
fj[minn]:=z;
z:=fi[s];
fi[s]:=fi[minn];
fi[minn]:=z;
end;
for s:=1 to a-1 do
writeln(fj[s],'/',fi[s]);

end.