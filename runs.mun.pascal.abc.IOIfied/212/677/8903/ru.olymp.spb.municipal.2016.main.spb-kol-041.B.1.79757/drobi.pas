program drobi;
var i,b,l,n,k,p,q:integer;
begin
read(n,p,q);
for i:=1 to n do
 for k:=1 to n do
 if (1/p<i/k) and (i/k<1/q) then begin
 l:=0;
 for b:=2 to k do
 if (i mod b=0) and ( k mod b=0)
 then l:=l+1;
 if l=0 then 
 writeln(i,'/', k);
 end;
 end.