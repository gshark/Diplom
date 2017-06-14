program drobi;
var i,b,f,l,n,k,p,q,v:integer;
begin
read(n,p,q);
var m,s:array[1..5000]of integer;
f:=1;
for i:=1 to n do
 for k:=1 to n do
 if (1/p<i/k) and (i/k<1/q) then begin
 l:=0;
 for b:=2 to k do
 if (i mod b=0) and ( k mod b=0)
 then l:=l+1;
 if l=0 then begin
 m[f]:=i;
 s[f]:=k;
 f:=f+1;
 end;
 end;
 for b:=1 to f-2 do
  for l:=b+1 to f-1 do
  if (m[l]/s[l])>(m[b]/s[b]) then begin
  v:=m[l];
  m[l]:=m[b];
  m[b]:=v;
  v:=s[l];
  s[l]:=s[b];
  s[b]:=v;
  end;
  for b:=f-1 downto 1 do
  writeln(m[b], '/', s[b]);
 end.