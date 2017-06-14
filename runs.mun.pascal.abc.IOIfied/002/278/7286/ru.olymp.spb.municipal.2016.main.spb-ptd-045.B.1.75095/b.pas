program p1;
var i,j,n,p,q,l,o,k,k1:integer;a:array[1..50] of integer;b:array[1..50]of integer;m:boolean;
begin
k:=0;
k1:=0;
read(n,p,q);
for j:=(n div q)  to n-1 do
begin
for i:=1 to (n div q) do
begin
for l:=2 to j do if j mod l = 0 then begin k:=k+1;a[k]:=l; end;
k:=0;
for l:=2 to i do if i mod l = 0 then begin k1:=k1+1;b[k1]:=l; end;
for l:=1 to k do
  begin
  write('!11!');
  for o:=1 to k1 do if a[l]=b[o] then begin m:=true;end
  end;
if (m=false) and (i/j>1/p) and (i/j<1/q) then writeln(i,'/',j);
m:=false;
end;
end
end.