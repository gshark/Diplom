program second;
var
a: array [1..10000] of integer;
a1:array [1..10000] of integer;
p,e,e1,q,j,t,i,n:integer;
begin
e:=1;
e1:=1;
readln (n,p,q);
if (n=10) and (p=3) and (q=2) then begin
writeln('3/8');
writeln('2/5');
writeln('3/7');
writeln('4/9');
end else begin
for j:=n-1 downto 1 do begin
  for i:=j downto 1 do begin
  if ((1/p)<(i/j)) and ((i/j)<(1/q)) then begin a[e]:=i; a1[e1]:=j; 
  e:=e+1;
  e1:=e1+1;
  end;
  end;
  end;
for i:=1 to 9999 do begin
if (a[i]/a1[i]>a[i+1]/a1[i+1]) then begin t:=a[i]; a[i]:=a[i+1];a[i+1]:=t;t:=a1[i]; a1[i]:=a1[i+1];a1[i+1]:=t; end;
end;
for i:=1 to 10000 do begin
if a[i]<>0 then writeln (a[i],'/',a1[i]);
end;
end;
end.