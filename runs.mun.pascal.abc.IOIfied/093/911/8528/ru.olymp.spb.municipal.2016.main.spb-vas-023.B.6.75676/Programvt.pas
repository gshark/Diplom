program second;
var
a: array [1..10000] of integer;
a1:array [1..10000] of integer;
e,e1,q,j,t,i,n:integer;
p,p1:real;
begin
e:=1;
e1:=1;
readln (n,p,q);
for j:=n-1 downto 1 do begin
  for i:=j downto 1 do begin
  if ((1/p)<(i/j)) and ((i/j)<(1/q)) then begin a[e]:=i; a1[e1]:=j; 
  e:=e+1;
  e1:=e1+1;
  end;
  end;
  end;
  n:=9999;
  while n>0 do begin
for i:=1 to n do begin
p:=a[i]/a1[i];
p1:=a[i+1]/a1[i+1];
if (p>p1) then begin t:=a[i]; a[i]:=a[i+1];a[i+1]:=t;t:=a1[i]; a1[i]:=a1[i+1];a1[i+1]:=t; end; end;
n:=n-1;
end;
for i:=1 to 10000 do begin
if a[i]<>0 then writeln (a[i],'/',a1[i]);
end;
end.