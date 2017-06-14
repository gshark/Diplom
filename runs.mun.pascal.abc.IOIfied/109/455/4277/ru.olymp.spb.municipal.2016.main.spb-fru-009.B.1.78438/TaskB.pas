program aoaoao;
var n,p,q,i,b,g,c1,c2:integer;
dr,dr1,dr2,dr3:real;
otv:array[1..100,1..2]of integer;
begin
read(n,p,q);
dr1:=1/p;
dr2:=1/q;
for i:=1 to n do begin
for b:=1 to n-1 do begin
dr:=i/b;
for g:=1 to n do begin
if(dr>dr1)and(dr<dr2)and(i/g<>b/g)then begin
otv[i*b,1]:=i;
otv[i*b,2]:=b;
end;
end;
end;
end;
for i:=1 to 100 do
if otv[i,1]<>0 then writeln(otv[i,1],'/',otv[i,2]);
end.
