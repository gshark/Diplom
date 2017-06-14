var i,j,p,q,n:integer;

function ydel(c,z:integer):boolean;
var a:integer;
begin
ydel:=false;
for a:=1 to z do begin
if(c mod a=0)and(z mod a=0) then ydel:=true;
end;
end;

begin
readln(n,p,q);

for i:=1 to n-1 do begin
for j:=1 to n-1 do begin
if ((i/j)>(1/p))and((i/j)<(1/q))then writeln(i,'/',j);
end;
end;

end.
