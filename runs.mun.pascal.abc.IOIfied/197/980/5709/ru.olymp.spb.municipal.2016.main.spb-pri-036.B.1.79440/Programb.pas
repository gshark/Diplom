program grch;
var l,k,p,q,i:integer;
function kek(x,y,i,z:integer):integer;
begin
while i<51 do 
begin
if x mod i<>0 then i:=i+1;
if x mod i<>0 then break;
if y mod i<>0 then i:=i+1;
if y mod i<>0 then break;
z:=x div i;
end;
end;
begin
i:=2;
read(p);
read(q);
l:=kek(p,q,i,l);
k:=kek(q,p,i,k);
writeln(l);
writeln(k);
end.