uses Arrays;
function nod(m,n:integer):boolean;
begin
result:=true;
for var i:=2 to 100 do if (m mod i = 0) and (n mod i = 0) then  result:=false; 

end;

var
a:array[1..100,1..100] of integer; 
b:array of integer;
c:array of integer;
d:array of double;
i,j,p,q,n,m,l:integer;
begin
read(n,p,q);
for i:=1 to 100 do
  for j:=1 to 100 do
    a[i,j]:=0;
    
l:=0;    
for i:=1 to 100 do
  for j:=1 to n do
    if (i/j>1/p) and (i/j<1/q) and (nod(i,j)) then begin a[i,j]:=1; inc(l); end;

SetLength(b,l+1);
SetLength(c,l+1);
SetLength(d,l+1);
l:=1;

for i:=1 to 100 do 
  for j:=1 to n do 
    if(a[i,j]=1) then begin b[l]:=i; c[l]:=j; d[l]:=i/j; inc(l); end;

Sort(d);
for i:=1 to l-1 do
  for j:=1 to l-1 do
     if abs(d[i] - b[j]/c[j])<0.000001 then writeln(b[j],'/',c[j]);
{b.Write();
writeln();
c.Write();    
Writeln();
d.Write();}
end.