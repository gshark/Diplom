var n,p,q,i,j:integer;
a: array [1..27] of integer :=(2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,87,89,93,97);

function dln(i,j:integer): boolean;
var x:integer;
begin
  repeat
  x:=x+1;
  if (i mod a[x] = 0) and (j mod a[x] = 0) then
  result:=true;
  until (x=27) or (result=true);
end;


begin
readln(n,p,q);
for j:=1 to n do begin
 for i:=1 to j-1 do begin
 if (i/j<1/q) and (i/j>1/p) and (not dln(i,j)=true) then writeln(i,'/',j)
 end;
end;
end.