var
n,p,q,i,j:byte;
function prov(x,y:byte):boolean;
var i:integer;
b:boolean;
begin
b:=true;
for i:=2 to x do
if (x mod i =0)and (y mod i =0) then b:=false;
result:=b;
end;
begin
 readln(n,p,q);
 for i:=1 to n do
  for j:=i to n do
    if (i/j>1/p)and(1/q>i/j)and(prov(i,j)=true)then writeln(i,'/',j);

end.